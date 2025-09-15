using System;
using System.Collections.Generic;
using System.Net;
using System.Threading.Tasks;
using JetBrains.Annotations;
using Abi.Newtonsoft.Json;

namespace ABI.CCK.API
{
    public enum ContentTypes
    {
        Avatar,
        World,
        Spawnable,
        Invalid
    }
    
    [PublicAPI]
    [Serializable]
    public abstract class ICVRContent
    {
        public static readonly Dictionary<string, string> PlatformToReadable = new()
        {
            {"Pc_Standalone", "PC"},
            {"Android_Standalone", "Android"},
        };
        
        #region Content Response

        public bool DoesContentExist { get; set; } // if content exists
        public bool IsContentMine { get; set; }    // if content is owned by user

        #endregion Content Response

        #region Content Definition

        public abstract ContentTypes ContentType { get; }
        public abstract string ContentTypeString { get; }

        #endregion Content Definition

        #region Content Info
        
        public List<string> Platforms { get; set; }
        public bool IsPublic { get; set; }
        public string Description { get; set; }
        public string ImageUrlString { get; set; }
        public string ID { get; set; }
        public string Name { get; set; }
        public UgcTagsData ContentTags { get; set; }

        [JsonIgnore]
        public Uri ImageUrl => string.IsNullOrEmpty(ImageUrlString) ? null : new Uri(ImageUrlString);
        
        [JsonIgnore]
        public List<string> PlatformReadable => Platforms.ConvertAll(platform => PlatformToReadable[platform]);

        #endregion Content Info

        #region Url Getters

        /// Returns the URL to open the content in the hub
        public string HubUrl
        {
            get
            {
                // spawnable is a special case where details path is not type
                string contentType = ContentType == ContentTypes.Spawnable ? "prop" : ContentTypeString;
                return $"https://hub.abinteractive.net/my{contentType}s/edit?id={ID}";
            }
        }

        /// Returns the URL to open the content in the client
        public string ClientUrl
        {
            get
            {
                // spawnable is a special case where details path is not type
                string contentType = ContentType == ContentTypes.Spawnable ? "prop" : ContentTypeString;
                return $"chilloutvr://details/{contentType}?id={ID}";
            }
        }

        #endregion Url Getters

        #region Static Methods
        
        public static void ClearContentInfoRequestFromCache<T>(string contentId) where T : ICVRContent, new()
        {
            string type = new T().ContentTypeString;
            string cacheKey = $"cck/contentInfo/{type}/{contentId}?platform=pc_standalone";
            ApiConnection.RemoveFromCache(cacheKey);
        }
        
        /// <summary>
        /// Fetches content info from the API and returns it as a content object.
        /// </summary>
        /// <param name="contentId">The ID of the content to fetch.</param>
        /// <typeparam name="T">The type of content to fetch.</typeparam>
        /// <returns>The content object with the fetched data.</returns>
        /// <exception cref="ArgumentException">Thrown when the content ID is null or empty.</exception>
        /// <exception cref="ContentNotFoundException">Thrown when the content is not found.</exception>
        /// <exception cref="ContentNotOwnedException">Thrown when the content is not owned by the user.</exception>
        public static async Task<T> GetContentInfo<T>(string contentId) where T : ICVRContent, new()
        {
            if (string.IsNullOrEmpty(contentId))
                throw new ArgumentException("Content ID cannot be null or empty.", nameof(contentId));

            T contentInstance = new();
            
            string type = contentInstance.ContentTypeString;
            string requestUrl = $"cck/contentInfo/{type}/{contentId}?platform=pc_standalone";
            
            var task = Task.Run(() => ApiConnection.MakeRequest<ContentInfoResponse>(requestUrl));
            while (!task.IsCompleted) await Task.Yield();

            var response = task.Result;

            //Debug.Log($"Response Status: {response.Status}");
            //Debug.Log($"Response Type: {response.Type}");

            switch (response)
            {
                case { Status: HttpStatusCode.NotFound }:
                    throw new ContentNotFoundException(contentId);
                case { Status: HttpStatusCode.Forbidden }:
                    throw new ContentNotOwnedException(contentId);
                // case { Data: null }: // TODO: check if this is correct
                //     throw new ContentNotFoundException(contentId);
            }

             if (response is not { Data: not null }) 
                 return default;

            contentInstance.DoesContentExist = true;
            contentInstance.IsContentMine = true;

            contentInstance.ID = response.Data.ContentData.Id;
            
            contentInstance.Name = string.IsNullOrEmpty(response.Data.ContentData.Name) 
                ? "No Name" : response.Data.ContentData.Name;
            contentInstance.Description = string.IsNullOrEmpty(response.Data.ContentData.Description) 
                ? "No Description" : response.Data.ContentData.Description;

            contentInstance.ImageUrlString = response.Data.ContentData.Image.ToString();
            contentInstance.ContentTags = response.Data.ContentData.Tags;

            return contentInstance;
        }
        
        /// <summary>
        /// Fetches all content of a specific type from the API.
        /// This method populates more info than GetContentInfo, like Publication status and Platforms. :)
        /// </summary>
        /// <param name="page"></param>
        /// <param name="sortAscending"></param>
        /// <param name="order"></param>
        /// <typeparam name="T"></typeparam>
        /// <returns>(TotalPages, List of Content)</returns>
        public static async Task<(int, List<T>)> GetAllMyContent<T>(
            int page = 0, 
            bool sortAscending = false, 
            string order = "Default") where T : ICVRContent, new()
        {
            //Debug.Log($"Getting all my content of type {typeof(T).Name}...");
            
            T contentInstance = new();
            string contentTypeString = contentInstance.ContentTypeString.ToLower();
            string requestUrl = $"cck/my/{contentTypeString}s?page={page}&sortAscending={sortAscending}&order={order}&platform=pc_standalone";
    
            var task = Task.Run(() => ApiConnection.MakeRequest<MyContentResponse>(requestUrl));
            while (!task.IsCompleted) await Task.Yield();

            var response = task.Result;
            
            var contentList = new List<T>();
            if (response is not { Data: { Entries: not null } }) 
                return (response.Data.TotalPages, contentList);
            
            foreach (MyContentData entry in response.Data.Entries)
            {
                T content = new()
                {
                    DoesContentExist = true,
                    IsContentMine = true,
                    ID = entry.ID,
                    Name = entry.Name,
                    Description = entry.Description,
                    ImageUrlString = entry.ImageUrl,
                    Platforms = entry.Platforms,
                    IsPublic = entry.IsPublic
                };
                contentList.Add(content);
            }

            return (response.Data.TotalPages, contentList);
        }

        #endregion Static Methods
    }
}