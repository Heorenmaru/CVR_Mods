using System;
using System.Collections.Generic;
using UnityEngine;

#if UNITY_EDITOR
using UnityEditor;
using UnityEditor.Animations;
using UnityEditorInternal;
using AnimatorController = UnityEditor.Animations.AnimatorController;
using AnimatorControllerParameter = UnityEngine.AnimatorControllerParameter;
using AnimatorControllerParameterType = UnityEngine.AnimatorControllerParameterType;
using BlendTree = UnityEditor.Animations.BlendTree;
using AnimatorControllerLayer = UnityEditor.Animations.AnimatorControllerLayer;
#endif

namespace ABI.CCK.Scripts
{
    [Serializable]
    public class CVRAdvancedAvatarSettings
    {
        public List<CVRAdvancedSettingsEntry> settings = new();

#if UNITY_EDITOR
        public bool initialized;

        // only used by autogen
        public RuntimeAnimatorController baseController;
        public RuntimeAnimatorController baseOverrideController;

        // only used *during* autogen
        public AnimatorController animator;
        public AnimatorOverrideController overrides;
#endif

        #region Helper Methods

        private static readonly List<CVRAdvancesAvatarSettingBase.ParameterType> _allTypes = new()
        {
            CVRAdvancesAvatarSettingBase.ParameterType.Float,
            CVRAdvancesAvatarSettingBase.ParameterType.Int,
            CVRAdvancesAvatarSettingBase.ParameterType.Bool
        };

        private static readonly List<CVRAdvancesAvatarSettingBase.ParameterType> _multiValueTypes = new()
        {
            CVRAdvancesAvatarSettingBase.ParameterType.Float,
            CVRAdvancesAvatarSettingBase.ParameterType.Int
        };

        private static readonly List<CVRAdvancesAvatarSettingBase.ParameterType> _onlyFloatType = new()
        {
            CVRAdvancesAvatarSettingBase.ParameterType.Float
        };

        public static List<CVRAdvancesAvatarSettingBase.ParameterType> GetSupportedTypes(
            CVRAdvancedSettingsEntry.SettingsType settingType)
        {
            // to prevent alloc each draw, returns static list
            return settingType switch
            {
                // Toggles can use all
                CVRAdvancedSettingsEntry.SettingsType.Toggle => _allTypes,
                // Dropdowns can only use float, int
                CVRAdvancedSettingsEntry.SettingsType.Dropdown => _multiValueTypes,
                _ => _onlyFloatType // Everything else is Float
            };
        }

        public static CVRAdvancesAvatarSettingBase.ParameterType GetDefaultType(
            CVRAdvancedSettingsEntry.SettingsType settingType)
        {
            return settingType switch
            {
                // Toggles default to Bool
                CVRAdvancedSettingsEntry.SettingsType.Toggle => CVRAdvancesAvatarSettingBase.ParameterType.Bool,
                // Dropdowns default to Int
                CVRAdvancedSettingsEntry.SettingsType.Dropdown => CVRAdvancesAvatarSettingBase.ParameterType.Int,
                _ => CVRAdvancesAvatarSettingBase.ParameterType.Float // Everything else is Float
            };
        }

        #endregion
    }

    #region Filtering Attribute Classes

    [AttributeUsage(AttributeTargets.Field | AttributeTargets.Property)]
    public class UseBool : Attribute
    {
    }

    [AttributeUsage(AttributeTargets.Field | AttributeTargets.Property)]
    public class UseInt : Attribute
    {
    }

    [AttributeUsage(AttributeTargets.Field | AttributeTargets.Property)]
    public class UseFloat : Attribute
    {
    }

    #endregion

    [Serializable]
    public class CVRAdvancedSettingsEntry
    {
#if UNITY_EDITOR
        public bool isCollapsed;
        public bool unlinkNameFromMachineName;
        public bool isAutogenCollapsed = true;
#endif

        public enum SettingsType
        {
            Toggle,
            Dropdown,
            Color,
            Slider,
            Joystick2D,
            Joystick3D,
            InputSingle,
            InputVector2,
            InputVector3
        }

        public SettingsType type = SettingsType.Toggle;

        public CVRAdvancesAvatarSettingBase setting
        {
            get
            {
                switch (type)
                {
                    case SettingsType.Color:
                        return materialColorSettings;
                    case SettingsType.Dropdown:
                        return dropDownSettings;
                    case SettingsType.Slider:
                        return sliderSettings;
                    case SettingsType.Joystick2D:
                        return joystick2DSetting;
                    case SettingsType.Joystick3D:
                        return joystick3DSetting;
                    case SettingsType.InputSingle:
                        return inputSingleSettings;
                    case SettingsType.InputVector2:
                        return inputVector2Settings;
                    case SettingsType.InputVector3:
                        return inputVector3Settings;
                    default:
                        return toggleSettings;
                }
            }
            set
            {
                switch (type)
                {
                    case SettingsType.Color:
                        materialColorSettings = (CVRAdvancedAvatarSettingMaterialColor)value;
                        break;
                    case SettingsType.Dropdown:
                        dropDownSettings = (CVRAdvancesAvatarSettingGameObjectDropdown)value;
                        break;
                    case SettingsType.Slider:
                        sliderSettings = (CVRAdvancesAvatarSettingSlider)value;
                        break;
                    case SettingsType.Joystick2D:
                        joystick2DSetting = (CVRAdvancesAvatarSettingJoystick2D)value;
                        break;
                    case SettingsType.Joystick3D:
                        joystick3DSetting = (CVRAdvancesAvatarSettingJoystick3D)value;
                        break;
                    case SettingsType.InputSingle:
                        inputSingleSettings = (CVRAdvancesAvatarSettingInputSingle)value;
                        break;
                    case SettingsType.InputVector2:
                        inputVector2Settings = (CVRAdvancesAvatarSettingInputVector2)value;
                        break;
                    case SettingsType.InputVector3:
                        inputVector3Settings = (CVRAdvancesAvatarSettingInputVector3)value;
                        break;
                    default:
                        toggleSettings = (CVRAdvancesAvatarSettingGameObjectToggle)value;
                        break;
                }
            }
        }

        [SerializeField] public CVRAdvancesAvatarSettingGameObjectToggle toggleSettings;
        [SerializeField] public CVRAdvancedAvatarSettingMaterialColor materialColorSettings;
        [SerializeField] public CVRAdvancesAvatarSettingGameObjectDropdown dropDownSettings;
        [SerializeField] public CVRAdvancesAvatarSettingSlider sliderSettings;
        [SerializeField] public CVRAdvancesAvatarSettingJoystick2D joystick2DSetting;
        [SerializeField] public CVRAdvancesAvatarSettingJoystick3D joystick3DSetting;
        [SerializeField] public CVRAdvancesAvatarSettingInputSingle inputSingleSettings;
        [SerializeField] public CVRAdvancesAvatarSettingInputVector2 inputVector2Settings;
        [SerializeField] public CVRAdvancesAvatarSettingInputVector3 inputVector3Settings;

        public string name;
        public string machineName;
    }

    [Serializable]
    public class CVRAdvancesAvatarSettingBase
    {
        public enum ParameterType
        {
            Float = 1,
            Int = 2,
            Bool = 3
        }

        public ParameterType usedType = ParameterType.Bool; // default SettingsType is Toggle

#if UNITY_EDITOR
        public int currentEntryIndex;

        public virtual void SetupAnimator(ref AnimatorController controller, string machineName, string folderPath,
            string fileName)
        {
        }
#endif
    }

