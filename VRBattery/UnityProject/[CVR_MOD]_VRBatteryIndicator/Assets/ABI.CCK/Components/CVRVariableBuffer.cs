using UnityEngine;

#pragma warning disable

namespace ABI.CCK.Components
{
    [AddComponentMenu("ChilloutVR/CVR Variable Buffer")]
    [HelpURL("https://docs.abinteractive.net/cck/components/variable-buffer/")]
    public class CVRVariableBuffer : MonoBehaviour, ICCK_Component
    {
        public float defaultValue;
        
        public void SetValue(float _value){}
        
        // TODO: verify if commenting all this changed any behaviour.
        // CVRInteractable.Start adds itself to referenced variable buffers already on-client,
        // so unsure why the editor gui would also need to add it every draw...
        // Same with serializing the *current* value, and not just the default value...???
        
        //[HideInInspector]
        //public float value = 0f;
        
        //[HideInInspector]
        //public List<CVRInteractable> affectedInteractables = new List<CVRInteractable>();
        //private bool sendUpdate = true;

        //public void Start()
        //{
        //    value = defaultValue;
        //}
        
        // public void AddInteracteable(CVRInteractable interactable)
        // {
        //     if (!affectedInteractables.Contains(interactable))
        //     {
        //         affectedInteractables.Add(interactable);
        //     }
        //
        //     RemoveOrphans();
        // }
        //
        // private void RemoveOrphans()
        // {
        //     var interactablesToRemove = new List<CVRInteractable>();
        //     
        //     foreach (var interactable in affectedInteractables)
        //     {
        //         var included = false;
        //         
        //         if (interactable == null) continue;
        //         
        //         foreach (var action in interactable.actions)
        //         {
        //             if (action.varBufferVal == this) included = true;
        //             if (action.varBufferVal2 == this) included = true;
        //             foreach (var operation in action.operations)
        //             {
        //                 if (operation.varBufferVal == this) included = true;
        //                 if (operation.varBufferVal2 == this) included = true;
        //                 if (operation.varBufferVal3 == this) included = true;
        //             }
        //         }
        //
        //         if (!included) interactablesToRemove.Add(interactable);
        //     }
        //
        //     foreach (var interactable in interactablesToRemove)
        //     {
        //         affectedInteractables.Remove(interactable);
        //     }
        // }
    }
}