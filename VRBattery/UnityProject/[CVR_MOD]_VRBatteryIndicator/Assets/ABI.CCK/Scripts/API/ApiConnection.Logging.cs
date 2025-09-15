using UnityEngine;

namespace ABI.CCK.API
{
    public static partial class ApiConnection
    {
        private static void LogVerbose(string message)
        {
            if (EnableVerboseLogging) Debug.Log($"[ApiConnection] {message}");
        }

        private static void LogWarning(string message)
        {
            Debug.LogWarning($"[ApiConnection] {message}");
        }

        private static void LogError(string message)
        {
            Debug.LogError($"[ApiConnection] {message}");
        }
    }
}