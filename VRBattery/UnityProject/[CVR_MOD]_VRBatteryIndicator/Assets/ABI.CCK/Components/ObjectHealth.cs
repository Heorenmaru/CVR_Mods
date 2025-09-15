using System;
using ABI.CCK.Scripts;
using UnityEngine;
using UnityEngine.Events;

namespace ABI.CCK.Components
{
    [AddComponentMenu("ChilloutVR/Object Health")]
    [HelpURL("https://docs.abinteractive.net/cck/")]
    public class ObjectHealth : Health, ICCK_Component
    {
        public enum DownBehavior
        {
            Destroy = 0,
            RespawnAfterTime = 1,
            RespawnOnRoundStart = 2,
            RespawnOnRoundEnd = 3,
            RespawnOnGameStart = 4,
            RespawnOnGameEnd = 5,
            Manual = 6
        }
        [Header("Down Behavior")]
        public DownBehavior downBehavior = DownBehavior.Destroy;
        public float respawnTime = 10f;
        public Transform respawnPoint;
        public GameInstanceController connectedGameInstance;
        
        [Header("Events")]
        public UnityEvent downEvent = new UnityEvent();
        public UnityEvent respawnEvent = new UnityEvent();
        //public new UnityEvent damageReceivedEvent = new UnityEvent();

        private void Reset()
        {
            referenceID = Guid.NewGuid().ToString();
        }
        
        public void Respawn(){}
    }
}