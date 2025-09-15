#if UNITY_EDITOR
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using ABI.CCK.Scripts.Editor.Tools;
using UnityEditor;
using UnityEditor.IMGUI.Controls;
using UnityEditorInternal;
using UnityEngine;

namespace ABI.CCK.Scripts.Editor
{
    public static partial class EditorGUIExtensions
    {
        private const float DEFAULT_DROPDOWN_BUTTON_WIDTH = 35;
        private static readonly Dictionary<string, GUIContent> s_iconContentCache = new();
        private static int s_lastSelectedValue = -1;
        
        #region Specialized EditorGUI
        
        public delegate void AppendAdditionalMenuItemsDelegate(GenericMenuBuilder genericMenuBuilder, ReorderableList list);
        public static void UtilityMenu(Rect rect, ReorderableList list, SerializedProperty property = null, AppendAdditionalMenuItemsDelegate appendAdditionalMenuItems = null)
        {
            Rect dropdownButtonRect = new(rect.x + rect.width - 21, rect.y, 20, EditorGUIUtility.singleLineHeight);
            if (!EditorGUI.DropdownButton(dropdownButtonRect, GUIContent.none, FocusType.Passive)) 
                return;
            
            GenericMenuBuilder genericMenuBuilder = new();
            ClipboardUtils.AppendToMenu(genericMenuBuilder, list, property); // default for all uses atm
            if (appendAdditionalMenuItems != null)
            {
                genericMenuBuilder.AddSeparator();
                appendAdditionalMenuItems.Invoke(genericMenuBuilder, list);
            }
            genericMenuBuilder.DropDown(dropdownButtonRect);
        }
        
        public static string AdvancedDropdownInput(
            Rect rect, 
            string currentValue, 
            List<string> dropdownItems, 
            string label, 
            string defaultTitle,
            GUIContent buttonContent = null)
        {
            if (buttonContent == null)
            {
                buttonContent = dropdownItems.Contains(currentValue)
                    ? GetCachedIconContent("d_Search Icon")
                    : GetCachedIconContent("console.erroricon.sml");
            }

            string title = (dropdownItems.Count == 0 ? defaultTitle : currentValue);
            return CustomDropdown(rect, label, currentValue, dropdownItems.ToArray(), buttonContent, DEFAULT_DROPDOWN_BUTTON_WIDTH, title);
        }
        
        public static string AdvancedDropdownInput(
            Rect rect, 
            string currentValue, 
            List<string> dropdownItems, 
            string title,
            GUIContent buttonContent = null)
        {
            if (buttonContent == null)
            {
                buttonContent = dropdownItems.Contains(currentValue)
                    ? GetCachedIconContent("d_Search Icon")
                    : GetCachedIconContent("console.erroricon.sml");
            }

            return CustomDropdown(rect, currentValue, dropdownItems.ToArray(), buttonContent, DEFAULT_DROPDOWN_BUTTON_WIDTH, title);
        }
        
        public static string AdvancedDropdownInput(
            Rect rect, 
            string currentValue, 
            string[] dropdownItems, 
            string title,
            GUIContent buttonContent = null)
        {
            if (buttonContent == null)
            {
                buttonContent = dropdownItems.Contains(currentValue)
                    ? GetCachedIconContent("d_Search Icon")
                    : GetCachedIconContent("console.erroricon.sml");
            }

            return CustomDropdown(rect, currentValue, dropdownItems, buttonContent, DEFAULT_DROPDOWN_BUTTON_WIDTH, title);
        }

        // bit lazy ig
        public static void LimitSliderSided(string label, ref Vector2 limits, float hardLimitMin, float hardLimitMax)
        {
            var originalLabelWidth = EditorGUIUtility.labelWidth;
            EditorGUIUtility.labelWidth = 150;

            EditorGUILayout.BeginHorizontal();
            EditorGUILayout.LabelField(label, GUILayout.Width(originalLabelWidth - 16));
            limits.x = EditorGUILayout.FloatField(limits.x, GUILayout.Width(50));
            GUILayout.Space(-13);
            EditorGUILayout.MinMaxSlider(ref limits.x, ref limits.y, hardLimitMin, hardLimitMax);
            GUILayout.Space(-13);
            limits.y = EditorGUILayout.FloatField(limits.y, GUILayout.Width(50));
            EditorGUILayout.EndHorizontal();

            EditorGUIUtility.labelWidth = originalLabelWidth;
        }

