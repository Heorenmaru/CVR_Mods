#if UNITY_EDITOR
using System.Collections.Generic;
using ABI.CCK.Scripts.Editor;
using UnityEditor;
using UnityEngine;

namespace ABI.CCK.Components
{
    [CanEditMultipleObjects]
    [CustomEditor(typeof(CVRBlitter))]
    public partial class CCK_CVRBlitterEditor : Editor
    {
        #region Private Variables

        private CVRBlitter _blitter;
        private static bool _guiBlitterSettingsFoldout = true;

        #endregion

        #region Serialized Properties

        public RenderTexture originTexture;
        public RenderTexture destinationTexture;
        public Material blitMaterial;
        public bool clearEveryFrame;

        private SerializedProperty m_IndexProp;
        private SerializedProperty m_RenderTextureProp;

        #endregion

        #region Unity Events

        private void OnEnable()
        {
            if (target == null) return;
            _blitter = (CVRBlitter)target;

            m_RenderTextureProp = serializedObject.FindProperty(nameof(CVRBlitter.renderTextures));
            m_IndexProp = serializedObject.FindProperty(nameof(CVRBlitter.index));
        }

        public override void OnInspectorGUI()
        {
            if (_blitter == null)
                return;
            using (new SharedComponentGUI.FoldoutScope(ref _guiBlitterSettingsFoldout, "Basic Blitter Settings"))
            {
                if (_guiBlitterSettingsFoldout)
                {
                    using (new EditorGUI.IndentLevelScope())
                    {
                        EditorGUILayout.PropertyField(serializedObject.FindProperty(nameof(CVRBlitter.originTexture)));
                        EditorGUILayout.PropertyField(
                            serializedObject.FindProperty(nameof(CVRBlitter.destinationTexture)));
                        EditorGUILayout.PropertyField(serializedObject.FindProperty(nameof(CVRBlitter.blitMaterial)));
                        EditorGUILayout.PropertyField(
                            serializedObject.FindProperty(nameof(CVRBlitter.clearEveryFrame)));
                    }
                }
            }

            EditorGUILayout.Space();
            DrawEntries();

            for (int i = 0; i < m_RenderTextureProp.arraySize; i++)
            {
                if (m_RenderTextureProp.GetArrayElementAtIndex(i).objectReferenceValue == null)
                {
                    EditorGUILayout.HelpBox(
                        "One or more bound Render Textures are missing or unassigned.\nThis will prevent the component from functioning.",
                        MessageType.Error);
                    break;
                }
            }

            serializedObject.ApplyModifiedProperties();
        }

        #endregion
    }
}
#endif