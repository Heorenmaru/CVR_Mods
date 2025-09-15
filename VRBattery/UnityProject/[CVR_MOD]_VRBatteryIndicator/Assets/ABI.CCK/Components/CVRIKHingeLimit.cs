using System;
using UnityEngine;

namespace ABI.CCK.Components
{
    public class CVRIKHingeLimit : MonoBehaviour
    {
        public Vector3 axis = Vector3.forward;
        public bool useLimits = true;
        public float minAngle = -45f;
        public float maxAngle = 45f;

        [Tooltip("Only effects gizmo display not function")]
        public float displayRotation = 0f;

        private void OnDrawGizmosSelected()
        {
            Gizmos.color = Color.cyan;
            Gizmos.matrix = transform.localToWorldMatrix;
            
            Gizmos.DrawLine(Vector3.zero, axis * 0.4f);
            Gizmos.DrawSphere(axis * 0.4f, 0.01f);
            
            Vector3 secondaryAxis = new Vector3(axis.y, axis.z, axis.x);
            Vector3 crossAxis = Vector3.Cross(axis, secondaryAxis);
            
            Vector3 cross = Quaternion.AngleAxis(0f, axis) * crossAxis.normalized;

            float fill = (int)Math.Ceiling(Mathf.Abs(maxAngle - minAngle) / 5);

            for (int i = 0; i <= fill; i++)
            {
                Gizmos.DrawLine(Vector3.zero, Quaternion.AngleAxis(Mathf.Lerp(minAngle, maxAngle, i / fill) + displayRotation, axis) * cross * 0.4f);
            }
            
            Gizmos.color = Color.white;
            Gizmos.DrawLine(Vector3.zero, Quaternion.AngleAxis(displayRotation, axis) * cross * 0.45f);
            Gizmos.DrawSphere(Quaternion.AngleAxis(displayRotation, axis) * cross * 0.45f, 0.01f);
        }
    }
}