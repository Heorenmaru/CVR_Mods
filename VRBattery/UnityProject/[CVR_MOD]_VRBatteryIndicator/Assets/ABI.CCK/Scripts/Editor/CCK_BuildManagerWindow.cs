using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using ABI.CCK.API;
using ABI.CCK.Components;
using ABI.CCK.Scripts.Runtime;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;

namespace ABI.CCK.Scripts.Editor
{
    public class CCK_BuildManagerWindow : EditorWindow
    {
        private string[] SupportedUnityVersions = new[]
        {
            "2021.3.0f1", "2021.3.1f1", "2021.3.2f1", "2021.3.3f1", "2021.3.4f1", "2021.3.5f1", "2021.3.6f1", "2021.3.7f1",
            "2021.3.8f1", "2021.3.9f1", "2021.3.10f1", "2021.3.11f1", "2021.3.12f1", "2021.3.13f1", "2021.3.14f1", "2021.3.15f1",
            "2021.3.16f1", "2021.3.17f1", "2021.3.18f1", "2021.3.19f1", "2021.3.20f1", "2021.3.21f1", "2021.3.22f1", "2021.3.23f1",
            "2021.3.24f1", "2021.3.25f1", "2021.3.26f1", "2021.3.27f1", "2021.3.28f1", "2021.3.29f1", "2021.3.30f1", "2021.3.31f1",
            "2021.3.32f1", "2021.3.33f1", "2021.3.34f1", "2021.3.35f1", "2021.3.36f1", "2021.3.37f1", "2021.3.38f1", "2021.3.39f1",
            "2021.3.40f1", "2021.3.41f1", "2021.3.42f1", "2021.3.43f1", "2021.3.44f1", "2021.3.45f1"
        };
        
        private string _inputUsername;
        private string _inputAccessKey;

        public Texture2D abiLogo;
        //private bool _allowedToUpload;
        //private string _apiCreatorRank;
        private Vector2 scrollPosAvatar;
        private Vector2 scrollPosSpawnable;
        
        private int _tab;
        private Vector2 _scroll;

        private static PropertyInfo _legacyBlendShapeImporter;
        
        private static PropertyInfo legacyBlendShapeImporter
        {
            get
            {
                if(_legacyBlendShapeImporter != null)
                {
                    return _legacyBlendShapeImporter;
                }

                Type modelImporterType = typeof(ModelImporter);
                _legacyBlendShapeImporter = modelImporterType.GetProperty(
                    "legacyComputeAllNormalsFromSmoothingGroupsWhenMeshHasBlendShapes",
                    BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.Public
                );

                return _legacyBlendShapeImporter;
            }
        }
        
        [MenuItem("Alpha Blend Interactive/Control Panel", false, 200)]
        private static void Init()
        {
            CCK_BuildManagerWindow window = (CCK_BuildManagerWindow)GetWindow(typeof(CCK_BuildManagerWindow), false, $"CCK :: Control Panel");
            window.Show();
        }

        private void OnDisable()
        {
            EditorApplication.update -= EditorUpdate;
            EditorApplication.playModeStateChanged -= OnEditorStateUpdated;
        }

        private void OnEnable()
        {
            abiLogo = (Texture2D) AssetDatabase.LoadAssetAtPath("Assets/ABI.CCK/GUIAssets/abibig.png", typeof(Texture2D));
            
            EditorApplication.update -= EditorUpdate;
            EditorApplication.update += EditorUpdate;
            EditorApplication.playModeStateChanged -= OnEditorStateUpdated;
            EditorApplication.playModeStateChanged += OnEditorStateUpdated;
            
            ApiConnection.LoginIfNeeded();
        }

