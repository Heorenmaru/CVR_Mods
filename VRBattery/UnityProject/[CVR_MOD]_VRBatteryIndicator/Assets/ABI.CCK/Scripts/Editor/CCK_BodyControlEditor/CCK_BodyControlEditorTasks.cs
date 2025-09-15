#if UNITY_EDITOR
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using ABI.CCK.Scripts.Editor;
using ABI.CCK.Scripts.Editor.Tools;
using UnityEditor;
using UnityEditorInternal;
using UnityEngine;

namespace ABI.CCK.Components
{
    public partial class CCK_BodyControlEditor
    {
        private ReorderableList _onEnterList;
        private ReorderableList _onExitList;
        private int _selectedEnterEntry = -1;
        private int _selectedExitEntry = -1;
        
        private bool _isInPlayMode;

        private void Initialize_TaskLists()
        {
            _isInPlayMode = Application.isPlaying;

            _onEnterList ??= new ReorderableList(serializedObject, m_EnterTasksProp,
                true, true, !_isInPlayMode, !_isInPlayMode)
            {
                drawHeaderCallback = OnDrawHeaderTaskEnter,
                drawElementCallback = OnDrawElementTaskEnter,
                elementHeightCallback = OnHeightElementTaskEnter,
                onAddCallback = OnAddElement,
                onMouseUpCallback = OnMouseUpEnter,
                //multiSelect = true, // TODO: Can we implement changing multiple tasks at once?
                list = _bodyControl.EnterTasks,
                index = -1
            };

            _onExitList ??= new ReorderableList(serializedObject, m_ExitTasksProp,
                true, true, !_isInPlayMode, !_isInPlayMode)
            {
                drawHeaderCallback = OnDrawHeaderTaskExit,
                drawElementCallback = OnDrawElementTaskExit,
                elementHeightCallback = OnHeightElementTaskExit,
                onAddCallback = OnAddElement,
                onMouseUpCallback = OnMouseUpExit,
                list = _bodyControl.ExitTasks,
                index = -1
            };
        }

        private void Draw_Tasks()
        {
            using (new EditorGUILayout.VerticalScope(new GUIStyle() { padding = new RectOffset(10, 10, 10, 10) }))
            {
                EditorGUILayout.Space();
                _onEnterList.displayAdd = CanAddTarget(_onEnterList.list as IEnumerable<BodyControlTask>);
                _onEnterList.DoLayoutList();

                EditorGUILayout.Space();
                _onExitList.displayAdd = CanAddTarget(_onExitList.list as IEnumerable<BodyControlTask>);
                _onExitList.DoLayoutList();
            }
        }

        #region ReorderableList Callbacks

        // Enter Tasks
        
        private void OnDrawHeaderTaskEnter(Rect rect)
        {
            Rect labelRect = new Rect(rect.x, rect.y, rect.width - 35, EditorGUIUtility.singleLineHeight);
            GUI.Label(labelRect, "On Enter Tasks");
            EditorGUIExtensions.UtilityMenu(rect, _onEnterList, m_EnterTasksProp, 
                appendAdditionalMenuItems: (menuBuilder, list) => { 
                    AppendUtilityMenu(menuBuilder, _onEnterList, true);
                });
        }

        private void OnDrawElementTaskEnter(Rect rect, int index, bool isactive, bool isfocused)
        {
            if (index >= _bodyControl.EnterTasks.Count) return;
            SerializedProperty taskProperty = _onEnterList.serializedProperty.GetArrayElementAtIndex(index);
            if (taskProperty == null || index >= _onEnterList.serializedProperty.arraySize) 
                return;
            
            using (new EditorGUI.DisabledScope(_isInPlayMode))
                RenderTask(rect, _onEnterList, taskProperty);
        }

        private float OnHeightElementTaskEnter(int index)
        {
            float lineHeight = EditorGUIUtility.singleLineHeight * 1.25f;
            if (index < 0 || index >= _bodyControl.EnterTasks.Count) 
                return lineHeight;
            
            BodyControlTask task = _bodyControl.EnterTasks[index];
            return TaskLines(task) * lineHeight;
        }
        
        private void OnMouseUpEnter(ReorderableList list)
        {
            if (list.index != _selectedEnterEntry)
            {
                _selectedEnterEntry = list.index;
            }
            else
            {
                if (list.index == -1)
                    return;
                
                list.Deselect(_selectedEnterEntry);
                list.index = _selectedEnterEntry = -1;
                Repaint();
            }
        }
        
        // Exit Tasks
        
