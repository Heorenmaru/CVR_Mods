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
        private void DrawSliderInternal(
            Rect rect,
            float spacing,
            CVRAdvancedSettingsEntry advSettingEntry,
            SerializedProperty advSettingProp)
        {
            CVRAdvancesAvatarSettingSlider sliderSetting = (CVRAdvancesAvatarSettingSlider)advSettingEntry.setting;
            
            // min/max is not yet exposed, but is in the client
            SerializedProperty defaultValueProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingSlider.defaultValue));
            defaultValueProp.floatValue = EditorGUI.Slider(rect, "Default Value", defaultValueProp.floatValue, 0f, 1f);
            rect.y += spacing;

            // foldout
            advSettingEntry.isAutogenCollapsed = !EditorGUI.Foldout(rect, !advSettingEntry.isAutogenCollapsed, "Autogeneration Options", true, s_BoldFoldoutStyle);
            if (advSettingEntry.isAutogenCollapsed)
                return;
            
            // autogen stuff
            rect.y += spacing;
            
            SerializedProperty useAnimationProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingSlider.useAnimationClip));
            SerializedProperty minAnimationClipProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingSlider.minAnimationClip));
            SerializedProperty maxAnimationClipProp = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingSlider.maxAnimationClip));
            
            useAnimationProp.boolValue = EditorGUI.Toggle(rect, "Use Animation Clip", useAnimationProp.boolValue);
            rect.y += spacing;
            
            // Animation Clip Fields
            if (useAnimationProp.boolValue)
            {
                EditorGUI.PropertyField(new Rect(rect.x, rect.y, rect.width, EditorGUIUtility.singleLineHeight), minAnimationClipProp);
                rect.y += spacing;
                EditorGUI.PropertyField(new Rect(rect.x, rect.y, rect.width, EditorGUIUtility.singleLineHeight), maxAnimationClipProp);
                return;
            }
            
            SerializedProperty materialPropertyTargets = advSettingProp.FindPropertyRelative(nameof(CVRAdvancesAvatarSettingSlider.materialPropertyTargets));

            // Slider Float/Range Targets List
            if (sliderSetting.reorderableList == null // recreate list if null or stale
                || sliderSetting.reorderableList.serializedProperty.serializedObject != serializedObject)
            {
                sliderSetting.reorderableList = new ReorderableList(serializedObject, materialPropertyTargets,
                    true, true, true, true)
                {
                    list = sliderSetting.materialPropertyTargets,
                };

                sliderSetting.reorderableList.drawElementCallback = (innerRect, innerIndex, _, _) =>
                {
                    innerRect = new Rect(innerRect.x, innerRect.y + 2, innerRect.width, EditorGUIUtility.singleLineHeight);
                    Rect innerRectButBelow = new Rect(innerRect.x, innerRect.y + 2, innerRect.width, EditorGUIUtility.singleLineHeight);

                    SerializedProperty colorEntry = sliderSetting.reorderableList.serializedProperty.GetArrayElementAtIndex(innerIndex);
                
                    const float elementSpacing = 5;
                    const float infoIconWidth = 20;
                    float innerRectHalfWidth = innerRect.width * 0.5f;
                    
                    // GameObject Field
                    innerRect.width = innerRectHalfWidth;
                    SerializedProperty materialColorProp = colorEntry.FindPropertyRelative(nameof(CVRAdvancedSettingsTargetEntryMaterialProperty.gameObject));
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
                                            if (shader.GetPropertyType(j) != ShaderPropertyType.Float 
                                                && shader.GetPropertyType(j) != ShaderPropertyType.Range) continue;
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
                                            if (shader.GetPropertyType(j) != ShaderPropertyType.Float 
                                                && shader.GetPropertyType(j) != ShaderPropertyType.Range) continue;
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
                                            if (shader.GetPropertyType(j) != ShaderPropertyType.Float 
                                                && shader.GetPropertyType(j) != ShaderPropertyType.Range) continue;
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
                                            if (shader.GetPropertyType(j) != ShaderPropertyType.Float 
                                                && shader.GetPropertyType(j) != ShaderPropertyType.Range) continue;
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
                                            if (shader.GetPropertyType(j) != ShaderPropertyType.Float 
                                                && shader.GetPropertyType(j) != ShaderPropertyType.Range) continue;
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
                            
                            SerializedProperty materialColorPathProp = colorEntry.FindPropertyRelative(nameof(CVRAdvancedSettingsTargetEntryMaterialProperty.treePath));
                            materialColorPathProp.stringValue = AnimationUtility.CalculateTransformPath(targetTransform, avatarTransform);
                            tooltipPath = $"Path: {avatarTransform.name}/{materialColorPathProp.stringValue}";
                        }
                    }
                    
                    // Property Dropdown
                    innerRect.x += innerRectHalfWidth + elementSpacing;
                    innerRect.width -= 2*infoIconWidth - 2*elementSpacing; // left/right padding
                    SerializedProperty propNameProp = colorEntry.FindPropertyRelative(nameof(CVRAdvancedSettingsTargetEntryMaterialProperty.propertyName));
                    SerializedProperty propTypeIdProp = colorEntry.FindPropertyRelative(nameof(CVRAdvancedSettingsTargetEntryMaterialProperty.propertyTypeIdentifier));
                    SerializedProperty minValueProp = colorEntry.FindPropertyRelative(nameof(CVRAdvancedSettingsTargetEntryMaterialProperty.minValue));
                    SerializedProperty maxValueProp = colorEntry.FindPropertyRelative(nameof(CVRAdvancedSettingsTargetEntryMaterialProperty.maxValue));
                    
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
                    innerRectButBelow.y += EditorGUIUtility.singleLineHeight + 4f;
                    innerRectButBelow.width = innerRectHalfWidth;
                    minValueProp.floatValue = EditorGUI.FloatField(innerRectButBelow, "Min Value", minValueProp.floatValue);
                    innerRectButBelow.x += innerRectHalfWidth + elementSpacing;
                    maxValueProp.floatValue = EditorGUI.FloatField(innerRectButBelow, "Max Value", maxValueProp.floatValue);
                };

                sliderSetting.reorderableList.elementHeight = (EditorGUIUtility.singleLineHeight + 4f) * 2f;
                sliderSetting.reorderableList.drawHeaderCallback = (headerRect) =>
                {
                    Rect labelRect = new(headerRect.x, headerRect.y, headerRect.width - 35, EditorGUIUtility.singleLineHeight);
                    EditorGUI.LabelField(labelRect, $"Slider Targets ({materialPropertyTargets.arraySize})");
                    labelRect.x += 35; // not sure why this is needed, nested lists are weird
                    EditorGUIExtensions.UtilityMenu(labelRect, sliderSetting.reorderableList, materialPropertyTargets);
                };
            }

            sliderSetting.reorderableList.DoList(rect);
        }
    }
}
#endif