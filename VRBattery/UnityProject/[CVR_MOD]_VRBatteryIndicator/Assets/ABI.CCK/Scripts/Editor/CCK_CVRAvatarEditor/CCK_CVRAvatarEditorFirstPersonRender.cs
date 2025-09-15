#if UNITY_EDITOR
using UnityEditor;
using UnityEditorInternal;
using UnityEngine;
using static ABI.CCK.Scripts.Editor.SharedComponentGUI;

namespace ABI.CCK.Components
{
    public partial class CCK_CVRAvatarEditor
    {
        private ReorderableList _fprSettingsList;
        
        private void InitializeFirstPersonRenderList()
        {
            if (_fprSettingsList != null)
                return;

            _fprSettingsList ??= new ReorderableList(serializedObject, m_fprSettingsListProp, true, true, true, true)
            {
                drawHeaderCallback = OnDrawHeaderFPR,
                drawElementCallback = OnDrawElementFPR,
                elementHeightCallback = OnHeightElementFPR,
                onChangedCallback = OnChangedFPR,
                //list = _avatar.fprSettingsList
            };
        }

        private void Draw_FPRSettings()
        {
            if (!shouldDrawFPRMigrationInfo)
                return;
            
            using (new ToggleFoldoutScope(ref _guiFirstPersonRenderSettingsFoldout, ref _avatar.enableCustomFPR, "First Person Render (Deprecated)"))
            {
                if (!_guiFirstPersonRenderSettingsFoldout) return;

                Draw_MigrationInfo();
                
                EditorGUI.BeginDisabledGroup(true);
                InitializeFirstPersonRenderList();
                _fprSettingsList.DoLayoutList();
                EditorGUI.EndDisabledGroup();
            }
        }

        #region ReorderableListDrawing FPR

        private void OnDrawHeaderFPR(Rect rect)
        {
            Rect labelRect = new Rect(rect.x, rect.y, rect.width - 35, EditorGUIUtility.singleLineHeight);
            GUI.Label(labelRect, $"FPR Exclusions ({_fprSettingsList.count})");
            //EditorGUIExtensions.UtilityMenu(rect, _fprSettingsList);
        }

        private void OnChangedFPR(ReorderableList list)
        {
            EditorUtility.SetDirty(target);
        }
        
        private float OnHeightElementFPR(int index)
        {
            return EditorGUIUtility.singleLineHeight * 1.25f;
        }

        private void OnDrawElementFPR(Rect rect, int index, bool isActive, bool isFocused)
        {
            if (index >= _fprSettingsList.count) return;
            SerializedProperty fprSettingsEntry = _fprSettingsList.serializedProperty.GetArrayElementAtIndex(index);
            if (fprSettingsEntry == null || index >= _fprSettingsList.serializedProperty.arraySize) 
                return;

            rect = new Rect(rect.x, rect.y + 2, rect.width, EditorGUIUtility.singleLineHeight);
            
            SerializedProperty visibilityProp = fprSettingsEntry.FindPropertyRelative(nameof(CVRAvatarFPREntry.visibility));
            SerializedProperty transformProp = fprSettingsEntry.FindPropertyRelative(nameof(CVRAvatarFPREntry.transform));

            EditorGUI.PropertyField(new Rect(rect.x, rect.y, rect.width - 60, rect.height), transformProp, GUIContent.none);

            rect.x += rect.width - 55; 
            rect.width = 55; 

            string[] popupOptions = { "Hide", "Show" };
            int visibilityIndex = visibilityProp.intValue;

            visibilityIndex = EditorGUI.Popup(rect, visibilityIndex, popupOptions);

            if (visibilityIndex != visibilityProp.intValue)
                visibilityProp.intValue = visibilityIndex;
        }

        #endregion

        #region FPRExclusion Migration
        
        private bool shouldDrawFPRMigrationInfo => _avatar.fprSettingsList is { Count: > 0 };

        private void Draw_MigrationInfo()
        {
            EditorGUILayout.HelpBox("This feature has been reworked and moved to the new FPRExclusion component.", MessageType.Warning);
            EditorGUILayout.HelpBox("You may migrate your old settings to the new system by clicking the button below. Note: You may need to manually tweak things afterward.", MessageType.Info);
            if (GUILayout.Button("Migrate FPR Settings")) MigrateFPRSettings();
            if (GUILayout.Button("Remove FPR Settings")) RemoveFPRSettings();
        }

        private void MigrateFPRSettings()
        {
            // prompt user
            if (!EditorUtility.DisplayDialog("Migrate FPR Settings", 
                    "This process will autogenerate a GameObject named CCK.FPRExclusions on the root of your avatar containing the new components. This cannot be undone.", "Do it", "No thanks"))
                return;
            
            // convert FPREntries into FPRExclusion components

            var oldFPRSettings = _avatar.fprSettingsList;
            
            // add gameobject to root of avatar
            GameObject fprExclusionRoot = new ("CCK.FPRExclusions");
            fprExclusionRoot.transform.SetParent(_avatar.transform);
            fprExclusionRoot.transform.SetLocalPositionAndRotation(Vector3.zero, Quaternion.identity);
            fprExclusionRoot.transform.localScale = Vector3.one;
            
            foreach (CVRAvatarFPREntry entry in oldFPRSettings)
            {
                if (entry.transform == null) continue; // skip null entries
                
                // create new child object with FPRExclusion component
                GameObject newExclusion = new ("[FPR] " + entry.transform.name, typeof(FPRExclusion));
                newExclusion.transform.SetParent(fprExclusionRoot.transform);
                newExclusion.transform.SetLocalPositionAndRotation(Vector3.zero, Quaternion.identity);
                newExclusion.transform.localScale = Vector3.one;
                
                // set target
                FPRExclusion fprExclusion = newExclusion.GetComponent<FPRExclusion>();
                fprExclusion.target = entry.transform;
                fprExclusion.isShown = entry.visibility;
            }
            
            // remove old settings
            _avatar.fprSettingsList.Clear();
            _avatar.fprSettingsList = null;
            
            // ping new object in hierarchy
            EditorGUIUtility.PingObject(fprExclusionRoot);
        }

        private void RemoveFPRSettings()
        {
            // prompt user
            if (!EditorUtility.DisplayDialog("Remove FPR Settings", 
                "This process will remove all depricated FPR settings from this avatar. This cannot be undone.", "Do it", "No thanks"))
                return;
            
            // remove old settings
            _avatar.fprSettingsList.Clear();
            _avatar.fprSettingsList = null;
        }
        
        #endregion
    }
}
#endif