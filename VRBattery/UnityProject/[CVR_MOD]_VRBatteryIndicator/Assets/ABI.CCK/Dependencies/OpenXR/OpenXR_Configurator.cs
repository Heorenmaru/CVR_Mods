#if UNITY_EDITOR
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.PackageManager;
using UnityEngine;
using Object = UnityEngine.Object;

#if CVR_CCK_XRMANAGMENTFOUND && CVR_CCK_OPENXRFOUND
using UnityEditor.XR.Management;
using UnityEngine.XR.Management;
using UnityEngine.XR.OpenXR;
using UnityEngine.Rendering;
#endif

namespace ABI.CCK.Dependencies.OpenXR
{
    [InitializeOnLoad]
    public static class OpenXR_Configurator
    {
        static OpenXR_Configurator()
        {
            RunConfiguration();
        }

        public static void RunConfiguration()
        {
#if CVR_CCK_XRMANAGMENTFOUND && CVR_CCK_OPENXRFOUND
            ConfigureXR();
#elif CVR_CCK_EXISTS && PLATFORM_ANDROID // just making sure we dont misfire in weird projects
            PromptForImport();
#else
            // this is a weird edge case, but it can happen on a fresh import...?
            Debug.Log("[CCK :: OpenXR Configurator] Skipped configuration. CCK not found or not set to Android.");
            Debug.Log("[CCK :: OpenXR Configurator] If you are troubleshooting, try forcing a reimport using 'Alpha Blend Interactive/Utilities/Refresh CCK'.");
#endif
        }

        public static bool IsImported()
        {
#if CVR_CCK_XRMANAGMENTFOUND && CVR_CCK_OPENXRFOUND
            return true;
#else
            return false;
#endif
        }

        public static bool IsConfigured()
        {
#if CVR_CCK_XRMANAGMENTFOUND && CVR_CCK_OPENXRFOUND
            if (OpenXRSettings.Instance == null 
                || OpenXRSettings.ActiveBuildTargetInstance == null)
                return false; // death (noaching)

            var graphicsAPIs = PlayerSettings.GetGraphicsAPIs(BuildTarget.Android);
            if (graphicsAPIs.Length == 0 
                || graphicsAPIs[0] != GraphicsDeviceType.Vulkan)
                return false;

            bool isRenderModeValid = OpenXRSettings.ActiveBuildTargetInstance.renderMode == OpenXRSettings.RenderMode.SinglePassInstanced;
            bool isTargetArchitectureValid = PlayerSettings.Android.targetArchitectures == AndroidArchitecture.ARM64;
            return isRenderModeValid && isTargetArchitectureValid;
#else
            return false;
#endif
        }

        #region XR Import

        private static void PromptForImport()
        {
            if (!EditorUtility.DisplayDialog("CCK :: OpenXR Required",
                    "The CCK requires OpenXR to be installed when building Android content. Would you like to install OpenXR now?",
                    "Yes", "No"))
                return;

            InstallOpenXR();
        }

        private static void InstallOpenXR()
        {
            // Make sure any other Client operations have completed before calling this method.
            //Client.Add("com.unity.inputsystem@1.7");
            //Client.Add("com.unity.xr.management@4.3");

            // XR Plugin Management is required for OpenXR
            // so it should import as a dependency.
            Client.Add("com.unity.xr.openxr@1.7");
        }

        #endregion

        #region XR Config

#if CVR_CCK_XRMANAGMENTFOUND && CVR_CCK_OPENXRFOUND
        private static readonly Dictionary<BuildTarget, GraphicsDeviceType[]> _buildTargetToGraphicsAPI = new()
        {
            { BuildTarget.StandaloneWindows64, new[] { GraphicsDeviceType.Direct3D11 } },
            { BuildTarget.Android, new[] { GraphicsDeviceType.Vulkan, GraphicsDeviceType.OpenGLES3 } }
        };

        private static void ConfigureXR()
        {
            ConfigureBuildTarget();
            ConfigureOpenXR();
            SetGraphicsAPIs();
            ConfigurePlayerSettings();
            // CloseXRWindow();
        }

        private static void ConfigureBuildTarget()
        {
            PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;
        }

        private static void ConfigureOpenXR()
        {
            // Settings both just in case, but ActiveBuildTargetInstance should be enough
            if (OpenXRSettings.Instance != null) 
                OpenXRSettings.Instance.renderMode = OpenXRSettings.RenderMode.SinglePassInstanced;
            
            if (OpenXRSettings.ActiveBuildTargetInstance != null) 
                OpenXRSettings.ActiveBuildTargetInstance.renderMode = OpenXRSettings.RenderMode.SinglePassInstanced;

            if (!EditorBuildSettings.TryGetConfigObject(XRGeneralSettings.k_SettingsKey,
                    out XRGeneralSettingsPerBuildTarget buildTargetSettings)) return;

            XRGeneralSettings androidSettings = buildTargetSettings.SettingsForBuildTarget(BuildTargetGroup.Android);
            XRGeneralSettings standaloneSettings = buildTargetSettings.SettingsForBuildTarget(BuildTargetGroup.Standalone);

            if (androidSettings != null) // Android
                androidSettings.InitManagerOnStart = false;

            if (standaloneSettings != null) // PC Standalone
                standaloneSettings.InitManagerOnStart = false;
        }

        private static void SetGraphicsAPIs()
        {
            BuildTarget currentTarget = EditorUserBuildSettings.activeBuildTarget;

            if (!_buildTargetToGraphicsAPI.TryGetValue(currentTarget, out var graphicsAPIs))
                return;

            PlayerSettings.SetGraphicsAPIs(currentTarget, graphicsAPIs);
        }

        private static void ConfigurePlayerSettings()
        {
            PlayerSettings[] playerSettingsAsset = Resources.FindObjectsOfTypeAll<PlayerSettings>();
            if (playerSettingsAsset == null)
                return;

            SerializedObject playerSettings = new(playerSettingsAsset);
            SerializedProperty activeInputHandlerProp = playerSettings.FindProperty("activeInputHandler");
            if (activeInputHandlerProp == null) 
                return;

            activeInputHandlerProp.intValue = 2; // Both
            playerSettings.ApplyModifiedPropertiesWithoutUndo();
        }
#endif

        #endregion
    }
}
#endif