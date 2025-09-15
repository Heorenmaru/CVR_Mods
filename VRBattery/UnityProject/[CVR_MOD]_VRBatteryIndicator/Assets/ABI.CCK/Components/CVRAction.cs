using UnityEngine;

namespace ABI.CCK.Components
{
    [AddComponentMenu("")]
    [HelpURL("https://docs.abinteractive.net/cck/")]
    public class CVRAction : MonoBehaviour, ICCK_Component
    {
        [Header("Meta")]
        public string actionName;
        [Header("Objects")]
        public GameObject[] actionObjects;
    }
}
