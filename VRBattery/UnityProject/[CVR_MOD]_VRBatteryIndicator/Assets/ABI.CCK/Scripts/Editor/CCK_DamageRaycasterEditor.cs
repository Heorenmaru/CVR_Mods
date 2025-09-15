using ABI.CCK.Components;
using UnityEditor;
using UnityEngine;

namespace ABI.CCK.Scripts.Editor
{
    [CanEditMultipleObjects]
    [CustomEditor(typeof(CVRDamageRaycaster))]
    public class CCK_DamageRaycasterEditor : UnityEditor.Editor
    {
        private CVRDamageRaycaster _cvrDamageRaycaster;
        private ParticleSystem particleSystem;
        
        private void OnEnable()
        {
            if (target == null)
                return;

            _cvrDamageRaycaster = (CVRDamageRaycaster) target;
            particleSystem = _cvrDamageRaycaster.GetComponent<ParticleSystem>();
        }
        
        public override void OnInspectorGUI()
        {
            DrawDefaultInspector();

            if (particleSystem == null) return;
            if (particleSystem.collision.sendCollisionMessages && !_cvrDamageRaycaster.onlyCoverFromEmitter)
            {
                EditorGUILayout.HelpBox("Send Collision Message on the particle System is enabled. Disable it to keep Damage from applying twice.", MessageType.Error);
            }

            if (particleSystem.main.simulationSpace != ParticleSystemSimulationSpace.World)
            {
                EditorGUILayout.HelpBox("Only world simulation space is supported for particle systems.", MessageType.Error);
            }
        }
    }
}