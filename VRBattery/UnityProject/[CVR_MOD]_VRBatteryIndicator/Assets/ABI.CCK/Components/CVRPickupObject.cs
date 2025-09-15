using System;
using System.Collections.Generic;
using UnityEngine;

namespace ABI.CCK.Components
{
    [AddComponentMenu("ChilloutVR/CVR Pickup Object")]
    [HelpURL("https://docs.abinteractive.net/cck/components/pickup-object/")]
    public class CVRPickupObject : MonoBehaviour, ICCK_Component
    {
        private const float k_MaxGrabPushDistance = 100f;
        
        #region Serialized Fields

        // Experimenting
        public const int LATEST_VERSION = 1;
        public int version;
        
        // Enums
        
        public enum GripType // PLEASE DONT START ENUMS AT 1, UNITY DOES NOT LIKE IT
        {
            Free = 1,
            Origin = 2
        }
        
        public enum MoveMode
        {
            /// <summary>
            /// Moves the pickup by setting the rigidbody velocity if non-kinematic.
            /// If kinematic, just sets the rigidbody position & rotation.
            /// This somewhat respects collision if set to non-kinematic.
            /// This occurs as late as possible in FixedUpdate to ensure physics & character controller already solved.
            /// </summary>
            [InspectorName("Rigidbody (Physics)")]
            Rigidbody = 0,
            
            /// <summary>
            /// Moves the pickup transform in update tick.
            /// Does not respect collision at all.
            /// This occurs as late as possible in Update.
            /// </summary>
            [InspectorName("Transform (Update)")]
            Transform,
        }
        
        // Pickup Rules
        
        public bool autoHold;
        public bool disallowTheft;
        public bool disableObjectPushPull;
        public float maximumGrabDistance = 5f;
        
        // Pickup Configuration
        
        public GripType gripType = GripType.Free;
        public Transform gripOrigin;
        public List<SnappingReference> snappingReferences = new();
        
        // Pickup Physics
        
        public bool updateWithPhysics = true; // Replaced by updateMode
        public MoveMode moveMode = MoveMode.Rigidbody;
        public CollisionWithPlayer collisionWithPlayer = CollisionWithPlayer.DisableWhileHeldAndColliding;
        
        // TODO: ensure force dropped objects dont get thrown
        
        [Tooltip("Multiplier for increasing throw strength when releasing held objects")]
        public float throwForceMultiplier = 1.5f;

        [Tooltip("Minimum velocity threshold before throw multiplier is applied")]
        public float throwForceMinVelocity = 1f;

        public Transform ikReference;

        #endregion Serialized Fields

        #region Unity Events

        private void Start()
        {
            // Required to make enabled checkbox appear in inspector
        }

        #endregion Unity Events

        #region Public Methods
        
        public bool IsPickupable { get; set; } = true; // doesnt force a drop
        public void SetAutoHold(bool state) {}
        public void ForceRelease() {}

        #endregion Public Methods
        
        #region Unity Editor Events
        
        private void Reset()
        {
            // Just created or reset
            version = LATEST_VERSION;
        }
        
        private void OnValidate()
        {
            // Migration of legacy behaviour
            if (version == 0)
            {
                version = 1;
                
                // The updateWithPhysics flag was replaced with UpdateMode.
                // GripType moved in Update for some reason.
                if (!updateWithPhysics || gripType == GripType.Origin)
                    moveMode = MoveMode.Transform;

                // 0 is no longer infinite, 0 means only proximity grab!
                if (maximumGrabDistance == 0) maximumGrabDistance = k_MaxGrabPushDistance;
            }

            maximumGrabDistance = Mathf.Clamp(maximumGrabDistance, 0f, k_MaxGrabPushDistance);
        }
        
        private void OnDrawGizmos()
        {
            if (gripType != GripType.Origin 
                || gripOrigin == null) 
                return;
            
            Transform t = gripOrigin.transform;
            Vector3 s = t.lossyScale;
                
            Gizmos.matrix = Matrix4x4.TRS(t.position, t.rotation, Vector3.one);
            Gizmos.color = Color.white;
                
            Gizmos.DrawWireCube(new Vector3(0f, 0f, -0.15f), new Vector3(0.1f, 0.1f, 0.2f));
            Gizmos.DrawWireCube(new Vector3(-0.075f, 0f, 0f), new Vector3(0.05f, 0.2f, 0.2f));
            Gizmos.DrawWireCube(new Vector3(0f, 0f, 0.1f), new Vector3(0.1f, 0.2f, 0.05f));
            Gizmos.DrawWireCube(new Vector3(0.07f, 0.05f, 0f), new Vector3(0.05f, 0.05f, 0.15f));
        }
        
        #endregion Unity Editor Events
    }
    
    [Serializable]
    public class SnappingReference
    {
        public Transform referencePoint;
        public string allowedType;
    }
}