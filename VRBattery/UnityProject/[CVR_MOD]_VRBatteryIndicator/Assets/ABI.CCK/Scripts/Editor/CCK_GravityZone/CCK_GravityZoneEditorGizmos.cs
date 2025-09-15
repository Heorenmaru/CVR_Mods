#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;
using static ABI.CCK.Scripts.Editor.SharedComponentGUI;

namespace ABI.CCK.Components
{
    public partial class CCK_GravityZoneEditor
    {
        private void Draw_GizmoSettings()
        {
            using (new FoldoutScope(ref _guiGizmoSettingsFoldout, "Editor Gizmos"))
            {
                if (!_guiGizmoSettingsFoldout) return;
                using (new EditorGUI.IndentLevelScope())
                    DrawGizmoSettings();
            }
        }

        private void DrawGizmoSettings()
        {
            CCK_GravityZoneGizmos.DrawGizmos = EditorGUILayout.Toggle("Draw Gizmos", CCK_GravityZoneGizmos.DrawGizmos);
            CCK_GravityZoneGizmos.GravityVisualAnimation = EditorGUILayout.Toggle("Gravity Visual Animation", CCK_GravityZoneGizmos.GravityVisualAnimation);
            CCK_GravityZoneGizmos.OpacityMultiplier = EditorGUILayout.Slider("Opacity", CCK_GravityZoneGizmos.OpacityMultiplier, 0f, 1f);
        }
    }
}
#endif