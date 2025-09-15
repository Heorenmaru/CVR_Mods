#if UNITY_EDITOR
using ABI.CCK.Scripts.Editor;
using UnityEditor;
using UnityEngine;
using static ABI.CCK.Scripts.Editor.SharedComponentGUI;

namespace ABI.CCK.Components
{
    public partial class CCK_CVRAvatarEditor
    {
        private void Draw_EyeBlinkSettings()
        {
            using (new FoldoutScope(ref _guiEyeBlinkSettingsFoldout, "Eye Blink Settings"))
            {
                if (!_guiEyeBlinkSettingsFoldout) return;
                using (new EditorGUI.IndentLevelScope())
                    DrawEyeBlinkSettings();
            }
        }

        #region Drawing Methods

        private void DrawEyeBlinkSettings()
        {

            EditorGUILayout.PropertyField(m_UseBlinkBlendshapesProp, new GUIContent("Use Blink Blendshapes"));

            Separator();

            EditorGUIExtensions.LimitSliderSidedProp("Blink Gap (Seconds)", m_BlinkGapProp, CVRAvatar.BlinkMinGapLimit, CVRAvatar.BlinkMaxGapLimit);

            EditorGUIExtensions.LimitSliderSidedProp("Blink Duration (Seconds)", m_BlinkDurationProp, CVRAvatar.BlinkMinDurationLimit, CVRAvatar.BlinkMaxDurationLimit);

            Separator();

            DrawBlendshapes("Blink", m_BlinkBlendshapeProp);
        }

        #endregion
    }
}
#endif