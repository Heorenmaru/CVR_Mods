using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace ABI.CCK.Components
{
    [AddComponentMenu("ChilloutVR/CVR Damage Raycaster")]
    [RequireComponent(typeof(Damage), typeof(ParticleSystem))]
    public class CVRDamageRaycaster : MonoBehaviour
    {
        public bool onlyCoverFromEmitter = false;
        
        [NonSerialized] private ParticleSystem _particleSystem;
        
        [NonSerialized] private readonly IDictionary<uint, ParticleSystem.Particle> _particles = new Dictionary<uint, ParticleSystem.Particle>();
        [NonSerialized] private int _currentParticlesCount = -1;
        [NonSerialized] private ParticleSystem.Particle[] _currentParticles;
        [NonSerialized] private readonly ParticleChange _particleChange = new();
        [NonSerialized] private readonly Dictionary<uint, ParticleSystem.Particle> _updatedParticleAsDictionary = new();

        [NonSerialized] private RaycastHit _hit;
        [NonSerialized] private ObjectHealth _objectHealth;
        [NonSerialized] private Vector3 _rayOrigin;
        [NonSerialized] private float _length;
        
        private void Start()
        {
            _particleSystem = GetComponent<ParticleSystem>();
        }

        private void Update()
        {
            if (_particleSystem.particleCount != _currentParticlesCount)
            {
                _currentParticlesCount = _particleSystem.particleCount;
                _currentParticles = new ParticleSystem.Particle[_currentParticlesCount];
            }

            _particleSystem.GetParticles(_currentParticles);

            ParticleChange particleChange = GetParticleChange(_currentParticles);
            
            foreach (ParticleSystem.Particle particleAdded in particleChange.Added)
            {
                switch (_particleSystem.shape.shapeType)
                {
                    default:
                        if (LinePlaneIntersection(out _rayOrigin, particleAdded.position,
                                particleAdded.velocity.normalized, transform.forward, transform.position, out _length))
                        {
                            HandleRaycast(_rayOrigin, particleAdded.velocity.normalized, _length);
                        }
                        else
                        {
                            HandleRaycast(transform.position, particleAdded.velocity.normalized, _length);
                        }
                        break;
                    case ParticleSystemShapeType.Sphere:
                    case ParticleSystemShapeType.Hemisphere:
                    case ParticleSystemShapeType.Circle:
                        HandleRaycast(transform.position, particleAdded.velocity.normalized, _length);
                        break;
                }
            }
        }

        private void HandleRaycast(Vector3 position, Vector3 direction, float length)
        {
            if (onlyCoverFromEmitter)
                Debug.DrawRay(position, direction * Mathf.Abs(length), Color.red, 1f);
            else
                Debug.DrawRay(position, direction * 100f, Color.red, 1f);
        }
        
        private ParticleChange GetParticleChange(ParticleSystem.Particle[] currentParticles)
        {
            _particleChange.Clear();

            foreach (ParticleSystem.Particle activeParticle in currentParticles)
            {
                if(_particles.TryGetValue(activeParticle.randomSeed, out ParticleSystem.Particle _))
                {
                    _particles[activeParticle.randomSeed] = activeParticle;
                }
                else
                {
                    if (!_particleChange.Added.Contains(activeParticle)) _particleChange.Added.Add(activeParticle);
                    _particles.TryAdd(activeParticle.randomSeed, activeParticle);
                }
            }

            UpdateRandomSeedDict(currentParticles);
            List<uint> dictionaryKeysAsList = _particles.Keys.ToList();

            foreach (uint dictionaryKey in dictionaryKeysAsList)
            {
                if (_updatedParticleAsDictionary.ContainsKey(dictionaryKey)) continue;
                if (!_particleChange.Removed.Contains(_particles[dictionaryKey])) _particleChange.Removed.Add(_particles[dictionaryKey]);
                if (_particles.ContainsKey(dictionaryKey)) _particles.Remove(dictionaryKey);
            }
            
            return _particleChange;
        }
        
        private void UpdateRandomSeedDict(ParticleSystem.Particle[] arr)
        {
            _updatedParticleAsDictionary.Clear();
            foreach (ParticleSystem.Particle particle in arr)
            {
                uint randomSeed = particle.randomSeed;
                if (_updatedParticleAsDictionary.TryGetValue(randomSeed, out ParticleSystem.Particle _))
                    _updatedParticleAsDictionary[randomSeed] = particle;
                else
                    _updatedParticleAsDictionary.TryAdd(randomSeed, particle);
            }
        }
        
        public static bool LinePlaneIntersection(out Vector3 intersection, Vector3 linePoint, Vector3 lineVec, Vector3 planeNormal, Vector3 planePoint, out float length)
        {
            float dotNumerator;
            float dotDenominator;
            Vector3 vector;
            intersection = Vector3.zero;
            length = 0f;

            //calculate the distance between the linePoint and the line-plane intersection point
            dotNumerator = Vector3.Dot((planePoint - linePoint), planeNormal);
            dotDenominator = Vector3.Dot(lineVec, planeNormal);

            if (dotDenominator != 0.0f)
            {
                length = dotNumerator / dotDenominator;

                vector = lineVec.normalized * length;

                intersection = linePoint + vector;

                return true;
            }
            
            return false;
        }
        
        private void OnDrawGizmos()
        {
            Gizmos.DrawIcon(transform.position, "../ABI.CCK/GUIAssets/Gizmos/CVRDamageRaycast", true);
        }
        
        private class ParticleChange
        {
            public readonly IList<ParticleSystem.Particle> Added = new List<ParticleSystem.Particle>();
            public readonly IList<ParticleSystem.Particle> Removed = new List<ParticleSystem.Particle>();

            public void Clear()
            {
                Added.Clear();
                Removed.Clear();
            }
        }
    }
}