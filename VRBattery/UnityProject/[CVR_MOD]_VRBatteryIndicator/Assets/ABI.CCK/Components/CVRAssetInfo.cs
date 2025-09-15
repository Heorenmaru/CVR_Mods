using ABI.CCK.Scripts;
using UnityEngine;

namespace ABI.CCK.Components
{
    [AddComponentMenu("")]
    [DisallowMultipleComponent]
    [HelpURL("https://docs.abinteractive.net/cck/components/asset-info/")]
    public class CVRAssetInfo : MonoBehaviour, ICCK_Component
    {
        public enum AssetType
        {
            Avatar = 1,
            World = 2,
            Spawnable = 3
        }
        
        public AssetType type;
        public string objectId;

        [HideInInspector]
        public string randomNum;
        
        [HideInInspector]
        public string unityVersion;
        
        [HideInInspector]
        public string cckVersion;

        // just to make sure
        private void OnValidate() => Reset();
        private void Reset()
        {
            unityVersion = Application.unityVersion;
            cckVersion = $"{CVRCommon.CCK_VERSION_ASSET_INFO}";
            if (TryGetComponent(out CVRAvatar _))
                type = AssetType.Avatar;
            if (TryGetComponent(out CVRWorld _))
                type = AssetType.World;
            if (TryGetComponent(out CVRSpawnable _))
                type = AssetType.Spawnable;
        }
    }
}
