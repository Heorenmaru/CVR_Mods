#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;
using static ABI.CCK.Scripts.Editor.SharedComponentGUI;

namespace ABI.CCK.Components
{
    public partial class CCK_CVRAvatarEditor
    {
        private void Draw_AvatarCustomization()
        {
            using (new FoldoutScope(ref _guiAvatarCustomizationFoldout, "Avatar Customization"))
            {
                if (!_guiAvatarCustomizationFoldout) return;
                using (new EditorGUI.IndentLevelScope())
                    DrawAvatarCustomization();
            }
        }

        #region Drawing Methods

        private void DrawAvatarCustomization()
        {
            EditorGUILayout.PropertyField(m_OverridesProp, new GUIContent("Animation Overrides"));

            using (new EditorGUI.DisabledScope(true)) // display the bound controller in readonly object field
            {
                AnimatorOverrideController overrides = m_OverridesProp.objectReferenceValue as AnimatorOverrideController;
                if (overrides != null) EditorGUILayout.ObjectField("Actual Controller", overrides.runtimeAnimatorController, typeof(RuntimeAnimatorController), false);
            }
            
            EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_AVATAR_INFO_OVERRIDE_CONTROLLER"), MessageType.Info);

            EditorGUI.BeginChangeCheck();
            EditorGUILayout.PropertyField(m_BodyMeshProp, new GUIContent("Face Mesh"));
            if (EditorGUI.EndChangeCheck())
            {
                // Apply the changes to _avatar.bodyMesh, so we can actually use it in GetBlendshapeNames()
                serializedObject.ApplyModifiedProperties();
                GetBlendshapeNames();
            }
        }

        #endregion
    }
}
#endif