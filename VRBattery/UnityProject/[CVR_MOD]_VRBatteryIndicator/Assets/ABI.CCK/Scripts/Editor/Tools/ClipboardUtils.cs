using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using UnityEditor;
using UnityEditorInternal;

namespace ABI.CCK.Scripts.Editor.Tools
{
    // todo: revamp and allow OnCopy/OnPaste/OnCut/OnDelete/OnReset events to be listened for and invoked on the target
    
    public static class ClipboardUtils
    {
        private static readonly List<object> s_clipboard = new();
        
        #region Copy Methods

        public static void CopySelected<T>(List<T> source, int selectedIndex, SerializedProperty property = null)
        {
            if (selectedIndex < 0 || selectedIndex >= source.Count)
                return;

            s_clipboard.Clear();
            s_clipboard.Add(DeepCopy(source[selectedIndex]));

            // Force immediate save of serialized properties
            if (property != null)
                property.serializedObject.ApplyModifiedProperties();
        }

        public static void CopyAll<T>(List<T> source, SerializedProperty property = null)
        {
            s_clipboard.Clear();
            foreach (T item in source) s_clipboard.Add(DeepCopy(item));
        }

        #endregion

        #region Cut Methods

        public static void CutSelected<T>(List<T> source, int selectedIndex)
        {
            if (selectedIndex < 0 || selectedIndex >= source.Count)
                return;

            s_clipboard.Clear();
            s_clipboard.Add(source[selectedIndex]);
            source.RemoveAt(selectedIndex);
        }

        public static void CutAll<T>(List<T> source)
        {
            s_clipboard.Clear();
            foreach (T item in source)
                s_clipboard.Add(item);
            
            source.Clear();
        }

        #endregion

        #region Paste Methods

        public static void Paste<T>(List<T> target, SerializedProperty property = null) where T : new()
        {
            if (property != null)
                Undo.RecordObject(property.serializedObject.targetObject, "Paste Items");

            var newItems = s_clipboard
                .Where(item => item is T)
                .Select(item => (T)DeepCopy(item))
                .ToList();

            if (property == null)
            {
                target.AddRange(newItems);
                return;
            }
            
            // Update the actual list first
            target.AddRange(newItems);

            // Then update the serialized property to match
            property.serializedObject.Update();
            property.arraySize = target.Count;
            property.serializedObject.ApplyModifiedProperties();
            InternalEditorUtility.RepaintAllViews();
        }

        private static T CreateNewInstanceWithValues<T>(object sourceItem) where T : new()
        {
            if (sourceItem == null) 
                return new T();

            return (T)DeepCopy(sourceItem);
        }

        private static object DeepCopy(object source)
        {
            if (source == null)
                return null;

            Type type = source.GetType();

            // Skip copying for UnityEditorInternal.ReorderableList
            if (type == typeof(UnityEditorInternal.ReorderableList))
                return source;

            // Handle value types and strings
            if (type.IsValueType || type == typeof(string))
                return source;

            // Handle Unity objects (avoid duplicating UnityEngine.Object instances)
            if (typeof(UnityEngine.Object).IsAssignableFrom(type))
                return source;

            // Handle arrays
            if (type.IsArray)
            {
                Type elementType = type.GetElementType();
                Array sourceArray = (Array)source;
                Array copiedArray = Array.CreateInstance(elementType!, sourceArray.Length);
                for (int i = 0; i < sourceArray.Length; i++)
                    copiedArray.SetValue(DeepCopy(sourceArray.GetValue(i)), i);
                return copiedArray;
            }

            // Handle generic lists
            if (type.IsGenericType && type.GetGenericTypeDefinition() == typeof(List<>))
            {
                IList sourceList = (IList)source;
                IList copiedList = (IList)Activator.CreateInstance(type);
                foreach (var item in sourceList)
                    copiedList.Add(DeepCopy(item));
                return copiedList;
            }

            // Ensure the type has a parameterless constructor before calling CreateInstance
            ConstructorInfo constructor = type.GetConstructor(Type.EmptyTypes);
            if (constructor == null)
                return source; // Return the original if there's no default constructor

            // Create new instance
            object copy = Activator.CreateInstance(type);

            // Copy fields, including those from base classes
            for (Type t = type; t != null; t = t.BaseType)
            {
                foreach (FieldInfo field in t.GetFields(BindingFlags.Public | BindingFlags.NonPublic |
                                                        BindingFlags.Instance | BindingFlags.DeclaredOnly))
                {
                    object fieldValue = field.GetValue(source);
                    field.SetValue(copy, DeepCopy(fieldValue));
                }
            }

