using System;
using System.Linq;
using ABI.CCK.Components.ScriptableObjects;
using UnityEditor;
using UnityEngine;
using static ABI.CCK.Scripts.Editor.SharedComponentGUI;
using Object = UnityEngine.Object;

namespace ABI.CCK.Components
{
    public partial class CCK_CVRLuaClientBehaviourEditor
    {
        private Vector2 _scrollPosition;

        private void Draw_LuaAsset()
        {
            using (new FoldoutScope(ref _guiLuaAssetFoldout, "Lua Script", s_BoldFoldoutStyle))
            {
                if (!_guiLuaAssetFoldout) return;
                using (new EditorGUI.IndentLevelScope())
                    DrawLuaAsset();
            }
        }

        #region Drawing Methods

        private void DrawLuaAsset()
        {
            if (!DrawScriptAsset())
                return;

            Separator();
            DrawScriptPreview();
        }

        private bool DrawScriptAsset()
        {
            DrawLocalOnly();

            Object luaAsset = EditorGUILayout.ObjectField("Script Asset:", m_LuaAsset.objectReferenceValue, typeof(CVRLuaScript),
                allowSceneObjects: true, null);
            
            if (luaAsset is CVRLuaScript luaScript 
                && m_LuaAsset.objectReferenceValue != luaScript)
            {
                string assetPath = AssetDatabase.GetAssetPath(luaScript);
                if (!string.IsNullOrEmpty(assetPath) && assetPath.EndsWith(".lua", StringComparison.OrdinalIgnoreCase))
                {
                    _baseLuaBehaviour.asset = luaScript;
                    m_LuaAsset.objectReferenceValue = luaScript; // set via serialized property to support undo
                }
            }
            using (new EditorGUI.DisabledScope(true))
                EditorGUILayout.LabelField("Script Path:", _baseLuaBehaviour.ScriptPath);

            if (m_LuaAsset.objectReferenceValue != null) 
                return true;
            
            EditorGUILayout.HelpBox(
                "No linked file. Please drag your LUA file from your project to the field above.",
                MessageType.Error);

            return false;
        }

        private void DrawLocalOnly()
        {
            if (_baseLuaBehaviour.GetComponentInParent<CVRAvatar>() != null) 
            {
                EditorGUILayout.PropertyField(m_LocalOnly, new GUIContent("Run only for Avatar's Wearer"));
                if (!m_LocalOnly.boolValue)
                    EditorGUILayout.HelpBox("This script will run on every player's machine. When unsure keep it enabled.", MessageType.Warning);
            }
            else if (_baseLuaBehaviour.GetComponentInParent<CVRSpawnable>() != null) 
            {
                EditorGUILayout.PropertyField(m_LocalOnly, new GUIContent("Run only for Prop's Spawner"));
                if (!m_LocalOnly.boolValue)
                    EditorGUILayout.HelpBox("This script will run on every player's machine. When unsure keep it enabled.", MessageType.Info);
            }
        }

        private void DrawScriptPreview()
        {
            const float lineHeight = 24;
            int lineCount = CountLines(_baseLuaBehaviour.ScriptText);
            float scrollViewHeight = Mathf.Min(lineCount * lineHeight, 200);

            _scrollPosition = EditorGUILayout.BeginScrollView(_scrollPosition, false, false,
                GUILayout.Width(EditorGUIUtility.currentViewWidth - 30), GUILayout.Height(scrollViewHeight));

            using (new EditorGUI.DisabledScope(true))
            {
                using (new SetIndentLevelScope(0))
                    EditorGUILayout.TextArea(_baseLuaBehaviour.ScriptText, GUILayout.ExpandHeight(true));
            }

            EditorGUILayout.EndScrollView();
        }

        #endregion

        #region Private Methods

        private static int CountLines(string text)
        {
            return string.IsNullOrEmpty(text) 
                ? 0 
                : 1 + text.Count(c => c == '\n');
        }

        #endregion
    }
}