using UnityEditor;

namespace ABI.CCK.Scripts.Editor.AssetProcessing
{
    /// <summary>
    /// Cleans up scripting symbols that were added by the CCK when the CCK is deleted.
    /// This is done to prevent Third Party scripts from spewing compile errors when doing a fresh import or uninstall.
    /// </summary>
    public static class CCK_AutoCleanupProcessor
    {
        private const string CCK_ROOT_FOLDER = "Assets/ABI.CCK";

        // All scripting symbols that can be added by the CCK
        private static readonly string[] CCK_SCRIPTING_SYMBOLS =
        {
            "CVR_CCK_EXISTS",
            // third party addons
            "CCK_ADDIN_TRANSLATABLE_TMP",
            "CCK_ADDIN_HIGHLIGHT_PLUS",
            "CCK_ADDIN_MAGICACLOTHSUPPORT"
        };

        internal static void OnProcessDeletedAsset(string deletedAsset)
        {
            if (deletedAsset == CCK_ROOT_FOLDER)
                OnCCKLikelyDeleted();
        }

        private static void OnCCKLikelyDeleted()
        {
            // Remove for BuildTargetGroups
            var selectedBuildTargetGroup = EditorUserBuildSettings.selectedBuildTargetGroup; // just in case somehow user is on unsupported build target group
            var buildTargetGroups = new[] { BuildTargetGroup.Standalone, BuildTargetGroup.Android, selectedBuildTargetGroup };
            foreach (BuildTargetGroup buildTargetGroup in buildTargetGroups)
            {
                var defines = PlayerSettings.GetScriptingDefineSymbolsForGroup(buildTargetGroup);

                foreach (var scriptingSymbol in CCK_SCRIPTING_SYMBOLS)
                    if (defines.Contains(scriptingSymbol)) // remove all CCK scripting symbols
                        defines = defines.Replace(scriptingSymbol, "");

                PlayerSettings.SetScriptingDefineSymbolsForGroup(buildTargetGroup, defines);
            }
            
            // Remove for NamedBuildTarget ???
            // var buildTargets = new[] { NamedBuildTarget.Standalone, NamedBuildTarget.Android };
            // foreach (NamedBuildTarget buildTarget in buildTargets)
            // {
            //     var defines = PlayerSettings.GetScriptingDefineSymbols(buildTarget);
            // 
            //     foreach (var scriptingSymbol in CCK_SCRIPTING_SYMBOLS)
            //         if (defines.Contains(scriptingSymbol)) // remove all CCK scripting symbols
            //             defines = defines.Replace(scriptingSymbol, "");
            // 
            //     PlayerSettings.SetScriptingDefineSymbols(buildTarget, defines);
            // }
        }
    }
}