#if UNITY_EDITOR
using System.Text.RegularExpressions;
using ABI.CCK.Scripts;
using ABI.CCK.Scripts.Editor;
using UnityEditor;
using UnityEditorInternal;
using UnityEngine;
using AnimatorController = UnityEditor.Animations.AnimatorController;

namespace ABI.CCK.Components
{
    public partial class CCK_CVRAvatarEditor
    {
        #region ReorderableListDrawing AAS

        private void OnMouseUpAAS(ReorderableList list)
        {
            if (list.index != _selectedAdvSetting)
            {
                _selectedAdvSetting = list.index;
            }
            else
            {
                if (list.index == -1)
                    return;
                
                list.Deselect(_selectedAdvSetting);
                list.index = _selectedAdvSetting = -1;
                Repaint();
            }
        }
        
        private void OnChangedAAS(ReorderableList list)
        {
            EditorUtility.SetDirty(_avatar);
            serializedObject.ApplyModifiedProperties();
        }
        
        private void OnReorderedAAS(ReorderableList list)
        {
            // this is a bandaid fix for the reorderable list not updating the nested reorderable list
            foreach (CVRAdvancedSettingsEntry aasEntry in _advSettingsList.list)
            {
                CVRAdvancesAvatarSettingBase setting = aasEntry.setting;
                switch (setting)
                {
                    case CVRAdvancesAvatarSettingGameObjectToggle toggle:
                        toggle.reorderableList = null; // needs recreation
                        break;
                    case CVRAdvancedAvatarSettingMaterialColor color:
                        color.reorderableList = null; // needs recreation
                        break;
                    case CVRAdvancesAvatarSettingSlider slider:
                        slider.reorderableList = null; // needs recreation
                        break;
                    case CVRAdvancesAvatarSettingGameObjectDropdown dropdown:
                        dropdown.reorderableList = null; // needs recreation
                        break;
                }
            }
        }
        
        private void OnDrawHeaderAAS(Rect rect)
        {
            Rect labelRect = new(rect.x, rect.y, rect.width - 35, EditorGUIUtility.singleLineHeight);
            GUI.Label(labelRect, $"Inputs ({_advSettingsList.count})");
            EditorGUIExtensions.UtilityMenu(rect, _advSettingsList, m_settingEntriesProp, AppendUtilityMenu);
        }
        
        private float OnHeightElementAAS(int index)
        {
            float height = EditorGUIUtility.singleLineHeight * 1.25f;
            if (index < 0 || index >= _avatar.avatarSettings.settings.Count) 
                return height;
            
            CVRAdvancedSettingsEntry advSettingEntry = _avatar.avatarSettings.settings[index];
            if (advSettingEntry.isCollapsed) 
                return height;
            
            float lines = 5f; // 4 lines for the basic settings + 1 for the autogen foldout
            
            switch (advSettingEntry.setting)
            {
                case CVRAdvancesAvatarSettingGameObjectToggle toggle:
                    if (advSettingEntry.isAutogenCollapsed) break;
                    if (toggle.useAnimationClip)
                    {
                        lines += 3f;
                        break;
                    }
                    lines += 3.5f; // reorderable list header & footer + space after
                    lines += toggle.gameObjectTargets.Count == 0 ? 1f : toggle.gameObjectTargets.Count * 1.09f;
                    break;
                case CVRAdvancedAvatarSettingMaterialColor color:
                    if (advSettingEntry.isAutogenCollapsed) break;
                    lines += 2.5f; // reorderable list header & footer + space after
                    lines += color.materialColorTargets.Count == 0 ? 1f : color.materialColorTargets.Count * 1.09f;
                    break;
                case CVRAdvancesAvatarSettingSlider slider:
                    if (advSettingEntry.isAutogenCollapsed) break;
                    if (slider.useAnimationClip)
                    {
                        lines += 3f;
                        break;
                    }
                    lines += 3.5f; // reorderable list header & footer + space after
                    lines += slider.materialPropertyTargets.Count == 0 ? 2f : slider.materialPropertyTargets.Count * 2.09f;
                    break;
                case CVRAdvancesAvatarSettingJoystick2D or CVRAdvancesAvatarSettingJoystick3D:
                    lines += 3.5f; // no fancy autogen stuff but has min/max
                    break;
                case CVRAdvancesAvatarSettingInputSingle or CVRAdvancesAvatarSettingInputVector2 or CVRAdvancesAvatarSettingInputVector3:
                    lines += 1.5f; // no fancy autogen stuff
                    break;
                case CVRAdvancesAvatarSettingGameObjectDropdown dropdown:
                    lines += 2f; // reorderable list header & footer, but one less due to autogen foldout
                    lines += dropdown.options.Count == 0 ? 1f : dropdown.options.Count * 1.09f;
                    
                    foreach (CVRAdvancedSettingsDropDownEntry dropDownEntry in dropdown.options)
                    {
                        if (dropDownEntry.isAutogenCollapsed) 
                            continue;

                        lines += 1f; // use animation toggle
                        if (dropDownEntry.useAnimationClip)
                        {
                            lines += 1f; // one animation field
                            continue;
                        }
                        lines += 2.5f; // reorderable list header & footer + space after
                        lines += dropDownEntry.gameObjectTargets.Count == 0 ? 1f : dropDownEntry.gameObjectTargets.Count * 1.09f;
                    }
                    break;
            }

            return lines * height;
        }
        
