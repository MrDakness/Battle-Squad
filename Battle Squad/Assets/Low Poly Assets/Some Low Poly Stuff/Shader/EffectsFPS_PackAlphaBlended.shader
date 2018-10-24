Shader "Effects/FPS_Pack/AlphaBlended" {
	Properties {
		_TintColor ("Tint Color", Vector) = (0.5,0.5,0.5,0.5)
		_ColorStrength ("Color strength", Float) = 1
		_MainTex ("Particle Texture", 2D) = "white" {}
		_InvFade ("Soft Particles Factor", Float) = 0.5
	}
	SubShader {
		Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
		Pass {
			Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
			Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
			ZWrite Off
			Cull Off
			GpuProgramID 3569
			Program "vp" {
				SubProgram "d3d11 " {
					"!!DX11VertexSM40
					//
					// Generated by Microsoft (R) D3D Shader Disassembler
					//
					//
					// Input signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// POSITION                 0   xyzw        0     NONE   float   xyz 
					// COLOR                    0   xyzw        1     NONE   float   xyzw
					// TEXCOORD                 0   xy          2     NONE   float   xy  
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_Position              0   xyzw        0      POS   float   xyzw
					// COLOR                    0   xyzw        1     NONE   float   xyzw
					// TEXCOORD                 0   xy          2     NONE   float   xy  
					//
					vs_4_0
					dcl_constantbuffer CB0[6], immediateIndexed
					dcl_constantbuffer CB1[4], immediateIndexed
					dcl_constantbuffer CB2[21], immediateIndexed
					dcl_input v0.xyz
					dcl_input v1.xyzw
					dcl_input v2.xy
					dcl_output_siv o0.xyzw, position
					dcl_output o1.xyzw
					dcl_output o2.xy
					dcl_temps 2
					mul r0.xyzw, v0.yyyy, cb1[1].xyzw
					mad r0.xyzw, cb1[0].xyzw, v0.xxxx, r0.xyzw
					mad r0.xyzw, cb1[2].xyzw, v0.zzzz, r0.xyzw
					add r0.xyzw, r0.xyzw, cb1[3].xyzw
					mul r1.xyzw, r0.yyyy, cb2[18].xyzw
					mad r1.xyzw, cb2[17].xyzw, r0.xxxx, r1.xyzw
					mad r1.xyzw, cb2[19].xyzw, r0.zzzz, r1.xyzw
					mad o0.xyzw, cb2[20].xyzw, r0.wwww, r1.xyzw
					mov o1.xyzw, v1.xyzw
					mad o2.xy, v2.xyxx, cb0[5].xyxx, cb0[5].zwzz
					ret 
					// Approximately 0 instruction slots used"
				}
				SubProgram "d3d11 " {
					Keywords { "SOFTPARTICLES_ON" }
					"!!DX11VertexSM40
					//
					// Generated by Microsoft (R) D3D Shader Disassembler
					//
					//
					// Input signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// POSITION                 0   xyzw        0     NONE   float   xyz 
					// COLOR                    0   xyzw        1     NONE   float   xyzw
					// TEXCOORD                 0   xy          2     NONE   float   xy  
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_Position              0   xyzw        0      POS   float   xyzw
					// COLOR                    0   xyzw        1     NONE   float   xyzw
					// TEXCOORD                 0   xy          2     NONE   float   xy  
					// TEXCOORD                 1   xyzw        3     NONE   float   xyzw
					//
					vs_4_0
					dcl_constantbuffer CB0[6], immediateIndexed
					dcl_constantbuffer CB1[6], immediateIndexed
					dcl_constantbuffer CB2[4], immediateIndexed
					dcl_constantbuffer CB3[21], immediateIndexed
					dcl_input v0.xyz
					dcl_input v1.xyzw
					dcl_input v2.xy
					dcl_output_siv o0.xyzw, position
					dcl_output o1.xyzw
					dcl_output o2.xy
					dcl_output o3.xyzw
					dcl_temps 2
					mul r0.xyzw, v0.yyyy, cb2[1].xyzw
					mad r0.xyzw, cb2[0].xyzw, v0.xxxx, r0.xyzw
					mad r0.xyzw, cb2[2].xyzw, v0.zzzz, r0.xyzw
					add r0.xyzw, r0.xyzw, cb2[3].xyzw
					mul r1.xyzw, r0.yyyy, cb3[18].xyzw
					mad r1.xyzw, cb3[17].xyzw, r0.xxxx, r1.xyzw
					mad r1.xyzw, cb3[19].xyzw, r0.zzzz, r1.xyzw
					mad r1.xyzw, cb3[20].xyzw, r0.wwww, r1.xyzw
					mov o0.xyzw, r1.xyzw
					mov o1.xyzw, v1.xyzw
					mad o2.xy, v2.xyxx, cb0[5].xyxx, cb0[5].zwzz
					mul r0.y, r0.y, cb3[10].z
					mad r0.x, cb3[9].z, r0.x, r0.y
					mad r0.x, cb3[11].z, r0.z, r0.x
					mad r0.x, cb3[12].z, r0.w, r0.x
					mov o3.z, -r0.x
					mul r0.x, r1.y, cb1[5].x
					mul r0.w, r0.x, l(0.500000)
					mul r0.xz, r1.xxwx, l(0.500000, 0.000000, 0.500000, 0.000000)
					mov o3.w, r1.w
					add o3.xy, r0.zzzz, r0.xwxx
					ret 
					// Approximately 0 instruction slots used"
				}
			}
			Program "fp" {
				SubProgram "d3d11 " {
					"!!DX11PixelSM40
					//
					// Generated by Microsoft (R) D3D Shader Disassembler
					//
					//
					// Input signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_Position              0   xyzw        0      POS   float       
					// COLOR                    0   xyzw        1     NONE   float   xyzw
					// TEXCOORD                 0   xy          2     NONE   float   xy  
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_Target                0   xyzw        0   TARGET   float   xyzw
					//
					ps_4_0
					dcl_constantbuffer CB0[5], immediateIndexed
					dcl_sampler s0, mode_default
					dcl_resource_texture2d (float,float,float,float) t0
					dcl_input_ps linear v1.xyzw
					dcl_input_ps linear v2.xy
					dcl_output o0.xyzw
					dcl_temps 2
					sample r0.xyzw, v2.xyxx, t0.xyzw, s0
					add r1.xyzw, v1.xyzw, v1.xyzw
					mul r0.xyzw, r0.xyzw, r1.xyzw
					mul r0.xyzw, r0.xyzw, cb0[2].xyzw
					mov_sat o0.w, r0.w
					mul o0.xyz, r0.xyzx, cb0[4].xxxx
					ret 
					// Approximately 0 instruction slots used"
				}
				SubProgram "d3d11 " {
					Keywords { "SOFTPARTICLES_ON" }
					"!!DX11PixelSM40
					//
					// Generated by Microsoft (R) D3D Shader Disassembler
					//
					//
					// Input signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_Position              0   xyzw        0      POS   float       
					// COLOR                    0   xyzw        1     NONE   float   xyzw
					// TEXCOORD                 0   xy          2     NONE   float   xy  
					// TEXCOORD                 1   xyzw        3     NONE   float   xyzw
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_Target                0   xyzw        0   TARGET   float   xyzw
					//
					ps_4_0
					dcl_constantbuffer CB0[7], immediateIndexed
					dcl_constantbuffer CB1[8], immediateIndexed
					dcl_sampler s0, mode_default
					dcl_sampler s1, mode_default
					dcl_resource_texture2d (float,float,float,float) t0
					dcl_resource_texture2d (float,float,float,float) t1
					dcl_input_ps linear v1.xyzw
					dcl_input_ps linear v2.xy
					dcl_input_ps linear v3.xyzw
					dcl_output o0.xyzw
					dcl_temps 2
					lt r0.x, l(0.000100), cb0[6].x
					if_nz r0.x
					  div r0.xy, v3.xyxx, v3.wwww
					  sample r0.xyzw, r0.xyxx, t0.xyzw, s1
					  mad r0.x, cb1[7].z, r0.x, cb1[7].w
					  div r0.x, l(1.000000, 1.000000, 1.000000, 1.000000), r0.x
					  add r0.x, r0.x, -v3.z
					  mul_sat r0.x, r0.x, cb0[6].x
					  mul r0.x, r0.x, v1.w
					else 
					  mov r0.x, v1.w
					endif 
					sample r1.xyzw, v2.xyxx, t1.xyzw, s0
					mov r0.yzw, v1.xxyz
					add r0.xyzw, r0.yzwx, r0.yzwx
					mul r0.xyzw, r1.xyzw, r0.xyzw
					mul r0.xyzw, r0.xyzw, cb0[2].xyzw
					mov_sat o0.w, r0.w
					mul o0.xyz, r0.xyzx, cb0[4].xxxx
					ret 
					// Approximately 0 instruction slots used"
				}
			}
		}
	}
}