    [Serializable]
    public class CVRAdvancesAvatarSettingGameObjectToggle : CVRAdvancesAvatarSettingBase
    {
        public bool defaultValue;

#if UNITY_EDITOR

        #region Autogen Fields & Setup

        public ReorderableList reorderableList; // created & used by AdvSettings Editor

        public bool useAnimationClip;
        public AnimationClip animationClip;
        public AnimationClip offAnimationClip;
        public List<CVRAdvancedSettingsTargetEntryGameObject> gameObjectTargets = new();

        public override void SetupAnimator(ref AnimatorController controller, string machineName, string folderPath,
            string fileName)
        {
            AnimatorControllerLayer animatorLayer = new()
            {
                name = machineName,
                defaultWeight = 1f,
                stateMachine = new AnimatorStateMachine()
            };

            animatorLayer.stateMachine.name = machineName;
            AssetDatabase.AddObjectToAsset(animatorLayer.stateMachine, AssetDatabase.GetAssetPath(controller));
            animatorLayer.stateMachine.hideFlags = HideFlags.HideInHierarchy;

            controller.AddLayer(animatorLayer);

            AnimatorControllerParameter animatorParameter = new()
            {
                name = machineName,
                type = AnimatorControllerParameterType.Bool,
                defaultBool = defaultValue
            };

            if (usedType == ParameterType.Float)
                animatorParameter = new AnimatorControllerParameter
                {
                    name = machineName,
                    type = AnimatorControllerParameterType.Float,
                    defaultFloat = defaultValue ? 1f : 0f
                };

            if (usedType == ParameterType.Int)
                animatorParameter = new AnimatorControllerParameter
                {
                    name = machineName,
                    type = AnimatorControllerParameterType.Int,
                    defaultInt = defaultValue ? 1 : 0
                };

            controller.AddParameter(animatorParameter);

            AnimationClip onClip = new();
            AnimationClip offClip = new();

            AnimationCurve animationCurveOn = new();
            Keyframe keyframe = new(0f, 1);
            keyframe.outTangent = Mathf.Infinity;
            animationCurveOn.AddKey(keyframe);
            keyframe = new Keyframe(1f / 60f, 1);
            keyframe.outTangent = Mathf.Infinity;
            animationCurveOn.AddKey(keyframe);

            AnimationCurve animationCurveOff = new();
            keyframe = new Keyframe(0f, 0);
            keyframe.outTangent = Mathf.Infinity;
            animationCurveOff.AddKey(keyframe);
            keyframe = new Keyframe(1f / 60f, 0);
            keyframe.outTangent = Mathf.Infinity;
            animationCurveOff.AddKey(keyframe);

            foreach (CVRAdvancedSettingsTargetEntryGameObject target in gameObjectTargets)
            {
                if (target.gameObject == null || target.treePath == null) continue;

                onClip.SetCurve(target.treePath, typeof(GameObject), "m_IsActive",
                    target.onState ? animationCurveOn : animationCurveOff);

                offClip.SetCurve(target.treePath, typeof(GameObject), "m_IsActive",
                    !target.onState ? animationCurveOn : animationCurveOff);
            }

            if (useAnimationClip)
            {
                onClip = animationClip;
                if (offAnimationClip != null)
                    offClip = offAnimationClip;
                else
                    AssetDatabase.CreateAsset(offClip, folderPath + "/Anim_" + fileName + "_Toggle_Off.anim");
            }
            else
            {
                AssetDatabase.CreateAsset(offClip, folderPath + "/Anim_" + fileName + "_Toggle_Off.anim");
                AssetDatabase.CreateAsset(onClip, folderPath + "/Anim_" + fileName + "_Toggle_On.anim");
            }

            if (usedType == ParameterType.Bool)
            {
                AnimatorState offState = animatorLayer.stateMachine.AddState(machineName + " OFF");
                AnimatorState onState = animatorLayer.stateMachine.AddState(machineName + " ON");

                offState.motion = offClip;
                onState.motion = onClip;

                animatorLayer.stateMachine.AddAnyStateTransition(onState);
                animatorLayer.stateMachine.anyStateTransitions[0].destinationState = onState;
                animatorLayer.stateMachine.anyStateTransitions[0].duration = 0f;
                animatorLayer.stateMachine.anyStateTransitions[0].hasExitTime = false;
                animatorLayer.stateMachine.anyStateTransitions[0].canTransitionToSelf = false;
                animatorLayer.stateMachine.anyStateTransitions[0]
                    .AddCondition(AnimatorConditionMode.If, 0f, machineName);
                animatorLayer.stateMachine.AddAnyStateTransition(offState);
                animatorLayer.stateMachine.anyStateTransitions[1].destinationState = offState;
                animatorLayer.stateMachine.anyStateTransitions[1].duration = 0f;
                animatorLayer.stateMachine.anyStateTransitions[1].hasExitTime = false;
                animatorLayer.stateMachine.anyStateTransitions[1].canTransitionToSelf = false;
                animatorLayer.stateMachine.anyStateTransitions[1]
                    .AddCondition(AnimatorConditionMode.IfNot, 0f, machineName);
            }

            if (usedType == ParameterType.Int)
            {
                AnimatorState offState = animatorLayer.stateMachine.AddState(machineName + " OFF");
                AnimatorState onState = animatorLayer.stateMachine.AddState(machineName + " ON");

                offState.motion = offClip;
                onState.motion = onClip;

                animatorLayer.stateMachine.AddAnyStateTransition(onState);
                animatorLayer.stateMachine.anyStateTransitions[0].destinationState = onState;
                animatorLayer.stateMachine.anyStateTransitions[0].duration = 0f;
                animatorLayer.stateMachine.anyStateTransitions[0].hasExitTime = false;
                animatorLayer.stateMachine.anyStateTransitions[0].canTransitionToSelf = false;
                animatorLayer.stateMachine.anyStateTransitions[0]
                    .AddCondition(AnimatorConditionMode.Equals, 1f, machineName);
                animatorLayer.stateMachine.AddAnyStateTransition(offState);
                animatorLayer.stateMachine.anyStateTransitions[1].destinationState = offState;
                animatorLayer.stateMachine.anyStateTransitions[1].duration = 0f;
                animatorLayer.stateMachine.anyStateTransitions[1].hasExitTime = false;
                animatorLayer.stateMachine.anyStateTransitions[1].canTransitionToSelf = false;
                animatorLayer.stateMachine.anyStateTransitions[1]
                    .AddCondition(AnimatorConditionMode.Equals, 0f, machineName);
            }

            if (usedType == ParameterType.Float)
            {
                AnimatorState animatorState = animatorLayer.stateMachine.AddState(machineName + " Blend Tree");

                BlendTree blendTree = new();
                blendTree.name = machineName + " Blend Tree";
                blendTree.blendParameter = machineName;

                blendTree.AddChild(offClip, 0f);
                blendTree.AddChild(onClip, 1f);

                animatorState.motion = blendTree;

                AssetDatabase.AddObjectToAsset(blendTree, AssetDatabase.GetAssetPath(controller));
                blendTree.hideFlags = HideFlags.HideInHierarchy;
            }
        }

        #endregion

#endif
    }

    [Serializable]
    public class CVRAdvancesAvatarSettingGameObjectDropdown : CVRAdvancesAvatarSettingBase
    {
        public int defaultValue;
        public List<CVRAdvancedSettingsDropDownEntry> options = new();

        public string[] optionNames
        {
            get
            {
                var list = new string[options.Count];
                for (var i = 0; i < options.Count; i++)
                    list[i] = options[i].name;

                return list;
            }
        }

#if UNITY_EDITOR
        public ReorderableList reorderableList;

