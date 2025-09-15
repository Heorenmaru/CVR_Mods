#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;
using static ABI.CCK.Scripts.Editor.SharedComponentGUI;

namespace ABI.CCK.Components
{
    [CanEditMultipleObjects]
    [CustomEditor(typeof(CVRPickupObject))]
    public class CCK_CVRPickupObject : Editor
    {
        #region Editor GUI

        private static bool _guiPickupRulesFoldout = true;
        private static bool _guiPickupGripSnapFoldout = true;
        private static bool _guiPickupPhysicsFoldout = true;

        #endregion Editor GUI
        
        #region Private Variables

        private CVRPickupObject _pickup;
        
        #endregion Private Variables

        #region Serialized Properties
        
        // Pickup Rules
        private SerializedProperty m_AutoHoldProp;
        private SerializedProperty m_DisallowTheftProp;
        private SerializedProperty m_DisableObjectPushPullProp;
        private SerializedProperty m_MaximumGrabDistanceProp;
        
        // Pickup Grip & Snap
        private SerializedProperty m_GripTypeProp;
        private SerializedProperty m_GripOriginProp;
        private SerializedProperty m_SnappingReferencesProp;
        private SerializedProperty m_IKReferenceProp;
        
        // Pickup Physics
        private SerializedProperty m_MoveModeProp;
        private SerializedProperty m_CollisionWithPlayerProp;
        private SerializedProperty m_ThrowForceMultiplierProp;
        private SerializedProperty m_ThrowForceMinVelocityProp;
        
        #endregion Serialized Properties
        
        #region Unity Events

        private void OnEnable()
        {
            if (target == null) return;
            _pickup = (CVRPickupObject)target;
            
            m_AutoHoldProp = serializedObject.FindProperty(nameof(CVRPickupObject.autoHold));
            m_DisallowTheftProp = serializedObject.FindProperty(nameof(CVRPickupObject.disallowTheft));
            m_MaximumGrabDistanceProp = serializedObject.FindProperty(nameof(CVRPickupObject.maximumGrabDistance));
            m_DisableObjectPushPullProp = serializedObject.FindProperty(nameof(CVRPickupObject.disableObjectPushPull));
            m_GripTypeProp = serializedObject.FindProperty(nameof(CVRPickupObject.gripType));
            m_GripOriginProp = serializedObject.FindProperty(nameof(CVRPickupObject.gripOrigin));
            m_SnappingReferencesProp = serializedObject.FindProperty(nameof(CVRPickupObject.snappingReferences));
            m_MoveModeProp = serializedObject.FindProperty(nameof(CVRPickupObject.moveMode));
            m_CollisionWithPlayerProp = serializedObject.FindProperty(nameof(CVRPickupObject.collisionWithPlayer));
            m_ThrowForceMultiplierProp = serializedObject.FindProperty(nameof(CVRPickupObject.throwForceMultiplier));
            m_ThrowForceMinVelocityProp = serializedObject.FindProperty(nameof(CVRPickupObject.throwForceMinVelocity));
            m_IKReferenceProp = serializedObject.FindProperty(nameof(CVRPickupObject.ikReference));
        }
        
        public override void OnInspectorGUI()
        {
            if (_pickup == null)
                return;

            serializedObject.Update();
            
            using (new SetLabelWidthScope(200))
            {
                Draw_PickupRules();
                Draw_PickupGripSnap();
                Draw_PickupPhysics();
            }

            serializedObject.ApplyModifiedProperties();
        }
        
        #endregion

        #region Drawing Methods
        
        private void Draw_PickupRules()
        {
            using (new FoldoutScope(ref _guiPickupRulesFoldout, "Rules"))
            {
                if (!_guiPickupRulesFoldout) return;
                using (new EditorGUI.IndentLevelScope())
                    DrawPickupRules();
            }
        }

        private void DrawPickupRules()
        {
            GUILayout.BeginVertical();

            EditorGUILayout.PropertyField(m_AutoHoldProp);
            EditorGUILayout.PropertyField(m_DisallowTheftProp);
            EditorGUILayout.PropertyField(m_DisableObjectPushPullProp);
            EditorGUILayout.PropertyField(m_MaximumGrabDistanceProp);

            GUILayout.EndVertical();
        }
        
        private void Draw_PickupGripSnap()
        {
            using (new FoldoutScope(ref _guiPickupGripSnapFoldout, "Grip & Snap"))
            {
                if (!_guiPickupGripSnapFoldout) return;
                using (new EditorGUI.IndentLevelScope())
                    DrawPickupGripSnap();
            }
        }
        
        private void DrawPickupGripSnap()
        {
            GUILayout.BeginVertical();

            EditorGUILayout.PropertyField(m_GripTypeProp);
            
            // Only show grip origin if grip type is set to Origin
            if (_pickup.gripType == CVRPickupObject.GripType.Origin) 
                EditorGUILayout.PropertyField(m_GripOriginProp);
            
            EditorGUILayout.PropertyField(m_SnappingReferencesProp);
            EditorGUILayout.PropertyField(m_IKReferenceProp);

            GUILayout.EndVertical();
        }
        
        private void Draw_PickupPhysics()
        {
            using (new FoldoutScope(ref _guiPickupPhysicsFoldout, "Physics"))
            {
                if (!_guiPickupPhysicsFoldout) return;
                using (new EditorGUI.IndentLevelScope())
                    DrawPickupPhysics();
            }
        }
        
        private void DrawPickupPhysics()
        {
            GUILayout.BeginVertical();

            EditorGUILayout.PropertyField(m_MoveModeProp);
            EditorGUILayout.PropertyField(m_CollisionWithPlayerProp);
            EditorGUILayout.PropertyField(m_ThrowForceMultiplierProp);
            EditorGUILayout.PropertyField(m_ThrowForceMinVelocityProp);

            GUILayout.EndVertical();
        }

        #endregion
    }
}
#endif