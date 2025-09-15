using System.Collections.Generic;
using UnityEngine;

namespace ABI.CCK.Components
{
    [AddComponentMenu("ChilloutVR/CVR Wheel Hub Controller")]
    public class CVRWheelHubController : MonoBehaviour, ICCK_Component
    {
        [Header("Setup")]
        public Rigidbody rigidBody;
        public List<CVRWheelController> wheels = new List<CVRWheelController>();
        
        [Header("Config")]
        public float motorTorque = 200;
        public float brakeTorque = 200;
        [Tooltip("The theoretical maximum forward speed in m/s")]
        public float maxSpeedForward = 20;
        [Tooltip("The theoretical maximum backwards speed in m/s")]
        public float maxSpeedReverse = 20;
        public float steeringRange = 30;
        public float steeringRangeAtMaxSpeed = 10;
        [Tooltip("Flips the forward direction regarding control and speed calculations indicated by the white arrow")]
        public bool reverseForward = false;
        public AnimationCurve torqueCurve = new AnimationCurve(new[]{new Keyframe(0f, 0.25f), new Keyframe(0.75f, 1f), new Keyframe(1f, 0f)});

        [Header("Input")]
        public float inputAccelerate = 0f;
        public float inputBrake = 0f;
        public float inputSteering = 0f;
        [Space]
        [Tooltip("disables the steering of wheels and instead turns by driving the wheels at different speeds/directions")]
        public bool useSkidSteering = false;
        public float lowSkidSteeringSpeed = 5f;
        [Space]
        [Tooltip("Applies brakes when moving forward and inputting backwards and vice versa")]
        public bool counterInputBrake = false;
        [Tooltip("if enabled checks if the player is in the first control seat of the prop. If so it picks up the players inputs using the default car control scheme")]
        public bool useDefaultCarControls = false;

        [Header("Debug")]
        [Tooltip("Used for debugging the car in playmode in your editor. Has no effect in-game")]
        public bool debugWASDSteering = false;
        
        //internals
        private float acceleration;
        private float forwardSpeed;
        private float speedFactor;
        private float currentMotorTorque;
        private float currentSteerRange;
        private bool isAccelerating;
        private bool isBraking;

        private void Update()
        {
            if (debugWASDSteering)
            {
                inputAccelerate = (Input.GetKey(KeyCode.W)?1f:0f) + (Input.GetKey(KeyCode.S)?-1f:0f);
                inputSteering = (Input.GetKey(KeyCode.D)?1f:0f) + (Input.GetKey(KeyCode.A)?-1f:0f);
                inputBrake = (Input.GetKey(KeyCode.Space)?1f:0f);
            }
        }
        
        private void FixedUpdate()
        {
            if (reverseForward)
            {
                forwardSpeed = Vector3.Dot(transform.forward * -1f, rigidBody.velocity);
                acceleration = inputAccelerate * -1f;
            }
            else
            {
                forwardSpeed = Vector3.Dot(transform.forward, rigidBody.velocity);
                acceleration = inputAccelerate;
            }

            speedFactor = Mathf.InverseLerp(0, maxSpeedForward, Mathf.Abs(forwardSpeed));

            currentMotorTorque = torqueCurve.Evaluate(speedFactor) * motorTorque;
            
            currentSteerRange = Mathf.Lerp(steeringRange, steeringRangeAtMaxSpeed, speedFactor);

            isAccelerating = Mathf.Abs(inputAccelerate) > 0f;
            isBraking = inputBrake > 0f;

            if (counterInputBrake && isAccelerating && ((inputAccelerate > 0f && forwardSpeed < -0.1f) || (inputAccelerate < 0f && forwardSpeed > 0.1f)))
            {
                isAccelerating = false;
                isBraking = true;
                inputBrake = Mathf.Abs(inputAccelerate);
            }

            if (useSkidSteering)
            {
                //TODO: Variables will be reworked once it is known to work
                float skidRatio = Mathf.Clamp01(Mathf.InverseLerp(0, lowSkidSteeringSpeed, Mathf.Abs(forwardSpeed)));
            
                float leftTorque = 0f;
                float leftBrake = 0f;
                float rightTorque = 0f;
                float rightBrake = 0f;

                float steerFactorLeft = inputSteering * 0.5f + acceleration * 0.5f;
                float steerFactorRight = inputSteering * -0.5f + acceleration * 0.5f;
            
                leftTorque = steerFactorLeft * currentMotorTorque;
                rightTorque = steerFactorRight * currentMotorTorque;
            
                foreach (var wheel in wheels)
                {
                    if (wheel.isOnLeftSide)
                    {
                        wheel.motorTorque = leftTorque;
                        wheel.brakeTorque = leftBrake;
                    }
                    else
                    {
                        wheel.motorTorque = rightTorque;
                        wheel.brakeTorque = rightBrake;
                    }

                    if (wheel.isSteerable) wheel.steerAngle = 0f;

                    wheel.sidewaysFrictionStiffness = Mathf.Lerp(wheel.skidSteerSidewaysFriction, wheel.sidewaysFriction, skidRatio);

                    if (isBraking)
                    {
                        wheel.motorTorque = 0f;
                        wheel.brakeTorque = brakeTorque;
                    }
                }
            }
            else
            {
                foreach (var wheel in wheels)
                {
                    if (wheel.isSteerable)
                    {
                        wheel.steerAngle = inputSteering * currentSteerRange * wheel.steerMultiplier;
                    }
                
                    if (isAccelerating && !isBraking)
                    {
                        if (wheel.isMotorized)
                        {
                            wheel.motorTorque = acceleration * currentMotorTorque;
                        }
                        wheel.brakeTorque = 0;
                    }
                    else if (isAccelerating && isBraking)
                    {
                        if (wheel.isMotorized)
                        {
                            wheel.motorTorque = acceleration * currentMotorTorque;
                        }
                        if (wheel.isBraking)
                        {
                            wheel.brakeTorque = Mathf.Abs(inputBrake) * brakeTorque;
                        }
                    }
                    else if (isBraking)
                    {
                        if (wheel.isBraking)
                        {
                            wheel.brakeTorque = Mathf.Abs(inputBrake) * brakeTorque;
                        }
                        wheel.motorTorque = 0;
                    }
                    else
                    {
                        wheel.motorTorque = 0;
                        wheel.brakeTorque = 0;
                    }
                }
            }
        }

