using UnityEngine;

#if UNITY_EDITOR
using UnityEditor;
#endif

namespace ABI.CCK.Components
{
    /// <summary>
    /// Handles shared physics settings for all the components on this object.
    ///
    /// CVRAttachment: Disables gravity, makes kinematic, and disables player collision when attached.
    /// CVRPickupObject: Disables gravity & player collision when picked up.
    /// CVRPhysicsInfluencer: Disables RB gravity as it applies its own.
    ///
    /// CVRObjectSync: Disables gravity & makes kinematic when being synced by a remote player.
    /// CVRSpawnable: Disables gravity & makes kinematic when being spawned by a remote player.
    /// </summary>
    [HelpURL("https://docs.abinteractive.net/")]
    [AddComponentMenu("ChilloutVR/CVR Shared Physics Controller")]
    [DisallowMultipleComponent]
    public class CVRSharedPhysicsController : MonoBehaviour, ICCK_Component
    {
        #region Unity Events

        // ReSharper disable once Unity.RedundantEventFunction
        private void Start()
        {
            // to make enabled toggle display
        }

        #endregion
        
        #region Public API
        
        // ReSharper disable once UnusedMember.Global
        public void SetDefaultUseGravity(bool useGravity)
        {
            
        }

        // ReSharper disable once UnusedMember.Global
        public void SetDefaultIsKinematic(bool isKinematic)
        {

        }

        // ReSharper disable once UnusedMember.Global
        public void SetDefaultPlayerCollisionMode(CollisionWithPlayer collisionMode)
        {

        }
        
        #endregion Public API

        #region Editor GUI
        
        // TODO: THIS IS VERY TEMP GUI BECAUSE I JUST NEED TO KNOW IF THIS SCRIPT MAKES SENSE RN
        // Will bubble it later
#if UNITY_EDITOR
[CustomEditor(typeof(CVRSharedPhysicsController))]
public class CVRSharedPhysicsControllerEditor : Editor
{
    private CVRSharedPhysicsController _controller;
    private bool _showComponentInfo;
    private bool _showAPIInfo;
    private bool _componentsFound;
    private string _foundComponentsList = "";

    private void OnEnable()
    {
        _controller = (CVRSharedPhysicsController)target;
        if (_controller == null) return;

        // TODO: This component should maybe be added automatically alongside supported components
        // but warn if those components are missing (so we don't nuke refs to this one)
        CheckForRelatedComponents();
    }

    private void CheckForRelatedComponents()
    {
        _componentsFound = false;
        _foundComponentsList = "";

        var components = _controller.GetComponents<Component>();
        foreach (Component component in components)
        {
            string typeName = component.GetType().Name;
            if (!typeName.Contains("CVRAttachment") &&
                !typeName.Contains("CVRPickupObject") &&
                !typeName.Contains("PhysicsInfluencer") &&
                !typeName.Contains("CVRObjectSync") &&
                !typeName.Contains("CVRSpawnable")) 
                continue;
            
            if (_foundComponentsList.Length > 0) _foundComponentsList += ", ";
            _foundComponentsList += typeName;
            _componentsFound = true;
        }
    }

    public override void OnInspectorGUI()
    {
        if (_controller == null)
            return;

        serializedObject.Update();

        // Compact summary
        EditorGUILayout.HelpBox(
            "Handles shared physics for attachments, pickups, and remote player syncing.\nChange gravity/kinematic state via this component as the CCK will override the rigidbody settings.",
            MessageType.Info);
        
        // Components detection info for idits
        if (_componentsFound)
        {
            EditorGUILayout.HelpBox(
                "Detected compatible components: " + _foundComponentsList,
                MessageType.Info);
        }
        else
        {
            EditorGUILayout.HelpBox(
                "No supported components found on this object. This component will have no effect until you add one.",
                MessageType.Warning);
        }

        using (new EditorGUILayout.HorizontalScope())
        {
            EditorGUILayout.LabelField("Component Information", EditorStyles.boldLabel);
            if (GUILayout.Button("?", GUILayout.Width(25)))
                _showComponentInfo = !_showComponentInfo;
            GUILayout.Space(5);
        }

        if (_showComponentInfo)
        {
            EditorGUILayout.Space(5);
            // Component explanation fpr nerds
            EditorGUILayout.HelpBox(
                "This component handles shared physics settings for all supported components on this object. This ensures that the correct default UseGravity & IsKinematic states are reapplied once all CCK components are done temporarily overriding them.\n\n" +
                "• CVRAttachment: Disables gravity, makes kinematic, and disables player collision when attached.\n" +
                "• CVRPickupObject: Disables gravity & player collision when picked up.\n" +
                "• PhysicsInfluencer: Disables RB gravity as it applies its own.\n\n" +
                "• CVRObjectSync: Disables gravity & makes kinematic when being synced by a remote player.\n" +
                "• CVRSpawnable: Disables gravity & makes kinematic when being spawned by a remote player.",
                MessageType.Info);
        }

        EditorGUILayout.Space(5);
        
        // Public API methods information cause docs hard
        using (new EditorGUILayout.HorizontalScope())
        {
            EditorGUILayout.LabelField("Public API Methods", EditorStyles.boldLabel);
            if (GUILayout.Button("?", GUILayout.Width(25)))
                _showAPIInfo = !_showAPIInfo;
            GUILayout.Space(5);
        }

        if (_showAPIInfo)
        {
            EditorGUILayout.Space(5);
            EditorGUILayout.HelpBox(
                "This component provides the following methods to control physics behavior:\n\n" +
                "• SetDefaultUseGravity(bool)\n - Sets the default gravity state when not being controlled.\n\n" +
                "• SetDefaultIsKinematic(bool)\n - Sets the default kinematic state when not being controlled.\n\n" +
                "• SetDefaultPlayerCollisionMode(CollisionWithPlayer)\n - Sets how player collision is handled.",
                MessageType.Info);
        }

        serializedObject.ApplyModifiedProperties();
    }
}
#endif

        #endregion Editor GUI
    }
}