        public override void SetupAnimator(ref AnimatorController controller, string machineName, string folderPath,
            string fileName)
        {
            AnimatorControllerLayer animatorLayer = new()
            {
                name = machineName,
                defaultWeight = 1f,
                stateMachine = new AnimatorStateMachine()
            };

            animatorLayer.stateMachine.name = machineName;
            AssetDatabase.AddObjectToAsset(animatorLayer.stateMachine, AssetDatabase.GetAssetPath(controller));
            animatorLayer.stateMachine.hideFlags = HideFlags.HideInHierarchy;

            controller.AddLayer(animatorLayer);

            AnimatorControllerParameter animatorParameter = new()
            {
                name = machineName,
                type = AnimatorControllerParameterType.Float,
                defaultFloat = defaultValue
            };

            if (usedType == ParameterType.Int)
                animatorParameter = new AnimatorControllerParameter
                {
                    name = machineName,
                    type = AnimatorControllerParameterType.Int,
                    defaultInt = defaultValue
                };

            controller.AddParameter(animatorParameter);

            AnimationCurve animationCurveOn = new();
            Keyframe keyframe = new(0f, 1);
            keyframe.outTangent = Mathf.Infinity;
            animationCurveOn.AddKey(keyframe);
            keyframe = new Keyframe(1f / 60f, 1);
            keyframe.outTangent = Mathf.Infinity;
            animationCurveOn.AddKey(keyframe);

            AnimationCurve animationCurveOff = new();
            keyframe = new Keyframe(0f, 0);
            keyframe.outTangent = Mathf.Infinity;
            animationCurveOff.AddKey(keyframe);
            keyframe = new Keyframe(1f / 60f, 0);
            keyframe.outTangent = Mathf.Infinity;
            animationCurveOff.AddKey(keyframe);

            var i = 0;
            AnimationClip animation;
            var animations = new List<AnimationClip>();
            foreach (CVRAdvancedSettingsDropDownEntry option in options)
            {
                animation = new AnimationClip();
                var j = 0;
                if (option.useAnimationClip && option.animationClip != null)
                {
                    animation = option.animationClip;
                }
                else
                {
                    var activeGameobjects = new List<CVRAdvancedSettingsTargetEntryGameObject>();
                    var inActiveGameobjects = new List<CVRAdvancedSettingsTargetEntryGameObject>();

                    foreach (CVRAdvancedSettingsDropDownEntry activeOption in options)
                    {
                        foreach (CVRAdvancedSettingsTargetEntryGameObject gameObjectTarget in activeOption
                                     .gameObjectTargets)
                        {
                            if (gameObjectTarget == null || gameObjectTarget.gameObject == null ||
                                gameObjectTarget.treePath == null) continue;

                            if (i == j && gameObjectTarget.onState)
                                activeGameobjects.Add(gameObjectTarget);
                            else
                                inActiveGameobjects.Add(gameObjectTarget);
                        }

                        j++;
                    }

                    foreach (CVRAdvancedSettingsTargetEntryGameObject gameObjectTarget in activeGameobjects)
                        animation.SetCurve(
                            gameObjectTarget.treePath,
                            typeof(GameObject),
                            "m_IsActive",
                            animationCurveOn
                        );

                    foreach (CVRAdvancedSettingsTargetEntryGameObject gameObjectTarget in inActiveGameobjects)
                    {
                        if (activeGameobjects.Find(match => match.treePath == gameObjectTarget.treePath) != null)
                            continue;

                        animation.SetCurve(
                            gameObjectTarget.treePath,
                            typeof(GameObject),
                            "m_IsActive",
                            animationCurveOff
                        );
                    }

                    AssetDatabase.CreateAsset(animation, folderPath + "/Anim_" + fileName + "_Dropdown_" + i + ".anim");
                }

                animations.Add(animation);
                i++;
            }

            if (usedType == ParameterType.Float)
            {
                AnimatorState animatorState = animatorLayer.stateMachine.AddState(machineName + " Blend Tree");

                BlendTree blendTree = new();
                blendTree.name = machineName + " Blend Tree";
                blendTree.blendParameter = machineName;
                blendTree.useAutomaticThresholds = false;

                i = 0;
                foreach (AnimationClip animationClip in animations)
                {
                    blendTree.AddChild(animationClip, i);
                    i++;
                }

                animatorState.motion = blendTree;

                AssetDatabase.AddObjectToAsset(blendTree, AssetDatabase.GetAssetPath(controller));
                blendTree.hideFlags = HideFlags.HideInHierarchy;
            }

            if (usedType == ParameterType.Int)
            {
                i = 0;
                foreach (AnimationClip animationClip in animations)
                {
                    AnimatorState state = animatorLayer.stateMachine.AddState(machineName + " Option " + i);

                    state.motion = animationClip;

                    animatorLayer.stateMachine.AddAnyStateTransition(state);
                    animatorLayer.stateMachine.anyStateTransitions[i].destinationState = state;
                    animatorLayer.stateMachine.anyStateTransitions[i].duration = 0f;
                    animatorLayer.stateMachine.anyStateTransitions[i].hasExitTime = false;
                    animatorLayer.stateMachine.anyStateTransitions[i].canTransitionToSelf = false;
                    animatorLayer.stateMachine.anyStateTransitions[i]
                        .AddCondition(AnimatorConditionMode.Equals, i, machineName);

                    i++;
                }
            }
        }
#endif
    }

    [Serializable]
    public class CVRAdvancedAvatarSettingMaterialColor : CVRAdvancesAvatarSettingBase
    {
        public Color defaultValue = Color.white;

#if UNITY_EDITOR
        public ReorderableList reorderableList;

        public List<CVRAdvancedSettingsTargetEntryMaterialColor> materialColorTargets = new();

