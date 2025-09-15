using System;
using ABI.CCK.Components;
using UnityEditor;
using UnityEngine;

#if UNITY_EDITOR

namespace ABI.CCK.Components
{
    public static class CCK_GravityZoneGizmos
    {
        static CCK_GravityZoneGizmos()
        {
            const string gizmoPrefKey = "ABI.CCK.GravityZoneGizmos";
            
            _drawGizmos = EditorPrefs.GetBool(gizmoPrefKey+".DrawGizmos", true);
            _gravityVisualAnimation = EditorPrefs.GetBool(gizmoPrefKey+".GravityVisualAnimation", true);
            _opacityMultiplier = EditorPrefs.GetFloat(gizmoPrefKey+".OpacityMultiplier", 0.5f);
        }

        #region Gizmo Setting Properties
        
        private static bool _drawGizmos;
        public static bool DrawGizmos
        {
            get => _drawGizmos;
            set
            {
                if (_drawGizmos == value) return;
                _drawGizmos = value;
                EditorPrefs.SetBool("ABI.CCK.GravityZoneGizmos.DrawGizmos", value);
            }
        }

        private static bool _gravityVisualAnimation;
        public static bool GravityVisualAnimation
        {
            get => _gravityVisualAnimation;
            set
            {
                if (_gravityVisualAnimation == value) return;
                _gravityVisualAnimation = value;
                EditorPrefs.SetBool("ABI.CCK.GravityZoneGizmos.GravityVisualAnimation", value);
            }
        }

        private static float _opacityMultiplier;
        public static float OpacityMultiplier
        {
            get => _opacityMultiplier;
            set
            {
                if (Math.Abs(_opacityMultiplier - value) < float.Epsilon) return;
                _opacityMultiplier = value;
                EditorPrefs.SetFloat("ABI.CCK.GravityZoneGizmos.OpacityMultiplier", value);
            }
        }
        
        #endregion
        
        private static Mesh Sphere
        {
            get {
                if (_sphere == null)
                {
                    _sphere = Resources.Load<Mesh>("CCKSphere");
                }
                return _sphere;
            }
        }
        private static Mesh _sphere;

        private static Mesh SphereWire
        {
            get {
                if (_sphereWire == null)
                {
                    _sphereWire = Resources.Load<Mesh>("CCKSphereWire");
                }
                return _sphereWire;
            }
        }
        private static Mesh _sphereWire;

        private static Mesh Cylinder
        {
            get {
                if (_cylinder == null)
                {
                    _cylinder = Resources.Load<Mesh>("CCKCylinder");
                }
                return _cylinder;
            }
        }
        private static Mesh _cylinder;

        private static Mesh CylinderWire
        {
            get {
                if (_cylinderWire == null)
                {
                    _cylinderWire = Resources.Load<Mesh>("CCKCylinderWire");
                }
                return _cylinderWire;
            }
        }
        private static Mesh _cylinderWire;

        private static Mesh Circle
        {
            get {
                if (_circle == null)
                {
                    _circle = Resources.Load<Mesh>("CCKCircle");
                }
                return _circle;
            }
        }
        private static Mesh _circle;

        private static Mesh CircleWire
        {
            get {
                if (_circleWire == null)
                {
                    _circleWire = Resources.Load<Mesh>("CCKCircleWire");
                }
                return _circleWire;
            }
        }
        private static Mesh _circleWire;

        private static Mesh Quad
        {
            get {
                if (_quad == null)
                {
                    _quad = Resources.Load<Mesh>("CCKQuad");
                }
                return _quad;
            }
        }
        private static Mesh _quad;

        private static Mesh QuadWire
        {
            get {
                if (_quadWire == null)
                {
                    _quadWire = Resources.Load<Mesh>("CCKQuadWire");
                }
                return _quadWire;
            }
        }
        private static Mesh _quadWire;

        private static Color _color;
        private static float _opacity = 0.75f;
        
