using System;
using UnityEngine;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine.Serialization;

#if CCK_ADDIN_HIGHLIGHT_PLUS
using HighlightPlus;
#endif

namespace ABI.CCK.Components
{
    [ExecuteInEditMode]
    [AddComponentMenu("ChilloutVR/CVR World")]
    [HelpURL("https://docs.abinteractive.net/cck/components/world/")]
    public class CVRWorld : MonoBehaviour, ICCK_Component
    {
        #region Editor Methods

        public void Reset()
        {
            if (GetComponent<CVRAssetInfo>() != null) return;
            CVRAssetInfo info = gameObject.AddComponent<CVRAssetInfo>();
            info.type = CVRAssetInfo.AssetType.World;
        }
        
        #endregion
        
        #region CVRWorldEnums

        public enum SpawnRule
        {
            Sequential = 1,
            Random = 2
        }

        public enum RespawnBehaviour
        {
            Respawn = 1,
            Destroy = 2
        }

        #endregion

        #region General Settings

        public GameObject referenceCamera;

        public GameObject[] spawns = Array.Empty<GameObject>();
        public SpawnRule spawnRule = SpawnRule.Random;
        public int respawnHeightY = -25;
        public RespawnBehaviour objectRespawnBehaviour = RespawnBehaviour.Respawn;

        // Currently unused
        [HideInInspector] public CVRWarpPoint[] warpPoints = Array.Empty<CVRWarpPoint>();

        #endregion

        #region AdvSettings World Rules

        public bool useAdvancedSettings = false;

        public bool allowSpawnables = true;
        public bool allowPortals = true;
        public bool allowFlying = true;
        public bool showNamePlates = true;
        [HideInInspector] public bool enableBuilder = true; // unused

        #endregion

        #region AdvSettings World Graphics


#if CCK_ADDIN_HIGHLIGHT_PLUS
        public HighlightProfile highlightProfile;
#endif

        [Range(60f, 120f)]
        public float fov = 60f;
        public bool enableZoom = true;
        public bool enableDepthNormals;
        [FormerlySerializedAs("allowCustomFarClippingPlane")] 
        public bool allowExtremeFarClippingPlane = false;

        #endregion

        #region AdvSettings Movement Modifiers

        public float baseMovementSpeed = 2f;

        public float sprintMultiplier = 2f;
        public float strafeMultiplier = 1f;
        public float crouchMultiplier = 0.5f;
        public float proneMultiplier = 0.3f;
        public float flyMultiplier = 5f;
        public float inAirMovementMultiplier = 1f;
        public float gravity = 18f;
        public float objectGravity = 9.81f;
        public float jumpHeight = 1f;

        /// <summary>
        /// Friction of the air. This will be applied to the character when moving on air, including falling, being
        /// pulled by gravity, or even when floating in 0 gravity.
        /// </summary>
        [SerializeField] public float airFriction = 0.3f;

        /// <summary>
        /// Mode to use to align players with the current gravity direction.
        /// </summary>
        [SerializeField]
        public GravityZone.PlayerAlignmentMode playerGravityAlignmentMode = GravityZone.DefaultGravityAlignmentMode;

        /// <summary>
        /// Value used for the gravity player alignment speed when using the custom alignment mode.
        /// </summary>
        [SerializeField]
        public float playerGravityCustomAlignmentValue = GravityZone.DefaultGravityCustomAlignmentValue;

        #endregion

        #region AdvSettings Collision Matrix

        public bool useCustomCollisionMatrix = false;

