namespace ABI.CCK.API
{
    public static partial class ApiConnection
    {
        public static UserinfoResponse UserInfo { get; private set; }

        public static UserinfoResponse.LinksData Links => UserInfo?.Links;
        public static UserinfoResponse.LimitsData ContentLimits => UserInfo?.Limits;
        public static UserinfoResponse.ContentStatsData ContentStats => UserInfo?.ContentStats;
        public static UserinfoResponse.ContentStatsData PublicContentStats => UserInfo?.PublicContentStats;

        private const float LimitThreshold = 0.8f;

        /// <summary>
        /// Checks if the user is near the avatars and worlds limit. This is only relevant if the account is locked.
        /// Default limit threshold is 80% before reporting as near limit.
        /// </summary>
        public static bool IsNearAvatarsAndWorldsLimit
            => UserInfo?.IsAccountUnlocked == false
               && (ContentStats?.Avatars + ContentStats?.Worlds - (PublicContentStats?.Avatars + PublicContentStats?.Worlds))
               >= UserInfo?.Limits?.AvatarsAndWorlds * LimitThreshold;
        
        /// <summary>
        /// Checks if the user is near the spawnables limit. This is only relevant if the account is locked.
        /// Default limit threshold is 80% before reporting as near limit.
        /// </summary>
        public static bool IsNearSpawnablesLimit 
            => UserInfo?.IsAccountUnlocked == false
               && (ContentStats?.Spawnables - PublicContentStats?.Spawnables)
               >= UserInfo?.Limits?.Spawnables * LimitThreshold;
    }
}