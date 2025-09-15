using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using Random = UnityEngine.Random;

namespace ABI.CCK.Components
{
    [AddComponentMenu("ChilloutVR/CVR Particle Sound")]
    [HelpURL("https://docs.abinteractive.net/cck/components/particle-sound/")]
    public class CVRParticleSound : MonoBehaviour, ICCK_Component
    {
        public new ParticleSystem particleSystem;
        
        [Header("Particle Spawn Sounds")]
        public AudioClip[] spawnSound;
        public float spawnPlaybackVolume = 1f;
        public AudioSource spawnAudioSourceReference;
        public float minSpawnAudioPitch = 1f;
        public float maxSpawnAudioPitch = 1f;
        
        [Header("Particle Die Sounds")]
        public AudioClip[] dieSound;
        public float diePlaybackVolume = 1f;
        public AudioSource dieAudioSourceReference;
        public float minDieAudioPitch = 1f;
        public float maxDieAudioPitch = 1f;
        
        private IDictionary<uint, ParticleSystem.Particle> _particles = new Dictionary<uint, ParticleSystem.Particle>();
        
        private void Update()
        {
            if (particleSystem == null) return;

            ParticleSystem.Particle[] currentParticles = new ParticleSystem.Particle[particleSystem.particleCount];
            particleSystem.GetParticles(currentParticles);

            ParticleChange particleChange = GetParticleChange(currentParticles);

            if (spawnSound.Length > 0)
            {
                foreach (ParticleSystem.Particle particleAdded in particleChange.Added)
                {
                    AudioSource.PlayClipAtPoint(spawnSound[Random.Range(0, spawnSound.Length)], particleAdded.position, spawnPlaybackVolume);
                }
            }

            if (dieSound.Length > 0)
            {
                foreach (ParticleSystem.Particle particleRemoved in particleChange.Removed)
                {
                    AudioSource.PlayClipAtPoint(dieSound[Random.Range(0, dieSound.Length)], particleRemoved.position, diePlaybackVolume);
                }
            }
        }

        private ParticleChange GetParticleChange(ParticleSystem.Particle[] currentParticles)
        {
            ParticleChange particleChange = new ParticleChange();

            foreach (ParticleSystem.Particle activeParticle in currentParticles)
            {
                if(_particles.TryGetValue(activeParticle.randomSeed, out _))
                {
                    _particles[activeParticle.randomSeed] = activeParticle;
                }
                else
                {
                    particleChange.Added.Add(activeParticle);
                    _particles.Add(activeParticle.randomSeed, activeParticle);
                }
            }

            var updatedParticleAsDictionary = currentParticles.ToDictionary(x => x.randomSeed, x => x);
            var dictionaryKeysAsList = _particles.Keys.ToList();

            foreach (uint dictionaryKey in dictionaryKeysAsList)
            {
                if (updatedParticleAsDictionary.ContainsKey(dictionaryKey) == false)
                {
                    particleChange.Removed.Add(_particles[dictionaryKey]);
                    _particles.Remove(dictionaryKey);
                }
            }
            
            return particleChange;
        }
        
        private class ParticleChange
        {
            public IList<ParticleSystem.Particle> Added = new List<ParticleSystem.Particle>();
            public IList<ParticleSystem.Particle> Removed = new List<ParticleSystem.Particle>();
        }
    }
}