using System.IO;
using ABI.CCK.Components;
using ABI.CCK.Components.ScriptableObjects;
using UnityEditor.AssetImporters;
using UnityEngine;

namespace ABI.CCK.Scripts.Editor.ScriptedImporter
{
    [ScriptedImporter(1, "lua")]
    public class LuaScriptImporter : UnityEditor.AssetImporters.ScriptedImporter
    {
        public override void OnImportAsset(AssetImportContext ctx)
        {
            CVRLuaScript asset = ScriptableObject.CreateInstance<CVRLuaScript>();
            asset.name = Path.GetFileNameWithoutExtension(ctx.assetPath);
            asset.m_ScriptPath = ctx.assetPath;
            asset.m_ScriptText = File.ReadAllText(ctx.assetPath);
            
            ctx.AddObjectToAsset(CVRLuaScript.kLuaScriptIdentifier, asset, CVRLuaScript.s_LuaScriptIcon);
            ctx.SetMainObject(asset);
            
            //Debug.Log("Imported Lua script: " + ctx.assetPath, asset);
        }
    }
}