        private void OnDrawHeaderTaskExit(Rect rect)
        {
            Rect labelRect = new Rect(rect.x, rect.y, rect.width - 35, EditorGUIUtility.singleLineHeight);
            GUI.Label(labelRect, "On Exit Tasks");
            EditorGUIExtensions.UtilityMenu(rect, _onExitList, m_ExitTasksProp, 
                appendAdditionalMenuItems: (menuBuilder, list) => { 
                    AppendUtilityMenu(menuBuilder, _onExitList, false);
                });
        }

        private void OnDrawElementTaskExit(Rect rect, int index, bool isactive, bool isfocused)
        {
            if (index >= _bodyControl.ExitTasks.Count) return;
            SerializedProperty taskProperty = _onExitList.serializedProperty.GetArrayElementAtIndex(index);
            if (taskProperty == null || index >= _onExitList.serializedProperty.arraySize) 
                return;
            
            using (new EditorGUI.DisabledScope(_isInPlayMode))
                RenderTask(rect, _onExitList, taskProperty);
        }

        private float OnHeightElementTaskExit(int index)
        {
            float lineHeight = EditorGUIUtility.singleLineHeight * 1.25f;
            if (index < 0 || index >= _bodyControl.ExitTasks.Count) 
                return lineHeight;
            
            BodyControlTask task = _bodyControl.ExitTasks[index];
            return TaskLines(task) * lineHeight;
        }
        
        private void OnMouseUpExit(ReorderableList list)
        {
            if (list.index != _selectedExitEntry)
            {
                _selectedExitEntry = list.index;
            }
            else
            {
                if (list.index == -1)
                    return;
                
                list.Deselect(_selectedExitEntry);
                list.index = _selectedExitEntry = -1;
                Repaint();
            }
        }
        
        // Shared
        
        private void OnAddElement(ReorderableList list)
        {
            int targetIndex = list.count;
            list.serializedProperty.InsertArrayElementAtIndex(targetIndex);
            
            // list.list is the direct list of tasks
            
            int nextTarget = 0; // get the first target that isn't already in use
            while (list.list.Cast<BodyControlTask>().Any(task => task.target == (BodyControlTask.BodyMask)nextTarget))
                nextTarget++;
            
            list.serializedProperty.GetArrayElementAtIndex(targetIndex).FindPropertyRelative(nameof(BodyControlTask.target)).intValue = nextTarget;
            
            // select it
            list.index = targetIndex;
        }

        #endregion
        
        #region BodyControlTask Drawing

        private int TaskLines(BodyControlTask task)
        {
            int length = 1;
            
            if (task.isBlend)
                length += 2;
            
            return length;
        }

        private void RenderTask(Rect rect, ReorderableList list, SerializedProperty taskProperty)
        {
            rect = new Rect(rect.x, rect.y + 2, rect.width, EditorGUIUtility.singleLineHeight);
            
            float spacing = EditorGUIUtility.singleLineHeight * 1.25f;
            float originalLabelWidth = EditorGUIUtility.labelWidth;
            EditorGUIUtility.labelWidth = 100;

            SerializedProperty targetProp = taskProperty.FindPropertyRelative(nameof(BodyControlTask.target));
            SerializedProperty targetWeightProp = taskProperty.FindPropertyRelative(nameof(BodyControlTask.targetWeight));
            SerializedProperty transitionDurationProp = taskProperty.FindPropertyRelative(nameof(BodyControlTask.transitionDuration));
            
            SerializedProperty isBlendProp = taskProperty.FindPropertyRelative(nameof(BodyControlTask.isBlend));
            
            // Draw setting type dropdowns
            EditorGUILayout.BeginHorizontal();
            Rect position = rect;
            float halfWidth = (position.width) / 2 - 2;
            
            // Target Dropdown
            
            // display popup of targets that are not already in use in the list
            var availableTargets = GetAvailableTargets(list.list as IEnumerable<BodyControlTask>, targetProp);
            int selectedIndex = EditorGUI.Popup(new Rect(position.x, position.y, halfWidth, position.height), availableTargets.IndexOf((BodyControlTask.BodyMask)targetProp.intValue), availableTargets.Select(t => t.ToString()).ToArray());
            if (selectedIndex >= 0) targetProp.intValue = (int)availableTargets[selectedIndex];
            
            // Type Dropdown
            int selectedOption = isBlendProp.boolValue switch
            {
                true => 2,
                _ => targetWeightProp.floatValue switch
                {
                    0f => 1, // On
                    1f => 0, // Off
                    _ => 2 // Blend
                }
            };

            selectedOption =
                EditorGUI.Popup(new Rect(position.x + halfWidth + 4, position.y, halfWidth, position.height),
                    selectedOption, new [] { "Enabled", "Disabled" /*, "Blend" */ });
            
            isBlendProp.boolValue = selectedOption == 2;
            targetWeightProp.floatValue = selectedOption switch
            {
                0 => 1f, // On
                1 => 0f, // Off
                _ => targetWeightProp.floatValue // Blend
            };
            
            EditorGUILayout.EndHorizontal();
            
            if (selectedOption == 2)
            {
                rect.y += spacing;
                
                EditorGUI.PropertyField(rect, targetWeightProp);
                rect.y += spacing;
                
                EditorGUI.PropertyField(rect, transitionDurationProp, new GUIContent("Transition (s)"));
            }

            EditorGUIUtility.labelWidth = originalLabelWidth;
        }

