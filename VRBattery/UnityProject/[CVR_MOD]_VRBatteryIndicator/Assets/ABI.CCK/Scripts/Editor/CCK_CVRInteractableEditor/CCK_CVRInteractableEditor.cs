using System;
using System.Collections.Generic;
using System.Reflection;
using ABI.CCK.Scripts.Editor;
using ABI.CCK.Scripts.Editor.Tools;
using UnityEditor;
using UnityEngine;

namespace ABI.CCK.Components
{
    [CustomEditor(typeof(CVRInteractable))]
    public class CCK_CVRInteractableEditor : Editor
    {
        // CVRInteractableAction
        private static readonly string[] s_TimerModes = {"Single", "Repeat", "Deactivate Self"};
        private static readonly string[] s_VariableComparisons = {"Buffer -> Static", "Buffer -> Buffer"};
        private static readonly string[] s_VariableComparators = {"==", ">=", ">", "<", "<=", "!="};
        
        private static readonly (string[], CVRInteractableAction.ActionRegister[]) s_WorldTriggerTypes = EnumFilter
            .GetFilteredEnumValues<CVRInteractableAction.ActionRegister, CVRInteractableAction.AllowWorld>();
        
        private static readonly (string[], CVRInteractableAction.ActionRegister[]) s_PropTriggerTypes = EnumFilter
            .GetFilteredEnumValues<CVRInteractableAction.ActionRegister, CVRInteractableAction.AllowSpawnable>();
        
        // CVRInteractableActionOperation
        private static readonly string[] s_ObjectStates = {"Enable", "Disable", "Toggle"};
        private static readonly string[] s_ArithmeticConstellations = {"Buffer -> static", "Buffer -> Buffer", "Buffer -> Random"};
        private static readonly string[] s_ArithmeticOperators = {"+", "-", "*", "÷", "mod", "pow", "log"};
        private static readonly string[] s_SpawnableUpdateTypes = {"Override", "Add", "Subtract", "Toggle"};
        private static readonly string[] s_ApfSetTypes = {"Static", "Variable Buffer"};
        private static readonly string[] s_ApfSetTypesString = {"Static", "Property"};
        private static readonly string[] s_PlayerTeleportOptions = {"World Up", "Target Up", "Gravity", "None"};
        private static readonly string[] s_DestroyGameObjectOptions = {"Target", "Children"};
        
        private static readonly (string[], CVRInteractableActionOperation.ActionType[]) s_WorldActionTypes = EnumFilter
            .GetFilteredEnumValues<CVRInteractableActionOperation.ActionType, CVRInteractableActionOperation.AllowWorld>();
        
        private static readonly (string[], CVRInteractableActionOperation.ActionType[]) s_PropActionTypes = EnumFilter
            .GetFilteredEnumValues<CVRInteractableActionOperation.ActionType, CVRInteractableActionOperation.AllowSpawnable>();
        
        #region Private Variables

        private CVRInteractable _interactable;
        private bool _isWithinStandaloneProp;

        #endregion
        
        #region Serialized Properties
        
        private SerializedProperty m_TooltipProp;
        private SerializedProperty m_ActionsProp;
        
        private SerializedProperty m_OnEnterSeatProp;
        private SerializedProperty m_OnExitSeatProp;
        
        #endregion
        
        #region Unity Events
        
        private void OnEnable()
        {
            if (target == null) return;
            _interactable = (CVRInteractable)target;

            if (CCK_Tools.FindFirstInstanceInScene<CVRWorld>(_interactable.gameObject.scene) == null)
                _isWithinStandaloneProp = _interactable.GetComponentInParent<CVRSpawnable>() != null;
            
            m_TooltipProp = serializedObject.FindProperty(nameof(CVRInteractable.tooltip));
            m_ActionsProp = serializedObject.FindProperty(nameof(CVRInteractable.actions));
            m_OnEnterSeatProp = serializedObject.FindProperty(nameof(CVRInteractable.onEnterSeat));
            m_OnExitSeatProp = serializedObject.FindProperty(nameof(CVRInteractable.onExitSeat));
        }
        
        public override void OnInspectorGUI()
        {
            if (_interactable == null) 
                return;
            
            serializedObject.Update();
            
            EditorGUILayout.PropertyField(m_TooltipProp);
            
            EditorGUILayout.Space();
            
            Draw_TriggerEntries();

            serializedObject.ApplyModifiedProperties();
        }
        
        #endregion

        #region Drawing Methods
        
        private static bool DrawEntryHeader(SerializedProperty property, SerializedProperty arrayProp, int index, string foldoutHeader = null)
        {
            using (new EditorGUILayout.HorizontalScope("helpbox"))
            {
                // Draw custom foldout arrow
                property.isExpanded = EditorGUILayout.Toggle(property.isExpanded, EditorStyles.foldout, GUILayout.Width(15));
                
                // Draw the foldoutHeader if it exists
                if (foldoutHeader != null)
                {
                    Rect labelRect = EditorGUILayout.GetControlRect();
                    EditorGUI.LabelField(labelRect, foldoutHeader, EditorStyles.boldLabel);
                    if (Event.current.type == EventType.MouseDown && labelRect.Contains(Event.current.mousePosition))
                    {
                        property.isExpanded = !property.isExpanded;
                        Event.current.Use();
                    }
                }
            
                GUILayout.FlexibleSpace();
                
                using (new EditorGUILayout.HorizontalScope(GUILayout.ExpandWidth(false)))
                {
                    // Move Up
                    GUI.enabled = index > 0;
                    if (GUILayout.Button("↑", GUILayout.Width(24)) && index > 0)
                        arrayProp.MoveArrayElement(index, index - 1);
                
                    // Move Down
                    GUI.enabled = index < arrayProp.arraySize - 1;
                    if (GUILayout.Button("↓", GUILayout.Width(24)) && index < arrayProp.arraySize - 1)
                        arrayProp.MoveArrayElement(index, index + 1);
                    
                    GUI.enabled = true;
                }
                
                // Remove
                if (GUILayout.Button("×", GUILayout.Width(24)))
                {
                    arrayProp.DeleteArrayElementAtIndex(index);
                    return true;
                }
                
                return false;
            }
        }
        
