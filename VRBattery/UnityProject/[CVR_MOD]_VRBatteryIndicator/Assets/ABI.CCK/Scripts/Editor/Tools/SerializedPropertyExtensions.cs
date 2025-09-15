using System;
using System.Reflection;
using UnityEditor;
using UnityEngine;
using Object = UnityEngine.Object;

namespace ABI.CCK.Scripts.Editor.Tools
{
    public static class SerializedPropertyExtensions
    {
        #region Public Methods
        
        /// Method to copy values from an instance to a serialized property
        public static SerializedProperty CopyValuesFromInstance(this SerializedProperty property, object instance)
        {
            if (instance == null)
            {
                Debug.LogWarning("Instance is null, cannot copy values");
                return property;
            }

            Type type = instance.GetType();
            SetFieldValuesFromInstance(property, type, instance);
            return property;
        }
        
        /// Method to create a serialized property that uses the default values in the constructor
        public static SerializedProperty AddWithDefaults<T>(this SerializedProperty property) where T : new()
            => property.AddWithDefaults(typeof(T));
        
        /// Method to create a serialized property that uses the default values in the constructor
        public static SerializedProperty AddWithDefaults(this SerializedProperty property, Type type)
        {
            property.arraySize++;
            SerializedProperty newArrayElement = property.GetArrayElementAtIndex(property.arraySize - 1);
            newArrayElement.SetDefaultValuesForType(type);
            newArrayElement.isExpanded = false;
            return newArrayElement;
        }
        
        /// Method to set default values for a serialized property
        public static void SetDefaultValuesForType(this SerializedProperty property, Type type)
        {
            if (property.isArray)
            {
                Type elementType = type.GetElementType();
                if (elementType == null)
                {
                    Debug.LogWarning($"Unable to determine element type for array property {property.name}");
                    return;
                }

                const int DefaultArraySize = 0; // TODO: figure out how to determine this
                property.arraySize = DefaultArraySize;
                property.isExpanded = false;
                for (int i = 0; i < property.arraySize; i++)
                {
                    SerializedProperty elementProperty = property.GetArrayElementAtIndex(i);
                    elementProperty.SetDefaultValuesForType(elementType);
                }
                return;
            }
            
            if (type.GetConstructor(Type.EmptyTypes) == null)
            {
                Debug.LogWarning($"Type {type.Name} does not have a default constructor");
                return;
            }

            object instance = !type.IsSubclassOf(typeof(ScriptableObject)) ? Activator.CreateInstance(type) : null;
            SetFieldValuesFromInstance(property, type, instance);
        }
        
        #endregion Public Methods

        #region Private Methods
        
