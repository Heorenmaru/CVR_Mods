using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEditor.Build;
using UnityEditor.Rendering;

namespace ABI.CCK.Scripts.Editor.ShaderProcessing
{
    public class StripPostProcessingShaders : IPreprocessShaders
    {
        public int callbackOrder => 0;

        public void OnProcessShader(Shader shader, ShaderSnippetData snippet, IList<ShaderCompilerData> data)
        {
            // TODO: Differentiate when building specifically for a CCK upload
            if (EditorUserBuildSettings.activeBuildTarget != BuildTarget.Android)
                return;

            // nuke post processing shaders
            if (shader.name.StartsWith("Hidden/PostProcessing"))
                data.Clear();
        }
    }
}