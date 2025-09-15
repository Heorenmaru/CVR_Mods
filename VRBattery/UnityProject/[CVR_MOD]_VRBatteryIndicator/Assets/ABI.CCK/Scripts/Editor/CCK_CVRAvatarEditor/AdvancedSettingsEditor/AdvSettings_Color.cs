#if UNITY_EDITOR
using System;
using System.Collections.Generic;
using System.Linq;
using ABI.CCK.Scripts;
using ABI.CCK.Scripts.Editor;
using UnityEditor;
using UnityEditorInternal;
using UnityEngine;
using UnityEngine.Rendering;
using static ABI.CCK.Scripts.Editor.SharedComponentGUI;

namespace ABI.CCK.Components
{
    public partial class CCK_CVRAvatarEditor
    {
        private void DrawColorInternal(
            Rect rect,
            float spacing,
            CVRAdvancedSettingsEntry advSettingEntry,
            SerializedProperty advSettingProp)
        {
            CVRAdvancedAvatarSettingMaterialColor colorSetting = (CVRAdvancedAvatarSettingMaterialColor)advSettingEntry.setting;
            
            SerializedProperty defaultValueProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancedAvatarSettingMaterialColor.defaultValue));
            EditorGUI.PropertyField(rect, defaultValueProp, new GUIContent("Default Color"));
            rect.y += spacing;

            // foldout
            advSettingEntry.isAutogenCollapsed = !EditorGUI.Foldout(rect, !advSettingEntry.isAutogenCollapsed, "Autogeneration Options", true, s_BoldFoldoutStyle);
            if (advSettingEntry.isAutogenCollapsed)
                return;
            
            // autogen stuff
            rect.y += spacing;
            
            SerializedProperty materialColorTargets = advSettingProp.FindPropertyRelative(nameof(CVRAdvancedAvatarSettingMaterialColor.materialColorTargets));
            
