using System;
using ABI.CCK.Components.ScriptableObjects;
using UnityEngine;
using UnityEngine.Animations;

namespace ABI.CCK.Components
{
    /// <summary>
    /// Common things that both CVRLuaClientBehaviour, and CVRLuaServerBehaviour use.
    /// 
    /// ********************************
    /// * Do not use if you're a user. *
    /// ********************************
    /// 
    /// Use CVRLuaClientBehaviour if you're making a client-side script.
    ///  - or -
    /// Use CVRLuaServerBehaviour if you're making a server-side script.
    /// </summary>
    public abstract class CVRBaseLuaBehaviour : MonoBehaviour
    {
        public string ScriptName => asset == null ? string.Empty : asset.name;
        public string ScriptText => asset == null ? string.Empty : asset.m_ScriptText;
        public string ScriptPath => asset == null ? string.Empty : asset.m_ScriptPath;

        /// <summary>
        /// Whether a script is only supposed to run locally or not.
        /// Avatars: The script only runs on the avatar's wearer client
        /// Props: The script only runs on prop spawner's client
        /// World: Ignores this setting for now
        /// </summary>
        [SerializeField] [NotKeyable]
        public bool localOnly = true;

        /// <summary>
        /// The actual text-asset that we get the content of the script from.
        /// </summary>
        public CVRLuaScript asset;

        /// <summary>
        /// A thing in the scene we want to link to this script.
        /// </summary>
        [Serializable]
        public struct BoundObject
        {
            public string name;
            public UnityEngine.Object boundThing;
        }

        /// <summary>
        /// A list of things in the scene we want to link to this script.   
        /// </summary>
        public BoundObject[] boundObjects;
    }
}