        private void OnEditorStateUpdated(PlayModeStateChange state)
        {
            if (state == PlayModeStateChange.EnteredEditMode)
            {
                EditorPrefs.SetBool("m_ABI_isBuilding", false);
                EditorPrefs.SetString("m_ABI_TempVersion", CVRCommon.CCK_VERSION);
                
                string[] filePaths = Directory.GetFiles(Application.dataPath + "/ABI.CCK/Resources/Cache/", "*.prefab");
                foreach (string filePath in filePaths)
                {
                    File.Delete(filePath);
                }
                
                filePaths = Directory.GetFiles(Application.persistentDataPath + "/", "*.cvravatar");
                foreach (string filePath in filePaths)
                {
                    File.Delete(filePath);
                }
                
                filePaths = Directory.GetFiles(Application.persistentDataPath + "/", "*.cvravatar.manifest");
                foreach (string filePath in filePaths)
                {
                    File.Delete(filePath);
                }
                
                filePaths = Directory.GetFiles(Application.persistentDataPath + "/", "*.cvrprop");
                foreach (string filePath in filePaths)
                {
                    File.Delete(filePath);
                }
                
                filePaths = Directory.GetFiles(Application.persistentDataPath + "/", "*.cvrprop.manifest");
                foreach (string filePath in filePaths)
                {
                    File.Delete(filePath);
                }
                
                /*if (File.Exists(Application.persistentDataPath + "/bundle.cvravatar")) File.Delete(Application.persistentDataPath + "/bundle.cvravatar");
                if (File.Exists(Application.persistentDataPath + "/bundle.cvravatar.manifest")) File.Delete(Application.persistentDataPath + "/bundle.cvravatar.manifest");
                if (File.Exists(Application.persistentDataPath + "/bundle.cvrprop")) File.Delete(Application.persistentDataPath + "/bundle.cvrprop");
                if (File.Exists(Application.persistentDataPath + "/bundle.cvrprop.manifest")) File.Delete(Application.persistentDataPath + "/bundle.cvrprop.manifest");*/
                if (File.Exists(Application.persistentDataPath + "/bundle.cvrworld")) File.Delete(Application.persistentDataPath + "/bundle.cvrworld");
                if (File.Exists(Application.persistentDataPath + "/bundle.cvrworld.manifest")) File.Delete(Application.persistentDataPath + "/bundle.cvrworld.manifest");
                if (File.Exists(Application.persistentDataPath + "/bundle.png")) File.Delete(Application.persistentDataPath + "/bundle.png");
                if (File.Exists(Application.persistentDataPath + "/bundle.png.manifest")) File.Delete(Application.persistentDataPath + "/bundle.png.manifest");
                if (File.Exists(Application.persistentDataPath + "/bundle_pano_1024.png")) File.Delete(Application.persistentDataPath + "/bundle_pano_1024.png");
                if (File.Exists(Application.persistentDataPath + "/bundle_pano_1024.png.manifest")) File.Delete(Application.persistentDataPath + "/bundle_pano_1024.png.manifest");
                if (File.Exists(Application.persistentDataPath + "/bundle_pano_4096.png")) File.Delete(Application.persistentDataPath + "/bundle_pano_4096.png");
                if (File.Exists(Application.persistentDataPath + "/bundle_pano_4096.png.manifest")) File.Delete(Application.persistentDataPath + "/bundle_pano_4096.png.manifest");
                AssetDatabase.Refresh();
            }

            if (state == PlayModeStateChange.EnteredPlayMode && EditorPrefs.GetBool("m_ABI_isBuilding"))
            {
                CCK_BuildUtility.upload_id = EditorPrefs.GetString("m_ABI_uploadId");
                string randomNum = EditorPrefs.GetString("m_ABI_uploadRand");
                
                var ui = Instantiate(AssetDatabase.LoadAssetAtPath<GameObject>("Assets/ABI.CCK/GUIAssets/CCK_UploaderHead.prefab"));
                OnGuiUpdater up = ui.GetComponentInChildren<OnGuiUpdater>();
                if (File.Exists(Application.dataPath + "/ABI.CCK/Resources/Cache/_CVRAvatar.prefab"))up.asset = Resources.Load<GameObject>("Cache/_CVRAvatar").GetComponent<CVRAssetInfo>();
                if (File.Exists(Application.dataPath + $"/ABI.CCK/Resources/Cache/CVRAvatar_{CCK_BuildUtility.upload_id}_{randomNum}.prefab"))up.asset = Resources.Load<GameObject>($"Cache/CVRAvatar_{CCK_BuildUtility.upload_id}_{randomNum}").GetComponent<CVRAssetInfo>();
                if (File.Exists(Application.dataPath + "/ABI.CCK/Resources/Cache/_CVRSpawnable.prefab"))up.asset = Resources.Load<GameObject>("Cache/_CVRSpawnable").GetComponent<CVRAssetInfo>();
                if (File.Exists(Application.dataPath + $"/ABI.CCK/Resources/Cache/CVRSpawnable_{CCK_BuildUtility.upload_id}_{randomNum}.prefab"))up.asset = Resources.Load<GameObject>($"Cache/CVRSpawnable_{CCK_BuildUtility.upload_id}_{randomNum}").GetComponent<CVRAssetInfo>();
                if (File.Exists(Application.dataPath + "/ABI.CCK/Resources/Cache/_CVRWorld.prefab"))up.asset = Resources.Load<GameObject>("Cache/_CVRWorld").GetComponent<CVRAssetInfo>();
            }
        }

        private void OnGUI()
        {
            GUIStyle centeredStyle = new GUIStyle(GUI.skin.label)
            {
                alignment = TextAnchor.MiddleCenter,
                fixedHeight = 70, // Fixes size when Android
            };

            GUILayout.Label(abiLogo, centeredStyle);
            EditorGUILayout.BeginVertical();
            
            _tab = GUILayout.Toolbar (_tab, new string[] {CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_HEADING_BUILDER"), CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_HEADING_SETTINGS")});

            _scroll = EditorGUILayout.BeginScrollView(_scroll);
            
            switch (_tab)
            {
                case 0:
                    if (!ApiConnection.IsLoggedIn)
                    {
                        Tab_LogIn();
                    }
                    else
                    {
                        Tab_LoggedIn();
                    }
                    break;
                
                case 1:
                    Tab_Settings();
                    break;
            }
            
            EditorGUILayout.EndScrollView();

            EditorGUILayout.EndVertical();
        }

