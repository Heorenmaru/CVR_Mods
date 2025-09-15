#if UNITY_EDITOR
using System;
using System.Collections.Generic;
using ABI.CCK.Scripts;
using ABI.CCK.Scripts.Editor;
using UnityEditor;
using UnityEditorInternal;
using UnityEngine;
using static ABI.CCK.Scripts.Editor.SharedComponentGUI;

namespace ABI.CCK.Components
{
    public partial class CCK_CVRAvatarEditor
    {
        // Muscle Limits
        private Vector2 _leftEyeUpDown, _leftEyeInOut, _rightEyeUpDown, _rightEyeInOut;

        private void Draw_EyeLookSettings()
        {
            using (new FoldoutScope(ref _guiEyeLookSettingsFoldout, "Eye Look Settings"))
            {
                if (!_guiEyeLookSettingsFoldout) return;
                using (new EditorGUI.IndentLevelScope())
                    DrawEyeLookSettings();
            }
        }

        #region Drawing Methods

        private void DrawEyeLookSettings()
        {
            EditorGUILayout.PropertyField(m_UseEyeMovementProp, new GUIContent("Use Eye Movement"));

            Separator();

            EditorGUIExtensions.LimitSliderSidedProp("Switch target interval (Seconds)", m_EyeMovementIntervalProp, CVRAvatar.EyeMovementMinIntervalLimit, CVRAvatar.EyeMovementMaxIntervalLimit);

            // Eye movement mode
            SerializedProperty typeProp = m_EyeMovementInfoProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfo.type));
            EditorGUILayout.PropertyField(typeProp, new GUIContent("Eye Look Mode"));

            Separator();

