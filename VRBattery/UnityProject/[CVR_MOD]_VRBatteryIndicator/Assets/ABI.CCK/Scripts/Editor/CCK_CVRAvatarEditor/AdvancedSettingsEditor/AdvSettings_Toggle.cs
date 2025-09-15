#if UNITY_EDITOR
using ABI.CCK.Scripts;
using ABI.CCK.Scripts.Editor;
using UnityEditor;
using UnityEditorInternal;
using UnityEngine;
using static ABI.CCK.Scripts.Editor.SharedComponentGUI;

namespace ABI.CCK.Components
{
    public partial class CCK_CVRAvatarEditor
    {
        private void DrawToggleInternal(
            Rect rect,
            float spacing,
            CVRAdvancedSettingsEntry advSettingEntry,
            SerializedProperty advSettingProp)
        {
            CVRAdvancesAvatarSettingGameObjectToggle toggleSetting = advSettingEntry.setting as CVRAdvancesAvatarSettingGameObjectToggle;
            
            SerializedProperty defaultValueProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingGameObjectToggle.defaultValue));
            defaultValueProp.boolValue = EditorGUI.Popup(rect, "Default Value", defaultValueProp.boolValue ? 1 : 0, BoolAsStringDisplayOptions) == 1;
            rect.y += spacing;

            // foldout
            advSettingEntry.isAutogenCollapsed = !EditorGUI.Foldout(rect, !advSettingEntry.isAutogenCollapsed, "Autogeneration Options", true, s_BoldFoldoutStyle);
            if (advSettingEntry.isAutogenCollapsed)
                return;
            
            // autogen stuff
            rect.y += spacing;
            
            SerializedProperty useAnimationProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingGameObjectToggle.useAnimationClip));
            SerializedProperty animationClipProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingGameObjectToggle.animationClip));
            SerializedProperty animationNameProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingGameObjectToggle.offAnimationClip));
            
            useAnimationProp.boolValue = EditorGUI.Toggle(rect, "Use Animation Clip", useAnimationProp.boolValue);
            rect.y += spacing;

            // Animation Clip Fields
            if (useAnimationProp.boolValue)
            {
                EditorGUI.PropertyField(new Rect(rect.x, rect.y, rect.width, EditorGUIUtility.singleLineHeight), animationClipProp);
                rect.y += spacing;
                EditorGUI.PropertyField(new Rect(rect.x, rect.y, rect.width, EditorGUIUtility.singleLineHeight), animationNameProp);
                return;
            }
            
            SerializedProperty gameObjectTargetsProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingGameObjectToggle.gameObjectTargets));
            
            // GameObject Targets List
            if (toggleSetting!.reorderableList == null // recreate list if null 
                || toggleSetting.reorderableList.serializedProperty.serializedObject != serializedObject) // stale
            {
                toggleSetting.reorderableList = new ReorderableList(serializedObject, gameObjectTargetsProp,
                    true, true, true, true)
                {
                    list = toggleSetting.gameObjectTargets,
                };

                toggleSetting.reorderableList.drawElementCallback = (innerRect, innerIndex, _, _) =>
                {
                    innerRect = new Rect(innerRect.x, innerRect.y + 2, innerRect.width, EditorGUIUtility.singleLineHeight);
                    SerializedProperty toggleEntryProp = toggleSetting.reorderableList.serializedProperty.GetArrayElementAtIndex(innerIndex);
                
                    const float elementSpacing = 5;
                    const float infoIconWidth = 20;
                    float innerRectHalfWidth = innerRect.width * 0.5f;
                    
                    // GameObject Field
                    innerRect.width = innerRectHalfWidth;
                    SerializedProperty gameObjectProp = toggleEntryProp.FindPropertyRelative(nameof(CVRAdvancedSettingsTargetEntryGameObject.gameObject));
                    EditorGUI.PropertyField(innerRect, gameObjectProp, GUIContent.none);
                    
                    string tooltipPath = "No Target";
                    if (gameObjectProp.objectReferenceValue != null)
                    {
                        Transform avatarTransform = _avatar.transform;
                        Transform targetTransform = ((GameObject)gameObjectProp.objectReferenceValue).transform;
                        if (!targetTransform.IsChildOf(avatarTransform))
                        {
                            gameObjectProp.objectReferenceValue = null;
                        }
                        else
                        {
                            SerializedProperty gameObjectPathProp = toggleEntryProp.FindPropertyRelative(nameof(CVRAdvancedSettingsTargetEntryGameObject.treePath));
                            gameObjectPathProp.stringValue = AnimationUtility.CalculateTransformPath(targetTransform, avatarTransform);
                            tooltipPath = $"Path: {avatarTransform.name}/{gameObjectPathProp.stringValue}";
                        }
                    }
                    
                    // OnState Field
                    innerRect.x += innerRectHalfWidth + elementSpacing;
                    innerRect.width -= 2*infoIconWidth - 2*elementSpacing; // left/right padding
                    SerializedProperty onStateProp = toggleEntryProp.FindPropertyRelative(nameof(CVRAdvancedSettingsTargetEntryGameObject.onState));
                    onStateProp.boolValue = EditorGUI.Popup(innerRect, onStateProp.boolValue ? 1 : 0, BoolAsStringDisplayOptions) == 1;
                    
                    // Path Info
                    innerRect.x += innerRect.width + elementSpacing;
                    innerRect.width = infoIconWidth;
                    EditorGUI.LabelField(innerRect, new GUIContent(EditorGUIUtility.IconContent("d_animationanimated").image, tooltipPath));
                };

                toggleSetting.reorderableList.elementHeight = EditorGUIUtility.singleLineHeight + 4f;
                toggleSetting.reorderableList.drawHeaderCallback = (headerRect) =>
                {
                    Rect labelRect = new(headerRect.x, headerRect.y, headerRect.width - 35, EditorGUIUtility.singleLineHeight);
                    EditorGUI.LabelField(labelRect, $"GameObject Targets ({gameObjectTargetsProp.arraySize})");
                    labelRect.x += 35; // not sure why this is needed, nested lists are weird
                    EditorGUIExtensions.UtilityMenu(labelRect, toggleSetting.reorderableList, gameObjectTargetsProp);
                };
            }

            toggleSetting.reorderableList.DoList(rect);
        }
    }
}
#endif