        private static void DrawEnumPopup<TEnum>(
            string label,
            SerializedProperty enumProp,
            (string[], TEnum[]) standaloneOptions,
            (string[], TEnum[]) worldOptions,
            bool isStandaloneProp)
            where TEnum : struct, Enum
        {
            TEnum enumValue = (TEnum)(object)enumProp.intValue;
            (string[] names, TEnum[] values) options = isStandaloneProp ? standaloneOptions : worldOptions;

            int selectedIndex = Array.IndexOf(options.values, enumValue);
            bool isValid = selectedIndex >= 0;

            var displayNames = new List<string>(options.names);
            var displayValues = new List<TEnum>(options.values);

            if (!isValid)
            {
                string invalidLabel = $"Invalid: {enumValue.ToString()}";
                displayNames.Insert(0, invalidLabel);
                displayValues.Insert(0, enumValue);
                selectedIndex = 0;
            }

            EditorGUI.BeginChangeCheck();
            //int newSelectedIndex = EditorGUILayout.Popup(label, selectedIndex, displayNames.ToArray());
            
            int newSelectedIndex = EditorGUIExtensions.CustomPopup(EditorGUILayout.GetControlRect(),
                label,
                selectedIndex,
                displayNames.ToArray(),
                label);
            
            if (EditorGUI.EndChangeCheck() && (isValid || newSelectedIndex != 0)) enumProp.intValue = Convert.ToInt32(displayValues[newSelectedIndex]);
            if (!isValid) EditorGUILayout.HelpBox($"The current {label.ToLower()} is invalid for this interactable context.", MessageType.Warning);
        }
        
        #region Draw Trigger Entries
        
