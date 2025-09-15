using UnityEditor;
using UnityEngine;


namespace ABI.CCK.Components
{
    [CanEditMultipleObjects]
    [CustomEditor(typeof(CVRWheelHubController))]
    public class CCK_CVRWheelHubControllerEditor : Editor
    {
        #region Private Variables
        
        private CVRWheelHubController _cvrWheelHubController;

        #endregion
        
        #region Serialized Properties

        private SerializedProperty m_RigidBody;
        private SerializedProperty m_Wheels;
        
        private SerializedProperty m_MotorTorque;
        private SerializedProperty m_BrakeTorque;
        private SerializedProperty m_MaxSpeedForward;
        private SerializedProperty m_MaxSpeedReverse;
        private SerializedProperty m_SteeringRange;
        private SerializedProperty m_SteeringRangeAtMaxSpeed;
        private SerializedProperty m_ReverseForward;
        private SerializedProperty m_TorqueCurve;
        
        private SerializedProperty m_InputAccelerate;
        private SerializedProperty m_InputBrake;
        private SerializedProperty m_InputSteering;
        private SerializedProperty m_UseSkidSteering;
        private SerializedProperty m_LowSkidSteeringSpeed;
        private SerializedProperty m_CounterInputBrake;
        private SerializedProperty m_UseDefaultCarControls;
        private SerializedProperty m_DebugWASDSteering;

        #endregion
        
        #region Unity Events
        
        private void OnEnable()
        {
            if (target == null) return;
            _cvrWheelHubController = (CVRWheelHubController) target;
            
            m_RigidBody = serializedObject.FindProperty(nameof(CVRWheelHubController.rigidBody));
            m_Wheels = serializedObject.FindProperty(nameof(CVRWheelHubController.wheels));
            
            m_MotorTorque = serializedObject.FindProperty(nameof(CVRWheelHubController.motorTorque));
            m_BrakeTorque = serializedObject.FindProperty(nameof(CVRWheelHubController.brakeTorque));
            m_MaxSpeedForward = serializedObject.FindProperty(nameof(CVRWheelHubController.maxSpeedForward));
            m_MaxSpeedReverse = serializedObject.FindProperty(nameof(CVRWheelHubController.maxSpeedReverse));
            m_SteeringRange = serializedObject.FindProperty(nameof(CVRWheelHubController.steeringRange));
            m_SteeringRangeAtMaxSpeed = serializedObject.FindProperty(nameof(CVRWheelHubController.steeringRangeAtMaxSpeed));
            m_ReverseForward = serializedObject.FindProperty(nameof(CVRWheelHubController.reverseForward));
            m_TorqueCurve = serializedObject.FindProperty(nameof(CVRWheelHubController.torqueCurve));
            
            m_InputAccelerate = serializedObject.FindProperty(nameof(CVRWheelHubController.inputAccelerate));
            m_InputBrake = serializedObject.FindProperty(nameof(CVRWheelHubController.inputBrake));
            m_InputSteering = serializedObject.FindProperty(nameof(CVRWheelHubController.inputSteering));
            m_UseSkidSteering = serializedObject.FindProperty(nameof(CVRWheelHubController.useSkidSteering));
            m_LowSkidSteeringSpeed = serializedObject.FindProperty(nameof(CVRWheelHubController.lowSkidSteeringSpeed));
            m_CounterInputBrake = serializedObject.FindProperty(nameof(CVRWheelHubController.counterInputBrake));
            m_UseDefaultCarControls = serializedObject.FindProperty(nameof(CVRWheelHubController.useDefaultCarControls));
            m_DebugWASDSteering = serializedObject.FindProperty(nameof(CVRWheelHubController.debugWASDSteering));
        }
        
        public override void OnInspectorGUI()
        {
            serializedObject.Update();
            
            EditorGUILayout.PropertyField(m_RigidBody);
            if (m_RigidBody.objectReferenceValue == null)
            {
                Rigidbody rig = _cvrWheelHubController.GetComponent<Rigidbody>();
                if (rig == null)
                {
                    EditorGUILayout.HelpBox("No Rigid Body Set", MessageType.Error);
                }
                else
                {
                    EditorGUILayout.HelpBox("No Rigid Body Set, but ones was detected", MessageType.Warning);
                    if (GUILayout.Button("Select Rigidbody"))
                    {
                        m_RigidBody.objectReferenceValue = rig;
                    }
                }
            }
            
            EditorGUILayout.PropertyField(m_Wheels);
            if (m_Wheels.isArray && m_Wheels.arraySize == 0)
            {
                var wheels = _cvrWheelHubController.GetComponentsInChildren(typeof(CVRWheelController), true);
                if (wheels.Length == 0)
                {
                    EditorGUILayout.HelpBox("No Wheels Set!", MessageType.Error);
                }
                else
                {
                    EditorGUILayout.HelpBox("No Wheels Set, but some were detected", MessageType.Warning);
                    if (GUILayout.Button("Select Wheels"))
                    {
                        for (int i = 0; i < wheels.Length; i++)
                        {
                            m_Wheels.InsertArrayElementAtIndex(i);
                            m_Wheels.GetArrayElementAtIndex(i).objectReferenceValue = wheels[i];
                        }
                    }
                }
            }

            EditorGUILayout.PropertyField(m_MotorTorque);
            EditorGUILayout.PropertyField(m_BrakeTorque);
            EditorGUILayout.PropertyField(m_MaxSpeedForward);
            EditorGUILayout.PropertyField(m_MaxSpeedReverse);
            EditorGUILayout.PropertyField(m_SteeringRange);
            EditorGUILayout.PropertyField(m_SteeringRangeAtMaxSpeed);
            EditorGUILayout.PropertyField(m_ReverseForward);
            EditorGUILayout.PropertyField(m_TorqueCurve);
            
            EditorGUILayout.PropertyField(m_InputAccelerate);
            EditorGUILayout.PropertyField(m_InputBrake);
            EditorGUILayout.PropertyField(m_InputSteering);
            EditorGUILayout.HelpBox("The input section can be used to set the inputs for the controller manually, for example with the use of an animator", MessageType.Info);
            EditorGUILayout.PropertyField(m_UseSkidSteering);
            EditorGUILayout.PropertyField(m_LowSkidSteeringSpeed);
            EditorGUILayout.PropertyField(m_CounterInputBrake);
            EditorGUILayout.PropertyField(m_UseDefaultCarControls);
            EditorGUILayout.PropertyField(m_DebugWASDSteering);
            
            serializedObject.ApplyModifiedProperties();
        }
        
        #endregion
    }
}
