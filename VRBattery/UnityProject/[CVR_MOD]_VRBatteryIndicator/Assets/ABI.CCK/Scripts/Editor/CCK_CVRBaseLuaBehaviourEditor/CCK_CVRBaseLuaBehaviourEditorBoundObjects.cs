using UnityEditor;
using UnityEditorInternal;
using UnityEngine;
using static ABI.CCK.Scripts.Editor.SharedComponentGUI;

namespace ABI.CCK.Components
{
    public partial class CCK_CVRLuaClientBehaviourEditor
    {
        private ReorderableList _boundObjectList;

        private void Draw_BoundObjects()
        {
            using (new FoldoutScope(ref _guiBoundObjectsFoldout, "Bound Objects", s_BoldFoldoutStyle))
            {
                if (!_guiBoundObjectsFoldout) return;
                DrawBoundObjects();
            }
        }

        #region Drawing Methods

        private void DrawBoundObjects()
        {
            _boundObjectList ??= new ReorderableList(serializedObject, m_BoundObjects, true, true, false, false)
            {
                footerHeight = 0f,
                elementHeight = EditorGUIUtility.singleLineHeight + 4f,
                drawHeaderCallback = rect =>
                {
                    EditorGUI.LabelField(new Rect(rect.x, rect.y, rect.width * 0.5f, rect.height), "Object Names");
                    EditorGUI.LabelField(
                        new Rect(rect.x + rect.width * 0.5f, rect.y, rect.width * 0.5f, rect.height),
                        "Object Values");
                },
                drawElementCallback = (rect, index, _, _) =>
                {
                    Rect _rect = new (rect.x, rect.y + 2, rect.width, EditorGUIUtility.singleLineHeight);
                    SerializedProperty element = _boundObjectList.serializedProperty.GetArrayElementAtIndex(index);

                    var halfWidth = _rect.width * 0.5f;
                    Rect nameRect = new(_rect.x, _rect.y, halfWidth - 5f, EditorGUIUtility.singleLineHeight);
                    Rect valueRect = new(_rect.x + halfWidth, _rect.y, halfWidth, EditorGUIUtility.singleLineHeight);
                    
                    SerializedProperty nameProp = element.FindPropertyRelative(nameof(CVRBaseLuaBehaviour.BoundObject.name));
                    SerializedProperty objectReference = element.FindPropertyRelative(nameof(CVRBaseLuaBehaviour.BoundObject.boundThing));
                    
                    EditorGUI.PropertyField(nameRect, nameProp, GUIContent.none);
                    
                    const float BUTTON_WIDTH = 19f;
                    Rect buttonRect = new(valueRect.xMax - BUTTON_WIDTH, valueRect.y, BUTTON_WIDTH, valueRect.height);
                    
                    bool showComponentDropdown = objectReference.objectReferenceValue is GameObject or Component;
                    if (showComponentDropdown)
                    {
                        valueRect.width -= BUTTON_WIDTH; // c is for cock
                        if (GUI.Button(buttonRect, "C")) ShowComponentDropdown(objectReference);
                    }
                    
                    EditorGUI.PropertyField(valueRect, objectReference, GUIContent.none);
                    
                    // if (DragAndDropHelper.CheckDragAndDrop(nameRect))
                    //     DragAndDropHelper.ApplyDragAndDropToProperty(objectReference, nameProp);
                }
            };

            EditorGUILayout.HelpBox(
                "Bound Objects are a way to tell your script about other objects in the scene, and will be accessible via the BoundObjects global (read-only). Careful: Duplicate names will be overwritten by the last duplicate.",
                MessageType.Info);

            Separator();

            DrawBoundObjectButtons();
            _boundObjectList.DoLayoutList();
        }

        private void DrawBoundObjectButtons()
        {
            EditorGUILayout.BeginHorizontal();

            // Add Button
            if (GUILayout.Button("Add Bound Object"))
            {
                m_BoundObjects.InsertArrayElementAtIndex(m_BoundObjects.arraySize);
                SerializedProperty newElement =
                    m_BoundObjects.GetArrayElementAtIndex(m_BoundObjects.arraySize - 1);
                newElement.FindPropertyRelative(nameof(CVRBaseLuaBehaviour.BoundObject.name)).stringValue = "";
                newElement.FindPropertyRelative(nameof(CVRBaseLuaBehaviour.BoundObject.boundThing)).objectReferenceValue = null;
                _boundObjectList.index = m_BoundObjects.arraySize - 1;
            }

            // Remove Button
            EditorGUI.BeginDisabledGroup(m_BoundObjects.arraySize == 0 || _boundObjectList.index < 0);
            if (GUILayout.Button("Remove Bound Object"))
            {
                var removeIndex = _boundObjectList.index;
                if (removeIndex >= 0 && removeIndex < m_BoundObjects.arraySize)
                {
                    m_BoundObjects.DeleteArrayElementAtIndex(removeIndex);
                    _boundObjectList.index--;
                }
            }
            EditorGUI.EndDisabledGroup();

            EditorGUILayout.EndHorizontal();
        }

        #endregion Drawing Methods

        #region Component Dropdown
        
        private static void ShowComponentDropdown(SerializedProperty objectReference)
        {
            int instanceId = objectReference.objectReferenceInstanceIDValue;
            GameObject gameObject = objectReference.objectReferenceValue switch
            {
                GameObject go => go,
                Component component => component.gameObject,
                _ => null
            };

            if (gameObject == null) 
                return;
            
            GenericMenu menu = new();
            menu.AddItem(new GUIContent("GameObject"), gameObject.GetInstanceID() == instanceId, () =>
            {
                objectReference.objectReferenceValue = gameObject;
                objectReference.serializedObject.ApplyModifiedProperties();
            });
            
            menu.AddSeparator(string.Empty); // looks nice to separate root object from components
            
            var components = gameObject.GetComponents<Component>();
            for (var i = 0; i < components.Length; i++)
            {
                Component component = components[i]; // appending index so object with multiple of same component can be selected
                menu.AddItem(new GUIContent($"{i}. {component.GetType().Name}"), component.GetInstanceID() == instanceId, () =>
                {
                    objectReference.objectReferenceValue = component;
                    objectReference.serializedObject.ApplyModifiedProperties();
                });
            }

            menu.ShowAsContext();
        }
        
        #endregion Component Dropdown
    }
}