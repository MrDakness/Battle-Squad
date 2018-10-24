Shader "Hidden/Post FX/Lut Generator" {
	Properties {
	}
	SubShader {
		Pass {
			ZTest Always
			ZWrite Off
			Cull Off
			GpuProgramID 32179
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
					// TEXCOORD                 0   xyzw        1     NONE   float   xy  
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_POSITION              0   xyzw        0      POS   float   xyzw
					// TEXCOORD                 0   xy          1     NONE   float   xy  
					// TEXCOORD                 1     zw        1     NONE   float     zw
					//
					vs_4_0
					dcl_constantbuffer CB0[4], immediateIndexed
					dcl_constantbuffer CB1[4], immediateIndexed
					dcl_constantbuffer CB2[21], immediateIndexed
					dcl_input v0.xyz
					dcl_input v1.xy
					dcl_output_siv o0.xyzw, position
					dcl_output o1.xy
					dcl_output o1.zw
					dcl_temps 2
					mul r0.xyzw, v0.yyyy, cb1[1].xyzw
					mad r0.xyzw, cb1[0].xyzw, v0.xxxx, r0.xyzw
					mad r0.xyzw, cb1[2].xyzw, v0.zzzz, r0.xyzw
					add r0.xyzw, r0.xyzw, cb1[3].xyzw
					mul r1.xyzw, r0.yyyy, cb2[18].xyzw
					mad r1.xyzw, cb2[17].xyzw, r0.xxxx, r1.xyzw
					mad r1.xyzw, cb2[19].xyzw, r0.zzzz, r1.xyzw
					mad o0.xyzw, cb2[20].xyzw, r0.wwww, r1.xyzw
					mad o1.zw, v1.xxxy, cb0[3].xxxy, cb0[3].zzzw
					mov o1.xy, v1.xyxx
					ret 
					// Approximately 0 instruction slots used"
				}
				SubProgram "d3d11 " {
					Keywords { "TONEMAPPING_NEUTRAL" }
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
					// TEXCOORD                 0   xyzw        1     NONE   float   xy  
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_POSITION              0   xyzw        0      POS   float   xyzw
					// TEXCOORD                 0   xy          1     NONE   float   xy  
					// TEXCOORD                 1     zw        1     NONE   float     zw
					//
					vs_4_0
					dcl_constantbuffer CB0[4], immediateIndexed
					dcl_constantbuffer CB1[4], immediateIndexed
					dcl_constantbuffer CB2[21], immediateIndexed
					dcl_input v0.xyz
					dcl_input v1.xy
					dcl_output_siv o0.xyzw, position
					dcl_output o1.xy
					dcl_output o1.zw
					dcl_temps 2
					mul r0.xyzw, v0.yyyy, cb1[1].xyzw
					mad r0.xyzw, cb1[0].xyzw, v0.xxxx, r0.xyzw
					mad r0.xyzw, cb1[2].xyzw, v0.zzzz, r0.xyzw
					add r0.xyzw, r0.xyzw, cb1[3].xyzw
					mul r1.xyzw, r0.yyyy, cb2[18].xyzw
					mad r1.xyzw, cb2[17].xyzw, r0.xxxx, r1.xyzw
					mad r1.xyzw, cb2[19].xyzw, r0.zzzz, r1.xyzw
					mad o0.xyzw, cb2[20].xyzw, r0.wwww, r1.xyzw
					mad o1.zw, v1.xxxy, cb0[3].xxxy, cb0[3].zzzw
					mov o1.xy, v1.xyxx
					ret 
					// Approximately 0 instruction slots used"
				}
				SubProgram "d3d11 " {
					Keywords { "TONEMAPPING_FILMIC" }
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
					// TEXCOORD                 0   xyzw        1     NONE   float   xy  
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_POSITION              0   xyzw        0      POS   float   xyzw
					// TEXCOORD                 0   xy          1     NONE   float   xy  
					// TEXCOORD                 1     zw        1     NONE   float     zw
					//
					vs_4_0
					dcl_constantbuffer CB0[4], immediateIndexed
					dcl_constantbuffer CB1[4], immediateIndexed
					dcl_constantbuffer CB2[21], immediateIndexed
					dcl_input v0.xyz
					dcl_input v1.xy
					dcl_output_siv o0.xyzw, position
					dcl_output o1.xy
					dcl_output o1.zw
					dcl_temps 2
					mul r0.xyzw, v0.yyyy, cb1[1].xyzw
					mad r0.xyzw, cb1[0].xyzw, v0.xxxx, r0.xyzw
					mad r0.xyzw, cb1[2].xyzw, v0.zzzz, r0.xyzw
					add r0.xyzw, r0.xyzw, cb1[3].xyzw
					mul r1.xyzw, r0.yyyy, cb2[18].xyzw
					mad r1.xyzw, cb2[17].xyzw, r0.xxxx, r1.xyzw
					mad r1.xyzw, cb2[19].xyzw, r0.zzzz, r1.xyzw
					mad o0.xyzw, cb2[20].xyzw, r0.wwww, r1.xyzw
					mad o1.zw, v1.xxxy, cb0[3].xxxy, cb0[3].zzzw
					mov o1.xy, v1.xyxx
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
					// SV_POSITION              0   xyzw        0      POS   float       
					// TEXCOORD                 0   xy          1     NONE   float   xy  
					// TEXCOORD                 1     zw        1     NONE   float       
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_Target                0   xyzw        0   TARGET   float   xyzw
					//
					ps_4_0
					dcl_constantbuffer CB0[18], immediateIndexed
					dcl_sampler s0, mode_default
					dcl_resource_texture2d (float,float,float,float) t0
					dcl_input_ps linear v1.xy
					dcl_output o0.xyzw
					dcl_temps 4
					add r0.yz, v1.xxyx, -cb0[17].yyzy
					mul r1.x, r0.y, cb0[17].x
					frc r0.x, r1.x
					div r1.x, r0.x, cb0[17].x
					add r0.w, r0.y, -r1.x
					mad r0.xyz, r0.xzwx, cb0[17].wwww, l(-0.386036, -0.386036, -0.386036, 0.000000)
					mul r0.xyz, r0.xyzx, l(13.605482, 13.605482, 13.605482, 0.000000)
					exp r0.xyz, r0.xyzx
					add r0.xyz, r0.xyzx, l(-0.047996, -0.047996, -0.047996, 0.000000)
					mul r0.xyz, r0.xyzx, l(0.180000, 0.180000, 0.180000, 0.000000)
					dp3 r1.x, l(0.439701, 0.382978, 0.177335, 0.000000), r0.xyzx
					dp3 r1.y, l(0.089792, 0.813423, 0.096762, 0.000000), r0.xyzx
					dp3 r1.z, l(0.017544, 0.111544, 0.870704, 0.000000), r0.xyzx
					max r0.xyz, r1.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
					min r0.xyz, r0.xyzx, l(65504.000000, 65504.000000, 65504.000000, 0.000000)
					mad r1.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.000015, 0.000015, 0.000015, 0.000000)
					log r1.xyz, r1.xyzx
					add r1.xyz, r1.xyzx, l(9.720000, 9.720000, 9.720000, 0.000000)
					mul r1.xyz, r1.xyzx, l(0.057078, 0.057078, 0.057078, 0.000000)
					log r2.xyz, r0.xyzx
					lt r0.xyz, r0.xyzx, l(0.000031, 0.000031, 0.000031, 0.000000)
					add r2.xyz, r2.xyzx, l(9.720000, 9.720000, 9.720000, 0.000000)
					mul r2.xyz, r2.xyzx, l(0.057078, 0.057078, 0.057078, 0.000000)
					movc r0.xyz, r0.xyzx, r1.xyzx, r2.xyzx
					mad r0.xyz, r0.xyzx, cb0[10].xyzx, cb0[8].xyzx
					log r1.xyz, r0.xyzx
					mul r1.xyz, r1.xyzx, cb0[9].xyzx
					exp r1.xyz, r1.xyzx
					lt r2.xyz, l(0.000000, 0.000000, 0.000000, 0.000000), r0.xyzx
					movc r0.xyz, r2.xyzx, r1.xyzx, r0.xyzx
					ge r0.w, r0.y, r0.z
					and r0.w, r0.w, l(0x3f800000)
					mov r1.xy, r0.zyzz
					add r2.xy, r0.yzyy, -r1.xyxx
					mov r1.zw, l(0,0,-1.000000,0.666667)
					mov r2.zw, l(0,0,1.000000,-1.000000)
					mad r1.xyzw, r0.wwww, r2.xywz, r1.xywz
					ge r0.w, r0.x, r1.x
					and r0.w, r0.w, l(0x3f800000)
					mov r2.z, r1.w
					mov r1.w, r0.x
					mov r2.xyw, r1.wywx
					add r2.xyzw, -r1.xyzw, r2.xyzw
					mad r1.xyzw, r0.wwww, r2.xyzw, r1.xyzw
					min r0.w, r1.y, r1.w
					add r0.w, -r0.w, r1.x
					mad r2.x, r0.w, l(6.000000), l(0.000100)
					add r1.y, -r1.y, r1.w
					div r1.y, r1.y, r2.x
					add r1.y, r1.y, r1.z
					add r1.x, r1.x, l(0.000100)
					div r2.z, r0.w, r1.x
					mov r2.x, |r1.y|
					mov r2.yw, l(0,0.250000,0,0.250000)
					sample r1.xyzw, r2.xyxx, t0.yxzw, s0
					sample r2.xyzw, r2.zwzz, t0.zxyw, s0
					mov_sat r2.x, r2.x
					add r0.w, r2.x, r2.x
					mov_sat r1.x, r1.x
					add r1.x, r1.x, r1.x
					mul r0.w, r0.w, r1.x
					dp3 r1.x, r0.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
					add r0.xyz, r0.xyzx, -r1.xxxx
					mov r1.yw, l(0,0.250000,0,0.250000)
					sample r2.xyzw, r1.xyxx, t0.wxyz, s0
					mov_sat r2.x, r2.x
					add r1.y, r2.x, r2.x
					mul r0.w, r0.w, r1.y
					mul r0.w, r0.w, cb0[11].x
					mad r0.xyz, r0.wwww, r0.xyzx, r1.xxxx
					add r0.xyz, r0.xyzx, l(-0.413588, -0.413588, -0.413588, 0.000000)
					mad r0.xyz, r0.xyzx, cb0[11].yyyy, l(0.413588, 0.413588, 0.413588, 0.000000)
					lt r2.xyzw, r0.xxyy, l(-0.301370, 1.467996, -0.301370, 1.467996)
					mad r0.xyw, r0.xyxz, l(17.520000, 17.520000, 0.000000, 17.520000), l(-9.720000, -9.720000, 0.000000, -9.720000)
					lt r1.xy, r0.zzzz, l(-0.301370, 1.467996, 0.000000, 0.000000)
					exp r0.xyz, r0.xywx
					movc r2.yw, r2.yyyw, r0.xxxy, l(0,65504.000000,0,65504.000000)
					add r0.xyw, r0.xyxz, l(-0.000015, -0.000015, 0.000000, -0.000015)
					movc r0.z, r1.y, r0.z, l(65504.000000)
					add r0.xyw, r0.xyxw, r0.xyxw
					movc r2.xy, r2.xzxx, r0.xyxx, r2.ywyy
					movc r2.z, r1.x, r0.w, r0.z
					dp3 r0.x, l(1.451439, -0.236511, -0.214929, 0.000000), r2.xyzx
					dp3 r0.y, l(-0.076554, 1.176230, -0.099676, 0.000000), r2.xyzx
					dp3 r0.z, l(0.008316, -0.006032, 0.997716, 0.000000), r2.xyzx
					dp3 r2.x, l(0.390405, 0.549941, 0.008926, 0.000000), r0.xyzx
					dp3 r2.y, l(0.070842, 0.963172, 0.001358, 0.000000), r0.xyzx
					dp3 r2.z, l(0.023108, 0.128021, 0.936245, 0.000000), r0.xyzx
					mul r0.xyz, r2.xyzx, cb0[4].xyzx
					dp3 r2.x, l(2.858470, -1.628790, -0.024891, 0.000000), r0.xyzx
					dp3 r2.y, l(-0.210182, 1.158200, 0.000324, 0.000000), r0.xyzx
					dp3 r2.z, l(-0.041812, -0.118169, 1.068670, 0.000000), r0.xyzx
					add r0.xyz, -cb0[5].xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
					mul r0.xyz, r0.xyzx, cb0[7].xyzx
					mul r3.xyz, cb0[5].xyzx, cb0[7].xyzx
					mad r0.xyz, r2.xyzx, r0.xyzx, r3.xyzx
					log r2.xyz, r0.xyzx
					mul r2.xyz, r2.xyzx, cb0[6].xyzx
					exp r2.xyz, r2.xyzx
					lt r3.xyz, l(0.000000, 0.000000, 0.000000, 0.000000), r0.xyzx
					movc r0.xyz, r3.xyzx, r2.xyzx, r0.xyzx
					max r0.xyw, r0.yzyx, l(0.000000, 0.000000, 0.000000, 0.000000)
					ge r1.x, r0.x, r0.y
					and r1.x, r1.x, l(0x3f800000)
					mov r2.xy, r0.yxyy
					add r3.xy, r0.xyxx, -r2.xyxx
					mov r2.zw, l(0,0,-1.000000,0.666667)
					mov r3.zw, l(0,0,1.000000,-1.000000)
					mad r2.xyzw, r1.xxxx, r3.xyzw, r2.xyzw
					ge r1.x, r0.w, r2.x
					and r1.x, r1.x, l(0x3f800000)
					mov r0.xyz, r2.xywx
					mov r2.xyw, r0.wywx
					add r2.xyzw, -r0.xyzw, r2.xyzw
					mad r0.xyzw, r1.xxxx, r2.xyzw, r0.xyzw
					min r1.x, r0.y, r0.w
					add r1.x, r0.x, -r1.x
					mad r1.y, r1.x, l(6.000000), l(0.000100)
					add r0.y, -r0.y, r0.w
					div r0.y, r0.y, r1.y
					add r0.y, r0.y, r0.z
					add r1.z, |r0.y|, cb0[10].w
					sample r2.xyzw, r1.zwzz, t0.xyzw, s0
					mov_sat r2.x, r2.x
					add r0.y, r2.x, l(-0.500000)
					add r0.y, r0.y, r1.z
					lt r0.z, l(1.000000), r0.y
					add r1.yz, r0.yyyy, l(0.000000, 1.000000, -1.000000, 0.000000)
					movc r0.z, r0.z, r1.z, r0.y
					lt r0.y, r0.y, l(0.000000)
					movc r0.y, r0.y, r1.y, r0.z
					add r0.yzw, r0.yyyy, l(0.000000, 1.000000, 0.666667, 0.333333)
					frc r0.yzw, r0.yyzw
					mad r0.yzw, r0.yyzw, l(0.000000, 6.000000, 6.000000, 6.000000), l(0.000000, -3.000000, -3.000000, -3.000000)
					add_sat r0.yzw, |r0.yyzw|, l(0.000000, -1.000000, -1.000000, -1.000000)
					add r0.yzw, r0.yyzw, l(0.000000, -1.000000, -1.000000, -1.000000)
					add r1.y, r0.x, l(0.000100)
					div r1.x, r1.x, r1.y
					mad r0.yzw, r1.xxxx, r0.yyzw, l(0.000000, 1.000000, 1.000000, 1.000000)
					mul r0.xyz, r0.yzwy, r0.xxxx
					dp3 r1.x, r0.xyzx, cb0[12].xyzx
					dp3 r1.y, r0.xyzx, cb0[13].xyzx
					dp3 r1.z, r0.xyzx, cb0[14].xyzx
					dp3 r0.x, l(1.705050, -0.621790, -0.083260, 0.000000), r1.xyzx
					dp3 r0.y, l(-0.130260, 1.140800, -0.010550, 0.000000), r1.xyzx
					dp3 r0.z, l(-0.024000, -0.128970, 1.152970, 0.000000), r1.xyzx
					add r0.xyz, r0.xyzx, l(0.003906, 0.003906, 0.003906, 0.000000)
					mov r0.w, l(0.750000)
					sample r1.xyzw, r0.xwxx, t0.wxyz, s0
					mov_sat r1.x, r1.x
					sample r2.xyzw, r0.ywyy, t0.xyzw, s0
					sample r0.xyzw, r0.zwzz, t0.xyzw, s0
					mov_sat r1.z, r0.w
					mov_sat r1.y, r2.w
					add r0.xyz, r1.xyzx, l(0.003906, 0.003906, 0.003906, 0.000000)
					mov r0.w, l(0.750000)
					sample r1.xyzw, r0.xwxx, t0.xyzw, s0
					mov_sat o0.x, r1.x
					sample r1.xyzw, r0.ywyy, t0.xyzw, s0
					sample r0.xyzw, r0.zwzz, t0.xyzw, s0
					mov_sat o0.z, r0.z
					mov_sat o0.y, r1.y
					mov o0.w, l(1.000000)
					ret 
					// Approximately 0 instruction slots used"
				}
				SubProgram "d3d11 " {
					Keywords { "TONEMAPPING_NEUTRAL" }
					"!!DX11PixelSM40
					//
					// Generated by Microsoft (R) D3D Shader Disassembler
					//
					//
					// Input signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_POSITION              0   xyzw        0      POS   float       
					// TEXCOORD                 0   xy          1     NONE   float   xy  
					// TEXCOORD                 1     zw        1     NONE   float       
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_Target                0   xyzw        0   TARGET   float   xyzw
					//
					ps_4_0
					dcl_constantbuffer CB0[18], immediateIndexed
					dcl_sampler s0, mode_default
					dcl_resource_texture2d (float,float,float,float) t0
					dcl_input_ps linear v1.xy
					dcl_output o0.xyzw
					dcl_temps 4
					add r0.yz, v1.xxyx, -cb0[17].yyzy
					mul r1.x, r0.y, cb0[17].x
					frc r0.x, r1.x
					div r1.x, r0.x, cb0[17].x
					add r0.w, r0.y, -r1.x
					mad r0.xyz, r0.xzwx, cb0[17].wwww, l(-0.386036, -0.386036, -0.386036, 0.000000)
					mul r0.xyz, r0.xyzx, l(13.605482, 13.605482, 13.605482, 0.000000)
					exp r0.xyz, r0.xyzx
					add r0.xyz, r0.xyzx, l(-0.047996, -0.047996, -0.047996, 0.000000)
					mul r0.xyz, r0.xyzx, l(0.180000, 0.180000, 0.180000, 0.000000)
					dp3 r1.x, l(0.439701, 0.382978, 0.177335, 0.000000), r0.xyzx
					dp3 r1.y, l(0.089792, 0.813423, 0.096762, 0.000000), r0.xyzx
					dp3 r1.z, l(0.017544, 0.111544, 0.870704, 0.000000), r0.xyzx
					max r0.xyz, r1.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
					min r0.xyz, r0.xyzx, l(65504.000000, 65504.000000, 65504.000000, 0.000000)
					mad r1.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.000015, 0.000015, 0.000015, 0.000000)
					log r1.xyz, r1.xyzx
					add r1.xyz, r1.xyzx, l(9.720000, 9.720000, 9.720000, 0.000000)
					mul r1.xyz, r1.xyzx, l(0.057078, 0.057078, 0.057078, 0.000000)
					log r2.xyz, r0.xyzx
					lt r0.xyz, r0.xyzx, l(0.000031, 0.000031, 0.000031, 0.000000)
					add r2.xyz, r2.xyzx, l(9.720000, 9.720000, 9.720000, 0.000000)
					mul r2.xyz, r2.xyzx, l(0.057078, 0.057078, 0.057078, 0.000000)
					movc r0.xyz, r0.xyzx, r1.xyzx, r2.xyzx
					mad r0.xyz, r0.xyzx, cb0[10].xyzx, cb0[8].xyzx
					log r1.xyz, r0.xyzx
					mul r1.xyz, r1.xyzx, cb0[9].xyzx
					exp r1.xyz, r1.xyzx
					lt r2.xyz, l(0.000000, 0.000000, 0.000000, 0.000000), r0.xyzx
					movc r0.xyz, r2.xyzx, r1.xyzx, r0.xyzx
					ge r0.w, r0.y, r0.z
					and r0.w, r0.w, l(0x3f800000)
					mov r1.xy, r0.zyzz
					add r2.xy, r0.yzyy, -r1.xyxx
					mov r1.zw, l(0,0,-1.000000,0.666667)
					mov r2.zw, l(0,0,1.000000,-1.000000)
					mad r1.xyzw, r0.wwww, r2.xywz, r1.xywz
					ge r0.w, r0.x, r1.x
					and r0.w, r0.w, l(0x3f800000)
					mov r2.z, r1.w
					mov r1.w, r0.x
					mov r2.xyw, r1.wywx
					add r2.xyzw, -r1.xyzw, r2.xyzw
					mad r1.xyzw, r0.wwww, r2.xyzw, r1.xyzw
					min r0.w, r1.y, r1.w
					add r0.w, -r0.w, r1.x
					mad r2.x, r0.w, l(6.000000), l(0.000100)
					add r1.y, -r1.y, r1.w
					div r1.y, r1.y, r2.x
					add r1.y, r1.y, r1.z
					add r1.x, r1.x, l(0.000100)
					div r2.z, r0.w, r1.x
					mov r2.x, |r1.y|
					mov r2.yw, l(0,0.250000,0,0.250000)
					sample r1.xyzw, r2.xyxx, t0.yxzw, s0
					sample r2.xyzw, r2.zwzz, t0.zxyw, s0
					mov_sat r2.x, r2.x
					add r0.w, r2.x, r2.x
					mov_sat r1.x, r1.x
					add r1.x, r1.x, r1.x
					mul r0.w, r0.w, r1.x
					dp3 r1.x, r0.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
					add r0.xyz, r0.xyzx, -r1.xxxx
					mov r1.yw, l(0,0.250000,0,0.250000)
					sample r2.xyzw, r1.xyxx, t0.wxyz, s0
					mov_sat r2.x, r2.x
					add r1.y, r2.x, r2.x
					mul r0.w, r0.w, r1.y
					mul r0.w, r0.w, cb0[11].x
					mad r0.xyz, r0.wwww, r0.xyzx, r1.xxxx
					add r0.xyz, r0.xyzx, l(-0.413588, -0.413588, -0.413588, 0.000000)
					mad r0.xyz, r0.xyzx, cb0[11].yyyy, l(0.413588, 0.413588, 0.413588, 0.000000)
					lt r2.xyzw, r0.xxyy, l(-0.301370, 1.467996, -0.301370, 1.467996)
					mad r0.xyw, r0.xyxz, l(17.520000, 17.520000, 0.000000, 17.520000), l(-9.720000, -9.720000, 0.000000, -9.720000)
					lt r1.xy, r0.zzzz, l(-0.301370, 1.467996, 0.000000, 0.000000)
					exp r0.xyz, r0.xywx
					movc r2.yw, r2.yyyw, r0.xxxy, l(0,65504.000000,0,65504.000000)
					add r0.xyw, r0.xyxz, l(-0.000015, -0.000015, 0.000000, -0.000015)
					movc r0.z, r1.y, r0.z, l(65504.000000)
					add r0.xyw, r0.xyxw, r0.xyxw
					movc r2.xy, r2.xzxx, r0.xyxx, r2.ywyy
					movc r2.z, r1.x, r0.w, r0.z
					dp3 r0.x, l(1.451439, -0.236511, -0.214929, 0.000000), r2.xyzx
					dp3 r0.y, l(-0.076554, 1.176230, -0.099676, 0.000000), r2.xyzx
					dp3 r0.z, l(0.008316, -0.006032, 0.997716, 0.000000), r2.xyzx
					dp3 r2.x, l(0.390405, 0.549941, 0.008926, 0.000000), r0.xyzx
					dp3 r2.y, l(0.070842, 0.963172, 0.001358, 0.000000), r0.xyzx
					dp3 r2.z, l(0.023108, 0.128021, 0.936245, 0.000000), r0.xyzx
					mul r0.xyz, r2.xyzx, cb0[4].xyzx
					dp3 r2.x, l(2.858470, -1.628790, -0.024891, 0.000000), r0.xyzx
					dp3 r2.y, l(-0.210182, 1.158200, 0.000324, 0.000000), r0.xyzx
					dp3 r2.z, l(-0.041812, -0.118169, 1.068670, 0.000000), r0.xyzx
					add r0.xyz, -cb0[5].xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
					mul r0.xyz, r0.xyzx, cb0[7].xyzx
					mul r3.xyz, cb0[5].xyzx, cb0[7].xyzx
					mad r0.xyz, r2.xyzx, r0.xyzx, r3.xyzx
					log r2.xyz, r0.xyzx
					mul r2.xyz, r2.xyzx, cb0[6].xyzx
					exp r2.xyz, r2.xyzx
					lt r3.xyz, l(0.000000, 0.000000, 0.000000, 0.000000), r0.xyzx
					movc r0.xyz, r3.xyzx, r2.xyzx, r0.xyzx
					max r0.xyw, r0.yzyx, l(0.000000, 0.000000, 0.000000, 0.000000)
					ge r1.x, r0.x, r0.y
					and r1.x, r1.x, l(0x3f800000)
					mov r2.xy, r0.yxyy
					add r3.xy, r0.xyxx, -r2.xyxx
					mov r2.zw, l(0,0,-1.000000,0.666667)
					mov r3.zw, l(0,0,1.000000,-1.000000)
					mad r2.xyzw, r1.xxxx, r3.xyzw, r2.xyzw
					ge r1.x, r0.w, r2.x
					and r1.x, r1.x, l(0x3f800000)
					mov r0.xyz, r2.xywx
					mov r2.xyw, r0.wywx
					add r2.xyzw, -r0.xyzw, r2.xyzw
					mad r0.xyzw, r1.xxxx, r2.xyzw, r0.xyzw
					min r1.x, r0.y, r0.w
					add r1.x, r0.x, -r1.x
					mad r1.y, r1.x, l(6.000000), l(0.000100)
					add r0.y, -r0.y, r0.w
					div r0.y, r0.y, r1.y
					add r0.y, r0.y, r0.z
					add r1.z, |r0.y|, cb0[10].w
					sample r2.xyzw, r1.zwzz, t0.xyzw, s0
					mov_sat r2.x, r2.x
					add r0.y, r2.x, l(-0.500000)
					add r0.y, r0.y, r1.z
					lt r0.z, l(1.000000), r0.y
					add r1.yz, r0.yyyy, l(0.000000, 1.000000, -1.000000, 0.000000)
					movc r0.z, r0.z, r1.z, r0.y
					lt r0.y, r0.y, l(0.000000)
					movc r0.y, r0.y, r1.y, r0.z
					add r0.yzw, r0.yyyy, l(0.000000, 1.000000, 0.666667, 0.333333)
					frc r0.yzw, r0.yyzw
					mad r0.yzw, r0.yyzw, l(0.000000, 6.000000, 6.000000, 6.000000), l(0.000000, -3.000000, -3.000000, -3.000000)
					add_sat r0.yzw, |r0.yyzw|, l(0.000000, -1.000000, -1.000000, -1.000000)
					add r0.yzw, r0.yyzw, l(0.000000, -1.000000, -1.000000, -1.000000)
					add r1.y, r0.x, l(0.000100)
					div r1.x, r1.x, r1.y
					mad r0.yzw, r1.xxxx, r0.yyzw, l(0.000000, 1.000000, 1.000000, 1.000000)
					mul r0.xyz, r0.yzwy, r0.xxxx
					dp3 r1.x, r0.xyzx, cb0[12].xyzx
					dp3 r1.y, r0.xyzx, cb0[13].xyzx
					dp3 r1.z, r0.xyzx, cb0[14].xyzx
					dp3 r0.x, l(1.705050, -0.621790, -0.083260, 0.000000), r1.xyzx
					dp3 r0.y, l(-0.130260, 1.140800, -0.010550, 0.000000), r1.xyzx
					dp3 r0.z, l(-0.024000, -0.128970, 1.152970, 0.000000), r1.xyzx
					max r0.xyz, r0.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
					mul r0.w, cb0[15].y, cb0[15].z
					mad r1.x, cb0[15].x, cb0[16].z, r0.w
					mul r1.yz, cb0[15].wwww, cb0[16].xxyx
					mad r1.x, cb0[16].z, r1.x, r1.y
					mad r1.w, cb0[15].x, cb0[16].z, cb0[15].y
					mad r1.w, cb0[16].z, r1.w, r1.z
					div r1.x, r1.x, r1.w
					div r1.w, cb0[16].x, cb0[16].y
					add r1.x, -r1.w, r1.x
					div r1.x, l(1.000000, 1.000000, 1.000000, 1.000000), r1.x
					mul r0.xyz, r0.xyzx, r1.xxxx
					mad r2.xyz, cb0[15].xxxx, r0.xyzx, r0.wwww
					mad r2.xyz, r0.xyzx, r2.xyzx, r1.yyyy
					mad r3.xyz, cb0[15].xxxx, r0.xyzx, cb0[15].yyyy
					mad r0.xyz, r0.xyzx, r3.xyzx, r1.zzzz
					div r0.xyz, r2.xyzx, r0.xyzx
					add r0.xyz, -r1.wwww, r0.xyzx
					mul r0.xyz, r1.xxxx, r0.xyzx
					div r0.xyz, r0.xyzx, cb0[16].wwww
					add r0.xyz, r0.xyzx, l(0.003906, 0.003906, 0.003906, 0.000000)
					mov r0.w, l(0.750000)
					sample r1.xyzw, r0.xwxx, t0.wxyz, s0
					mov_sat r1.x, r1.x
					sample r2.xyzw, r0.ywyy, t0.xyzw, s0
					sample r0.xyzw, r0.zwzz, t0.xyzw, s0
					mov_sat r1.z, r0.w
					mov_sat r1.y, r2.w
					add r0.xyz, r1.xyzx, l(0.003906, 0.003906, 0.003906, 0.000000)
					mov r0.w, l(0.750000)
					sample r1.xyzw, r0.xwxx, t0.xyzw, s0
					mov_sat o0.x, r1.x
					sample r1.xyzw, r0.ywyy, t0.xyzw, s0
					sample r0.xyzw, r0.zwzz, t0.xyzw, s0
					mov_sat o0.z, r0.z
					mov_sat o0.y, r1.y
					mov o0.w, l(1.000000)
					ret 
					// Approximately 0 instruction slots used"
				}
				SubProgram "d3d11 " {
					Keywords { "TONEMAPPING_FILMIC" }
					"!!DX11PixelSM40
					//
					// Generated by Microsoft (R) D3D Shader Disassembler
					//
					//
					// Input signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_POSITION              0   xyzw        0      POS   float       
					// TEXCOORD                 0   xy          1     NONE   float   xy  
					// TEXCOORD                 1     zw        1     NONE   float       
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_Target                0   xyzw        0   TARGET   float   xyzw
					//
					ps_4_0
					dcl_constantbuffer CB0[18], immediateIndexed
					dcl_sampler s0, mode_default
					dcl_resource_texture2d (float,float,float,float) t0
					dcl_input_ps linear v1.xy
					dcl_output o0.xyzw
					dcl_temps 4
					add r0.yz, v1.xxyx, -cb0[17].yyzy
					mul r1.x, r0.y, cb0[17].x
					frc r0.x, r1.x
					div r1.x, r0.x, cb0[17].x
					add r0.w, r0.y, -r1.x
					mad r0.xyz, r0.xzwx, cb0[17].wwww, l(-0.386036, -0.386036, -0.386036, 0.000000)
					mul r0.xyz, r0.xyzx, l(13.605482, 13.605482, 13.605482, 0.000000)
					exp r0.xyz, r0.xyzx
					add r0.xyz, r0.xyzx, l(-0.047996, -0.047996, -0.047996, 0.000000)
					mul r0.xyz, r0.xyzx, l(0.180000, 0.180000, 0.180000, 0.000000)
					dp3 r1.x, l(0.439701, 0.382978, 0.177335, 0.000000), r0.xyzx
					dp3 r1.y, l(0.089792, 0.813423, 0.096762, 0.000000), r0.xyzx
					dp3 r1.z, l(0.017544, 0.111544, 0.870704, 0.000000), r0.xyzx
					max r0.xyz, r1.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
					min r0.xyz, r0.xyzx, l(65504.000000, 65504.000000, 65504.000000, 0.000000)
					mad r1.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.000015, 0.000015, 0.000015, 0.000000)
					log r1.xyz, r1.xyzx
					add r1.xyz, r1.xyzx, l(9.720000, 9.720000, 9.720000, 0.000000)
					mul r1.xyz, r1.xyzx, l(0.057078, 0.057078, 0.057078, 0.000000)
					log r2.xyz, r0.xyzx
					lt r0.xyz, r0.xyzx, l(0.000031, 0.000031, 0.000031, 0.000000)
					add r2.xyz, r2.xyzx, l(9.720000, 9.720000, 9.720000, 0.000000)
					mul r2.xyz, r2.xyzx, l(0.057078, 0.057078, 0.057078, 0.000000)
					movc r0.xyz, r0.xyzx, r1.xyzx, r2.xyzx
					mad r0.xyz, r0.xyzx, cb0[10].xyzx, cb0[8].xyzx
					log r1.xyz, r0.xyzx
					mul r1.xyz, r1.xyzx, cb0[9].xyzx
					exp r1.xyz, r1.xyzx
					lt r2.xyz, l(0.000000, 0.000000, 0.000000, 0.000000), r0.xyzx
					movc r0.xyz, r2.xyzx, r1.xyzx, r0.xyzx
					ge r0.w, r0.y, r0.z
					and r0.w, r0.w, l(0x3f800000)
					mov r1.xy, r0.zyzz
					add r2.xy, r0.yzyy, -r1.xyxx
					mov r1.zw, l(0,0,-1.000000,0.666667)
					mov r2.zw, l(0,0,1.000000,-1.000000)
					mad r1.xyzw, r0.wwww, r2.xywz, r1.xywz
					ge r0.w, r0.x, r1.x
					and r0.w, r0.w, l(0x3f800000)
					mov r2.z, r1.w
					mov r1.w, r0.x
					mov r2.xyw, r1.wywx
					add r2.xyzw, -r1.xyzw, r2.xyzw
					mad r1.xyzw, r0.wwww, r2.xyzw, r1.xyzw
					min r0.w, r1.y, r1.w
					add r0.w, -r0.w, r1.x
					mad r2.x, r0.w, l(6.000000), l(0.000100)
					add r1.y, -r1.y, r1.w
					div r1.y, r1.y, r2.x
					add r1.y, r1.y, r1.z
					add r1.x, r1.x, l(0.000100)
					div r2.z, r0.w, r1.x
					mov r2.x, |r1.y|
					mov r2.yw, l(0,0.250000,0,0.250000)
					sample r1.xyzw, r2.xyxx, t0.yxzw, s0
					sample r2.xyzw, r2.zwzz, t0.zxyw, s0
					mov_sat r2.x, r2.x
					add r0.w, r2.x, r2.x
					mov_sat r1.x, r1.x
					add r1.x, r1.x, r1.x
					mul r0.w, r0.w, r1.x
					dp3 r1.x, r0.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
					add r0.xyz, r0.xyzx, -r1.xxxx
					mov r1.yw, l(0,0.250000,0,0.250000)
					sample r2.xyzw, r1.xyxx, t0.wxyz, s0
					mov_sat r2.x, r2.x
					add r1.y, r2.x, r2.x
					mul r0.w, r0.w, r1.y
					mul r0.w, r0.w, cb0[11].x
					mad r0.xyz, r0.wwww, r0.xyzx, r1.xxxx
					add r0.xyz, r0.xyzx, l(-0.413588, -0.413588, -0.413588, 0.000000)
					mad r0.xyz, r0.xyzx, cb0[11].yyyy, l(0.413588, 0.413588, 0.413588, 0.000000)
					lt r2.xyzw, r0.xxyy, l(-0.301370, 1.467996, -0.301370, 1.467996)
					mad r0.xyw, r0.xyxz, l(17.520000, 17.520000, 0.000000, 17.520000), l(-9.720000, -9.720000, 0.000000, -9.720000)
					lt r1.xy, r0.zzzz, l(-0.301370, 1.467996, 0.000000, 0.000000)
					exp r0.xyz, r0.xywx
					movc r2.yw, r2.yyyw, r0.xxxy, l(0,65504.000000,0,65504.000000)
					add r0.xyw, r0.xyxz, l(-0.000015, -0.000015, 0.000000, -0.000015)
					movc r0.z, r1.y, r0.z, l(65504.000000)
					add r0.xyw, r0.xyxw, r0.xyxw
					movc r2.xy, r2.xzxx, r0.xyxx, r2.ywyy
					movc r2.z, r1.x, r0.w, r0.z
					dp3 r0.x, l(1.451439, -0.236511, -0.214929, 0.000000), r2.xyzx
					dp3 r0.y, l(-0.076554, 1.176230, -0.099676, 0.000000), r2.xyzx
					dp3 r0.z, l(0.008316, -0.006032, 0.997716, 0.000000), r2.xyzx
					dp3 r2.x, l(0.390405, 0.549941, 0.008926, 0.000000), r0.xyzx
					dp3 r2.y, l(0.070842, 0.963172, 0.001358, 0.000000), r0.xyzx
					dp3 r2.z, l(0.023108, 0.128021, 0.936245, 0.000000), r0.xyzx
					mul r0.xyz, r2.xyzx, cb0[4].xyzx
					dp3 r2.x, l(2.858470, -1.628790, -0.024891, 0.000000), r0.xyzx
					dp3 r2.y, l(-0.210182, 1.158200, 0.000324, 0.000000), r0.xyzx
					dp3 r2.z, l(-0.041812, -0.118169, 1.068670, 0.000000), r0.xyzx
					add r0.xyz, -cb0[5].xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
					mul r0.xyz, r0.xyzx, cb0[7].xyzx
					mul r3.xyz, cb0[5].xyzx, cb0[7].xyzx
					mad r0.xyz, r2.xyzx, r0.xyzx, r3.xyzx
					log r2.xyz, r0.xyzx
					mul r2.xyz, r2.xyzx, cb0[6].xyzx
					exp r2.xyz, r2.xyzx
					lt r3.xyz, l(0.000000, 0.000000, 0.000000, 0.000000), r0.xyzx
					movc r0.xyz, r3.xyzx, r2.xyzx, r0.xyzx
					max r0.xyw, r0.yzyx, l(0.000000, 0.000000, 0.000000, 0.000000)
					ge r1.x, r0.x, r0.y
					and r1.x, r1.x, l(0x3f800000)
					mov r2.xy, r0.yxyy
					add r3.xy, r0.xyxx, -r2.xyxx
					mov r2.zw, l(0,0,-1.000000,0.666667)
					mov r3.zw, l(0,0,1.000000,-1.000000)
					mad r2.xyzw, r1.xxxx, r3.xyzw, r2.xyzw
					ge r1.x, r0.w, r2.x
					and r1.x, r1.x, l(0x3f800000)
					mov r0.xyz, r2.xywx
					mov r2.xyw, r0.wywx
					add r2.xyzw, -r0.xyzw, r2.xyzw
					mad r0.xyzw, r1.xxxx, r2.xyzw, r0.xyzw
					min r1.x, r0.y, r0.w
					add r1.x, r0.x, -r1.x
					mad r1.y, r1.x, l(6.000000), l(0.000100)
					add r0.y, -r0.y, r0.w
					div r0.y, r0.y, r1.y
					add r0.y, r0.y, r0.z
					add r1.z, |r0.y|, cb0[10].w
					sample r2.xyzw, r1.zwzz, t0.xyzw, s0
					mov_sat r2.x, r2.x
					add r0.y, r2.x, l(-0.500000)
					add r0.y, r0.y, r1.z
					lt r0.z, l(1.000000), r0.y
					add r1.yz, r0.yyyy, l(0.000000, 1.000000, -1.000000, 0.000000)
					movc r0.z, r0.z, r1.z, r0.y
					lt r0.y, r0.y, l(0.000000)
					movc r0.y, r0.y, r1.y, r0.z
					add r0.yzw, r0.yyyy, l(0.000000, 1.000000, 0.666667, 0.333333)
					frc r0.yzw, r0.yyzw
					mad r0.yzw, r0.yyzw, l(0.000000, 6.000000, 6.000000, 6.000000), l(0.000000, -3.000000, -3.000000, -3.000000)
					add_sat r0.yzw, |r0.yyzw|, l(0.000000, -1.000000, -1.000000, -1.000000)
					add r0.yzw, r0.yyzw, l(0.000000, -1.000000, -1.000000, -1.000000)
					add r1.y, r0.x, l(0.000100)
					div r1.x, r1.x, r1.y
					mad r0.yzw, r1.xxxx, r0.yyzw, l(0.000000, 1.000000, 1.000000, 1.000000)
					mul r0.xyz, r0.yzwy, r0.xxxx
					dp3 r1.x, r0.xyzx, cb0[12].xyzx
					dp3 r1.y, r0.xyzx, cb0[13].xyzx
					dp3 r1.z, r0.xyzx, cb0[14].xyzx
					dp3 r0.y, l(0.695452, 0.140679, 0.163869, 0.000000), r1.xyzx
					dp3 r0.z, l(0.044795, 0.859671, 0.095534, 0.000000), r1.xyzx
					dp3 r0.w, l(-0.005526, 0.004025, 1.001501, 0.000000), r1.xyzx
					add r1.xyz, -r0.zywz, r0.wzyw
					mul r1.xy, r0.wzww, r1.xyxx
					add r0.x, r1.y, r1.x
					mad r0.x, r0.y, r1.z, r0.x
					sqrt r0.x, r0.x
					add r1.x, r0.z, r0.w
					add r1.x, r0.y, r1.x
					mad r0.x, r0.x, l(1.750000), r1.x
					mul r1.x, r0.x, l(0.333333)
					div r1.x, l(0.080000), r1.x
					min r1.y, r0.w, r0.z
					min r1.y, r0.y, r1.y
					max r1.z, r0.w, r0.z
					max r1.z, r0.y, r1.z
					max r1.yzw, r1.yyzz, l(0.000000, 0.000000, 0.000000, 0.010000)
					add r1.y, -r1.y, r1.z
					div r1.y, r1.y, r1.w
					add r1.xz, r1.xxyx, l(-0.500000, 0.000000, -0.400000, 0.000000)
					lt r1.w, l(0.000000), r1.z
					lt r2.x, r1.z, l(0.000000)
					mul r1.z, r1.z, l(2.500000)
					add r1.z, -|r1.z|, l(1.000000)
					max r1.z, r1.z, l(0.000000)
					mad r1.z, -r1.z, r1.z, l(1.000000)
					iadd r1.w, -r1.w, r2.x
					itof r1.w, r1.w
					mad r1.z, r1.w, r1.z, l(1.000000)
					mul r1.z, r1.z, l(0.025000)
					mul r1.x, r1.x, r1.z
					ge r1.w, r0.x, l(0.480000)
					ge r0.x, l(0.160000), r0.x
					movc r1.x, r1.w, l(0), r1.x
					movc r0.x, r0.x, r1.z, r1.x
					add r0.x, r0.x, l(1.000000)
					mul r2.yzw, r0.xxxx, r0.yyzw
					mad r0.y, -r0.y, r0.x, l(0.030000)
					mad r0.z, r0.z, r0.x, -r2.w
					mul r0.z, r0.z, l(1.732051)
					mad r1.x, r2.y, l(2.000000), -r2.z
					mad r0.x, -r0.w, r0.x, r1.x
					max r0.w, |r0.x|, |r0.z|
					div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
					min r1.x, |r0.x|, |r0.z|
					mul r0.w, r0.w, r1.x
					mul r1.x, r0.w, r0.w
					mad r1.z, r1.x, l(0.020835), l(-0.085133)
					mad r1.z, r1.x, r1.z, l(0.180141)
					mad r1.z, r1.x, r1.z, l(-0.330299)
					mad r1.x, r1.x, r1.z, l(0.999866)
					mul r1.z, r0.w, r1.x
					mad r1.z, r1.z, l(-2.000000), l(1.570796)
					lt r1.w, |r0.x|, |r0.z|
					and r1.z, r1.w, r1.z
					mad r0.w, r0.w, r1.x, r1.z
					lt r1.x, r0.x, -r0.x
					and r1.x, r1.x, l(0xc0490fdb)
					add r0.w, r0.w, r1.x
					min r1.x, r0.x, r0.z
					max r0.x, r0.x, r0.z
					ge r0.x, r0.x, -r0.x
					lt r0.z, r1.x, -r1.x
					and r0.x, r0.x, r0.z
					movc r0.x, r0.x, -r0.w, r0.w
					mul r0.x, r0.x, l(57.295780)
					eq r0.zw, r2.zzzw, r2.yyyz
					and r0.z, r0.w, r0.z
					movc r0.x, r0.z, l(0), r0.x
					lt r0.z, r0.x, l(0.000000)
					add r0.w, r0.x, l(360.000000)
					movc r0.x, r0.z, r0.w, r0.x
					lt r0.z, l(180.000000), r0.x
					add r1.xz, r0.xxxx, l(360.000000, 0.000000, -360.000000, 0.000000)
					movc r0.z, r0.z, r1.z, r0.x
					lt r0.x, r0.x, l(-180.000000)
					movc r0.x, r0.x, r1.x, r0.z
					mul r0.x, r0.x, l(0.014815)
					add r0.x, -|r0.x|, l(1.000000)
					max r0.x, r0.x, l(0.000000)
					mad r0.z, r0.x, l(-2.000000), l(3.000000)
					mul r0.x, r0.x, r0.x
					mul r0.x, r0.x, r0.z
					mul r0.x, r0.x, r0.x
					mul r0.x, r1.y, r0.x
					mul r0.x, r0.y, r0.x
					mad r2.x, r0.x, l(0.180000), r2.y
					dp3 r0.x, l(1.451439, -0.236511, -0.214929, 0.000000), r2.xzwx
					dp3 r0.y, l(-0.076554, 1.176230, -0.099676, 0.000000), r2.xzwx
					dp3 r0.z, l(0.008316, -0.006032, 0.997716, 0.000000), r2.xzwx
					max r0.xyz, r0.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
					dp3 r0.w, r0.xyzx, l(0.272229, 0.674082, 0.053689, 0.000000)
					add r0.xyz, -r0.wwww, r0.xyzx
					mad r0.xyz, r0.xyzx, l(0.960000, 0.960000, 0.960000, 0.000000), r0.wwww
					mad r1.xyz, r0.xyzx, l(278.508514, 278.508514, 278.508514, 0.000000), l(10.777200, 10.777200, 10.777200, 0.000000)
					mul r1.xyz, r0.xyzx, r1.xyzx
					mad r2.xyz, r0.xyzx, l(293.604492, 293.604492, 293.604492, 0.000000), l(88.712196, 88.712196, 88.712196, 0.000000)
					mad r0.xyz, r0.xyzx, r2.xyzx, l(80.688904, 80.688904, 80.688904, 0.000000)
					div r0.xyz, r1.xyzx, r0.xyzx
					dp3 r1.x, l(0.662454, 0.134004, 0.156188, 0.000000), r0.xyzx
					dp3 r1.z, l(-0.005575, 0.004061, 1.010339, 0.000000), r0.xyzx
					dp3 r1.y, l(0.272229, 0.674082, 0.053690, 0.000000), r0.xyzx
					dp3 r0.x, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
					max r0.x, r0.x, l(0.000100)
					div r0.xy, r1.xyxx, r0.xxxx
					max r0.w, r1.y, l(0.000000)
					min r0.w, r0.w, l(65504.000000)
					log r0.w, r0.w
					mul r0.w, r0.w, l(0.981100)
					exp r1.y, r0.w
					add r0.w, -r0.x, l(1.000000)
					add r0.z, -r0.y, r0.w
					max r0.y, r0.y, l(0.000100)
					div r0.y, r1.y, r0.y
					mul r1.xz, r0.yyyy, r0.xxzx
					dp3 r0.x, l(1.641023, -0.324803, -0.236425, 0.000000), r1.xyzx
					dp3 r0.y, l(-0.663663, 1.615332, 0.016756, 0.000000), r1.xyzx
					dp3 r0.z, l(0.011722, -0.008284, 0.988395, 0.000000), r1.xyzx
					dp3 r0.w, r0.xyzx, l(0.272229, 0.674082, 0.053689, 0.000000)
					add r0.xyz, -r0.wwww, r0.xyzx
					mad r0.xyz, r0.xyzx, l(0.930000, 0.930000, 0.930000, 0.000000), r0.wwww
					dp3 r1.x, l(0.662454, 0.134004, 0.156188, 0.000000), r0.xyzx
					dp3 r1.y, l(0.272229, 0.674082, 0.053690, 0.000000), r0.xyzx
					dp3 r1.z, l(-0.005575, 0.004061, 1.010339, 0.000000), r0.xyzx
					dp3 r0.x, l(0.987224, -0.006113, 0.015953, 0.000000), r1.xyzx
					dp3 r0.y, l(-0.007598, 1.001860, 0.005330, 0.000000), r1.xyzx
					dp3 r0.z, l(0.003073, -0.005096, 1.081680, 0.000000), r1.xyzx
					dp3 r1.x, l(3.240970, -1.537383, -0.498611, 0.000000), r0.xyzx
					dp3 r1.y, l(-0.969244, 1.875968, 0.041555, 0.000000), r0.xyzx
					dp3 r1.z, l(0.055630, -0.203977, 1.056972, 0.000000), r0.xyzx
					add r0.xyz, r1.xyzx, l(0.003906, 0.003906, 0.003906, 0.000000)
					mov r0.w, l(0.750000)
					sample r1.xyzw, r0.xwxx, t0.wxyz, s0
					mov_sat r1.x, r1.x
					sample r2.xyzw, r0.ywyy, t0.xyzw, s0
					sample r0.xyzw, r0.zwzz, t0.xyzw, s0
					mov_sat r1.z, r0.w
					mov_sat r1.y, r2.w
					add r0.xyz, r1.xyzx, l(0.003906, 0.003906, 0.003906, 0.000000)
					mov r0.w, l(0.750000)
					sample r1.xyzw, r0.xwxx, t0.xyzw, s0
					mov_sat o0.x, r1.x
					sample r1.xyzw, r0.ywyy, t0.xyzw, s0
					sample r0.xyzw, r0.zwzz, t0.xyzw, s0
					mov_sat o0.z, r0.z
					mov_sat o0.y, r1.y
					mov o0.w, l(1.000000)
					ret 
					// Approximately 0 instruction slots used"
				}
			}
		}
	}
}