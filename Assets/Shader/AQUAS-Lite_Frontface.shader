Shader "AQUAS-Lite/Frontface" {
	Properties {
		[Header(Wave Options)] [NoScaleOffset] _NormalTexture ("Normal Texture", 2D) = "bump" {}
		_NormalTiling ("Normal Tiling", Range(0.01, 2)) = 1
		_NormalStrength ("Normal Strength", Range(0, 2)) = 0
		_WaveSpeed ("Wave Speed", Float) = 0
		[Header(Color Options)] _MainColor ("Main Color", Vector) = (0,0.4867925,0.6792453,0)
		_DeepWaterColor ("Deep Water Color", Vector) = (0.5,0.2712264,0.2712264,0)
		_Density ("Density", Range(0, 1)) = 1
		_Fade ("Fade", Float) = 0
		[Header(Transparency Options)] _DepthTransparency ("Depth Transparency", Float) = 0
		_TransparencyFade ("Transparency Fade", Float) = 0
		_Refraction ("Refraction", Range(0, 1)) = 0.1
		[Header(Lighting Options)] _Specular ("Specular", Float) = 0
		_SpecularColor ("Specular Color", Vector) = (0,0,0,0)
		_Gloss ("Gloss", Float) = 0
		_LightWrapping ("Light Wrapping", Range(0, 2)) = 0
		[Header(Foam Options)] [NoScaleOffset] _FoamTexture ("Foam Texture", 2D) = "white" {}
		_FoamTiling ("Foam Tiling", Range(0, 2)) = 0
		_FoamVisibility ("Foam Visibility", Range(0, 1)) = 0
		_FoamBlend ("Foam Blend", Float) = 0
		_FoamColor ("Foam Color", Vector) = (0.8773585,0,0,0)
		_FoamContrast ("Foam Contrast", Range(0, 0.5)) = 0
		_FoamIntensity ("Foam Intensity", Float) = 0.21
		_FoamSpeed ("Foam Speed", Float) = 0.1
		[Header(Reflection Options)] [Toggle] _EnableRealtimeReflections ("Enable Realtime Reflections", Float) = 1
		_RealtimeReflectionIntensity ("Realtime Reflection Intensity", Range(0, 1)) = 0
		[Toggle] _EnableProbeRelfections ("Enable Probe Relfections", Float) = 1
		_ProbeReflectionIntensity ("Probe Reflection Intensity", Range(0, 1)) = 0
		_Distortion ("Distortion", Range(0, 1)) = 0
		[HideInInspector] _ReflectionTex ("Reflection Tex", 2D) = "white" {}
		[Header(Distance Options)] _MediumTilingDistance ("Medium Tiling Distance", Float) = 0
		_FarTilingDistance ("Far Tiling Distance", Float) = 0
		_DistanceFade ("Distance Fade", Float) = 0
		[HideInInspector] __dirty ("", Float) = 1
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = 1;
		}
		ENDCG
	}
}