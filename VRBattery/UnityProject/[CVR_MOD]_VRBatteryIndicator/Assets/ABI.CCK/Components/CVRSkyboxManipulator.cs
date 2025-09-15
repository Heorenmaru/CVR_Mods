using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.XR;
using Unity.Profiling;

namespace ABI.CCK.Components
{
    [ExecuteInEditMode]
    public class CVRSkyboxManipulator : MonoBehaviour
    {
        #region Profile Markers
        
        private static readonly ProfilerMarker s_UpdateCommandBufferMarker = new($"{nameof(CVRSkyboxManipulator)}.{nameof(UpdateCommandBuffer)}");
        private static readonly ProfilerMarker s_GetEyeOffsetsMarker = new($"{nameof(CVRSkyboxManipulator)}.{nameof(GetEyeOffsets)}");
        private static readonly ProfilerMarker s_OnPreRenderMarker = new($"{nameof(CVRSkyboxManipulator)}.{nameof(MyOnPreRender)}");
        private static readonly ProfilerMarker s_DrawSkyboxMarker = new($"{nameof(CVRSkyboxManipulator)}.{nameof(DrawSkybox)}");
        
        #endregion Profile Markers
        
        #region Constants

        private const CameraEvent kCustomSkyboxRenderEvent = CameraEvent.BeforeForwardOpaque;
        
        #endregion Constants
        
        #region Serialized Fields

        [SerializeField] private Camera targetCamera;
        
        [SerializeField] private bool useCustomSkyboxMaterial;
        [SerializeField] private Material skyboxMaterial;
        
        [SerializeField] private bool useCustomSkyboxMesh;
        [SerializeField] private Mesh skyboxMesh;
        
        // [Tooltip("When enabled, updates skybox on every frame")]
        // [SerializeField] private bool continuousUpdate = true;
        
        [Tooltip("Center on Eye (0 = centered at origin, 1 = centered at eye/camera)")]
        [Range(0f, 1f)]
        [SerializeField] private float centerOnEye = 1f;
        
        [Tooltip("Origin point for parallax effect (defaults to world origin if not set)")]
        [SerializeField] private Transform originTransform;
        
        [Tooltip("When enabled, aligns skybox to world space instead of camera rotation")]
        [SerializeField] private bool alignToWorldSpace = true;
        
        [SerializeField] private Vector3 localPosition = Vector3.zero;
        [SerializeField] private Vector3 localRotation = Vector3.zero;
        [SerializeField] private Vector3 localScale = Vector3.one * 0.5f;
        
        #endregion Serialized Fields

        #region Private Fields

        private CameraClearFlags _originalClearFlags;
        private CommandBuffer _commandBuffer;
        private bool _hasChanged = true;
        private bool _targetIsPlayerCamera;
        
        private Mesh _cachedSkyboxMesh;
        private Material _cachedSkyboxMaterial;
        private SkyboxRenderMode _skyboxRenderMode;
        
        #endregion Private Fields

        private enum SkyboxRenderMode
        {
            Sphere,
            SixSided,
            Custom
        }
        
        #region Public Properties
        
        public Material SkyboxMaterial { 
            get => skyboxMaterial;
            set { skyboxMaterial = value; _cachedSkyboxMaterial = null; _hasChanged = true; }
        }

        public bool UseCustomSkyboxMaterial { 
            get => useCustomSkyboxMaterial;
            set { useCustomSkyboxMaterial = value; _cachedSkyboxMaterial = null; _hasChanged = true; }
        }

        public Mesh SkyboxMesh { 
            get => skyboxMesh;
            set { skyboxMesh = value; _cachedSkyboxMesh = null; _hasChanged = true; }
        }

        public bool UseCustomSkyboxMesh { 
            get => useCustomSkyboxMesh;
            set { useCustomSkyboxMesh = value; _cachedSkyboxMesh = null; _hasChanged = true; }
        }
        
        public float CenterOnEye {
            get => centerOnEye;
            set { centerOnEye = Mathf.Clamp01(value); _hasChanged = true; }
        }
        
        public Transform OriginTransform {
            get => originTransform;
            set { originTransform = value; _hasChanged = true; }
        }
        
        public bool AlignToWorldSpace {
            get => alignToWorldSpace;
            set { alignToWorldSpace = value; _hasChanged = true; }
        }

