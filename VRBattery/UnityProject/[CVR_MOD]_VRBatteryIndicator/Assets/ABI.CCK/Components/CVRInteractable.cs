using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

namespace ABI.CCK.Components
{
    [AddComponentMenu("ChilloutVR/CVR Interactable")]
    [HelpURL("https://docs.abinteractive.net/cck/components/interactable/")]
    [Serializable]
    public class CVRInteractable : MonoBehaviour, ICCK_Component, IStateMachineCallbackReceiver
    {
        public string tooltip;
        public List<CVRInteractableAction> actions = new();

        public UnityEvent onEnterSeat;
        public UnityEvent onExitSeat;

        public void CustomTrigger()
        {
            
        }

        private void OnValidate()
        {
            // if the action is SitAtPosition, ensure there is at least one gameobject target
            foreach (CVRInteractableAction action in actions)
            {
                foreach (CVRInteractableActionOperation operation in action.operations)
                {
                    switch (operation.type)
                    {
                        // floatVal maps to s_ObjectStates
                        case CVRInteractableActionOperation.ActionType.SetGameObjectActive:
                        case CVRInteractableActionOperation.ActionType.SetComponentActive:
                            operation.floatVal = Mathf.Clamp(operation.floatVal, 0, 2);
                            break;
                        case CVRInteractableActionOperation.ActionType.SitAtPosition:
                            operation.targets ??= new List<GameObject>();
                            if (operation.targets.Count == 0) operation.targets.Add(null);
                            break;
                    }
                }
            }
        }

        #region Gizmo Drawing
        
        private void OnDrawGizmos()
        {
            foreach (var action in actions)
            {
                foreach (var operation in action.operations)
                {
                    if (operation.type == CVRInteractableActionOperation.ActionType.TeleportPlayer)
                    {
                        if(operation.gameObjectVal == null) continue;
                        
                        Transform target = operation.gameObjectVal.transform;
                        Vector3 position = target.position;
                        
                        // connection line
                        Gizmos.color = Color.yellow;
                        Gizmos.DrawLine(transform.position, position);
                        
                        // alignment is set to none
                        if (operation.floatVal == 3)
                        {
                            Gizmos.color = Color.blue;
                            Gizmos.DrawWireSphere(position, 0.1f);
                            continue;
                        }
                        
                        // relative teleport sets forward direction
                        Vector3 targetDirection;
                        if (operation.boolVal)
                        {
                            Gizmos.color = Color.cyan;
                            targetDirection = transform.InverseTransformDirection(transform.forward);
                            targetDirection = target.TransformDirection(targetDirection);
                        }
                        else
                        {
                            Gizmos.color = Color.blue;
                            targetDirection = target.forward;
                        }
                        
                        if (operation.floatVal == 0) targetDirection = Vector3.ProjectOnPlane(targetDirection, Vector3.up).normalized;
                        
                        DrawArrow(position, targetDirection, 1);
                        
                        // up direction, when gravity, aligns to sampled gravity on teleport
                        Gizmos.color = operation.floatVal == 2 ? Color.magenta : Color.green;
                        
                        switch (operation.floatVal)
                        {
                            case 0: // World Up
                                DrawArrow(position, Vector3.up, 1);
                                break;
                            case 1: // Target Up
                            case 2: // Gravity
                                DrawArrow(position, target.up, 1);
                                break;
                        }
                    }
                    
                    if (operation.type == CVRInteractableActionOperation.ActionType.SitAtPosition)
                    {
                        if (operation.targets == null
                            || operation.targets.Count == 0
                            || operation.targets[0] == null) 
                            continue;
                        
                        // Exit position
                        Gizmos.color = Color.blue;
                        
                        Transform exitTransform = operation.targets[0].transform;
                        Vector3 exitPosition = exitTransform.position;
                        
                        Gizmos.DrawLine(transform.position, exitPosition);
                        DrawArrow(exitPosition,
                            exitTransform.forward, 0.5f);
                        
                        Gizmos.color = Color.yellow;
                        DrawArrow(exitPosition,
                            exitTransform.up, 0.5f);
                        
                        if (operation.gameObjectVal == null) 
                            continue;
                        
                        Gizmos.color = Color.blue;

                        // Sitting position
                        Transform position = operation.gameObjectVal.transform;
                        Gizmos.DrawLine(transform.position, position.position);
                        
                        // Draws sitting cube person
                        Gizmos.matrix = Matrix4x4.TRS(position.position, position.rotation, Vector3.one);
                        Gizmos.DrawWireCube(new Vector3(+0.12f, -0.2f, 0.05f), new Vector3(0.1f, 0.4f, 0.1f));
                        Gizmos.DrawWireCube(new Vector3(-0.12f, -0.2f, 0.05f), new Vector3(0.1f, 0.4f, 0.1f));
                        Gizmos.DrawWireCube(new Vector3(+0.12f, 0.05f, -0.2f), new Vector3(0.1f, 0.1f, 0.6f));
                        Gizmos.DrawWireCube(new Vector3(-0.12f, 0.05f, -0.2f), new Vector3(0.1f, 0.1f, 0.6f));
                        Gizmos.DrawWireCube(new Vector3(0f, 0.4f, -0.4f), new Vector3(0.34f, 0.6f, 0.2f));
                        Gizmos.DrawWireCube(new Vector3(0f, 0.8f, -0.4f), new Vector3(0.2f, 0.2f, 0.2f));
                        Gizmos.DrawWireCube(new Vector3(+0.22f, 0.4f, -0.4f), new Vector3(0.1f, 0.4f, 0.1f));
                        Gizmos.DrawWireCube(new Vector3(-0.22f, 0.4f, -0.4f), new Vector3(0.1f, 0.4f, 0.1f));
                        Gizmos.DrawWireCube(new Vector3(+0.22f, 0.25f, -0.2f), new Vector3(0.1f, 0.1f, 0.3f));
                        Gizmos.DrawWireCube(new Vector3(-0.22f, 0.25f, -0.2f), new Vector3(0.1f, 0.1f, 0.3f));
                    }
                }
            }
        }