        private void OnDrawElementAAS(Rect rect, int index, bool isActive, bool isFocused)
        {
            if (index >= _advSettingsList.count) return;
            CVRAdvancedSettingsEntry advSettingEntry = (CVRAdvancedSettingsEntry)_advSettingsList.list[index];
            SerializedProperty advSettingEntryProp = m_settingEntriesProp.GetArrayElementAtIndex(index);
            if (advSettingEntryProp == null || index >= m_settingEntriesProp.arraySize) 
                return;
    
            DrawAdvSettingEntry(rect, advSettingEntry, advSettingEntryProp);
        }
        
        #endregion

        #region Drawing Methods

        private void DrawAdvSettingEntry(Rect rect, CVRAdvancedSettingsEntry advSettingEntry, SerializedProperty advSettingEntryProp)
        {
            // boilerplate
            rect = new Rect(rect.x, rect.y + 2, rect.width, EditorGUIUtility.singleLineHeight);
            float spacing = EditorGUIUtility.singleLineHeight * 1.25f;
            float originalLabelWidth = EditorGUIUtility.labelWidth;
            EditorGUIUtility.labelWidth = 120;

            SerializedProperty nameProp = advSettingEntryProp.FindPropertyRelative(nameof(CVRAdvancedSettingsEntry.name));
            SerializedProperty machineNameProp = advSettingEntryProp.FindPropertyRelative(nameof(CVRAdvancedSettingsEntry.machineName));
            SerializedProperty entryType = advSettingEntryProp.FindPropertyRelative(nameof(CVRAdvancedSettingsEntry.type));
            SerializedProperty isCollapsed = advSettingEntryProp.FindPropertyRelative(nameof(CVRAdvancedSettingsEntry.isCollapsed));
            SerializedProperty unlinkNameFromMachine = advSettingEntryProp.FindPropertyRelative(nameof(CVRAdvancedSettingsEntry.unlinkNameFromMachineName));

            Texture2D autoIcon = (unlinkNameFromMachine.boolValue
                ? EditorGUIUtility.Load("d_Linked")
                : EditorGUIUtility.Load("d_Unlinked")) as Texture2D;
            GUIContent autoButtonContent = new(autoIcon, "Unlink/Link Name to Machine");

            EditorGUILayout.BeginHorizontal();
            Rect positionFull = rect;
            var remainingWidth = positionFull.width - EditorGUIUtility.labelWidth - 20f;
            isCollapsed.boolValue = !EditorGUI.Foldout(
                new Rect(positionFull.x + 10, positionFull.y, EditorGUIUtility.labelWidth - 20f, positionFull.height),
                !isCollapsed.boolValue, "Name", true);

            if (GUI.Button(new Rect(positionFull.x + EditorGUIUtility.labelWidth + 2f, positionFull.y, 20f,
                    positionFull.height), autoButtonContent, GUIStyle.none))
                unlinkNameFromMachine.boolValue = !unlinkNameFromMachine.boolValue;

            string oldName = nameProp.stringValue;
            EditorGUI.PropertyField(
                new Rect(positionFull.x + EditorGUIUtility.labelWidth + 24f, positionFull.y, remainingWidth,
                    positionFull.height), nameProp, GUIContent.none);

            if (oldName != nameProp.stringValue &&
                !unlinkNameFromMachine.boolValue) // update machine name if not unlinked
                machineNameProp.stringValue = Regex.Replace(nameProp.stringValue, @"[^a-zA-Z0-9/\-_#]", "");

            EditorGUILayout.EndHorizontal();

            if (isCollapsed.boolValue)
            {
                // TODO: Draw collapsed version
                EditorGUIUtility.labelWidth = originalLabelWidth;
                return;
            }

            rect.y += spacing;

            if (unlinkNameFromMachine.boolValue)
            {
                // search dropdown for machine name
                machineNameProp.stringValue = EditorGUIExtensions.AdvancedDropdownInput(
                    rect,
                    machineNameProp.stringValue,
                    _baseControllerParams,
                    "Parameter",
                    "No Parameters"
                );
            }
            else
            {
                //EditorGUI.LabelField(rect, "Parameter", machineNameProp.stringValue);
                GUI.enabled = false;
                EditorGUI.TextField(rect, "Parameter", machineNameProp.stringValue); // i like the border
                GUI.enabled = true;
            }

            rect.y += spacing;

            // setting type dropdowns
            EditorGUILayout.BeginHorizontal();
            Rect position = rect;
            float halfWidth = (position.width - EditorGUIUtility.labelWidth) / 2 - 2;

            // Setting Type
            var oldType = entryType.enumValueIndex;
            EditorGUI.PropertyField(
                new Rect(position.x, position.y, EditorGUIUtility.labelWidth + halfWidth, position.height), entryType,
                new GUIContent("Setting Type"));
            
            // get the property for the specific setting type
            SerializedProperty advSettingProp = entryType.enumValueIndex switch
            {
                (int)CVRAdvancedSettingsEntry.SettingsType.Color => advSettingEntryProp.FindPropertyRelative(
                    nameof(CVRAdvancedSettingsEntry.materialColorSettings)),
                (int)CVRAdvancedSettingsEntry.SettingsType.Dropdown => advSettingEntryProp.FindPropertyRelative(
                    nameof(CVRAdvancedSettingsEntry.dropDownSettings)),
                (int)CVRAdvancedSettingsEntry.SettingsType.Slider => advSettingEntryProp.FindPropertyRelative(
                    nameof(CVRAdvancedSettingsEntry.sliderSettings)),
                (int)CVRAdvancedSettingsEntry.SettingsType.Joystick2D => advSettingEntryProp.FindPropertyRelative(
                    nameof(CVRAdvancedSettingsEntry.joystick2DSetting)),
                (int)CVRAdvancedSettingsEntry.SettingsType.Joystick3D => advSettingEntryProp.FindPropertyRelative(
                    nameof(CVRAdvancedSettingsEntry.joystick3DSetting)),
                (int)CVRAdvancedSettingsEntry.SettingsType.InputSingle => advSettingEntryProp.FindPropertyRelative(
                    nameof(CVRAdvancedSettingsEntry.inputSingleSettings)),
                (int)CVRAdvancedSettingsEntry.SettingsType.InputVector2 => advSettingEntryProp.FindPropertyRelative(
                    nameof(CVRAdvancedSettingsEntry.inputVector2Settings)),
                (int)CVRAdvancedSettingsEntry.SettingsType.InputVector3 => advSettingEntryProp.FindPropertyRelative(
                    nameof(CVRAdvancedSettingsEntry.inputVector3Settings)),
                _ => advSettingEntryProp.FindPropertyRelative(nameof(CVRAdvancedSettingsEntry.toggleSettings))
            };

            // part of the setting base for whatever reason, so gotta get it after above
            SerializedProperty usedType = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingBase.usedType));

