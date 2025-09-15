#if UNITY_EDITOR
using System;
using System.Collections.Generic;
using System.Linq;
using ABI.CCK.Scripts;
using ABI.CCK.Scripts.Editor;
using UnityEditor;
using UnityEditorInternal;
using UnityEngine;

namespace ABI.CCK.Components
{
    public partial class CCK_CVRBlitterEditor
    {
        private ReorderableList _blitterEntriesList;
        private int _selectedblitterEntry = -1;

        private void InitializeBlitterEntriesList()
        {
            if (_blitterEntriesList != null)
                return;

            _blitterEntriesList ??= new ReorderableList(serializedObject, m_RenderTextureProp,
                true, true, true, true)
            {
                drawHeaderCallback = OnDrawHeaderBlitterEntry,
                onMouseUpCallback = OnMouseUpBlitterEntry,
                drawElementCallback = OnDrawElementBlitterEntry,
                elementHeightCallback = OnHeightElementBlitterEntry,
                onChangedCallback = OnChangedBlitterEntry,
                onReorderCallbackWithDetails = OnReorderWithDetailsBlitterEntry,
                onRemoveCallback = OnRemoveBlitterEntry,
                index = -1
            };
        }

        private void DrawEntries()
        {
            InitializeBlitterEntriesList();
            _blitterEntriesList.displayAdd = _blitterEntriesList.count < 6;
            _blitterEntriesList.DoLayoutList();
        }

        #region ReorderableListDrawing Driver Entries

        private void OnDrawHeaderBlitterEntry(Rect rect)
        {
            Rect labelRect = new Rect(rect.x, rect.y, rect.width - 35, EditorGUIUtility.singleLineHeight);
            GUI.Label(labelRect, $"Blitter RandomWriteTargets ({_blitterEntriesList.count} / 6)");
            // our list being made from multiple array properties, the UtilityMenu cannot handle it
            //EditorGUIExtensions.UtilityMenu(rect, _driverEntriesList, m_AnimatorsProp);
        }

        private void OnMouseUpBlitterEntry(ReorderableList list)
        {
            if (list.index != _selectedblitterEntry)
            {
                _selectedblitterEntry = list.index;
            }
            else
            {
                if (list.index == -1)
                    return;

                list.Deselect(_selectedblitterEntry);
                list.index = _selectedblitterEntry = -1;
                Repaint();
            }
        }

        private List<int> GetAvailableIndices()
        {
            var usedIndices = new HashSet<int>();
            for (int i = 0; i < m_IndexProp.arraySize; i++)
            {
                usedIndices.Add(m_IndexProp.GetArrayElementAtIndex(i).intValue);
            }

            var availableIndices = new List<int>();
            for (int i = 2; i < 8; i++)
            {
                if (!usedIndices.Contains(i))
                {
                    availableIndices.Add(i);
                }
            }

            return availableIndices;
        }

        private void OnDrawElementBlitterEntry(Rect rect, int index, bool isActive, bool isFocused)
        {
            if (index >= _blitterEntriesList.count) return;
            SerializedProperty driverEntry = _blitterEntriesList.serializedProperty.GetArrayElementAtIndex(index);
            if (driverEntry == null || index >= _blitterEntriesList.serializedProperty.arraySize)
                return;

            rect = new Rect(rect.x, rect.y + 2, rect.width, EditorGUIUtility.singleLineHeight);
            float spacing = EditorGUIUtility.singleLineHeight * 1.25f;
            float originalLabelWidth = EditorGUIUtility.labelWidth;
            EditorGUIUtility.labelWidth = 100;

            SerializedProperty parameterRenderTextureProp = m_RenderTextureProp.GetArrayElementAtIndex(index);
            SerializedProperty parameterIndexProp = m_IndexProp.GetArrayElementAtIndex(index);
            if (parameterRenderTextureProp == null || parameterIndexProp == null)
                return;

            EditorGUI.PropertyField(rect, parameterRenderTextureProp, new GUIContent("TargetTexture"));

            rect.y += spacing;

            var availableIndices = GetAvailableIndices();
            int selectedIndex = parameterIndexProp.intValue == -1 ? availableIndices[0] : parameterIndexProp.intValue;
            if (!availableIndices.Contains(selectedIndex))
            {
                availableIndices.Add(selectedIndex);
            }

            selectedIndex = EditorGUI.IntPopup(rect, "Index", selectedIndex,
                availableIndices.Select(i => i.ToString()).ToArray(), availableIndices.ToArray());
            parameterIndexProp.intValue = selectedIndex;

            EditorGUIUtility.labelWidth = originalLabelWidth;
        }

        private float OnHeightElementBlitterEntry(int index)
        {
            const float lineModifier = 1.25f;
            const float baseHeight = 2f;
            return baseHeight * lineModifier * EditorGUIUtility.singleLineHeight;
        }

        private void OnChangedBlitterEntry(ReorderableList list)
        {
            EditorUtility.SetDirty(target);
            serializedObject.ApplyModifiedProperties();
        }

        private void OnReorderWithDetailsBlitterEntry(ReorderableList list, int oldIndex, int newIndex)
        {
            if (oldIndex < 0 || newIndex < 0 || oldIndex >= m_RenderTextureProp.arraySize ||
                newIndex >= m_RenderTextureProp.arraySize)
                return;

            // m_RenderTextureProp is our base property for the reorderable list, so we don't need to move it

            // when moving an element, we have to consider the between properties as well -_-
            if (oldIndex < newIndex) // moving up (we dragged the element down)
                for (int i = oldIndex; i < newIndex; i++)
                    SwapParameterValuesPropList(i, i + 1);
            else // moving down (we dragged the element up)
                for (int i = oldIndex; i > newIndex; i--)
                    SwapParameterValuesPropList(i, i - 1);

            EditorUtility.SetDirty(target);
            serializedObject.ApplyModifiedProperties();
            return;

            void SwapParameterValuesPropList(int index1, int index2)
            {
                m_IndexProp.MoveArrayElement(index1, index2);
            }
        }

        private void OnRemoveBlitterEntry(ReorderableList list)
        {
            if (list.index < 0 || list.index >= m_IndexProp.arraySize)
                return;

            m_RenderTextureProp.DeleteArrayElementAtIndex(list.index);

            for (int i = list.index; i < m_IndexProp.arraySize - 1; i++)
            {
                m_IndexProp.MoveArrayElement(i + 1, i);
            }
            m_IndexProp.GetArrayElementAtIndex(m_IndexProp.arraySize - 1).intValue = -1;

            serializedObject.ApplyModifiedProperties();

            // Update the list index
            list.index--;
        }

        #endregion
    }
}
#endif