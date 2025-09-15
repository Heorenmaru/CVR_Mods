using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Reflection;
using System.Threading.Tasks;
using ABI.CCK.API;
using ABI.CCK.Components;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.SceneManagement;
using UnityEngine.XR;
using Object = UnityEngine.Object;
using Random = System.Random;

namespace ABI.CCK.Scripts.Editor
{
    public class CCK_BuildUtility
    {
        #region Variables

        public static PreAvatarBundleEvent PreAvatarBundleEvent = new PreAvatarBundleEvent();
        public static PrePropBundleEvent PrePropBundleEvent = new PrePropBundleEvent();
        public static PreWorldBundleEvent PreWorldBundleEvent = new PreWorldBundleEvent();
        
        public static string upload_id = "";

        #endregion
        
        #region Avatar Upload

        public static async Task BuildAndUploadAvatar(GameObject avatarObject)
        {
            CVRAssetInfo assetInfo = avatarObject.GetComponent<CVRAssetInfo>();
            
            if (!await InitializeAPIAndSetObjectId(assetInfo)) return;
            SetAssetInfoDirty(assetInfo);
            
            ClearLog();
            EnforceVRSetting();
            
            GameObject instantiatedAvatar = InstantiateAndUnpackPrefab(avatarObject);
            if (!HandlePreBuildEvent(PreAvatarBundleEvent.Invoke, instantiatedAvatar))
            {
                Object.DestroyImmediate(instantiatedAvatar);
                return;
            }
            
            CCK_Tools.CleanEditorOnlyGameObjects(instantiatedAvatar);
            
            PrefabUtility.SaveAsPrefabAsset(instantiatedAvatar,
                !Application.unityVersion.Contains("2021")
                    ? "Assets/ABI.CCK/Resources/Cache/_CVRAvatar.prefab"
                    : $"Assets/ABI.CCK/Resources/Cache/CVRAvatar_{assetInfo.objectId}_{assetInfo.randomNum}.prefab");

            AssetBundleBuild assetBundleBuild = new AssetBundleBuild();
            assetBundleBuild.assetNames = !Application.unityVersion.Contains("2021")
                ? new[] { "Assets/ABI.CCK/Resources/Cache/_CVRAvatar.prefab" }
                : new[]
                {
                    $"Assets/ABI.CCK/Resources/Cache/CVRAvatar_{assetInfo.objectId}_{assetInfo.randomNum}.prefab"
                };

            upload_id = assetInfo.objectId;
            EditorPrefs.SetString("m_ABI_uploadId", upload_id);
            EditorPrefs.SetString("m_ABI_uploadRand", assetInfo.randomNum);
            
            assetBundleBuild.assetBundleName = $"cvravatar_{assetInfo.objectId}_{assetInfo.randomNum}.cvravatar";
            BuildPipeline.BuildAssetBundles(Application.persistentDataPath, new[] {assetBundleBuild},
                BuildAssetBundleOptions.ChunkBasedCompression, EditorUserBuildSettings.activeBuildTarget);
            
            Object.DestroyImmediate(instantiatedAvatar);
            
            if (!File.Exists($"{Application.persistentDataPath}/cvravatar_{assetInfo.objectId}_{assetInfo.randomNum}.cvravatar"))
            {
                Debug.LogError("Error during bundling\nThere has been an error during the bundling process. Please check your console for errors.");
                EditorUtility.DisplayDialog("Error during bundling", "There has been an error during the bundling process. Please check your console for errors.", "OK");
                return;
            }
            
            AssetDatabase.Refresh();
            EditorPrefs.SetBool("m_ABI_isBuilding", true);
            EditorApplication.isPlaying = true;
        }

        #endregion

        #region Spawnable Upload

