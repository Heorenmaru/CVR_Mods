using System;
using UnityEditor;
using UnityEngine;

namespace ABI.CCK.Components
{
    [CanEditMultipleObjects]
    [CustomEditor(typeof(GravityZone))]
    public partial class CCK_GravityZoneEditor : Editor
    {
        #region EditorGUI Foldouts

        private static bool _guiAreaConfigurationFoldout = true;
        private static bool _guiGeneralSettingsFoldout = true;
        private static bool _guiGizmoSettingsFoldout;

        #endregion
        
        #region Private Variables

        private GravityZone _gravityZone;

        #endregion
        
        #region Serialized Properties
        
        private SerializedProperty m_ZoneShape;
        private SerializedProperty m_CustomZoneShapeMesh;
        private SerializedProperty m_Center;
        private SerializedProperty m_Size;
        private SerializedProperty m_GravityDirection;
        private SerializedProperty m_GravityMix;
        private SerializedProperty m_Priority;
        private SerializedProperty m_GravityType;
        private SerializedProperty m_Strength;
        private SerializedProperty m_GravityEffect;
        private SerializedProperty m_GravityFalloff;
        private SerializedProperty m_PlayerGravityAlignmentMode;
        private SerializedProperty m_PlayerGravityCustomAlignmentValue;
        
        #endregion
        
        #region Unity Events

        private void OnEnable()
        {
            if (target == null) return;
            _gravityZone = (GravityZone) target;

            m_ZoneShape = serializedObject.FindProperty(nameof(GravityZone.zoneShape));
            m_CustomZoneShapeMesh = serializedObject.FindProperty(nameof(GravityZone.customZoneShapeMesh));
            m_Center = serializedObject.FindProperty(nameof(GravityZone.center));
            m_Size = serializedObject.FindProperty(nameof(GravityZone.size));
            m_GravityDirection = serializedObject.FindProperty(nameof(GravityZone.gravityDirection));
            m_GravityMix = serializedObject.FindProperty(nameof(GravityZone.gravityMix));
            m_Priority = serializedObject.FindProperty(nameof(GravityZone.priority));
            m_GravityType = serializedObject.FindProperty(nameof(GravityZone.gravityType));
            m_Strength = serializedObject.FindProperty(nameof(GravityZone.strength));
            m_GravityEffect = serializedObject.FindProperty(nameof(GravityZone.gravityEffect));
            m_GravityFalloff = serializedObject.FindProperty(nameof(GravityZone.gravityFalloff));
            m_PlayerGravityAlignmentMode = serializedObject.FindProperty(nameof(GravityZone.playerGravityAlignmentMode));
            m_PlayerGravityCustomAlignmentValue = serializedObject.FindProperty(nameof(GravityZone.playerGravityCustomAlignmentValue));
        }
        
        public override void OnInspectorGUI()
        {
            if (_gravityZone == null)
                return;

            serializedObject.Update();
            
            //Draw_CustomModeColliderWarning();
            Draw_ZoneSettings();
            Draw_GeneralSettings();
            
            Draw_GizmoSettings();

            serializedObject.ApplyModifiedProperties();
        }
        
        public void OnSceneGUI()
        {
            if (_gravityZone == null)
                return;
            
            // force scene gizmos to update when inspector is visible
            SceneView.RepaintAll();
        }

        #endregion

        #region Drawing Methods

        private void Draw_CustomModeColliderWarning()
        {
            if ((GravityZone.ZoneShape)m_ZoneShape.intValue != GravityZone.ZoneShape.Custom) 
                return;
            
            MeshCollider collider = _gravityZone.GetComponent<MeshCollider>();
            if (collider == null || !collider.isTrigger || collider.sharedMesh == null)
            {
                EditorGUILayout.HelpBox("When in custom Mode, a MeshCollider setup as Trigger is needed on this GameObject!", MessageType.Error);
            }
        }

        #endregion
        
        #region Gizmos Drawing

        [DrawGizmo(GizmoType.Selected)]
        private static void OnGizmosSelected(GravityZone zone, GizmoType _) => DrawGizmos(zone, true);

        [DrawGizmo(GizmoType.NotInSelectionHierarchy)]
        private static void OnGizmoNotSelected(GravityZone zone, GizmoType _) => DrawGizmos(zone, false);
        
        private static void DrawGizmos(GravityZone zone, bool isSelected)
            => CCK_GravityZoneGizmos.DrawGizmo(zone, isSelected);
        
        #endregion
    }
}