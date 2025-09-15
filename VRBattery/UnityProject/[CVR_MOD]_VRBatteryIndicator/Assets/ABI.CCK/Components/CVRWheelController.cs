using UnityEngine;

namespace ABI.CCK.Components
{
    [AddComponentMenu("ChilloutVR/CVR Wheel Controller")]
    [RequireComponent(typeof(WheelCollider))]
    public class CVRWheelController : MonoBehaviour, ICCK_Component
    {
        [Header("Control (Managed by WheelHubController if assigned)")]
        public float motorTorque;
        public float brakeTorque;
        public float steerAngle;
        
        public float sidewaysFrictionStiffness
        {
            get => _sidewaysFrictionStiffness;
            set
            {
                _sidewaysFrictionStiffness = value;
                _sidewaysFrictionCurve = _wheelCollider.sidewaysFriction;
                _sidewaysFrictionCurve.stiffness = value;
                _wheelCollider.sidewaysFriction = _sidewaysFrictionCurve;
            }
        }
        private float _sidewaysFrictionStiffness;
        private WheelFrictionCurve _sidewaysFrictionCurve;

        [Header("Linked Display Transforms")]
        [Tooltip("The object that represents the Wheel (Position and rotation)")]
        public Transform viewModel;
        public Vector3 viewModelRotationOffset;
        [Tooltip("The object that represents the Axle (Position only)")]
        public Transform axle;
        [Tooltip("The object that represents the point where the wheel touches the ground")]
        public Transform contactPoint;

        [Header("Settings for WheelHub")] 
        public bool isSteerable;
        public float steerMultiplier = 1f;
        public bool isMotorized;
        public bool isBraking;
        public bool isOnLeftSide;
        [Tooltip("The default sideways friction")]
        public float sidewaysFriction = 1f;
        [Tooltip("The sideways friction in use when below the WheelHubControllers lowSkidSteeringSpeed")]
        public float skidSteerSidewaysFriction = 0.2f;
    
        private WheelCollider _wheelCollider;
        private Vector3 _pos;
        private Quaternion _rot;
        private WheelHit _hit;
        
        void Start()
        {
            _wheelCollider = GetComponent<WheelCollider>();
            _wheelCollider.ConfigureVehicleSubsteps(10f, 5, 5);
        }
        
        void Update()
        {
            _wheelCollider.motorTorque = motorTorque;
            _wheelCollider.brakeTorque = brakeTorque;
            _wheelCollider.steerAngle = steerAngle;

            _wheelCollider.GetWorldPose(out _pos, out _rot);
        
            if (viewModel != null)
            {
                viewModel.position = _pos;
                viewModel.rotation = _rot * Quaternion.Euler(viewModelRotationOffset);
            }

            if (axle != null)
            {
                axle.position = _pos;
            }

            if (contactPoint != null && _wheelCollider.GetGroundHit(out _hit))
            {
                contactPoint.position = _hit.point;
            }
            else if (contactPoint != null)
            {
                contactPoint.position = _pos;
            }
        }
    }
}