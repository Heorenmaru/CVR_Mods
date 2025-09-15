using JetBrains.Annotations;

namespace ABI.CCK.API
{
    [PublicAPI]
    public struct UgcTagsData
    {
        public bool Gore;
        public bool Horror;
        public bool Jumpscare;
        public bool Nudity;
        public bool Suggestive;
        public bool Violence;
        public bool ContainsMusic;
        public bool ExtremelyBright;
        public bool ExtremelyHuge;
        public bool ExtremelySmall;
        public bool FlashingColors;
        public bool FlashingLights;
        public bool LoudAudio;
        public bool ParticleSystems;
        public bool ScreenEffects;
        public bool SpawnAudio;
        public bool LongRangeAudio;
    }
}