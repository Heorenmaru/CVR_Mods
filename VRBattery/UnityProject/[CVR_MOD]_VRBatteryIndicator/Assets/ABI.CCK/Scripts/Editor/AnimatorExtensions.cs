#if CVR_CCK_EXISTS
using UnityEngine;
using UnityEditor;

namespace ABI.CCK.Scripts.Editor.Hacks
{
    [CustomEditor(typeof(Animator))]
    public class CustomAnimatorEditorToAppendTheUsefulPropertiesThatArentNormallyExposed : UnityEditor.Editor
    {
        #region Constants
        
        private const string KEEP_STATE_PROPERTY = "m_KeepAnimatorStateOnDisable";
        private const string WRITE_DEFAULT_PROPERTY = "m_WriteDefaultValuesOnDisable";
        private const string KEEP_STATE_TOOLTIP = "When enabled, the Animator will preserve its state and animated values when the GameObject is inactive. For example, if animated from x=0 to x=3, the GameObject keeps x=3 when disabled instead of reverting to x=0.";
        private const string WRITE_DEFAULT_TOOLTIP = "When enabled (true), resets the playable graph to default values when the Animator is disabled. When disabled (false), preserves the current state of the playable graph and animated values when the GameObject is disabled.";
        private const string KEEP_STATE_URL = "https://docs.unity3d.com/ScriptReference/Animator-keepAnimatorStateOnDisable.html";
        private const string WRITE_DEFAULT_URL = "https://docs.unity3d.com/ScriptReference/Animator-writeDefaultValuesOnDisable.html";
        
        #endregion Constants

        #region Private Variables

        private UnityEditor.Editor _defaultEditor;
        private Animator _targetAnimator;
        private bool _showAdvancedOptions;

        #endregion Private Variables
        
        #region Serialized Properties

        private SerializedProperty m_KeepAnimatorStateOnDisable;
        private SerializedProperty m_WriteDefaultValuesOnDisable;

        #endregion Serialized Properties
        
        #region Unity Events
        
        private void OnEnable()
        {
            _targetAnimator = (Animator)target;
            if (_targetAnimator == null) return;
            
            _defaultEditor = CreateEditor(target, System.Type.GetType("UnityEditor.AnimatorInspector, UnityEditor"));
            
            m_KeepAnimatorStateOnDisable = serializedObject.FindProperty(KEEP_STATE_PROPERTY);
            m_WriteDefaultValuesOnDisable = serializedObject.FindProperty(WRITE_DEFAULT_PROPERTY);
        }
        
        private void OnDisable() => DestroyImmediate(_defaultEditor);
        
        public override void OnInspectorGUI()
        {
            _defaultEditor.OnInspectorGUI();
            
            // if (targetAnimator.gameObject.name != "meow") return;
            
            EditorGUILayout.Space(10);
            _showAdvancedOptions = EditorGUILayout.Foldout(_showAdvancedOptions, "Advanced Animator Options for ChilloutVR", true);
            if (!_showAdvancedOptions) return;
            
            EditorGUI.indentLevel++;
            serializedObject.Update();
            
            DrawPropertyWithHelpIcon(m_KeepAnimatorStateOnDisable, 
                "Keep Animator State On Disable", KEEP_STATE_TOOLTIP, KEEP_STATE_URL);
            
            DrawPropertyWithHelpIcon(m_WriteDefaultValuesOnDisable, 
                "Write Default Values On Disable", WRITE_DEFAULT_TOOLTIP, WRITE_DEFAULT_URL);
            
            serializedObject.ApplyModifiedProperties();
            EditorGUI.indentLevel--;

            return;
            static void DrawPropertyWithHelpIcon(SerializedProperty property, string label, string tooltip, string helpUrl)
            {
                Rect position = EditorGUILayout.GetControlRect();
                float extendedLabelWidth = EditorGUIUtility.labelWidth + 50;
            
                EditorGUI.LabelField(new Rect(position.x, position.y, extendedLabelWidth, position.height), new GUIContent(label, tooltip));
                EditorGUI.PropertyField(new Rect(position.x + extendedLabelWidth + 5, position.y, 20, position.height), property, GUIContent.none);
            
                if (GUI.Button(new Rect(position.width - 20, position.y, 20, position.height), "?", EditorStyles.miniButton))
                    Application.OpenURL(helpUrl);
            }
        }
        
        #endregion Unity Events
    }
}
#endif