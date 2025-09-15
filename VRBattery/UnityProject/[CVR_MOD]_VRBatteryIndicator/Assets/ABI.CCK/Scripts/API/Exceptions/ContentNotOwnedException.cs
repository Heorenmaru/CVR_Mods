namespace ABI.CCK.API
{
    public class ContentNotOwnedException : CVRApiException
    {
        public ContentNotOwnedException(string contentId) 
            : base($"You do not have permission to access content with ID {contentId}.") { }
    }
}