        public override void SetupAnimator(ref AnimatorController controller, string machineName, string folderPath,
            string fileName)
        {
            AnimatorControllerLayer animatorLayer = new()
            {
                name = machineName,
                defaultWeight = 1f,
                stateMachine = new AnimatorStateMachine()
            };

            animatorLayer.stateMachine.name = machineName;
            AssetDatabase.AddObjectToAsset(animatorLayer.stateMachine, AssetDatabase.GetAssetPath(controller));
            animatorLayer.stateMachine.hideFlags = HideFlags.HideInHierarchy;

            controller.AddLayer(animatorLayer);

            AnimatorControllerParameter animatorParameterR = new()
            {
                name = machineName + "-r",
                type = AnimatorControllerParameterType.Float,
                defaultFloat = defaultValue.r
            };

            controller.AddParameter(animatorParameterR);

            AnimatorControllerParameter animatorParameterG = new()
            {
                name = machineName + "-g",
                type = AnimatorControllerParameterType.Float,
                defaultFloat = defaultValue.g
            };

            controller.AddParameter(animatorParameterG);

            AnimatorControllerParameter animatorParameterB = new()
            {
                name = machineName + "-b",
                type = AnimatorControllerParameterType.Float,
                defaultFloat = defaultValue.b
            };

            controller.AddParameter(animatorParameterB);

            AnimatorState animatorState = animatorLayer.stateMachine.AddState(machineName + " Blend Tree");

            BlendTree blendTreeRed = new();
            blendTreeRed.name = machineName + " Blend Tree Red";
            blendTreeRed.blendParameter = machineName + "-r";

            BlendTree blendTreeRedMin = new();
            blendTreeRedMin.name = machineName + " Blend Tree Red Min";
            blendTreeRedMin.blendParameter = machineName + "-g";
            blendTreeRedMin.useAutomaticThresholds = false;

            BlendTree blendTreeRedMax = new();
            blendTreeRedMax.name = machineName + " Blend Tree Red Max";
            blendTreeRedMax.blendParameter = machineName + "-g";
            blendTreeRedMax.useAutomaticThresholds = false;

            blendTreeRed.AddChild(blendTreeRedMin, 0f);
            blendTreeRed.AddChild(blendTreeRedMax, 1f);

            BlendTree blendTreeRedMinGreenMin = new();
            blendTreeRedMinGreenMin.name = machineName + " Blend Tree Red Min Green Min";
            blendTreeRedMinGreenMin.blendParameter = machineName + "-b";
            blendTreeRedMinGreenMin.useAutomaticThresholds = false;

            BlendTree blendTreeRedMinGreenMax = new();
            blendTreeRedMinGreenMax.name = machineName + " Blend Tree Red Min Green Max";
            blendTreeRedMinGreenMax.blendParameter = machineName + "-b";
            blendTreeRedMinGreenMax.useAutomaticThresholds = false;

            blendTreeRedMin.AddChild(blendTreeRedMinGreenMin, 0f);
            blendTreeRedMin.AddChild(blendTreeRedMinGreenMax, 1f);

            BlendTree blendTreeRedMaxGreenMin = new();
            blendTreeRedMaxGreenMin.name = machineName + " Blend Tree Red MaRed Green Min";
            blendTreeRedMaxGreenMin.blendParameter = machineName + "-b";
            blendTreeRedMaxGreenMin.useAutomaticThresholds = false;

            BlendTree blendTreeRedMaxGreenMax = new();
            blendTreeRedMaxGreenMax.name = machineName + " Blend Tree Red MaRed Green Max";
            blendTreeRedMaxGreenMax.blendParameter = machineName + "-b";
            blendTreeRedMaxGreenMax.useAutomaticThresholds = false;

            blendTreeRedMax.AddChild(blendTreeRedMaxGreenMin, 0f);
            blendTreeRedMax.AddChild(blendTreeRedMaxGreenMax, 1f);

            AnimationClip clipR0G0B0 = new();
            AnimationClip clipR0G0B1 = new();
            AnimationClip clipR0G1B0 = new();
            AnimationClip clipR0G1B1 = new();
            AnimationClip clipR1G0B0 = new();
            AnimationClip clipR1G0B1 = new();
            AnimationClip clipR1G1B0 = new();
            AnimationClip clipR1G1B1 = new();

            AnimationCurve animationCurve0 = new();
            animationCurve0.AddKey(0, 0);
            animationCurve0.AddKey(1f / 60, 0);
            AnimationCurve animationCurve1 = new();
            animationCurve1.AddKey(0, 1);
            animationCurve1.AddKey(1f / 60, 1);

            foreach (CVRAdvancedSettingsTargetEntryMaterialColor target in materialColorTargets)
            {
                if (target.gameObject == null || target.propertyName == "" || target.treePath == null) continue;

                // get property type
                target.propertyType = target.propertyTypeIdentifier switch
                {
                    "SMR" => typeof(SkinnedMeshRenderer),
                    "MSR" => typeof(MeshRenderer),
                    "PTR" => typeof(ParticleSystemRenderer),
                    "LNR" => typeof(LineRenderer),
                    "TLR" => typeof(TrailRenderer),
                    _ => typeof(SkinnedMeshRenderer)
                };

                clipR0G0B0.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".r",
                    animationCurve0);
                clipR0G0B1.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".r",
                    animationCurve0);
                clipR0G1B0.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".r",
                    animationCurve0);
                clipR0G1B1.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".r",
                    animationCurve0);
                clipR1G0B0.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".r",
                    animationCurve1);
                clipR1G0B1.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".r",
                    animationCurve1);
                clipR1G1B0.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".r",
                    animationCurve1);
                clipR1G1B1.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".r",
                    animationCurve1);

                clipR0G0B0.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".g",
                    animationCurve0);
                clipR0G0B1.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".g",
                    animationCurve0);
                clipR0G1B0.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".g",
                    animationCurve1);
                clipR0G1B1.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".g",
                    animationCurve1);
                clipR1G0B0.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".g",
                    animationCurve0);
                clipR1G0B1.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".g",
                    animationCurve0);
                clipR1G1B0.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".g",
                    animationCurve1);
                clipR1G1B1.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".g",
                    animationCurve1);

                clipR0G0B0.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".b",
                    animationCurve0);
                clipR0G0B1.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".b",
                    animationCurve1);
                clipR0G1B0.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".b",
                    animationCurve0);
                clipR0G1B1.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".b",
                    animationCurve1);
                clipR1G0B0.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".b",
                    animationCurve0);
                clipR1G0B1.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".b",
                    animationCurve1);
                clipR1G1B0.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".b",
                    animationCurve0);
                clipR1G1B1.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".b",
                    animationCurve1);

                clipR0G0B0.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".a",
                    animationCurve1);
                clipR0G0B1.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".a",
                    animationCurve1);
                clipR0G1B0.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".a",
                    animationCurve1);
                clipR0G1B1.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".a",
                    animationCurve1);
                clipR1G0B0.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".a",
                    animationCurve1);
                clipR1G0B1.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".a",
                    animationCurve1);
                clipR1G1B0.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".a",
                    animationCurve1);
                clipR1G1B1.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName + ".a",
                    animationCurve1);
            }

            blendTreeRedMinGreenMin.AddChild(clipR0G0B0, 0);
            AssetDatabase.CreateAsset(clipR0G0B0, folderPath + "/Anim_" + fileName + "_Color_R0G0B0.anim");
            blendTreeRedMinGreenMin.AddChild(clipR0G0B1, 1);
            AssetDatabase.CreateAsset(clipR0G0B1, folderPath + "/Anim_" + fileName + "_Color_R0G0B1.anim");

            blendTreeRedMinGreenMax.AddChild(clipR0G1B0, 0);
            AssetDatabase.CreateAsset(clipR0G1B0, folderPath + "/Anim_" + fileName + "_Color_R0G1B0.anim");
            blendTreeRedMinGreenMax.AddChild(clipR0G1B1, 1);
            AssetDatabase.CreateAsset(clipR0G1B1, folderPath + "/Anim_" + fileName + "_Color_R0G1B1.anim");

            blendTreeRedMaxGreenMin.AddChild(clipR1G0B0, 0);
            AssetDatabase.CreateAsset(clipR1G0B0, folderPath + "/Anim_" + fileName + "_Color_R1G0B0.anim");
            blendTreeRedMaxGreenMin.AddChild(clipR1G0B1, 1);
            AssetDatabase.CreateAsset(clipR1G0B1, folderPath + "/Anim_" + fileName + "_Color_R1G0B1.anim");

            blendTreeRedMaxGreenMax.AddChild(clipR1G1B0, 0);
            AssetDatabase.CreateAsset(clipR1G1B0, folderPath + "/Anim_" + fileName + "_Color_R1G1B0.anim");
            blendTreeRedMaxGreenMax.AddChild(clipR1G1B1, 1);
            AssetDatabase.CreateAsset(clipR1G1B1, folderPath + "/Anim_" + fileName + "_Color_R1G1B1.anim");

            animatorState.motion = blendTreeRed;

            AssetDatabase.AddObjectToAsset(blendTreeRed, AssetDatabase.GetAssetPath(controller));
            blendTreeRed.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeRedMin, AssetDatabase.GetAssetPath(controller));
            blendTreeRedMin.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeRedMax, AssetDatabase.GetAssetPath(controller));
            blendTreeRedMax.hideFlags = HideFlags.HideInHierarchy;

            AssetDatabase.AddObjectToAsset(blendTreeRedMinGreenMin, AssetDatabase.GetAssetPath(controller));
            blendTreeRedMinGreenMin.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeRedMinGreenMax, AssetDatabase.GetAssetPath(controller));
            blendTreeRedMinGreenMax.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeRedMaxGreenMin, AssetDatabase.GetAssetPath(controller));
            blendTreeRedMaxGreenMin.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeRedMaxGreenMax, AssetDatabase.GetAssetPath(controller));
            blendTreeRedMaxGreenMax.hideFlags = HideFlags.HideInHierarchy;
        }
