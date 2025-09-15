using System.Threading.Tasks;

namespace ABI.CCK.API
{
    public static partial class ApiConnection
    {
        public delegate void AuthStateChangedHandler(AuthenticationState newState);
        public static event AuthStateChangedHandler AuthStateChanged;

        public static bool IsLoggedIn => AuthState == AuthenticationState.LoggedIn;
        
        private static AuthenticationState _authState = AuthenticationState.NotLoggedIn;
        public static AuthenticationState AuthState
        {
            get => _authState;
            private set
            {
                if (_authState == value) return;
                _authState = value;
                AuthStateChanged?.Invoke(_authState);
            }
        }

        public enum AuthenticationState
        {
            NotLoggedIn,
            AttemptingLogin,
            LoggedIn,
            LoginFailed
        }

        public static void LoginIfNeeded()
        {
            if (AuthState == AuthenticationState.NotLoggedIn)
                _ = Login();
        }

        public static async Task<bool> Login(string username = null, string accessKey = null)
        {
            AuthState = AuthenticationState.AttemptingLogin;
            
            InitializeHttpClient();

            // If credentials are provided, use them; otherwise, load from ApiCredentialsHandler
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(accessKey))
            {
                if (!ApiCredentialsHandler.IsCredentialsLoaded())
                    ApiCredentialsHandler.LoadCredentials();

                username = ApiCredentialsHandler.Username;
                accessKey = ApiCredentialsHandler.AccessKey;

                if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(accessKey))
                {
                    //LogError("Cannot login without valid credentials.");
                    AuthState = AuthenticationState.NotLoggedIn;
                    return false;
                }
            }

            SetCredentials(username, accessKey);

            var response = await MakeRequest<UserinfoResponse>("cck/userinfo", useCache: false);
            if (response is { Data: not null })
            {
                AuthState = AuthenticationState.LoggedIn;
                LogVerbose($"Successfully authenticated as {response.Data.Name}");
                UserInfo = response.Data; // Cache UserInfo
                return true;
            }

            LogWarning($"API responded: {response?.Message ?? "No response"}");
            AuthState = AuthenticationState.LoginFailed;
            return false;
        }

        public static void Logout()
        {
            if (HttpClient != null)
            {
                HttpClient.DefaultRequestHeaders.Clear();
                HttpClient.Dispose();
                HttpClient = null;
            }
            ClearCache();
            AuthState = AuthenticationState.NotLoggedIn;
            UserInfo = null;
            LogVerbose("Logged out.");
        }
    }
}