        private void Draw_TriggerEntries()
        {
            if (GUILayout.Button("Add Trigger"))
            {
                m_ActionsProp.AddWithDefaults(typeof(CVRInteractableAction));
                return; // exit early, drawing now will reset the properties we just set
            }
            if (m_ActionsProp.arraySize == 0) return;
            EditorGUILayout.BeginVertical("box");
            for (int i = 0; i < m_ActionsProp.arraySize; i++)
            {
                SerializedProperty entry = m_ActionsProp.GetArrayElementAtIndex(i);
                
                SerializedProperty actionTypeProp = entry.FindPropertyRelative(nameof(CVRInteractableAction.actionType));
                string selectedActionString = actionTypeProp.enumValueIndex >= 0 && actionTypeProp.enumValueIndex < actionTypeProp.enumDisplayNames.Length
                    ? actionTypeProp.enumDisplayNames[actionTypeProp.enumValueIndex]
                    : "Invalid";
                
                SerializedProperty operationsProp = entry.FindPropertyRelative(nameof(CVRInteractableAction.operations));
                int operationCount = operationsProp.arraySize;
                
                string foldoutHeader = $"{selectedActionString} ({operationCount} Actions)";

                bool wasRemoved = DrawEntryHeader(entry, m_ActionsProp, i, foldoutHeader);
                if (wasRemoved) return; // exit early if the entry was removed
                if (!entry.isExpanded) continue; // skip drawing the entry if it's not expanded
                
                EditorGUILayout.BeginVertical("GroupBox");
                Draw_TriggerEntry(entry);
                EditorGUILayout.EndVertical();
            }
            EditorGUILayout.EndVertical();
            return;
            #region Trigger Entry Drawing
            void Draw_TriggerEntry(SerializedProperty entry)
            {
                // Get all serialized properties for this entry
                #region Serialized Property Getters

                SerializedProperty operations = entry.FindPropertyRelative(nameof(CVRInteractableAction.operations));
                
                SerializedProperty actionTypeProp = entry.FindPropertyRelative(nameof(CVRInteractableAction.actionType));
                SerializedProperty execTypeProp = entry.FindPropertyRelative(nameof(CVRInteractableAction.execType));
                
                SerializedProperty delayProp = entry.FindPropertyRelative(nameof(CVRInteractableAction.delay));
                SerializedProperty layerMaskProp = entry.FindPropertyRelative(nameof(CVRInteractableAction.layerMask));
                
                SerializedProperty floatValProp = entry.FindPropertyRelative(nameof(CVRInteractableAction.floatVal));
                SerializedProperty floatVal2Prop = entry.FindPropertyRelative(nameof(CVRInteractableAction.floatVal2));
                SerializedProperty floatVal3Prop = entry.FindPropertyRelative(nameof(CVRInteractableAction.floatVal3));
                
                SerializedProperty boolValProp = entry.FindPropertyRelative(nameof(CVRInteractableAction.boolVal));
                SerializedProperty boolVal2Prop = entry.FindPropertyRelative(nameof(CVRInteractableAction.boolVal2));
                
                SerializedProperty stringValProp = entry.FindPropertyRelative(nameof(CVRInteractableAction.stringVal));
                
                SerializedProperty varBufferValProp = entry.FindPropertyRelative(nameof(CVRInteractableAction.varBufferVal));
                SerializedProperty varBufferVal2Prop = entry.FindPropertyRelative(nameof(CVRInteractableAction.varBufferVal2));
                
                SerializedProperty allowedPointerProp = entry.FindPropertyRelative(nameof(CVRInteractableAction.allowedPointer));
                SerializedProperty allowedTypesProp = entry.FindPropertyRelative(nameof(CVRInteractableAction.allowedTypes));
                SerializedProperty specificParticleSystemsProp = entry.FindPropertyRelative(nameof(CVRInteractableAction.specificParticleSystems));

                SerializedProperty interactionFilterProp = entry.FindPropertyRelative(nameof(CVRInteractableAction.interactionFilter));
                SerializedProperty interactionInputProp = entry.FindPropertyRelative(nameof(CVRInteractableAction.interactionInput));
                SerializedProperty interactionInputModifierProp = entry.FindPropertyRelative(nameof(CVRInteractableAction.interactionInputModifier));

                #endregion
                
                //EditorGUILayout.PropertyField(actionTypeProp);
                DrawEnumPopup(
                    "Trigger Type:",
                    actionTypeProp,
                    s_PropTriggerTypes,
                    s_WorldTriggerTypes,
                    _isWithinStandaloneProp);

                #region Draw Trigger-Shared Fields
                
                // Draw broadcast type dropdown if on world (execTypeProp), unless its an APF trigger for some reason
                bool isApf = actionTypeProp.intValue 
                    is (int)CVRInteractableAction.ActionRegister.OnAPFTrigger
                    or (int)CVRInteractableAction.ActionRegister.OnAPFBoolChange
                    or (int)CVRInteractableAction.ActionRegister.OnAPFIntChange
                    or (int)CVRInteractableAction.ActionRegister.OnAPFFloatChange
                    or (int)CVRInteractableAction.ActionRegister.OnAPFStringChange;
                
                if (isApf)
                {
                    EditorGUILayout.PropertyField(stringValProp, new GUIContent("Key:"));
                }
                else
                {
                    // is fine to hide when standalone instead of enforcing value, as client will set the type to LocalNotNetworked on filter
                    if (!_isWithinStandaloneProp) EditorGUILayout.PropertyField(execTypeProp, new GUIContent("Broadcast Type:"));
                    EditorGUILayout.PropertyField(delayProp, new GUIContent("Delay (Seconds):"));
                }
                
                #endregion

                #region Draw Trigger-Specific Fields
                
                switch (actionTypeProp.intValue)
                {
                    // Controller interaction
                    case (int) CVRInteractableAction.ActionRegister.OnInteractDown:
                    case (int) CVRInteractableAction.ActionRegister.OnInteractUp:
                    case (int) CVRInteractableAction.ActionRegister.OnHoverEnter:
                    case (int) CVRInteractableAction.ActionRegister.OnHoverExit:
                        EditorGUILayout.PropertyField(floatValProp, new GUIContent("Distance:"));
                        break;
                    
                    // Collider / Trigger interaction
                    case (int) CVRInteractableAction.ActionRegister.OnTriggerEnter:
                    case (int) CVRInteractableAction.ActionRegister.OnTriggerExit:
                    case (int) CVRInteractableAction.ActionRegister.OnColliderEnter:
                    case (int) CVRInteractableAction.ActionRegister.OnColliderExit:
                        EditorGUILayout.PropertyField(layerMaskProp, new GUIContent("Layer Mask:"));
                        break;
                    
                    // Player Trigger / Collider interaction
                    case (int) CVRInteractableAction.ActionRegister.OnPlayerTriggerEnter:
                    case (int) CVRInteractableAction.ActionRegister.OnPlayerTriggerExit:
                    case (int) CVRInteractableAction.ActionRegister.OnPlayerColliderEnter:
                    case (int) CVRInteractableAction.ActionRegister.OnPlayerColliderExit:
                        EditorGUILayout.PropertyField(boolValProp, new GUIContent("Local Player:"));
                        EditorGUILayout.PropertyField(boolVal2Prop, new GUIContent("Remote Player:"));
                        if (!boolValProp.boolValue && !boolVal2Prop.boolValue) 
                            EditorGUILayout.HelpBox("At least one player must be selected.", MessageType.Error);
                        break;
                    
                    // Timer
                    case (int) CVRInteractableAction.ActionRegister.OnTimer:
                        EditorGUILayout.PropertyField(floatValProp, new GUIContent("Invoke Rate (Seconds):"));
                        floatVal2Prop.floatValue = EditorGUILayout.Popup("Timer Mode:", (int)floatVal2Prop.floatValue, s_TimerModes);
                        break;
                    
                    // Variable Buffer Update
                    case (int) CVRInteractableAction.ActionRegister.OnVariableBufferUpdate:
                        EditorGUILayout.PropertyField(varBufferValProp, new GUIContent("Value:"));
                        break;
                    
                    // Variable Buffer Comparison
                    case (int) CVRInteractableAction.ActionRegister.OnVariableBufferComparision:
                        floatValProp.floatValue = EditorGUILayout.Popup( "Type:", (int)floatValProp.floatValue, s_VariableComparisons);
                        varBufferValProp.objectReferenceValue = EditorGUILayout.ObjectField("Value 1:", varBufferValProp.objectReferenceValue, typeof(CVRVariableBuffer), true);
                        
                        floatVal2Prop.floatValue = EditorGUILayout.Popup("Comparator:", (int)floatVal2Prop.floatValue, s_VariableComparators);
                        
                        if (floatValProp.floatValue == 0) floatVal3Prop.floatValue = EditorGUILayout.FloatField("Value 2:", floatVal3Prop.floatValue);
                        else
                            varBufferVal2Prop.objectReferenceValue = EditorGUILayout.ObjectField("Value 2:", varBufferVal2Prop.objectReferenceValue, typeof(CVRVariableBuffer), true);
                        break;
                    
                    // Cron
                    case (int) CVRInteractableAction.ActionRegister.OnCron:
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Cron Expression:"));
                        break;
                    
                    // TODO: This is not actually implemented on-client
                    // World Trigger
                    case (int) CVRInteractableAction.ActionRegister.OnWorldTrigger:
                        EditorGUILayout.PropertyField(floatValProp, new GUIContent("Trigger Index:"));
                        EditorGUILayout.HelpBox("This trigger is not yet implemented.", MessageType.Warning);
                        break;
                    
                    // Particle Hit
                    case (int) CVRInteractableAction.ActionRegister.OnParticleHit:
                        Rect particleRect = EditorGUILayout.GetControlRect(false, EditorGUI.GetPropertyHeight(specificParticleSystemsProp));
                        EditorGUI.PropertyField(new Rect(particleRect.x + 15f, particleRect.y, particleRect.width - 19f, particleRect.height), specificParticleSystemsProp,
                            new GUIContent("Specific Particle Systems:"));
                        break;
                    
                    // Pointer Interaction
                    case (int) CVRInteractableAction.ActionRegister.OnPointerEnter:
                    case (int) CVRInteractableAction.ActionRegister.OnPointerExit:
                        Rect pointerRect = EditorGUILayout.GetControlRect(false, EditorGUI.GetPropertyHeight(allowedPointerProp));
                        EditorGUI.PropertyField(new Rect(pointerRect.x + 15f, pointerRect.y, pointerRect.width - 19f, pointerRect.height), allowedPointerProp,
                            new GUIContent("Allowed Pointers:"));
                        Rect typesRect = EditorGUILayout.GetControlRect(false, EditorGUI.GetPropertyHeight(allowedTypesProp));
                        EditorGUI.PropertyField(new Rect(typesRect.x + 15f, typesRect.y, typesRect.width - 19f, typesRect.height), allowedTypesProp,
                            new GUIContent("Allowed Types:"));
                        break;
                    
                    // Input Interaction
                    case (int) CVRInteractableAction.ActionRegister.OnInputDown:
                    case (int) CVRInteractableAction.ActionRegister.OnInputUp:
                        EditorGUILayout.PropertyField(interactionFilterProp, new GUIContent("Interaction Filter:"));
                        EditorGUILayout.PropertyField(interactionInputProp, new GUIContent("Interaction Input:"));
                        EditorGUILayout.PropertyField(interactionInputModifierProp, new GUIContent("Interaction Input Modifier:"));
                        break;
                    
                    // Visible / Invisible
                    case (int) CVRInteractableAction.ActionRegister.OnBecameVisible:
                    case (int) CVRInteractableAction.ActionRegister.OnBecameInvisible:
                        if (_interactable != null && !_interactable.TryGetComponent(out Renderer _))
                            EditorGUILayout.HelpBox("No Renderer found on this GameObject. A renderer is required for this trigger.", MessageType.Error);
                        break;
                    
                    // State Machine Callbacks
                    case (int) CVRInteractableAction.ActionRegister.OnStateMachineEnter:
                    case (int) CVRInteractableAction.ActionRegister.OnStateMachineExit:
                        if (_interactable != null && _interactable.GetComponentsInParent<Animator>() == null)
                            EditorGUILayout.HelpBox("No Animator found on this GameObject or its parents. An Animator is required for this trigger.", MessageType.Error);
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("State Tag:", "The tag of the state to trigger on. Leave empty to trigger on any state."));
                        break;
                }
                
                #endregion
                
                SharedComponentGUI.Separator();
                Draw_OperationEntries(operations, entry);
            }
            #endregion
        }
        
