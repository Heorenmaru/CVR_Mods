#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;
using static ABI.CCK.Scripts.Editor.SharedComponentGUI;

namespace ABI.CCK.Components
{
    [CanEditMultipleObjects]
    [CustomEditor(typeof(CVRAttachment))]
    public class CCK_CVRAttachmentEditor : Editor
    {
        #region Editor GUI

        private static bool _guiAttachmentTypesFoldout = true;
        private static bool _guiAttachmentSettingsFoldout = true;
        private static bool _guiOffsetsFoldout = true;
        private static bool _guiEventsFoldout;

        #endregion Editor GUI
        
        #region Private Variables

        private CVRAttachment _attachment;
        
        #endregion Private Variables

        #region Serialized Properties
        
        // Attachment Types
        private SerializedProperty m_AttachmentTypeProp;
        private SerializedProperty m_BoneTypeProp;
        private SerializedProperty m_TrackerTypeProp;
        private SerializedProperty m_SnappingPointTypesProp;
        
        // Attachment Settings
        private SerializedProperty m_MaxAttachmentDistanceProp;
        private SerializedProperty m_CollisionWithPlayerProp;
        
        // Offset Settings
        private SerializedProperty m_NormalizeBoneAttachmentProp;
        private SerializedProperty m_UseFixedPositionOffsetProp;
        private SerializedProperty m_UseFixedRotationOffsetProp;
        private SerializedProperty m_PositionOffsetProp;
        private SerializedProperty m_RotationOffsetProp;
        
        // Events
        private SerializedProperty m_OnAttachProp;
        private SerializedProperty m_OnDeattachProp;
        
        #endregion Serialized Properties
        
        #region Unity Events

        private void OnEnable()
        {
            if (target == null) return;
            _attachment = (CVRAttachment)target;
            
            m_AttachmentTypeProp = serializedObject.FindProperty(nameof(CVRAttachment.attachmentType));
            m_BoneTypeProp = serializedObject.FindProperty(nameof(CVRAttachment.boneType));
            m_TrackerTypeProp = serializedObject.FindProperty(nameof(CVRAttachment.trackerType));
            m_SnappingPointTypesProp = serializedObject.FindProperty(nameof(CVRAttachment.snappingPointTypes));
            m_MaxAttachmentDistanceProp = serializedObject.FindProperty(nameof(CVRAttachment.maxAttachmentDistance));
            m_CollisionWithPlayerProp = serializedObject.FindProperty(nameof(CVRAttachment.collisionWithPlayer));
            
            m_NormalizeBoneAttachmentProp = serializedObject.FindProperty(nameof(CVRAttachment.normalizeBoneAttachment));
            m_UseFixedPositionOffsetProp = serializedObject.FindProperty(nameof(CVRAttachment.useFixedPositionOffset));
            m_UseFixedRotationOffsetProp = serializedObject.FindProperty(nameof(CVRAttachment.useFixedRotationOffset));
            m_PositionOffsetProp = serializedObject.FindProperty(nameof(CVRAttachment.positionOffset));
            m_RotationOffsetProp = serializedObject.FindProperty(nameof(CVRAttachment.rotationOffset));
            
            m_OnAttachProp = serializedObject.FindProperty(nameof(CVRAttachment.onAttach));
            m_OnDeattachProp = serializedObject.FindProperty(nameof(CVRAttachment.onDeattach));
        }
        
        public override void OnInspectorGUI()
        {
            if (_attachment == null)
                return;

            serializedObject.Update();

            using (new SetLabelWidthScope(200))
            {
                Draw_Info();
                Draw_AttachmentTypes();
                Draw_AttachmentSettings();
                Draw_Offsets();
                Draw_Events();
            }
            
            serializedObject.ApplyModifiedProperties();
        }
        
        #endregion

        #region Drawing Methods

        private void Draw_Info()
        {
            EditorGUILayout.HelpBox("For use with Animation Events or Method Calls. Invoke Attach() or DeAttach() on this component to trigger.", MessageType.Info);
        }
        
        private void Draw_AttachmentTypes()
        {
            using (new FoldoutScope(ref _guiAttachmentTypesFoldout, "Attachment Types"))
            {
                if (!_guiAttachmentTypesFoldout) return;
                using (new EditorGUI.IndentLevelScope())
                    DrawAttachmentTypes();
            }
        }

        private void DrawAttachmentTypes()
        {
            GUILayout.BeginVertical();
            
            EditorGUILayout.LabelField("Priority: Snapping Point → Tracker → Avatar Bones", EditorStyles.boldLabel);

            EditorGUILayout.PropertyField(m_AttachmentTypeProp);
            
            // Only show relevant properties based on attachment type
            if ((_attachment.attachmentType & CVRAttachment.AttachmentType.Bone) != 0)
                EditorGUILayout.PropertyField(m_BoneTypeProp);
            
            if ((_attachment.attachmentType & CVRAttachment.AttachmentType.Tracker) != 0)
                EditorGUILayout.PropertyField(m_TrackerTypeProp);
            
            if ((_attachment.attachmentType & CVRAttachment.AttachmentType.SnappingPoint) != 0)
                EditorGUILayout.PropertyField(m_SnappingPointTypesProp);

            GUILayout.EndVertical();
        }

        private void Draw_AttachmentSettings()
        {
            using (new FoldoutScope(ref _guiAttachmentSettingsFoldout, "Attachment Settings"))
            {
                if (!_guiAttachmentSettingsFoldout) return;
                using (new EditorGUI.IndentLevelScope())
                    DrawAttachmentSettings();
            }
        }

        private void DrawAttachmentSettings()
        {
            GUILayout.BeginVertical();

            EditorGUILayout.PropertyField(m_MaxAttachmentDistanceProp);
            EditorGUILayout.PropertyField(m_CollisionWithPlayerProp);

            GUILayout.EndVertical();
        }
        
        private void Draw_Offsets()
        {
            using (new FoldoutScope(ref _guiOffsetsFoldout, "Offset Settings"))
            {
                if (!_guiOffsetsFoldout) return;
                using (new EditorGUI.IndentLevelScope())
                    DrawOffsets();
            }
        }
        
        private void DrawOffsets()
        {
            GUILayout.BeginVertical();

            EditorGUILayout.PropertyField(m_NormalizeBoneAttachmentProp);
            EditorGUILayout.PropertyField(m_UseFixedPositionOffsetProp);
            EditorGUILayout.PropertyField(m_UseFixedRotationOffsetProp);
            
            if (_attachment.useFixedPositionOffset)
                EditorGUILayout.PropertyField(m_PositionOffsetProp);
            
            if (_attachment.useFixedRotationOffset)
                EditorGUILayout.PropertyField(m_RotationOffsetProp);

            GUILayout.EndVertical();
        }
        
        private void Draw_Events()
        {
            using (new FoldoutScope(ref _guiEventsFoldout, "Events"))
            {
                if (!_guiEventsFoldout) return;
                using (new EditorGUI.IndentLevelScope())
                    DrawEvents();
            }
        }
        
        private void DrawEvents()
        {
            GUILayout.BeginVertical();

            EditorGUILayout.PropertyField(m_OnAttachProp);
            EditorGUILayout.PropertyField(m_OnDeattachProp);

            GUILayout.EndVertical();
        }

        #endregion
    }
}
#endif