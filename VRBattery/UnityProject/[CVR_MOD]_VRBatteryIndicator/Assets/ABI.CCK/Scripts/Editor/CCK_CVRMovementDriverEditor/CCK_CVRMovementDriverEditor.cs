using UnityEditor;

namespace ABI.CCK.Components
{
    [CustomEditor(typeof(CVRMovementDriver))]
    public class CCK_CVRMovementDriverEditor : Editor
    {
        #region Private Variables
        
        private CVRMovementDriver _cvrMovementDriver;

        #endregion
        
        #region Unity Events
        
        private void OnEnable()
        {
            if (target == null) return;
            _cvrMovementDriver = (CVRMovementDriver) target;
        }
        
        public override void OnInspectorGUI()
        {
            EditorGUILayout.HelpBox("This Component is highly experimental and might change over the coming updates", MessageType.Warning);
            
            base.OnInspectorGUI();
        }
        
        #endregion
    }
}