        private static void SetFieldValuesFromInstance(this SerializedProperty property, Type type, object instance)
        {
            if (instance == null) 
                return;
            
            foreach (FieldInfo fieldInfo in type.GetFields(BindingFlags.Public | BindingFlags.Instance))
            {
                SerializedProperty fieldProperty = property.FindPropertyRelative(fieldInfo.Name);
                if (fieldProperty == null)
                {
                    //Debug.LogWarning($"Field {fieldInfo.Name} not found in serialized property");
                    continue;
                }
                
                //Debug.Log($"Setting {fieldInfo.Name} to {fieldInfo.GetValue(instance)}");
                SetFieldValue(fieldProperty, fieldInfo.FieldType, fieldInfo.GetValue(instance));
            }

            foreach (PropertyInfo propertyInfo in type.GetProperties(BindingFlags.Public | BindingFlags.Instance))
            {
                SerializedProperty fieldProperty = property.FindPropertyRelative(propertyInfo.Name);
                if (fieldProperty == null)
                {
                    //Debug.LogWarning($"Property {propertyInfo.Name} not found in serialized property");
                    continue;
                }

                //Debug.Log($"Setting {propertyInfo.Name} to {propertyInfo.GetValue(instance)}");
                SetFieldValue(fieldProperty, propertyInfo.PropertyType, propertyInfo.GetValue(instance));
            }

            return;
            static void SetFieldValue(SerializedProperty fieldProperty, Type fieldType, object value)
            {
                if (fieldType == typeof(int))
                {
                    fieldProperty.intValue = value as int? ?? default;
                }
                else if (fieldType == typeof(bool))
                {
                    fieldProperty.boolValue = value as bool? ?? default;
                }
                else if (fieldType == typeof(float))
                {
                    fieldProperty.floatValue = value as float? ?? default;
                }
                else if (fieldType == typeof(string))
                {
                    fieldProperty.stringValue = value as string ?? string.Empty;
                }
                else if (fieldType == typeof(Color))
                {
                    fieldProperty.colorValue = value as Color? ?? default;
                }
                else if (fieldType == typeof(Object) || fieldType.IsSubclassOf(typeof(Object)))
                {
                    fieldProperty.objectReferenceValue = value as Object;
                }
                else if (fieldType == typeof(LayerMask))
                {
                    fieldProperty.intValue = value is LayerMask mask ? mask.value : default;
                }
                else if (fieldType.IsEnum)
                {
                    //fieldProperty.enumValueIndex = value as int? ?? default; // Verify if correct
                    //fieldProperty.intValue = value as int? ?? default;
                    
                    // This should be safe to cast, the above would not cast and apply the default value
                    fieldProperty.intValue = (int)value;
                }
                else if (fieldType == typeof(Vector2))
                {
                    fieldProperty.vector2Value = value as Vector2? ?? default;
                }
                else if (fieldType == typeof(Vector3))
                {
                    fieldProperty.vector3Value = value as Vector3? ?? default;
                }
                else if (fieldType == typeof(Vector4))
                {
                    fieldProperty.vector4Value = value as Vector4? ?? default;
                }
                else if (fieldType == typeof(Rect))
                {
                    fieldProperty.rectValue = value as Rect? ?? default;
                }
                else if (fieldType == typeof(char))
                {
                    fieldProperty.intValue = value as char? ?? default;
                }
                else if (fieldType == typeof(AnimationCurve))
                {
                    fieldProperty.animationCurveValue = value as AnimationCurve;
                }
                else if (fieldType == typeof(Bounds))
                {
                    fieldProperty.boundsValue = value as Bounds? ?? default;
                }
                else if (fieldType == typeof(Gradient))
                {
                    // fieldProperty.gradientValue = value as Gradient; // internal unity property
                }
                else if (fieldType == typeof(Vector2Int))
                {
                    fieldProperty.vector2IntValue = value as Vector2Int? ?? default;
                }
                else if (fieldType == typeof(Vector3Int))
                {
                    fieldProperty.vector3IntValue = value as Vector3Int? ?? default;
                }
                else if (fieldType == typeof(RectInt))
                {
                    fieldProperty.rectIntValue = value as RectInt? ?? default;
                }
                else if (fieldType == typeof(BoundsInt))
                {
                    fieldProperty.boundsIntValue = value as BoundsInt? ?? default;
                }
                else if (fieldType == typeof(Quaternion))
                {
                    fieldProperty.quaternionValue = value as Quaternion? ?? default;
                }
                else if (fieldType.IsClass)
                {
                    fieldProperty.SetFieldValuesFromInstance(fieldType, value);
                }
                else
                {
                    Debug.LogWarning($"Type {fieldType.Name} not supported for setting default values");
                }
            }
        }
        
        #endregion Private Methods

        #region Get Attributes
        
        // https://gist.github.com/starikcetin/583a3b86c22efae35b5a86e9ae23f2f0

        private const BindingFlags AllBindingFlags = (BindingFlags)(-1);

        /// <summary>
        /// Returns attributes of type <typeparamref name="TAttribute"/> on <paramref name="serializedProperty"/>.
        /// </summary>
        public static TAttribute[] GetAttributes<TAttribute>(this SerializedProperty serializedProperty, bool inherit)
            where TAttribute : Attribute
        {
            if (serializedProperty == null)
                throw new ArgumentNullException(nameof(serializedProperty));

            Type targetObjectType = serializedProperty.serializedObject.targetObject.GetType();

            if (targetObjectType == null)
                throw new ArgumentException($"Could not find the {nameof(targetObjectType)} of {nameof(serializedProperty)}");
            
            foreach (var pathSegment in serializedProperty.propertyPath.Split('.'))
            {
                FieldInfo fieldInfo = targetObjectType.GetField(pathSegment, AllBindingFlags);
                if (fieldInfo != null) return (TAttribute[])fieldInfo.GetCustomAttributes<TAttribute>(inherit);
                
                PropertyInfo propertyInfo = targetObjectType.GetProperty(pathSegment, AllBindingFlags);
                if (propertyInfo != null) return (TAttribute[])propertyInfo.GetCustomAttributes<TAttribute>(inherit);
            }

            throw new ArgumentException($"Could not find the field or property of {nameof(serializedProperty)}");
        }

        #endregion Get Attributes
    }
}