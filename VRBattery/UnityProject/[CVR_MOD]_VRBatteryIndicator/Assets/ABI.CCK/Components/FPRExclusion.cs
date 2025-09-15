using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using Object = UnityEngine.Object;
#if UNITY_EDITOR
using UnityEditor;
#endif

namespace ABI.CCK.Components
{
    /// <summary>
    ///     Manual exclusion component for the TransformHider (FPR) system.
    ///     Allows you to manually hide and show renderers that would otherwise be hidden.
    ///     Supports SkinnedMeshRenderer and MeshRenderer.
    ///     A FPRExclusion is generated on the head bone, hidden by default, if it doesn't already exist.
    /// </summary>
    [DisallowMultipleComponent]
    [AddComponentMenu("ChilloutVR/FPR Exclusion")]
    public class FPRExclusion : MonoBehaviour, ICCK_Component
    {
        public bool isShown = true;
        public Transform target;
        public bool shrinkToZero = true;
        
#if UNITY_EDITOR
        [NonSerialized] // for gizmo drawing purposes only
        public readonly List<Transform> influencedTransforms = new();
#endif
    }
}