using System;
using System.Collections.Generic;
using JetBrains.Annotations;
using UnityEngine;
using UnityEngine.Events;

namespace ABI.CCK.Components
{
    [AddComponentMenu("ChilloutVR/CVR Attachment")]
    [HelpURL("https://docs.abinteractive.net/cck/components/attachment/")]
    public class CVRAttachment : MonoBehaviour, ICCK_Component
    {
        #region Enums

        [Flags]
        public enum AttachmentType
        {
            Bone = 1,
            Tracker = 2,
            SnappingPoint = 4,
        }

        [Flags]
        public enum BoneType
        {
            Hips = 1,
            Spine = 2,
            Chest = 4,
            UpperChest = 8,
            Neck = 16,
            Head = 32,
            LeftUpperLeg = 64,
            LeftLowerLeg = 128,
            LeftFoot = 256,
            RightUpperLeg = 512,
            RightLowerLeg = 1024,
            RightFoot = 2048,
            LeftShoulder = 4096,
            LeftArm = 8192,
            LeftForearm = 16384,
            LeftHand = 32768,
            RightShoulder = 65536,
            RightArm = 131072,
            RightForearm = 262144,
            RightHand = 524288,
            Root = 1048576
        }
        
        [Flags]
        public enum TrackerType
        {
            MainCamera = 1,
            RightHand = 2,
            LeftHand = 4,
            AdditionalTracker = 8
        }
        
        #endregion

        #region Serialized Fields
        
        public AttachmentType attachmentType;
        public BoneType boneType = 0;
        public TrackerType trackerType = 0;
        
        public CollisionWithPlayer collisionWithPlayer = CollisionWithPlayer.DisableWhileHeld;
        
        public List<string> snappingPointTypes = new();

        public bool normalizeBoneAttachment;
        public bool useFixedPositionOffset;
        public bool useFixedRotationOffset;

        public Vector3 positionOffset;
        public Vector3 rotationOffset;

        public float maxAttachmentDistance;
        
        [SerializeField]
        public UnityEvent onAttach;
        
        [SerializeField]
        public UnityEvent onDeattach;
        
        #endregion

        #region Unity Events

        private void Start()
        {
            // ReSharper disable once Unity.RedundantEventFunction
            // used to display the checkbox
        }

        #endregion

        #region Public Methods
        
        [UsedImplicitly]
        public void Attach()
        {
            
        }

        [UsedImplicitly]
        public void DeAttach()
        {
            
        }
        
        #endregion
    }
}