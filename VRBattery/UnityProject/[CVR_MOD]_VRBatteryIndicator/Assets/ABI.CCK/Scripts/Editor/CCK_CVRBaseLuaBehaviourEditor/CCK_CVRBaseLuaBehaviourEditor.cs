using UnityEditor;

namespace ABI.CCK.Components
{
    [CustomEditor(typeof(CVRLuaClientBehaviour))]
    public partial class CCK_CVRLuaClientBehaviourEditor : Editor
    {
        #region Editor GUI Fields

        private static bool _guiLuaAssetFoldout = true;
        private static bool _guiBoundObjectsFoldout = true;

        #endregion
        
        #region Private Variables
        
        private CVRBaseLuaBehaviour _baseLuaBehaviour;
        
        #endregion

        #region Serialized Properties
        private SerializedProperty m_LocalOnly;
        private SerializedProperty m_LuaAsset;
        private SerializedProperty m_BoundObjects;

        #endregion
        
        public void OnEnable()
        {
            if (target == null) return;
            _baseLuaBehaviour = (CVRLuaClientBehaviour)target;

            m_LocalOnly = serializedObject.FindProperty(nameof(CVRLuaClientBehaviour.localOnly));
            m_LuaAsset = serializedObject.FindProperty(nameof(CVRLuaClientBehaviour.asset));
            m_BoundObjects = serializedObject.FindProperty(nameof(CVRLuaClientBehaviour.boundObjects));
        }
        
        public override void OnInspectorGUI()
        {
            if (_baseLuaBehaviour == null)
                return;

            EditorGUILayout.HelpBox(
                "Lua is an open-source language that you can use to easily add new scripted behaviours to objects in props, avatars, and worlds.",
                MessageType.Info);
            
            EditorGUILayout.HelpBox(
                "To test scripting in-game you need to use our Scripting Nightly branch. Instruction on how to opt in can be found in our discord server.",
                MessageType.Warning);
            
            serializedObject.Update();

            Draw_LuaAsset();
            Draw_BoundObjects();
            
            serializedObject.ApplyModifiedProperties();
        }
    }
}