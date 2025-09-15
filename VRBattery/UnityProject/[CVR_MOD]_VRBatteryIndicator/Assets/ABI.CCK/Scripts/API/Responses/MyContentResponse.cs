using System;
using System.Collections.Generic;
using Abi.Newtonsoft.Json;

namespace ABI.CCK.API
{
    [Serializable]
    public class MyContentResponse
    {
        [JsonProperty("totalPages")]
        public int TotalPages { get; set; }

        [JsonProperty("entries")]
        public List<MyContentData> Entries { get; set; }
    }
    
    [Serializable]
    public class MyContentData
    {
        [JsonProperty("platforms")]
        public List<string> Platforms { get; set; }

        [JsonProperty("public")]
        public bool IsPublic { get; set; }

        [JsonProperty("description")]
        public string Description { get; set; }

        [JsonProperty("image")]
        public string ImageUrl { get; set; }

        [JsonProperty("id")]
        public string ID { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }
    }
}