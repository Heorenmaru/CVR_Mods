#if UNITY_EDITOR
using ABI.CCK.Scripts;
using ABI.CCK.Scripts.Editor;
using UnityEditor;
using UnityEditorInternal;
using UnityEngine;

namespace ABI.CCK.Components
{
    public partial class CCK_CVRAvatarEditor
    {
        void DrawDropdownInternal(
            Rect rect,
            float spacing,
            CVRAdvancedSettingsEntry advSettingEntry,
            SerializedProperty advSettingProp)
        {
            CVRAdvancesAvatarSettingGameObjectDropdown dropdownSetting = (CVRAdvancesAvatarSettingGameObjectDropdown)advSettingEntry.setting;

            SerializedProperty defaultValueProp =
                advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingGameObjectDropdown
                    .defaultValue));

            int selectedValue = defaultValueProp.intValue; // default value is index of the dropdown options
            selectedValue = EditorGUI.Popup(rect, "Default Value", selectedValue, dropdownSetting.optionNames);
            defaultValueProp.intValue = selectedValue;
            rect.y += spacing;

            // foldout
            // advSettingEntry.isAutogenCollapsed = !EditorGUI.Foldout(rect, !advSettingEntry.isAutogenCollapsed,
            //     "Autogeneration Options", true, s_BoldFoldoutStyle);
            // if (advSettingEntry.isAutogenCollapsed)
            //     return;

