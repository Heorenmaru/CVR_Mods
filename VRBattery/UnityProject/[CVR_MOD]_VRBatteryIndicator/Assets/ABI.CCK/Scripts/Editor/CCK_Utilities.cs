using System.IO;
using UnityEditor;
using UnityEngine;

namespace ABI.CCK.Scripts.Editor
{
    public static class CCK_Utilities
    {
        #region Gizmo Icons
        
        [MenuItem("Alpha Blend Interactive/Utilities/Gizmo Icons/Show All", false, 250)]
        private static void ShowAllGizmos() => CCK_GizmoFix.SetGizmoIcons(true);
        
        [MenuItem("Alpha Blend Interactive/Utilities/Gizmo Icons/Hide All", false, 250)]
        private static void HideAllGizmos() => CCK_GizmoFix.SetGizmoIcons(false);
        
        #endregion

        #region Layer Names

        [MenuItem("Alpha Blend Interactive/Utilities/Reset Layer Names", false, 260)]
        private static void ForceResetTagManager()
        {
            bool proceed = EditorUtility.DisplayDialog(
                "CCK :: Reset Layer Names",
                "Are you sure you want to reset all layer names? This will reset all custom layer names to the CCK defaults.",
                "Yes",
                "No");

            if (!proceed)
                return;
        
            CCK_Init.ResetTagManager(true);
        }

        #endregion

        #region Debugging
        
        // Debugging if GUI blows tf up on import (this forces recompiling scripts)
        private static readonly string _tempFile = Path.Combine(Application.dataPath, "ABI.CCK", "dummy.cs");
        [MenuItem("Alpha Blend Interactive/Utilities/Refresh CCK", false, 9999)]
        public static void RefreshCCK()
        {
            try
            {
                if (File.Exists(_tempFile))
                {
                    File.Delete(_tempFile);
                    string metaFile = _tempFile + ".meta";
                    if (File.Exists(metaFile))
                        File.Delete(metaFile);
                }
                else
                {
                    File.Create(_tempFile).Close();
                }

                AssetDatabase.Refresh();
            }
            catch (IOException ex)
            {
                Debug.LogError("Error refreshing CCK: " + ex.Message);
            }
        }

        #endregion
    }
}