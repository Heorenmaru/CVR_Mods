using UnityEditor;
using UnityEngine;


namespace ABI.CCK.Components
{
    [CanEditMultipleObjects]
    [CustomEditor(typeof(CVRWheelController))]
    public class CCK_CVRWheelControllerEditor : Editor
    {
        #region Private Variables
        
        private CVRWheelController _cvrWheelController;

        #endregion
        
        #region Unity Events
        
        private void OnEnable()
        {
            if (target == null) return;
            _cvrWheelController = (CVRWheelController) target;
        }
        
        public override void OnInspectorGUI()
        {
            base.OnInspectorGUI();

            if (_cvrWheelController.viewModel == _cvrWheelController.transform)
            {
                EditorGUILayout.HelpBox("Setting the viewmodel to the transform of the WheelCollider will lead to issues!", MessageType.Error);
            }
            
            if (_cvrWheelController.axle == _cvrWheelController.transform)
            {
                EditorGUILayout.HelpBox("Setting the axle to the transform of the WheelCollider will lead to issues!", MessageType.Error);
            }
            
            if (_cvrWheelController.contactPoint == _cvrWheelController.transform)
            {
                EditorGUILayout.HelpBox("Setting the contact point to the transform of the WheelCollider will lead to issues!", MessageType.Error);
            }
        }
        
        #endregion
    }
}
