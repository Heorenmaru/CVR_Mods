namespace ABI.CCK.API
{
    public class ContentInfoResponse
    {
        public string UploadLocation { get; set; }
        public ContentDataIni ContentData { get; set; }

        public class ContentDataIni : GenericINI
        {
            public ContentTypes Type { get; set; }
            public UgcTagsData Tags { get; set; }
        }
    }
}