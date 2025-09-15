using System;
using UnityEngine;

namespace ABI.CCK.Components
{
    [AddComponentMenu("ChilloutVR/Gravity Zone")]
    [HelpURL("https://docs.abinteractive.net/cck/")]
    public class GravityZone : MonoBehaviour, ICCK_Component
    {
        public enum ZoneShape
        {
            Box = 1,
            Sphere = 2,
            Capsule = 3,
            Cylinder = 4,
            HalfSphere = 5,
            QuarterSphere = 6,
            HalfCapsule = 7,
            QuarterCapsule = 8,
            HalfCylinder = 9,
            QuarterCylinder = 10,
            Custom = 11
        }

        public ZoneShape zoneShape = ZoneShape.Box;
        public Mesh customZoneShapeMesh;  // used for custom shape

        public Vector3 center;
        public Vector3 size = Vector3.one;

        public enum GravityDirection
        {
            DirectionX = 1,
            DirectionY = 2,
            DirectionZ = 3,
            TowardsCenter = 4,
        }

        public GravityDirection gravityDirection = GravityDirection.DirectionY;

        public enum GravityMix
        {
            Override = 1,
            Additive = 2
        }

        public GravityMix gravityMix = GravityMix.Override;

        public int priority = 0;

        public enum GravityType
        {
            Absolute = 1,
            Relative = 2
        }

        public GravityType gravityType = GravityType.Absolute;
        
        private const float MaxGravityStrength = 10000f;
        public float strength = 9.81f;
        
        [Flags]
        public enum GravityEffect
        {
            Objects = 1,
            Players = 2
        }
        
        public GravityEffect gravityEffect = GravityEffect.Objects | GravityEffect.Players;
        
        public AnimationCurve gravityFalloff = AnimationCurve.Linear(0f, 1f, 1f, 1f);

        /// <summary>
        /// Player alignment mode options for gravity zone.
        /// </summary>
        public enum PlayerAlignmentMode
        {
            /// <summary>
            /// It will align the player respecting the gravity strength. When using this setting the alignment speed
            /// can be overwritten by the player settings. This is recommended unless there is a strong reason not to.
            /// </summary>
            Auto = 0,
            /// <summary>
            /// The player will not be aligned with gravity. And will have the same controls are in 0 g.
            /// </summary>
            Disabled = 1,
            /// <summary>
            /// The player will be aligned instantly with the gravity.
            /// </summary>
            Instantly = 2,
            /// <summary>
            /// The player will be aligned at a constant speed of degrees per second set on the custom value.
            /// </summary>
            Custom = 3,
        }

        /// <summary>
        /// Max value for playerCustomAlignmentDegreesPerSecond.
        /// </summary>
        public const float MaxDegreesPerSecond = 3600f;

        public const PlayerAlignmentMode DefaultGravityAlignmentMode = PlayerAlignmentMode.Auto;

        public const float DefaultGravityCustomAlignmentValue = 0;

        /// <summary>
        /// Mode to use to align players with the current gravity direction.
        /// </summary>
        [SerializeField]
        public PlayerAlignmentMode playerGravityAlignmentMode = DefaultGravityAlignmentMode;

        /// <summary>
        /// Value used for the gravity player alignment speed when using the custom alignment mode.
        /// </summary>
        [SerializeField]
        public float playerGravityCustomAlignmentValue = DefaultGravityCustomAlignmentValue;

        private void OnValidate()
        {
            // using Range attribute turns it into an ugly slider, enforced by client
            strength = Mathf.Clamp(strength, -MaxGravityStrength, MaxGravityStrength);
            playerGravityCustomAlignmentValue = Mathf.Clamp(playerGravityCustomAlignmentValue, 0, MaxDegreesPerSecond);
        }
    }
}