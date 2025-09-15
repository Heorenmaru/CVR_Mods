using System.Collections.Generic;
using UnityEngine;

namespace ABI.CCK.Components
{
    public class CVRLeg : MonoBehaviour
    {
        public float LegForce = 10000f;
        public Vector3 StepAreaOffset = Vector3.down;
        public float StepAreaRadius = 0.5f;
        public float StepSpeed = 5.0f;
        public AnimationCurve YOffset;
        public float StepHeight = 0.25f;
        public float minDelay = 0.2f;
        public float footRotationSpeed = 10f;

        public List<Transform> Segments = new List<Transform>();
        public bool HasFoot = false;
        public float FootThickness = 0.0f;

        public LayerMask layerMask;
        
        public CVRLeg OppositSide;
        public CVRLeg NeighbourA;
        public CVRLeg NeighbourB;
        
        public Rigidbody LinkedRigidBody;
        public float SpeedCompensationFactor = 0.1f;
        
        public bool BipedalMode = false;

        public bool useTargetLocation;
        public Transform inputTargetLocation;

        public Transform outputTargetLocation;

        private void OnDrawGizmosSelected()
        {
            Gizmos.color = Color.white;
            
            Gizmos.DrawLine(transform.position, transform.TransformPoint(StepAreaOffset));
            Gizmos.DrawWireSphere(transform.TransformPoint(StepAreaOffset), StepAreaRadius);
            
            Gizmos.color = Color.green;

            for (int i = 0; i < Segments.Count; i++)
            {
                if (Segments[i] == null) continue;
                
                Gizmos.DrawSphere(Segments[i].position, 0.025f);
                
                if (i == 0) continue;
                
                if (Segments[i-1] == null) continue;
                
                Gizmos.DrawLine(Segments[i-1].position, Segments[i].position);
            }

            if (HasFoot && Segments[^1] != null)
            {
                Gizmos.matrix = Matrix4x4.TRS(Segments[^1].position - new Vector3(0, FootThickness, 0), Quaternion.identity,
                    new Vector3(1f, 0f, 1f));
                Gizmos.DrawWireSphere(Vector3.zero, 0.25f);
            }
        }
        
        public void SetUseTargetLocation(bool value)
        {
            useTargetLocation = value;
        }
    }
}