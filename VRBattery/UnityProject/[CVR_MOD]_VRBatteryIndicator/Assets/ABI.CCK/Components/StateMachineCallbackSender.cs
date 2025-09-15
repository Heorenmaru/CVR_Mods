using JetBrains.Annotations;
using UnityEngine;
using UnityEngine.Events;

#if UNITY_EDITOR
using UnityEditor;
using UnityEditor.Animations;
#endif

namespace ABI.CCK.Components
{
    public class StateMachineCallbackSender : StateMachineBehaviour
    {
        #region UnityEvents

        [PublicAPI] public static readonly UnityEvent<Animator, StateMachineCallbackSender> OnInitialized = new();
        [PublicAPI] public static readonly UnityEvent<Animator, StateMachineCallbackSender> OnExecuteEnterTask = new();
        [PublicAPI] public static readonly UnityEvent<Animator, StateMachineCallbackSender> OnExecuteExitTask = new();

        #endregion
        
        public bool localOnly = true;
        public string receiverPath = string.Empty;
        private IStateMachineCallbackReceiver _receiver;
        
        private bool _initialized;
        private bool _failedToFindReceiver;

        #region Unity Events
        
        public override void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
        {
            if (_failedToFindReceiver) return;
            if (!_initialized && !Initialize(animator)) return;
            OnExecuteEnterTask.Invoke(animator, this);
        }

        public override void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
        {
            if (_failedToFindReceiver) return;
            if (!_initialized && !Initialize(animator)) return;
            OnExecuteExitTask.Invoke(animator, this);
        }
        
        #endregion Unity Events
        
        #region Private Methods
        
        private bool Initialize(Animator animator)
        {
            _initialized = true;
            _receiver = animator.transform.Find(receiverPath)?.GetComponent<IStateMachineCallbackReceiver>();
            if (_receiver == null)
            {
                _failedToFindReceiver = true;
                return false;
            }
            OnInitialized.Invoke(animator, this);
            return true;
        }
        
        #endregion Private Methods

#if UNITY_EDITOR
[CustomEditor(typeof(StateMachineCallbackSender))]
public class StateMachineCallbackSenderEditor : Editor
{
    private StateMachineCallbackSender _sender;

    private bool _showLocalOnlyHelp;
    private bool _showReceiverPathHelp;

    private Animator _likelyAnimator;
    private IStateMachineCallbackReceiver _foundReceiver;

    private SerializedProperty _localOnly;
    private SerializedProperty _receiverPath;

    private void OnEnable()
    {
        _sender = (StateMachineCallbackSender)target;
        if (_sender == null)
            return;

        _localOnly = serializedObject.FindProperty(nameof(StateMachineCallbackSender.localOnly));
        _receiverPath = serializedObject.FindProperty(nameof(StateMachineCallbackSender.receiverPath));

        var behaviorContext = AnimatorController.FindStateMachineBehaviourContext(_sender);
        if (behaviorContext.Length <= 0 || behaviorContext[0].animatorController == null) return;
        foreach (Animator animator in FindObjectsOfType<Animator>())
        {
            if (animator.runtimeAnimatorController != behaviorContext[0].animatorController) continue;
            _likelyAnimator = animator;
            _foundReceiver = animator.transform.Find(_sender.receiverPath)?.GetComponent<IStateMachineCallbackReceiver>();
            break;
        }
    }

    public override void OnInspectorGUI()
    {
        if (_sender == null)
            return;

        serializedObject.Update();

        using (new EditorGUILayout.VerticalScope(new GUIStyle() { padding = new RectOffset(10, 10, 10, 10) }))
        {
            EditorGUILayout.HelpBox(
                "This behaviour will send the following state machine callbacks to the target receiver: OnStateMachineEnter, OnStateMachineExit",
                MessageType.Info);

            DrawLocalOnlyToggle();
            EditorGUILayout.Space();
            DrawRelativePathField();
        }

        serializedObject.ApplyModifiedProperties();
    }

    private void DrawLocalOnlyToggle()
    {
        using (new EditorGUILayout.HorizontalScope())
        {
            EditorGUILayout.PropertyField(_localOnly);
            if (GUILayout.Button("?", GUILayout.Width(25)))
                _showLocalOnlyHelp = !_showLocalOnlyHelp;
            GUILayout.Space(5);
        }
        if (_showLocalOnlyHelp)
        {
            EditorGUILayout.HelpBox("When 'Local Only' is enabled, the callback sender is executed locally and not for remote users.", MessageType.Info);
            EditorGUILayout.Space(5);
            EditorGUILayout.HelpBox("Avatars: Only the wearer.\nSpawnables: Only the prop's owner.\nWorlds: This option is ignored.", MessageType.Info);
        }
    }
    
    private void DrawRelativePathField()
    {
        using (new EditorGUILayout.HorizontalScope())
        {
            EditorGUILayout.PropertyField(_receiverPath);
            if (GUILayout.Button("?", GUILayout.Width(25)))
                _showReceiverPathHelp = !_showReceiverPathHelp;
            GUILayout.Space(5);
        }

        if (_showReceiverPathHelp)
        {
            EditorGUILayout.HelpBox("The 'Receiver Path' specifies the relative path to the object that implements IStateMachineCallbackReceiver from the Animator.", MessageType.Info);
            EditorGUILayout.Space(5);
            EditorGUILayout.HelpBox("You can drag and drop the receiver object into the field to automatically set the relative path.", MessageType.Info);
        }
        
        Component receiver = (Component)EditorGUILayout.ObjectField((Component)_foundReceiver, typeof(IStateMachineCallbackReceiver), true);
        if (receiver is IStateMachineCallbackReceiver foundReceiver)
        {
            _foundReceiver = foundReceiver;
            _likelyAnimator = receiver.GetComponentInParent<Animator>();
            if (_likelyAnimator != null) _receiverPath.stringValue = AnimationUtility.CalculateTransformPath(receiver.transform, _likelyAnimator.transform);
        }
        
        if (_likelyAnimator == null)
            EditorGUILayout.HelpBox("No Animator found in the scene that uses the same controller as this behaviour. This is normal! You can still drag-and-drop onto the above field to automatically set the relative path.", MessageType.Info);
    }
}
#endif
    }
}