using System.Collections.Generic;
using JetBrains.Annotations;
using UnityEngine;

namespace ABI.CCK.Components
{
    [AddComponentMenu("ChilloutVR/CVR Audio Driver")]
    [HelpURL("https://docs.abinteractive.net/cck/components/audio-driver/")]
    public class CVRAudioDriver : MonoBehaviour, ICCK_Component
    {
        public AudioSource audioSource;
        
        [SerializeField] 
        public List<AudioClip> audioClips = new List<AudioClip>();
        public int selectedAudioClip;
        public bool playOnSwitch = true;

        private int _selectedAudioClip;

        #region Unity Events
        
        private void OnValidate() =>  CheckAndUpdateAudioClip(); // Editor testing
        private void OnDidApplyAnimationProperties() => CheckAndUpdateAudioClip();

        #endregion

        #region Public Methods

        [PublicAPI]
        public void PlaySound(int index)
            => SetAndMaybePlay(index);

        [PublicAPI]
        public void PlaySound()
        {
            if (audioSource != null && audioSource.isActiveAndEnabled) 
                audioSource.Play();
        }
        
        [PublicAPI]
        public void PlayNext()
        {
            if (_selectedAudioClip + 1 >= audioClips.Count)
                PlaySound(0);
            else
                PlaySound(_selectedAudioClip + 1);
        }

        [PublicAPI]
        public void PlayPrev()
        {
            if (_selectedAudioClip == 0)
                PlaySound(audioClips.Count - 1);
            else
                PlaySound(_selectedAudioClip - 1);
        }

        [PublicAPI]
        public void SelectRandomSound()
            => SetAndMaybePlay(Random.Range(0, audioClips.Count));

        #endregion

        #region Private Methods

        private void CheckAndUpdateAudioClip()
        {
            if (selectedAudioClip != _selectedAudioClip)
                SetAndMaybePlay(selectedAudioClip);
        }

        private void SetAndMaybePlay(int index)
        {
            if (SetAudioClip(index) && playOnSwitch) 
                PlaySound();
        }
        
        private bool SetAudioClip(int index)
        {
            _selectedAudioClip = index;
            
            if (index >= audioClips.Count 
                || index < 0) 
                return false;

            if (audioClips[index] == null 
                || audioSource == null) 
                return false;
            
            audioSource.clip = audioClips[index];
            return true;
        }

        #endregion
    }
}