        public static void LimitSliderSided(ref Rect rect, float spacing, string label, ref Vector2 limits, float hardLimitMin, float hardLimitMax)
        {
            // Save the original label width and adjust it for your custom drawing
            var originalLabelWidth = EditorGUIUtility.labelWidth;
            EditorGUIUtility.labelWidth = 150;

            // Calculate positions and sizes for custom drawing elements within the rect
            float labelWidth = originalLabelWidth - 16;
            float fieldWidth = 50;
            float sliderWidth = rect.width - labelWidth - fieldWidth * 2 - spacing * 4;
            float currentY = rect.y;

            // Label
            Rect labelRect = new Rect(rect.x, currentY, labelWidth, EditorGUIUtility.singleLineHeight);
            GUI.Label(labelRect, label);

            // Field for limits.x
            Rect fieldXRect = new Rect(labelRect.xMax + spacing, currentY, fieldWidth, EditorGUIUtility.singleLineHeight);
            limits.x = EditorGUI.FloatField(fieldXRect, limits.x);

            // MinMaxSlider
            Rect sliderRect = new Rect(fieldXRect.xMax + spacing, currentY, sliderWidth, EditorGUIUtility.singleLineHeight);
            EditorGUI.MinMaxSlider(sliderRect, ref limits.x, ref limits.y, hardLimitMin, hardLimitMax);

            // Field for limits.y
            Rect fieldYRect = new Rect(sliderRect.xMax + spacing, currentY, fieldWidth, EditorGUIUtility.singleLineHeight);
            limits.y = EditorGUI.FloatField(fieldYRect, limits.y);

            // Reset the original label width
            EditorGUIUtility.labelWidth = originalLabelWidth;

            // Adjust rect.y for the next control, if you're drawing multiple controls in sequence
            rect.y += spacing;
        }

        public static void LimitSliderSidedProp(string label, SerializedProperty limitsProp, float hardLimitMin, float hardLimitMax) {
            Vector2 limits = limitsProp.vector2Value;
            LimitSliderSided(label, ref limits, hardLimitMin, hardLimitMax);
            limitsProp.vector2Value = limits;
        }

        public static void LimitSliderSidedFloats(string label, SerializedProperty floatMin, SerializedProperty floatMax, float hardLimitMin, float hardLimitMax) {
            Vector2 limits = new(floatMin.floatValue, floatMax.floatValue);
            LimitSliderSided(label, ref limits, hardLimitMin, hardLimitMax);
            floatMin.floatValue = limits.x;
            floatMax.floatValue = limits.y;
        }

        public static void LimitSliderSidedFloats(ref Rect rect, float spacing, string label, SerializedProperty floatMin, SerializedProperty floatMax, float hardLimitMin, float hardLimitMax) {
            Vector2 limits = new(floatMin.floatValue, floatMax.floatValue);
            LimitSliderSided(ref rect, spacing, label, ref limits, hardLimitMin, hardLimitMax);
            floatMin.floatValue = limits.x;
            floatMax.floatValue = limits.y;
        }
        
        #endregion
        
        #region CustomPopup

        public static string CustomPopup(Rect rect, string label, string currentItem, string[] items,
            string title = null)
        {
            // TODO: temp fix
            int currentIndex = Array.IndexOf(items, currentItem);
            currentIndex = CustomPopup(rect, label, currentIndex, items, title);
            return currentIndex >= 0 && currentIndex < items.Length ? items[currentIndex] : CVRCommon.NONE_OR_EMPTY;
        }
        
        public static string CustomPopup(Rect rect, string currentItem, string[] items,
            string title = null)
        {
            // TODO: temp fix
            int currentIndex = Array.IndexOf(items, currentItem);
            currentIndex = CustomPopup(rect, currentIndex, items, title);
            return currentIndex >= 0 && currentIndex < items.Length ? items[currentIndex] : CVRCommon.NONE_OR_EMPTY;
        }
        
