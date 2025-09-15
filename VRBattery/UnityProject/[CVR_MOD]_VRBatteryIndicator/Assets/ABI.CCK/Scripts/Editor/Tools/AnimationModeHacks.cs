using System;
using UnityEditor;
using UnityEngine;
using Object = UnityEngine.Object;

namespace ABI.CCK.Scripts.Editor.Hacks
{
    // Fixes Animation window preview & playback state being included in the build
    // https://feedback.abinteractive.net/p/animation-preview-values-are-applied-on-upload
    public static class AnimationModeHacks
    {
        public static void DestroyAnimationModeDriver()
        {
            try
            {
                // find all AnimationModeDriver objects (backs the AnimationModeWindow)
                // https://github.com/Unity-Technologies/UnityCsReference/blob/master/Editor/Mono/Animation/AnimationWindow/AnimationWindowControl.cs#L123
                var allDrivers = Resources.FindObjectsOfTypeAll(typeof(AnimationModeDriver));
                foreach (Object driver in allDrivers) Object.DestroyImmediate(driver); // i believe is safe to do lol
            }
            catch (Exception e)
            {
                Debug.LogError($"[CCK:AnimationModeHacks] Failed to destroy AnimationModeDriver: {e}");
            }
        }
    }
}