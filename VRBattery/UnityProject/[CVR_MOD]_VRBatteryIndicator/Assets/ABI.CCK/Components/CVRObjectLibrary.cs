using System.Collections.Generic;
using UnityEngine;

namespace ABI.CCK.Components
{
    [AddComponentMenu("")]
    [HelpURL("https://docs.abinteractive.net/cck/")]
    public class CVRObjectLibrary : MonoBehaviour, ICCK_Component
    {
        public List<CVRObjectCatalogCategory> objectCatalogCategories = new List<CVRObjectCatalogCategory>();
        public List<CVRObjectCatalogEntry> objectCatalogEntries = new List<CVRObjectCatalogEntry>();
    }
}