        #endregion
        
        #region Draw Operation Entries
        
        private void Draw_OperationEntries(SerializedProperty property, SerializedProperty parentProperty)
        {
            if (GUILayout.Button("Add Action"))
            {
                property.AddWithDefaults(typeof(CVRInteractableActionOperation));
                return; // exit early, drawing now will reset the properties we just set
            }
            if (property.arraySize == 0) return;
            EditorGUILayout.BeginVertical("box");
            for (int i = 0; i < property.arraySize; i++)
            {
                SerializedProperty entry = property.GetArrayElementAtIndex(i);
                
                SerializedProperty operationTypeProp = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.type));
                string selectedOperationString = operationTypeProp.enumValueIndex >= 0 && operationTypeProp.enumValueIndex < operationTypeProp.enumDisplayNames.Length
                    ? operationTypeProp.enumDisplayNames[operationTypeProp.enumValueIndex]
                    : "Invalid";
                
                string foldoutHeader = $"{selectedOperationString}";
                
                bool wasRemoved = DrawEntryHeader(entry, property, i, foldoutHeader);
                if (wasRemoved) return; // exit early if the entry was removed
                if (!entry.isExpanded) continue; // skip drawing the entry if it's not expanded
                
                EditorGUILayout.BeginVertical("GroupBox");
                Draw_OperationEntry(entry);
                EditorGUILayout.EndVertical();
            }
            EditorGUILayout.EndVertical();
            return;
            #region Operation Entry Drawing

            void Draw_OperationEntry(SerializedProperty entry)
            {
                #region Serialized Property Getters

                SerializedProperty typeProp = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.type));
                SerializedProperty targetsProp = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.targets));

                SerializedProperty gameObjectValProp = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.gameObjectVal));

                SerializedProperty floatValProp = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.floatVal));
                SerializedProperty floatVal2Prop = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.floatVal2));
                SerializedProperty floatVal3Prop = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.floatVal3));
                SerializedProperty floatVal4Prop = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.floatVal4));
                
                SerializedProperty boolValProp = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.boolVal));
                SerializedProperty boolVal2Prop = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.boolVal2));

                SerializedProperty stringValProp = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.stringVal));
                SerializedProperty stringVal2Prop = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.stringVal2));
                SerializedProperty stringVal3Prop = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.stringVal3));
                SerializedProperty stringVal4Prop = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.stringVal4));

                SerializedProperty varBufferValProp = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.varBufferVal));
                SerializedProperty varBufferVal2Prop = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.varBufferVal2));
                SerializedProperty varBufferVal3Prop = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.varBufferVal3));

                SerializedProperty animationValProp = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.animationVal));
                SerializedProperty customEventProp = entry.FindPropertyRelative(nameof(CVRInteractableActionOperation.customEvent));

                #endregion

                // As many fields are recycled between operation types, we need to reset them when the type changes
                
                int cachedType = typeProp.intValue;
                DrawEnumPopup(
                    "Action Type:",
                    typeProp,
                    s_PropActionTypes,
                    s_WorldActionTypes,
                    _isWithinStandaloneProp);
                
                if (cachedType != typeProp.intValue)
                {
                    cachedType = typeProp.intValue; // Cache the new type
                    
                    entry.SetDefaultValuesForType(typeof(CVRInteractableActionOperation));
                    targetsProp.ClearArray(); // TODO: figure out why SetDefaultValuesForType doesn't reset this
                    
                    // ensure one target is always present
                    targetsProp.arraySize = 1;
                    
                    typeProp.intValue = cachedType; // Set the new type back
                    entry.serializedObject.ApplyModifiedProperties(); // Apply the changes to the serialized object
                }
                
                switch (typeProp.intValue)
                {
                    case (int) CVRInteractableActionOperation.ActionType.SetGameObjectActive:
                        EditorGUILayout.HelpBox("This will set the active state of the target GameObjects.", MessageType.None);
                        DrawTargetsProp();
                        
                        floatValProp.floatValue = EditorGUILayout.Popup("Set GameObject State:", (int)floatValProp.floatValue, s_ObjectStates);
                        break;

                    case (int) CVRInteractableActionOperation.ActionType.SetComponentActive:
                        EditorGUILayout.HelpBox("This will set the active state of the defined component on the target GameObjects.", MessageType.None);
                        DrawTargetsProp();

                        // Displays the first targets components in a popup to choose from, client then sets active state of every instance
                        // of that component on all targets when running the action
                        SerializedProperty firstTargetProp = targetsProp.arraySize > 0 ? targetsProp.GetArrayElementAtIndex(0) : null;
                        if (firstTargetProp is { objectReferenceValue: GameObject gameObj })
                        {
                            var components = gameObj.GetComponents<Component>();
                            var componentNames = new List<string> { "- none -" };
                            var componentTypes = new List<Type> { null };

                            int selectedIndex = 0;
                            for (int i = 1; i < components.Length; i++) // Skip first component (Transform)
                            {
                                Type type = components[i].GetType(); // Only components once in popup, even if multiple instances on target
                                if (!componentNames.Contains(type.Name)) componentNames.Add(type.Name);
                                if (!componentTypes.Contains(type)) componentTypes.Add(type);
                                if (stringValProp.stringValue == type.AssemblyQualifiedName) selectedIndex = i;
                            }

                            int newIndex = EditorGUILayout.Popup("Component Type:", selectedIndex, componentNames.ToArray());
                            stringValProp.stringValue = newIndex > 0 ? componentTypes[newIndex].AssemblyQualifiedName : null;
                        }

                        floatValProp.floatValue = EditorGUILayout.Popup("Set Component State:", (int)floatValProp.floatValue, s_ObjectStates);
                        if (stringValProp.stringValue != null) DrawWarningIfMissingRequiredComponentInTargets(Type.GetType(stringValProp.stringValue));
                        break;

                    case (int) CVRInteractableActionOperation.ActionType.SetAnimatorFloatValue:
                        EditorGUILayout.HelpBox(
                            "This will set the value of the defined float parameter on the first Animator found on the target GameObjects.",
                            MessageType.None);
                        DrawTargetsProp();
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Parameter Name:"));
                        EditorGUILayout.PropertyField(floatValProp, new GUIContent("Value:"));
                        DrawWarningIfMissingRequiredComponentInTargets(typeof(Animator));
                        break;
                    case (int) CVRInteractableActionOperation.ActionType.SetAnimatorBoolValue:
                        EditorGUILayout.HelpBox(
                            "This will set the value of the defined bool parameter on the first Animator found on the target GameObjects.",
                            MessageType.None);
                        DrawTargetsProp();
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Parameter Name:"));
                        EditorGUILayout.PropertyField(boolValProp, new GUIContent("Value:"));
                        DrawWarningIfMissingRequiredComponentInTargets(typeof(Animator));
                        break;
                    case (int) CVRInteractableActionOperation.ActionType.SetAnimatorIntValue:
                        EditorGUILayout.HelpBox(
                            "This will set the value of the defined int parameter on the first Animator found on all target GameObjects.",
                            MessageType.None);
                        DrawTargetsProp();
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Parameter Name:"));
                        EditorGUILayout.PropertyField(floatValProp, new GUIContent("Value:"));
                        DrawWarningIfMissingRequiredComponentInTargets(typeof(Animator));
                        break;
                    case (int) CVRInteractableActionOperation.ActionType.SetAnimatorTrigger:
                        EditorGUILayout.HelpBox(
                            "This will set the referenced Animator trigger parameter on the target GameObjects. Triggers are just fancy bools, so you can use SetAnimatorBoolValue if you need to disarm a set trigger.",
                            MessageType.None);
                        DrawTargetsProp();
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Parameter Name:"));
                        DrawWarningIfMissingRequiredComponentInTargets(typeof(Animator));
                        break;

                    case (int) CVRInteractableActionOperation.ActionType.SpawnObject:
                        EditorGUILayout.HelpBox(
                            "This will instantiate (spawn) the referenced GameObjects as children of the target GameObject. Can be Scene or Prefab references. Leave Target Parent Object null to instantiate at Scene origin.",
                            MessageType.None);
                        DrawTargetsProp(new GUIContent("Objects"));
                        EditorGUILayout.PropertyField(gameObjectValProp, new GUIContent("Target Parent Object:"));
                        EditorGUILayout.PropertyField(boolValProp, new GUIContent("Auto Pickup:"));
                        EditorGUILayout.PropertyField(boolVal2Prop, new GUIContent("Auto Attach:"));
                        break;

                    case (int) CVRInteractableActionOperation.ActionType.TeleportPlayer:
                        EditorGUILayout.HelpBox("This will teleport the player to the referenced GameObjects position and rotation.", MessageType.None);
                        floatValProp.floatValue = EditorGUILayout.Popup("Player Up Alignment:", (int)floatValProp.floatValue, s_PlayerTeleportOptions);
                        EditorGUILayout.PropertyField(gameObjectValProp, new GUIContent("Target Location:"));
                        EditorGUILayout.PropertyField(boolValProp, new GUIContent("Relative Teleport:"));
                        EditorGUILayout.PropertyField(boolVal2Prop, new GUIContent("Preserve Velocity:"));
                        break;
                    
                    case (int) CVRInteractableActionOperation.ActionType.TeleportObject:
                        EditorGUILayout.HelpBox("This will move the target GameObjects to the referenced GameObjects position and rotation.", MessageType.None);
                        DrawTargetsProp();
                        EditorGUILayout.PropertyField(gameObjectValProp, new GUIContent("Target Location:"));
                        break;
                    
                    case (int) CVRInteractableActionOperation.ActionType.ToggleAnimatorBoolValue:
                        EditorGUILayout.HelpBox("This will toggle the value of the defined bool parameter on the first Animator found on the target GameObjects.", MessageType.None);
                        DrawTargetsProp();
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Parameter Name:"));
                        DrawWarningIfMissingRequiredComponentInTargets(typeof(Animator));
                        break;
                    
                    case (int) CVRInteractableActionOperation.ActionType.SetAnimatorFloatRandom:
                        EditorGUILayout.HelpBox("This will set the value of the defined float parameter on the first Animator found on the target GameObjects to a random value between the defined min and max.", MessageType.None);
                        DrawTargetsProp();
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Parameter Name:"));
                        EditorGUILayout.PropertyField(floatValProp, new GUIContent("Min Value:"));
                        EditorGUILayout.PropertyField(floatVal2Prop, new GUIContent("Max Value:"));
                        DrawWarningIfMissingRequiredComponentInTargets(typeof(Animator));
                        break;
                    case (int) CVRInteractableActionOperation.ActionType.SetAnimatorBoolRandom:
                        EditorGUILayout.HelpBox("This will set the value of the defined bool parameter on the first Animator found on the target GameObjects to a random value.", MessageType.None);
                        DrawTargetsProp();
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Parameter Name:"));
                        EditorGUILayout.PropertyField(floatValProp, new GUIContent("True Chance (0.0 - 1.0):"));
                        DrawWarningIfMissingRequiredComponentInTargets(typeof(Animator));
                        break;
                    case (int) CVRInteractableActionOperation.ActionType.SetAnimatorIntRandom: // There is no rounding involved, just raw cast?
                        EditorGUILayout.HelpBox("This will set the value of the defined int parameter on the first Animator found on the target GameObjects to a random value between the defined min and max.", MessageType.None);
                        DrawTargetsProp();
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Parameter Name:"));
                        EditorGUILayout.PropertyField(floatValProp, new GUIContent("Min Value:"));
                        EditorGUILayout.PropertyField(floatVal2Prop, new GUIContent("Max Value:"));
                        DrawWarningIfMissingRequiredComponentInTargets(typeof(Animator));
                        break;
                    
                    case (int) CVRInteractableActionOperation.ActionType.SetAnimatorFloatByVar:
                        EditorGUILayout.HelpBox("This will set the value of the defined float parameter on the first Animator found on the target GameObjects to the value of the defined Variable Buffer.", MessageType.None);
                        DrawTargetsProp();
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Parameter Name:"));
                        EditorGUILayout.PropertyField(varBufferValProp, new GUIContent("Variable Buffer Value:"));
                        DrawWarningIfMissingRequiredComponentInTargets(typeof(Animator));
                        break;
                    case (int) CVRInteractableActionOperation.ActionType.SetAnimatorIntByVar:
                        EditorGUILayout.HelpBox("This will set the value of the defined int parameter on the first Animator found on the target GameObjects to the value of the defined Variable Buffer.", MessageType.None);
                        DrawTargetsProp();
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Parameter Name:"));
                        EditorGUILayout.PropertyField(varBufferValProp, new GUIContent("Variable Buffer Value:"));
                        DrawWarningIfMissingRequiredComponentInTargets(typeof(Animator));
                        break;
                    
                    case (int) CVRInteractableActionOperation.ActionType.VariableBufferArithmetic:
                        EditorGUILayout.HelpBox("This will perform the defined arithmetic operation on the defined Variable Buffers and store the result in the defined Variable Buffer.", MessageType.None);
                        floatValProp.floatValue = EditorGUILayout.Popup("Type:", (int)floatValProp.floatValue, s_ArithmeticConstellations);
                        EditorGUILayout.PropertyField(varBufferValProp, new GUIContent("Value 1:"));
                        floatVal2Prop.floatValue = EditorGUILayout.Popup("Operator:", (int)floatVal2Prop.floatValue, s_ArithmeticOperators);
                        switch ((int) floatValProp.floatValue)
                        {
                            case 0:
                                EditorGUILayout.PropertyField(floatVal3Prop, new GUIContent("Value 2:"));
                                break;
                            case 1:
                                EditorGUILayout.PropertyField(varBufferVal2Prop, new GUIContent("Value 2:"));
                                break;
                            case 2:
                                EditorGUILayout.PropertyField(floatVal3Prop, new GUIContent("Min:"));
                                EditorGUILayout.PropertyField(floatVal4Prop, new GUIContent("Max:"));
                                break;
                        }
                        EditorGUILayout.PropertyField(varBufferVal3Prop, new GUIContent("Result:"));
                        break;
                    
                    case (int) CVRInteractableActionOperation.ActionType.DisplayWorldDetailPage:
                        EditorGUILayout.HelpBox("This will display the World Detail Page for the referenced World ID. Note that this action is locked behind a 3s global timeout.", MessageType.None);
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("World ID:"));
                        DrawWarningIfGUIDIsInvalid(stringValProp.stringValue);
                        break;
                    case (int) CVRInteractableActionOperation.ActionType.DisplayInstanceDetailPage: // how tf do you get the instance id as a normal user? they dont persist either??
                        EditorGUILayout.HelpBox("This will display the Instance Detail Page for the referenced Instance ID. Note that this action is locked behind a 3s global timeout.", MessageType.None);
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Instance ID:"));
                        DrawWarningIfGUIDIsInvalid(stringValProp.stringValue);
                        break;
                    case (int) CVRInteractableActionOperation.ActionType.DisplayAvatarDetailPage:
                        EditorGUILayout.HelpBox("This will display the Avatar Detail Page for the referenced Avatar ID. Note that this action is locked behind a 3s global timeout.", MessageType.None);
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Avatar ID:"));
                        DrawWarningIfGUIDIsInvalid(stringValProp.stringValue);
                        break;
                    case (int) CVRInteractableActionOperation.ActionType.DisplaySpawnableDetailPage:
                        EditorGUILayout.HelpBox("This will display the Spawnable Detail Page for the referenced Spawnable ID. Note that this action is locked behind a 3s global timeout.", MessageType.None);
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Spawnable ID:"));
                        DrawWarningIfGUIDIsInvalid(stringValProp.stringValue);
                        break;
                    
                    case (int) CVRInteractableActionOperation.ActionType.SitAtPosition:
                        EditorGUILayout.HelpBox("This will make the player sit on the target GameObject.", MessageType.None);
                        EditorGUILayout.PropertyField(gameObjectValProp, new GUIContent("Sitting Location:"));
                        
                        // First target is used as Exit Location
                        SerializedProperty exitLocationProp = targetsProp.arraySize > 0 ? targetsProp.GetArrayElementAtIndex(0) : null;
                        if (exitLocationProp != null) EditorGUILayout.PropertyField(exitLocationProp, new GUIContent("Exit Location:"));
                        
                        EditorGUILayout.PropertyField(animationValProp, new GUIContent("Overwrite Sit Animation:"));
                        EditorGUILayout.PropertyField(boolValProp, new GUIContent("Lock Controls:"));
                        
                        // This is scuffed tbh
                        EditorGUILayout.Space();
                        EditorGUILayout.PropertyField(m_OnEnterSeatProp, new GUIContent("On Enter Seat:"));
                        EditorGUILayout.PropertyField(m_OnExitSeatProp, new GUIContent("On Exit Seat:"));
                        break;

                    case (int) CVRInteractableActionOperation.ActionType.MethodCall:
                        EditorGUILayout.HelpBox("This will invoke the target methods on the target GameObjects/Components. Note that this is filtered and targeting Objects not within our event whitelist or within Prefabs will not work.", MessageType.None);
                        EditorGUILayout.PropertyField(customEventProp, new GUIContent("Custom Event"), true);
                        break;
                    
                    case (int) CVRInteractableActionOperation.ActionType.SetSpawnableSyncValue:
                        EditorGUILayout.HelpBox("This will set a Synced Value on the parent Spawnable.", MessageType.None);
                        CVRSpawnable spawnable = _interactable.GetComponentInParent<CVRSpawnable>();
                        if (spawnable == null || !spawnable.useAdditionalValues)
                        {
                            EditorGUILayout.HelpBox("No Spawnable detected or it does not use additional Values.", MessageType.Error);
                        }
                        else
                        {
                            var spawnableParameters = new List<string> { "-none-" };
                            foreach (CVRSpawnableValue syncValue in spawnable.syncValues) spawnableParameters.Add(syncValue.name);
                            floatVal2Prop.floatValue = EditorGUILayout.Popup("Parameter:", (int) floatVal2Prop.floatValue + 1, spawnableParameters.ToArray()) - 1;
                            EditorGUILayout.PropertyField(floatValProp, new GUIContent("Value:"));
                            floatVal3Prop.floatValue = EditorGUILayout.Popup("Update Method:", (int) floatVal3Prop.floatValue, s_SpawnableUpdateTypes);
                        }
                        break;
                    
                    case (int) CVRInteractableActionOperation.ActionType.PlayAudio:
                    case (int) CVRInteractableActionOperation.ActionType.StopAudio:
                        EditorGUILayout.HelpBox("This will play/stop the Audio Source found on the target GameObjects", MessageType.None);
                        EditorGUILayout.PropertyField(gameObjectValProp, new GUIContent("Audio Source:"));
                        DrawWarningIfMissingRequiredComponentInGameObject(typeof(AudioSource));
                        break;

                    #region APF Operations
                    
                    case (int) CVRInteractableActionOperation.ActionType.SetAnimatorFloatByAPF: // Not implemented feature tmk, something server side -> client message
                    case (int) CVRInteractableActionOperation.ActionType.SetAnimatorIntByAPF:
                    case (int) CVRInteractableActionOperation.ActionType.SetAnimatorBoolByAPF:
                        EditorGUILayout.HelpBox("This will set the value of the defined Animator parameter on the target GameObjects to the value of the defined APF.", MessageType.None);
                        DrawTargetsProp();
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Parameter Name:"));
                        break;
                    
                    case (int) CVRInteractableActionOperation.ActionType.SetVariableBufferByAPF:
                        EditorGUILayout.HelpBox("This will set the value of the defined Variable Buffer to the value of the defined APF.", MessageType.None);
                        EditorGUILayout.PropertyField(varBufferValProp, new GUIContent("Variable Buffer:"));
                        break;
                    
                    case (int) CVRInteractableActionOperation.ActionType.UpdateAPFTrigger:
                        EditorGUILayout.HelpBox("This will trigger the defined APF Trigger.", MessageType.None);
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Key:"));
                        break;
                    case (int) CVRInteractableActionOperation.ActionType.UpdateAPFBool:
                        EditorGUILayout.HelpBox("This will set the defined APF Bool to the defined value.", MessageType.None);
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Key:"));
                        floatValProp.floatValue = EditorGUILayout.Popup("Set via:", (int) floatValProp.floatValue, s_ApfSetTypesString);
                        EditorGUILayout.PropertyField(floatValProp.floatValue == 0 ? boolValProp : varBufferValProp, new GUIContent("Value:"));
                        break;
                    case (int) CVRInteractableActionOperation.ActionType.UpdateAPFInt:
                        EditorGUILayout.HelpBox("This will set the defined APF Int to the defined value.", MessageType.None);
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Key:"));
                        floatValProp.floatValue = EditorGUILayout.Popup("Set via:", (int) floatValProp.floatValue, s_ApfSetTypes);
                        EditorGUILayout.PropertyField(floatValProp.floatValue == 0 ? floatVal2Prop : varBufferValProp, new GUIContent("Value:"));
                        break;
                    case (int) CVRInteractableActionOperation.ActionType.UpdateAPFFloat:
                        EditorGUILayout.HelpBox("This will set the defined APF Float to the defined value.", MessageType.None);
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Key:"));
                        floatValProp.floatValue = EditorGUILayout.Popup("Set via:", (int) floatValProp.floatValue, s_ApfSetTypes);
                        EditorGUILayout.PropertyField(floatValProp.floatValue == 0 ? floatVal2Prop : varBufferValProp, new GUIContent("Value:"));
                        break;
                    case (int) CVRInteractableActionOperation.ActionType.UpdateAPFString:
                        EditorGUILayout.HelpBox("This will set the defined APF String to the defined value.", MessageType.None);
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Key:"));

                        floatValProp.floatValue = EditorGUILayout.Popup("Set via:", (int)floatValProp.floatValue, s_ApfSetTypes);

                        if (floatValProp.floatValue == 0) // Set via direct value
                        {
                            EditorGUILayout.PropertyField(stringVal2Prop, new GUIContent("Value:"));
                        }
                        else // Set via property from a component
                        {
                            EditorGUILayout.PropertyField(gameObjectValProp, new GUIContent("Target:"));

                            if (gameObjectValProp.objectReferenceValue != null)
                            {
                                DrawComponentSelection(stringVal3Prop, gameObjectValProp, "Component Type:");

                                if (!string.IsNullOrEmpty(stringVal3Prop.stringValue))
                                    DrawPropertySelection(stringVal4Prop, boolValProp, stringVal3Prop, (CVRInteractableAction.ActionRegister) parentProperty.FindPropertyRelative(nameof(CVRInteractableAction.actionType)).intValue);
                                else
                                    EditorGUILayout.HelpBox("Select a Component to proceed.", MessageType.Warning);
                            }
                            else
                            {
                                EditorGUILayout.HelpBox("Select a Target to proceed.", MessageType.Warning);
                            }
                        }
                        break;
                    case (int) CVRInteractableActionOperation.ActionType.SetPropertyByApf:
                        EditorGUILayout.HelpBox("This will set a property of a component to the value from an APF.", MessageType.None);

                        EditorGUILayout.PropertyField(gameObjectValProp, new GUIContent("Target:"));

                        if (gameObjectValProp.objectReferenceValue == null)
                        {
                            EditorGUILayout.HelpBox("Select a Target to proceed.", MessageType.Warning);
                            break;
                        }

                        DrawComponentSelection(stringVal3Prop, gameObjectValProp, "Component");

                        if (string.IsNullOrEmpty(stringVal3Prop.stringValue))
                        {
                            EditorGUILayout.HelpBox("Select a Component to proceed.", MessageType.Warning);
                            break;
                        }

                        DrawPropertySelection(stringVal4Prop, boolValProp, stringVal3Prop, 
                            (CVRInteractableAction.ActionRegister)parentProperty.FindPropertyRelative(nameof(CVRInteractableAction.actionType)).intValue);

                        break;

                    case (int) CVRInteractableActionOperation.ActionType.SetPropertyByValue:
                        EditorGUILayout.HelpBox("This will set a property of a component to the value from a Variable Buffer.", MessageType.None);

                        EditorGUILayout.PropertyField(varBufferValProp, new GUIContent("Variable Buffer:"));
                        EditorGUILayout.PropertyField(gameObjectValProp, new GUIContent("Target:"));

                        if (gameObjectValProp.objectReferenceValue == null)
                        {
                            EditorGUILayout.HelpBox("Select a Target to proceed.", MessageType.Warning);
                            break;
                        }

                        DrawComponentSelection(stringVal3Prop, gameObjectValProp, "Component");

                        if (string.IsNullOrEmpty(stringVal3Prop.stringValue))
                        {
                            EditorGUILayout.HelpBox("Select a Component to proceed.", MessageType.Warning);
                            break;
                        }

                        DrawPropertySelection(stringVal4Prop, boolValProp, stringVal3Prop, 
                            (CVRInteractableAction.ActionRegister)parentProperty.FindPropertyRelative(nameof(CVRInteractableAction.actionType)).intValue);

                        break;
                    
                    #endregion APF Operations

                    case (int) CVRInteractableActionOperation.ActionType.DeleteGameObject:
                        EditorGUILayout.HelpBox("This will delete the target GameObject.", MessageType.None);
                        EditorGUILayout.PropertyField(gameObjectValProp, new GUIContent("Target:"));
                        boolValProp.boolValue = EditorGUILayout.Popup("To Destroy:", boolValProp.boolValue ? 1 : 0, s_DestroyGameObjectOptions) == 1;
                        break;

                    case (int) CVRInteractableActionOperation.ActionType.LuaFunctionCall:
                        EditorGUILayout.HelpBox("This will call a function in the Lua script.", MessageType.None);
                        EditorGUILayout.PropertyField(gameObjectValProp, new GUIContent("Lua Behaviour:"));
                        EditorGUILayout.PropertyField(stringValProp, new GUIContent("Global Function Name:"));
                        DrawWarningIfMissingRequiredComponentInGameObject(typeof(CVRLuaClientBehaviour));
                        break;
                    
                    default:
                        EditorGUILayout.HelpBox("Operation type is not implemented.", MessageType.Error);
                        break;
                }

                return;
                void DrawTargetsProp(GUIContent label = null)
                {
                    label ??= new GUIContent("Targets");
                    // Offset rect by indent so lame af foldout icon doesn't overlap the left border...
                    Rect rect = EditorGUILayout.GetControlRect(false, EditorGUI.GetPropertyHeight(targetsProp));
                    EditorGUI.PropertyField(new Rect(rect.x + 15f, rect.y, rect.width - 16f, rect.height), targetsProp,
                        label);
                }
                void DrawWarningIfGUIDIsInvalid(string stringValue)
                {
                    if (string.IsNullOrEmpty(stringValue)) return;
                    if (!Guid.TryParse(stringValue, out _)) EditorGUILayout.HelpBox("This GUID is invalid.", MessageType.Error);
                }
                void DrawWarningIfMissingRequiredComponentInGameObject(Type componentType)
                {
                    if (gameObjectValProp.objectReferenceValue is not GameObject gameObject) return;
                    if (!gameObject.TryGetComponent(componentType, out _))
                    {
                        EditorGUILayout.HelpBox(
                            $"This GameObject is missing required component for this action: {componentType.Name}.",
                            MessageType.Error);
                    }
                }
                void DrawWarningIfMissingRequiredComponentInTargets(Type componentType, bool onlyFirstObject = false)
                {
                    if (componentType == null) return;
                    if (targetsProp.arraySize == 0) return;
                    for (int i = 0; i < targetsProp.arraySize; i++)
                    {
                        SerializedProperty targetProp = targetsProp.GetArrayElementAtIndex(i);
                        if (targetProp.objectReferenceValue is not GameObject gameObject) continue;
                        if (onlyFirstObject && i > 0) return;
                        if (!gameObject.TryGetComponent(componentType, out _))
                        {
                            EditorGUILayout.HelpBox(
                                $"Target GameObject {gameObject.name} is missing required component {componentType.Name}.",
                                MessageType.Error);
                        }
                    }
                }
                void DrawComponentSelection(SerializedProperty componentTypeProp, SerializedProperty gameObjectProp, string label)
                {
                    if (gameObjectProp.objectReferenceValue is not GameObject targetGameObject) return;
                    var components = targetGameObject.GetComponents<Component>();

                    var componentTypes = new List<Type>();
                    var componentNames = new List<string>();

                    foreach (Component component in components)
                    {
                        Type type = component.GetType();
                        if (!componentTypes.Contains(type) && type != typeof(Transform) && type != typeof(CVRInteractable))
                        {
                            componentTypes.Add(type);
                            componentNames.Add(type.Name);
                        }
                    }

                    int selectedIndex = componentTypes.FindIndex(t => t.AssemblyQualifiedName == componentTypeProp.stringValue);
                    selectedIndex = EditorGUILayout.Popup(label, selectedIndex, componentNames.ToArray());

                    componentTypeProp.stringValue = selectedIndex >= 0 && selectedIndex < componentTypes.Count
                        ? componentTypes[selectedIndex].AssemblyQualifiedName
                        : string.Empty;
                }
                void DrawPropertySelection(SerializedProperty propertyNameProp, SerializedProperty isPropertyProp, SerializedProperty componentTypeProp, CVRInteractableAction.ActionRegister actionRegister)
                {
                    Type componentType = Type.GetType(componentTypeProp.stringValue);
                    if (componentType == null) return;

                    const BindingFlags flags = BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance;
                    var fields = componentType.GetFields(flags);
                    var properties = componentType.GetProperties(flags);

                    List<string> memberNames = new List<string>();
                    List<bool> isPropertyList = new List<bool>();
                    Type expectedType = GetExpectedType(actionRegister);

                    foreach (var field in fields)
                    {
                        if (field.IsPublic && field.FieldType == expectedType)
                        {
                            memberNames.Add(field.Name);
                            isPropertyList.Add(false);
                        }
                    }

                    foreach (var prop in properties)
                    {
                        if (prop.CanWrite && prop.PropertyType == expectedType)
                        {
                            memberNames.Add(prop.Name);
                            isPropertyList.Add(true);
                        }
                    }

                    int selectedIndex = memberNames.FindIndex(memberName => memberName == propertyNameProp.stringValue);
                    selectedIndex = EditorGUILayout.Popup("Property", selectedIndex, memberNames.ToArray());

                    if (selectedIndex >= 0 && selectedIndex < memberNames.Count)
                    {
                        propertyNameProp.stringValue = memberNames[selectedIndex];
                        isPropertyProp.boolValue = isPropertyList[selectedIndex];
                    }
                    else
                    {
                        propertyNameProp.stringValue = "";
                    }
                }
                Type GetExpectedType(CVRInteractableAction.ActionRegister actionRegister)
                {
                    return actionRegister switch
                    {
                        // TODO: verify
                        CVRInteractableAction.ActionRegister.OnAPFBoolChange => typeof(bool),
                        CVRInteractableAction.ActionRegister.OnAPFFloatChange => typeof(float),
                        CVRInteractableAction.ActionRegister.OnAPFIntChange => typeof(int),
                        CVRInteractableAction.ActionRegister.OnAPFStringChange => typeof(string),
                        CVRInteractableAction.ActionRegister.OnAPFTrigger => typeof(bool),
                        _ => typeof(float) // SetPropertyByValue
                    };
                }
            }
            #endregion
        }
        
        #endregion
        
        #endregion
    }
}