        public List<CVRCollisionListWrapper> collisionMatrix = new List<CVRCollisionListWrapper>
        {
            //Internal
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            //Content
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[]
                { true, true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(
                new[] { true, true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[] { true, true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[] { true, true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[] { true, true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[] { true, true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[] { true, true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[] { true, true, true, true, true, true }),
            new CVRCollisionListWrapper(new[] { true, true, true, true, true }),
            new CVRCollisionListWrapper(new[] { true, true, true, true }),
            new CVRCollisionListWrapper(new[] { true, true, true }),
            new CVRCollisionListWrapper(new[] { true, true }),
            new CVRCollisionListWrapper(new[] { true })
        };

        #endregion

        #region Object Library

        public List<CVRObjectCatalogCategory> objectCatalogCategories = new List<CVRObjectCatalogCategory>();
        public List<CVRObjectCatalogEntry> objectCatalogEntries = new List<CVRObjectCatalogEntry>();

        #endregion

        #region Public Methods

        public void CaptureCollisionMatrix()
        {
            for (int i = 0; i <= 31; i++)
            {
                for (int j = 0; j <= Math.Min(31 - i, 15); j++)
                {
                    collisionMatrix[i][j] = !Physics.GetIgnoreLayerCollision(i, 31 - j);
                }
            }
        }

        #endregion

        #region Method Calls

        public void SetBaseMovementSpeed(float value)
        {
            baseMovementSpeed = value;
            ApplyMovementSettings();
        }

        public void SetSprintMultiplier(float value)
        {
            sprintMultiplier = value;
            ApplyMovementSettings();
        }

        public void SetStrafeMultiplier(float value)
        {
            strafeMultiplier = value;
            ApplyMovementSettings();
        }

        public void SetCrouchMultiplier(float value)
        {
            crouchMultiplier = value;
            ApplyMovementSettings();
        }

        public void SetProneMultiplier(float value)
        {
            proneMultiplier = value;
            ApplyMovementSettings();
        }

        public void SetFlyMultiplier(float value)
        {
            flyMultiplier = value;
            ApplyMovementSettings();
        }

        public void SetInAirMovementMultiplier(float value)
        {
            inAirMovementMultiplier = value;
            ApplyMovementSettings();
        }

        public void SetJumpHeight(float value)
        {
            jumpHeight = value;
            ApplyMovementSettings();
        }

        public void SetAirFriction(float value)
        {
            airFriction = value;
            ApplyMovementSettings();
        }

        public void SetGravity(float value)
        {
            gravity = value;
            ApplyMovementSettings();
        }

        public void SetObjectGravity(float value)
        {
            objectGravity = value;
            ApplyMovementSettings();
        }

        public void SetPlayerGravityAlignmentMode(int value)
        {
            // Use `int` so they can be used via method calls
            if (Enum.IsDefined(typeof(GravityZone.PlayerAlignmentMode), value))
            {
                playerGravityAlignmentMode = (GravityZone.PlayerAlignmentMode)value;
                ApplyMovementSettings();
            }
        }

        public void SetPlayerGravityCustomAlignmentValue(float value)
        {
            playerGravityCustomAlignmentValue = value;
            ApplyMovementSettings();
        }

        /// <summary>
        /// Applies the current CVRWorld movement setting values to the character controller.
        /// </summary>
        public void ApplyMovementSettings() { }
        
        public void SetPlayerRemotePlayerVisibility(bool value) { }
        public void SetPlayerPropVisibility(bool value) { }

        #endregion

        #region UnityEvents

        private void OnValidate()
        {
            // using Range attribute turns it into an ugly slider, enforced by client
            playerGravityCustomAlignmentValue = Mathf.Clamp(playerGravityCustomAlignmentValue, 0, GravityZone.MaxDegreesPerSecond);
        }

        #endregion
    }

    #region Object Library Classes

    [Serializable]
    public class CVRObjectCatalogCategory
    {
        public string id;
        public string name;
        public Texture2D image;
    }

    [Serializable]
    public class CVRObjectCatalogEntry
    {
        public string name;
        public GameObject prefab;
        public Texture2D preview;
        public string categoryId = "";
        public string guid = "";
    }

    #endregion

    #region CVRCollisionListWrapper Class

    [Serializable]
    public class CVRCollisionListWrapper
    {
        public List<bool> collisionList = new List<bool>();

        public CVRCollisionListWrapper(IEnumerable<bool> boolList)
        {
            foreach (bool b in boolList)
            {
                collisionList.Add(b);
            }
        }

        public bool this[int key]
        {
            get => collisionList[key];
            set => collisionList[key] = value;
        }

        public int Count
        {
            get => collisionList.Count;
        }
    }

    #endregion
}