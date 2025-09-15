#if UNITY_EDITOR
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEngine;
using Object = UnityEngine.Object;

namespace ABI.CCK.Components
{
    [CanEditMultipleObjects]
    [CustomEditor(typeof(FPRExclusion))]
    public partial class CCK_FPRExclusionEditor : Editor
    {
        #region EditorGUI Properties

        // influenced transforms foldout
        private static bool _guiInfluencedTransformsFoldout;
        private Vector2 _influencedTransformsScrollPos;
        
        // popup options
        private readonly string[] hideModePopupOptions = {"Cut", "Shrink"};

        #endregion

        #region Private Variables
    
        private CVRAvatar _avatar;    
        private FPRExclusion _fprExclusion;

        #endregion

        #region Serialized Properties
        
        private SerializedProperty m_isShownProp;
        private SerializedProperty m_shrinkToZeroProp;
        private SerializedProperty m_targetProp;

        #endregion
        
        #region Unity Events
        
        private void OnEnable()
        {
            if (target == null) return;
            _fprExclusion = (FPRExclusion)target;
            
            _avatar = _fprExclusion.GetComponentInParent<CVRAvatar>();
            if (_avatar == null) return;
            
            m_isShownProp = serializedObject.FindProperty(nameof(FPRExclusion.isShown));
            m_shrinkToZeroProp = serializedObject.FindProperty(nameof(FPRExclusion.shrinkToZero));
            m_targetProp = serializedObject.FindProperty(nameof(FPRExclusion.target));
            
            // collect influenced transforms
            CollectTransformInfluenceList(_avatar);
        }

        public override void OnInspectorGUI()
        {
            if (_fprExclusion == null) 
                return;
            
            Transform oldTarget = _fprExclusion.target;

            EditorGUILayout.HelpBox(
                "Manual exclusion component for the TransformHider (FPR) system.\n" +
                "Allows you to manually hide and show chains of transforms that would otherwise be hidden in first person. (ex: hair, glasses, etc.)",
                MessageType.None);
            
            if (_avatar == null)
            {
                EditorGUILayout.HelpBox("This component is only functional when attached to an avatar.", MessageType.Warning);
                return;
            }
            
            serializedObject.Update();
            
            Draw_ExclusionSettings();
            
            serializedObject.ApplyModifiedProperties();
            
            if (oldTarget != _fprExclusion.target) // if target changed, update the children
                CollectTransformInfluenceList(_avatar);
        }

        #endregion
        
        #region Gizmo Drawing

        [DrawGizmo(GizmoType.Selected)]
        private static void OnGizmosSelected(FPRExclusion exclusion, GizmoType _) => DrawGizmos(exclusion);
        
        private static void DrawGizmos(FPRExclusion exclusion)
        {
            if (!_guiInfluencedTransformsFoldout)
                return;
            
            Gizmos.color = exclusion.isShown ? Color.green : Color.red;
            
            // draw lines to represent the influenced transform chain
            for (var i = 0; i < exclusion.influencedTransforms.Count; i++)
            {
                if (i + 1 >= exclusion.influencedTransforms.Count) 
                    continue; // skip first and last transform
                
                Transform next = exclusion.influencedTransforms[i + 1];
                Transform parent = next.parent;
                if (parent == null || next == null) continue;
                Gizmos.DrawLine(parent.position, next.position);
            }
        }

        #endregion

        #region Private Methods
        
        private static readonly List<Transform> _seenTransforms = new();
        
        private static void CollectTransformInfluenceList(Component avatarRoot)
        {
            _seenTransforms.Clear();
            
            // head bone has a default exclusion, user can use their own tho
            Animator animator = avatarRoot.GetComponent<Animator>();
            if (animator != null && animator.avatar != null && animator.isHuman)
            {
                Transform headBone = animator.GetBoneTransform(HumanBodyBones.Head);
                if (headBone != null && headBone.GetComponent<FPRExclusion>() == null)
                    _seenTransforms.Add(headBone); // if no custom exclusion, add manually to seen list
            }
            
            var fprExclusions = avatarRoot.GetComponentsInChildren<FPRExclusion>(true).ToList();
            for (var i = fprExclusions.Count - 1; i >= 0; i--)
            {
                FPRExclusion exclusion = fprExclusions[i];
                exclusion.influencedTransforms.Clear(); // clear previous list
                ProcessExclusion(exclusion, exclusion.target ? exclusion.target : exclusion.transform);
            }

            return;
            void ProcessExclusion(FPRExclusion exclusion, Transform transform)
            {
                if (_seenTransforms.Contains(transform)
                    && transform != exclusion.target)
                    return; // found transform in existing exclusion

                _seenTransforms.Add(transform);
                exclusion.influencedTransforms.Add(transform);
                foreach (Transform child in transform) // process children
                    ProcessExclusion(exclusion, child);
            }
        }

        #endregion
    }
}
#endif