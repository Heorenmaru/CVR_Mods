#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;
using static ABI.CCK.Scripts.Editor.SharedComponentGUI;

namespace ABI.CCK.Components
{
    public partial class CCK_GravityZoneEditor
    {
        private void Draw_GeneralSettings()
        {
            using (new FoldoutScope(ref _guiGeneralSettingsFoldout, "General Configuration"))
            {
                if (!_guiGeneralSettingsFoldout) return;
                using (new EditorGUI.IndentLevelScope()) {
                    DrawGeneralSettings();
                    if (_gravityZone.gravityEffect.HasFlag(GravityZone.GravityEffect.Players))
                        DrawPlayerGravityAlignmentSettings();
                }
            }
        }
        
        private void DrawGeneralSettings()
        {
            EditorGUILayout.PropertyField(m_GravityMix, new GUIContent("Mix"));
            EditorGUILayout.PropertyField(m_Priority, new GUIContent("Priority"));
            EditorGUILayout.PropertyField(m_GravityType, new GUIContent("Type"));
            
            EditorGUILayout.HelpBox("When relative Type is selected, Strength is handled as a multiplier of the world gravity", MessageType.Info);
            
            EditorGUILayout.PropertyField(m_Strength, new GUIContent("Strength"));
            EditorGUILayout.PropertyField(m_GravityEffect, new GUIContent("Effected Objects"));
            //EditorGUILayout.PropertyField(m_GravityFalloff, new GUIContent("Falloff")); // not implemented yet


        }

        private void DrawPlayerGravityAlignmentSettings() {
            EditorGUILayout.PropertyField(m_PlayerGravityAlignmentMode, new GUIContent("Player Gravity Alignment Mode"));
            if (_gravityZone.playerGravityAlignmentMode == GravityZone.PlayerAlignmentMode.Custom)
                EditorGUILayout.PropertyField(m_PlayerGravityCustomAlignmentValue, new GUIContent("Rotation Speed (Degrees/second)"));
            if (_gravityZone.playerGravityAlignmentMode != GravityZone.PlayerAlignmentMode.Auto)
                EditorGUILayout.HelpBox("Only the gravity alignment mode Auto can be overriden by player settings. " +
                                        "The other options might cause motion sickness to the users since if ignores their settings.", MessageType.Warning);
        }
    }
}
#endif