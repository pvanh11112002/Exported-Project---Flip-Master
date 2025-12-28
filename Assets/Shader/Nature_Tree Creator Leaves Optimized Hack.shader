Shader "Nature/Tree Creator Leaves Optimized Hack" {
	Properties {
		_Color ("Main Color", Vector) = (1,1,1,1)
		_TranslucencyColor ("Translucency Color", Vector) = (0.73,0.85,0.41,1)
		_Cutoff ("Alpha cutoff", Range(0, 1)) = 0.3
		_TranslucencyViewDependency ("View dependency", Range(0, 1)) = 0.7
		_ShadowStrength ("Shadow Strength", Range(0, 1)) = 0.8
		_ShadowOffsetScale ("Shadow Offset Scale", Float) = 1
		_MainTex ("Base (RGB) Alpha (A)", 2D) = "white" {}
		_ShadowTex ("Shadow (RGB)", 2D) = "white" {}
		_BumpSpecMap ("Normalmap (GA) Spec (R) Shadow Offset (B)", 2D) = "bump" {}
		_TranslucencyMap ("Trans (B) Gloss(A)", 2D) = "white" {}
		[HideInInspector] _TreeInstanceColor ("TreeInstanceColor", Vector) = (1,1,1,1)
		[HideInInspector] _TreeInstanceScale ("TreeInstanceScale", Vector) = (1,1,1,1)
		[HideInInspector] _SquashAmount ("Squash", Float) = 1
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		fixed4 _Color;
		struct Input
		{
			float2 uv_MainTex;
		};
		
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
}