#endif
    }

    [Serializable]
    public class CVRAdvancesAvatarSettingSlider : CVRAdvancesAvatarSettingBase
    {
        public float defaultValue;

        public List<CVRAdvancedSettingsTargetEntryMaterialProperty> materialPropertyTargets = new();

        private CVRAdvancedSettingsTargetEntryMaterialProperty entity;
#if UNITY_EDITOR

        public ReorderableList reorderableList;

        public bool useAnimationClip;
        public AnimationClip minAnimationClip;
        public AnimationClip maxAnimationClip;

        public override void SetupAnimator(ref AnimatorController controller, string machineName, string folderPath,
            string fileName)
        {
            AnimatorControllerLayer animatorLayer = new()
            {
                name = machineName,
                defaultWeight = 1f,
                stateMachine = new AnimatorStateMachine()
            };

            animatorLayer.stateMachine.name = machineName;
            AssetDatabase.AddObjectToAsset(animatorLayer.stateMachine, AssetDatabase.GetAssetPath(controller));
            animatorLayer.stateMachine.hideFlags = HideFlags.HideInHierarchy;

            controller.AddLayer(animatorLayer);

            AnimatorControllerParameter animatorParameter = new()
            {
                name = machineName,
                type = AnimatorControllerParameterType.Float,
                defaultFloat = defaultValue
            };

            controller.AddParameter(animatorParameter);

            AnimatorState animatorState = animatorLayer.stateMachine.AddState(machineName + " Blend Tree");

            BlendTree blendTree = new();
            blendTree.name = machineName + " Blend Tree";
            blendTree.blendParameter = machineName;

            AnimationClip minClip = new();
            AnimationClip maxClip = new();

            foreach (CVRAdvancedSettingsTargetEntryMaterialProperty target in materialPropertyTargets)
            {
                if (target.gameObject == null || target.propertyName == "" || target.treePath == null) continue;

                AnimationCurve animationCurve0 = new();
                animationCurve0.AddKey(0, target.minValue);
                animationCurve0.AddKey(1f / 60, target.minValue);
                AnimationCurve animationCurve1 = new();
                animationCurve1.AddKey(0, target.maxValue);
                animationCurve1.AddKey(1f / 60, target.maxValue);

                target.propertyType = target.propertyTypeIdentifier switch
                {
                    "SMR" => typeof(SkinnedMeshRenderer),
                    "MSR" => typeof(MeshRenderer),
                    "PTR" => typeof(ParticleSystemRenderer),
                    "LNR" => typeof(LineRenderer),
                    "TLR" => typeof(TrailRenderer),
                    _ => typeof(SkinnedMeshRenderer)
                };

                minClip.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName,
                    animationCurve0);
                maxClip.SetCurve(target.treePath, target.propertyType, "material." + target.propertyName,
                    animationCurve1);
            }

            if (useAnimationClip)
            {
                minClip = minAnimationClip;
                maxClip = maxAnimationClip;
            }
            else
            {
                AssetDatabase.CreateAsset(minClip, folderPath + "/Anim_" + fileName + "_Slider_Min.anim");
                AssetDatabase.CreateAsset(maxClip, folderPath + "/Anim_" + fileName + "_Slider_Max.anim");
            }

            blendTree.AddChild(minClip, 0f);
            blendTree.AddChild(maxClip, 1f);

            animatorState.motion = blendTree;

            AssetDatabase.AddObjectToAsset(blendTree, AssetDatabase.GetAssetPath(controller));
            blendTree.hideFlags = HideFlags.HideInHierarchy;
        }
#endif
    }

    [Serializable]
    public class CVRAdvancesAvatarSettingJoystick2D : CVRAdvancesAvatarSettingBase
    {
        public Vector2 defaultValue = Vector2.zero;
        public Vector2 rangeMin = new(0, 0);
        public Vector2 rangeMax = new(1, 1);

#if UNITY_EDITOR
        public override void SetupAnimator(ref AnimatorController controller, string machineName, string folderPath,
            string fileName)
        {
            AnimatorControllerLayer animatorLayer = new()
            {
                name = machineName,
                defaultWeight = 1f,
                stateMachine = new AnimatorStateMachine()
            };

            animatorLayer.stateMachine.name = machineName;
            AssetDatabase.AddObjectToAsset(animatorLayer.stateMachine, AssetDatabase.GetAssetPath(controller));
            animatorLayer.stateMachine.hideFlags = HideFlags.HideInHierarchy;

            controller.AddLayer(animatorLayer);

            AnimatorControllerParameter animatorParameterX = new()
            {
                name = machineName + "-x",
                type = AnimatorControllerParameterType.Float,
                defaultFloat = defaultValue.x
            };

            controller.AddParameter(animatorParameterX);

            AnimatorControllerParameter animatorParameterY = new()
            {
                name = machineName + "-y",
                type = AnimatorControllerParameterType.Float,
                defaultFloat = defaultValue.y
            };

            controller.AddParameter(animatorParameterY);

            AnimatorState animatorState = animatorLayer.stateMachine.AddState(machineName + " Blend Tree");

            BlendTree blendTree = new();
            blendTree.name = machineName + " Blend Tree";
            blendTree.blendParameter = machineName + "-x";
            blendTree.useAutomaticThresholds = false;

            BlendTree blendTreeXMin = new();
            blendTreeXMin.name = machineName + " Blend Tree X Min";
            blendTreeXMin.blendParameter = machineName + "-y";
            blendTreeXMin.useAutomaticThresholds = false;

            BlendTree blendTreeXMax = new();
            blendTreeXMax.name = machineName + " Blend Tree X Max";
            blendTreeXMax.blendParameter = machineName + "-y";
            blendTreeXMax.useAutomaticThresholds = false;

            blendTree.AddChild(blendTreeXMin, rangeMin.x);
            blendTree.AddChild(blendTreeXMax, rangeMax.x);

            AnimationClip X0Y0Clip = new();
            AnimationClip X0Y1Clip = new();
            AnimationClip X1Y0Clip = new();
            AnimationClip X1Y1Clip = new();

            blendTreeXMin.AddChild(X0Y0Clip, rangeMin.y);
            AssetDatabase.CreateAsset(X0Y0Clip, folderPath + "/Anim_" + fileName + "_Joystick2D_X0Y0.anim");
            blendTreeXMin.AddChild(X0Y1Clip, rangeMax.y);
            AssetDatabase.CreateAsset(X0Y1Clip, folderPath + "/Anim_" + fileName + "_Joystick2D_X0Y1.anim");

            blendTreeXMax.AddChild(X1Y0Clip, rangeMin.y);
            AssetDatabase.CreateAsset(X1Y0Clip, folderPath + "/Anim_" + fileName + "_Joystick2D_X1Y0.anim");
            blendTreeXMax.AddChild(X1Y1Clip, rangeMax.y);
            AssetDatabase.CreateAsset(X1Y1Clip, folderPath + "/Anim_" + fileName + "_Joystick2D_X1Y1.anim");

            animatorState.motion = blendTree;

            AssetDatabase.AddObjectToAsset(blendTree, AssetDatabase.GetAssetPath(controller));
            blendTree.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeXMin, AssetDatabase.GetAssetPath(controller));
            blendTreeXMin.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeXMax, AssetDatabase.GetAssetPath(controller));
            blendTreeXMax.hideFlags = HideFlags.HideInHierarchy;
        }
