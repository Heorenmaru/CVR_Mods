using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace ABI.CCK.Components
{
    [ExecuteInEditMode]
    public class CVRBlitterController : MonoBehaviour
    {
        public List<CVRBlitter> cvrBlitters = new List<CVRBlitter>();

        void Start()
        {
            foreach (var blitter in cvrBlitters)
            {
                if (!blitter)
                    continue;
                
                blitter.SetupBlitterForExternalControl();
            }
        }

        private void OnEnable()
        {
            Camera.onPreRender += MyOnPreRender;
            Start();
        }

        private void OnDestroy()
        {
            OnDisable();
        }

        private void OnDisable()
        {
            Camera.onPreRender -= MyOnPreRender;
        }

        private void MyOnPreRender(Camera cam)
        {
            foreach (var blitter in cvrBlitters)
            {
                if (!blitter)
                    continue;

                blitter.MyOnPreRender(cam);
            }
        }
    }
}