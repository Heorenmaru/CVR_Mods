using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using UnityEditor;
using UnityEngine;

namespace ABI.CCK.Scripts.Editor
{
    public static class EnumFilter
    {
        public static TEnum FilteredEnumPopup<TEnum, TAttribute>(TEnum enumValue)
            where TEnum : struct, Enum
            where TAttribute : Attribute
        {
            return FilteredEnumPopup<TEnum, TAttribute>(enumValue, $"{typeof(TEnum).Name}:");
        }

        public static TEnum FilteredEnumPopup<TEnum, TAttribute>(TEnum enumValue, string label)
            where TEnum : struct, Enum
            where TAttribute : Attribute
        {
            if (!typeof(TEnum).IsEnum)
                throw new ArgumentException("TEnum must be an enumerated type");

            var allValues = Enum.GetValues(typeof(TEnum)).Cast<TEnum>();

            var filteredValues = allValues
                .Where(enumVal => enumVal.GetType().GetField(enumVal.ToString())
                    .GetCustomAttributes(typeof(TAttribute), false).Length > 0)
                .ToList();

            var filteredNames = filteredValues.Select(enumVal => enumVal.ToString()).ToList();
            if (!filteredValues.Contains(enumValue))
            {
                filteredValues.Add(enumValue);
                filteredNames.Add(enumValue.ToString());
                EditorGUILayout.HelpBox($"The current selection ({enumValue}) is not valid for the current context!", MessageType.Warning);
            }

            int currentIndex = filteredNames.IndexOf(enumValue.ToString());
            int selectedIndex = EditorGUILayout.Popup(label, currentIndex, filteredNames.ToArray());

            return selectedIndex >= 0 && selectedIndex < filteredValues.Count
                ? filteredValues[selectedIndex]
                : enumValue;
        }
        
        public static TEnum FilteredEnumPopup<TEnum>(Rect position, TEnum enumValue, List<TEnum> supportedTypes)
            where TEnum : struct, Enum
        {
            if (!typeof(TEnum).IsEnum)
                throw new ArgumentException("TEnum must be an enumerated type");

            // If enumValue is not in supportedTypes, default to the first supported type
            if (!supportedTypes.Contains(enumValue))
                enumValue = supportedTypes[0];

            var displayNames = supportedTypes.Select(e => e.ToString()).ToArray();
            int currentIndex = Array.IndexOf(displayNames, enumValue.ToString());

            int selectedIndex = EditorGUI.Popup(position, currentIndex, displayNames);

            return selectedIndex >= 0 && selectedIndex < supportedTypes.Count 
                ? supportedTypes[selectedIndex] 
                : enumValue;
        }
        
        /// <summary>
        /// Returns string to value mapping for all enum values of type TEnum that have the attribute TAttribute.
        /// Keeps the declaration order of the enum values.
        /// </summary>
        public static (string[], TEnum[]) GetFilteredEnumValues<TEnum, TAttribute>()
            where TEnum : struct, Enum
            where TAttribute : Attribute
        {
            Type enumType = typeof(TEnum);

            var fieldInfos = enumType.GetFields(BindingFlags.Public | BindingFlags.Static);

            var filteredValues = new List<TEnum>();
            var filteredNames = new List<string>();

            foreach (FieldInfo fieldInfo in fieldInfos)
            {
                if (fieldInfo.GetCustomAttribute<TAttribute>(false) == null)
                    continue;

                string name = fieldInfo.Name;
                TEnum value = (TEnum)fieldInfo.GetValue(null);
                
                // Get pretty name (add spaces between words, excluding all caps words, but last one)
                // TestCOOLThing -> Test COOL Thing
                // TestThingCOOL -> Test Thing COOL
                
                string prettyName = string.Empty;
                for (int i = 0; i < name.Length; i++)
                {
                    char c = name[i];
                    if (char.IsUpper(c) && i > 0 && (!char.IsUpper(name[i - 1]) || (i + 1 < name.Length && !char.IsUpper(name[i + 1]))))
                        prettyName += " " + c;
                    else
                        prettyName += c;
                }
                
                filteredNames.Add(prettyName);
                filteredValues.Add(value);
            }

            return (filteredNames.ToArray(), filteredValues.ToArray());
        }
    }
}