        public static async Task BuildAndUploadSpawnable(GameObject spawnableObject)
        {
            CVRAssetInfo assetInfo = spawnableObject.GetComponent<CVRAssetInfo>();
            
            if (!await InitializeAPIAndSetObjectId(assetInfo)) return;
            SetAssetInfoDirty(assetInfo);
            
            ClearLog();
            EnforceVRSetting();
            
            CVRSpawnable spawnable = spawnableObject.GetComponent<CVRSpawnable>();
            spawnable.spawnableType = CVRSpawnable.SpawnableType.StandaloneSpawnable;
            EditorUtility.SetDirty(spawnable);
            

            GameObject instantiatedSpawnable = InstantiateAndUnpackPrefab(spawnableObject);
            if (!HandlePreBuildEvent(PrePropBundleEvent.Invoke, instantiatedSpawnable))
            {
                Object.DestroyImmediate(instantiatedSpawnable);
                return;
            }
            
            CCK_Tools.CleanEditorOnlyGameObjects(instantiatedSpawnable);

            PrefabUtility.SaveAsPrefabAsset(instantiatedSpawnable,
                !Application.unityVersion.Contains("2021")
                    ? "Assets/ABI.CCK/Resources/Cache/_CVRSpawnable.prefab"
                    : $"Assets/ABI.CCK/Resources/Cache/CVRSpawnable_{assetInfo.objectId}_{assetInfo.randomNum}.prefab");

            AssetBundleBuild assetBundleBuild = new AssetBundleBuild();
            assetBundleBuild.assetNames = !Application.unityVersion.Contains("2021")
                ? new[] { "Assets/ABI.CCK/Resources/Cache/_CVRSpawnable.prefab" }
                : new[]
                {
                    $"Assets/ABI.CCK/Resources/Cache/CVRSpawnable_{assetInfo.objectId}_{assetInfo.randomNum}.prefab"
                };
            
            upload_id = assetInfo.objectId;
            EditorPrefs.SetString("m_ABI_uploadId", upload_id);
            EditorPrefs.SetString("m_ABI_uploadRand", assetInfo.randomNum);
            
            assetBundleBuild.assetBundleName = $"cvrspawnable_{assetInfo.objectId}_{assetInfo.randomNum}.cvrprop";
            BuildPipeline.BuildAssetBundles(Application.persistentDataPath, new[] {assetBundleBuild},
                BuildAssetBundleOptions.ChunkBasedCompression, EditorUserBuildSettings.activeBuildTarget);
            
            Object.DestroyImmediate(instantiatedSpawnable);

            if (!File.Exists($"{Application.persistentDataPath}/cvrspawnable_{assetInfo.objectId}_{assetInfo.randomNum}.cvrprop"))
            {
                Debug.LogError("Error during bundling\nThere has been an error during the bundling process. Please check your console for errors.");
                EditorUtility.DisplayDialog("Error during bundling", "There has been an error during the bundling process. Please check your console for errors.", "OK");
                return;
            }
            
            AssetDatabase.Refresh();
            EditorPrefs.SetBool("m_ABI_isBuilding", true);
            EditorApplication.isPlaying = true;
        }

        #endregion

        #region World Upload

        public static async Task BuildAndUploadMapAsset(Scene scene, GameObject descriptor)
        {
            CVRAssetInfo assetInfo = descriptor.GetComponent<CVRAssetInfo>();
            
            if (!await InitializeAPIAndSetObjectId(assetInfo)) return;
            SetAssetInfoDirty(assetInfo);
            
            ClearLog();
            EnforceVRSetting();
            
            SetupNetworkUUIDs();
            
            if (!HandlePreBuildEvent(PreWorldBundleEvent.Invoke, scene))
                return;

            PrefabUtility.SaveAsPrefabAsset(descriptor, "Assets/ABI.CCK/Resources/Cache/_CVRWorld.prefab");
            
            AssetBundleBuild assetBundleBuild = new AssetBundleBuild();
            assetBundleBuild.assetNames = new[] {scene.path};
            assetBundleBuild.assetBundleName = "bundle.cvrworld";
            
            BuildPipeline.BuildAssetBundles(Application.persistentDataPath, new[] {assetBundleBuild},
                BuildAssetBundleOptions.ChunkBasedCompression, EditorUserBuildSettings.activeBuildTarget);

            if (!File.Exists($"{Application.persistentDataPath}/bundle.cvrworld"))
            {
                Debug.LogError("Error during bundling\nThere has been an error during the bundling process. Please check your console for errors.");
                EditorUtility.DisplayDialog("Error during bundling", "There has been an error during the bundling process. Please check your console for errors.", "OK");
                return;
            }
            
            AssetDatabase.Refresh();
            EditorPrefs.SetBool("m_ABI_isBuilding", true);
            EditorApplication.isPlaying = true;
        }