#endif
    }

    [Serializable]
    public class CVRAdvancesAvatarSettingJoystick3D : CVRAdvancesAvatarSettingBase
    {
        public Vector3 defaultValue = Vector3.zero;
        public Vector3 rangeMin = new(0, 0, 0);
        public Vector3 rangeMax = new(1, 1, 1);

#if UNITY_EDITOR
        public override void SetupAnimator(ref AnimatorController controller, string machineName, string folderPath,
            string fileName)
        {
            AnimatorControllerLayer animatorLayer = new()
            {
                name = machineName,
                defaultWeight = 1f,
                stateMachine = new AnimatorStateMachine()
            };

            animatorLayer.stateMachine.name = machineName;
            AssetDatabase.AddObjectToAsset(animatorLayer.stateMachine, AssetDatabase.GetAssetPath(controller));
            animatorLayer.stateMachine.hideFlags = HideFlags.HideInHierarchy;

            controller.AddLayer(animatorLayer);

            AnimatorControllerParameter animatorParameterX = new()
            {
                name = machineName + "-x",
                type = AnimatorControllerParameterType.Float,
                defaultFloat = defaultValue.x
            };

            controller.AddParameter(animatorParameterX);

            AnimatorControllerParameter animatorParameterY = new()
            {
                name = machineName + "-y",
                type = AnimatorControllerParameterType.Float,
                defaultFloat = defaultValue.y
            };

            controller.AddParameter(animatorParameterY);

            AnimatorControllerParameter animatorParameterZ = new()
            {
                name = machineName + "-z",
                type = AnimatorControllerParameterType.Float,
                defaultFloat = defaultValue.z
            };

            controller.AddParameter(animatorParameterZ);

            AnimatorState animatorState = animatorLayer.stateMachine.AddState(machineName + " Blend Tree");

            BlendTree blendTreeX = new();
            blendTreeX.name = machineName + " Blend Tree x";
            blendTreeX.blendParameter = machineName + "-x";
            blendTreeX.useAutomaticThresholds = false;

            BlendTree blendTreeXMin = new();
            blendTreeXMin.name = machineName + " Blend Tree X Min";
            blendTreeXMin.blendParameter = machineName + "-y";
            blendTreeXMin.useAutomaticThresholds = false;

            BlendTree blendTreeXMax = new();
            blendTreeXMax.name = machineName + " Blend Tree X Max";
            blendTreeXMax.blendParameter = machineName + "-y";
            blendTreeXMax.useAutomaticThresholds = false;

            blendTreeX.AddChild(blendTreeXMin, rangeMin.x);
            blendTreeX.AddChild(blendTreeXMax, rangeMax.x);

            BlendTree blendTreeXMinYMin = new();
            blendTreeXMinYMin.name = machineName + " Blend Tree X Min Y Min";
            blendTreeXMinYMin.blendParameter = machineName + "-z";
            blendTreeXMinYMin.useAutomaticThresholds = false;

            BlendTree blendTreeXMinYMax = new();
            blendTreeXMinYMax.name = machineName + " Blend Tree X Min Y Max";
            blendTreeXMinYMax.blendParameter = machineName + "-z";
            blendTreeXMinYMax.useAutomaticThresholds = false;

            blendTreeXMin.AddChild(blendTreeXMinYMin, rangeMin.y);
            blendTreeXMin.AddChild(blendTreeXMinYMax, rangeMax.y);

            BlendTree blendTreeXMaxYMin = new();
            blendTreeXMaxYMin.name = machineName + " Blend Tree X Max Y Min";
            blendTreeXMaxYMin.blendParameter = machineName + "-z";
            blendTreeXMaxYMin.useAutomaticThresholds = false;

            BlendTree blendTreeXMaxYMax = new();
            blendTreeXMaxYMax.name = machineName + " Blend Tree X Max Y Max";
            blendTreeXMaxYMax.blendParameter = machineName + "-z";
            blendTreeXMaxYMax.useAutomaticThresholds = false;

            blendTreeXMax.AddChild(blendTreeXMaxYMin, rangeMin.y);
            blendTreeXMax.AddChild(blendTreeXMaxYMax, rangeMax.y);

            AnimationClip clipX0Y0Z0 = new();
            AnimationClip clipX0Y0Z1 = new();
            AnimationClip clipX0Y1Z0 = new();
            AnimationClip clipX0Y1Z1 = new();
            AnimationClip clipX1Y0Z0 = new();
            AnimationClip clipX1Y0Z1 = new();
            AnimationClip clipX1Y1Z0 = new();
            AnimationClip clipX1Y1Z1 = new();

            blendTreeXMinYMin.AddChild(clipX0Y0Z0, 0f);
            AssetDatabase.CreateAsset(clipX0Y0Z0, folderPath + "/Anim_" + fileName + "_Joystick3D_X0Y0Z0.anim");
            blendTreeXMinYMin.AddChild(clipX0Y0Z1, 1f);
            AssetDatabase.CreateAsset(clipX0Y0Z1, folderPath + "/Anim_" + fileName + "_Joystick3D_X0Y0Z1.anim");

            blendTreeXMinYMax.AddChild(clipX0Y1Z0, 0f);
            AssetDatabase.CreateAsset(clipX0Y1Z0, folderPath + "/Anim_" + fileName + "_Joystick3D_X0Y1Z0.anim");
            blendTreeXMinYMax.AddChild(clipX0Y1Z1, 1f);
            AssetDatabase.CreateAsset(clipX0Y1Z1, folderPath + "/Anim_" + fileName + "_Joystick3D_X0Y1Z1.anim");

            blendTreeXMaxYMin.AddChild(clipX1Y0Z0, 0f);
            AssetDatabase.CreateAsset(clipX1Y0Z0, folderPath + "/Anim_" + fileName + "_Joystick3D_X1Y0Z0.anim");
            blendTreeXMaxYMin.AddChild(clipX1Y0Z1, 1f);
            AssetDatabase.CreateAsset(clipX1Y0Z1, folderPath + "/Anim_" + fileName + "_Joystick3D_X1Y0Z1.anim");

            blendTreeXMaxYMax.AddChild(clipX1Y1Z0, 0f);
            AssetDatabase.CreateAsset(clipX1Y1Z0, folderPath + "/Anim_" + fileName + "_Joystick3D_X1Y1Z0.anim");
            blendTreeXMaxYMax.AddChild(clipX1Y1Z1, 1f);
            AssetDatabase.CreateAsset(clipX1Y1Z1, folderPath + "/Anim_" + fileName + "_Joystick3D_X1Y1Z1.anim");

            animatorState.motion = blendTreeX;

            AssetDatabase.AddObjectToAsset(blendTreeX, AssetDatabase.GetAssetPath(controller));
            blendTreeX.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeXMin, AssetDatabase.GetAssetPath(controller));
            blendTreeXMin.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeXMax, AssetDatabase.GetAssetPath(controller));
            blendTreeXMax.hideFlags = HideFlags.HideInHierarchy;

            AssetDatabase.AddObjectToAsset(blendTreeXMinYMin, AssetDatabase.GetAssetPath(controller));
            blendTreeXMinYMin.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeXMinYMax, AssetDatabase.GetAssetPath(controller));
            blendTreeXMinYMax.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeXMaxYMin, AssetDatabase.GetAssetPath(controller));
            blendTreeXMaxYMin.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeXMaxYMax, AssetDatabase.GetAssetPath(controller));
            blendTreeXMaxYMax.hideFlags = HideFlags.HideInHierarchy;
        }
