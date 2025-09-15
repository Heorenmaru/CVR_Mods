using UnityEditor;

namespace ABI.CCK.Components
{
    [CustomEditor(typeof(CVRLeg))]
    public class CCK_CVRLegEditor : Editor
    {
        #region Private Variables
        
        private CVRLeg _cvrLeg;

        #endregion
        
        #region Unity Events
        
        private void OnEnable()
        {
            if (target == null) return;
            _cvrLeg = (CVRLeg) target;
        }
        
        public override void OnInspectorGUI()
        {
            EditorGUILayout.HelpBox("This Component is highly experimental and might change over the coming updates", MessageType.Warning);
            
            base.OnInspectorGUI();
        }
        
        #endregion
    }
}