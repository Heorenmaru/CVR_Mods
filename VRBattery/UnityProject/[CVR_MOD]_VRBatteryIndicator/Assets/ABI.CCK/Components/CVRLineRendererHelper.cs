using System.Collections.Generic;
using UnityEngine;

namespace ABI.CCK.Components
{
    public class CVRLineRendererHelper : MonoBehaviour
    {
        public LineRenderer lineRenderer;
        public List<Transform> points;

        private int i = 0;
        
        private void Start()
        {
            if (lineRenderer == null) return;

            lineRenderer.positionCount = points.Count;
        }
        
        private void LateUpdate()
        {
            if (lineRenderer == null) return;

            i = 0;
            
            foreach (var point in points)
            {
                if (point == null) continue;
                
                if (lineRenderer.useWorldSpace)
                    lineRenderer.SetPosition(i, point.position);
                else
                    lineRenderer.SetPosition(i, lineRenderer.transform.InverseTransformPoint(point.position));

                i++;
            }
        }
    }
}