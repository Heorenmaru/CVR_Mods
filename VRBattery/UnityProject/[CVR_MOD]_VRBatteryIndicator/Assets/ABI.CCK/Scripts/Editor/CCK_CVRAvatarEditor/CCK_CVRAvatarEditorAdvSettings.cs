#if UNITY_EDITOR
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text.RegularExpressions;
using ABI.CCK.Scripts;
using ABI.CCK.Scripts.Editor;
using UnityEditor;
using UnityEditorInternal;
using UnityEngine;
using AnimatorController = UnityEditor.Animations.AnimatorController;
using AnimatorControllerParameter = UnityEngine.AnimatorControllerParameter;
using AnimatorControllerParameterType = UnityEngine.AnimatorControllerParameterType;
using static ABI.CCK.Scripts.Editor.SharedComponentGUI;

namespace ABI.CCK.Components
{
    public partial class CCK_CVRAvatarEditor
    {
        private static readonly string[] BoolAsStringDisplayOptions = {"False", "True"};
        
        private ReorderableList _advSettingsList;
        private int _selectedAdvSetting = -1;

        private (int, int) _syncedBitsTuple; // (Current-Overrides, New-AutoGen)
        
        private int _syncedValues;
        private int _syncedBooleans;
        private List<string> _baseControllerParams = new();
        
        private void InitializeSettingsListIfNeeded()
        {
            if (_advSettingsList != null)
                return;
            
            if (_avatar.avatarSettings is not { initialized: true })
                CreateAvatarSettings(_avatar);
            
            if (_avatar.avatarSettings == null) 
                return;
            
            UpdateSyncUsageAndBaseParameters();

            _advSettingsList = new ReorderableList(serializedObject, m_settingEntriesProp,
                true, true, true, true)
            {
                drawHeaderCallback = OnDrawHeaderAAS,
                onMouseUpCallback = OnMouseUpAAS,
                drawElementCallback = OnDrawElementAAS,
                elementHeightCallback = OnHeightElementAAS,
                onChangedCallback = OnChangedAAS,
                onReorderCallback = OnReorderedAAS,
                list = _avatar.avatarSettings.settings,
                index = -1
            };
        }

        private void Draw_AdvancedSettings()
        {
            using (new ToggleFoldoutScope(ref _guiAdvancedSettingsFoldout, ref _avatar.avatarUsesAdvancedSettings, "Advanced Settings"))
            {
                if (!_guiAdvancedSettingsFoldout) return;

                InitializeSettingsListIfNeeded();
                using (new EditorGUI.DisabledGroupScope(!_avatar.avatarUsesAdvancedSettings))
                    DrawAvatarAdvancedSettings();
            }
        }
        
        // TODO: Cleanup all of this...
        // Decouple AutoGen from GUI
        // Add simplified menu entry mode (no AutoGen)

        private void DrawAvatarAdvancedSettings()
        {
            if (_avatar.avatarSettings == null) 
                return;
          
            DrawAutogenControllerFields();
            
            // display current usage compared to new usage prior to creating the controller
            EditorGUIExtensions.MultiProgressBar(
                EditorGUILayout.GetControlRect(false, EditorGUIUtility.singleLineHeight),
                _syncedBitsTuple.Item1 / CVRCommon.AVATAR_BIT_LIMIT,
                (_syncedBitsTuple.Item2) / CVRCommon.AVATAR_BIT_LIMIT,
                $"({_syncedBitsTuple.Item1}, {_syncedBitsTuple.Item2}) of 3200 Synced Bits used"
            );
            
            _advSettingsList.DoLayoutList();

            DrawCreateControllerButton();
        }

        #region Private Methods
        
        private void UpdateSyncUsageAndBaseParameters()
        {
            // get the current usage of synced bits / preview usage of autogen
            _syncedBitsTuple = _avatar.GetParameterSyncUsage();
            
            // populate the base controller parameters for existing-generation warning
            _baseControllerParams = CVRCommon.GetParametersFromControllerAsString(
                _avatar.avatarSettings.baseController, CVRCommon.NonCoreFilter, CVRCommon.NonNullFilter);
        }

