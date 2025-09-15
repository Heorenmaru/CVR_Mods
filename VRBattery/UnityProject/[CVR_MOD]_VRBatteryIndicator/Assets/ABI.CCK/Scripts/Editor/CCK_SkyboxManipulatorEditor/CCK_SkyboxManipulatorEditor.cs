#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;

namespace ABI.CCK.Components
{
    [CanEditMultipleObjects]
    [CustomEditor(typeof(CVRSkyboxManipulator))]
    public class CCK_CVRSkyboxManipulatorEditor : Editor
    {
        #region Private Variables

        private CVRSkyboxManipulator m_SkyboxManipulator;
        
        #endregion Private Variables
        
        #region Serialized Properties
        
        private SerializedProperty m_TargetCamera;
        private SerializedProperty m_UseCustomSkyboxMaterial;
        private SerializedProperty m_SkyboxMaterial;
        private SerializedProperty m_UseCustomSkyboxMesh;
        private SerializedProperty m_SkyboxMesh;
        private SerializedProperty m_CenterOnEye;
        private SerializedProperty m_OriginTransform;
        private SerializedProperty m_AlignToWorldSpace;
        private SerializedProperty m_LocalPosition;
        private SerializedProperty m_LocalRotation;
        private SerializedProperty m_LocalScale;
        
        #endregion Serialized Properties

        #region Unity Events
        
        private void OnEnable()
        {
            if (target == null) return;
            m_SkyboxManipulator = (CVRSkyboxManipulator)target;
            
            m_TargetCamera = serializedObject.FindProperty("targetCamera");
            m_UseCustomSkyboxMaterial = serializedObject.FindProperty("useCustomSkyboxMaterial");
            m_SkyboxMaterial = serializedObject.FindProperty("skyboxMaterial");
            m_UseCustomSkyboxMesh = serializedObject.FindProperty("useCustomSkyboxMesh");
            m_SkyboxMesh = serializedObject.FindProperty("skyboxMesh");
            m_CenterOnEye = serializedObject.FindProperty("centerOnEye");
            m_OriginTransform = serializedObject.FindProperty("originTransform");
            m_AlignToWorldSpace = serializedObject.FindProperty("alignToWorldSpace");
            m_LocalPosition = serializedObject.FindProperty("localPosition");
            m_LocalRotation = serializedObject.FindProperty("localRotation");
            m_LocalScale = serializedObject.FindProperty("localScale");
        }
        
        public override void OnInspectorGUI()
        {
            if (m_SkyboxManipulator == null)
                return;
            
            EditorGUILayout.HelpBox("This component only changes how the skybox renders for this camera. " +
                                    "It does not affect scene lighting or GI.", MessageType.Info);

            // TODO: move to partials & bubble
            
            serializedObject.Update();

            // Draw Skybox Manipulator settings
            EditorGUILayout.PropertyField(m_TargetCamera);
            EditorGUILayout.Space(5);
            
            // Skybox Material Settings - Inline UI
            EditorGUILayout.BeginHorizontal();
            EditorGUILayout.PrefixLabel("Skybox Material");
            
            EditorGUI.BeginChangeCheck();
            
            bool useCustomMaterial = GUILayout.Toggle(m_UseCustomSkyboxMaterial.boolValue, 
                new GUIContent("", "Use a custom material instead of the camera's skybox material"), 
                GUILayout.Width(15));
            
            if (EditorGUI.EndChangeCheck()) m_UseCustomSkyboxMaterial.boolValue = useCustomMaterial;
            
            using (new EditorGUI.DisabledGroupScope(!m_UseCustomSkyboxMaterial.boolValue))
                EditorGUILayout.PropertyField(m_SkyboxMaterial, GUIContent.none);
            
            EditorGUILayout.EndHorizontal();
            
            string materialHelpText = m_UseCustomSkyboxMaterial.boolValue
                ? "Using custom skybox material"
                : "Using camera's skybox material";
            EditorGUI.HelpBox(EditorGUILayout.GetControlRect(), materialHelpText, MessageType.None);
            
            EditorGUILayout.Space(5);
            
            // Skybox Mesh Settings
            EditorGUILayout.BeginHorizontal();
            EditorGUILayout.PrefixLabel("Skybox Mesh");
            
            EditorGUI.BeginChangeCheck();
           
            bool useCustomMesh = GUILayout.Toggle(m_UseCustomSkyboxMesh.boolValue, 
                new GUIContent("", "Use a custom mesh instead of the default skybox mesh"), 
                GUILayout.Width(15));
           
            if (EditorGUI.EndChangeCheck()) m_UseCustomSkyboxMesh.boolValue = useCustomMesh;
            
            using (new EditorGUI.DisabledGroupScope(!m_UseCustomSkyboxMesh.boolValue))
                EditorGUILayout.PropertyField(m_SkyboxMesh, GUIContent.none);
            
            EditorGUILayout.EndHorizontal();
            
            string meshHelpText = m_UseCustomSkyboxMesh.boolValue
                ? "Using custom skybox mesh"
                : "Using default Unity skybox mesh";
            EditorGUI.HelpBox(EditorGUILayout.GetControlRect(), meshHelpText, MessageType.None);
            
            EditorGUILayout.Space(5);
            
            // Transformation Settings
            EditorGUILayout.LabelField("Transformation Settings", EditorStyles.boldLabel);
            EditorGUILayout.PropertyField(m_CenterOnEye);
            EditorGUILayout.PropertyField(m_OriginTransform);
            EditorGUILayout.PropertyField(m_AlignToWorldSpace);
            
            EditorGUILayout.Space(5);
            
            // Local Transform Settings
            EditorGUILayout.LabelField("Local Transform", EditorStyles.boldLabel);
            EditorGUILayout.PropertyField(m_LocalPosition);
            EditorGUILayout.PropertyField(m_LocalRotation);
            EditorGUILayout.PropertyField(m_LocalScale);

            serializedObject.ApplyModifiedProperties();
        }
        
        #endregion Unity Events
    }
}
#endif