        public static void DrawGizmo(GravityZone zone, bool isSelected = false)
        {
            if (!DrawGizmos) return;
            
            Gizmos.matrix = Matrix4x4.TRS(zone.transform.position, zone.transform.rotation, zone.transform.lossyScale);
            
            _opacity = isSelected ? 0.75f : 0.25f;
            Gizmos.color = _color = new Color(128, 0, 128, _opacity);
            
            switch (zone.zoneShape)
            {
                case GravityZone.ZoneShape.Box:
                    Gizmos.DrawWireCube(zone.center, zone.size);
                    
                    if (!GravityVisualAnimation) break;

                    if (zone.gravityDirection == GravityZone.GravityDirection.DirectionX && zone.strength > 0f)
                        RenderBoxGravityDirection(zone.center, Vector3.left, zone.size);
                    if (zone.gravityDirection == GravityZone.GravityDirection.DirectionX && zone.strength < 0f)
                        RenderBoxGravityDirection(zone.center, Vector3.right, zone.size);
                    
                    if (zone.gravityDirection == GravityZone.GravityDirection.DirectionY && zone.strength > 0f)
                        RenderBoxGravityDirection(zone.center, Vector3.down, zone.size);
                    if (zone.gravityDirection == GravityZone.GravityDirection.DirectionY && zone.strength < 0f)
                        RenderBoxGravityDirection(zone.center, Vector3.up, zone.size);
                    
                    if (zone.gravityDirection == GravityZone.GravityDirection.DirectionZ && zone.strength > 0f)
                        RenderBoxGravityDirection(zone.center, Vector3.back, zone.size);
                    if (zone.gravityDirection == GravityZone.GravityDirection.DirectionZ && zone.strength < 0f)
                        RenderBoxGravityDirection(zone.center, Vector3.forward, zone.size);

                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength > 0f)
                        RenderBoxGravityInward(zone.center, zone.size, 1f);
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength < 0f)
                        RenderBoxGravityInward(zone.center, zone.size, -1f);
                    break;
                
                case GravityZone.ZoneShape.Sphere:
                    Gizmos.DrawWireSphere(zone.center, zone.size.x);

