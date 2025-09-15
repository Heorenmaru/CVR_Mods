using System.Collections.Generic;
using ABI.CCK.Scripts;
using UnityEngine;

namespace ABI.CCK.Components
{
    [AddComponentMenu("ChilloutVR/CVR Animator Driver")]
    [HelpURL("https://docs.abinteractive.net/cck/components/animator-driver/")]
    public class CVRAnimatorDriver : MonoBehaviour, ICCK_Component
    {
        public float animatorParameter01;
        public float animatorParameter02;
        public float animatorParameter03;
        public float animatorParameter04;
        public float animatorParameter05;
        public float animatorParameter06;
        public float animatorParameter07;
        public float animatorParameter08;
        public float animatorParameter09;
        public float animatorParameter10;
        public float animatorParameter11;
        public float animatorParameter12;
        public float animatorParameter13;
        public float animatorParameter14;
        public float animatorParameter15;
        public float animatorParameter16;

        public List<Animator> animators = new();
        public List<string> animatorParameters = new();
        public List<int> animatorParameterType = new(); // why do we store these? we could cache on start

        private void OnDidApplyAnimationProperties()
        {
            if (animators.Count >= 1) ApplyAnimatorChange(animators[0], animatorParameters[0], animatorParameterType[0], animatorParameter01);
            if (animators.Count >= 2) ApplyAnimatorChange(animators[1], animatorParameters[1], animatorParameterType[1], animatorParameter02);
            if (animators.Count >= 3) ApplyAnimatorChange(animators[2], animatorParameters[2], animatorParameterType[2], animatorParameter03);
            if (animators.Count >= 4) ApplyAnimatorChange(animators[3], animatorParameters[3], animatorParameterType[3], animatorParameter04);
            if (animators.Count >= 5) ApplyAnimatorChange(animators[4], animatorParameters[4], animatorParameterType[4], animatorParameter05);
            if (animators.Count >= 6) ApplyAnimatorChange(animators[5], animatorParameters[5], animatorParameterType[5], animatorParameter06);
            if (animators.Count >= 7) ApplyAnimatorChange(animators[6], animatorParameters[6], animatorParameterType[6], animatorParameter07);
            if (animators.Count >= 8) ApplyAnimatorChange(animators[7], animatorParameters[7], animatorParameterType[7], animatorParameter08);
            if (animators.Count >= 9) ApplyAnimatorChange(animators[8], animatorParameters[8], animatorParameterType[8], animatorParameter09);
            if (animators.Count >= 10) ApplyAnimatorChange(animators[9], animatorParameters[9], animatorParameterType[9], animatorParameter10);
            if (animators.Count >= 11) ApplyAnimatorChange(animators[10], animatorParameters[10], animatorParameterType[10], animatorParameter11);
            if (animators.Count >= 12) ApplyAnimatorChange(animators[11], animatorParameters[11], animatorParameterType[11], animatorParameter12);
            if (animators.Count >= 13) ApplyAnimatorChange(animators[12], animatorParameters[12], animatorParameterType[12], animatorParameter13);
            if (animators.Count >= 14) ApplyAnimatorChange(animators[13], animatorParameters[13], animatorParameterType[13], animatorParameter14);
            if (animators.Count >= 15) ApplyAnimatorChange(animators[14], animatorParameters[14], animatorParameterType[14], animatorParameter15);
            if (animators.Count >= 16) ApplyAnimatorChange(animators[15], animatorParameters[15], animatorParameterType[15], animatorParameter16);
        }

        private void ApplyAnimatorChange(Animator animator, string parameterName, int parameterType,
            float parameterValue)
        {
            if (parameterName == CVRCommon.NONE_OR_EMPTY)
                return;

            switch (parameterType)
            {
                case 0:
                    animator.SetFloat(parameterName, parameterValue);
                    break;
                case 1:
                    animator.SetInteger(parameterName, Mathf.RoundToInt(parameterValue));
                    break;
                case 2:
                    animator.SetBool(parameterName, parameterValue > 0.5f);
                    break;
                case 3:
                    if (parameterValue > 0.5f) animator.SetTrigger(parameterName);
                    break;
            }
        }
        
#if UNITY_EDITOR

        private void OnValidate()
        {
            if (animators.Count > 16) // cap at 16
                animators.RemoveRange(16, animators.Count - 16);
            
            // keep the list count in sync by adding/removing elements as needed
            
            if (animatorParameters.Count > animators.Count)
                animatorParameters.RemoveRange(animators.Count, animatorParameters.Count - animators.Count);
            else while (animatorParameters.Count < animators.Count) animatorParameters.Add(CVRCommon.NONE_OR_EMPTY);
            
            if (animatorParameterType.Count > animators.Count)
                animatorParameterType.RemoveRange(animators.Count, animatorParameterType.Count - animators.Count);
            else while (animatorParameterType.Count < animators.Count) animatorParameterType.Add(-1); // -1 is invalid
            
            // update the parameter type list
            for (int i = 0; i < animators.Count; i++)
            {
                Animator animator = animators[i];
                string parameterName = animatorParameters[i];
                
                if (animator == null || parameterName == CVRCommon.NONE_OR_EMPTY)
                {
                    animatorParameterType[i] = -1;
                    continue;
                }
                
                // Cannot use animator.parameters as when gameobject is not active it spits warnings
                
                var controller = animator.runtimeAnimatorController as UnityEditor.Animations.AnimatorController;
                if (controller == null) continue;
                
                foreach (AnimatorControllerParameter parameter in controller.parameters)
                {
                    if (parameter.name != parameterName) continue;
                    
                    // 0 = float, 1 = int, 2 = bool, 3 = trigger
                    animatorParameterType[i] = parameter.type switch
                    {
                        AnimatorControllerParameterType.Float => 0,
                        AnimatorControllerParameterType.Int => 1,
                        AnimatorControllerParameterType.Bool => 2,
                        AnimatorControllerParameterType.Trigger => 3,
                        _ => -1 // invalid
                    };
                    
                    break;
                }
            }
        }
        
#endif
    }
}