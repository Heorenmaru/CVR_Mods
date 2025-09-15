using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEditor.Build;
using UnityEditor.Rendering;

namespace ABI.CCK.Scripts.Editor.ShaderProcessing
{
    public class StripAndroidShaders : IPreprocessShaders
    {
        public int callbackOrder => 0;

        public void OnProcessShader(Shader shader, ShaderSnippetData snippet, IList<ShaderCompilerData> data)
        {
            // TODO: Differentiate when building specifically for a CCK upload
            if (EditorUserBuildSettings.activeBuildTarget != BuildTarget.Android)
                return;
            
            // if shader is not mobile, nuke it
            // if (!shader.name.Contains("Mobile")) 
            //     data.Clear();
        }
    }
}