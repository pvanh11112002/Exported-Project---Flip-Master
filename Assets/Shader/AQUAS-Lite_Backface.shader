Shader "AQUAS-Lite/Backface" {
	Properties {
		[Header(Wave Options)] [NoScaleOffset] _NormalTexture ("Normal Texture", 2D) = "bump" {}
		_NormalTiling ("Normal Tiling", Range(0.01, 2)) = 1
		_NormalStrength ("Normal Strength", Range(0, 2)) = 0
		_WaveSpeed ("Wave Speed", Float) = 0
		_Refraction ("Refraction", Range(0, 1)) = 0.1
		_DeepWaterColor ("Deep Water Color", Vector) = (0,0,0,0)
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
	Fallback "Diffuse"
}