#endif
    }

    [Serializable]
    public class CVRAdvancesAvatarSettingInputSingle : CVRAdvancesAvatarSettingBase
    {
        public float defaultValue;

#if UNITY_EDITOR
        public override void SetupAnimator(ref AnimatorController controller, string machineName, string folderPath,
            string fileName)
        {
            AnimatorControllerLayer animatorLayer = new()
            {
                name = machineName,
                defaultWeight = 1f,
                stateMachine = new AnimatorStateMachine()
            };

            animatorLayer.stateMachine.name = machineName;
            AssetDatabase.AddObjectToAsset(animatorLayer.stateMachine, AssetDatabase.GetAssetPath(controller));
            animatorLayer.stateMachine.hideFlags = HideFlags.HideInHierarchy;

            controller.AddLayer(animatorLayer);

            AnimatorControllerParameter animatorParameter = new()
            {
                name = machineName,
                type = AnimatorControllerParameterType.Float,
                defaultFloat = defaultValue
            };

            controller.AddParameter(animatorParameter);

            AnimatorState animatorState = animatorLayer.stateMachine.AddState(machineName + " Blend Tree");

            BlendTree blendTree = new();
            blendTree.name = machineName + " Blend Tree";
            blendTree.blendParameter = machineName;
            blendTree.useAutomaticThresholds = false;

            AnimationClip minClip = new();
            AnimationClip maxClip = new();

            blendTree.AddChild(minClip, -9999f);
            AssetDatabase.CreateAsset(minClip, folderPath + "/Anim_" + fileName + "_InputSingle_Min.anim");
            blendTree.AddChild(maxClip, 9999f);
            AssetDatabase.CreateAsset(maxClip, folderPath + "/Anim_" + fileName + "_InputSingle_Max.anim");

            animatorState.motion = blendTree;

            AssetDatabase.AddObjectToAsset(blendTree, AssetDatabase.GetAssetPath(controller));
            blendTree.hideFlags = HideFlags.HideInHierarchy;
        }
#endif
    }

    [Serializable]
    public class CVRAdvancesAvatarSettingInputVector2 : CVRAdvancesAvatarSettingBase
    {
        public Vector2 defaultValue = Vector2.zero;

#if UNITY_EDITOR
        public override void SetupAnimator(ref AnimatorController controller, string machineName, string folderPath,
            string fileName)
        {
            AnimatorControllerLayer animatorLayer = new()
            {
                name = machineName,
                defaultWeight = 1f,
                stateMachine = new AnimatorStateMachine()
            };

            animatorLayer.stateMachine.name = machineName;
            AssetDatabase.AddObjectToAsset(animatorLayer.stateMachine, AssetDatabase.GetAssetPath(controller));
            animatorLayer.stateMachine.hideFlags = HideFlags.HideInHierarchy;

            controller.AddLayer(animatorLayer);

            AnimatorControllerParameter animatorParameterX = new()
            {
                name = machineName + "-x",
                type = AnimatorControllerParameterType.Float,
                defaultFloat = defaultValue.x
            };

            controller.AddParameter(animatorParameterX);

            AnimatorControllerParameter animatorParameterY = new()
            {
                name = machineName + "-y",
                type = AnimatorControllerParameterType.Float,
                defaultFloat = defaultValue.y
            };

            controller.AddParameter(animatorParameterY);

            AnimatorState animatorState = animatorLayer.stateMachine.AddState(machineName + " Blend Tree");

            BlendTree blendTree = new();
            blendTree.name = machineName + " Blend Tree";
            blendTree.blendParameter = machineName + "-x";
            blendTree.useAutomaticThresholds = false;

            BlendTree blendTreeXMin = new();
            blendTreeXMin.name = machineName + " Blend Tree X Min";
            blendTreeXMin.blendParameter = machineName + "-y";
            blendTreeXMin.useAutomaticThresholds = false;

            BlendTree blendTreeXMax = new();
            blendTreeXMax.name = machineName + " Blend Tree X Max";
            blendTreeXMax.blendParameter = machineName + "-y";
            blendTreeXMax.useAutomaticThresholds = false;

            blendTree.AddChild(blendTreeXMin, -9999f);
            blendTree.AddChild(blendTreeXMax, 9999f);

            AnimationClip X0Y0Clip = new();
            AnimationClip X0Y1Clip = new();
            AnimationClip X1Y0Clip = new();
            AnimationClip X1Y1Clip = new();

            blendTreeXMin.AddChild(X0Y0Clip, -9999f);
            AssetDatabase.CreateAsset(X0Y0Clip, folderPath + "/Anim_" + fileName + "_InputVector2_X0Y0.anim");
            blendTreeXMin.AddChild(X0Y1Clip, 9999f);
            AssetDatabase.CreateAsset(X0Y1Clip, folderPath + "/Anim_" + fileName + "_InputVector2_X0Y1.anim");

            blendTreeXMax.AddChild(X1Y0Clip, -9999f);
            AssetDatabase.CreateAsset(X1Y0Clip, folderPath + "/Anim_" + fileName + "_InputVector2_X1Y0.anim");
            blendTreeXMax.AddChild(X1Y1Clip, 9999f);
            AssetDatabase.CreateAsset(X1Y1Clip, folderPath + "/Anim_" + fileName + "_InputVector2_X1Y1.anim");

            animatorState.motion = blendTree;

            AssetDatabase.AddObjectToAsset(blendTree, AssetDatabase.GetAssetPath(controller));
            blendTree.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeXMin, AssetDatabase.GetAssetPath(controller));
            blendTreeXMin.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeXMax, AssetDatabase.GetAssetPath(controller));
            blendTreeXMax.hideFlags = HideFlags.HideInHierarchy;
        }
