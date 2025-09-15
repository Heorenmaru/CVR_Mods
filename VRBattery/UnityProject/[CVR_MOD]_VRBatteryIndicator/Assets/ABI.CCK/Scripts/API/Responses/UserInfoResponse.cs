using System.Diagnostics.CodeAnalysis;
using JetBrains.Annotations;

namespace ABI.CCK.API
{
    [PublicAPI]
    public class UserinfoResponse
    {
        public LinksData Links { get; set; }
        
        public string Id { get; set; }
        public string Image { get; set; }
        public string Name { get; set; }
        public string UserRank { get; set; }
        public bool IsAccountUnlocked { get; set; }
        
        public LimitsData Limits { get; set; }
        public ContentStatsData ContentStats { get; set; }
        public ContentStatsData PublicContentStats { get; set; }

        public class LinksData
        {
            public string Discord { get; set; }
            public string Support { get; set; }
            public string ContentManageHub { get; set; }
            public string CckLanding { get; set; }
        }

        [SuppressMessage("ReSharper", "UnusedAutoPropertyAccessor.Global")]
        public class LimitsData
        {
            public int AvatarsAndWorlds { get; set; }
            public int Spawnables { get; set; }
        }

        [SuppressMessage("ReSharper", "UnusedAutoPropertyAccessor.Global")]
        public class ContentStatsData
        {
            public int Avatars { get; set; }
            public int Worlds { get; set; }
            public int Spawnables { get; set; }
        }
    }
}