using System;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
[AddComponentMenu("ChilloutVR/CVR Blitter")]
[HelpURL("https://docs.abinteractive.net/cck/components/blitter/")]
public class CVRBlitter : MonoBehaviour
{
    public RenderTexture originTexture;
    public RenderTexture destinationTexture;
    public Material blitMaterial;

    public bool clearEveryFrame;

    private bool _hasRendered;

    [NonSerialized]
    private bool _isManaged ;

    public List<RenderTexture> renderTextures = new();
    public short[] index = new short[6] { -1, -1, -1, -1, -1, -1 };


    private void Start()
    {
        OnEnable();
    }

    private void OnEnable()
    {
        for (int i = 0; i < renderTextures.Count; i++)
        {
            if (renderTextures[i] == null)
            {
                enabled = false;
                return;
            }
        }

        foreach (var rt in renderTextures)
        {
            if (!rt.enableRandomWrite)
            {
                rt.Release();
                rt.enableRandomWrite = true;
                rt.Create();
            }
        }

        if (!_isManaged)
        {
            Camera.onPreRender += MyOnPreRender;
        }
    }
    
    public void SetupBlitterForExternalControl()
    {
        _isManaged = true;
        Camera.onPreRender -= MyOnPreRender;
    }


    private void OnDisable()
    {
        Camera.onPreRender -= MyOnPreRender;
    }

    private void OnDestroy()
    {
        OnDisable();
    }

    private void Update()
    {
        _hasRendered = false;
    }

    public void MyOnPreRender(Camera cam)
    {
        if (!enabled || _hasRendered || !gameObject.activeInHierarchy)
            return;

        if (originTexture == null
            || blitMaterial == null)
        {
            enabled = false;
            return;
        }

        _hasRendered = true;

        if (clearEveryFrame)
        {
            RenderTexture rt = RenderTexture.active;
            RenderTexture.active = destinationTexture;
            GL.Clear(true, true, Color.clear);
            RenderTexture.active = rt;
        }

        for (int i = 0; i < renderTextures.Count; i++)
        {
            Graphics.SetRandomWriteTarget(index[i], renderTextures[i]);
        }

        if (destinationTexture == null)
        {
            Graphics.Blit(originTexture, blitMaterial);
        }
        else if (originTexture == destinationTexture)
        {
            RenderTexture temp = RenderTexture.GetTemporary(destinationTexture.descriptor);
            Graphics.Blit(originTexture, temp, blitMaterial);
            Graphics.CopyTexture(temp, destinationTexture);
            RenderTexture.ReleaseTemporary(temp);
        }
        else
        {
            Graphics.Blit(originTexture, destinationTexture, blitMaterial);
        }

        Graphics.ClearRandomWriteTargets();
    }
    
    private void OnValidate()
    {
        if (renderTextures.Count > index.Length)
            renderTextures.RemoveRange(index.Length, renderTextures.Count - index.Length);
        var seenTargets = new HashSet<short>();
        for (int i = renderTextures.Count - 1; i >= 0; i--)
        {
            if (!seenTargets.Add(index[i]))
                index[i] = -1;
        }

        for (int j = 0; j < renderTextures.Count; j++)
        {
            if (index[j] < 2 || index[j] > index.Length + 2)
                index[j] = -1;
        }
    }
}