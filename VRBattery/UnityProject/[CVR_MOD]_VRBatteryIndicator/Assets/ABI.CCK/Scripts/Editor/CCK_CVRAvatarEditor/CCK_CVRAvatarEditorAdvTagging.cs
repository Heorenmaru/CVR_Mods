#if UNITY_EDITOR
using ABI.CCK.Scripts.Editor;
using UnityEditor;
using UnityEditorInternal;
using UnityEngine;
using static ABI.CCK.Scripts.Editor.SharedComponentGUI;

namespace ABI.CCK.Components
{
    public partial class CCK_CVRAvatarEditor
    {
        private ReorderableList _advTaggingList;
        
        private void Draw_AdvancedTagging()
        {
            using (new ToggleFoldoutScope(ref _guiAdvancedTaggingFoldout, ref _avatar.enableAdvancedTagging, "Advanced Tagging"))
            {
                if (!_guiAdvancedTaggingFoldout) return;

                InitializeTaggingList();
            
                EditorGUILayout.HelpBox("If you are using the Advanced Tagging System, you do not need to Tag your Avatar appropriately if you mark all affected GameObjects here.", MessageType.Info);
                using (new EditorGUI.DisabledGroupScope(!_avatar.enableAdvancedTagging))
                    _advTaggingList.DoLayoutList();
            }
        }

        #region AvatarAdvancedTagging ReorderableList

        private void InitializeTaggingList()
        {
            _advTaggingList ??= new ReorderableList(serializedObject, m_advTaggingListProp, true, true, true, true)
            {
                drawHeaderCallback = OnDrawHeaderTagging,
                drawElementCallback = OnDrawElementTagging,
                elementHeightCallback = OnHeightElementTagging,
                onChangedCallback = OnChangedTagging,
                list = _avatar.advancedTaggingList // This is a hack to make the Utility Menu work
            };
        }
        
        private float OnHeightElementTagging(int index)
        {
            if (index > _avatar.advancedTaggingList.Count) return EditorGUIUtility.singleLineHeight * 2.5f;
            
            return EditorGUIUtility.singleLineHeight * 
                   ((_avatar.advancedTaggingList[index].fallbackGameObject != null && 
                     _avatar.advancedTaggingList[index].fallbackGameObject.activeSelf) ? 5f : 3.75f);
        }

        private void OnDrawHeaderTagging(Rect rect)
        {
            Rect _rect = new Rect(rect.x, rect.y, rect.width, EditorGUIUtility.singleLineHeight);
            GUI.Label(_rect, "Tagged GameObjects");
            EditorGUIExtensions.UtilityMenu(_rect, _advTaggingList);
        }

        private void OnDrawElementTagging(Rect rect, int index, bool isActive, bool isFocused)
        {
            if (index >= _advTaggingList.count) return;
            SerializedProperty advTaggingProp = _advTaggingList.serializedProperty.GetArrayElementAtIndex(index);
            if (advTaggingProp == null || index >= _advTaggingList.serializedProperty.arraySize) 
                return;

            Rect _rect = new (rect.x, rect.y + 2, rect.width, EditorGUIUtility.singleLineHeight);
            float spacing = EditorGUIUtility.singleLineHeight * 1.25f;
            float originalLabelWidth = EditorGUIUtility.labelWidth;
            EditorGUIUtility.labelWidth = 100;
            
            SerializedProperty tagsProp = advTaggingProp.FindPropertyRelative(nameof(CVRAvatarAdvancedTaggingEntry.tags));
            EditorGUI.PropertyField(_rect, tagsProp, new GUIContent("Tags"));
            _rect.y += spacing;

            SerializedProperty gameObjectProp = advTaggingProp.FindPropertyRelative(nameof(CVRAvatarAdvancedTaggingEntry.gameObject));
            EditorGUI.PropertyField(_rect, gameObjectProp, new GUIContent("GameObject"));
            _rect.y += spacing;

            SerializedProperty fallbackGameObjectProp = advTaggingProp.FindPropertyRelative(nameof(CVRAvatarAdvancedTaggingEntry.fallbackGameObject));
            EditorGUI.PropertyField(_rect, fallbackGameObjectProp, new GUIContent("Fallback GO"));
            _rect.y += spacing;

            if (fallbackGameObjectProp.objectReferenceValue != null)
            {
                GameObject fallbackGO = (GameObject)fallbackGameObjectProp.objectReferenceValue;
                if (fallbackGO.activeSelf)
                {
                    EditorGUI.HelpBox(_rect, "The Fallback GameObject needs to be disabled by default!", MessageType.Error);
                    _rect.y += spacing;
                }
            }

            EditorGUIUtility.labelWidth = originalLabelWidth;
        }

        private void OnChangedTagging(ReorderableList list)
        {
            EditorUtility.SetDirty(target);
        }

        #endregion
    }
}
#endif