#endif
    }

    [Serializable]
    public class CVRAdvancesAvatarSettingInputVector3 : CVRAdvancesAvatarSettingBase
    {
        public Vector3 defaultValue = Vector3.zero;

#if UNITY_EDITOR
        public override void SetupAnimator(ref AnimatorController controller, string machineName, string folderPath,
            string fileName)
        {
            AnimatorControllerLayer animatorLayer = new()
            {
                name = machineName,
                defaultWeight = 1f,
                stateMachine = new AnimatorStateMachine()
            };

            animatorLayer.stateMachine.name = machineName;
            AssetDatabase.AddObjectToAsset(animatorLayer.stateMachine, AssetDatabase.GetAssetPath(controller));
            animatorLayer.stateMachine.hideFlags = HideFlags.HideInHierarchy;

            controller.AddLayer(animatorLayer);

            AnimatorControllerParameter animatorParameterX = new()
            {
                name = machineName + "-x",
                type = AnimatorControllerParameterType.Float,
                defaultFloat = defaultValue.x
            };

            controller.AddParameter(animatorParameterX);

            AnimatorControllerParameter animatorParameterY = new()
            {
                name = machineName + "-y",
                type = AnimatorControllerParameterType.Float,
                defaultFloat = defaultValue.y
            };

            controller.AddParameter(animatorParameterY);

            AnimatorControllerParameter animatorParameterZ = new()
            {
                name = machineName + "-z",
                type = AnimatorControllerParameterType.Float,
                defaultFloat = defaultValue.z
            };

            controller.AddParameter(animatorParameterZ);

            AnimatorState animatorState = animatorLayer.stateMachine.AddState(machineName + " Blend Tree");

            BlendTree blendTreeX = new();
            blendTreeX.name = machineName + " Blend Tree x";
            blendTreeX.blendParameter = machineName + "-x";
            blendTreeX.useAutomaticThresholds = false;

            BlendTree blendTreeXMin = new();
            blendTreeXMin.name = machineName + " Blend Tree X Min";
            blendTreeXMin.blendParameter = machineName + "-y";
            blendTreeXMin.useAutomaticThresholds = false;

            BlendTree blendTreeXMax = new();
            blendTreeXMax.name = machineName + " Blend Tree X Max";
            blendTreeXMax.blendParameter = machineName + "-y";
            blendTreeXMax.useAutomaticThresholds = false;

            blendTreeX.AddChild(blendTreeXMin, -9999f);
            blendTreeX.AddChild(blendTreeXMax, 9999f);

            BlendTree blendTreeXMinYMin = new();
            blendTreeXMinYMin.name = machineName + " Blend Tree X Min Y Min";
            blendTreeXMinYMin.blendParameter = machineName + "-z";
            blendTreeXMinYMin.useAutomaticThresholds = false;

            BlendTree blendTreeXMinYMax = new();
            blendTreeXMinYMax.name = machineName + " Blend Tree X Min Y Max";
            blendTreeXMinYMax.blendParameter = machineName + "-z";
            blendTreeXMinYMax.useAutomaticThresholds = false;

            blendTreeXMin.AddChild(blendTreeXMinYMin, -9999f);
            blendTreeXMin.AddChild(blendTreeXMinYMax, 9999f);

            BlendTree blendTreeXMaxYMin = new();
            blendTreeXMaxYMin.name = machineName + " Blend Tree X Max Y Min";
            blendTreeXMaxYMin.blendParameter = machineName + "-z";
            blendTreeXMaxYMin.useAutomaticThresholds = false;

            BlendTree blendTreeXMaxYMax = new();
            blendTreeXMaxYMax.name = machineName + " Blend Tree X Max Y Max";
            blendTreeXMaxYMax.blendParameter = machineName + "-z";
            blendTreeXMaxYMax.useAutomaticThresholds = false;

            blendTreeXMax.AddChild(blendTreeXMaxYMin, -9999f);
            blendTreeXMax.AddChild(blendTreeXMaxYMax, 9999f);

            AnimationClip clipX0Y0Z0 = new();
            AnimationClip clipX0Y0Z1 = new();
            AnimationClip clipX0Y1Z0 = new();
            AnimationClip clipX0Y1Z1 = new();
            AnimationClip clipX1Y0Z0 = new();
            AnimationClip clipX1Y0Z1 = new();
            AnimationClip clipX1Y1Z0 = new();
            AnimationClip clipX1Y1Z1 = new();

            blendTreeXMinYMin.AddChild(clipX0Y0Z0, -9999f);
            AssetDatabase.CreateAsset(clipX0Y0Z0, folderPath + "/Anim_" + fileName + "_InputVector3_X0Y0Z0.anim");
            blendTreeXMinYMin.AddChild(clipX0Y0Z1, 9999f);
            AssetDatabase.CreateAsset(clipX0Y0Z1, folderPath + "/Anim_" + fileName + "_InputVector3_X0Y0Z1.anim");

            blendTreeXMinYMax.AddChild(clipX0Y1Z0, -9999f);
            AssetDatabase.CreateAsset(clipX0Y1Z0, folderPath + "/Anim_" + fileName + "_InputVector3_X0Y1Z0.anim");
            blendTreeXMinYMax.AddChild(clipX0Y1Z1, 9999f);
            AssetDatabase.CreateAsset(clipX0Y1Z1, folderPath + "/Anim_" + fileName + "_InputVector3_X0Y1Z1.anim");

            blendTreeXMaxYMin.AddChild(clipX1Y0Z0, -9999f);
            AssetDatabase.CreateAsset(clipX1Y0Z0, folderPath + "/Anim_" + fileName + "_InputVector3_X1Y0Z0.anim");
            blendTreeXMaxYMin.AddChild(clipX1Y0Z1, 9999f);
            AssetDatabase.CreateAsset(clipX1Y0Z1, folderPath + "/Anim_" + fileName + "_InputVector3_X1Y0Z1.anim");

            blendTreeXMaxYMax.AddChild(clipX1Y1Z0, -9999f);
            AssetDatabase.CreateAsset(clipX1Y1Z0, folderPath + "/Anim_" + fileName + "_InputVector3_X1Y1Z0.anim");
            blendTreeXMaxYMax.AddChild(clipX1Y1Z1, 9999f);
            AssetDatabase.CreateAsset(clipX1Y1Z1, folderPath + "/Anim_" + fileName + "_InputVector3_X1Y1Z1.anim");

            animatorState.motion = blendTreeX;

            AssetDatabase.AddObjectToAsset(blendTreeX, AssetDatabase.GetAssetPath(controller));
            blendTreeX.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeXMin, AssetDatabase.GetAssetPath(controller));
            blendTreeXMin.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeXMax, AssetDatabase.GetAssetPath(controller));
            blendTreeXMax.hideFlags = HideFlags.HideInHierarchy;

            AssetDatabase.AddObjectToAsset(blendTreeXMinYMin, AssetDatabase.GetAssetPath(controller));
            blendTreeXMinYMin.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeXMinYMax, AssetDatabase.GetAssetPath(controller));
            blendTreeXMinYMax.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeXMaxYMin, AssetDatabase.GetAssetPath(controller));
            blendTreeXMaxYMin.hideFlags = HideFlags.HideInHierarchy;
            AssetDatabase.AddObjectToAsset(blendTreeXMaxYMax, AssetDatabase.GetAssetPath(controller));
            blendTreeXMaxYMax.hideFlags = HideFlags.HideInHierarchy;
        }
#endif
    }

    [Serializable]
    public class CVRAdvancedSettingsTargetEntryGameObject
    {
#if UNITY_EDITOR
        public string treePath;
        public bool onState = true;
        public GameObject gameObject;
#endif
    }

    [Serializable]
    public class CVRAdvancedSettingsDropDownEntry
    {
        public string name;

#if UNITY_EDITOR
        public ReorderableList reorderableList;

        public bool isAutogenCollapsed = true;

        public bool useAnimationClip;
        public AnimationClip animationClip;

        public List<CVRAdvancedSettingsTargetEntryGameObject> gameObjectTargets = new();
#endif
    }

    [Serializable]
    public class CVRAdvancedSettingsTargetEntryMaterialColor
    {
#if UNITY_EDITOR
        public GameObject gameObject;
        public string treePath;
        public Type propertyType;
        public string propertyTypeIdentifier;
        public string propertyName;
#endif
    }

    [Serializable]
    public class CVRAdvancedSettingsTargetEntryMaterialProperty
    {
        public float minValue;
        public float maxValue;

#if UNITY_EDITOR
        public GameObject gameObject;
        public string treePath;
        public Type propertyType;
        public string propertyTypeIdentifier;
        public string propertyName;
#endif
    }
}