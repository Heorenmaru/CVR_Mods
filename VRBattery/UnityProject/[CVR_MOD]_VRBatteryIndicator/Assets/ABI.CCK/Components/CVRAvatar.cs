using System;
using System.Collections.Generic;
using System.Linq;
using ABI.CCK.Scripts;
using UnityEngine;
using UnityEngine.Animations;

namespace ABI.CCK.Components
{
    [ExecuteInEditMode]
    [AddComponentMenu("ChilloutVR/CVR Avatar")]
    [HelpURL("https://docs.abinteractive.net/cck/components/avatar/")]
    [RequireComponent(typeof(Animator))]
    public class CVRAvatar : MonoBehaviour, ICCK_Component
    {
        #region Editor Methods

        public void Reset()
        {
            if (GetComponent<CVRAssetInfo>() != null) return;
            CVRAssetInfo info = gameObject.AddComponent<CVRAssetInfo>();
            info.type = CVRAssetInfo.AssetType.Avatar;
        }

        #endregion

        #region CVRAvatarEnums
        
        public enum CVRAvatarVoiceParent { Head = 0, LeftHand = 2, RightHand = 3, Hips = 4 }
        public enum CVRAvatarVisemeMode { Visemes = 0, SingleBlendshape = 1, JawBone = 2 }
        
        #endregion

        #region General Avatar Settings
        //[Space] [Header("General Avatar Settings")] [Space]
        
        public Vector3 viewPosition = new Vector3(0, 0.1f, 0);
        public Vector3 voicePosition = new Vector3(0, 0.15f, 0);
        public CVRAvatarVoiceParent voiceParent = CVRAvatarVoiceParent.Head;
        
        #endregion

        #region Avatar Customization
        //[Space] [Header("Avatar Customization")] [Space]
        
        public AnimatorOverrideController overrides;
        public SkinnedMeshRenderer bodyMesh;

        /// <summary>
        /// Interval to change targets for the eye movement in seconds
        /// </summary>
        [SerializeField] public Vector2 eyeMovementInterval = new(5f, 10f);
        
        #endregion

        #region Eye Look Settings

        /// <summary>
        /// Whether to use Eye Movement or not
        /// </summary>
        [SerializeField] public bool useEyeMovement = true;

        /// <summary>
        /// Structure holding the detailed information for the eye movement
        /// </summary>
        [SerializeField] public EyeMovementInfo eyeMovementInfo = new EyeMovementInfo();

        // Limits for the eye movement interval
        [NonSerialized] public const float EyeMovementMinIntervalLimit = 1f;
        [NonSerialized] public const float EyeMovementMaxIntervalLimit = 30f;

        // Limits for the eye angles (uses the same as the default eye muscle values in unity)
        [NonSerialized] public const float DefaultEyeAngleLimitDown = -10;
        [NonSerialized] public const float DefaultEyeAngleLimitUp = 15;
        [NonSerialized] public const float DefaultEyeAngleLimitIn = -20;
        [NonSerialized] public const float DefaultEyeAngleLimitOut = 20;

        // Limits for the eye angles when we need uniform limits (useful for the blend shape type)
        [NonSerialized] public const float DefaultUniformAngleLimit = 25;

        [Serializable] public enum CVRAvatarEyeLookMode
        {
            /// <summary>
            /// Eye movement muscle setup
            /// </summary>
            Muscle = 0,
            /// <summary>
            /// Disabled eye movement setup
            /// </summary>
            None = 1,
            /// <summary>
            /// Eye movement transforms setup
            /// </summary>
            Transform = 2,
            /// <summary>
            /// Eye movement blendshape setup
            /// </summary>
            Blendshape = 3,
        }

        [Serializable] public struct EyeMovementInfo
        {
            /// <summary>
            /// Type of eye movement. It will dictate which fields will be used.
            /// </summary>
            [SerializeField] [NotKeyable] public CVRAvatarEyeLookMode type;

            /// <summary>
            /// Relevant to: Transforms and Blendshapes
            /// Eyes info for the eyes, not all fields will be used
            /// </summary>
            [SerializeReference] public EyeMovementInfoEye[] eyes;
        }

