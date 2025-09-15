#if UNITY_EDITOR
using System;
using UnityEditor;
using UnityEngine;
using static ABI.CCK.Scripts.Editor.SharedComponentGUI;

namespace ABI.CCK.Components
{
    [CustomEditor(typeof(CVRParameterStream))]
    public partial class CCK_CVRParameterStreamEditor : Editor
    {
        #region Editor GUI Foldouts

        private static bool _guiEntriesFoldout = true;
        
        [Flags] // this is a scuffed enum for the update modes field, as we store these as bool...
        private enum TempUpdateModes
        {
            UpdateWhenHeld = 1,
            UpdateWhenAttached = 2,
            UpdateWhenControlled = 4,
            UpdateWhenOwner = 8
        }
        
        #endregion
        
        #region Private Variables

        private CVRParameterStream _stream;
        
        private CVRAvatar _avatar;
        private CVRSpawnable _spawnable;

        #endregion

        #region Serialized Properties

        private SerializedProperty m_OnlyUpdateWhenHeldProp;
        private SerializedProperty m_OnlyUpdateWhenAttachedProp;
        private SerializedProperty m_OnlyUpdateWhenControlledProp;
        private SerializedProperty m_OnlyUpdateWhenOwner;
        
        private SerializedProperty m_ReferenceTypeProp;
        
        private SerializedProperty m_EntriesProp;

        #endregion

        #region Unity Events

        private void OnEnable()
        {
            if (target == null) return;
            _stream = (CVRParameterStream)target;
            
            _avatar = _stream.GetComponentInParent<CVRAvatar>(true);
            _spawnable = _stream.GetComponentInParent<CVRSpawnable>(true);
            
            if (_avatar != null) // determine the reference type
                _stream.referenceType = CVRParameterStream.ReferenceType.Avatar;
            else if (_spawnable != null)
                _stream.referenceType = CVRParameterStream.ReferenceType.Spawnable;
            else
                _stream.referenceType = CVRParameterStream.ReferenceType.World;
            
            m_OnlyUpdateWhenHeldProp = serializedObject.FindProperty(nameof(CVRParameterStream.onlyUpdateWhenHeld));
            m_OnlyUpdateWhenAttachedProp = serializedObject.FindProperty(nameof(CVRParameterStream.onlyUpdateWhenAttached));
            m_OnlyUpdateWhenControlledProp = serializedObject.FindProperty(nameof(CVRParameterStream.onlyUpdateWhenControlled));
            m_OnlyUpdateWhenOwner = serializedObject.FindProperty(nameof(CVRParameterStream.onlyUpdateWhenOwner));
            
            m_ReferenceTypeProp = serializedObject.FindProperty(nameof(CVRParameterStream.referenceType));
            
            m_EntriesProp = serializedObject.FindProperty(nameof(CVRParameterStream.entries));
        }

        public override void OnInspectorGUI()
        {
            if (_stream == null)
                return;

            serializedObject.Update();

            Draw_StreamConfiguration();
            
            serializedObject.ApplyModifiedProperties();
        }

        #endregion

        #region GUI Draw Methods
        
        private void Draw_StreamConfiguration()
        {
            using (new LabelScope("Stream Configuration"))
            {
                using (new EditorGUI.IndentLevelScope())
                    DrawStreamConfiguration();
            }
        }

        private void DrawStreamConfiguration()
        {
            DrawReferenceType();
            
            // Update modes are only available on Spawnable & World streams
            if (m_ReferenceTypeProp.enumValueIndex != (int)CVRParameterStream.ReferenceType.Avatar)
                DrawUpdateModes();
            
            DrawEntries();
        }

        private void DrawReferenceType()
        {
            // draw the reference type on a label
            EditorGUILayout.LabelField(new GUIContent("Stream Type: " +
                                                      m_ReferenceTypeProp.enumDisplayNames[
                                                          m_ReferenceTypeProp.enumValueIndex]));
        }
        
        private void DrawUpdateModes()
        {
            // EditorGUILayout.PropertyField(m_OnlyUpdateWhenHeldProp, new GUIContent("Update when held"));
            // EditorGUILayout.PropertyField(m_OnlyUpdateWhenAttachedProp, new GUIContent("Update when attached"));
            // EditorGUILayout.PropertyField(m_OnlyUpdateWhenControlledProp, new GUIContent("Update when controlled"));
            
            TempUpdateModes tempUpdateModes = 0;
            
            if (m_OnlyUpdateWhenHeldProp.boolValue)
                tempUpdateModes |= TempUpdateModes.UpdateWhenHeld;
            
            if (m_OnlyUpdateWhenAttachedProp.boolValue)
                tempUpdateModes |= TempUpdateModes.UpdateWhenAttached;
            
            if (m_OnlyUpdateWhenControlledProp.boolValue)
                tempUpdateModes |= TempUpdateModes.UpdateWhenControlled;
            
            if (m_OnlyUpdateWhenOwner.boolValue)
                tempUpdateModes |= TempUpdateModes.UpdateWhenOwner;
            
            tempUpdateModes = (TempUpdateModes)EditorGUILayout.EnumFlagsField("Update Mode", tempUpdateModes);
            m_OnlyUpdateWhenHeldProp.boolValue = (tempUpdateModes & TempUpdateModes.UpdateWhenHeld) != 0;
            m_OnlyUpdateWhenAttachedProp.boolValue = (tempUpdateModes & TempUpdateModes.UpdateWhenAttached) != 0;
            m_OnlyUpdateWhenControlledProp.boolValue = (tempUpdateModes & TempUpdateModes.UpdateWhenControlled) != 0;
            m_OnlyUpdateWhenOwner.boolValue = (tempUpdateModes & TempUpdateModes.UpdateWhenOwner) != 0;
        }

        #endregion
    }
}
#endif