        private static bool CanAddTarget(IEnumerable<BodyControlTask> tasks)
        {
            var allTargets = Enum.GetValues(typeof(BodyControlTask.BodyMask)).Cast<BodyControlTask.BodyMask>().ToList();
            var usedTargets = tasks.Select(task => task.target).Distinct().ToList();
            return allTargets.Except(usedTargets).Any();
        }

        private static List<BodyControlTask.BodyMask> GetAvailableTargets(IEnumerable<BodyControlTask> tasks, SerializedProperty targetProp)
        {
            var allTargets = Enum.GetValues(typeof(BodyControlTask.BodyMask)).Cast<BodyControlTask.BodyMask>().ToList();
            var usedTargets = tasks.Select(task => task.target).Distinct().ToList();
            var availableTargets = allTargets.Where(target => !usedTargets.Contains(target)).ToList();

            if (targetProp.intValue >= 0 && !availableTargets.Contains((BodyControlTask.BodyMask)targetProp.intValue))
                availableTargets.Add((BodyControlTask.BodyMask)targetProp.intValue);

            return availableTargets;
        }
        
        #endregion
        
        #region Utility

        private void AppendUtilityMenu(GenericMenuBuilder genericMenuBuilder, ReorderableList list, bool isEnterList)
        {
            bool hasSelectedTask = list.index != -1;
            bool hasTasks = list.count > 0;
            
            genericMenuBuilder.AddMenuItem("Set All Enabled", hasTasks, () => SetAllTasksState(list, 1f));
            genericMenuBuilder.AddMenuItem("Set All Disabled", hasTasks, () => SetAllTasksState(list, 0f));
            
            genericMenuBuilder.AddSeparator();
            
            string moveToOtherListLabel = isEnterList ? "To Exit Task" : "To Enter Task";
            genericMenuBuilder.AddMenuItem(moveToOtherListLabel, hasTasks && hasSelectedTask, 
                                           () => ConvertSelectedTask(list, isEnterList ? _bodyControl.EnterTasks : _bodyControl.ExitTasks, 
                                                                     isEnterList ? _bodyControl.ExitTasks : _bodyControl.EnterTasks));
            
            string convertAllLabel = isEnterList ? "All to Exit Task" : "All to Enter Task";
            genericMenuBuilder.AddMenuItem(convertAllLabel, hasTasks, 
                                           () => ConvertAllTasks(isEnterList ? _bodyControl.EnterTasks : _bodyControl.ExitTasks, 
                                                                 isEnterList ? _bodyControl.ExitTasks : _bodyControl.EnterTasks));
        }

        private void ConvertAllTasks(List<BodyControlTask> fromTasks, List<BodyControlTask> toTasks)
        {
            foreach (BodyControlTask task in fromTasks)
            {
                BodyControlTask existingTask = toTasks.FirstOrDefault(t => t.target == task.target);
                if (existingTask != null)
                {
                    existingTask.targetWeight = task.targetWeight;
                }
                else
                {
                    toTasks.Add(task);
                }
            }
            fromTasks.Clear();
        }

        private void ConvertSelectedTask(ReorderableList list, List<BodyControlTask> fromTasks, List<BodyControlTask> toTasks)
        {
            if (list.index == -1 || list.index >= fromTasks.Count) 
                return;

            BodyControlTask selectedTask = fromTasks[list.index];
            BodyControlTask existingTask = toTasks.FirstOrDefault(t => t.target == selectedTask.target);

            if (existingTask != null)
            {
                existingTask.targetWeight = selectedTask.targetWeight;
            }
            else
            {
                toTasks.Add(selectedTask);
            }

            fromTasks.RemoveAt(list.index);
        }

        private void SetAllTasksState(ReorderableList list, float stateValue)
        {
            IList tasks = list.list;
            foreach (BodyControlTask task in tasks) task.targetWeight = stateValue;
        }

        #endregion
    }
}
#endif