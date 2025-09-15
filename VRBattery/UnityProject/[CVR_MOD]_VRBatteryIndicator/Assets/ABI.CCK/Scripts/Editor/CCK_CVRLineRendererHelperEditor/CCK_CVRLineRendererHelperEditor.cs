using UnityEditor;

namespace ABI.CCK.Components
{
    [CustomEditor(typeof(CVRLineRendererHelper))]
    public class CCK_CVRLineRendererHelperEditor : Editor
    {
        #region Private Variables
        
        private CVRLineRendererHelper _cvrLineRendererHelper;

        #endregion
        
        #region Unity Events
        
        private void OnEnable()
        {
            if (target == null) return;
            _cvrLineRendererHelper = (CVRLineRendererHelper) target;
        }
        
        public override void OnInspectorGUI()
        {
            EditorGUILayout.HelpBox("This Component is highly experimental and might change over the coming updates", MessageType.Warning);
            
            base.OnInspectorGUI();
        }
        
        #endregion
    }
}