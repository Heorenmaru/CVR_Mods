#if UNITY_EDITOR
using ABI.CCK.Scripts;
using UnityEditor;
using UnityEngine;

namespace ABI.CCK.Components
{
    public partial class CCK_CVRAvatarEditor
    {
        void DrawInputSingleInternal(
            Rect rect,
            float spacing,
            CVRAdvancedSettingsEntry advSettingEntry,
            SerializedProperty advSettingProp)
        {
            SerializedProperty defaultValueProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingInputSingle.defaultValue));
            EditorGUI.PropertyField(rect, defaultValueProp, new GUIContent("Default Value"));
            rect.y += spacing;
            
            rect.height *= 2.5f;
            EditorGUI.HelpBox(rect, "This Settings does not provide a Setup Utility. " +
                                    "But it will create the necessary Animator Layers, Parameters and Animations. " +
                                    "So you can edit them to your liking after the controller is created.",
                MessageType.Info);
        }
        
        void DrawInputVector2Internal(
            Rect rect,
            float spacing,
            CVRAdvancedSettingsEntry advSettingEntry,
            SerializedProperty advSettingProp)
        {
            SerializedProperty defaultValueProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingInputVector2.defaultValue));
            EditorGUI.PropertyField(rect, defaultValueProp, new GUIContent("Default Value"));
            rect.y += spacing;
            
            rect.height *= 2.5f;
            EditorGUI.HelpBox(rect, "This Settings does not provide a Setup Utility. " +
                                    "But it will create the necessary Animator Layers, Parameters and Animations. " +
                                    "So you can edit them to your liking after the controller is created.",
                MessageType.Info);
        }
        
        void DrawInputVector3Internal(
            Rect rect,
            float spacing,
            CVRAdvancedSettingsEntry advSettingEntry,
            SerializedProperty advSettingProp)
        {
            SerializedProperty defaultValueProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingInputVector3.defaultValue));
            EditorGUI.PropertyField(rect, defaultValueProp, new GUIContent("Default Value"));
            rect.y += spacing;
            
            rect.height *= 2.5f;
            EditorGUI.HelpBox(rect, "This Settings does not provide a Setup Utility. " +
                                    "But it will create the necessary Animator Layers, Parameters and Animations. " +
                                    "So you can edit them to your liking after the controller is created.",
                MessageType.Info);
        }
    }
}
#endif