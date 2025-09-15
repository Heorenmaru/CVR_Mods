#if UNITY_EDITOR
using ABI.CCK.Scripts;
using UnityEditor;
using UnityEngine;
using AnimatorController = UnityEditor.Animations.AnimatorController;

namespace ABI.CCK.Components
{
    public partial class CCK_CVRAvatarEditor
    {
        // store so we can also know when an undo/redo happened
        private RuntimeAnimatorController _lastBaseController;
        private RuntimeAnimatorController _lastOverrideController;

        private void DrawAutogenControllerFields()
        {
            RuntimeAnimatorController tempBaseController = EditorGUILayout.ObjectField(
                "Base Controller",
                m_baseControllerProp.objectReferenceValue, 
                typeof(RuntimeAnimatorController), 
                false) as RuntimeAnimatorController;

            if (tempBaseController is not AnimatorOverrideController 
                && tempBaseController != m_baseControllerProp.objectReferenceValue)
                m_baseControllerProp.objectReferenceValue = tempBaseController;

            EditorGUILayout.HelpBox(
                "This is the Base Controller that is extended for the creation of your Advanced Avatar Settings. " +
                "If you do not want to extend a specific Animator Controller, make sure that the Default Avatar Animator " +
                "From the Directory 'ABI.CCK/Animations' is used here.", MessageType.Info);

            RuntimeAnimatorController tempOverrideController = EditorGUILayout.ObjectField(
                "Override Controller",
                m_baseOverrideControllerProp.objectReferenceValue, 
                typeof(RuntimeAnimatorController), 
                false) as RuntimeAnimatorController;

            if (tempOverrideController is not AnimatorController
                && tempOverrideController != m_baseOverrideControllerProp.objectReferenceValue)
                m_baseOverrideControllerProp.objectReferenceValue = tempOverrideController;

            EditorGUILayout.HelpBox(
                "You can put your previous Override Controller here in order to put your overrides in " +
                "the newly created Override Controller.", MessageType.Info);

            if (_lastBaseController == m_baseControllerProp.objectReferenceValue
                && _lastOverrideController == m_baseOverrideControllerProp.objectReferenceValue) 
                return;
            
            // change detected (undo/redo, inspector change, etc.)
            _lastBaseController = m_baseControllerProp.objectReferenceValue as RuntimeAnimatorController;
            _lastOverrideController = m_baseOverrideControllerProp.objectReferenceValue as RuntimeAnimatorController;
            
            serializedObject.ApplyModifiedProperties(); // update backing fields
            UpdateSyncUsageAndBaseParameters(); // update the sync usage and base parameters
        }
        
        private void DrawCreateControllerButton()
        {
            if (_syncedBitsTuple.Item2 <= CVRCommon.AVATAR_BIT_LIMIT)
            {
                if (GUILayout.Button("Create Controller"))
                    CreateAASController();
            }
            else
            {
                using (new EditorGUI.DisabledScope(true))
                    GUILayout.Button("Create Controller");
                EditorGUILayout.HelpBox(
                    "Cannot create controller. You are over the Synced Bit Limit!", MessageType.Warning);
                GUILayout.Space(5);
            }

            if (_avatar.avatarSettings.overrides == null ||
                _avatar.avatarSettings.overrides == _avatar.overrides) return;
            
            if (GUILayout.Button("Attach created Override to Avatar"))
                m_OverridesProp.objectReferenceValue = _avatar.avatarSettings.overrides;
        }
    }
}
#endif