        [Serializable] public class EyeMovementInfoEye
        {
            /// <summary>
            /// Relevant to: Transforms and Blendshapes
            /// Whether the eye is Left or not (this is only used to manage the in/out limit direction)
            /// </summary>
            [SerializeField] public bool isLeft;

            /// <summary>
            /// Transforms - Transform of the eye bone
            /// Blendshapes - Transform where the eye should be
            /// </summary>
            [SerializeField] [NotKeyable] public Transform eyeTransform;

            /// <summary>
            /// Blendshapes - Skinned mesh renderer for the renderer that has the blendshapes to be driven
            /// </summary>
            [SerializeField] [NotKeyable] public SkinnedMeshRenderer eyeSkinnedMeshRenderer;

            /// <summary>
            /// Transforms - Angle limits for the transforms in degrees
            /// Blendshapes - Min/Max angle limits for which the blendshapes should be set to 100
            /// </summary>
            [SerializeField] public float eyeAngleLimitDown;
            [SerializeField] public float eyeAngleLimitUp;
            [SerializeField] public float eyeAngleLimitIn;
            [SerializeField] public float eyeAngleLimitOut;

            /// <summary>
            /// Blendshapes - Blenshapes to be used for the blendshape eye movement
            /// </summary>
            [SerializeField] [NotKeyable] public string eyeBlendShapeUp;
            [SerializeField] [NotKeyable] public string eyeBlendShapeDown;
            [SerializeField] [NotKeyable] public string eyeBlendShapeIn;
            [SerializeField] [NotKeyable] public string eyeBlendShapeOut;
        }
        
        #endregion

        #region Eye Blink Settings

        /// <summary>
        /// Whether to use blendshapes to blink or not
        /// </summary>
        [SerializeField] public bool useBlinkBlendshapes;

        /// <summary>
        /// Which blendshapes to use when blinking (they're all used at the same time)
        /// </summary>
        [SerializeField] public string[] blinkBlendshape = new string[4];

        /// <summary>
        /// Time interval between blinks in seconds.
        /// </summary>
        [SerializeField] public Vector2 blinkGap = new(3.0f, 8.0f);
        [NonSerialized] public const float BlinkMinGapLimit = 0.1f;
        [NonSerialized] public const float BlinkMaxGapLimit = 30f;

        /// <summary>
        /// Duration of the blink in seconds.
        /// </summary>
        [SerializeField] public Vector2 blinkDuration = new(0.25f, 0.35f);
        [NonSerialized] public const float BlinkMinDurationLimit = 0.1f;
        [NonSerialized] public const float BlinkMaxDurationLimit = 3f;
        
        #endregion

        #region Lip Sync Settings
        //[Space] [Header("Lip Sync Settings")] [Space]
        
        public bool useVisemeLipsync;
        public CVRAvatarVisemeMode visemeMode = CVRAvatarVisemeMode.Visemes;
        [Range(1, 100)] public int visemeSmoothing = 50;
        public string[] visemeBlendshapes = new string[15];
        
        #endregion

        #region First Person Render Settings (Deprecated)
#if UNITY_EDITOR // This is a deprecated feature, so lets not included in builds
        [NotKeyable] public bool enableCustomFPR;
        public List<CVRAvatarFPREntry> fprSettingsList;
#endif
        #endregion

        #region Advanced Tagging
        //[Space] [Header("Advanced Tagging")] [Space]
        
        [NotKeyable]
        public bool enableAdvancedTagging;
        public List<CVRAvatarAdvancedTaggingEntry> advancedTaggingList = new List<CVRAvatarAdvancedTaggingEntry>();
        
        #endregion
        
        #region Advanced Settings
        //[Space] [Header("Advanced Settings")] [Space]
        
        [NotKeyable]
        public bool avatarUsesAdvancedSettings;
        public CVRAdvancedAvatarSettings avatarSettings;
        
        #endregion

        #region Unity Methods
        
        private void OnDrawGizmosSelected()
        {
            Vector3 scale = transform.localScale;
            scale.x = 1 / scale.x;
            scale.y = 1 / scale.y;
            scale.z = 1 / scale.z;

            Gizmos.color = Color.green;
            Gizmos.DrawSphere(transform.TransformPoint(Vector3.Scale(viewPosition, scale)), 0.01f);

            Gizmos.color = Color.red;
            Gizmos.DrawSphere(transform.TransformPoint(Vector3.Scale(voicePosition, scale)), 0.01f);
        }
        
        #endregion

        #region Parameter Sync Usage
#if UNITY_EDITOR