        public Vector3 LocalPosition { 
            get => localPosition;
            set { localPosition = value; _hasChanged = true; }
        }

        public Vector3 LocalRotation { 
            get => localRotation;
            set { localRotation = value; _hasChanged = true; }
        }

        public Vector3 LocalScale { 
            get => localScale;
            set { localScale = value; _hasChanged = true; }
        }
        
        #endregion Public Properties

        #region Unity Events
        
#if UNITY_EDITOR

        // When component is first added in the editor
        private void Reset()
        {
            targetCamera = GetComponent<Camera>();
        }
        
        // When component has been changed in the editor (while testing)
        private void OnValidate()
        {
            _hasChanged = true;
            _cachedSkyboxMaterial = null;
            _cachedSkyboxMesh = null;
            centerOnEye = Mathf.Clamp01(centerOnEye);
        }
        
#endif

        private void OnEnable()
        {
            if (targetCamera == null)
            {
                Debug.LogError("CustomSkyboxController requires a target Camera to be set!");
                enabled = false;
                return;
            }
            
            // Clear cached references
            _hasChanged = true;
            _cachedSkyboxMaterial = null;
            _cachedSkyboxMesh = null;
            
            _originalClearFlags = targetCamera.clearFlags;
            targetCamera.clearFlags = CameraClearFlags.SolidColor;
            
            SetupCommandBuffer();
            Camera.onPreRender += MyOnPreRender;
        }

        private void OnDisable()
        {
            if (targetCamera != null)
            {
                targetCamera.clearFlags = _originalClearFlags;
                CleanupCommandBuffer();
            }
            Camera.onPreRender -= MyOnPreRender;
        }

        private void OnDidApplyAnimationProperties()
        {
            _hasChanged = true;
        }

        private bool CheckIfNeedsUpdate()
        {
            // Always update if continuous update is enabled
            // if (continuousUpdate)
            //     return true;
                
            // Check if the camera has moved
            if (targetCamera.transform.hasChanged)
            {
                targetCamera.transform.hasChanged = false;
                return true;
            }
            
            // Also check if origin transform has changed
            if (originTransform != null 
                && originTransform.hasChanged)
            {
                originTransform.hasChanged = false;
                return true;
            }
            
            // Check for manual update flag
            return _hasChanged;
        }

        private void MyOnPreRender(Camera cam)
        {
            if (cam != targetCamera) return;
            using (s_OnPreRenderMarker.Auto())
            {
                if (!CheckIfNeedsUpdate()) return;
                targetCamera.clearFlags = CameraClearFlags.SolidColor;
                UpdateCommandBuffer();
                _hasChanged = false;
            }
        }
        
        #endregion Unity Events

        #region Public API Methods
        
        /// <summary>
        /// Forces an update of the skybox rendering
        /// </summary>
        public void ForceUpdate()
        {
            _cachedSkyboxMaterial = null;
            _cachedSkyboxMesh = null;
            _hasChanged = true;
        }
        
        #endregion Public API Methods

        #region Command Buffer Methods
        
        private void SetupCommandBuffer()
        {
            if (_commandBuffer == null)
            {
                _commandBuffer = new CommandBuffer { name = "Custom Skybox Renderer" };
                targetCamera.AddCommandBuffer(kCustomSkyboxRenderEvent, _commandBuffer);
            }
            UpdateCommandBuffer();
        }

