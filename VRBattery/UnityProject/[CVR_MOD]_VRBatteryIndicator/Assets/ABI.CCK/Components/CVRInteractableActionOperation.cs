using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

namespace ABI.CCK.Components
{
    [Serializable]
    public class CVRInteractableActionOperation
    {
        #region Filtering Attribute Classes
        
        [AttributeUsage(AttributeTargets.Field | AttributeTargets.Property)]
        public class AllowSpawnable : Attribute { }
        
        [AttributeUsage(AttributeTargets.Field | AttributeTargets.Property)]
        public class AllowWorld : Attribute { }
        
        [AttributeUsage(AttributeTargets.Field | AttributeTargets.Property)]
        public class HideFromSetPropertyByValue : Attribute { }
        
        #endregion

        public enum ActionType
        {
            // GameObject/Component active state actions
            [AllowWorld, AllowSpawnable] SetGameObjectActive = 1,
            [AllowWorld, AllowSpawnable] SetComponentActive = 2,
            
            // Sit & Teleport
            [AllowWorld, AllowSpawnable] SitAtPosition = 16,
            [AllowWorld, AllowSpawnable] TeleportPlayer = 6,
            
            // GameObject lifecycle actions
            [AllowWorld] SpawnObject = 5,
            [AllowWorld, AllowSpawnable] TeleportObject = 7,
            [AllowWorld, AllowSpawnable] DeleteGameObject = 36,
            
            // Audio
            [AllowWorld, AllowSpawnable] PlayAudio = 23,
            [AllowWorld, AllowSpawnable] StopAudio = 24,
            
            // Property and method calls
            [AllowWorld, AllowSpawnable] MethodCall = 21,
            [AllowWorld, AllowSpawnable] LuaFunctionCall = 38,
            
            // Spawnable actions
            [AllowWorld, AllowSpawnable] SetSpawnableSyncValue = 22,
            
            // Animator actions (Set Value)
            [AllowWorld, AllowSpawnable] SetAnimatorFloatValue = 3,
            [AllowWorld, AllowSpawnable] SetAnimatorBoolValue = 4,
            [AllowWorld, AllowSpawnable] SetAnimatorIntValue = 17,
            [AllowWorld, AllowSpawnable] SetAnimatorTrigger = 18,

            // Animator actions (Toggle/Random Value)
            [AllowWorld, AllowSpawnable] ToggleAnimatorBoolValue = 8,
            [AllowWorld, AllowSpawnable] SetAnimatorFloatRandom = 9,
            [AllowWorld, AllowSpawnable] SetAnimatorBoolRandom = 10,
            [AllowWorld, AllowSpawnable] SetAnimatorIntRandom = 19,

            // Animator actions (By Variable/APF)
            [AllowWorld, AllowSpawnable] SetAnimatorFloatByVar = 11,
            [AllowWorld, AllowSpawnable] SetAnimatorIntByVar = 20,
            [AllowWorld, AllowSpawnable] SetAnimatorBoolByAPF = 25,
            [AllowWorld, AllowSpawnable] SetAnimatorIntByAPF = 26,
            [AllowWorld, AllowSpawnable] SetAnimatorFloatByAPF = 27,

            // APF updates
            [AllowWorld, AllowSpawnable] SetVariableBufferByAPF = 28,
            [AllowWorld, AllowSpawnable] UpdateAPFTrigger = 29,
            [AllowWorld, AllowSpawnable] UpdateAPFBool = 30,
            [AllowWorld, AllowSpawnable] UpdateAPFInt = 31,
            [AllowWorld, AllowSpawnable] UpdateAPFFloat = 32,
            [AllowWorld, AllowSpawnable] UpdateAPFString = 33,
            
            // Property updates
            [AllowWorld, AllowSpawnable] SetPropertyByApf = 34,
            [AllowWorld, AllowSpawnable] SetPropertyByValue = 35,
            
            // Variable and arithmetic
            [AllowWorld, AllowSpawnable] VariableBufferArithmetic = 12,

            // Detail display
            [AllowWorld, AllowSpawnable] DisplayWorldDetailPage = 13,
            [AllowWorld, AllowSpawnable] DisplayInstanceDetailPage = 14,
            [AllowWorld, AllowSpawnable] DisplayAvatarDetailPage = 15,
            [AllowWorld, AllowSpawnable] DisplaySpawnableDetailPage = 37,
        }
        
        public ActionType type = ActionType.SetGameObjectActive;
        
        public List<GameObject> targets = new();

        public float floatVal;
        public string stringVal;
        public string stringVal2;
        public string stringVal3;
        public string stringVal4;
        public bool boolVal;
        public bool boolVal2;
        public GameObject gameObjectVal;
        public float floatVal2;
        public float floatVal3;
        public float floatVal4;
        public CVRVariableBuffer varBufferVal;
        public CVRVariableBuffer varBufferVal2;
        public CVRVariableBuffer varBufferVal3;
        public AnimationClip animationVal;
        
        [SerializeField]
        public UnityEvent customEvent;
    }
}