using UnityEngine;

namespace ABI.CCK.Components
{
    /// <summary>
    /// This is a Lua script that runs entirely on your side of the connection (client-side).
    /// </summary>
    [AddComponentMenu("ChilloutVR/CVR Lua ClientBehaviour")]
    [HelpURL("https://docs.abinteractive.net/cck/lua/hello-world/")]
    public class CVRLuaClientBehaviour : CVRBaseLuaBehaviour, IStateMachineCallbackReceiver
    {
    }
}