        public (int, int) GetParameterSyncUsage()
        {
            if (avatarSettings?.settings == null)
                return (0, 0);

            var animatorParameterNames = new HashSet<string>();
            int syncedValuesOverrides = 0, syncedBooleansOverrides = 0;
            int syncedValuesAASAutoGen = 0, syncedBooleansAASAutoGen = 0;

            // Count override controller (real count)
            if (overrides != null && overrides.runtimeAnimatorController != null)
            {
                foreach (AnimatorControllerParameter parameter in CVRCommon.GetParametersFromController(
                             overrides.runtimeAnimatorController, CVRCommon.NonCoreFilter, CVRCommon.NonLocalFilter))
                {
                    if (!animatorParameterNames.Add(parameter.name))
                        continue;

                    if (parameter.type == AnimatorControllerParameterType.Bool)
                        syncedBooleansOverrides++;
                    else if (parameter.type != AnimatorControllerParameterType.Trigger)
                        syncedValuesOverrides++;
                }
            }
            
            animatorParameterNames.Clear();

            // Count baseController (part of autogen)
            if (avatarSettings.baseController != null)
            {
                foreach (AnimatorControllerParameter parameter in CVRCommon.GetParametersFromController(
                             avatarSettings.baseController, CVRCommon.NonCoreFilter, CVRCommon.NonLocalFilter))
                {
                    if (!animatorParameterNames.Add(parameter.name))
                        continue;

                    if (parameter.type == AnimatorControllerParameterType.Bool)
                        syncedBooleansAASAutoGen++;
                    else if (parameter.type != AnimatorControllerParameterType.Trigger)
                        syncedValuesAASAutoGen++;
                }
            }

            // Count menu entries (part of autogen, not real)
            foreach (CVRAdvancedSettingsEntry entry in avatarSettings.settings)
            {
                if (IsValidParameter(entry.machineName) && animatorParameterNames.Add(entry.machineName))
                {
                    switch (entry.type)
                    {
                        case CVRAdvancedSettingsEntry.SettingsType.Toggle:
                            if (entry.setting.usedType == CVRAdvancesAvatarSettingBase.ParameterType.Bool)
                                syncedBooleansAASAutoGen += 1;
                            else
                                syncedValuesAASAutoGen += 1;
                            break;
                        case CVRAdvancedSettingsEntry.SettingsType.Color:
                            IncrementSyncValuesForEntry(entry, animatorParameterNames, ref syncedValuesAASAutoGen, "-r", "-g", "-b");
                            break;
                        case CVRAdvancedSettingsEntry.SettingsType.Joystick2D:
                        case CVRAdvancedSettingsEntry.SettingsType.InputVector2:
                            IncrementSyncValuesForEntry(entry, animatorParameterNames, ref syncedValuesAASAutoGen, "-x", "-y");
                            break;
                        case CVRAdvancedSettingsEntry.SettingsType.Joystick3D:
                        case CVRAdvancedSettingsEntry.SettingsType.InputVector3:
                            IncrementSyncValuesForEntry(entry, animatorParameterNames, ref syncedValuesAASAutoGen, "-x", "-y", "-z");
                            break;
                        case CVRAdvancedSettingsEntry.SettingsType.Slider:
                        case CVRAdvancedSettingsEntry.SettingsType.InputSingle:
                        case CVRAdvancedSettingsEntry.SettingsType.Dropdown:
                        default:
                            syncedValuesAASAutoGen += 1;
                            break;
                    }
                }
            }

            int realUsage = syncedValuesOverrides * 32 + Mathf.CeilToInt(syncedBooleansOverrides / 8f) * 8;
            int autogenUsage = syncedValuesAASAutoGen * 32 + Mathf.CeilToInt(syncedBooleansAASAutoGen / 8f) * 8;

            return (realUsage, autogenUsage);
        }

        private static bool IsValidParameter(string parameterName)
        {
            return !string.IsNullOrEmpty(parameterName) && !CVRCommon.CoreParameters.Contains(parameterName) &&
                   !parameterName.StartsWith(CVRCommon.LOCAL_PARAMETER_PREFIX);
        }

        private static void IncrementSyncValuesForEntry(CVRAdvancedSettingsEntry entry, HashSet<string> animatorParameters, ref int syncedValues, params string[] suffixes)
        {
            int newSyncedValues = suffixes.Count(suffix => animatorParameters.Add(entry.machineName + suffix));
            syncedValues += newSyncedValues;
        }
        
#endif
        #endregion
    }
    
    #region First Person Render Class

    [Serializable]
    public class CVRAvatarFPREntry
    {
        public bool visibility = true;
        public Transform transform;
    }
    
    #endregion

    #region Advanced Tagging Class
    
    [Serializable]
    public class CVRAvatarAdvancedTaggingEntry
    {
        [Flags]
        public enum Tags
        {
            LoudAudio = 1,
            LongRangeAudio = 2,
            ScreenFx = 4,
            FlashingColors = 8,
            FlashingLights = 16,
            Violence = 32,
            Gore = 64,
            Suggestive = 128,
            Nudity = 256,
            Horror = 512
        }
        public Tags tags = 0;
        public GameObject gameObject;
        public GameObject fallbackGameObject;
    }
    
    #endregion
}