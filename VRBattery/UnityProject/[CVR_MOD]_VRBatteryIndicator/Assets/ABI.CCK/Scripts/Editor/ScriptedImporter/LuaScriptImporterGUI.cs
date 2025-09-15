using ABI.CCK.Components.ScriptableObjects;
using UnityEditor;
using UnityEditor.AssetImporters;
using UnityEngine;

namespace ABI.CCK.Scripts.Editor.ScriptedImporter
{
    [CustomEditor(typeof(LuaScriptImporter))]
    public class LuaScriptImporterGUI: ScriptedImporterEditor
    {
        public override void OnInspectorGUI()
        {
            base.ApplyRevertGUI();

            CVRLuaScript asset = assetTarget as CVRLuaScript;
            if (asset is null)
                return;
            
            // helpbox explaining lua
            EditorGUILayout.HelpBox(
                "Lua is a language supported by ChilloutVR that you can use to easily add scripted behaviours to objects in props, avatars, and worlds.",
                MessageType.Info);
            
            // display button for documentation
            if (GUILayout.Button("Open Documentation"))
                Application.OpenURL("example.com");
        }
    }
}