            // autogen stuff
            //rect.y += spacing;
            SerializedProperty dropdownOptionsProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingGameObjectDropdown.options));
            
            // GameObject Targets List
            if (dropdownSetting.reorderableList == null // recreate list if null or stale
                || dropdownSetting.reorderableList.serializedProperty.serializedObject != serializedObject) 
            {
                dropdownSetting.reorderableList = new ReorderableList(serializedObject, dropdownOptionsProp,
                    true, true, true, true)
                {
                    list = dropdownSetting.options,
                };

                dropdownSetting.reorderableList.drawElementCallback = (innerRect, innerIndex, _, _) =>
                {
                    if (innerIndex < 0 || innerIndex >= dropdownSetting.options.Count)
                        return;
                    
                    innerRect = new Rect(innerRect.x, innerRect.y + 2, innerRect.width, EditorGUIUtility.singleLineHeight);
                    SerializedProperty dropdownEntryProp = dropdownSetting.reorderableList.serializedProperty.GetArrayElementAtIndex(innerIndex);
                    CVRAdvancedSettingsDropDownEntry dropDownEntry = dropdownSetting.options[innerIndex];

                    const float elementSpacing = 10;
                    float innerRectHalfWidth = innerRect.width * 0.5f;
                    Rect splitRect = new(innerRect);
                    
                    // Autogen Dropdown (i have no fucking idea how to make this look good... im sorry)
                    splitRect.x += elementSpacing;
                    splitRect.width = innerRectHalfWidth;
                    dropDownEntry.isAutogenCollapsed = !EditorGUI.Foldout(splitRect,
                        !dropDownEntry.isAutogenCollapsed, $"Element Name ({innerIndex})", true/*, s_BoldFoldoutStyle*/);
                    
                    // Name Field
                    splitRect.x += innerRectHalfWidth;
                    splitRect.width -= elementSpacing; // left/right padding
                    SerializedProperty nameProp = dropdownEntryProp.FindPropertyRelative(nameof(CVRAdvancedSettingsDropDownEntry.name));
                    EditorGUI.PropertyField(splitRect, nameProp, GUIContent.none);

                    if (dropDownEntry.isAutogenCollapsed)
                        return;
                    
                    // autogen stuff
                    innerRect.y += spacing;
                    
                    #region Internal Drawing - Dropdown Inner-Autogen

                    SerializedProperty useAnimationProp = dropdownEntryProp.FindPropertyRelative(nameof(CVRAdvancedSettingsDropDownEntry.useAnimationClip));
                    SerializedProperty animationClipProp = dropdownEntryProp.FindPropertyRelative(nameof(CVRAdvancedSettingsDropDownEntry.animationClip));
            
                    useAnimationProp.boolValue = EditorGUI.Toggle(innerRect, "Use Animation Clip", useAnimationProp.boolValue);
                    innerRect.y += spacing;

                    // Animation Clip Field
                    if (useAnimationProp.boolValue)
                    {
                        EditorGUI.PropertyField(new Rect(innerRect.x, innerRect.y, innerRect.width, EditorGUIUtility.singleLineHeight), animationClipProp);
                        return;
                    }

                    #region Internal Drawing - Dropdown Inner-Autogen-GameObjectTargets
                    
                    SerializedProperty gameObjectTargetsProp = dropdownEntryProp.FindPropertyRelative(nameof(CVRAdvancedSettingsDropDownEntry.gameObjectTargets));
                    
                    // GameObject Targets List
                    if (dropDownEntry.reorderableList == null // recreate list if null or stale
                        || dropDownEntry.reorderableList.serializedProperty.serializedObject != serializedObject
                        || dropDownEntry.reorderableList.serializedProperty != gameObjectTargetsProp)
                    {
                        dropDownEntry.reorderableList = new ReorderableList(serializedObject, gameObjectTargetsProp,
                            true, true, true, true)
                        {
                            list = dropDownEntry.gameObjectTargets,
                        };

                        dropDownEntry.reorderableList.drawElementCallback = (innerInnerRect, innerInnerIndex, _, _) =>
                        {
                            innerInnerRect = new Rect(innerInnerRect.x, innerInnerRect.y + 2, innerInnerRect.width, EditorGUIUtility.singleLineHeight);
                            SerializedProperty toggleEntryProp = dropDownEntry.reorderableList.serializedProperty.GetArrayElementAtIndex(innerInnerIndex);
                        
                            const float innerElementSpacing = 5;
                            const float infoIconWidth = 20;
                            
                            // GameObject Field
                            innerInnerRect.width = innerInnerRect.width * 0.5f;
                            SerializedProperty gameObjectProp = toggleEntryProp.FindPropertyRelative(nameof(CVRAdvancedSettingsTargetEntryGameObject.gameObject));
                            EditorGUI.PropertyField(innerInnerRect, gameObjectProp, GUIContent.none);
                            
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
                            innerInnerRect.x += innerRectHalfWidth + innerElementSpacing;
                            innerInnerRect.width -= 2*infoIconWidth - 2*innerElementSpacing; // left/right padding
                            SerializedProperty onStateProp = toggleEntryProp.FindPropertyRelative(nameof(CVRAdvancedSettingsTargetEntryGameObject.onState));
                            onStateProp.boolValue = EditorGUI.Popup(innerInnerRect, onStateProp.boolValue ? 1 : 0, BoolAsStringDisplayOptions) == 1;
                            
                            // Path Info
                            innerInnerRect.x += innerInnerRect.width + innerElementSpacing;
                            innerInnerRect.width = infoIconWidth;
                            EditorGUI.LabelField(innerInnerRect, new GUIContent(EditorGUIUtility.IconContent("d_animationanimated").image, tooltipPath));
                        };

                        dropDownEntry.reorderableList.elementHeight = EditorGUIUtility.singleLineHeight + 4f;
                        dropDownEntry.reorderableList.drawHeaderCallback = (headerRect) =>
                        {
                            Rect labelRect = new(headerRect.x, headerRect.y, headerRect.width - 35, EditorGUIUtility.singleLineHeight);
                            EditorGUI.LabelField(labelRect, $"GameObject Targets ({gameObjectTargetsProp.arraySize})");
                            labelRect.x += 35; // not sure why this is needed, nested lists are weird
                            EditorGUIExtensions.UtilityMenu(labelRect, dropDownEntry.reorderableList, gameObjectTargetsProp);
                        };
                    }

                    dropDownEntry.reorderableList.DoList(innerRect);

                    #endregion

                    #endregion
                };
                dropdownSetting.reorderableList.elementHeight = EditorGUIUtility.singleLineHeight + 4f;
                dropdownSetting.reorderableList.elementHeightCallback = (innerIndex) =>
                {
                    float height = EditorGUIUtility.singleLineHeight * 1.25f;
                    if (innerIndex < 0 || innerIndex >= dropdownSetting.options.Count) 
                        return height;
        
                    CVRAdvancedSettingsDropDownEntry dropdownEntry = dropdownSetting.options[innerIndex];
                    if (dropdownEntry.isAutogenCollapsed) return height;

                    float lines = 1f; // use animation toggle
                    if (dropdownEntry.useAnimationClip)
                    {
                        lines += 2f; // both animation fields
                        return lines * height;
                    }
                    
                    lines += 3.5f; // reorderable list header & footer + space after
                    lines += dropdownEntry.gameObjectTargets.Count == 0 ? 1f : dropdownEntry.gameObjectTargets.Count * 1.09f;
                    return lines * height;
                };
                dropdownSetting.reorderableList.drawHeaderCallback = (headerRect) =>
                {
                    Rect labelRect = new(headerRect.x, headerRect.y, headerRect.width - 35, EditorGUIUtility.singleLineHeight);
                    EditorGUI.LabelField(labelRect, $"Dropdown Options ({dropdownOptionsProp.arraySize})");
                    labelRect.x += 35; // not sure why this is needed, nested lists are weird
                    EditorGUIExtensions.UtilityMenu(labelRect, dropdownSetting.reorderableList, dropdownOptionsProp);
                };
            }

            dropdownSetting.reorderableList.DoList(rect);
        }
    }
}
#endif
