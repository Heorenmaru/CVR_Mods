using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

namespace ABI.CCK.Components
{
    [HelpURL("https://docs.abinteractive.net/cck/")]
    public class BodyControl : StateMachineBehaviour, ICCK_Component
    {
        #region UnityEvents

        // Events for third party components to hook into
        public static readonly UnityEvent<Animator, BodyControl> OnInitialized = new();
        public static readonly UnityEvent<Animator, BodyControlTask> OnExecuteEnterTask = new();
        public static readonly UnityEvent<Animator, BodyControlTask> OnExecuteExitTask = new();

        #endregion
        
        public List<BodyControlTask> EnterTasks = new();
        public List<BodyControlTask> ExitTasks = new();

        private bool _initialized;

        #region Unity Events

        public override void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
        {
            if (!_initialized) Initialize(animator);
            foreach (BodyControlTask task in EnterTasks)
            {
                task.Execute(animator);
                OnExecuteEnterTask.Invoke(animator, task);
            }
        }

        public override void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
        {
            if (!_initialized) Initialize(animator);
            foreach (BodyControlTask task in ExitTasks)
            {
                task.Execute(animator);
                OnExecuteExitTask.Invoke(animator, task);
            }
        }
        
        #endregion
        
        #region Private Methods
        
        private void Initialize(Animator animator)
        {
            _initialized = true;
            OnInitialized.Invoke(animator, this);
        }
        
        #endregion

        #region Editor Methods

        private void OnValidate()
        {
            var seenTargets = new HashSet<BodyControlTask.BodyMask>();
            
            for (int i = EnterTasks.Count - 1; i >= 0; i--)
            {
                if (!seenTargets.Add(EnterTasks[i].target))
                    EnterTasks.RemoveAt(i);
            }
            seenTargets.Clear();
            
            for (int i = ExitTasks.Count - 1; i >= 0; i--)
            {
                if (!seenTargets.Add(ExitTasks[i].target))
                    ExitTasks.RemoveAt(i);
            }
            seenTargets.Clear();
        }

        #endregion
    }

    [Serializable]
    public class BodyControlTask
    {
        public enum BodyMask
        {
            Head,
            Pelvis,
            LeftArm,
            RightArm,
            LeftLeg,
            RightLeg,
            Locomotion,
            // TODO: Add FingerTracking masks when GS is ready
        }
        
        public BodyMask target = BodyMask.Head;
        [Range(0f, 1f)] public float targetWeight = 1f;
        public float transitionDuration = 0f;
        
        // Type
        public bool isBlend = false;
        
        public void Execute(Animator animator)
        {
            // switch (target)
            // {
            //     case BodyMask.Head:
            //         break;
            //     case BodyMask.Pelvis:
            //         break;
            //     case BodyMask.LeftArm:
            //         break;
            //     case BodyMask.RightArm:
            //         break;
            //     case BodyMask.LeftLeg:
            //         break;
            //     case BodyMask.RightLeg:
            //         break;
            //     case BodyMask.Locomotion:
            //         break;
            // }
        }
    }
}