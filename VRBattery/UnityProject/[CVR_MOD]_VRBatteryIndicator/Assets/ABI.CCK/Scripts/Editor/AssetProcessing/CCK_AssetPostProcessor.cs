using System;
using System.Linq;
using System.Reflection;
using UnityEditor;
using UnityEngine;

namespace ABI.CCK.Scripts.Editor.AssetProcessing
{
    /*
    public class CCK_AssetPostProcessor
    {
        #region Configuration
        
        private const string KEY_PREFIX = "ABI.CCK.AssetPostProcessor.";
        private static bool AutoHumanoid => EditorPrefs.GetBool("ABI_CCK_AssetPostProcessor_AutoHumanoid", false);
        private static bool AutoReadWrite => EditorPrefs.GetBool("ABI_CCK_AssetPostProcessor_AutoReadWrite", false);
        private static bool AutoBlendShapeNormals => EditorPrefs.GetBool("ABI_CCK_AssetPostProcessor_AutoBlendshapeNormals", false);
        private static bool AutoTextureStreaming => EditorPrefs.GetBool("ABI_CCK_AssetPostProcessor_AutoTextureStreaming", false);
        
        #endregion
        
        private static bool _isProcessingModel;
        private static ModelImporter _modelImporter;
        
        private static PropertyInfo _legacyBlendShapeImporter;
        
        private static PropertyInfo legacyBlendShapeImporter
        {
            get
            {
                if(_legacyBlendShapeImporter != null)
                    return _legacyBlendShapeImporter;

                Type modelImporterType = typeof(ModelImporter);
                _legacyBlendShapeImporter = modelImporterType.GetProperty(
                    "legacyComputeAllNormalsFromSmoothingGroupsWhenMeshHasBlendShapes",
                    BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.Public
                );

                return _legacyBlendShapeImporter;
            }
        }

        #region Asset Post Processing Events
        
        private void OnPreprocessModel()
        {
            _isProcessingModel = false;

            _modelImporter = assetImporter as ModelImporter;
            if (_modelImporter == null)
                return;
            
            // Check if we have already processed this model
            if (!ShouldProcessAsset(_modelImporter.assetPath, out string assetKey))
                return;
            
            _isProcessingModel = true;
            SessionState.SetBool(assetKey, true);
            
            SetModelImporterSettings(_modelImporter);
        }
        
        private void OnPostprocessMeshHierarchy(GameObject root)
        {
            if (!_isProcessingModel)
                return;
            
            if (!AutoHumanoid)
                return;
            
            // Check if the model should be humanoid
            
            var childTransforms = root.GetComponentsInChildren<Transform>();
            
            // Check if the model has enough bones to be humanoid
            if (childTransforms.Length < HumanTrait.RequiredBoneCount)
                return;
            
            // Check if the model has enough *potential* humanoid bones to be humanoid
            int potentialHumanBoneCount = childTransforms.Count(childTransform =>
                childTransform.name.IndexOf("armature", StringComparison.OrdinalIgnoreCase) >= 0 ||
                childTransform.name.IndexOf("hip", StringComparison.OrdinalIgnoreCase) >= 0 ||
                childTransform.name.IndexOf("hand", StringComparison.OrdinalIgnoreCase) >= 0 ||
                childTransform.name.IndexOf("head", StringComparison.OrdinalIgnoreCase) >= 0);
            
            // IKSystem will still filter it if it doesn't have enough bones
            // VRIK requires hips to head, arms, and either both legs or neither leg.

            if (potentialHumanBoneCount < 3)
                return;
            
            _modelImporter.animationType = ModelImporterAnimationType.Human;
        }

        private void OnPreprocessTexture()
        {
            TextureImporter textureImporter = assetImporter as TextureImporter;
            if (textureImporter == null)
                return;
            
            if (!ShouldProcessAsset(textureImporter.assetPath, out string assetKey))
                return;
            
            SessionState.SetBool(assetKey, true);
            
            SetTextureImporterSettings(textureImporter);
        }

        private static void OnPostprocessAllAssets(string[] importedAssets, string[] deletedAssets, string[] movedAssets, string[] movedFromAssetPaths)
        {
            foreach (string deletedAsset in deletedAssets)
            {
                string assetKey = KEY_PREFIX + AssetDatabase.AssetPathToGUID(deletedAsset);
                SessionState.EraseBool(assetKey); // Remove the asset from the list of processed assets, so it can be processed again if re-imported
                
                CCK_AutoCleanupProcessor.OnProcessDeletedAsset(deletedAsset);
            }
        }
        
        #endregion

        #region Private Methods

        private static bool ShouldProcessAsset(string assetPath, out string assetKey)
        {
            assetKey = KEY_PREFIX + AssetDatabase.AssetPathToGUID(assetPath);
            return !SessionState.GetBool(assetKey, false);
        }
        
        // TODO: Is there anything else we need to set?
        
        private static void SetModelImporterSettings(ModelImporter modelImporter)
        {
            if (AutoReadWrite)
                modelImporter.isReadable = true;
            
            if (AutoBlendShapeNormals)
                modelImporter.importBlendShapeNormals = ModelImporterNormals.Import;
            
            //if(modelImporter.importBlendShapeNormals != ModelImporterNormals.Calculate)
                legacyBlendShapeImporter.SetValue(modelImporter, true);
        }

        private static void SetTextureImporterSettings(TextureImporter textureImporter)
        {
            if (AutoTextureStreaming)
                textureImporter.streamingMipmaps = true;
        }

        #endregion
    }
*/
}