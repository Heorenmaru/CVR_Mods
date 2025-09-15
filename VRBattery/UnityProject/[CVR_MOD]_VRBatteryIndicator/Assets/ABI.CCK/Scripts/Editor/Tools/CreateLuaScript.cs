
using UnityEditor;

namespace ABI.CCK.Scripts.Editor.Tools
{
    public static class LuaScriptCreator
    {
        private const string kLuaScriptTemplatePath = "Assets/ABI.CCK/Templates/LuaScriptTemplate.lua";
        private const string kLuaScriptDefaultName = "NewLuaScript.lua";
        
        [MenuItem("Assets/Create/CVR Lua Script", priority = 0)]
        public static void CreateLuaScript()
        {
            ProjectWindowUtil.CreateScriptAssetFromTemplateFile(
                kLuaScriptTemplatePath, kLuaScriptDefaultName);
        }
    }
}