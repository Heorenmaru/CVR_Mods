namespace ABI.CCK.API
{
    public static class ApiCredentialsHandler
    {
        private const string k_ApiCredentialsUsernameKey = "m_ABI_Username";
        private const string k_ApiCredentialsAccessKeyKey = "m_ABI_Key";
        
        public static string Username { get; private set; }
        public static string AccessKey { get; private set; }

        public static bool IsCredentialsLoaded()
            => !string.IsNullOrEmpty(Username) && !string.IsNullOrEmpty(AccessKey);

        public static void LoadCredentials()
        {
            #if UNITY_EDITOR
            Username = UnityEditor.EditorPrefs.GetString(k_ApiCredentialsUsernameKey, null);
            AccessKey = UnityEditor.EditorPrefs.GetString(k_ApiCredentialsAccessKeyKey, null);
            #endif
        }

        public static void SaveCredentials(string username, string accessKey)
        {
            #if UNITY_EDITOR
            UnityEditor.EditorPrefs.SetString(k_ApiCredentialsUsernameKey, username);
            UnityEditor.EditorPrefs.SetString(k_ApiCredentialsAccessKeyKey, accessKey);
            #endif

            // Update in-memory credentials
            Username = username;
            AccessKey = accessKey;
        }

        public static void ClearCredentials()
        {
            Username = null; 
            AccessKey = null;
            #if UNITY_EDITOR
            UnityEditor.EditorPrefs.DeleteKey(k_ApiCredentialsUsernameKey);
            UnityEditor.EditorPrefs.DeleteKey(k_ApiCredentialsAccessKeyKey);
            #endif
        }
    }
}