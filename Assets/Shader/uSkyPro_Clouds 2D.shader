Shader "uSkyPro/Clouds 2D" {
	Properties {
		[Header(Lighting)] [Enum(Sky Color,0,Equator Color,1)] _AmbientSource ("Ambient Source", Float) = 1
		_Attenuation ("Attenuation", Range(0, 5)) = 0.6
		_StepSize ("Step size", Range(0.001, 0.02)) = 0.004
		_AlphaSaturation ("Alpha saturation", Range(1, 10)) = 2
		_LightColorMultiplier ("Light Color multiplier", Range(0, 10)) = 4
		_SkyColorMultiplier ("Sky Color multiplier", Range(0, 10)) = 1.5
		_Mask ("Clouds density", Range(0, 4)) = 1
		_ScatterMultiplier ("Scatter multiplier", Range(0, 10)) = 1
		[Header(Texture)] [Enum(Rectangular,0,Polar,1)] _Mapping ("Mapping mode", Float) = 0
		_CloudSampler ("Clouds Texture (R)", 2D) = "white" {}
		[Header(Animation)] _RotateSpeed ("Rotate speed", Range(-1, 1)) = 0
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
	//CustomEditor "uSkyClouds2DShaderGUI"
}