using System.Collections.Generic;
using UnityEngine;

namespace ABI.CCK.Components
{
    [RequireComponent(typeof(Rigidbody))]
    public class CVRMovementDriver : MonoBehaviour
    {
        public List<CVRLeg> Legs = new List<CVRLeg>();
    
        public float MaxForwardSpeed = 10f;
        public float MaxBackwardSpeed = 10f;
        public float MaxSidewaysSpeed = 10f;

        public float timeToTopSpeed = 2f;
        public float timeToZeroSpeed = 1f;
        
        public float steerForce = 100f;
        
        [Header("Input")]
        public float inputAccelerate = 0f;
        public float inputSteering = 0f;
        public float inputStrafe = 0f;
        
        public bool useDefaultCarControls = false;
        
        void Start()
        {
            
        }

        private void Update()
        {
            
        }
    }
}