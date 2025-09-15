using System.IO;
using System.Linq;
using Abi.Newtonsoft.Json;
using Abi.Newtonsoft.Json.Linq;
using UnityEditor;

namespace ABI.CCK.Scripts.Editor.Tools
{
    public static class SetupVSCode
    {
        public const string CVR_STDLIB_LUA_STUBS_PATH = "Assets/ABI.CCK/LuaStubs/Common";
        public const string VSCODE_PATH = ".vscode/settings.json";

        [MenuItem("Alpha Blend Interactive/Scripting/Set Up VSCode", priority = 0)]
        public static void CreateLuaScript()
        {
            bool changed = false;
            JToken cfg = null;
            if (File.Exists(VSCODE_PATH))
            {
                using (StreamReader f = File.OpenText(VSCODE_PATH))
                using (JsonTextReader reader = new JsonTextReader(f))
                {
                    cfg = JToken.ReadFrom(reader);
                }
            }
            else
            {
                changed = true;
            }

            if (cfg == null)
            {
                cfg = new JObject();
                changed = true;
            }

            if (!cfg.Contains("Lua"))
            {
                cfg["Lua"] = new JObject();
                changed = true;
            }

            if (!cfg["Lua"].Contains("workspace"))
            {
                cfg["Lua"]["workspace"] = new JObject();
                changed = true;
            }

            if (!cfg["Lua"]["workspace"].Contains("library") ||
                cfg["Lua"]["workspace"]["library"].Type != JTokenType.Array)
            {
                cfg["Lua"]["workspace"]["library"] = new JArray();
                changed = true;
            }

            var lib = (JArray)cfg["Lua"]["workspace"]["library"];
            var path = new JValue(CVR_STDLIB_LUA_STUBS_PATH);
            if (!lib.Contains(path))
            {
                lib.Add(path);
                changed = true;
            }

            if (changed)
            {
                var pdir = Path.GetDirectoryName(VSCODE_PATH);
                if (pdir != null) Directory.CreateDirectory(pdir);
                using (StreamWriter sw = File.CreateText(VSCODE_PATH))
                using (JsonTextWriter writer = new JsonTextWriter(sw))
                {
                    cfg.WriteTo(writer);
                }
            }

            EditorUtility.DisplayDialog(
                "VSCode Setup Complete",
                "VSCode has been configured to find the LuaLS autocomplete stubs.\n\nYou will need to install the \"sumneko.lua\" package to make use of this feature.",
                "OK");
        }
    }
}