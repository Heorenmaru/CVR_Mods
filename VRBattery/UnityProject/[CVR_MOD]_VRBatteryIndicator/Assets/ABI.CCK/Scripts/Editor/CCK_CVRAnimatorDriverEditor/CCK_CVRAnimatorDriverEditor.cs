#if UNITY_EDITOR
using System.Collections.Generic;
using UnityEditor;

namespace ABI.CCK.Components
{
    [CanEditMultipleObjects]
    [CustomEditor(typeof(CVRAnimatorDriver))]
    public partial class CCK_CVRAnimatorDriverEditor : Editor
    {
        #region Private Variables

        private CVRAnimatorDriver _driver;

        #endregion

        #region Serialized Properties
        
        private readonly List<SerializedProperty> m_ParameterValuesPropList = new();
        private SerializedProperty m_AnimatorsProp;
        private SerializedProperty m_AnimatorParametersProp;
        private SerializedProperty m_AnimatorParameterTypeProp;
        
        #endregion

        #region Unity Events

        private void OnEnable()
        {
            if (target == null) return;
            _driver = (CVRAnimatorDriver)target;
            
            for (int i = 0; i < 16; i++)
                m_ParameterValuesPropList.Add(serializedObject.FindProperty(
                    i < 9 ? $"animatorParameter0{i + 1}" : $"animatorParameter1{i - 9}"
                ));
            
            m_AnimatorsProp = serializedObject.FindProperty(nameof(CVRAnimatorDriver.animators));
            m_AnimatorParametersProp = serializedObject.FindProperty(nameof(CVRAnimatorDriver.animatorParameters));
            m_AnimatorParameterTypeProp = serializedObject.FindProperty(nameof(CVRAnimatorDriver.animatorParameterType));
        }

        public override void OnInspectorGUI()
        {
            if (_driver == null)
                return;

            serializedObject.Update();

            DrawEntries();
            
            serializedObject.ApplyModifiedProperties();
        }
        
        #endregion
    }
}
#endif