namespace ABI.CCK.API
{
    public class ContentNotFoundException : CVRApiException
    {
        public ContentNotFoundException(string contentId) 
            : base($"Content with ID {contentId} was not found.") { }
    }
}