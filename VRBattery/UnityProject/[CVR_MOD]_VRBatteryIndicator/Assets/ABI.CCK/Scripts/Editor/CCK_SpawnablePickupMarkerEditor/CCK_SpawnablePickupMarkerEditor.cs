using UnityEditor;

namespace ABI.CCK.Components
{
    [CanEditMultipleObjects]
    [CustomEditor(typeof(SpawnablePickupMarker))]
    public class CCK_SpawnablePickupMarkerEditor : Editor
    {
        #region Private Variables
        
        private SpawnablePickupMarker _pickupMarker;

        #endregion
        
        #region Serialized Properties

        private SerializedProperty m_SpawnableGuidProp;

        #endregion
        
        #region Unity Events
        
        private void OnEnable()
        {
            if (target == null) return;
            _pickupMarker = (SpawnablePickupMarker)target;
            
            m_SpawnableGuidProp = serializedObject.FindProperty(nameof(SpawnablePickupMarker.spawnableGuid));
        }
        
        public override void OnInspectorGUI()
        {
            if (_pickupMarker == null)
                return;
            
            serializedObject.Update();
            
            EditorGUILayout.PropertyField(m_SpawnableGuidProp);
            if (string.IsNullOrEmpty(m_SpawnableGuidProp.stringValue))
                EditorGUILayout.HelpBox("GUID is empty", MessageType.Info);
            else if (!System.Guid.TryParse(m_SpawnableGuidProp.stringValue, out _))
                EditorGUILayout.HelpBox("Invalid GUID", MessageType.Warning);
            
            serializedObject.ApplyModifiedProperties();
        }
        
        #endregion
    }
}