            // Material Color Targets List
            if (colorSetting.reorderableList == null // recreate list if null or stale
                || colorSetting.reorderableList.serializedProperty.serializedObject != serializedObject)
            {

                colorSetting.reorderableList = new ReorderableList(serializedObject, materialColorTargets,
                    true, true, true, true)
                {
                    list = colorSetting.materialColorTargets,
                };

                colorSetting.reorderableList.drawElementCallback = (innerRect, innerIndex, _, _) =>
                {
                    innerRect = new Rect(innerRect.x, innerRect.y + 2, innerRect.width, EditorGUIUtility.singleLineHeight);
                    SerializedProperty colorEntry = colorSetting.reorderableList.serializedProperty.GetArrayElementAtIndex(innerIndex);
                
                    const float elementSpacing = 5;
                    const float infoIconWidth = 20;
                    float innerRectHalfWidth = innerRect.width * 0.5f;
                    
                    // GameObject Field
                    innerRect.width = innerRectHalfWidth;
                    SerializedProperty materialColorProp = colorEntry.FindPropertyRelative(nameof(CVRAdvancedSettingsTargetEntryMaterialColor.gameObject));
                    EditorGUI.PropertyField(innerRect, materialColorProp, GUIContent.none);
                    
                    string tooltipPath = "No Target";
                    var propertyList = new Dictionary<string, string>();
                    if (materialColorProp.objectReferenceValue != null)
                    {
                        Transform avatarTransform = _avatar.transform;
                        Transform targetTransform = ((GameObject)materialColorProp.objectReferenceValue).transform;
                        if (!targetTransform.IsChildOf(avatarTransform))
                        {
                            materialColorProp.objectReferenceValue = null; // invalid
                        }
                        else
                        {
                            MeshRenderer meshRenderer = targetTransform.GetComponent<MeshRenderer>();
                            SkinnedMeshRenderer skinnedMeshRenderer = targetTransform.GetComponent<SkinnedMeshRenderer>();
                            ParticleSystemRenderer particleRenderer = targetTransform.GetComponent<ParticleSystemRenderer>();
                            LineRenderer lineRenderer =targetTransform.GetComponent<LineRenderer>();
                            TrailRenderer trailRenderer = targetTransform.GetComponent<TrailRenderer>();
                            
                            bool rendererFound = meshRenderer || skinnedMeshRenderer || particleRenderer ||
                                                 lineRenderer || trailRenderer;

                            if (rendererFound)
                            {
                                #region Populate Property List

                                if (meshRenderer != null)
                                {
                                    foreach (Material material in meshRenderer.sharedMaterials)
                                    {
                                        if (material == null) continue;
                                        Shader shader = material.shader;
                                        for (var j = 0; j < shader.GetPropertyCount(); j++)
                                        {
                                            if (shader.GetPropertyType(j) != ShaderPropertyType.Color) continue;
                                            var propertyKey = "MeshRenderer: " + shader.GetPropertyDescription(j) +
                                                              "(" + shader.GetPropertyName(j) + ")";
                                            if (!propertyList.ContainsKey(propertyKey))
                                                propertyList.Add(propertyKey, "MSR:" + shader.GetPropertyName(j));
                                        }
                                    }
                                }

                                if (skinnedMeshRenderer != null)
                                {
                                    foreach (Material material in skinnedMeshRenderer.sharedMaterials)
                                    {
                                        if (material == null) continue;
                                        Shader shader = material.shader;
                                        for (var j = 0; j < shader.GetPropertyCount(); j++)
                                        {
                                            if (shader.GetPropertyType(j) != ShaderPropertyType.Color) continue;
                                            var propertyKey = "SkinnedMeshRenderer: " +
                                                              shader.GetPropertyDescription(j) + "(" +
                                                              shader.GetPropertyName(j) + ")";
                                            if (!propertyList.ContainsKey(propertyKey))
                                                propertyList.Add(propertyKey, "SMR:" + shader.GetPropertyName(j));
                                        }
                                    }
                                }

                                if (particleRenderer != null)
                                {
                                    foreach (Material material in particleRenderer.sharedMaterials)
                                    {
                                        if (material == null) continue;
                                        Shader shader = material.shader;
                                        for (var j = 0; j < shader.GetPropertyCount(); j++)
                                        {
                                            if (shader.GetPropertyType(j) != ShaderPropertyType.Color) continue;
                                            var propertyKey = "ParticleRenderer: " + shader.GetPropertyDescription(j) +
                                                              "(" + shader.GetPropertyName(j) + ")";
                                            if (!propertyList.ContainsKey(propertyKey))
                                                propertyList.Add(propertyKey, "PTR:" + shader.GetPropertyName(j));
                                        }
                                    }
                                }

                                if (lineRenderer != null)
                                {
                                    foreach (Material material in lineRenderer.sharedMaterials)
                                    {
                                        if (material == null) continue;
                                        Shader shader = material.shader;
                                        for (var j = 0; j < shader.GetPropertyCount(); j++)
                                        {
                                            if (shader.GetPropertyType(j) != ShaderPropertyType.Color) continue;
                                            var propertyKey = "LineRenderer: " + shader.GetPropertyDescription(j) +
                                                              "(" + shader.GetPropertyName(j) + ")";
                                            if (!propertyList.ContainsKey(propertyKey))
                                                propertyList.Add(propertyKey, "LNR:" + shader.GetPropertyName(j));
                                        }
                                    }
                                }

                                if (trailRenderer != null)
                                {
                                    foreach (Material material in trailRenderer.sharedMaterials)
                                    {
                                        if (material == null) continue;
                                        Shader shader = material.shader;
                                        for (var j = 0; j < shader.GetPropertyCount(); j++)
                                        {
                                            if (shader.GetPropertyType(j) != ShaderPropertyType.Color) continue;
                                            var propertyKey = "TrailRenderer: " + shader.GetPropertyDescription(j) +
                                                              "(" + shader.GetPropertyName(j) + ")";
                                            if (!propertyList.ContainsKey(propertyKey))
                                                propertyList.Add(propertyKey, "TLR:" + shader.GetPropertyName(j));
                                        }
                                    }
                                }

                                #endregion
                            }
                            else
                            {
                                materialColorProp.objectReferenceValue = null; // invalid
                            }
                            
                            SerializedProperty materialColorPathProp = colorEntry.FindPropertyRelative(nameof(CVRAdvancedSettingsTargetEntryMaterialColor.treePath));
                            materialColorPathProp.stringValue = AnimationUtility.CalculateTransformPath(targetTransform, avatarTransform);
                            tooltipPath = $"Path: {avatarTransform.name}/{materialColorPathProp.stringValue}";
                        }
                    }
                    
                    // Property Dropdown
                    innerRect.x += innerRectHalfWidth + elementSpacing;
                    innerRect.width -= 2*infoIconWidth - 2*elementSpacing; // left/right padding
                    SerializedProperty propNameProp = colorEntry.FindPropertyRelative(nameof(CVRAdvancedSettingsTargetEntryMaterialColor.propertyName));
                    SerializedProperty propTypeIdProp = colorEntry.FindPropertyRelative(nameof(CVRAdvancedSettingsTargetEntryMaterialColor.propertyTypeIdentifier));
                    
                    // not valid as a serialized property?
                    //SerializedProperty propTypeProp = toggleEntry.FindPropertyRelative(nameof(CVRAdvancedSettingsTargetEntryMaterialColor.propertyType));
                    
                    //var propNames = propertyList.Keys.ToArray();
                    var propDescs = propertyList.Values.ToArray();
                    string currentItem = propNameProp.stringValue.Length > 0
                        ? propTypeIdProp.stringValue + ":" + propNameProp.stringValue
                        : CVRCommon.NONE_OR_EMPTY;
                    
                    // search dropdown for material properties
                    int selected = EditorGUIExtensions.CustomPopup(
                        innerRect,
                        Array.IndexOf(propDescs, currentItem),
                        propDescs,
                        "No Properties"
                    );
                    
                    // name: _Color
                    // typeid: SMR
                    // type: SkinnedMeshRenderer
                    
                    if (selected >= 0)
                    {
                        currentItem = propDescs[selected];
                        propNameProp.stringValue = currentItem[4..];
                        propTypeIdProp.stringValue = currentItem[..3];
                        serializedObject.ApplyModifiedProperties();
                        // propType is not a valid serialized property
                        // so autogen will need to handle this
                    }

                    // Path Info
                    innerRect.x += innerRect.width + elementSpacing;
                    innerRect.width = infoIconWidth;
                    EditorGUI.LabelField(innerRect, new GUIContent(EditorGUIUtility.IconContent("d_animationanimated").image, tooltipPath));
                };

                colorSetting.reorderableList.elementHeight = EditorGUIUtility.singleLineHeight + 4f;
                colorSetting.reorderableList.drawHeaderCallback = (headerRect) =>
                {
                    Rect labelRect = new(headerRect.x, headerRect.y, headerRect.width - 35, EditorGUIUtility.singleLineHeight);
                    EditorGUI.LabelField(labelRect, $"Color Targets ({materialColorTargets.arraySize})");
                    labelRect.x += 35; // not sure why this is needed, nested lists are weird
                    EditorGUIExtensions.UtilityMenu(labelRect, colorSetting.reorderableList, materialColorTargets);
                };
            }

            colorSetting.reorderableList.DoList(rect);
        }
    }
}
#endif