        private void UpdateCommandBuffer()
        {
            using (s_UpdateCommandBufferMarker.Auto())
            {
                if (_commandBuffer == null || targetCamera == null) 
                    return;

                _commandBuffer.Clear();

                // Get skybox material and determine if it changed
                Material usedSkyboxMaterial = GetCurrentSkyboxMaterial();
                bool materialChanged = usedSkyboxMaterial != _cachedSkyboxMaterial;
                _cachedSkyboxMaterial = usedSkyboxMaterial;
                
                // Get mesh and determine skybox render mode
                if (materialChanged || _cachedSkyboxMesh == null)
                {
                    // Re-evaluate mesh and render mode
                    _cachedSkyboxMesh = GetSkyboxMesh(usedSkyboxMaterial, out _skyboxRenderMode);
                }
                
                // Calculate position and rotation
                Vector3 position = targetCamera.transform.position + localPosition;
                Quaternion rotation;
                
                if (alignToWorldSpace)
                    rotation = Quaternion.Euler(localRotation);
                else
                    rotation = targetCamera.transform.rotation * Quaternion.Euler(localRotation);
                
                // Apply center on eye effect (value of 1 centers on eye, 0 centers on origin)
                // Get origin position (use Vector3.zero if origin transform is not set)
                Vector3 originPosition = originTransform != null 
                    ? originTransform.position 
                    : Vector3.zero;
                
                position = Vector3.Lerp(originPosition + localPosition, position, centerOnEye);
                
                // Calculate scale
                float farClip = targetCamera.farClipPlane;
                float nearClip = targetCamera.nearClipPlane;
                float clipGap = farClip - nearClip;
                float scaleMultiplier = farClip / Mathf.Max(clipGap, 0.001f * farClip);
                
                if (clipGap < 0.1f * farClip)
                    scaleMultiplier *= 2.0f;
                
                Vector3 scale = new(
                    farClip * scaleMultiplier * localScale.x, 
                    farClip * scaleMultiplier * localScale.y, 
                    farClip * scaleMultiplier * localScale.z
                );
                
                // Draw the skybox
                DrawSkybox(position, rotation, scale);
            }
        }

        private void DrawSkybox(Vector3 position, Quaternion rotation, Vector3 scale)
        {
            using (s_DrawSkyboxMarker.Auto())
            {
                if (targetCamera.stereoEnabled 
                    && XRSettings.stereoRenderingMode == XRSettings.StereoRenderingMode.SinglePassInstanced)
                {
                    _commandBuffer.SetSinglePassStereo(SinglePassStereoMode.None);

                    GetEyeOffsets(out Vector3 leftEyeOffset, out Vector3 rightEyeOffset);
                    
                    // Setup for left eye
                    _commandBuffer.SetViewProjectionMatrices(
                        targetCamera.GetStereoViewMatrix(Camera.StereoscopicEye.Left),
                        targetCamera.GetStereoProjectionMatrix(Camera.StereoscopicEye.Left)
                    );
                    _commandBuffer.SetRenderTarget(new RenderTargetIdentifier(BuiltinRenderTextureType.CameraTarget, depthSlice: 0));
                    
                    Vector3 leftSkyboxPosition = position + leftEyeOffset;
                    Matrix4x4 leftMatrix = Matrix4x4.TRS(leftSkyboxPosition, rotation, scale);
                    
                    // Draw left eye
                    DrawSkyboxWithMaterial(leftMatrix, _cachedSkyboxMaterial);
                    
                    // Setup for right eye
                    _commandBuffer.SetViewProjectionMatrices(
                        targetCamera.GetStereoViewMatrix(Camera.StereoscopicEye.Right),
                        targetCamera.GetStereoProjectionMatrix(Camera.StereoscopicEye.Right)
                    );
                    _commandBuffer.SetRenderTarget(new RenderTargetIdentifier(BuiltinRenderTextureType.CameraTarget, depthSlice: 1));
                    
                    Vector3 rightSkyboxPosition = position + rightEyeOffset;
                    Matrix4x4 rightMatrix = Matrix4x4.TRS(rightSkyboxPosition, rotation, scale);
                    
                    // Draw right eye
                    DrawSkyboxWithMaterial(rightMatrix, _cachedSkyboxMaterial);
                    
                    _commandBuffer.SetSinglePassStereo(SinglePassStereoMode.Instancing);
                }
                else
                {
                    // Non-VR rendering
                    Matrix4x4 matrix = Matrix4x4.TRS(position, rotation, scale);
                    DrawSkyboxWithMaterial(matrix, _cachedSkyboxMaterial);
                }
            }
        }
        
        private void DrawSkyboxWithMaterial(Matrix4x4 matrix, Material material)
        {
            if (material == null || _cachedSkyboxMesh == null)
                return;
                
            switch (_skyboxRenderMode)
            {
                case SkyboxRenderMode.SixSided:
                    // For 6-sided skybox, we need to draw each face with its corresponding submesh and pass
                    int passCount = material.passCount;
                    int faceCount = Mathf.Min(6, passCount);
                    for (int i = 0; i < faceCount; i++)
                        _commandBuffer.DrawMesh(_cachedSkyboxMesh, matrix, material, i, i);
                    break;
                    
                case SkyboxRenderMode.Sphere:
                case SkyboxRenderMode.Custom:
                default:
                    // For sphere or custom mesh, just draw the entire mesh with pass 0
                    _commandBuffer.DrawMesh(_cachedSkyboxMesh, matrix, material, 0, 0);
                    break;
            }
        }

