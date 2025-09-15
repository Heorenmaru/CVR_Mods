#if UNITY_EDITOR
using ABI.CCK.Scripts;
using UnityEditor;
using UnityEngine;

namespace ABI.CCK.Components
{
    public partial class CCK_CVRAvatarEditor
    {
        private void DrawJoystick2DInternal(
            Rect rect,
            float spacing,
            CVRAdvancedSettingsEntry advSettingEntry,
            SerializedProperty advSettingProp)
        {
            SerializedProperty defaultValueProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingJoystick2D.defaultValue));
            EditorGUI.PropertyField(rect, defaultValueProp, new GUIContent("Default Value"));
            rect.y += spacing;
            
            // min/max
            SerializedProperty minProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingJoystick2D.rangeMin));
            SerializedProperty maxProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingJoystick2D.rangeMax));
            EditorGUI.PropertyField(rect, minProp, new GUIContent("Min Value"));
            rect.y += spacing;
            EditorGUI.PropertyField(rect, maxProp, new GUIContent("Max Value"));
            rect.y += spacing;
            
            rect.height *= 2.5f;
            EditorGUI.HelpBox(rect, "This Settings does not provide a Setup Utility. " +
                                    "But it will create the necessary Animator Layers, Parameters and Animations. " +
                                    "So you can edit them to your liking after the controller is created.",
                MessageType.Info);
        }
        
        private void DrawJoystick3DInternal(
            Rect rect,
            float spacing,
            CVRAdvancedSettingsEntry advSettingEntry,
            SerializedProperty advSettingProp)
        {
            SerializedProperty defaultValueProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingJoystick3D.defaultValue));
            EditorGUI.PropertyField(rect, defaultValueProp, new GUIContent("Default Value"));
            rect.y += spacing;
            
            // min/max
            SerializedProperty minProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingJoystick3D.rangeMin));
            SerializedProperty maxProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingJoystick3D.rangeMax));
            EditorGUI.PropertyField(rect, minProp, new GUIContent("Min Value"));
            rect.y += spacing;
            EditorGUI.PropertyField(rect, maxProp, new GUIContent("Max Value"));
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