        private void DrawArrow(Vector3 position, Vector3 direction, float size)
        {
            var a1 = RotatePointAroundPivot(position + new Vector3(0, 0.1f * size, 0), position, direction);
            var a2 = RotatePointAroundPivot(position + new Vector3(0.1f * size, 0, 0), position, direction);
            var a3 = RotatePointAroundPivot(position + new Vector3(0, -0.1f * size, 0), position, direction);
            var a4 = RotatePointAroundPivot(position + new Vector3(-0.1f * size, 0, 0), position, direction);
            
            var b1 = RotatePointAroundPivot(position + new Vector3(0, 0.1f * size, 0.3f * size), position, direction);
            var b2 = RotatePointAroundPivot(position + new Vector3(0.1f * size, 0, 0.3f * size), position, direction);
            var b3 = RotatePointAroundPivot(position + new Vector3(0, -0.1f * size, 0.3f * size), position, direction);
            var b4 = RotatePointAroundPivot(position + new Vector3(-0.1f * size, 0, 0.3f * size), position, direction);
            
            var c1 = RotatePointAroundPivot(position + new Vector3(0, 0.2f * size, 0.3f * size), position, direction);
            var c2 = RotatePointAroundPivot(position + new Vector3(0.2f * size, 0, 0.3f * size), position, direction);
            var c3 = RotatePointAroundPivot(position + new Vector3(0, -0.2f * size, 0.3f * size), position, direction);
            var c4 = RotatePointAroundPivot(position + new Vector3(-0.2f * size, 0, 0.3f * size), position, direction);
            
            var d = RotatePointAroundPivot(position + new Vector3(0, 0, 0.5f * size), position, direction);
            
            Gizmos.DrawLine(position, a1);
            Gizmos.DrawLine(position, a2);
            Gizmos.DrawLine(position, a3);
            Gizmos.DrawLine(position, a4);
            
            Gizmos.DrawLine(a1, b1);
            Gizmos.DrawLine(a2, b2);
            Gizmos.DrawLine(a3, b3);
            Gizmos.DrawLine(a4, b4);
            
            Gizmos.DrawLine(b1, c1);
            Gizmos.DrawLine(b2, c2);
            Gizmos.DrawLine(b3, c3);
            Gizmos.DrawLine(b4, c4);
            
            Gizmos.DrawLine(c1, d);
            Gizmos.DrawLine(c2, d);
            Gizmos.DrawLine(c3, d);
            Gizmos.DrawLine(c4, d);
        }
        
        private Vector3 RotatePointAroundPivot(Vector3 point, Vector3 pivot, Vector3 direction)
        {
            var dir = point - pivot; // get point direction relative to pivot
            Quaternion rotation = Quaternion.LookRotation(direction, Vector3.up);
            dir = rotation * dir; // rotate it
            point = dir + pivot; // calculate rotated point
            return point; // return it
        }
        
        #endregion
    }
}