        public static int CustomPopup(Rect rect, string label, int currentItem, string[] items, string title = null, string[] tooltips = null)
        {
            int controlId = GUIUtility.GetControlID(FocusType.Passive);

            // Use label width to position the dropdown appropriately
            float labelWidth = EditorGUIUtility.labelWidth;

            Rect labelRect = new Rect(rect.x, rect.y, labelWidth, rect.height);
            Rect buttonRect = new Rect(rect.x + labelWidth, rect.y, rect.width - labelWidth, rect.height);

            EditorGUI.LabelField(labelRect, label);

            string current = currentItem >= 0 && currentItem < items.Length ? items[currentItem] : CVRCommon.NONE_OR_EMPTY;
            string currentTooltip = tooltips!= null && currentItem >= 0 && currentItem < items.Length ? tooltips[currentItem] : CVRCommon.NONE_OR_EMPTY;
            if (EditorGUI.DropdownButton(buttonRect, new GUIContent(current, currentTooltip), FocusType.Passive))
            {
                GUIUtility.keyboardControl = controlId;
                new CustomAdvancedDropdown(new AdvancedDropdownState(), items, title, selected =>
                {
                    s_lastSelectedValue = selected;
                }).Show(buttonRect); // We'll show the dropdown right where our buttonRect is
            } 

            if (controlId == GUIUtility.keyboardControl && s_lastSelectedValue != -1)
            {
                currentItem = s_lastSelectedValue;
                s_lastSelectedValue = -1;
                GUI.changed = true;
            }

            return currentItem;
        }
        
        // CustomPopup but no label
        public static int CustomPopup(Rect rect, int currentItem, string[] items, string title = null)
        {
            int controlId = GUIUtility.GetControlID(FocusType.Passive);
            
            Rect buttonRect = new Rect(rect.x, rect.y, rect.width, rect.height);
            
            string current = currentItem >= 0 && currentItem < items.Length ? items[currentItem] : CVRCommon.NONE_OR_EMPTY;
            if (EditorGUI.DropdownButton(buttonRect, new GUIContent(current), FocusType.Passive))
            {
                GUIUtility.keyboardControl = controlId;
                new CustomAdvancedDropdown(new AdvancedDropdownState(), items, title, selected =>
                {
                    s_lastSelectedValue = selected;
                }).Show(buttonRect); // We'll show the dropdown right where our buttonRect is
            } 

            if (controlId == GUIUtility.keyboardControl && s_lastSelectedValue != -1)
            {
                currentItem = s_lastSelectedValue;
                s_lastSelectedValue = -1;
            }

            return currentItem;
        }

        #endregion

        #region CustomDropdown

        public static string CustomDropdown(
            Rect rect, 
            string label, 
            string currentItem, 
            string[] items, 
            string title = null)
        {
            GUIContent defaultButtonContent = items.Contains(currentItem)
                ? GetCachedIconContent("d_Search Icon")
                : GetCachedIconContent("console.erroricon.sml");
            
            return CustomDropdown(rect, label, currentItem, items, defaultButtonContent, DEFAULT_DROPDOWN_BUTTON_WIDTH, title);
        }

        public static string CustomDropdown(
            Rect rect, 
            string label, 
            string currentItem, 
            string[] items, 
            GUIContent buttonContent, 
            string title = null)
        {
            return CustomDropdown(rect, label, currentItem, items, buttonContent, DEFAULT_DROPDOWN_BUTTON_WIDTH, title);
        }

        private static string CustomDropdown(
            Rect rect, 
            string label, 
            string currentItem, 
            string[] items, 
            GUIContent buttonContent, 
            float dropdownButtonWidth, 
            string title)
        {
            float labelWidth = 2f + EditorGUIUtility.labelWidth;
            float indentOffset = 15 * EditorGUI.indentLevel;

            Rect textFieldRect = new Rect(rect.x + labelWidth - indentOffset, rect.y, rect.width - labelWidth + indentOffset - dropdownButtonWidth, rect.height);
            Rect buttonRect = new Rect(rect.x + rect.width - dropdownButtonWidth, rect.y, dropdownButtonWidth, rect.height);
            Rect dropdownRect = new Rect(rect.x + labelWidth, rect.y, rect.width - labelWidth, rect.height);

            EditorGUI.LabelField(new Rect(rect.x, rect.y, labelWidth, rect.height), label);
            currentItem = EditorGUI.TextField(textFieldRect, currentItem);

            return CustomDropdown(currentItem, items, title, buttonRect, dropdownRect, buttonContent);
        }
        