            switch (_avatar.eyeMovementInfo.type)
            {
                default: // legacy avatars likely use Muscle
                case CVRAvatar.CVRAvatarEyeLookMode.Muscle:
                    DrawMuscleEyeSettings();
                    break;
                case CVRAvatar.CVRAvatarEyeLookMode.None:
                    EditorGUILayout.HelpBox("Eye movement will be completely disabled.", MessageType.Info);
                    break;
                case CVRAvatar.CVRAvatarEyeLookMode.Transform:
                    m_EyeMovementInfoEyesList.DoLayoutList();
                    EditorGUILayout.HelpBox("Is Left will dictate the Eye In/Out direction, and used for the " +
                                            "parameter stream (it will pick the first left and right eye available.", MessageType.Info);
                    break;
                case CVRAvatar.CVRAvatarEyeLookMode.Blendshape:
                    m_EyeMovementInfoEyesList.DoLayoutList();

                    EditorGUILayout.HelpBox("Is Left will dictate the Eye In/Out direction, and used for the " +
                                            "parameter stream (it will pick the first left and right eye available.", MessageType.Info);

                    EditorGUILayout.HelpBox("These angle limit values will be used to decide when a blendshape takes the value 100. " +
                                            "For example if you set the eye up limit to 25 degrees, we will set the blendshape to 100 " +
                                            "whenever the eye angle is 25 degrees up (or more).", MessageType.Info);
                    break;
            }
        }

        private void DrawMuscleEyeSettings()
        {
            if (!_isHumanoid)
            {
                EditorGUILayout.HelpBox("Avatar is not configured as humanoid or lacks an Animator component. Muscle eye look mode is not supported!",
                    MessageType.Error);
                return;
            }

            EditorGUILayout.HelpBox("Using the eye transforms and muscle limits set in the humanoid configuration.",
                MessageType.Info);

            if (!InnerFoldout(ref _guiEyeLookMuscleInfoFoldout, "Eye Limits"))
                return;

            EditorGUI.BeginDisabledGroup(true);

            EditorGUILayout.ObjectField("Left Eye", _animator.GetBoneTransform(HumanBodyBones.LeftEye),
                typeof(Transform), true);
            EditorGUILayout.ObjectField("Right Eye", _animator.GetBoneTransform(HumanBodyBones.RightEye),
                typeof(Transform), true);

            EditorGUILayout.LabelField("Left Eye Limits (in degrees)", EditorStyles.boldLabel);
            EditorGUIExtensions.LimitSliderSided("Eye Down/Up", ref _leftEyeUpDown, -180f, 180f);
            EditorGUIExtensions.LimitSliderSided("Eye In/Out", ref _leftEyeInOut, -180f, 180f);

            EditorGUILayout.LabelField("Right Eye Limits (in degrees)", EditorStyles.boldLabel);
            EditorGUIExtensions.LimitSliderSided("Eye Down/Up", ref _rightEyeUpDown, -180f, 180f);
            EditorGUIExtensions.LimitSliderSided("Eye In/Out", ref _rightEyeInOut, -180f, 180f);

            EditorGUI.EndDisabledGroup();
        }

        private ReorderableList InitializeEyesReorderableList(SerializedProperty eyeMovementInfoProp) {
            SerializedProperty eyesListProp = eyeMovementInfoProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfo.eyes));
            return new ReorderableList(eyeMovementInfoProp.serializedObject, eyesListProp, true, true, true, true) {
                drawHeaderCallback = OnDrawHeaderEyeSettings,
                drawElementCallback = OnDrawElementEyeSettings,
                elementHeightCallback = OnHeightElementEyeSettings,
                onChangedCallback = OnChangedEyeSettings,
                onAddCallback = OnAddEyeElement,
                onRemoveCallback = OnRemoveEyeElement,
            };
        }

        private void OnAddEyeElement(ReorderableList list)
        {
            Undo.RecordObject(target, "Add Avatar Custom Eye Element");
            serializedObject.Update();

            var tempList = _avatar.eyeMovementInfo.eyes == null
                ? new List<CVRAvatar.EyeMovementInfoEye>()
                : new List<CVRAvatar.EyeMovementInfoEye>(_avatar.eyeMovementInfo.eyes);

            // Attempt to auto-populate the eye transforms
            bool containsOneRightEye = tempList.Exists(e => e is { isLeft: false });
            Transform eyeInitialTransform = null;
            if (_animator != null && _animator.isHuman)
                eyeInitialTransform = _animator.GetBoneTransform(containsOneRightEye ? HumanBodyBones.LeftEye : HumanBodyBones.RightEye);

            switch (_avatar.eyeMovementInfo.type)
            {
                case CVRAvatar.CVRAvatarEyeLookMode.Transform:
                    tempList.Add(new CVRAvatar.EyeMovementInfoEye() {
                        isLeft = containsOneRightEye,
                        eyeTransform = eyeInitialTransform,
                        eyeSkinnedMeshRenderer = _avatar.bodyMesh,
                        eyeAngleLimitDown = CVRAvatar.DefaultEyeAngleLimitDown,
                        eyeAngleLimitUp = CVRAvatar.DefaultEyeAngleLimitUp,
                        eyeAngleLimitIn = CVRAvatar.DefaultEyeAngleLimitIn,
                        eyeAngleLimitOut = CVRAvatar.DefaultEyeAngleLimitOut,
                    });
                    break;

                case CVRAvatar.CVRAvatarEyeLookMode.Blendshape:
                    tempList.Add(new CVRAvatar.EyeMovementInfoEye() {
                        isLeft = containsOneRightEye,
                        eyeTransform = eyeInitialTransform,
                        eyeSkinnedMeshRenderer = _avatar.bodyMesh,
                        eyeAngleLimitDown = -CVRAvatar.DefaultUniformAngleLimit,
                        eyeAngleLimitUp = CVRAvatar.DefaultUniformAngleLimit,
                        eyeAngleLimitIn = -CVRAvatar.DefaultUniformAngleLimit,
                        eyeAngleLimitOut = CVRAvatar.DefaultUniformAngleLimit,
                    });
                    break;
            }

            _avatar.eyeMovementInfo.eyes = tempList.ToArray();

            serializedObject.ApplyModifiedProperties();
            EditorUtility.SetDirty(target);
        }

        private void OnRemoveEyeElement(ReorderableList list)
        {
            var index = list.index;
            var eyesProperty = list.serializedProperty;
            if (index < 0 || index >= eyesProperty.arraySize) return;
            eyesProperty.DeleteArrayElementAtIndex(index);
            eyesProperty.serializedObject.ApplyModifiedProperties();
        }

        private void OnDrawHeaderEyeSettings(Rect rect)
        {
            Rect labelRect = new Rect(rect.x, rect.y, rect.width - 35, EditorGUIUtility.singleLineHeight);
            GUI.Label(labelRect, "Eyes");
        }

        private void OnChangedEyeSettings(ReorderableList list)
        {
            EditorUtility.SetDirty(target);
        }

        private float OnHeightElementEyeSettings(int index)
        {
            SerializedProperty eyesListProp = m_EyeMovementInfoProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfo.eyes));
            float spacing = EditorGUIUtility.singleLineHeight * 1.25f;

            if (index >= eyesListProp.arraySize) return spacing;

            float heightElement = spacing * 3;

            SerializedProperty eyeProp = eyesListProp.GetArrayElementAtIndex(index);

            // Handle the missing/wrong transform height
            bool skip = false;
            SerializedProperty eyeTransformProp = eyeProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfoEye.eyeTransform));
            if (eyeTransformProp.objectReferenceValue == null || !((Transform)eyeTransformProp.objectReferenceValue).IsChildOf(_avatar.transform)) {
                heightElement += spacing * 1;
                skip = true;
            }

            if (skip) return heightElement;

            switch (_avatar.eyeMovementInfo.type) {

                case CVRAvatar.CVRAvatarEyeLookMode.Transform:
                    heightElement += spacing * 5;
                    break;

                case CVRAvatar.CVRAvatarEyeLookMode.Blendshape:

                    // Handle the missing/wrong mesh renderer height
                    SerializedProperty eyeSkinnedMeshRendererProp = eyeProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfoEye.eyeSkinnedMeshRenderer));
                    if (eyeSkinnedMeshRendererProp.objectReferenceValue == null || !((SkinnedMeshRenderer)eyeSkinnedMeshRendererProp.objectReferenceValue).transform.IsChildOf(_avatar.transform)) {
                        heightElement += spacing * 2;
                        break;
                    }

                    heightElement += spacing * 12;
                    break;
            }

            return heightElement;
        }

        private void OnDrawElementEyeSettings(Rect rect, int index, bool isActive, bool isFocused) {

            SerializedProperty eyesListProp = m_EyeMovementInfoProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfo.eyes));
            if (index >= eyesListProp.arraySize) return;

            rect = new Rect(rect.x, rect.y, rect.width, EditorGUIUtility.singleLineHeight);

            float spacing = EditorGUIUtility.singleLineHeight * 1.25f;

            SerializedProperty eyeProp = eyesListProp.GetArrayElementAtIndex(index);
            EditorGUI.LabelField(rect, $"Eye #{index+1}", EditorStyles.boldLabel);
            rect.y += spacing;

            SerializedProperty isLeftProp = eyeProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfoEye.isLeft));
            EditorGUI.PropertyField(rect, isLeftProp);
            rect.y += spacing;

            switch (_avatar.eyeMovementInfo.type) {
                case CVRAvatar.CVRAvatarEyeLookMode.Transform:
                    DrawTransformEyeSettingsEye(ref rect, spacing, eyeProp);
                    break;
                case CVRAvatar.CVRAvatarEyeLookMode.Blendshape:
                    DrawBlendshapeEyeSettingsEye(ref rect, spacing, eyeProp);
                    break;
            }
        }

        private void DrawTransformEyeSettingsEye(ref Rect rect, float spacing, SerializedProperty eyeProp) {

            SerializedProperty eyeTransformProp = eyeProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfoEye.eyeTransform));

            // Display ObjectFields for Transform
            eyeTransformProp.objectReferenceValue = EditorGUI.ObjectField(rect, "Eye Transform", eyeTransformProp.objectReferenceValue, typeof(Transform), true);
            rect.y += spacing;
            if (eyeTransformProp.objectReferenceValue == null) {
                EditorGUI.HelpBox(rect, "A Transform is required for Transform and Blenshapes based eye movement!", MessageType.Error);
                rect.y += spacing;
                return;
            }
            if (!((Transform)eyeTransformProp.objectReferenceValue).IsChildOf(_avatar.transform)) {
                EditorGUI.HelpBox(rect, "The Transform is not inside of the current avatar's Hierarchy!", MessageType.Error);
                rect.y += spacing;
                return;
            }

            // Set the angle values
            rect.y += spacing;
            EditorGUI.LabelField(rect, "Angle Limits (in degrees)", EditorStyles.boldLabel);
            rect.y += spacing;
            EditorGUIExtensions.LimitSliderSidedFloats(ref rect, spacing, "Eye Down/Up",
                eyeProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfoEye.eyeAngleLimitDown)),
                eyeProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfoEye.eyeAngleLimitUp)), -180f, 180f);

            EditorGUIExtensions.LimitSliderSidedFloats(ref rect, spacing, "Eye In/Out",
                eyeProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfoEye.eyeAngleLimitIn)),
                eyeProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfoEye.eyeAngleLimitOut)), -180f, 180f);

            rect.y += spacing;
        }

        private void DrawBlendshapeEyeSettingsEye(ref Rect rect, float spacing, SerializedProperty eyeProp) {

            SerializedProperty eyeTransformProp = eyeProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfoEye.eyeTransform));
            SerializedProperty eyeSkinnedMeshRendererProp = eyeProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfoEye.eyeSkinnedMeshRenderer));

            // Display ObjectFields for Transform and SkinnedMeshRenderer
            eyeTransformProp.objectReferenceValue = EditorGUI.ObjectField(rect, "Eye Position Transform", eyeTransformProp.objectReferenceValue, typeof(Transform), true);
            rect.y += spacing;
            if (eyeTransformProp.objectReferenceValue == null) {
                EditorGUI.HelpBox(rect, "A Transform is required for Transform and Blenshapes based eye movement!", MessageType.Error);
                rect.y += spacing;
                return;
            }
            if (!((Transform)eyeTransformProp.objectReferenceValue).IsChildOf(_avatar.transform)) {
                EditorGUI.HelpBox(rect, "The Transform is not inside of the current avatar's Hierarchy!", MessageType.Error);
                rect.y += spacing;
                return;
            }

            eyeSkinnedMeshRendererProp.objectReferenceValue = EditorGUI.ObjectField(rect, "Eye Skinned Mesh Renderer", eyeSkinnedMeshRendererProp.objectReferenceValue, typeof(SkinnedMeshRenderer), true);
            rect.y += spacing;
            if (eyeSkinnedMeshRendererProp.objectReferenceValue == null) {
                EditorGUI.HelpBox(rect, "A Skinned Mesh Renderer is required for Blenshapes based eye movement!", MessageType.Error);
                rect.y += spacing;
                return;
            }
            if (!((SkinnedMeshRenderer)eyeSkinnedMeshRendererProp.objectReferenceValue).transform.IsChildOf(_avatar.transform)) {
                EditorGUI.HelpBox(rect, "The Skinned Mesh Renderer is not inside of the current avatar's Hierarchy!", MessageType.Error);
                rect.y += spacing;
                return;
            }

            // Display blendshape selection for each side
            rect.y += spacing;
            EditorGUI.LabelField(rect, "Blendshapes", EditorStyles.boldLabel);
            rect.y += spacing;
            DrawBlendShapeSelector(ref rect, spacing, "Look Up", eyeProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfoEye.eyeBlendShapeUp)), eyeSkinnedMeshRendererProp.objectReferenceValue as SkinnedMeshRenderer);
            DrawBlendShapeSelector(ref rect, spacing, "Look Down", eyeProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfoEye.eyeBlendShapeDown)), eyeSkinnedMeshRendererProp.objectReferenceValue as SkinnedMeshRenderer);
            DrawBlendShapeSelector(ref rect, spacing, "Look In", eyeProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfoEye.eyeBlendShapeIn)), eyeSkinnedMeshRendererProp.objectReferenceValue as SkinnedMeshRenderer);
            DrawBlendShapeSelector(ref rect, spacing, "Look Out", eyeProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfoEye.eyeBlendShapeOut)), eyeSkinnedMeshRendererProp.objectReferenceValue as SkinnedMeshRenderer);

            // Set the angle values
            rect.y += spacing;
            EditorGUI.LabelField(rect, "Angle Limits (in degrees)", EditorStyles.boldLabel);
            rect.y += spacing;
            EditorGUIExtensions.LimitSliderSidedFloats(ref rect, spacing, "Eye Down/Up",
                eyeProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfoEye.eyeAngleLimitDown)),
                eyeProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfoEye.eyeAngleLimitUp)), -180f, 180f);

            EditorGUIExtensions.LimitSliderSidedFloats(ref rect, spacing, "Eye In/Out",
                eyeProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfoEye.eyeAngleLimitIn)),
                eyeProp.FindPropertyRelative(nameof(CVRAvatar.EyeMovementInfoEye.eyeAngleLimitOut)), -180f, 180f);

            rect.y += spacing;
        }

        private void DrawBlendShapeSelector(ref Rect rect, float spacing, string label, SerializedProperty blendShapeProp, SkinnedMeshRenderer skinnedMeshRenderer) {

            var blendShapes = new List<string> {"-none-"};
            for (int i = 0; i < skinnedMeshRenderer.sharedMesh.blendShapeCount; i++) {
                blendShapes.Add(skinnedMeshRenderer.sharedMesh.GetBlendShapeName(i));
            }

            int currentIndex = blendShapes.IndexOf(blendShapeProp.stringValue);
            if (currentIndex == -1) currentIndex = 0; // Default to "-none-"

            int selectedIndex = EditorGUI.Popup(rect, label, currentIndex, blendShapes.ToArray());
            rect.y += spacing;
            blendShapeProp.stringValue = selectedIndex > 0 ? blendShapes[selectedIndex] : "";
        }

        #endregion

        #region Private Methods

        private void GetHumanoidEyeMuscleLimits()
        {
            Vector2 defaultUpDown = new Vector2(-10f, 15f);
            Vector2 defaultInOut = new Vector2(-20f, 20f);

            foreach (HumanBone humanBone in _animator.avatar.humanDescription.human)
                if (humanBone.humanName == HumanBodyBones.LeftEye.ToString())
                {
                    _leftEyeUpDown = humanBone.limit.useDefaultValues
                        ? defaultUpDown
                        : new Vector2(humanBone.limit.min.z, humanBone.limit.max.z);
                    _leftEyeInOut = humanBone.limit.useDefaultValues
                        ? defaultInOut
                        : new Vector2(-humanBone.limit.max.y, -humanBone.limit.min.y);
                }
                else if (humanBone.humanName == HumanBodyBones.RightEye.ToString())
                {
                    _rightEyeUpDown = humanBone.limit.useDefaultValues
                        ? defaultUpDown
                        : new Vector2(humanBone.limit.min.z, humanBone.limit.max.z);
                    _rightEyeInOut = humanBone.limit.useDefaultValues
                        ? defaultInOut
                        : new Vector2(humanBone.limit.min.y, humanBone.limit.max.y);
                }
        }

        #endregion
    }
}
#endif