            // Copy properties, including those from base classes
            for (Type t = type; t != null; t = t.BaseType)
            {
                foreach (PropertyInfo prop in t.GetProperties(BindingFlags.Public | BindingFlags.NonPublic |
                                                              BindingFlags.Instance | BindingFlags.DeclaredOnly))
                {
                    if (prop.CanRead && prop.CanWrite && prop.GetIndexParameters().Length == 0)
                    {
                        object propValue = prop.GetValue(source);

                        // Special handling for properties that expose lists (like dropdown options)
                        if (prop.PropertyType.IsGenericType &&
                            prop.PropertyType.GetGenericTypeDefinition() == typeof(List<>))
                        {
                            IList sourceList = (IList)propValue;
                            if (sourceList != null)
                            {
                                IList copiedList = (IList)Activator.CreateInstance(prop.PropertyType);
                                foreach (var item in sourceList)
                                    copiedList.Add(DeepCopy(item));

                                prop.SetValue(copy, copiedList);
                                continue;
                            }
                        }

                        prop.SetValue(copy, DeepCopy(propValue));
                    }
                }
            }

            return copy;
        }
        
        public static bool IsValidPaste<T>(List<T> target, SerializedProperty property = null)
        {
            return s_clipboard.Count != 0 && s_clipboard.All(item => item is T);
        }
        
        #endregion

        #region Reset Methods

        public static void ResetSelected<T>(List<T> source, int selectedIndex) where T : new()
        {
            if (selectedIndex < 0 || selectedIndex >= source.Count)
                return;

            if (typeof(T).IsValueType || typeof(T).GetConstructor(Type.EmptyTypes) != null)
                source[selectedIndex] = new T();
            else
                source[selectedIndex] = default(T);
        }

        public static void ResetAll<T>(List<T> source) where T : new()
        {
            for (int i = 0; i < source.Count; i++)
            {
                if (typeof(T).IsValueType || typeof(T).GetConstructor(Type.EmptyTypes) != null)
                    source[i] = new T();
                else
                    source[i] = default(T);
            }
        }

        #endregion

        #region Delete Methods

        public static void DeleteSelected<T>(List<T> source, int selectedIndex, SerializedProperty property = null)
        {
            if (selectedIndex < 0 || selectedIndex >= source.Count)
                return;

            if (property == null)
            {
                source.RemoveAt(selectedIndex);
                return;
            }
            
            property.DeleteArrayElementAtIndex(selectedIndex);
            property.serializedObject.ApplyModifiedProperties(); // record undo/redo
        }

        public static void DeleteAll<T>(List<T> source, SerializedProperty property = null)
        {
            if (property == null)
            {
                source.Clear();
                return;
            }
            
            property.ClearArray();
            property.serializedObject.ApplyModifiedProperties(); // record undo/redo
        }

        #endregion

        #region Menu Builder

        public static void AppendToMenu(GenericMenuBuilder genericMenuBuilder, ReorderableList list, SerializedProperty property = null)
            => AppendToMenuInternal(genericMenuBuilder, list.list, list.index, property);
        
        private static void AppendToMenuInternal(GenericMenuBuilder genericMenuBuilder, IList list, int index = -1, SerializedProperty property = null)
        {
            Type itemType = GetItemTypeOfList(list);
            if (itemType == null) return;
            
            bool hasSelectedItem = index != -1;
            bool hasItems = list.Count > 0;

            genericMenuBuilder.AddMenuItem("Copy/Selected", hasSelectedItem, () => InvokeClipboardMethod("CopySelected", itemType, list, index, property));
            genericMenuBuilder.AddMenuItem("Copy/All", hasItems, () => InvokeClipboardMethod("CopyAll", itemType, list, property: property));
        
            //menuBuilder.AddMenuItem("Cut/Selected", hasSelectedItem, () => InvokeClipboardMethod("CutSelected", itemType, list, index));
            //menuBuilder.AddMenuItem("Cut/All", hasTasks, () => InvokeClipboardMethod("CutAll", itemType, list));
        
            genericMenuBuilder.AddMenuItem("Paste",  (bool)InvokeClipboardMethod("IsValidPaste", itemType, list, property: property), () => InvokeClipboardMethod("Paste", itemType, list, property: property));
        
            //menuBuilder.AddMenuItem("Reset/Selected", hasSelectedItem, () => InvokeClipboardMethod("ResetSelected", itemType, list, index));
            //menuBuilder.AddMenuItem("Reset/All", hasTasks, () => InvokeClipboardMethod("ResetAll", itemType, list));
        
            genericMenuBuilder.AddMenuItem("Delete/Selected", hasSelectedItem, () => InvokeClipboardMethod("DeleteSelected", itemType, list, index, property: property));
            genericMenuBuilder.AddMenuItem("Delete/All", hasItems, () => InvokeClipboardMethod("DeleteAll", itemType, list, property: property));
        }

        private static Type GetItemTypeOfList(IList list)
        {
            if (list == null) return null;
            Type listType = list.GetType();
            if (listType.IsGenericType && listType.GetGenericTypeDefinition() == typeof(List<>))
                return listType.GetGenericArguments()[0];
            return null;
        }
        
        private static object InvokeClipboardMethod(string methodName, Type itemType, IList list, int? selectedIndex = null, SerializedProperty property = null)
        {
            MethodInfo method = typeof(ClipboardUtils).GetMethod(methodName)?.MakeGenericMethod(itemType);
            return method?.Invoke(null, selectedIndex.HasValue ? new object[] { list, selectedIndex.Value, property } : new object[] { list, property });
        }

        #endregion
    }
}