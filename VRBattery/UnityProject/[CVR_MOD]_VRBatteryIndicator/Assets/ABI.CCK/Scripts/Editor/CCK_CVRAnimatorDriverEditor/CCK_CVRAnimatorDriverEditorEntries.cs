#if UNITY_EDITOR
using System;
using ABI.CCK.Scripts;
using ABI.CCK.Scripts.Editor;
using UnityEditor;
using UnityEditorInternal;
using UnityEngine;
using AnimatorControllerParameter = UnityEngine.AnimatorControllerParameter;

namespace ABI.CCK.Components
{
    public partial class CCK_CVRAnimatorDriverEditor
    {
        private ReorderableList _driverEntriesList;
        private int _selectedDriverEntry = -1;
        
        private void InitializeDriverEntriesList()
        {
            if (_driverEntriesList != null)
                return;

            _driverEntriesList ??= new ReorderableList(serializedObject, m_AnimatorsProp, 
                true, true, true, true)
            {
                drawHeaderCallback = OnDrawHeaderDriverEntry,
                onMouseUpCallback = OnMouseUpDriverEntry,
                drawElementCallback = OnDrawElementDriverEntry,
                elementHeightCallback = OnHeightElementDriverEntry,
                onChangedCallback = OnChangedDriverEntry,
                onReorderCallbackWithDetails = OnReorderWithDetailsDriverEntry,
                //list = _driver.animators,
                index = -1
            };
        }
        
        private void DrawEntries()
        {
            InitializeDriverEntriesList();
            _driverEntriesList.displayAdd = _driverEntriesList.count < 16;
            _driverEntriesList.DoLayoutList();
        }
        
        #region ReorderableListDrawing Driver Entries
        
        private void OnDrawHeaderDriverEntry(Rect rect)
        {
            Rect labelRect = new Rect(rect.x, rect.y, rect.width - 35, EditorGUIUtility.singleLineHeight);
            GUI.Label(labelRect, $"Animator Driver Entries ({_driverEntriesList.count} / 16)");
            // our list being made from multiple array properties, the UtilityMenu cannot handle it
            //EditorGUIExtensions.UtilityMenu(rect, _driverEntriesList, m_AnimatorsProp);
        }
        
        private void OnMouseUpDriverEntry(ReorderableList list)
        {
            if (list.index != _selectedDriverEntry)
            {
                _selectedDriverEntry = list.index;
            }
            else
            {
                if (list.index == -1)
                    return;
                
                list.Deselect(_selectedDriverEntry);
                list.index = _selectedDriverEntry = -1;
                Repaint();
            }
        }
        
        private void OnDrawElementDriverEntry(Rect rect, int index, bool isActive, bool isFocused)
        {
            if (index >= _driverEntriesList.count) return;
            SerializedProperty driverEntry = _driverEntriesList.serializedProperty.GetArrayElementAtIndex(index);
            if (driverEntry == null || index >= _driverEntriesList.serializedProperty.arraySize)
                return;

            rect = new Rect(rect.x, rect.y + 2, rect.width, EditorGUIUtility.singleLineHeight);
            float spacing = EditorGUIUtility.singleLineHeight * 1.25f;
            float originalLabelWidth = EditorGUIUtility.labelWidth;
            EditorGUIUtility.labelWidth = 100;

            SerializedProperty parameterValueProp = m_ParameterValuesPropList[index];
            SerializedProperty parameterNameProp = m_AnimatorParametersProp.GetArrayElementAtIndex(index);
            SerializedProperty parameterTypeProp = m_AnimatorParameterTypeProp.GetArrayElementAtIndex(index);
            if (parameterValueProp == null || parameterNameProp == null || parameterTypeProp == null)
                return;
            
            EditorGUI.PropertyField(rect, driverEntry, new GUIContent("Animator"));
            rect.y += spacing;
            
            //EditorGUI.PropertyField(rect, parameterNameProp, new GUIContent("Parameter"));
            parameterNameProp.stringValue = EditorGUIExtensions.AdvancedDropdownInput(rect,
                parameterNameProp.stringValue,
                CVRCommon.GetParametersFromAnimatorAsString((Animator)driverEntry.objectReferenceValue), // has null check
                "Parameter", "No Parameters");
            rect.y += spacing;
            
            EditorGUI.PropertyField(rect, parameterValueProp, new GUIContent("Value"));
            rect.y += spacing;
            
            EditorGUIUtility.labelWidth = originalLabelWidth;
        }

        private float OnHeightElementDriverEntry(int index)
        {
            const float lineModifier = 1.25f;
            const float baseHeight = 3f;
            return baseHeight * lineModifier * EditorGUIUtility.singleLineHeight;
        }
        
        private void OnChangedDriverEntry(ReorderableList list)
        {
            EditorUtility.SetDirty(target);
            serializedObject.ApplyModifiedProperties();
        }
        
        private void OnReorderWithDetailsDriverEntry(ReorderableList list, int oldIndex, int newIndex)
        {
            if (oldIndex < 0 || newIndex < 0 || oldIndex >= m_AnimatorsProp.arraySize || newIndex >= m_AnimatorsProp.arraySize)
                return;
    
            // m_AnimatorsProp is our base property for the reorderable list, so we don't need to move it

            // when moving an element, we have to consider the between properties as well -_-
            if (oldIndex < newIndex) // moving up (we dragged the element down)
                for (int i = oldIndex; i < newIndex; i++) SwapParameterValuesPropList(i, i + 1);
            else // moving down (we dragged the element up)
                for (int i = oldIndex; i > newIndex; i--) SwapParameterValuesPropList(i, i - 1);
            
            EditorUtility.SetDirty(target);
            serializedObject.ApplyModifiedProperties();
            return;

            void SwapParameterValuesPropList(int index1, int index2) 
            {
                m_AnimatorParametersProp.MoveArrayElement(index1, index2);
                m_AnimatorParameterTypeProp.MoveArrayElement(index1, index2);
                (m_ParameterValuesPropList[index1], m_ParameterValuesPropList[index2]) 
                    = (m_ParameterValuesPropList[index2], m_ParameterValuesPropList[index1]);
            }
        }
        
        #endregion
    }
}
#endif