            if (oldType != entryType.enumValueIndex) 
            {
                usedType.intValue = (int)CVRAdvancedAvatarSettings.GetDefaultType((CVRAdvancedSettingsEntry.SettingsType)entryType.enumValueIndex);
                serializedObject.ApplyModifiedProperties(); // apply the change
            }
            
            // used-type dropdown (filtered by setting type)
            usedType.intValue = (int)EnumFilter.FilteredEnumPopup(
                new Rect(position.x + EditorGUIUtility.labelWidth + halfWidth + 4, position.y, halfWidth,
                    position.height),
                (CVRAdvancesAvatarSettingBase.ParameterType)usedType.intValue,
                CVRAdvancedAvatarSettings.GetSupportedTypes(
                    (CVRAdvancedSettingsEntry.SettingsType)entryType.enumValueIndex)
            );
            EditorGUILayout.EndHorizontal();

            // draw default value by type
            rect.y += spacing;
            switch ((CVRAdvancedSettingsEntry.SettingsType)entryType.enumValueIndex)
            {
                default:
                case CVRAdvancedSettingsEntry.SettingsType.Toggle:
                    DrawToggleInternal(rect, spacing, advSettingEntry, advSettingProp);
                    break;
                case CVRAdvancedSettingsEntry.SettingsType.Dropdown:
                    DrawDropdownInternal(rect, spacing, advSettingEntry, advSettingProp);
                    break;
                case CVRAdvancedSettingsEntry.SettingsType.Color:
                    DrawColorInternal(rect, spacing, advSettingEntry, advSettingProp);
                    break;
                case CVRAdvancedSettingsEntry.SettingsType.Slider:
                    DrawSliderInternal(rect, spacing, advSettingEntry, advSettingProp);
                    break;
                case CVRAdvancedSettingsEntry.SettingsType.Joystick2D:
                    DrawJoystick2DInternal(rect, spacing, advSettingEntry, advSettingProp);
                    break;
                case CVRAdvancedSettingsEntry.SettingsType.Joystick3D:
                    DrawJoystick3DInternal(rect, spacing, advSettingEntry, advSettingProp);
                    break;
                case CVRAdvancedSettingsEntry.SettingsType.InputSingle:
                    DrawInputSingleInternal(rect, spacing, advSettingEntry, advSettingProp);
                    break;
                case CVRAdvancedSettingsEntry.SettingsType.InputVector2:
                    DrawInputVector2Internal(rect, spacing, advSettingEntry, advSettingProp);
                    break;
                case CVRAdvancedSettingsEntry.SettingsType.InputVector3:
                    DrawInputVector3Internal(rect, spacing, advSettingEntry, advSettingProp);
                    break;
            }

            EditorGUIUtility.labelWidth = originalLabelWidth;
        }

        #endregion
    }
}
#endif