        private void CreateAASController()
        {
            // ensure everything is up to date
            serializedObject.ApplyModifiedProperties();
            
            if (_avatar.avatarSettings.baseController == null)
            {
                EditorUtility.DisplayDialog("Animator Error",
                    "The Base Animator was not selected. No new Animator Controller was created.", "OK");
                return;
            }

            if (_avatar.avatarSettings.animator != null)
            {
                if (!EditorUtility.DisplayDialog("Animator already created",
                        "There is Animator already created for this avatar.", "Override", "Cancel"))
                {
                    return;
                }
            }

            string pathToCurrentFolder = "Assets/AdvancedSettings.Generated";
            if (!AssetDatabase.IsValidFolder(pathToCurrentFolder))
                AssetDatabase.CreateFolder("Assets", "AdvancedSettings.Generated");

            string folderPath = pathToCurrentFolder + "/" + _avatar.name + "_AAS";
            if (!AssetDatabase.IsValidFolder(folderPath))
                AssetDatabase.CreateFolder(pathToCurrentFolder, _avatar.name + "_AAS");
            string animatorPath = pathToCurrentFolder + "/" + _avatar.name + "_AAS/" + _avatar.name + "_aas.controller";
            AssetDatabase.CopyAsset(AssetDatabase.GetAssetPath(_avatar.avatarSettings.baseController.GetInstanceID()),
                animatorPath);

            _avatar.avatarSettings.animator = AssetDatabase.LoadAssetAtPath<AnimatorController>(animatorPath);

            _baseControllerParams.Clear();

            if (_avatar.avatarSettings.baseController != null)
            {
                AnimatorController animator = (AnimatorController)_avatar.avatarSettings.baseController;

                foreach (AnimatorControllerParameter parameter in animator.parameters)
                {
                    if (parameter.type == AnimatorControllerParameterType.Float && parameter.name.Length > 0 &&
                        !CVRCommon.CoreParameters.Contains(parameter.name) && parameter.name.Substring(0, 1) != "#")
                    {
                        _baseControllerParams.Add(parameter.name);
                    }

                    if (parameter.type == AnimatorControllerParameterType.Int && parameter.name.Length > 0 &&
                        !CVRCommon.CoreParameters.Contains(parameter.name) && parameter.name.Substring(0, 1) != "#")
                    {
                        _baseControllerParams.Add(parameter.name);
                    }

                    if (parameter.type == AnimatorControllerParameterType.Bool && parameter.name.Length > 0 &&
                        !CVRCommon.CoreParameters.Contains(parameter.name) && parameter.name.Substring(0, 1) != "#")
                    {
                        _baseControllerParams.Add(parameter.name);
                    }
                }
            }

            foreach (CVRAdvancedSettingsEntry entry in _avatar.avatarSettings.settings)
            {
                switch (entry.type)
                {
                    default:
                        if (_baseControllerParams.Contains(entry.machineName)) continue;
                        break;
                    case CVRAdvancedSettingsEntry.SettingsType.Color:
                        if (_baseControllerParams.Contains(entry.machineName + "-r") ||
                            _baseControllerParams.Contains(entry.machineName + "-g") ||
                            _baseControllerParams.Contains(entry.machineName + "-b")) continue;
                        break;
                    case CVRAdvancedSettingsEntry.SettingsType.Joystick2D:
                    case CVRAdvancedSettingsEntry.SettingsType.InputVector2:
                        if (_baseControllerParams.Contains(entry.machineName + "-x") ||
                            _baseControllerParams.Contains(entry.machineName + "-y")) continue;
                        break;
                    case CVRAdvancedSettingsEntry.SettingsType.Joystick3D:
                    case CVRAdvancedSettingsEntry.SettingsType.InputVector3:
                        if (_baseControllerParams.Contains(entry.machineName + "-x") ||
                            _baseControllerParams.Contains(entry.machineName + "-y") ||
                            _baseControllerParams.Contains(entry.machineName + "-z")) continue;
                        break;
                }

                string fileName = Regex.Replace(entry.machineName, "[^a-zA-Z0-9_]+", "", RegexOptions.Compiled);
                entry.setting.SetupAnimator(ref _avatar.avatarSettings.animator, entry.machineName, folderPath, fileName);
            }

            if (_avatar.avatarSettings.baseOverrideController != null)
            {
                string overridePath = pathToCurrentFolder + "/" + _avatar.name + "_AAS/" + _avatar.name +
                                      "_aas_overrides.overrideController";
                AssetDatabase.CopyAsset(
                    AssetDatabase.GetAssetPath(_avatar.avatarSettings.baseOverrideController.GetInstanceID()),
                    overridePath);
                _avatar.avatarSettings.overrides = AssetDatabase.LoadAssetAtPath<AnimatorOverrideController>(overridePath);
                _avatar.avatarSettings.overrides.runtimeAnimatorController = _avatar.avatarSettings.animator;
            }
            else
            {
                _avatar.avatarSettings.overrides = new AnimatorOverrideController(_avatar.avatarSettings.animator);
                AssetDatabase.CreateAsset(_avatar.avatarSettings.overrides,
                    pathToCurrentFolder + "/" + _avatar.name + "_AAS/" + _avatar.name +
                    "_aas_overrides.overrideController");
            }

            AssetDatabase.SaveAssets();
        }

        private static void CreateAvatarSettings(CVRAvatar avatar)
        {
            string[] guids = AssetDatabase.FindAssets("AvatarAnimator t:animatorController", null);

            if (guids.Length < 1)
            {
                Debug.LogError(
                    "No Animator controller with the name \"AvatarAnimator\" was found. Please make sure that you CCK is installed properly.");
                return;
            }

            Type projectWindowUtilType = typeof(ProjectWindowUtil);
            MethodInfo getActiveFolderPath =
                projectWindowUtilType.GetMethod("GetActiveFolderPath", BindingFlags.Static | BindingFlags.NonPublic);
            if (getActiveFolderPath != null) getActiveFolderPath.Invoke(null, Array.Empty<object>());

            avatar.avatarSettings = new CVRAdvancedAvatarSettings
            {
                baseController = AssetDatabase.LoadAssetAtPath<AnimatorController>(AssetDatabase.GUIDToAssetPath(guids[0])),
                settings = new List<CVRAdvancedSettingsEntry>(),
                initialized = true
            };
        }

        #endregion

        #region Utility

        private void AppendUtilityMenu(GenericMenuBuilder genericMenuBuilder, ReorderableList list)
        {
            bool hasSettings = _avatar != null &&
                               _avatar.avatarSettings is { settings: not null };

            genericMenuBuilder.AddMenuItem("Collapse All", hasSettings,
                () => CollapseAllEntries(_avatar.avatarSettings.settings));
        }

        private static void CollapseAllEntries(List<CVRAdvancedSettingsEntry> settingsEntries)
        {
            foreach (CVRAdvancedSettingsEntry advSettingEntry in settingsEntries)
                advSettingEntry.isCollapsed = advSettingEntry.isAutogenCollapsed = true;
        }

        #endregion
    }
}
#endif