                    if (!GravityVisualAnimation) break;
                    
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength > 0f)
                        RenderSphereGravityInward(zone.center, zone.size.x, 1f);
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength < 0f)
                        RenderSphereGravityInward(zone.center, zone.size.x, -1f);
                    break;
                
                case GravityZone.ZoneShape.Capsule:
                    RenderCapsule(zone.center, zone.size.x, zone.size.y - 2 * zone.size.x, true);
                    
                    if (!GravityVisualAnimation) break;
                    
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength > 0f)
                        RenderCapsuleGravityInward(zone.center, zone.size.x, zone.size.y - 2 * zone.size.x, 1f);
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength < 0f)
                        RenderCapsuleGravityInward(zone.center, zone.size.x, zone.size.y - 2 * zone.size.x, -1f);
                    break;
                
                case GravityZone.ZoneShape.Cylinder:
                    RenderCylinder(zone.center, zone.size.x, zone.size.y, true);
                    
                    if (!GravityVisualAnimation) break;
                    
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength > 0f)
                        RenderCylinderGravityInward(zone.center, zone.size.x, zone.size.y, 1f);
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength < 0f)
                        RenderCylinderGravityInward(zone.center, zone.size.x, zone.size.y, -1f);
                    break;
                
                case GravityZone.ZoneShape.HalfSphere:
                    RenderHalfSphere(zone.center, zone.size.x, true);

                    if (!GravityVisualAnimation) break;
                    
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength > 0f)
                        RenderHalfSphereGravityInward(zone.center, zone.size.x, 1f);
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength < 0f)
                        RenderHalfSphereGravityInward(zone.center, zone.size.x, -1f);
                    break;
                
                case GravityZone.ZoneShape.QuarterSphere:
                    RenderQuarterSphere(zone.center, zone.size.x, true);

                    if (!GravityVisualAnimation) break;
                    
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength > 0f)
                        RenderQuarterSphereGravityInward(zone.center, zone.size.x, 1f);
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength < 0f)
                        RenderQuarterSphereGravityInward(zone.center, zone.size.x, -1f);
                    break;
                
                case GravityZone.ZoneShape.HalfCapsule:
                    RenderHalfCapsule(zone.center, zone.size.x, zone.size.y - 2 * zone.size.x, true);
                    
                    if (!GravityVisualAnimation) break;
                    
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength > 0f)
                        RenderHalfCapsuleGravityInward(zone.center, zone.size.x, zone.size.y - 2 * zone.size.x, 1f);
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength < 0f)
                        RenderHalfCapsuleGravityInward(zone.center, zone.size.x, zone.size.y - 2 * zone.size.x, -1f);
                    break;
                
                case GravityZone.ZoneShape.QuarterCapsule:
                    RenderQuarterCapsule(zone.center, zone.size.x, zone.size.y - 2 * zone.size.x, true);
                    
                    if (!GravityVisualAnimation) break;
                    
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength > 0f)
                        RenderQuarterCapsuleGravityInward(zone.center, zone.size.x, zone.size.y - 2 * zone.size.x, 1f);
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength < 0f)
                        RenderQuarterCapsuleGravityInward(zone.center, zone.size.x, zone.size.y - 2 * zone.size.x, -1f);
                    break;
                
                case GravityZone.ZoneShape.HalfCylinder:
                    RenderHalfCylinder(zone.center, zone.size.x, zone.size.y, true);
                    
                    if (!GravityVisualAnimation) break;
                    
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength > 0f)
                        RenderHalfCylinderGravityInward(zone.center, zone.size.x, zone.size.y, 1f);
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength < 0f)
                        RenderHalfCylinderGravityInward(zone.center, zone.size.x, zone.size.y, -1f);
                    break;
                
                case GravityZone.ZoneShape.QuarterCylinder:
                    RenderQuarterCylinder(zone.center, zone.size.x, zone.size.y, true);
                    
                    if (!GravityVisualAnimation) break;
                    
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength > 0f)
                        RenderQuarterCylinderGravityInward(zone.center, zone.size.x, zone.size.y, 1f);
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength < 0f)
                        RenderQuarterCylinderGravityInward(zone.center, zone.size.x, zone.size.y, -1f);
                    break;
                
                case GravityZone.ZoneShape.Custom:
                    if (zone.customZoneShapeMesh == null) return;
                    DrawMesh(zone.customZoneShapeMesh, Vector3.zero, Quaternion.identity, Vector3.one, true);
                    
                    if (!GravityVisualAnimation) break;
                    
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength > 0f)
                        RenderCustomGravityInward(zone.customZoneShapeMesh, 1f);
                    if (zone.gravityDirection == GravityZone.GravityDirection.TowardsCenter && zone.strength < 0f)
                        RenderCustomGravityInward(zone.customZoneShapeMesh, -1f);
                    
                    break;
            }
        }

        private static void RenderBoxGravityDirection(Vector3 center, Vector3 direction, Vector3 size)
        {
            float anim = (float)(EditorApplication.timeSinceStartup % 5f);
            float min = 0f;
            float max = 0f;

            float width = 0f;

            if (direction == Vector3.down || direction == Vector3.up)
            {
                width = size.y;
                size.y = 0f;
            }

            if (direction == Vector3.left || direction == Vector3.right)
            {
                width = size.x;
                size.x = 0f;
            }

            if (direction == Vector3.forward || direction == Vector3.back)
            {
                width = size.z;
                size.z = 0f;
            }
            
            if (direction.x + direction.y + direction.z > 0f)
            {
                min = 0f;
                max = 1f;
            }
            else
            {
                min = 1f;
                max = 0f;
            }
            
            UpdateColor(remapAnim(anim, max, min, 0f) * _opacity);
            Gizmos.DrawCube(center + direction * (0.5f * remapAnim(anim, -width, width)), size);
            UpdateColor(remapAnim(anim, max, min, 1f) * _opacity);
            Gizmos.DrawCube(center + direction * (0.5f * remapAnim(anim, -width, width, 1f)), size);
            UpdateColor(remapAnim(anim, max, min, 2f) * _opacity);
            Gizmos.DrawCube(center + direction * (0.5f * remapAnim(anim, -width, width, 2f)), size);
            UpdateColor(remapAnim(anim, max, min, 3f) * _opacity);
            Gizmos.DrawCube(center + direction * (0.5f * remapAnim(anim, -width, width, 3f)), size);
        }

        private static void RenderBoxGravityInward(Vector3 center, Vector3 size, float direction)
        {
            float anim = (float)(EditorApplication.timeSinceStartup % 5f);
            float min = 0f;
            float max = 0f;

            if (direction > 0f)
            {
                min = 1f;
                max = 0f;
            }
            else
            {
                min = 0f;
                max = 1f;
            }
            
            UpdateColor(remapAnim(anim, max, min, 0f) * _opacity);
            Gizmos.DrawCube(center, size * remapAnim(anim, min, max));
            UpdateColor(remapAnim(anim, max, min, 1f) * _opacity);
            Gizmos.DrawCube(center, size * remapAnim(anim, min, max, 1f));
            UpdateColor(remapAnim(anim, max, min, 2f) * _opacity);
            Gizmos.DrawCube(center, size * remapAnim(anim, min, max, 2f));
            UpdateColor(remapAnim(anim, max, min, 3f) * _opacity);
            Gizmos.DrawCube(center, size * remapAnim(anim, min, max, 3f));
        }
        
        private static void RenderSphereGravityInward(Vector3 center, float size, float direction)
        {
            float anim = (float)(EditorApplication.timeSinceStartup % 5f);
            float min = 0f;
            float max = 0f;

            if (direction > 0f)
            {
                min = 1f;
                max = 0f;
            }
            else
            {
                min = 0f;
                max = 1f;
            }
            
            UpdateColor(remapAnim(anim, max, min, 0f) * _opacity);
            Gizmos.DrawSphere(center, size * remapAnim(anim, min, max));
            UpdateColor(remapAnim(anim, max, min, 1f) * _opacity);
            Gizmos.DrawSphere(center, size * remapAnim(anim, min, max, 1f));
            UpdateColor(remapAnim(anim, max, min, 2f) * _opacity);
            Gizmos.DrawSphere(center, size * remapAnim(anim, min, max, 2f));
            UpdateColor(remapAnim(anim, max, min, 3f) * _opacity);
            Gizmos.DrawSphere(center, size * remapAnim(anim, min, max, 3f));
        }
        
        private static void RenderCapsuleGravityInward(Vector3 center, float radius, float height, float direction)
        {
            float anim = (float)(EditorApplication.timeSinceStartup % 5f);
            float min = 0f;
            float max = 0f;

            if (direction > 0f)
            {
                min = 1f;
                max = 0f;
            }
            else
            {
                min = 0f;
                max = 1f;
            }

            UpdateColor(remapAnim(anim, max, min, 0f) * _opacity);
            RenderCapsule(center, radius * remapAnim(anim, min, max), height);
            UpdateColor(remapAnim(anim, max, min, 1f) * _opacity);
            RenderCapsule(center, radius * remapAnim(anim, min, max, 1f), height);
            UpdateColor(remapAnim(anim, max, min, 2f) * _opacity);
            RenderCapsule(center, radius * remapAnim(anim, min, max, 2f), height);
            UpdateColor(remapAnim(anim, max, min, 3f) * _opacity);
            RenderCapsule(center, radius * remapAnim(anim, min, max, 3f), height);
        }
        
        private static void RenderCylinderGravityInward(Vector3 center, float radius, float height, float direction)
        {
            float anim = (float)(EditorApplication.timeSinceStartup % 5f);
            float min = 0f;
            float max = 0f;

            if (direction > 0f)
            {
                min = 1f;
                max = 0f;
            }
            else
            {
                min = 0f;
                max = 1f;
            }

            UpdateColor(remapAnim(anim, max, min, 0f) * _opacity);
            RenderCylinder(center, radius * remapAnim(anim, min, max), height, false);
            UpdateColor(remapAnim(anim, max, min, 1f) * _opacity);
            RenderCylinder(center, radius * remapAnim(anim, min, max, 1f), height, false);
            UpdateColor(remapAnim(anim, max, min, 2f) * _opacity);
            RenderCylinder(center, radius * remapAnim(anim, min, max, 2f), height, false);
            UpdateColor(remapAnim(anim, max, min, 3f) * _opacity);
            RenderCylinder(center, radius * remapAnim(anim, min, max, 3f), height, false);
        }
        
        private static void RenderHalfSphereGravityInward(Vector3 center, float radius, float direction)
        {
            float anim = (float)(EditorApplication.timeSinceStartup % 5f);
            float min = 0f;
            float max = 0f;

            if (direction > 0f)
            {
                min = 1f;
                max = 0f;
            }
            else
            {
                min = 0f;
                max = 1f;
            }

            UpdateColor(remapAnim(anim, max, min, 0f) * _opacity);
            RenderHalfSphere(center, radius * remapAnim(anim, min, max), false);
            UpdateColor(remapAnim(anim, max, min, 1f) * _opacity);
            RenderHalfSphere(center, radius * remapAnim(anim, min, max, 1f), false);
            UpdateColor(remapAnim(anim, max, min, 2f) * _opacity);
            RenderHalfSphere(center, radius * remapAnim(anim, min, max, 2f), false);
            UpdateColor(remapAnim(anim, max, min, 3f) * _opacity);
            RenderHalfSphere(center, radius * remapAnim(anim, min, max, 3f), false);
        }
        
        private static void RenderQuarterSphereGravityInward(Vector3 center, float radius, float direction)
        {
            float anim = (float)(EditorApplication.timeSinceStartup % 5f);
            float min = 0f;
            float max = 0f;

            if (direction > 0f)
            {
                min = 1f;
                max = 0f;
            }
            else
            {
                min = 0f;
                max = 1f;
            }

            UpdateColor(remapAnim(anim, max, min, 0f) * _opacity);
            RenderQuarterSphere(center, radius * remapAnim(anim, min, max), false);
            UpdateColor(remapAnim(anim, max, min, 1f) * _opacity);
            RenderQuarterSphere(center, radius * remapAnim(anim, min, max, 1f), false);
            UpdateColor(remapAnim(anim, max, min, 2f) * _opacity);
            RenderQuarterSphere(center, radius * remapAnim(anim, min, max, 2f), false);
            UpdateColor(remapAnim(anim, max, min, 3f) * _opacity);
            RenderQuarterSphere(center, radius * remapAnim(anim, min, max, 3f), false);
        }
        
        private static void RenderHalfCapsuleGravityInward(Vector3 center, float radius, float height, float direction)
        {
            float anim = (float)(EditorApplication.timeSinceStartup % 5f);
            float min = 0f;
            float max = 0f;

            if (direction > 0f)
            {
                min = 1f;
                max = 0f;
            }
            else
            {
                min = 0f;
                max = 1f;
            }

            UpdateColor(remapAnim(anim, max, min, 0f) * _opacity);
            RenderHalfCapsule(center, radius * remapAnim(anim, min, max), height, false);
            UpdateColor(remapAnim(anim, max, min, 1f) * _opacity);
            RenderHalfCapsule(center, radius * remapAnim(anim, min, max, 1f), height, false);
            UpdateColor(remapAnim(anim, max, min, 2f) * _opacity);
            RenderHalfCapsule(center, radius * remapAnim(anim, min, max, 2f), height, false);
            UpdateColor(remapAnim(anim, max, min, 3f) * _opacity);
            RenderHalfCapsule(center, radius * remapAnim(anim, min, max, 3f), height, false);
        }
        
        private static void RenderQuarterCapsuleGravityInward(Vector3 center, float radius, float height, float direction)
        {
            float anim = (float)(EditorApplication.timeSinceStartup % 5f);
            float min = 0f;
            float max = 0f;

            if (direction > 0f)
            {
                min = 1f;
                max = 0f;
            }
            else
            {
                min = 0f;
                max = 1f;
            }

            UpdateColor(remapAnim(anim, max, min, 0f) * _opacity);
            RenderQuarterCapsule(center, radius * remapAnim(anim, min, max), height, false);
            UpdateColor(remapAnim(anim, max, min, 1f) * _opacity);
            RenderQuarterCapsule(center, radius * remapAnim(anim, min, max, 1f), height, false);
            UpdateColor(remapAnim(anim, max, min, 2f) * _opacity);
            RenderQuarterCapsule(center, radius * remapAnim(anim, min, max, 2f), height, false);
            UpdateColor(remapAnim(anim, max, min, 3f) * _opacity);
            RenderQuarterCapsule(center, radius * remapAnim(anim, min, max, 3f), height, false);
        }

        private static void RenderCapsule(Vector3 center, float radius, float height, bool isWire = false)
        {
            
            DrawMesh(isWire ? SphereWire : Sphere, center + Vector3.up * height * 0.5f, Quaternion.Euler(0f, 0f,   0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? SphereWire : Sphere, center + Vector3.up * height * 0.5f, Quaternion.Euler(0f, 90f,  0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? SphereWire : Sphere, center + Vector3.up * height * 0.5f, Quaternion.Euler(0f, 180f, 0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? SphereWire : Sphere, center + Vector3.up * height * 0.5f, Quaternion.Euler(0f, 270f, 0f), Vector3.one * radius, isWire);
            
            DrawMesh(isWire ? CylinderWire : Cylinder, center - Vector3.up * height * 0.5f, Quaternion.Euler(0f, 0f,   0f), (Vector3.right + Vector3.forward) * radius + Vector3.up * height, isWire);
            DrawMesh(isWire ? CylinderWire : Cylinder, center - Vector3.up * height * 0.5f, Quaternion.Euler(0f, 90f,  0f), (Vector3.right + Vector3.forward) * radius + Vector3.up * height, isWire);
            DrawMesh(isWire ? CylinderWire : Cylinder, center - Vector3.up * height * 0.5f, Quaternion.Euler(0f, 180f, 0f), (Vector3.right + Vector3.forward) * radius + Vector3.up * height, isWire);
            DrawMesh(isWire ? CylinderWire : Cylinder, center - Vector3.up * height * 0.5f, Quaternion.Euler(0f, 270f, 0f), (Vector3.right + Vector3.forward) * radius + Vector3.up * height, isWire);
            
            DrawMesh(isWire ? SphereWire : Sphere, center - Vector3.up * height * 0.5f, Quaternion.Euler(180f, 0f,   0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? SphereWire : Sphere, center - Vector3.up * height * 0.5f, Quaternion.Euler(180f, 90f,  0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? SphereWire : Sphere, center - Vector3.up * height * 0.5f, Quaternion.Euler(180f, 180f, 0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? SphereWire : Sphere, center - Vector3.up * height * 0.5f, Quaternion.Euler(180f, 270f, 0f), Vector3.one * radius, isWire);
        }
        
        private static void RenderCylinder(Vector3 center, float radius, float height, bool isWire = false, bool drawCaps = true)
        {
            DrawMesh(isWire ? CylinderWire : Cylinder, center - Vector3.up * height * 0.5f, Quaternion.Euler(0f, 0f,   0f), (Vector3.right + Vector3.forward) * radius + Vector3.up * height, isWire);
            DrawMesh(isWire ? CylinderWire : Cylinder, center - Vector3.up * height * 0.5f, Quaternion.Euler(0f, 90f,  0f), (Vector3.right + Vector3.forward) * radius + Vector3.up * height, isWire);
            DrawMesh(isWire ? CylinderWire : Cylinder, center - Vector3.up * height * 0.5f, Quaternion.Euler(0f, 180f, 0f), (Vector3.right + Vector3.forward) * radius + Vector3.up * height, isWire);
            DrawMesh(isWire ? CylinderWire : Cylinder, center - Vector3.up * height * 0.5f, Quaternion.Euler(0f, 270f, 0f), (Vector3.right + Vector3.forward) * radius + Vector3.up * height, isWire);

            if (!drawCaps) return;
            
            DrawMesh(isWire ? CircleWire : Circle, center + Vector3.up * height * 0.5f, Quaternion.Euler(0f, 0f,   0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? CircleWire : Circle, center + Vector3.up * height * 0.5f, Quaternion.Euler(0f, 90f,  0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? CircleWire : Circle, center + Vector3.up * height * 0.5f, Quaternion.Euler(0f, 180f, 0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? CircleWire : Circle, center + Vector3.up * height * 0.5f, Quaternion.Euler(0f, 270f, 0f), Vector3.one * radius, isWire);
            
            DrawMesh(isWire ? CircleWire : Circle, center - Vector3.up * height * 0.5f, Quaternion.Euler(180f, 0f,   0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? CircleWire : Circle, center - Vector3.up * height * 0.5f, Quaternion.Euler(180f, 90f,  0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? CircleWire : Circle, center - Vector3.up * height * 0.5f, Quaternion.Euler(180f, 180f, 0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? CircleWire : Circle, center - Vector3.up * height * 0.5f, Quaternion.Euler(180f, 270f, 0f), Vector3.one * radius, isWire);
        }
        
        private static void RenderHalfSphere(Vector3 center, float radius, bool isWire = false, bool drawCap = true)
        {
            DrawMesh(isWire ? SphereWire : Sphere, center, Quaternion.Euler(0f, 0f,   0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? SphereWire : Sphere, center, Quaternion.Euler(0f, 90f,  0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? SphereWire : Sphere, center, Quaternion.Euler(0f, 180f, 0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? SphereWire : Sphere, center, Quaternion.Euler(0f, 270f, 0f), Vector3.one * radius, isWire);
            
            if (!drawCap) return;
            
            DrawMesh(isWire ? CircleWire : Circle, center, Quaternion.Euler(180f, 0f,   0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? CircleWire : Circle, center, Quaternion.Euler(180f, 90f,  0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? CircleWire : Circle, center, Quaternion.Euler(180f, 180f, 0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? CircleWire : Circle, center, Quaternion.Euler(180f, 270f, 0f), Vector3.one * radius, isWire);
        }
        
        private static void RenderQuarterSphere(Vector3 center, float radius, bool isWire = false, bool drawCap = true)
        {
            DrawMesh(isWire ? SphereWire : Sphere, center, Quaternion.Euler(0f, 0f,   0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? SphereWire : Sphere, center, Quaternion.Euler(0f, 90f,  0f), Vector3.one * radius, isWire);
            
            if (!drawCap) return;
            
            DrawMesh(isWire ? CircleWire : Circle, center, Quaternion.Euler(  0f,  90f,  -90f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? CircleWire : Circle, center, Quaternion.Euler(-90f,  90f,  -90f), Vector3.one * radius, isWire);
            
            DrawMesh(isWire ? CircleWire : Circle, center, Quaternion.Euler(  0f, 270f, -180f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? CircleWire : Circle, center, Quaternion.Euler(  0f,   0f, -180f), Vector3.one * radius, isWire);
        }
        
        private static void RenderHalfCapsule(Vector3 center, float radius, float height, bool isWire = false, bool drawCaps = true)
        {
            
            DrawMesh(isWire ? SphereWire : Sphere, center + Vector3.up * height * 0.5f, Quaternion.Euler(0f, 0f,   0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? SphereWire : Sphere, center + Vector3.up * height * 0.5f, Quaternion.Euler(0f, 90f,  0f), Vector3.one * radius, isWire);
            
            DrawMesh(isWire ? CylinderWire : Cylinder, center - Vector3.up * height * 0.5f, Quaternion.Euler(0f, 0f,   0f), (Vector3.right + Vector3.forward) * radius + Vector3.up * height, isWire);
            DrawMesh(isWire ? CylinderWire : Cylinder, center - Vector3.up * height * 0.5f, Quaternion.Euler(0f, 90f,  0f), (Vector3.right + Vector3.forward) * radius + Vector3.up * height, isWire);

            DrawMesh(isWire ? SphereWire : Sphere, center - Vector3.up * height * 0.5f, Quaternion.Euler(180f, 90f,  0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? SphereWire : Sphere, center - Vector3.up * height * 0.5f, Quaternion.Euler(180f, 180f, 0f), Vector3.one * radius, isWire);
            
            if (!drawCaps) return;
            
            DrawMesh(isWire ? CircleWire : Circle, center + Vector3.up * height * 0.5f, Quaternion.Euler(-90f,  0f,   0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? CircleWire : Circle, center + Vector3.up * height * 0.5f, Quaternion.Euler(  0f, 90f, -90f), Vector3.one * radius, isWire);
            
            DrawMesh(isWire ? QuadWire : Quad, center - Vector3.up * height * 0.5f, Quaternion.Euler(-90f,  0f,   0f), (Vector3.right + Vector3.up) * radius + Vector3.forward * height, isWire);
            DrawMesh(isWire ? QuadWire : Quad, center - Vector3.up * height * 0.5f, Quaternion.Euler(  0f, 90f, -90f), (Vector3.forward + Vector3.up) * radius + Vector3.right * height, isWire);
            
            DrawMesh(isWire ? CircleWire : Circle, center - Vector3.up * height * 0.5f, Quaternion.Euler(90f,  0f, -180f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? CircleWire : Circle, center - Vector3.up * height * 0.5f, Quaternion.Euler( 0f, -90f,  90f), Vector3.one * radius, isWire);
        }
        
        private static void RenderQuarterCapsule(Vector3 center, float radius, float height, bool isWire = false, bool drawCaps = true)
        {
            
            DrawMesh(isWire ? SphereWire : Sphere, center + Vector3.up * height * 0.5f, Quaternion.Euler(0f, 0f,   0f), Vector3.one * radius, isWire);
            
            DrawMesh(isWire ? CylinderWire : Cylinder, center - Vector3.up * height * 0.5f, Quaternion.Euler(0f, 0f,   0f), (Vector3.right + Vector3.forward) * radius + Vector3.up * height, isWire);

            DrawMesh(isWire ? SphereWire : Sphere, center - Vector3.up * height * 0.5f, Quaternion.Euler(180f, 90f,  0f), Vector3.one * radius, isWire);
            
            if (!drawCaps) return;
            
            DrawMesh(isWire ? CircleWire : Circle, center + Vector3.up * height * 0.5f, Quaternion.Euler(-90f, 0f, 0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? CircleWire : Circle, center + Vector3.up * height * 0.5f, Quaternion.Euler(0f, 0f, -90f), Vector3.one * radius, isWire);
            
            DrawMesh(isWire ? QuadWire : Quad, center - Vector3.up * height * 0.5f, Quaternion.Euler(-90f, 0f, 0f), (Vector3.right + Vector3.up) * radius + Vector3.forward * height, isWire);
            DrawMesh(isWire ? QuadWire : Quad, center - Vector3.up * height * 0.5f, Quaternion.Euler(0f, 0f, -90f), (Vector3.forward + Vector3.up) * radius + Vector3.right * height, isWire);
            
            DrawMesh(isWire ? CircleWire : Circle, center - Vector3.up * height * 0.5f, Quaternion.Euler( 0f, -90f, 90f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? CircleWire : Circle, center - Vector3.up * height * 0.5f, Quaternion.Euler( 90f, 0f, -90f), Vector3.one * radius, isWire);
        }
        
        private static void RenderHalfCylinder (Vector3 center, float radius, float height, bool isWire = false, bool drawCaps = true)
        {
            DrawMesh(isWire ? CylinderWire : Cylinder, center - Vector3.up * height * 0.5f, Quaternion.Euler(0f, 0f,   0f), (Vector3.right + Vector3.forward) * radius + Vector3.up * height, isWire);
            DrawMesh(isWire ? CylinderWire : Cylinder, center - Vector3.up * height * 0.5f, Quaternion.Euler(0f, 90f,  0f), (Vector3.right + Vector3.forward) * radius + Vector3.up * height, isWire);

            if (!drawCaps) return;
            
            DrawMesh(isWire ? CircleWire : Circle, center + Vector3.up * height * 0.5f, Quaternion.Euler(0f, 0f,   0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? CircleWire : Circle, center + Vector3.up * height * 0.5f, Quaternion.Euler(0f, 90f,  0f), Vector3.one * radius, isWire);
            
            DrawMesh(isWire ? QuadWire : Quad, center - Vector3.up * height * 0.5f, Quaternion.Euler(-90f,  0f,   0f), (Vector3.right + Vector3.up) * radius + Vector3.forward * height, isWire);
            DrawMesh(isWire ? QuadWire : Quad, center - Vector3.up * height * 0.5f, Quaternion.Euler(  0f, 90f, -90f), (Vector3.forward + Vector3.up) * radius + Vector3.right * height, isWire);
            
            DrawMesh(isWire ? CircleWire : Circle, center - Vector3.up * height * 0.5f, Quaternion.Euler(180f, 90f,  0f), Vector3.one * radius, isWire);
            DrawMesh(isWire ? CircleWire : Circle, center - Vector3.up * height * 0.5f, Quaternion.Euler(180f, 180f, 0f), Vector3.one * radius, isWire);
        }
        
        private static void RenderHalfCylinderGravityInward(Vector3 center, float radius, float height, float direction)
        {
            float anim = (float)(EditorApplication.timeSinceStartup % 5f);
            float min = 0f;
            float max = 0f;

            if (direction > 0f)
            {
                min = 1f;
                max = 0f;
            }
            else
            {
                min = 0f;
                max = 1f;
            }

            UpdateColor(remapAnim(anim, max, min, 0f) * _opacity);
            RenderHalfCylinder(center, radius * remapAnim(anim, min, max), height, false);
            UpdateColor(remapAnim(anim, max, min, 1f) * _opacity);
            RenderHalfCylinder(center, radius * remapAnim(anim, min, max, 1f), height, false);
            UpdateColor(remapAnim(anim, max, min, 2f) * _opacity);
            RenderHalfCylinder(center, radius * remapAnim(anim, min, max, 2f), height, false);
            UpdateColor(remapAnim(anim, max, min, 3f) * _opacity);
            RenderHalfCylinder(center, radius * remapAnim(anim, min, max, 3f), height, false);
        }
        
        private static void RenderQuarterCylinder (Vector3 center, float radius, float height, bool isWire = false, bool drawCaps = true)
        {
            DrawMesh(isWire ? CylinderWire : Cylinder, center - Vector3.up * height * 0.5f, Quaternion.Euler(0f, 0f,   0f), (Vector3.right + Vector3.forward) * radius + Vector3.up * height, isWire);

            if (!drawCaps) return;
            
            DrawMesh(isWire ? CircleWire : Circle, center + Vector3.up * height * 0.5f, Quaternion.Euler(0f, 0f,   0f), Vector3.one * radius, isWire);
            
            DrawMesh(isWire ? QuadWire : Quad, center - Vector3.up * height * 0.5f, Quaternion.Euler(-90f, 0f, 0f), (Vector3.right + Vector3.up) * radius + Vector3.forward * height, isWire);
            DrawMesh(isWire ? QuadWire : Quad, center - Vector3.up * height * 0.5f, Quaternion.Euler(0f, 0f, -90f), (Vector3.forward + Vector3.up) * radius + Vector3.right * height, isWire);
            
            DrawMesh(isWire ? CircleWire : Circle, center - Vector3.up * height * 0.5f, Quaternion.Euler(180f, 90f,  0f), Vector3.one * radius, isWire);
        }
        
        private static void RenderQuarterCylinderGravityInward(Vector3 center, float radius, float height, float direction)
        {
            float anim = (float)(EditorApplication.timeSinceStartup % 5f);
            float min = 0f;
            float max = 0f;

            if (direction > 0f)
            {
                min = 1f;
                max = 0f;
            }
            else
            {
                min = 0f;
                max = 1f;
            }

            UpdateColor(remapAnim(anim, max, min, 0f) * _opacity);
            RenderQuarterCylinder(center, radius * remapAnim(anim, min, max), height, false);
            UpdateColor(remapAnim(anim, max, min, 1f) * _opacity);
            RenderQuarterCylinder(center, radius * remapAnim(anim, min, max, 1f), height, false);
            UpdateColor(remapAnim(anim, max, min, 2f) * _opacity);
            RenderQuarterCylinder(center, radius * remapAnim(anim, min, max, 2f), height, false);
            UpdateColor(remapAnim(anim, max, min, 3f) * _opacity);
            RenderQuarterCylinder(center, radius * remapAnim(anim, min, max, 3f), height, false);
        }
        
        private static void RenderCustomGravityInward(Mesh mesh, float direction)
        {
            float anim = (float)(EditorApplication.timeSinceStartup % 5f);
            float min = 0f;
            float max = 0f;

            if (direction > 0f)
            {
                min = 1f;
                max = 0f;
            }
            else
            {
                min = 0f;
                max = 1f;
            }

            UpdateColor(remapAnim(anim, max, min, 0f) * _opacity);
            DrawMesh(mesh, Vector3.zero, Quaternion.identity, Vector3.one * remapAnim(anim, min, max), false);
            UpdateColor(remapAnim(anim, max, min, 1f) * _opacity);
            DrawMesh(mesh, Vector3.zero, Quaternion.identity, Vector3.one * remapAnim(anim, min, max, 1f), false);
            UpdateColor(remapAnim(anim, max, min, 2f) * _opacity);
            DrawMesh(mesh, Vector3.zero, Quaternion.identity, Vector3.one * remapAnim(anim, min, max, 2f), false);
            UpdateColor(remapAnim(anim, max, min, 3f) * _opacity);
            DrawMesh(mesh, Vector3.zero, Quaternion.identity, Vector3.one * remapAnim(anim, min, max, 3f), false);
        }

        private static void DrawMesh(Mesh mesh, Vector3 position, Quaternion rotation, Vector3 scale, bool isWire = false)
        {
            if (isWire) Gizmos.DrawWireMesh(mesh, position, rotation, scale);
            else Gizmos.DrawMesh(mesh, position, rotation, scale);
        }
        
        private static float remapAnim(float anim, float min, float max, float offset = 0)
        {
            anim = (anim + offset * 1.25f) % 5f;
            anim = anim % 1.25f + 1.25f * offset;
            return Mathf.Lerp(min, max, anim / 5f);
        }

        private static void UpdateColor(float alpha)
        {
            _color.a = alpha * OpacityMultiplier;
            Gizmos.color = _color;
        }
    }
}

#endif