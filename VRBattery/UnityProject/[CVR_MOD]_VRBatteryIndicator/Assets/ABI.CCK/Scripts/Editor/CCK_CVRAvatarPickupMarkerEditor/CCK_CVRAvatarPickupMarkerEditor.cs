using UnityEditor;

namespace ABI.CCK.Components
{
    [CanEditMultipleObjects]
    [CustomEditor(typeof(CVRAvatarPickupMarker))]
    public class CCK_CVRAvatarPickupMarkerEditor : Editor
    {
        #region Private Variables
        
        private CVRAvatarPickupMarker _pickupMarker;

        #endregion
        
        #region Serialized Properties

        private SerializedProperty m_AvatarGuidProp;

        #endregion
        
        #region Unity Events
        
        private void OnEnable()
        {
            if (target == null) return;
            _pickupMarker = (CVRAvatarPickupMarker)target;
            
            m_AvatarGuidProp = serializedObject.FindProperty(nameof(CVRAvatarPickupMarker.avatarGuid));
        }
        
        public override void OnInspectorGUI()
        {
            if (_pickupMarker == null)
                return;
            
            serializedObject.Update();
            
            EditorGUILayout.PropertyField(m_AvatarGuidProp);
            if (string.IsNullOrEmpty(m_AvatarGuidProp.stringValue))
                EditorGUILayout.HelpBox("GUID is empty", MessageType.Info);
            else if (!System.Guid.TryParse(m_AvatarGuidProp.stringValue, out _))
                EditorGUILayout.HelpBox("Invalid GUID", MessageType.Warning);
            
            serializedObject.ApplyModifiedProperties();
        }
        
        #endregion
    }
}