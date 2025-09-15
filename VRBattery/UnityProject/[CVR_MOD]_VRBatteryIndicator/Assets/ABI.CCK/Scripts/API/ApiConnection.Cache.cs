using System;
using System.Collections.Concurrent;

namespace ABI.CCK.API
{
    public static partial class ApiConnection
    {
        private static readonly ConcurrentDictionary<string, object> ApiCache = new();
        private static readonly TimeSpan CacheExpiration = TimeSpan.FromMinutes(5);

        private static void AddToCache<T>(string cacheKey, T response)
        {
            var cacheEntry = new CacheEntry<T>
            {
                Timestamp = DateTime.UtcNow,
                Response = response
            };

            ApiCache[cacheKey] = cacheEntry;
            LogVerbose($"Added response to cache for key: {cacheKey}");
        }

        private static bool TryGetFromCache<T>(string cacheKey, out T response)
        {
            if (ApiCache.TryGetValue(cacheKey, out object cachedObj))
            {
                var cacheEntry = cachedObj as CacheEntry<T>;
                if (cacheEntry != null && DateTime.UtcNow - cacheEntry.Timestamp < CacheExpiration)
                {
                    response = cacheEntry.Response;
                    LogVerbose($"Returning cached response for key: {cacheKey}");
                    return true;
                }

                // Remove expired cache entry
                ApiCache.TryRemove(cacheKey, out _);
            }

            response = default;
            return false;
        }
        
        internal static void RemoveFromCache(string cacheKey)
        {
            ApiCache.TryRemove(cacheKey, out _);
            LogVerbose($"Removed cache entry for key: {cacheKey}");
        }

        internal static void ClearCache()
        {
            ApiCache.Clear();
            LogVerbose("Cache cleared.");
        }

        private class CacheEntry<T>
        {
            public DateTime Timestamp { get; set; }
            public T Response { get; set; }
        }
    }
}