        private void Tab_LogIn()
        {
            EditorGUILayout.LabelField("ABI Community Hub Access", EditorStyles.boldLabel);
            EditorGUILayout.LabelField(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_INFOTEXT_SIGNIN1"));
            EditorGUILayout.LabelField(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_INFOTEXT_SIGNIN2"));
            EditorGUILayout.LabelField(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_INFOTEXT_SIGNIN3"));
            EditorGUILayout.Space();
            _inputUsername = EditorGUILayout.TextField(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_LOGIN_TEXT_USERNAME"), _inputUsername);
            _inputAccessKey = EditorGUILayout.PasswordField(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_LOGIN_TEXT_ACCESSKEY"), _inputAccessKey);

            if (GUILayout.Button(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_LOGIN_BUTTON")))
            {
                _ = AttemptLoginWithCredentials();
            }

            if (ApiConnection.AuthState == ApiConnection.AuthenticationState.LoginFailed && !ApiConnection.IsLoggedIn)
            {
                GUILayout.Label(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_LOGIN_CREDENTIALS_INCORRECT"));
            }
        }

        private void Tab_LoggedIn()
        {
            EditorGUILayout.LabelField(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_HEADING_ACCOUNT_INFO"), EditorStyles.boldLabel);
            EditorGUILayout.Space();
            EditorGUILayout.LabelField(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_INFOTEXT_AUTHENTICATED_AS"), ApiConnection.UserInfo.Name);
            EditorGUILayout.LabelField(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_INFOTEXT_USER_RANK"), ApiConnection.UserInfo.UserRank);
            EditorGUILayout.LabelField("Account Unlock", $"{(ApiConnection.UserInfo.IsAccountUnlocked ? "Unlocked" : "Locked")}");
            EditorGUILayout.LabelField("CCK version    ", CVRCommon.CCK_VERSION_FULL);
            EditorGUILayout.Space();
            
            bool nearingLimitAvatarsAndWorlds = ApiConnection.IsNearAvatarsAndWorldsLimit;
            bool nearingLimitSpawnables = ApiConnection.IsNearSpawnablesLimit;
            
            if (nearingLimitAvatarsAndWorlds)
            {
                // Calculate private counts by subtracting public from total
                int privateAvatars = ApiConnection.ContentStats.Avatars - ApiConnection.PublicContentStats.Avatars;
                int privateWorlds = ApiConnection.ContentStats.Worlds - ApiConnection.PublicContentStats.Worlds;
                EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_ACCOUNT_UPLOAD_LIMIT_AVATAR_WORLD_WARNING")
                    .Replace("{x}", $"{privateAvatars + privateWorlds}")
                    .Replace("{y}", ApiConnection.ContentLimits.AvatarsAndWorlds.ToString()), MessageType.Warning);
            }
            
            if (nearingLimitSpawnables)
            {
                int privateSpawnables = ApiConnection.ContentStats.Spawnables - ApiConnection.PublicContentStats.Spawnables;
                EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_ACCOUNT_UPLOAD_LIMIT_SPAWNABLE_WARNING")
                    .Replace("{x}", $"{privateSpawnables}")
                    .Replace("{y}", ApiConnection.ContentLimits.Spawnables.ToString()), MessageType.Warning);
            }
            
            if (nearingLimitAvatarsAndWorlds || nearingLimitSpawnables) 
                EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_ACCOUNT_UPLOAD_LIMIT_INFO"), MessageType.Info);
            
            if (GUILayout.Button(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_LOGOUT_BUTTON"))){ 
                bool logout = EditorUtility.DisplayDialog(
                    CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_LOGOUT_DIALOG_TITLE"),
                    CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_LOGOUT_DIALOG_BODY"),
                    CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_LOGOUT_DIALOG_ACCEPT"), 
                    CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_LOGOUT_DIALOG_DECLINE"));
                if (logout) Logout();
            }
            EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_INFOTEXT_DOCUMENTATION"), MessageType.Info);
            if (GUILayout.Button(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_HEADING_DOCUMENTATION"))) Application.OpenURL("https://docs.abinteractive.net");
            EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_WARNING_FEEDBACK"), MessageType.Info);
            if (GUILayout.Button(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_HEADING_FEEDBACK"))) Application.OpenURL("https://feedback.abinteractive.net/");
            EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_WARNING_FOLDERPATH"), MessageType.Warning);
            EditorGUILayout.Space();
            EditorGUILayout.LabelField(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_HEADING_FOUNDCONTENT"), EditorStyles.boldLabel);
            
            // Check if using a supported Unity version
            if (!SupportedUnityVersions.Contains(Application.unityVersion))
            {
                EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_WORLDS_ERROR_UNITY_UNSUPPORTED"), MessageType.Error);
                // return; // Still allow usage
            }
            
            // Check if OpenXR is needed
#if PLATFORM_ANDROID
            if (!ABI.CCK.Dependencies.OpenXR.OpenXR_Configurator.IsImported())
            {
                EditorGUILayout.HelpBox("OpenXR needs to be imported prior to uploading Android content!", MessageType.Error);
                if (GUILayout.Button("Import OpenXR")) ABI.CCK.Dependencies.OpenXR.OpenXR_Configurator.RunConfiguration();
                return;
            }
            if (!ABI.CCK.Dependencies.OpenXR.OpenXR_Configurator.IsConfigured())
            {
                EditorGUILayout.HelpBox("OpenXR needs to be configured prior to uploading Android content!", MessageType.Error);
                if (GUILayout.Button("Configure OpenXR")) ABI.CCK.Dependencies.OpenXR.OpenXR_Configurator.RunConfiguration();
                return;
            }
#endif
            
            List<CVRAvatar> avatars = new List<CVRAvatar>();
            List<CVRSpawnable> spawnables = new List<CVRSpawnable>();
            List<CVRWorld> worlds = new List<CVRWorld>();
            
            foreach (CVRWorld w in Resources.FindObjectsOfTypeAll<CVRWorld>())
            {
                if (w.gameObject.activeInHierarchy) worlds.Add(w);
            }
            
            foreach (CVRSpawnable s in Resources.FindObjectsOfTypeAll<CVRSpawnable>())
            {
                if (s.gameObject.activeInHierarchy) spawnables.Add(s);
            }

            foreach (CVRAvatar a in Resources.FindObjectsOfTypeAll<CVRAvatar>())
            {
                if (a.gameObject.activeInHierarchy) avatars.Add(a);
            }
            
            if (worlds.Count <= 0 && avatars.Count > 0)
            {
                if (avatars.Count <= 0) EditorGUILayout.LabelField(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_UPLOADER_NO_AVATARS_FOUND"));
                else
                {
                    if (avatars.Count > 0)
                    {
                        var counter = 0;
                        scrollPosAvatar = EditorGUILayout.BeginScrollView(scrollPosAvatar);
                        foreach (CVRAvatar a in avatars)
                        {
                            counter++;
                            EditorGUI.BeginChangeCheck();
                            EditorGUILayout.Space();
                            GUILayout.Label("Avatar Object #" + counter);
                            OnGUIAvatar(a);
                        }

                        EditorGUILayout.EndScrollView();
                    }
                }
            }
            if (worlds.Count <= 0 && spawnables.Count > 0)
            {
                if (spawnables.Count <= 0) EditorGUILayout.LabelField(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_UPLOADER_NO_SPAWNABLES_FOUND"));
                else
                {
                    if (spawnables.Count > 0)
                    {
                        var counter = 0;
                        scrollPosSpawnable = EditorGUILayout.BeginScrollView(scrollPosSpawnable);
                        foreach (CVRSpawnable s in spawnables)
                        {
                            counter++;
                            EditorGUI.BeginChangeCheck();
                            EditorGUILayout.Space();
                            GUILayout.Label("Spawnable Object #" + counter);
                            OnGUISpawnable(s);
                        }

                        EditorGUILayout.EndScrollView();
                    }
                }
            }
            if (avatars.Count <= 0 && worlds.Count == 1)
            {
                int errors = 0;
                int overallMissingScripts = 0;
                
                overallMissingScripts = CCK_Tools.CleanMissingScripts(CCK_Tools.SearchType.Scene , false, null);
                if (overallMissingScripts > 0) errors++;
                
                EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_INFOTEXT_WORLDS_NO_AVATARS"), MessageType.Info);

                //Error
                if (overallMissingScripts > 0) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_ERROR_WORLD_MISSING_SCRIPTS"), MessageType.Error);
                
                //Warning
                if (worlds[0].spawns.Length == 0) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_WORLDS_WARNING_SPAWNPOINT"), MessageType.Warning);

                //Info
                if (worlds[0].referenceCamera == null) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_WORLDS_INFO_REFERENCE_CAMERA"), MessageType.Info);
                if (worlds[0].respawnHeightY <= -500) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_WORLDS_INFO_RESPAWN_HEIGHT"), MessageType.Info);
                
                if (GUILayout.Button(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_UPLOAD_WORLD_BUTTON")) && errors <= 0)
                {
                    _ = CCK_BuildUtility.BuildAndUploadMapAsset(EditorSceneManager.GetActiveScene(), worlds[0].gameObject);
                }
                if (overallMissingScripts > 0) if (GUILayout.Button(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_UTIL_REMOVE_MISSING_SCRIPTS_BUTTON"))) CCK_Tools.CleanMissingScripts(CCK_Tools.SearchType.Scene , true, null);
            }
            if (avatars.Count <= 0 && worlds.Count > 1)
            {
                EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_WORLDS_ERROR_MULTIPLE_CVR_WORLD"), MessageType.Error);
            }
            if (avatars.Count > 0 && worlds.Count > 0)
            {
                EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_WORLDS_ERROR_WORLD_CONTAINS_AVATAR"), MessageType.Error);
            }
            if (avatars.Count <= 0 && worlds.Count <= 0)
            {
                EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_WORLDS_ERROR_NO_CONTENT"), MessageType.Info);
            }
        }

        private void Tab_Settings()
        {
            EditorGUILayout.LabelField(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_SETTINGS_HEADER"), EditorStyles.boldLabel);
            EditorGUILayout.LabelField("CCK version    ", CVRCommon.CCK_VERSION);
            EditorGUILayout.Space();
            
            EditorGUILayout.BeginHorizontal();
            
            EditorGUILayout.BeginVertical();
            EditorGUILayout.LabelField(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_SETTINGS_CONTENT_REGION"));
            EditorGUILayout.EndVertical();
            
            EditorGUILayout.BeginVertical();
            var region = EditorGUILayout.Popup(EditorPrefs.GetInt("ABI_PREF_UPLOAD_REGION", 0), new []{"Europe", "United States", "Asia"});
            EditorPrefs.SetInt("ABI_PREF_UPLOAD_REGION", region);
            EditorGUILayout.EndVertical();
            
            EditorGUILayout.EndHorizontal();
            
            EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_SETTINGS_HINT_CONTENT_REGION"), MessageType.Info);
            
            EditorGUILayout.Space();
            
            EditorGUILayout.BeginHorizontal();
            
            EditorGUILayout.BeginVertical();
            EditorGUILayout.LabelField(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_SETTINGS_CCK_LANGUAGE"));
            EditorGUILayout.EndVertical();
            
            EditorGUILayout.BeginVertical();
            string selectedLanguage = EditorPrefs.GetString("ABI_CCKLocals", "English");
            int selectedIndex = CCKLocalizationProvider.GetKnownLanguages().FindIndex(match => match == selectedLanguage);
            if (selectedIndex < 0) selectedIndex = 0;
            selectedIndex = EditorGUILayout.Popup(selectedIndex, CCKLocalizationProvider.GetKnownLanguages().ToArray());
            EditorPrefs.SetString("ABI_CCKLocals", CCKLocalizationProvider.GetKnownLanguages()[selectedIndex]);
            EditorGUILayout.EndVertical();
            
            EditorGUILayout.EndHorizontal();
            
            EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_SETTINGS_HINT_CCK_LANGUAGE"), MessageType.Info);
            EditorGUILayout.Space();
        }

        private void OnGUIAvatar(CVRAvatar avatar)
        {
            GameObject avatarObject = avatar.gameObject;
            GUI.enabled = true;
            EditorGUILayout.InspectorTitlebar(avatarObject.activeInHierarchy, avatarObject);
            int errors = 0;
            int overallPolygonsCount = 0;
            int overallSkinnedMeshRenderer = 0;
            int overallUniqueMaterials = 0;
            int overallMissingScripts = 0;
            foreach (MeshFilter filter in avatar.gameObject.GetComponentsInChildren<MeshFilter>())
            {
                if (filter.sharedMesh != null) overallPolygonsCount = overallPolygonsCount + filter.sharedMesh.triangles.Length / 3;
            }
            foreach (SkinnedMeshRenderer renderer in avatar.gameObject.GetComponentsInChildren<SkinnedMeshRenderer>())
            {
                overallSkinnedMeshRenderer++;
                if (renderer.sharedMaterials != null) overallUniqueMaterials = overallUniqueMaterials + renderer.sharedMaterials.Length;
            }
            overallMissingScripts = CCK_Tools.CleanMissingScripts(CCK_Tools.SearchType.Selection ,false,avatarObject);
            if (overallMissingScripts > 0) errors++;

            //Errors
            if (overallMissingScripts > 0) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_ERROR_AVATAR_MISSING_SCRIPTS"), MessageType.Error);
            var animator = avatar.GetComponent<Animator>();
            if (animator == null)
            {
                errors++;
                EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_AVATAR_ERROR_ANIMATOR"), MessageType.Error);
            }
            if (animator != null && animator.avatar == null)
            {
                //errors++;
                EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_AVATAR_WARNING_GENERIC"), MessageType.Warning);
            }
            
            var referencedTextures = GetAllReferencedTextures(avatarObject);
            if (CheckForInvalidTextureSize(referencedTextures))
            {
                EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_AVATAR_ERROR_TOO_LARGE_TEXTURE"), MessageType.Error);
                if(GUILayout.Button(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_FIX_IMPORT_SETTINGS")))
                {
                    AdjustMaxTextureSizes(referencedTextures);
                }
                errors++;
            }
            
            if (CheckForInvalidStreamingMipMappingSettings(referencedTextures))
            {
                EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_AVATAR_ERROR_INVALID_STREAMING_MIPMAPS"), MessageType.Error);
                if(GUILayout.Button(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_FIX_IMPORT_SETTINGS")))
                {
                    AdjustStreamingMipMappingSettings(referencedTextures);
                }
                errors++;
            }

            var referencedAudioClips = GetAllReferencedAudioClips(avatarObject);
            if (CheckForInvalidLoadInBackground(referencedAudioClips))
            {
                EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_AVATAR_ERROR_AUDIO_LOAD_IN_BACKGROUND"), MessageType.Error);
                if(GUILayout.Button(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_FIX_IMPORT_SETTINGS")))
                {
                    AdjustLoadInBackground(referencedAudioClips);
                }
                errors++;
            }
            
            //Warnings
            if (overallPolygonsCount > 100000) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_AVATAR_WARNING_POLYGONS").Replace("{X}", overallPolygonsCount.ToString()), MessageType.Warning);
            if (overallSkinnedMeshRenderer > 10) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_AVATAR_WARNING_SKINNED_MESH_RENDERERS").Replace("{X}", overallSkinnedMeshRenderer.ToString()), MessageType.Warning);
            if (overallUniqueMaterials > 20) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_AVATAR_WARNING_MATERIALS").Replace("{X}", overallUniqueMaterials.ToString()), MessageType.Warning);
            if (avatar.viewPosition == Vector3.zero) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_AVATAR_WARNING_VIEWPOINT"), MessageType.Warning);
            if (animator != null && animator.avatar != null && !animator.avatar.isHuman) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_AVATAR_WARNING_NON_HUMANOID"), MessageType.Warning);
            
            var avatarMeshes = getAllAssetMeshesInAvatar(avatarObject);
            if (CheckForLegacyBlendShapeNormals(avatarMeshes))
            {
                EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_AVATAR_WARNING_LEGACY_BLENDSHAPES"), MessageType.Warning);
                if(GUILayout.Button(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_FIX_IMPORT_SETTINGS")))
                {
                    FixLegacyBlendShapeNormals(avatarMeshes);
                }
            }

            //Info
            if (overallPolygonsCount >= 50000 && overallPolygonsCount <= 100000) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_AVATAR_INFO_POLYGONS").Replace("{X}", overallPolygonsCount.ToString()), MessageType.Info);
            if (overallSkinnedMeshRenderer >= 5 && overallSkinnedMeshRenderer <= 10) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_AVATAR_INFO_SKINNED_MESH_RENDERERS").Replace("{X}", overallSkinnedMeshRenderer.ToString()), MessageType.Info);
            if (overallUniqueMaterials >= 10 && overallUniqueMaterials <= 20) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_AVATAR_INFO_MATERIALS").Replace("{X}", overallUniqueMaterials.ToString()), MessageType.Info);
            if (avatar.viewPosition.y <= 0.5f) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_AVATAR_INFO_SMALL"), MessageType.Info);
            if (avatar.viewPosition.y > 3f) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_AVATAR_INFO_HUGE"), MessageType.Info);

            if (errors <= 0) if (GUILayout.Button(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_AVATAR_UPLOAD_BUTTON"))) _ = CCK_BuildUtility.BuildAndUploadAvatar(avatarObject);
            if (overallMissingScripts > 0) if (GUILayout.Button(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_UTIL_REMOVE_MISSING_SCRIPTS_BUTTON"))) CCK_Tools.CleanMissingScripts(CCK_Tools.SearchType.Selection ,true,avatarObject);

        }

        private void OnGUISpawnable(CVRSpawnable s)
        {
            GameObject spawnableObject = s.gameObject;
            GUI.enabled = true;
            EditorGUILayout.InspectorTitlebar(spawnableObject.activeInHierarchy, spawnableObject);
            int errors = 0;
            int overallPolygonsCount = 0;
            int overallSkinnedMeshRenderer = 0;
            int overallUniqueMaterials = 0;
            int overallMissingScripts = 0;
            foreach (MeshFilter filter in s.gameObject.GetComponentsInChildren<MeshFilter>())
            {
                if (filter.sharedMesh != null) overallPolygonsCount = overallPolygonsCount + filter.sharedMesh.triangles.Length / 3;
            }
            foreach (SkinnedMeshRenderer renderer in s.gameObject.GetComponentsInChildren<SkinnedMeshRenderer>())
            {
                overallSkinnedMeshRenderer++;
                if (renderer.sharedMaterials != null) overallUniqueMaterials = overallUniqueMaterials + renderer.sharedMaterials.Length;
            }
            overallMissingScripts = CCK_Tools.CleanMissingScripts(CCK_Tools.SearchType.Selection ,false, spawnableObject);
            if (overallMissingScripts > 0) errors++;

            //Errors
            if (overallMissingScripts > 0) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_PROPS_ERROR_MISSING_SCRIPT"), MessageType.Error);
            
            //Warnings
            if (overallPolygonsCount > 100000) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_PROPS_WARNING_POLYGONS").Replace("{X}", overallPolygonsCount.ToString()), MessageType.Warning);
            if (overallSkinnedMeshRenderer > 10) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_PROPS_WARNING_SKINNED_MESH_RENDERERS").Replace("{X}", overallSkinnedMeshRenderer.ToString()), MessageType.Warning);
            if (overallUniqueMaterials > 20) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_PROPS_WARNING_MATERIALS").Replace("{X}", overallUniqueMaterials.ToString()), MessageType.Warning);

            var spawnableMeshes = getAllAssetMeshesInAvatar(spawnableObject);
            if (CheckForLegacyBlendShapeNormals(spawnableMeshes))
            {
                EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_PROPS_WARNING_LEGACY_BLENDSHAPES"), MessageType.Warning);
                if(GUILayout.Button(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_FIX_IMPORT_SETTINGS")))
                {
                    FixLegacyBlendShapeNormals(spawnableMeshes);
                }
            }

            var referencedTextures = GetAllReferencedTextures(spawnableObject);
            if (CheckForInvalidTextureSize(referencedTextures))
            {
                EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_PROPS_ERROR_TOO_LARGE_TEXTURE"), MessageType.Error);
                if(GUILayout.Button(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_FIX_IMPORT_SETTINGS")))
                {
                    AdjustMaxTextureSizes(referencedTextures);
                }
                errors++;
            }
            
            if (CheckForInvalidStreamingMipMappingSettings(referencedTextures))
            {
                EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_PROPS_ERROR_INVALID_STREAMING_MIPMAPS"), MessageType.Error);
                if(GUILayout.Button(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_FIX_IMPORT_SETTINGS")))
                {
                    AdjustStreamingMipMappingSettings(referencedTextures);
                }
                errors++;
            }

            var referencedAudioClips = GetAllReferencedAudioClips(spawnableObject);
            if (CheckForInvalidLoadInBackground(referencedAudioClips))
            {
                EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_PROPS_ERROR_AUDIO_LOAD_IN_BACKGROUND"), MessageType.Error);
                if(GUILayout.Button(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_FIX_IMPORT_SETTINGS")))
                {
                    AdjustLoadInBackground(referencedAudioClips);
                }
                errors++;
            }

            //Info
            if (overallPolygonsCount >= 50000 && overallPolygonsCount <= 100000) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_PROPS_INFO_POLYGONS").Replace("{X}", overallPolygonsCount.ToString()), MessageType.Info);
            if (overallSkinnedMeshRenderer >= 5 && overallSkinnedMeshRenderer <= 10) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_PROPS_INFO_SKINNED_MESH_RENDERERS").Replace("{X}", overallSkinnedMeshRenderer.ToString()), MessageType.Info);
            if (overallUniqueMaterials >= 10 && overallUniqueMaterials <= 20) EditorGUILayout.HelpBox(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_PROPS_INFO_MATERIALS").Replace("{X}", overallUniqueMaterials.ToString()), MessageType.Info);

            if (errors <= 0 && overallMissingScripts <= 0) if (GUILayout.Button(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_PROPS_UPLOAD_BUTTON"))) _ = CCK_BuildUtility.BuildAndUploadSpawnable(spawnableObject);
            if (overallMissingScripts > 0) if (GUILayout.Button(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_UTIL_REMOVE_MISSING_SCRIPTS_BUTTON"))) CCK_Tools.CleanMissingScripts(CCK_Tools.SearchType.Selection ,true, spawnableObject);
        }

        private List<String> getAllAssetMeshesInAvatar(GameObject avatar)
        {
            var assetPathList = new List<String>();

            foreach (var sMeshRenderer in avatar.GetComponentsInChildren<SkinnedMeshRenderer>(true))
            {
                if(sMeshRenderer == null)
                {
                    continue;
                }
                
                var currentMesh = sMeshRenderer.sharedMesh;
                
                if(currentMesh == null)
                {
                    Debug.LogWarning(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_WARNING_MESH_FILTER_MESH_EMPTY") + $": {sMeshRenderer.transform.name}");
                    continue;
                }
                
                if(!AssetDatabase.Contains(currentMesh))
                {
                    continue;
                }

                string meshAssetPath = AssetDatabase.GetAssetPath(currentMesh);
                if(string.IsNullOrEmpty(meshAssetPath))
                {
                    continue;
                }
                
                if (assetPathList.Contains(meshAssetPath))
                {
                    continue;
                }
                
                assetPathList.Add(meshAssetPath);
            }
            
            foreach (var meshFilter in avatar.GetComponentsInChildren<MeshFilter>(true))
            {
                if(meshFilter == null)
                {
                    continue;
                }
                
                var currentMesh = meshFilter.sharedMesh;
                
                if(currentMesh == null)
                {
                    Debug.LogWarning(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_WARNING_MESH_FILTER_MESH_EMPTY") + $": {meshFilter.transform.name}");
                    continue;
                }
                
                if(!AssetDatabase.Contains(currentMesh))
                {
                    continue;
                }

                string meshAssetPath = AssetDatabase.GetAssetPath(currentMesh);
                if(string.IsNullOrEmpty(meshAssetPath))
                {
                    continue;
                }
                
                if (assetPathList.Contains(meshAssetPath))
                {
                    continue;
                }
                
                assetPathList.Add(meshAssetPath);
            }

            foreach (var pRenderer in avatar.GetComponentsInChildren<ParticleSystemRenderer>(true))
            {
                if(pRenderer == null)
                {
                    continue;
                }

                var particleMeshes = new Mesh[pRenderer.meshCount];
                pRenderer.GetMeshes(particleMeshes);

                foreach (var particleMesh in particleMeshes)
                {
                    if(particleMesh == null)
                    {
                        Debug.LogWarning(CCKLocalizationProvider.GetLocalizedText("ABI_UI_BUILDPANEL_WARNING_MESH_FILTER_MESH_EMPTY") + $": {pRenderer.transform.name}");
                        continue;
                    }
                    
                    if(!AssetDatabase.Contains(particleMesh))
                    {
                        continue;
                    }

                    string meshAssetPath = AssetDatabase.GetAssetPath(particleMesh);
                    if(string.IsNullOrEmpty(meshAssetPath))
                    {
                        continue;
                    }
                
                    if (assetPathList.Contains(meshAssetPath))
                    {
                        continue;
                    }
                
                    assetPathList.Add(meshAssetPath);
                }
            }
            
            return assetPathList;
        }
        
        #region Texture Checks
        private List<Texture> GetAllReferencedTextures(GameObject obj)
        {
            IEnumerable<Component> allComponents = obj.GetComponentsInChildren<Component>(true);
            
            List<Material> materials = new List<Material>();

            foreach (Component component in allComponents)
            {
                if (component is Renderer renderer)
                    materials.AddRange(renderer.sharedMaterials);
                
                if (component is Animator animator)
                    ParseAnimator(animator.runtimeAnimatorController);

                if (component is CVRAvatar avatar)
                {
                    if (avatar.overrides != null)
                        ParseAnimator(avatar.overrides.runtimeAnimatorController);
                }
            }

            void ParseAnimator(RuntimeAnimatorController animator)
            {
                if (animator == null)
                    return;
                
                foreach (AnimationClip animationClip in animator.animationClips)
                {
                    EditorCurveBinding[] curveBindings = AnimationUtility.GetObjectReferenceCurveBindings(animationClip);

                    foreach (EditorCurveBinding curveBinding in curveBindings)
                    {
                        if (!curveBinding.isPPtrCurve)
                            continue;

                        if (!curveBinding.type.IsSubclassOf(typeof(Renderer)))
                            continue;

                        if (!curveBinding.propertyName.StartsWith("m_Material"))
                            continue;
                    
                        ObjectReferenceKeyframe[] referenceKeyframes = AnimationUtility.GetObjectReferenceCurve(animationClip, curveBinding);

                        foreach (ObjectReferenceKeyframe keyframe in referenceKeyframes)
                        {
                            materials.Add(keyframe.value as Material);
                        }
                    }
                }
            }
            
            
            List<Texture> textures = new List<Texture>();

            foreach (Material material in materials)
            {
                if (material == null)
                    continue;
                
                foreach (string textureProperty in material.GetTexturePropertyNames())
                {
                    Texture texture = material.GetTexture(textureProperty);

                    if (texture == null)
                        continue;
                    
                    textures.Add(texture);
                }
            }
            
            return textures;
        }
        
        private bool CheckForInvalidTextureSize(List<Texture> textures)
        {
            foreach (Texture texture in textures)
            {
                if (texture == null)
                    continue;
                
                string texturePath = AssetDatabase.GetAssetPath(texture);

                if (string.IsNullOrWhiteSpace(texturePath))
                    continue;

                AssetImporter importer = AssetImporter.GetAtPath(texturePath);

                if (importer is not TextureImporter textureImporter)
                    continue;

                if (textureImporter.maxTextureSize > 8192)
                    return true;
            }
            
            return false;
        }

        private void AdjustMaxTextureSizes(List<Texture> textures)
        {
            foreach (Texture texture in textures)
            {
                if (texture == null)
                    continue;
                
                string texturePath = AssetDatabase.GetAssetPath(texture);

                if (string.IsNullOrWhiteSpace(texturePath))
                    continue;

                AssetImporter importer = AssetImporter.GetAtPath(texturePath);

                if (importer is not TextureImporter textureImporter)
                    continue;

                if (textureImporter.maxTextureSize <= 8192)
                    continue;
                    
                textureImporter.maxTextureSize = 8192;
                importer.SaveAndReimport();
            }
        }
        
        private bool CheckForInvalidStreamingMipMappingSettings(List<Texture> textures)
        {
            foreach (Texture texture in textures)
            {
                if (texture == null)
                    continue;
                
                string texturePath = AssetDatabase.GetAssetPath(texture);

                if (string.IsNullOrWhiteSpace(texturePath))
                    continue;

                AssetImporter importer = AssetImporter.GetAtPath(texturePath);

                if (importer is not TextureImporter textureImporter)
                    continue;

                if (!textureImporter.mipmapEnabled)
                    continue;

                if (!textureImporter.streamingMipmaps)
                    return true;
            }
            
            return false;
        }
        
        private void AdjustStreamingMipMappingSettings(List<Texture> textures)
        {
            foreach (Texture texture in textures)
            {
                if (texture == null)
                    continue;
                
                string texturePath = AssetDatabase.GetAssetPath(texture);

                if (string.IsNullOrWhiteSpace(texturePath))
                    continue;

                AssetImporter importer = AssetImporter.GetAtPath(texturePath);

                if (importer is not TextureImporter textureImporter)
                    continue;

                if (!textureImporter.mipmapEnabled)
                    continue;

                if (textureImporter.streamingMipmaps)
                    continue;
                
                textureImporter.streamingMipmaps = true;
                importer.SaveAndReimport();
            }
        }
        #endregion
        
        #region AudioClip Checks

        private List<AudioClip> GetAllReferencedAudioClips(GameObject obj)
        {
            HashSet<UnityEngine.Object> alreadySeen = new HashSet<UnityEngine.Object>();
            IEnumerable<Component> allComponents = obj.GetComponentsInChildren<Component>(true);

            List<AudioClip> audioClips = new List<AudioClip>();

            foreach (Component component in allComponents)
            {
                if (component is AudioSource audioSource)
                    audioClips.Add(audioSource.clip);

                if (component is CVRAudioDriver audioDriver)
                {
                    AudioSource driverAudioSource = audioDriver.audioSource;
                    if (driverAudioSource != null)
                        audioClips.Add(driverAudioSource.clip);
                    
                    audioClips.AddRange(audioDriver.audioClips);
                }

                if (component is CVRParticleSound particleSound)
                {
                    AudioSource dieReference = particleSound.dieAudioSourceReference;
                    if (dieReference != null)
                        audioClips.Add(dieReference.clip);
                    
                    AudioSource spawnReference = particleSound.dieAudioSourceReference;
                    if (spawnReference != null)
                        audioClips.Add(spawnReference.clip);
                    
                    audioClips.AddRange(particleSound.spawnSound);
                    audioClips.AddRange(particleSound.dieSound);
                }

                if (component is GunController gunController)
                {
                    audioClips.AddRange(gunController.reloadSounds);
                    audioClips.AddRange(gunController.shootSounds);
                    audioClips.AddRange(gunController.emptyShootSounds);
                }
            }

            return audioClips;
        }

        private bool CheckForInvalidLoadInBackground(List<AudioClip> audioClips)
        {
            foreach (AudioClip audioClip in audioClips)
            {
                if (audioClip == null)
                    continue;
                
                string audioClipPath = AssetDatabase.GetAssetPath(audioClip);

                if (string.IsNullOrWhiteSpace(audioClipPath))
                    continue;

                AssetImporter importer = AssetImporter.GetAtPath(audioClipPath);

                if (importer is not AudioImporter audioImporter)
                    continue;

                if (!audioImporter.loadInBackground)
                    return true;
            }

            return false;
        }
        
        private void AdjustLoadInBackground(List<AudioClip> audioClips)
        {
            foreach (AudioClip audioClip in audioClips)
            {
                if (audioClip == null)
                    continue;
                
                string audioClipPath = AssetDatabase.GetAssetPath(audioClip);

                if (string.IsNullOrWhiteSpace(audioClipPath))
                    continue;

                AssetImporter importer = AssetImporter.GetAtPath(audioClipPath);

                if (importer is not AudioImporter audioImporter)
                    continue;

                if (audioImporter.loadInBackground)
                    continue;

                audioImporter.loadInBackground = true;
                audioImporter.SaveAndReimport();
            }
        }
        #endregion
        
        private bool CheckForLegacyBlendShapeNormals(List<String> assetPaths)
        {
            foreach (var assetPath in assetPaths)
            {

                var modelImporter = AssetImporter.GetAtPath(assetPath) as ModelImporter;
                if(modelImporter == null)
                {
                    continue;
                }

                if(modelImporter.importBlendShapeNormals != ModelImporterNormals.Calculate)
                {
                    continue;
                }
                
                if((bool)legacyBlendShapeImporter.GetValue(modelImporter))
                {
                    continue;
                }

                return true;
            }

            return false;
        }

        private void FixLegacyBlendShapeNormals(List<String> assetPaths)
        {
            foreach (var assetPath in assetPaths)
            {
                var modelImporter = AssetImporter.GetAtPath(assetPath) as ModelImporter;
                if(modelImporter == null)
                {
                    continue;
                }

                if(modelImporter.importBlendShapeNormals != ModelImporterNormals.Calculate)
                {
                    continue;
                }

                legacyBlendShapeImporter.SetValue(modelImporter, true);
                modelImporter.SaveAndReimport();
            }
        }
        
        private void EditorUpdate()
        {
            /*if (!_attemptingToLogin || _webRequest is null || !_webRequest.isDone) return;

            if (_webRequest.isNetworkError || _webRequest.isHttpError)
            {
                Debug.LogError("[ABI:CCK] Web Request Error while trying to authenticate.");
                return;
            }

            var result = _webRequest.downloadHandler.text;
            if (string.IsNullOrEmpty(result)) return;

            LoginResponse usr = Abi.Newtonsoft.Json.JsonConvert.DeserializeObject<LoginResponse>(result);
            if (usr == null) return;
            
            if (usr.IsValidCredential)
            {
                _apiUserRank = usr.UserRank;
                Debug.Log("[ABI:CCK] Successfully authenticated as " + _username + " using AlphaLink Public API.");
                EditorPrefs.SetString("m_ABI_Username", _username);
                EditorPrefs.SetString("m_ABI_Key", _key);
                _loggedIn = true;
                _hasAttemptedToLogin = false;
            }
            else
            {
                Debug.Log("[ABI:CCK] Unable to authenticate using provided credentials. API responded with: " + usr.ApiMessage + ".");
                _loggedIn = false;
                _hasAttemptedToLogin = true;
                _username = _key = string.Empty;
            }

            _webRequest = null;
            _attemptingToLogin = false;*/
        }
        
        private void Logout()
        {
            ApiConnection.Logout();
            ApiCredentialsHandler.ClearCredentials();
        }

        private async Task AttemptLoginWithCredentials()
        {
            if (ApiConnection.AuthState == ApiConnection.AuthenticationState.AttemptingLogin)
                return;
            
            if (!string.IsNullOrEmpty(_inputUsername) && !string.IsNullOrEmpty(_inputAccessKey))
            {
                ApiConnection.Logout();
                ApiCredentialsHandler.SaveCredentials(_inputUsername, _inputAccessKey);
            }
            
            await ApiConnection.Login();
            
            Repaint();
        }
    }
}