        #endregion

        #region Private Methods

        private static async Task<bool> InitializeAPIAndSetObjectId(CVRAssetInfo assetInfo)
        {
            // Generate new random number
            Random rnd = new();
            assetInfo.randomNum = rnd.Next(11111111, 99999999).ToString();

            if (string.IsNullOrEmpty(assetInfo.objectId))
            {
                // Generate new object ID
                string requestUrl = $"cck/generate/{assetInfo.type.ToString().ToLower()}";
                var response = await ApiConnection.MakeRequest<GenerateResponse>(requestUrl, put: true, useCache: false);
                switch (response)
                {
                    case { Data: not null }:
                        assetInfo.objectId = response.Data.Id.ToString();
                        break;
                    case { Message: not null }:
                        EditorUtility.DisplayDialog("Alpha Blend Interactive CCK", response.Message, "Okay");
                        return false;
                    default:
                        Debug.LogError($"[CCK:BuildUtility] New Guid could not be generated");
                        return false;
                }
            }
            else
            {
                // Validate existing object ID
                string requestUrl = $"cck/contentInfo/{assetInfo.type}/{assetInfo.objectId}?platform=pc_standalone&region=0";
                var response = await ApiConnection.MakeRequest<ContentInfoResponse>(requestUrl);
                switch (response)
                {
                    case { Data: not null }:
                        assetInfo.objectId = response.Data.ContentData.Id;
                        break;
                    case { Message: not null }:
                        EditorUtility.DisplayDialog("Alpha Blend Interactive CCK", response.Message, "Okay");
                        return false;
                    default:
                        Debug.LogError($"[CCK:BuildUtility] Existing Guid could not be validated");
                        return false;
                }
            }
            
            return true;
        }
        
        private static void SetAssetInfoDirty(Component assetInfo)
        {
            EditorUtility.SetDirty(assetInfo);
            EditorSceneManager.MarkSceneDirty(assetInfo.gameObject.scene);
            EditorSceneManager.SaveScene(assetInfo.gameObject.scene);
        }
        
        private static GameObject InstantiateAndUnpackPrefab(GameObject original)
        {
            GameObject instantiated = Object.Instantiate(original);
            if (PrefabUtility.IsPartOfNonAssetPrefabInstance(instantiated) && PrefabUtility.IsOutermostPrefabInstanceRoot(instantiated))
                PrefabUtility.UnpackPrefabInstance(instantiated, PrefabUnpackMode.Completely, InteractionMode.AutomatedAction);
            
            // Why would you do this?
            if (instantiated.CompareTag("EditorOnly"))
                instantiated.tag = "Untagged";
            
            return instantiated;
        }
        
        private static bool HandlePreBuildEvent(Action<GameObject> preBuildEvent, GameObject instantiatedObject)
        {
            try
            {
                preBuildEvent.Invoke(instantiatedObject);
                return true;
            }
            catch (Exception ex)
            {
                Debug.LogError($"[CCK:BuildUtility] Error occurred during PreBuildEvent: {ex.Message}");
                return false;
            }
        }
        
        private static bool HandlePreBuildEvent(Action<Scene> preBuildEvent, Scene scene)
        {
            try
            {
                preBuildEvent.Invoke(scene);
                return true;
            }
            catch (Exception ex)
            {
                Debug.LogError($"[CCK:BuildUtility] Error occurred during PreBuildEvent: {ex.Message}");
                return false;
            }
        }

