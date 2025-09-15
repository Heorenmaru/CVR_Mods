#if UNITY_EDITOR
using System.Linq;
using UnityEditor;
using UnityEngine;
using static ABI.CCK.Scripts.Editor.SharedComponentGUI;

namespace ABI.CCK.Components
{
    public partial class CCK_GravityZoneEditor
    {
        private void Draw_ZoneSettings()
        {
            using (new FoldoutScope(ref _guiAreaConfigurationFoldout, "Zone Configuration"))
            {
                if (!_guiAreaConfigurationFoldout) return;
                using (new EditorGUI.IndentLevelScope())
                    DrawZoneSettings();
            }
        }

        private void DrawZoneSettings()
        {
            EditorGUILayout.PropertyField(m_ZoneShape, new GUIContent("Zone Shape"));
            
            if (serializedObject.isEditingMultipleObjects)
            {
                GravityZone.ZoneShape mainShape = (GravityZone.ZoneShape) m_ZoneShape.intValue;
                if (serializedObject.targetObjects.Cast<GravityZone>().Any(zone => zone.zoneShape != mainShape))
                {
                    EditorGUILayout.HelpBox("Cannot multi-edit Shape options of conflicting Shape types!", MessageType.Info);
                    return;
                }
            }
            
            GravityZone.ZoneShape shape = (GravityZone.ZoneShape) m_ZoneShape.intValue;
            
            if (shape != GravityZone.ZoneShape.Custom) EditorGUILayout.PropertyField(m_Center, new GUIContent("Center"));

            float radius;
            float height;

            switch (shape)
            {
                case GravityZone.ZoneShape.Box:
                    EditorGUILayout.PropertyField(m_Size, new GUIContent("Size"));
                    EditorGUILayout.PropertyField(m_GravityDirection, new GUIContent("GravityDirection"));
                    break;
                case GravityZone.ZoneShape.Sphere:
                case GravityZone.ZoneShape.HalfSphere:
                case GravityZone.ZoneShape.QuarterSphere:
                    radius = EditorGUILayout.FloatField("Radius", m_Size.vector3Value.x);
                    //m_Size.vector3Value = Vector3.right * radius;
                    Vector3 sphereValue = m_Size.vector3Value;
                    sphereValue.x = radius;
                    m_Size.vector3Value = sphereValue;
                    m_GravityDirection.intValue = (int) GravityZone.GravityDirection.TowardsCenter;
                    break;
                case GravityZone.ZoneShape.Capsule:
                case GravityZone.ZoneShape.HalfCapsule:
                case GravityZone.ZoneShape.QuarterCapsule:
                    radius = EditorGUILayout.FloatField("Radius", m_Size.vector3Value.x);
                    height = EditorGUILayout.FloatField("Height", m_Size.vector3Value.y);
                    height = Mathf.Max(height, radius * 2f);
                    //m_Size.vector3Value = Vector3.right * radius + Vector3.up * height;
                    Vector3 capsuleValue = m_Size.vector3Value;
                    capsuleValue.x = radius;
                    capsuleValue.y = height;
                    m_Size.vector3Value = capsuleValue;
                    m_GravityDirection.intValue = (int) GravityZone.GravityDirection.TowardsCenter;
                    break;
                case GravityZone.ZoneShape.Cylinder:
                case GravityZone.ZoneShape.HalfCylinder:
                case GravityZone.ZoneShape.QuarterCylinder:
                    radius = EditorGUILayout.FloatField("Radius", m_Size.vector3Value.x);
                    height = EditorGUILayout.FloatField("Height", m_Size.vector3Value.y);
                    //m_Size.vector3Value = Vector3.right * radius + Vector3.up * height;
                    Vector3 cylinderValue = m_Size.vector3Value;
                    cylinderValue.x = radius;
                    cylinderValue.y = height;
                    m_Size.vector3Value = cylinderValue;
                    m_GravityDirection.intValue = (int) GravityZone.GravityDirection.TowardsCenter;
                    break;
                case GravityZone.ZoneShape.Custom:
                    EditorGUILayout.PropertyField(m_CustomZoneShapeMesh, new GUIContent("Custom Mesh"));
                    m_GravityDirection.intValue = (int) GravityZone.GravityDirection.TowardsCenter;
                    if (m_CustomZoneShapeMesh.objectReferenceValue == null)
                    {
                        Rect rect = EditorGUILayout.GetControlRect();
                        rect.x += EditorGUI.indentLevel * 15f;
                        rect.width -= EditorGUI.indentLevel * 15f;
                        EditorGUI.HelpBox(rect, "Custom Mesh cannot be null!", MessageType.Error);
                    }
                    break;
            }
        }
    }
}
#endif