        private static string CustomDropdown(
            Rect rect, 
            string currentItem, 
            string[] items, 
            GUIContent buttonContent, 
            float dropdownButtonWidth, 
            string title)
        {
            float indentOffset = 15 * EditorGUI.indentLevel;
            Rect textFieldRect = new Rect(rect.x - indentOffset, rect.y, rect.width + indentOffset - dropdownButtonWidth, rect.height);
            Rect buttonRect = new Rect(rect.x + rect.width - dropdownButtonWidth, rect.y, dropdownButtonWidth, rect.height);
            Rect dropdownRect = new Rect(rect.x, rect.y, rect.width, rect.height);

            currentItem = EditorGUI.TextField(textFieldRect, currentItem);
            return CustomDropdown(currentItem, items, title, buttonRect, dropdownRect, buttonContent);
        }
        
        private static string CustomDropdown(
            string currentItem, 
            string[] items, 
            string title, 
            Rect buttonRect, 
            Rect dropdownRect, 
            GUIContent buttonContent)
        {
            int controlId = GUIUtility.GetControlID(FocusType.Passive);

            if (EditorGUI.DropdownButton(buttonRect, buttonContent, FocusType.Passive))
            {
                GUIUtility.keyboardControl = controlId;
                new CustomAdvancedDropdown(new AdvancedDropdownState(), items, title, selected =>
                {
                    s_lastSelectedValue = selected;
                }).Show(dropdownRect);
            }

            if (controlId == GUIUtility.keyboardControl && s_lastSelectedValue != -1)
            {
                currentItem = items[s_lastSelectedValue];
                s_lastSelectedValue = -1;
            }

            return currentItem;
        }

        #endregion

        #region Private Methods

        public static GUIContent GetCachedIconContent(string iconName)
        {
            if (s_iconContentCache.TryGetValue(iconName, out GUIContent iconContent)) 
                return iconContent;
            
            iconContent = EditorGUIUtility.IconContent(iconName);
            s_iconContentCache[iconName] = iconContent;
            return iconContent;
        }

        #endregion

        #region Custom GUI

        private class CustomAdvancedDropdown : AdvancedDropdown
        {
            private readonly Action<int> _onItemSelected;
            private readonly string[] _items;
            private readonly string _title;
    
            internal CustomAdvancedDropdown(AdvancedDropdownState state, string[] items, string title, Action<int> onItemSelected) : base(state)
            {
                _items = items ?? Array.Empty<string>();
                _title = title ?? "Items";
                _onItemSelected = onItemSelected;
            }
    
            internal new void Show(Rect rect)
            {
                minimumSize = new Vector2(rect.width, 200f);
                
                // We have to set the maximumSize through reflection, cause unity is cool
                typeof(AdvancedDropdown).GetProperty("maximumSize", BindingFlags.NonPublic | BindingFlags.Instance)
                    ?.SetValue(this, new Vector2(rect.width, 400f));

                base.Show(rect);
            }
    
            protected override AdvancedDropdownItem BuildRoot()
            {
                AdvancedDropdownItem root = new AdvancedDropdownItem(_title);

                for (var itemIdx = 0; itemIdx < _items.Length; itemIdx++)
                {
                    var item = _items[itemIdx];
                    AdvancedDropdownItem current = root;
                    string[] parts = item.Split('/');

                    for (int i = 0; i < parts.Length; i++)
                    {
                        string name = parts[i];
                        AdvancedDropdownItem child = current.children.FirstOrDefault(c => c.name == name);

                        if (child == null)
                        {
                            child = new AdvancedDropdownItem(name)
                            {
                                id = itemIdx // id is based on itteration order
                            };
                            if (name == item && name == _title)
                                child.icon = GetCachedIconContent("d_FilterSelectedOnly").image as Texture2D;

                            current.AddChild(child);
                        }

                        current = child;
                    }
                }

                return root;
            }
    
            protected override void ItemSelected(AdvancedDropdownItem item)
            {
                base.ItemSelected(item);
                _onItemSelected?.Invoke(item.id);
            }
        }

        #endregion
    }
}
#endif