        private void CleanupCommandBuffer()
        {
            if (targetCamera != null && _commandBuffer != null)
                targetCamera.RemoveCommandBuffer(kCustomSkyboxRenderEvent, _commandBuffer);

            _commandBuffer?.Release();
            _commandBuffer = null;
        }
        
        #endregion Command Buffer Methods

        #region XR Utilities
        
        private void GetEyeOffsets(out Vector3 leftEyeOffset, out Vector3 rightEyeOffset)
        {
            using (s_GetEyeOffsetsMarker.Auto())
            {
                Matrix4x4 leftEyeMatrix = targetCamera.GetStereoViewMatrix(Camera.StereoscopicEye.Left);
                Matrix4x4 rightEyeMatrix = targetCamera.GetStereoViewMatrix(Camera.StereoscopicEye.Right);
                    
                Matrix4x4 leftEyeWorldMatrix = leftEyeMatrix.inverse;
                Matrix4x4 rightEyeWorldMatrix = rightEyeMatrix.inverse;
                    
                Vector3 leftEyeWorldPos = new(leftEyeWorldMatrix.m03, leftEyeWorldMatrix.m13, leftEyeWorldMatrix.m23);
                Vector3 rightEyeWorldPos = new(rightEyeWorldMatrix.m03, rightEyeWorldMatrix.m13, rightEyeWorldMatrix.m23);
                    
                Vector3 cameraPos = targetCamera.transform.position;
                leftEyeOffset = leftEyeWorldPos - cameraPos;
                rightEyeOffset = rightEyeWorldPos - cameraPos;
            }
        }
        
        #endregion XR Utilities

        #region Utility Methods
        
        private Material GetCurrentSkyboxMaterial()
        {
            return useCustomSkyboxMaterial && skyboxMaterial
                ? skyboxMaterial
                : targetCamera.TryGetComponent(out Skybox skybox) 
                    ? skybox.material ? skybox.material : RenderSettings.skybox
                    : RenderSettings.skybox;
        }
        
        private static Mesh s_SkyboxSphereMesh;
        private static Mesh s_SkyboxCubeMesh;
        
        private Mesh GetSkyboxMesh(Material skyboxMat, out SkyboxRenderMode renderMode)
        {
            // Check for custom mesh first
            if (useCustomSkyboxMesh && skyboxMesh)
            {
                // For custom meshes, check if it's a 6-sided cube by number of submeshes
                renderMode = skyboxMesh.subMeshCount == 6 ? SkyboxRenderMode.SixSided : SkyboxRenderMode.Custom;
                return skyboxMesh;
            }
            
            if (skyboxMat == null)
            {
                // Default to sphere if no material
                renderMode = SkyboxRenderMode.Sphere;
                return GetSphereSkyboxMesh();
            }
            
            // Determine mesh type based on shader
            string shaderName = skyboxMat.shader ? skyboxMat.shader.name : "";
            bool hasSixPasses = skyboxMat.passCount >= 6;
            
            // Use cube mesh for 6-sided skybox (if it has 6+ passes), sphere for everything else
            if ((shaderName.Contains("6 Sided") || shaderName.Contains("6Sided")) && hasSixPasses)
            {
                renderMode = SkyboxRenderMode.SixSided;
                return GetCubeSkyboxMesh();
            }

            renderMode = SkyboxRenderMode.Sphere;
            return GetSphereSkyboxMesh();
        }
        
        private static Mesh GetSphereSkyboxMesh()
        {
            // ReSharper disable once Unity.UnknownResource
            if (!s_SkyboxSphereMesh) s_SkyboxSphereMesh = Resources.Load<Mesh>("CCKUnitySkyboxSphere");
            return s_SkyboxSphereMesh;
        }
        
        private static Mesh GetCubeSkyboxMesh()
        {
            // ReSharper disable once Unity.UnknownResource
            if (!s_SkyboxCubeMesh) s_SkyboxCubeMesh = Resources.Load<Mesh>("CCKUnitySkyboxCube");
            return s_SkyboxCubeMesh;
        }
        
        #endregion Utility Methods
    }
}