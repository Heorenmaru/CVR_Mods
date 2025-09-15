using System;
using UnityEngine;

namespace ABI.CCK.Components
{
    public class CVRIKAngleLimit : MonoBehaviour
    {
        public Vector3 axis = Vector3.down;
        [Range(0f, 180f)]
        public float limit = 45f;
        [Range(0f, 180f)]
        public float twistLimit = 180f;

        private void OnDrawGizmosSelected()
        {
            Gizmos.color = Color.cyan;
            Gizmos.matrix = transform.localToWorldMatrix;
            
            Gizmos.DrawLine(Vector3.zero, axis * 0.4f);
            Gizmos.DrawSphere(axis * 0.4f, 0.01f);
            
            Vector3 secondaryAxis = new Vector3(axis.y, axis.z, axis.x);
            Vector3 crossAxis = Vector3.Cross(axis, secondaryAxis);
            
            Vector3 cross = Quaternion.AngleAxis(0f, axis) * crossAxis.normalized;
            
            for (int i = 0; i <= 360; i+=5)
            {
                Gizmos.DrawLine(Vector3.zero, Quaternion.AngleAxis(i, axis) * Quaternion.AngleAxis(limit + 90, secondaryAxis) * cross * 0.4f);
            }
        }
    }
}