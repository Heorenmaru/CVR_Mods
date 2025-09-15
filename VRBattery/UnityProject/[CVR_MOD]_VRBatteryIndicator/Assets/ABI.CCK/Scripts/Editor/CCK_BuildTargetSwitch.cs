using UnityEditor;

namespace ABI.CCK.Scripts.Editor
{
    public static class CCK_BuildTargetSwitch
    {
        [MenuItem("Alpha Blend Interactive/Utilities/Switch Target Platform/PC Windows", false, 250)]
        public static void SwitchToPC()
        {
            EditorUserBuildSettings.SwitchActiveBuildTarget(BuildTargetGroup.Standalone, BuildTarget.StandaloneWindows64);
        }
        
        [MenuItem("Alpha Blend Interactive/Utilities/Switch Target Platform/Android Standalone", false, 250)]
        public static void SwitchToAndroid()
        {
            EditorUserBuildSettings.SwitchActiveBuildTarget(BuildTargetGroup.Android, BuildTarget.Android);
        }
    }
}