        private static void SetupNetworkUUIDs()
        {
            CVRInteractable[] interactables = Resources.FindObjectsOfTypeAll<CVRInteractable>();
            CVRObjectSync[] objectSyncs = Resources.FindObjectsOfTypeAll<CVRObjectSync>();
            CVRVideoPlayer[] videoPlayers = Resources.FindObjectsOfTypeAll<CVRVideoPlayer>();
            
            CVRSpawnable[] spawnables = Resources.FindObjectsOfTypeAll<CVRSpawnable>();
            
            GameInstanceController[] gameInstances = Resources.FindObjectsOfTypeAll<GameInstanceController>();
            
            GunController[] gunControllers = Resources.FindObjectsOfTypeAll<GunController>();
            
            List<string> UsedGuids = new List<string>();

            foreach (var interactable in interactables)
            {
                foreach (var action in interactable.actions)
                {
                    string guid;
                    do
                    {
                        guid = Guid.NewGuid().ToString();
                    } while (!string.IsNullOrEmpty(UsedGuids.Find(match => match == guid)));
                    UsedGuids.Add(guid);

                    action.guid = guid;
                }
            }
            
            foreach (var objectSync in objectSyncs)
            {
                string guid;
                do
                {
                    guid = Guid.NewGuid().ToString();
                } while (!string.IsNullOrEmpty(UsedGuids.Find(match => match == guid)));
                UsedGuids.Add(guid);

                var newserializedObject = new SerializedObject(objectSync);
                newserializedObject.Update();
                SerializedProperty _guidProperty = newserializedObject.FindProperty("guid"); 
                _guidProperty.stringValue = guid;
                newserializedObject.ApplyModifiedProperties();
            }

            foreach (var player in videoPlayers)
            {
                Guid res;
                if (player.playerId == null || !Guid.TryParse(player.playerId, out res))
                {
                    string guid;
                    do
                    {
                        guid = Guid.NewGuid().ToString();
                    } while (!string.IsNullOrEmpty(UsedGuids.Find(match => match == guid)));
                    UsedGuids.Add(guid);

                    player.playerId = guid;
                }
            }
            
            foreach (var spawnable in spawnables)
            {
                string guid;
                do
                {
                    guid = Guid.NewGuid().ToString();
                } while (!string.IsNullOrEmpty(UsedGuids.Find(match => match == guid)));

                if (spawnable.preGeneratedInstanceId == "")
                {
                    UsedGuids.Add(guid);
                    spawnable.preGeneratedInstanceId = "ws~" + guid;
                }
                else
                {
                    UsedGuids.Add(spawnable.preGeneratedInstanceId);
                }

                spawnable.spawnableType = CVRSpawnable.SpawnableType.WorldSpawnable;
            }

            int i = 0;
            foreach (GameInstanceController gameInstance in gameInstances)
            {
                if (gameInstance.teams.Count == 0)
                {
                    var team = new Team();
                    team.name = "Team";
                    team.color = Color.red;
                    team.playerLimit = 16;
                    team.index = i;
                    gameInstance.teams.Add(team);
                    i++;
                }
                else
                {
                    foreach (var team in gameInstance.teams)
                    {
                        team.index = i;
                        i++;
                    }
                }
            }
            
            foreach (var gunController in gunControllers)
            {
                string guid;
                do
                {
                    guid = Guid.NewGuid().ToString();
                } while (!string.IsNullOrEmpty(UsedGuids.Find(match => match == guid)));
                UsedGuids.Add(guid);

                var newserializedObject = new SerializedObject(gunController);
                newserializedObject.Update();
                SerializedProperty _guidProperty = newserializedObject.FindProperty("referenceID"); 
                _guidProperty.stringValue = guid;
                newserializedObject.ApplyModifiedProperties();
            }
        }
        
        private static void ClearLog()
        {
            var assembly = Assembly.GetAssembly(typeof(UnityEditor.Editor));
            var type = assembly.GetType("UnityEditor.LogEntries");
            var method = type.GetMethod("Clear");
            method.Invoke(new object(), null);
        }

        private static void EnforceVRSetting()
        {
            Hacks.AnimationModeHacks.DestroyAnimationModeDriver();
            
#if UNITY_2021_1_OR_NEWER
            PlayerSettings.virtualRealitySupported = true;
            PlayerSettings.stereoRenderingPath = StereoRenderingPath.Instancing;
            XRSettings.enabled = false;
#else
            PlayerSettings.virtualRealitySupported = true;
            PlayerSettings.SetVirtualRealitySDKs(BuildTargetGroup.Standalone, new string[] { "None", "Oculus", "OpenVR", "MockHMD" });
            PlayerSettings.stereoRenderingPath = StereoRenderingPath.SinglePass;
#endif
        }

        #endregion
    }

    #region PreBundleEvents

    [Serializable]
    public class PreAvatarBundleEvent : UnityEvent<GameObject> { }
    
    [Serializable]
    public class PrePropBundleEvent : UnityEvent<GameObject> { }
    
    [Serializable]
    public class PreWorldBundleEvent : UnityEvent<Scene> { }

    #endregion
}