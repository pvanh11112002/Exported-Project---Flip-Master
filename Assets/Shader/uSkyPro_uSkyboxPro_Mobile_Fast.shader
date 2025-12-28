Shader "uSkyPro/uSkyboxPro_Mobile_Fast" {
	Properties {
		[NoScaleOffset] _MoonSampler ("Moon", 2D) = "black" {}
		[NoScaleOffset] _OuterSpaceCube ("Outer Space Cubemap", Cube) = "black" {}
		[HideInInspector] _turbidity ("Turbidity factor", Range(1, 10)) = 1
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