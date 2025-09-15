using System;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using ABI.CCK.Scripts;
using Abi.Newtonsoft.Json;
using UnityEngine;

namespace ABI.CCK.API
{
    public static partial class ApiConnection
    {
        private const string APIAddress = "https://api.abinteractive.net";
        private const string APIVersion = "2";
        //private const string ApiUserAgent = "ChilloutVR API-Requests";
        private static HttpClient HttpClient;

        public static bool EnableVerboseLogging { get; set; } = false;

        #region API Request Methods

        public static async Task<ApiResponse<T>> MakeRequest<T>(
            string url, object data = null, 
            string apiVersion = null, bool put = false, 
            //bool internalCall = false, 
            bool useCache = false)
        {
            string version = apiVersion ?? APIVersion;
            string requestUrl = $"{APIAddress}/{version}/{url}";

            string cacheKey = GenerateCacheKey(requestUrl, data);

            if (useCache && TryGetFromCache(cacheKey, out ApiResponse<T> cachedResponse))
            {
                return cachedResponse;
            }

            HttpResponseMessage response;
            try
            {
                InitializeHttpClient();

                if (put)
                {
                    response = await HttpClient.PutAsync(requestUrl, data != null ? CreateHttpContent(data) : null);
                }
                else if (data != null)
                {
                    response = await HttpClient.PostAsync(requestUrl, CreateHttpContent(data));
                }
                else
                {
                    response = await HttpClient.GetAsync(requestUrl);
                }
            }
            catch (Exception ex)
            {
                LogError($"Exception during API request: {ex.Message}");
                return null;
            }

            var result = await HandleResponse<T>(response, requestUrl);

            if (useCache && result != null)
            {
                AddToCache(cacheKey, result);
            }

            return result;
        }

        #endregion API Request Methods

        #region Helpers

        private static void InitializeHttpClient()
        {
            if (HttpClient != null) return;
            HttpClient = new HttpClient();
            HttpClient.DefaultRequestHeaders.Clear();
            HttpClient.DefaultRequestHeaders.Add("User-Agent", $"CCK/{CVRCommon.CCK_VERSION} (Unity {Application.unityVersion}; {SystemInfo.operatingSystem})");
            LoginIfNeeded();
        }

        private static void SetCredentials(string username, string accessKey)
        {
            HttpClient.DefaultRequestHeaders.Remove("Username");
            HttpClient.DefaultRequestHeaders.Remove("AccessKey");
            HttpClient.DefaultRequestHeaders.Add("Username", username); // username can have spaces
            HttpClient.DefaultRequestHeaders.Add("AccessKey", accessKey.Trim());
        }

        private static StringContent CreateHttpContent(object data)
        {
            var json = JsonConvert.SerializeObject(data);
            LogVerbose($"Request Payload: {json}");
            return new StringContent(json, Encoding.UTF8, "application/json");
        }

        private static async Task<ApiResponse<T>> HandleResponse<T>(HttpResponseMessage response, string url)
        {
            var content = await response.Content.ReadAsStringAsync();

            LogVerbose($"Response Status: {response.StatusCode}");
            LogVerbose($"Response Content: {content}");

            // TODO: handle but better 
            
            //Debug.Log($"Response: {response}");
            
            //if (response.IsSuccessStatusCode)
            //{
                return JsonConvert.DeserializeObject<ApiResponse<T>>(content);
            //}

            // LogError($"API Request {url} returned {response.StatusCode}");
            // return null;
        }

        private static string GenerateCacheKey(string url, object data)
        {
            string dataString = data != null ? JsonConvert.SerializeObject(data) : string.Empty;
            return $"{url}:{dataString}";
        }

        #endregion Helpers
    }
}