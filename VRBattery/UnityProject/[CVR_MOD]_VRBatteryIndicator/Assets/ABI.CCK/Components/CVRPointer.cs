using UnityEditor;
using UnityEngine;

namespace ABI.CCK.Components
{
    [AddComponentMenu("ChilloutVR/CVR Pointer")]
    [HelpURL("https://docs.abinteractive.net/cck/components/pointer/")]
    [DisallowMultipleComponent]
    public class CVRPointer : MonoBehaviour, ICCK_Component
    {
        public string type;
        
        public float value = 0;
        
        private void OnDrawGizmos()
        {
            if (isActiveAndEnabled)
            {
                Gizmos.color = Color.blue;
                Matrix4x4 rotationMatrix = Matrix4x4.TRS(transform.position, transform.rotation, Vector3.one);
                Gizmos.matrix = rotationMatrix;
                Gizmos.DrawSphere(Vector3.zero, 0.015f);
            }
        }
    }
}