        private void OnDrawGizmosSelected()
        {
            Gizmos.color = Color.white;
            if (reverseForward)
                DrawArrow(transform.position, transform.forward * -1f, 1);
            else
                DrawArrow(transform.position, transform.forward, 1);
        }
        
        private void DrawArrow(Vector3 position, Vector3 direction, float size)
        {
            var a1 = RotatePointAroundPivot(position + new Vector3(0, 0.1f * size, 0), position, direction);
            var a2 = RotatePointAroundPivot(position + new Vector3(0.1f * size, 0, 0), position, direction);
            var a3 = RotatePointAroundPivot(position + new Vector3(0, -0.1f * size, 0), position, direction);
            var a4 = RotatePointAroundPivot(position + new Vector3(-0.1f * size, 0, 0), position, direction);
            
            var b1 = RotatePointAroundPivot(position + new Vector3(0, 0.1f * size, 0.3f * size), position, direction);
            var b2 = RotatePointAroundPivot(position + new Vector3(0.1f * size, 0, 0.3f * size), position, direction);
            var b3 = RotatePointAroundPivot(position + new Vector3(0, -0.1f * size, 0.3f * size), position, direction);
            var b4 = RotatePointAroundPivot(position + new Vector3(-0.1f * size, 0, 0.3f * size), position, direction);
            
            var c1 = RotatePointAroundPivot(position + new Vector3(0, 0.2f * size, 0.3f * size), position, direction);
            var c2 = RotatePointAroundPivot(position + new Vector3(0.2f * size, 0, 0.3f * size), position, direction);
            var c3 = RotatePointAroundPivot(position + new Vector3(0, -0.2f * size, 0.3f * size), position, direction);
            var c4 = RotatePointAroundPivot(position + new Vector3(-0.2f * size, 0, 0.3f * size), position, direction);
            
            var d = RotatePointAroundPivot(position + new Vector3(0, 0, 0.5f * size), position, direction);
            
            Gizmos.DrawLine(position, a1);
            Gizmos.DrawLine(position, a2);
            Gizmos.DrawLine(position, a3);
            Gizmos.DrawLine(position, a4);
            
            Gizmos.DrawLine(a1, b1);
            Gizmos.DrawLine(a2, b2);
            Gizmos.DrawLine(a3, b3);
            Gizmos.DrawLine(a4, b4);
            
            Gizmos.DrawLine(b1, c1);
            Gizmos.DrawLine(b2, c2);
            Gizmos.DrawLine(b3, c3);
            Gizmos.DrawLine(b4, c4);
            
            Gizmos.DrawLine(c1, d);
            Gizmos.DrawLine(c2, d);
            Gizmos.DrawLine(c3, d);
            Gizmos.DrawLine(c4, d);
        }
            
        private Vector3 RotatePointAroundPivot(Vector3 point, Vector3 pivot, Vector3 direction)
        {
            var dir = point - pivot; // get point direction relative to pivot
            Quaternion rotation = Quaternion.LookRotation(direction, Vector3.up);
            dir = rotation * dir; // rotate it
            point = dir + pivot; // calculate rotated point
            return point; // return it
        }
    }
}