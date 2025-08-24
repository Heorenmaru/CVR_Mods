using System.IO;
using UnityEngine;
using Object = UnityEngine.Object;

namespace VRBattery
{
    internal class AssetLoader
    {
        public static AssetBundle Load()
        {
            {
                // Путь до AssetBundle
                string bundlePath = Path.Combine(Application.dataPath, "../UserLibs/vrbatteryindicator");
                AssetBundle bundle = AssetBundle.LoadFromFile(bundlePath);

                // using var assetStream = System.Reflection.Assembly.GetExecutingAssembly().GetManifestResourceStream("GestureIndicator.Assets.gestureindicator");
                // using var tempStream = new MemoryStream((int)assetStream.Length);
                // assetStream.CopyTo(tempStream);

                // AssetBundle assetBundle = AssetBundle.LoadFromMemory(tempStream.ToArray());



                // template = (GameObject)assetBundle.LoadAsset("assets/mods/gestureindicator/gestureindicator.prefab");
                // template.hideFlags |= HideFlags.DontUnloadUnusedAsset;
                return bundle;
            }


        }


    }
}
