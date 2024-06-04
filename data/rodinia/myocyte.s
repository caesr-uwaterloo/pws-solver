	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z6kerneliPfS_S_S_      ; -- Begin function _Z6kerneliPfS_S_S_
	.globl	_Z6kerneliPfS_S_S_
	.p2align	8
	.type	_Z6kerneliPfS_S_S_,@function
_Z6kerneliPfS_S_S_:                     ; @_Z6kerneliPfS_S_S_
_Z6kerneliPfS_S_S_$local:
; %bb.0:
	s_load_dwordx4 s[24:27], s[4:5], 0x8
	s_load_dwordx2 s[12:13], s[4:5], 0x18
	s_cmp_lg_u32 s6, 0
	s_mov_b64 s[0:1], -1
	s_cbranch_scc0 BB0_16
; %bb.1:
	v_cmp_eq_u32_e64 s[0:1], s6, 1
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_and_b64 s[0:1], s[0:1], vcc
	s_and_saveexec_b64 s[14:15], s[0:1]
	s_cbranch_execz BB0_15
; %bb.2:
	s_waitcnt lgkmcnt(0)
	s_load_dwordx2 s[30:31], s[12:13], 0x40
	s_load_dwordx4 s[20:23], s[12:13], 0x4
	s_waitcnt lgkmcnt(0)
	v_cvt_f64_f32_e32 v[1:2], s30
	s_mov_b32 s1, 0x3fee147a
	s_mov_b32 s0, 0xe147ae14
	v_div_scale_f64 v[3:4], s[2:3], s[0:1], s[0:1], v[1:2]
	v_rcp_f64_e32 v[5:6], v[3:4]
	v_fma_f64 v[7:8], -v[3:4], v[5:6], 1.0
	v_fma_f64 v[5:6], v[5:6], v[7:8], v[5:6]
	v_fma_f64 v[7:8], -v[3:4], v[5:6], 1.0
	v_div_scale_f64 v[9:10], vcc, v[1:2], s[0:1], v[1:2]
	v_fma_f64 v[5:6], v[5:6], v[7:8], v[5:6]
	v_mul_f64 v[7:8], v[9:10], v[5:6]
	v_fma_f64 v[3:4], -v[3:4], v[7:8], v[9:10]
	s_nop 0
	v_div_fmas_f64 v[3:4], v[3:4], v[5:6], v[7:8]
	v_div_fixup_f64 v[3:4], v[3:4], s[0:1], v[1:2]
	s_load_dword s29, s[24:25], 0x8c
	s_load_dwordx8 s[40:47], s[24:25], 0xb8
	s_add_u32 s16, s12, 64
	s_addc_u32 s17, s13, 0
	v_add_f64 v[3:4], v[3:4], 1.0
	s_load_dword s28, s[24:25], 0xf0
	s_load_dwordx2 s[18:19], s[24:25], 0xe8
	s_load_dwordx4 s[36:39], s[24:25], 0xd8
	v_cmp_nle_f32_e64 s[0:1], s31, 1.0
	s_and_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz BB0_4
; %bb.3:
	v_cvt_f64_f32_e32 v[5:6], s31
	s_mov_b32 s1, 0xbf889374
	s_mov_b32 s0, 0xbc6a7efa
	v_div_scale_f64 v[7:8], s[2:3], s[0:1], s[0:1], v[5:6]
	v_rcp_f64_e32 v[9:10], v[7:8]
	v_fma_f64 v[11:12], -v[7:8], v[9:10], 1.0
	v_fma_f64 v[9:10], v[9:10], v[11:12], v[9:10]
	v_div_scale_f64 v[11:12], vcc, v[5:6], s[0:1], v[5:6]
	v_fma_f64 v[13:14], -v[7:8], v[9:10], 1.0
	v_fma_f64 v[9:10], v[9:10], v[13:14], v[9:10]
	v_mul_f64 v[13:14], v[11:12], v[9:10]
	v_fma_f64 v[7:8], -v[7:8], v[13:14], v[11:12]
	v_div_fmas_f64 v[7:8], v[7:8], v[9:10], v[13:14]
	v_div_fixup_f64 v[7:8], v[7:8], s[0:1], v[5:6]
	s_mov_b32 s35, 0x40203333
	s_mov_b32 s34, 0x33333333
	s_mov_b32 s49, 0x3f96872b
	s_mov_b32 s48, 0x20c49ba
	s_mov_b32 s51, 0x3f647ae1
	s_mov_b32 s50, 0x47ae147b
	v_add_f64 v[7:8], v[3:4], v[7:8]
	s_mov_b32 s53, 0x3f56f006
	s_mov_b32 s52, 0x8db8bac7
	s_mov_b32 s55, 0x402a0000
	v_div_scale_f64 v[9:10], s[0:1], s[34:35], s[34:35], v[1:2]
	v_div_scale_f64 v[11:12], s[0:1], s[48:49], s[48:49], v[5:6]
	v_mul_f64 v[7:8], v[7:8], s[50:51]
	s_mov_b32 s51, 0x3fe47ae1
	v_div_scale_f64 v[13:14], s[0:1], s[50:51], s[50:51], v[1:2]
	s_mov_b32 s54, 0
	v_div_scale_f64 v[15:16], s[0:1], s[52:53], s[52:53], v[5:6]
	v_div_scale_f64 v[17:18], s[0:1], s[54:55], s[54:55], v[1:2]
	s_mov_b32 s57, 0xbfc39581
	s_mov_b32 s56, 0x624dd2f
	v_div_scale_f64 v[19:20], s[0:1], s[56:57], s[56:57], v[5:6]
	v_rcp_f64_e32 v[21:22], v[9:10]
	v_rcp_f64_e32 v[23:24], v[11:12]
	v_rcp_f64_e32 v[25:26], v[13:14]
	v_rcp_f64_e32 v[27:28], v[15:16]
	v_rcp_f64_e32 v[29:30], v[17:18]
	v_rcp_f64_e32 v[31:32], v[19:20]
	v_div_scale_f64 v[33:34], vcc, v[1:2], s[34:35], v[1:2]
	v_fma_f64 v[35:36], -v[9:10], v[21:22], 1.0
	v_fma_f64 v[37:38], -v[11:12], v[23:24], 1.0
	v_div_scale_f64 v[39:40], s[0:1], v[1:2], s[54:55], v[1:2]
	v_fma_f64 v[41:42], -v[13:14], v[25:26], 1.0
	v_div_scale_f64 v[43:44], s[2:3], v[5:6], s[48:49], v[5:6]
	v_fma_f64 v[45:46], -v[15:16], v[27:28], 1.0
	v_fma_f64 v[21:22], v[21:22], v[35:36], v[21:22]
	v_fma_f64 v[35:36], -v[17:18], v[29:30], 1.0
	v_fma_f64 v[23:24], v[23:24], v[37:38], v[23:24]
	v_div_scale_f64 v[37:38], s[6:7], v[5:6], s[52:53], v[5:6]
	v_fma_f64 v[25:26], v[25:26], v[41:42], v[25:26]
	v_fma_f64 v[41:42], -v[19:20], v[31:32], 1.0
	v_fma_f64 v[27:28], v[27:28], v[45:46], v[27:28]
	v_fma_f64 v[45:46], -v[9:10], v[21:22], 1.0
	v_fma_f64 v[29:30], v[29:30], v[35:36], v[29:30]
	v_fma_f64 v[35:36], -v[11:12], v[23:24], 1.0
	v_div_scale_f64 v[47:48], s[8:9], v[1:2], s[50:51], v[1:2]
	v_fma_f64 v[49:50], -v[13:14], v[25:26], 1.0
	v_fma_f64 v[31:32], v[31:32], v[41:42], v[31:32]
	v_fma_f64 v[41:42], -v[15:16], v[27:28], 1.0
	v_fma_f64 v[21:22], v[21:22], v[45:46], v[21:22]
	v_div_scale_f64 v[45:46], s[10:11], v[5:6], s[56:57], v[5:6]
	v_fma_f64 v[23:24], v[23:24], v[35:36], v[23:24]
	v_fma_f64 v[35:36], -v[17:18], v[29:30], 1.0
	v_fma_f64 v[25:26], v[25:26], v[49:50], v[25:26]
	v_fma_f64 v[49:50], -v[19:20], v[31:32], 1.0
	v_fma_f64 v[27:28], v[27:28], v[41:42], v[27:28]
	v_mul_f64 v[41:42], v[33:34], v[21:22]
	v_mul_f64 v[51:52], v[43:44], v[23:24]
	v_fma_f64 v[29:30], v[29:30], v[35:36], v[29:30]
	v_mul_f64 v[35:36], v[47:48], v[25:26]
	v_fma_f64 v[31:32], v[31:32], v[49:50], v[31:32]
	v_mul_f64 v[49:50], v[37:38], v[27:28]
	v_fma_f64 v[9:10], -v[9:10], v[41:42], v[33:34]
	v_fma_f64 v[11:12], -v[11:12], v[51:52], v[43:44]
	v_mul_f64 v[33:34], v[39:40], v[29:30]
	v_fma_f64 v[13:14], -v[13:14], v[35:36], v[47:48]
	v_mul_f64 v[43:44], v[45:46], v[31:32]
	v_fma_f64 v[15:16], -v[15:16], v[49:50], v[37:38]
	v_div_fmas_f64 v[9:10], v[9:10], v[21:22], v[41:42]
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f64 v[11:12], v[11:12], v[23:24], v[51:52]
	s_mov_b64 vcc, s[8:9]
	v_div_fmas_f64 v[13:14], v[13:14], v[25:26], v[35:36]
	v_fma_f64 v[17:18], -v[17:18], v[33:34], v[39:40]
	v_fma_f64 v[19:20], -v[19:20], v[43:44], v[45:46]
	s_mov_b64 vcc, s[6:7]
	v_div_fmas_f64 v[15:16], v[15:16], v[27:28], v[49:50]
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f64 v[17:18], v[17:18], v[29:30], v[33:34]
	s_mov_b64 vcc, s[10:11]
	v_div_fmas_f64 v[19:20], v[19:20], v[31:32], v[43:44]
	v_div_fixup_f64 v[13:14], v[13:14], s[50:51], v[1:2]
	v_div_fixup_f64 v[9:10], v[9:10], s[34:35], v[1:2]
	v_div_fixup_f64 v[15:16], v[15:16], s[52:53], v[5:6]
	v_add_f64 v[13:14], v[13:14], 1.0
	v_div_fixup_f64 v[17:18], v[17:18], s[54:55], v[1:2]
	v_div_fixup_f64 v[11:12], v[11:12], s[48:49], v[5:6]
	v_add_f64 v[9:10], v[9:10], 1.0
	v_div_fixup_f64 v[5:6], v[19:20], s[56:57], v[5:6]
	v_add_f64 v[13:14], v[13:14], v[15:16]
	v_add_f64 v[15:16], v[17:18], 1.0
	s_mov_b32 s1, 0x3fc0624d
	s_mov_b32 s0, 0xd2f1a9fc
	v_add_f64 v[9:10], v[9:10], v[11:12]
	v_mul_f64 v[11:12], v[13:14], s[0:1]
	v_add_f64 v[13:14], v[15:16], v[5:6]
	v_mul_f64 v[5:6], v[9:10], v[7:8]
	v_mul_f64 v[7:8], v[13:14], v[11:12]
	s_mov_b64 vcc, exec
	s_cbranch_execz BB0_5
	s_branch BB0_6
BB0_4:
                                        ; implicit-def: $vgpr5_vgpr6
                                        ; implicit-def: $vgpr7_vgpr8
	s_mov_b64 vcc, 0
BB0_5:
	v_add_f32_e64 v5, s31, -1.0
	v_cvt_f64_f32_e32 v[5:6], v5
	s_mov_b32 s1, 0x3faeb851
	s_mov_b32 s0, 0xeb851eb8
	v_div_scale_f64 v[7:8], s[2:3], s[0:1], s[0:1], v[5:6]
	v_rcp_f64_e32 v[9:10], v[7:8]
	v_fma_f64 v[11:12], -v[7:8], v[9:10], 1.0
	v_fma_f64 v[9:10], v[9:10], v[11:12], v[9:10]
	v_div_scale_f64 v[11:12], vcc, v[5:6], s[0:1], v[5:6]
	v_fma_f64 v[13:14], -v[7:8], v[9:10], 1.0
	v_fma_f64 v[9:10], v[9:10], v[13:14], v[9:10]
	v_mul_f64 v[13:14], v[11:12], v[9:10]
	v_fma_f64 v[7:8], -v[7:8], v[13:14], v[11:12]
	v_div_fmas_f64 v[7:8], v[7:8], v[9:10], v[13:14]
	s_mov_b32 s3, 0xc054d555
	s_mov_b32 s2, 0x55555555
	v_add_f64 v[3:4], v[3:4], s[2:3]
	v_div_fixup_f64 v[7:8], v[7:8], s[0:1], v[5:6]
	s_mov_b32 s7, 0x40203333
	s_mov_b32 s6, 0x33333333
	s_mov_b32 s9, 0x3fb16872
	v_add_f64 v[3:4], v[3:4], v[7:8]
	s_mov_b32 s8, 0xb020c49c
	s_mov_b32 s11, 0x3f647ae1
	s_mov_b32 s10, 0x47ae147b
	v_div_scale_f64 v[7:8], s[0:1], s[6:7], s[6:7], v[1:2]
	v_div_scale_f64 v[9:10], s[0:1], s[8:9], s[8:9], v[5:6]
	v_mul_f64 v[3:4], v[3:4], s[10:11]
	s_mov_b32 s11, 0x3fe47ae1
	v_div_scale_f64 v[11:12], s[0:1], s[10:11], s[10:11], v[1:2]
	v_rcp_f64_e32 v[13:14], v[7:8]
	v_rcp_f64_e32 v[15:16], v[9:10]
	v_rcp_f64_e32 v[17:18], v[11:12]
	v_fma_f64 v[19:20], -v[7:8], v[13:14], 1.0
	v_fma_f64 v[21:22], -v[9:10], v[15:16], 1.0
	v_fma_f64 v[23:24], -v[11:12], v[17:18], 1.0
	v_fma_f64 v[13:14], v[13:14], v[19:20], v[13:14]
	v_fma_f64 v[15:16], v[15:16], v[21:22], v[15:16]
	v_fma_f64 v[17:18], v[17:18], v[23:24], v[17:18]
	v_div_scale_f64 v[19:20], vcc, v[1:2], s[6:7], v[1:2]
	v_div_scale_f64 v[21:22], s[0:1], v[5:6], s[8:9], v[5:6]
	v_fma_f64 v[23:24], -v[7:8], v[13:14], 1.0
	v_fma_f64 v[25:26], -v[9:10], v[15:16], 1.0
	v_div_scale_f64 v[27:28], s[2:3], v[1:2], s[10:11], v[1:2]
	v_fma_f64 v[29:30], -v[11:12], v[17:18], 1.0
	v_fma_f64 v[13:14], v[13:14], v[23:24], v[13:14]
	v_fma_f64 v[15:16], v[15:16], v[25:26], v[15:16]
	v_fma_f64 v[17:18], v[17:18], v[29:30], v[17:18]
	v_mul_f64 v[23:24], v[19:20], v[13:14]
	v_mul_f64 v[25:26], v[21:22], v[15:16]
	v_mul_f64 v[29:30], v[27:28], v[17:18]
	v_fma_f64 v[7:8], -v[7:8], v[23:24], v[19:20]
	v_fma_f64 v[9:10], -v[9:10], v[25:26], v[21:22]
	v_fma_f64 v[11:12], -v[11:12], v[29:30], v[27:28]
	v_div_fmas_f64 v[7:8], v[7:8], v[13:14], v[23:24]
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f64 v[9:10], v[9:10], v[15:16], v[25:26]
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f64 v[11:12], v[11:12], v[17:18], v[29:30]
	s_mov_b32 s31, 0x402a0000
	s_mov_b32 s30, 0
	v_div_scale_f64 v[13:14], s[0:1], s[30:31], s[30:31], v[1:2]
	v_div_fixup_f64 v[11:12], v[11:12], s[10:11], v[1:2]
	s_mov_b32 s11, 0x3f747ae1
	v_div_scale_f64 v[15:16], s[0:1], s[10:11], s[10:11], v[5:6]
	v_rcp_f64_e32 v[17:18], v[13:14]
	v_rcp_f64_e32 v[19:20], v[15:16]
	v_div_fixup_f64 v[7:8], v[7:8], s[6:7], v[1:2]
	s_mov_b32 s7, 0x3fc33333
	v_div_scale_f64 v[21:22], s[0:1], s[6:7], s[6:7], v[5:6]
	v_fma_f64 v[23:24], -v[15:16], v[19:20], 1.0
	v_fma_f64 v[25:26], -v[13:14], v[17:18], 1.0
	v_rcp_f64_e32 v[27:28], v[21:22]
	v_fma_f64 v[19:20], v[19:20], v[23:24], v[19:20]
	v_fma_f64 v[17:18], v[17:18], v[25:26], v[17:18]
	v_div_scale_f64 v[23:24], s[0:1], v[1:2], s[30:31], v[1:2]
	v_div_scale_f64 v[25:26], vcc, v[5:6], s[10:11], v[5:6]
	v_fma_f64 v[29:30], -v[15:16], v[19:20], 1.0
	v_fma_f64 v[31:32], -v[13:14], v[17:18], 1.0
	v_fma_f64 v[33:34], -v[21:22], v[27:28], 1.0
	v_fma_f64 v[19:20], v[19:20], v[29:30], v[19:20]
	v_fma_f64 v[17:18], v[17:18], v[31:32], v[17:18]
	v_fma_f64 v[27:28], v[27:28], v[33:34], v[27:28]
	v_mul_f64 v[29:30], v[25:26], v[19:20]
	v_mul_f64 v[31:32], v[23:24], v[17:18]
	v_div_scale_f64 v[33:34], s[2:3], v[5:6], s[6:7], v[5:6]
	v_fma_f64 v[35:36], -v[21:22], v[27:28], 1.0
	v_fma_f64 v[15:16], -v[15:16], v[29:30], v[25:26]
	v_fma_f64 v[13:14], -v[13:14], v[31:32], v[23:24]
	v_fma_f64 v[23:24], v[27:28], v[35:36], v[27:28]
	v_div_fmas_f64 v[15:16], v[15:16], v[19:20], v[29:30]
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f64 v[13:14], v[13:14], v[17:18], v[31:32]
	v_mul_f64 v[17:18], v[33:34], v[23:24]
	v_fma_f64 v[19:20], -v[21:22], v[17:18], v[33:34]
	v_add_f64 v[11:12], v[11:12], 1.0
	v_div_fixup_f64 v[1:2], v[13:14], s[30:31], v[1:2]
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f64 v[13:14], v[19:20], v[23:24], v[17:18]
	s_mov_b32 s1, 0x40865249
	s_mov_b32 s0, 0x24924925
	v_add_f64 v[7:8], v[7:8], 1.0
	v_add_f64 v[11:12], v[11:12], s[0:1]
	v_div_fixup_f64 v[15:16], v[15:16], s[10:11], v[5:6]
	v_add_f64 v[1:2], v[1:2], 1.0
	s_mov_b32 s1, 0x4046ba2e
	s_mov_b32 s0, 0x8ba2e8bb
	s_mov_b32 s3, 0xc01a24cf
	v_div_fixup_f64 v[9:10], v[9:10], s[8:9], v[5:6]
	v_add_f64 v[7:8], v[7:8], s[0:1]
	s_mov_b32 s2, 0x7a24cf7a
	v_add_f64 v[11:12], v[11:12], v[15:16]
	v_add_f64 v[1:2], v[1:2], s[2:3]
	v_div_fixup_f64 v[5:6], v[13:14], s[6:7], v[5:6]
	v_add_f64 v[7:8], v[7:8], v[9:10]
	s_mov_b32 s1, 0x3fc0624d
	s_mov_b32 s0, 0xd2f1a9fc
	v_mul_f64 v[9:10], v[11:12], s[0:1]
	v_add_f64 v[1:2], v[1:2], v[5:6]
	v_mul_f64 v[5:6], v[7:8], v[3:4]
	v_mul_f64 v[7:8], v[1:2], v[9:10]
BB0_6:                                  ; %_Z10kernel_camfPfS_iS_iS_if.exit67
	v_cvt_f32_f64_e32 v1, v[5:6]
	v_cvt_f32_f64_e32 v2, v[7:8]
	s_mov_b32 s2, 0x41200000
	v_div_scale_f32 v3, s[0:1], v1, v1, s2
	s_mov_b32 s3, 0x43fa0000
	v_div_scale_f32 v4, s[0:1], v2, v2, s3
	v_div_scale_f32 v5, vcc, s2, v1, s2
	v_div_scale_f32 v6, s[0:1], s3, v2, s3
	v_rcp_f32_e32 v7, v3
	v_rcp_f32_e32 v8, v4
	v_mov_b32_e32 v9, 0x447a0000
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v9, s29, v9
	v_fma_f32 v10, -v3, v7, 1.0
	v_fma_f32 v11, -v4, v8, 1.0
	v_fma_f32 v7, v10, v7, v7
	v_fma_f32 v8, v11, v8, v8
	v_mul_f32_e32 v10, v5, v7
	v_mul_f32_e32 v11, v6, v8
	v_fma_f32 v12, -v3, v10, v5
	v_fma_f32 v13, -v4, v11, v6
	v_fma_f32 v10, v12, v7, v10
	v_fma_f32 v11, v13, v8, v11
	v_fma_f32 v3, -v3, v10, v5
	v_fma_f32 v4, -v4, v11, v6
	v_div_fmas_f32 v3, v3, v7, v10
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v4, v4, v8, v11
	v_frexp_mant_f32_e64 v5, |v9|
	s_mov_b32 s1, 0x3f2aaaab
	v_cmp_gt_f32_e32 vcc, s1, v5
	v_cndmask_b32_e64 v6, 0, 1, vcc
	v_ldexp_f32 v5, v5, v6
	v_frexp_exp_i32_f32_e64 v6, |v9|
	v_subbrev_u32_e32 v6, vcc, 0, v6, vcc
	v_add_f32_e32 v7, -1.0, v5
	v_add_f32_e32 v8, 1.0, v5
	v_sub_f32_e32 v10, v8, v5
	v_sub_f32_e32 v11, v8, v10
	v_rcp_f32_e32 v12, v8
	v_sub_f32_e32 v5, v5, v11
	v_sub_f32_e32 v10, 1.0, v10
	v_add_f32_e32 v5, v10, v5
	v_mul_f32_e32 v10, v7, v12
	v_mul_f32_e32 v11, v8, v10
	v_fma_f32 v8, v10, v8, -v11
	v_fma_f32 v5, v10, v5, v8
	v_add_f32_e32 v8, v11, v5
	v_sub_f32_e32 v11, v8, v11
	v_sub_f32_e32 v5, v5, v11
	v_sub_f32_e32 v11, v7, v8
	v_sub_f32_e32 v7, v7, v11
	v_sub_f32_e32 v7, v7, v8
	v_sub_f32_e32 v5, v7, v5
	v_add_f32_e32 v5, v11, v5
	v_mul_f32_e32 v5, v12, v5
	v_add_f32_e32 v7, v10, v5
	v_sub_f32_e32 v8, v7, v10
	v_sub_f32_e32 v5, v5, v8
	v_mul_f32_e32 v8, v7, v7
	v_add_f32_e32 v10, v5, v5
	v_fma_f32 v11, v7, v7, -v8
	v_fma_f32 v10, v7, v10, v11
	v_fma_f32 v10, v5, v5, v10
	v_add_f32_e32 v11, v8, v10
	v_sub_f32_e32 v8, v11, v8
	v_sub_f32_e32 v8, v10, v8
	s_mov_b32 s8, 0x3e76c4e1
	v_mov_b32_e32 v10, 0x3e91f4c4
	v_fma_f32 v12, v11, s8, v10
	v_cvt_f32_i32_e32 v6, v6
	s_mov_b32 s9, 0x3ecccdef
	v_fma_f32 v12, v11, v12, s9
	s_mov_b32 s10, 0x3f317218
	v_mul_f32_e32 v13, s10, v6
	v_fma_f32 v14, v6, s10, -v13
	s_mov_b32 s11, 0xb102e308
	v_fma_f32 v6, v6, s11, v14
	v_add_f32_e32 v14, v13, v6
	v_sub_f32_e32 v13, v14, v13
	v_sub_f32_e32 v6, v6, v13
	v_ldexp_f32 v13, v7, 1
	v_mul_f32_e32 v15, v7, v11
	v_fma_f32 v16, v11, v7, -v15
	v_mul_f32_e32 v7, v7, v8
	v_fma_f32 v7, v11, v5, v7
	v_add_f32_e32 v7, v16, v7
	v_add_f32_e32 v16, v15, v7
	v_mul_f32_e32 v17, v11, v12
	v_fma_f32 v11, v11, v12, -v17
	v_fma_f32 v8, v8, v12, v11
	v_add_f32_e32 v11, v17, v8
	v_sub_f32_e32 v12, v11, v17
	v_sub_f32_e32 v8, v8, v12
	s_mov_b32 s29, 0x3f2aaaaa
	v_add_f32_e32 v12, s29, v11
	s_mov_b32 s30, 0xbf2aaaaa
	v_add_f32_e32 v17, s30, v12
	v_sub_f32_e32 v11, v11, v17
	s_mov_b32 s31, 0x31739010
	v_add_f32_e32 v8, s31, v8
	v_add_f32_e32 v8, v11, v8
	v_add_f32_e32 v11, v12, v8
	v_mul_f32_e32 v17, v16, v11
	v_fma_f32 v18, v16, v11, -v17
	v_sub_f32_e32 v12, v11, v12
	v_sub_f32_e32 v8, v8, v12
	v_sub_f32_e32 v12, v16, v15
	v_sub_f32_e32 v7, v7, v12
	v_mul_f32_e32 v7, v7, v11
	v_fma_f32 v7, v16, v8, v7
	v_add_f32_e32 v7, v18, v7
	v_ldexp_f32 v5, v5, 1
	v_add_f32_e32 v8, v17, v7
	v_sub_f32_e32 v11, v8, v17
	v_sub_f32_e32 v7, v7, v11
	v_add_f32_e32 v11, v13, v8
	v_sub_f32_e32 v12, v11, v13
	v_sub_f32_e32 v8, v8, v12
	v_add_f32_e32 v5, v5, v7
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v7, v11, v5
	v_sub_f32_e32 v8, v7, v11
	v_sub_f32_e32 v5, v5, v8
	v_add_f32_e32 v8, v14, v7
	v_sub_f32_e32 v11, v8, v14
	v_sub_f32_e32 v12, v8, v11
	v_sub_f32_e32 v12, v14, v12
	v_sub_f32_e32 v7, v7, v11
	v_add_f32_e32 v7, v7, v12
	v_add_f32_e32 v11, v6, v5
	v_sub_f32_e32 v12, v11, v6
	v_sub_f32_e32 v13, v11, v12
	v_sub_f32_e32 v6, v6, v13
	v_sub_f32_e32 v5, v5, v12
	v_add_f32_e32 v5, v5, v6
	v_add_f32_e32 v6, v11, v7
	v_add_f32_e32 v7, v8, v6
	v_sub_f32_e32 v8, v7, v8
	v_sub_f32_e32 v6, v6, v8
	v_add_f32_e32 v5, v5, v6
	v_add_f32_e32 v6, v7, v5
	v_sub_f32_e32 v7, v6, v7
	v_sub_f32_e32 v5, v5, v7
	v_add_f32_e32 v7, v6, v6
	v_fma_f32 v8, v6, 2.0, -v7
	v_mul_f32_e32 v6, 0, v6
	v_fma_f32 v5, v5, 2.0, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v6, v7, v5
	v_sub_f32_e32 v8, v6, v7
	v_sub_f32_e32 v5, v5, v8
	s_movk_i32 s6, 0x204
	v_cmp_class_f32_e64 vcc, v7, s6
	v_cndmask_b32_e32 v6, v6, v7, vcc
	s_mov_b32 s0, 0x7f800000
	v_cmp_neq_f32_e64 vcc, |v6|, s0
	v_cndmask_b32_e32 v5, 0, v5, vcc
	s_mov_b32 s33, 0x3fb8aa3b
	v_mul_f32_e32 v7, s33, v6
	v_rndne_f32_e32 v7, v7
	s_mov_b32 s34, 0x3f317200
	v_mul_f32_e32 v8, s34, v7
	v_sub_f32_e32 v11, v6, v8
	v_sub_f32_e32 v12, v11, v6
	v_sub_f32_e32 v13, v11, v12
	v_sub_f32_e32 v13, v6, v13
	v_add_f32_e32 v8, v8, v12
	v_sub_f32_e32 v8, v13, v8
	v_add_f32_e32 v5, v5, v8
	v_add_f32_e32 v8, v11, v5
	v_sub_f32_e32 v11, v8, v11
	v_sub_f32_e32 v5, v5, v11
	s_mov_b32 s35, 0x35bfbc00
	v_mul_f32_e32 v11, s35, v7
	v_sub_f32_e32 v12, v8, v11
	v_sub_f32_e32 v8, v8, v12
	v_sub_f32_e32 v8, v8, v11
	v_add_f32_e32 v5, v5, v8
	v_add_f32_e32 v8, v12, v5
	v_sub_f32_e32 v11, v8, v12
	v_sub_f32_e32 v5, v5, v11
	s_mov_b32 s48, 0x2ea39ef3
	v_mul_f32_e32 v11, s48, v7
	v_sub_f32_e32 v12, v8, v11
	v_sub_f32_e32 v8, v8, v12
	v_sub_f32_e32 v8, v8, v11
	v_add_f32_e32 v5, v5, v8
	v_add_f32_e32 v8, v12, v5
	v_sub_f32_e32 v11, v8, v12
	v_sub_f32_e32 v5, v5, v11
	s_mov_b32 s49, 0x3ab42872
	v_mov_b32_e32 v11, 0x3c091de6
	v_fma_f32 v12, v8, s49, v11
	s_mov_b32 s50, 0x3d2aadcc
	v_fma_f32 v12, v8, v12, s50
	s_mov_b32 s51, 0x3e2aaa47
	v_fma_f32 v12, v8, v12, s51
	s_mov_b32 s7, 0x3efffffc
	v_fma_f32 v12, v8, v12, s7
	v_mul_f32_e32 v13, v8, v8
	v_fma_f32 v14, v8, v8, -v13
	v_add_f32_e32 v15, v5, v5
	v_fma_f32 v14, v8, v15, v14
	v_fma_f32 v14, v5, v5, v14
	v_add_f32_e32 v15, v13, v14
	v_mul_f32_e32 v16, v12, v15
	v_sub_f32_e32 v13, v15, v13
	v_sub_f32_e32 v13, v14, v13
	v_fma_f32 v14, v15, v12, -v16
	v_fma_f32 v12, v13, v12, v14
	v_mov_b32_e32 v13, s43
	v_sub_f32_e32 v13, s20, v13
	v_subrev_f32_e32 v13, s44, v13
	v_subrev_f32_e32 v13, s45, v13
	v_mov_b32_e32 v14, 0x3be56041
	v_mul_f32_e32 v15, s40, v14
	v_mov_b32_e32 v17, 0xbab78034
	v_mul_f32_e32 v17, s43, v17
	v_fma_f32 v15, v15, v13, v17
	v_mul_f32_e32 v17, s41, v14
	v_mov_b32_e32 v18, 0xb76ae18a
	v_mul_f32_e32 v19, s44, v18
	v_fma_f32 v17, v17, v13, v19
	v_mul_f32_e32 v14, s42, v14
	v_mul_f32_e32 v18, s45, v18
	v_fma_f32 v13, v14, v13, v18
	v_mov_b32_e32 v14, s36
	v_add_f32_e32 v18, s47, v14
	v_add_f32_e32 v18, s37, v18
	v_add_f32_e32 v18, s38, v18
	v_frexp_mant_f32_e64 v19, |v18|
	v_cmp_gt_f32_e32 vcc, s1, v19
	v_cndmask_b32_e64 v20, 0, 1, vcc
	v_ldexp_f32 v19, v19, v20
	v_add_f32_e32 v20, 1.0, v19
	v_sub_f32_e32 v21, v20, v19
	v_sub_f32_e32 v22, v20, v21
	v_sub_f32_e32 v22, v19, v22
	v_rcp_f32_e32 v23, v20
	v_sub_f32_e32 v21, 1.0, v21
	v_add_f32_e32 v21, v21, v22
	v_add_f32_e32 v19, -1.0, v19
	v_mul_f32_e32 v22, v19, v23
	v_mul_f32_e32 v24, v20, v22
	v_fma_f32 v20, v22, v20, -v24
	v_fma_f32 v20, v22, v21, v20
	v_add_f32_e32 v21, v24, v20
	v_sub_f32_e32 v24, v21, v24
	v_sub_f32_e32 v20, v20, v24
	v_sub_f32_e32 v24, v19, v21
	v_sub_f32_e32 v19, v19, v24
	v_sub_f32_e32 v19, v19, v21
	v_sub_f32_e32 v19, v19, v20
	v_add_f32_e32 v19, v24, v19
	v_mul_f32_e32 v19, v23, v19
	v_add_f32_e32 v20, v22, v19
	v_sub_f32_e32 v21, v20, v22
	v_sub_f32_e32 v19, v19, v21
	v_mul_f32_e32 v21, v20, v20
	v_add_f32_e32 v22, v19, v19
	v_fma_f32 v23, v20, v20, -v21
	v_fma_f32 v22, v20, v22, v23
	v_fma_f32 v22, v19, v19, v22
	v_frexp_exp_i32_f32_e64 v23, |v18|
	v_subbrev_u32_e32 v23, vcc, 0, v23, vcc
	v_cvt_f32_i32_e32 v23, v23
	v_add_f32_e32 v24, v21, v22
	v_sub_f32_e32 v21, v24, v21
	v_sub_f32_e32 v21, v22, v21
	v_mul_f32_e32 v22, s10, v23
	v_fma_f32 v25, v23, s10, -v22
	v_fma_f32 v23, v23, s11, v25
	v_add_f32_e32 v25, v22, v23
	v_sub_f32_e32 v22, v25, v22
	v_sub_f32_e32 v22, v23, v22
	v_fma_f32 v10, v24, s8, v10
	v_fma_f32 v10, v24, v10, s9
	v_mul_f32_e32 v23, v24, v10
	v_fma_f32 v26, v24, v10, -v23
	v_fma_f32 v10, v21, v10, v26
	v_mul_f32_e32 v21, v20, v21
	v_fma_f32 v21, v24, v19, v21
	v_mul_f32_e32 v26, v20, v24
	v_fma_f32 v24, v24, v20, -v26
	v_add_f32_e32 v21, v24, v21
	v_add_f32_e32 v24, v23, v10
	v_sub_f32_e32 v23, v24, v23
	v_sub_f32_e32 v10, v10, v23
	v_add_f32_e32 v23, s29, v24
	v_add_f32_e32 v27, s30, v23
	v_sub_f32_e32 v24, v24, v27
	v_add_f32_e32 v10, s31, v10
	v_add_f32_e32 v10, v24, v10
	v_add_f32_e32 v24, v23, v10
	v_sub_f32_e32 v23, v24, v23
	v_sub_f32_e32 v10, v10, v23
	v_add_f32_e32 v23, v26, v21
	v_sub_f32_e32 v26, v23, v26
	v_sub_f32_e32 v21, v21, v26
	v_mul_f32_e32 v21, v21, v24
	v_fma_f32 v10, v23, v10, v21
	v_mul_f32_e32 v21, v23, v24
	v_fma_f32 v23, v23, v24, -v21
	v_add_f32_e32 v10, v23, v10
	v_add_f32_e32 v23, v21, v10
	v_sub_f32_e32 v21, v23, v21
	v_sub_f32_e32 v10, v10, v21
	v_ldexp_f32 v20, v20, 1
	v_add_f32_e32 v21, v20, v23
	v_sub_f32_e32 v20, v21, v20
	v_sub_f32_e32 v20, v23, v20
	v_ldexp_f32 v19, v19, 1
	v_add_f32_e32 v10, v19, v10
	v_add_f32_e32 v10, v20, v10
	v_add_f32_e32 v19, v21, v10
	v_sub_f32_e32 v20, v19, v21
	v_sub_f32_e32 v10, v10, v20
	v_add_f32_e32 v20, v25, v19
	v_sub_f32_e32 v21, v20, v25
	v_sub_f32_e32 v23, v20, v21
	v_sub_f32_e32 v23, v25, v23
	v_sub_f32_e32 v19, v19, v21
	v_add_f32_e32 v19, v19, v23
	v_add_f32_e32 v21, v22, v10
	v_sub_f32_e32 v23, v21, v22
	v_sub_f32_e32 v24, v21, v23
	v_sub_f32_e32 v22, v22, v24
	v_sub_f32_e32 v10, v10, v23
	v_add_f32_e32 v10, v10, v22
	v_add_f32_e32 v19, v21, v19
	v_add_f32_e32 v21, v20, v19
	v_sub_f32_e32 v20, v21, v20
	v_sub_f32_e32 v19, v19, v20
	v_add_f32_e32 v10, v10, v19
	v_add_f32_e32 v19, v21, v10
	v_sub_f32_e32 v20, v19, v21
	v_sub_f32_e32 v10, v10, v20
	v_add_f32_e32 v20, v19, v19
	v_fma_f32 v21, v19, 2.0, -v20
	v_mul_f32_e32 v22, 0, v19
	v_fma_f32 v23, v10, 2.0, v22
	v_add_f32_e32 v21, v21, v23
	v_add_f32_e32 v23, v20, v21
	v_sub_f32_e32 v24, v23, v20
	v_sub_f32_e32 v21, v21, v24
	v_cmp_class_f32_e64 vcc, v20, s6
	v_cndmask_b32_e32 v20, v23, v20, vcc
	v_mul_f32_e32 v23, s33, v20
	v_rndne_f32_e32 v23, v23
	v_mul_f32_e32 v24, s34, v23
	v_sub_f32_e32 v25, v20, v24
	v_sub_f32_e32 v26, v25, v20
	v_add_f32_e32 v24, v24, v26
	v_sub_f32_e32 v26, v25, v26
	v_sub_f32_e32 v26, v20, v26
	v_sub_f32_e32 v24, v26, v24
	v_cmp_neq_f32_e64 vcc, |v20|, s0
	v_cndmask_b32_e32 v21, 0, v21, vcc
	v_add_f32_e32 v21, v21, v24
	v_add_f32_e32 v24, v25, v21
	v_sub_f32_e32 v25, v24, v25
	v_sub_f32_e32 v21, v21, v25
	v_mul_f32_e32 v25, s35, v23
	v_sub_f32_e32 v26, v24, v25
	v_sub_f32_e32 v24, v24, v26
	v_sub_f32_e32 v24, v24, v25
	v_add_f32_e32 v21, v21, v24
	v_add_f32_e32 v24, v26, v21
	v_sub_f32_e32 v25, v24, v26
	v_sub_f32_e32 v21, v21, v25
	v_mul_f32_e32 v25, s48, v23
	v_sub_f32_e32 v26, v24, v25
	v_sub_f32_e32 v24, v24, v26
	v_sub_f32_e32 v24, v24, v25
	v_add_f32_e32 v21, v21, v24
	v_add_f32_e32 v24, v26, v21
	v_sub_f32_e32 v25, v24, v26
	v_sub_f32_e32 v21, v21, v25
	v_mul_f32_e32 v25, v24, v24
	v_fma_f32 v26, v24, v24, -v25
	v_add_f32_e32 v27, v21, v21
	v_fma_f32 v26, v24, v27, v26
	v_fma_f32 v26, v21, v21, v26
	v_add_f32_e32 v27, v25, v26
	v_sub_f32_e32 v25, v27, v25
	v_sub_f32_e32 v25, v26, v25
	v_fma_f32 v26, v24, s49, v11
	v_fma_f32 v26, v24, v26, s50
	v_fma_f32 v26, v24, v26, s51
	v_fma_f32 v26, v24, v26, s7
	v_mul_f32_e32 v28, v26, v27
	v_fma_f32 v27, v27, v26, -v28
	v_fma_f32 v25, v25, v26, v27
	s_mov_b32 s1, 0x40400000
	v_fma_f32 v10, v10, s1, v22
	v_mul_f32_e32 v22, s1, v19
	v_fma_f32 v19, v19, s1, -v22
	v_add_f32_e32 v10, v19, v10
	v_add_f32_e32 v19, v22, v10
	v_sub_f32_e32 v26, v19, v22
	v_sub_f32_e32 v10, v10, v26
	v_cmp_class_f32_e64 vcc, v22, s6
	v_cndmask_b32_e32 v19, v19, v22, vcc
	v_mul_f32_e32 v22, s33, v19
	v_rndne_f32_e32 v22, v22
	v_mul_f32_e32 v26, s34, v22
	v_sub_f32_e32 v27, v19, v26
	v_sub_f32_e32 v29, v27, v19
	v_add_f32_e32 v26, v26, v29
	v_sub_f32_e32 v29, v27, v29
	v_sub_f32_e32 v29, v19, v29
	v_sub_f32_e32 v26, v29, v26
	v_cmp_neq_f32_e64 vcc, |v19|, s0
	v_cndmask_b32_e32 v10, 0, v10, vcc
	v_add_f32_e32 v10, v10, v26
	v_add_f32_e32 v26, v27, v10
	v_sub_f32_e32 v27, v26, v27
	v_sub_f32_e32 v10, v10, v27
	v_mul_f32_e32 v27, s35, v22
	v_sub_f32_e32 v29, v26, v27
	v_sub_f32_e32 v26, v26, v29
	v_sub_f32_e32 v26, v26, v27
	v_add_f32_e32 v10, v10, v26
	v_add_f32_e32 v26, v29, v10
	v_sub_f32_e32 v27, v26, v29
	v_sub_f32_e32 v10, v10, v27
	v_mul_f32_e32 v27, s48, v22
	v_sub_f32_e32 v29, v26, v27
	v_sub_f32_e32 v26, v26, v29
	v_sub_f32_e32 v26, v26, v27
	v_add_f32_e32 v10, v10, v26
	v_add_f32_e32 v26, v29, v10
	v_sub_f32_e32 v27, v26, v29
	v_sub_f32_e32 v10, v10, v27
	v_mul_f32_e32 v27, v26, v26
	v_fma_f32 v29, v26, v26, -v27
	v_add_f32_e32 v30, v10, v10
	v_fma_f32 v29, v26, v30, v29
	v_fma_f32 v29, v10, v10, v29
	v_add_f32_e32 v30, v27, v29
	v_sub_f32_e32 v27, v30, v27
	v_sub_f32_e32 v27, v29, v27
	v_fma_f32 v11, v26, s49, v11
	v_fma_f32 v11, v26, v11, s50
	v_fma_f32 v11, v26, v11, s51
	v_div_fixup_f32 v1, v3, v1, s2
	v_div_fixup_f32 v2, v4, v2, s3
	v_add_f32_e32 v3, v16, v12
	v_sub_f32_e32 v4, v3, v16
	v_sub_f32_e32 v4, v12, v4
	v_add_f32_e32 v12, v8, v3
	v_sub_f32_e32 v8, v12, v8
	v_sub_f32_e32 v3, v3, v8
	v_add_f32_e32 v4, v5, v4
	v_cvt_i32_f32_e32 v5, v7
	v_add_f32_e32 v3, v3, v4
	v_add_f32_e32 v3, v12, v3
	v_add_f32_e32 v3, 1.0, v3
	v_ldexp_f32 v3, v3, v5
	s_mov_b32 s2, 0x42b20000
	s_mov_b32 s3, 0xc2d00000
	v_cmp_ngt_f32_e32 vcc, s3, v6
	v_mov_b32_e32 v12, s0
	v_cmp_nlt_f32_e64 s[0:1], s2, v6
	v_cndmask_b32_e64 v3, v12, v3, s[0:1]
	v_cmp_neq_f32_e64 s[0:1], 0, v9
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v3, 0, v3, vcc
	v_cmp_class_f32_e64 vcc, v9, s6
	v_cndmask_b32_e32 v3, v3, v12, vcc
	v_cmp_u_f32_e32 vcc, v9, v9
	v_cndmask_b32_e64 v16, |v3|, v9, vcc
	v_mov_b32_e32 v3, 0xc4067dd3
	v_mul_f32_e32 v3, s18, v3
	v_mov_b32_e32 v5, 0x42380000
	v_mul_f32_e32 v4, s40, v5
	v_fma_f32 v29, v4, s39, v3
	v_mov_b32_e32 v3, 0xc050aa65
	v_mul_f32_e32 v3, s19, v3
	v_mul_f32_e32 v4, s41, v5
	v_fma_f32 v31, v4, s39, v3
	v_sub_f32_e64 v3, 1.0, s46
	v_subrev_f32_e32 v3, s47, v3
	v_subrev_f32_e32 v3, s36, v3
	v_subrev_f32_e32 v3, s37, v3
	v_subrev_f32_e32 v6, s38, v3
	v_mov_b32_e32 v3, 0xc3a42dda
	v_mul_f32_e32 v3, s46, v3
	v_mov_b32_e32 v7, 0x428357e2
	v_mul_f32_e32 v4, s41, v7
	v_fma_f32 v32, v4, v6, v3
	v_mul_f32_e32 v3, s38, v4
	v_mov_b32_e32 v4, 0x43a42dda
	v_fma_f32 v33, s37, v4, -v3
	v_mul_f32_e32 v34, v16, v1
	v_mov_b32_e32 v1, 0xc1200000
	v_mul_f32_e32 v1, s41, v1
	v_fma_f32 v35, s40, v34, v1
	v_mul_f32_e32 v36, v16, v2
	v_mov_b32_e32 v9, 0xc3fa0000
	v_mul_f32_e32 v1, s42, v9
	v_fma_f32 v37, s41, v36, v1
	v_sub_f32_e32 v1, v35, v37
	v_sub_f32_e32 v1, v1, v17
	v_sub_f32_e32 v1, v1, v31
	v_sub_f32_e32 v2, v33, v32
	v_fma_f32 v3, s21, v2, v1
	v_sub_f32_e64 v1, -v35, v15
	v_sub_f32_e32 v1, v1, v29
	s_mov_b32 s31, 0x3f50624d
	s_mov_b32 s30, 0xd2f1a9fc
	v_cvt_f64_f32_e32 v[1:2], v1
	v_cvt_f64_f32_e32 v[3:4], v3
	v_mul_f32_e32 v5, s42, v5
	v_mov_b32_e32 v8, 0xbaaa64c3
	v_mul_f32_e32 v8, s28, v8
	v_fma_f32 v38, v5, s39, v8
	v_mul_f32_e32 v5, s42, v7
	v_mov_b32_e32 v7, 0xc00ccccd
	v_mul_f32_e32 v7, s47, v7
	v_fma_f32 v39, v5, v6, v7
	v_mul_f32_e32 v5, s38, v5
	v_mov_b32_e32 v6, 0x3b102de0
	v_fma_f32 v40, s36, v6, -v5
	v_sub_f32_e32 v5, v37, v13
	v_sub_f32_e32 v5, v5, v38
	v_sub_f32_e32 v6, v40, v39
	v_fma_f32 v5, s21, v6, v5
	v_cvt_f64_f32_e32 v[5:6], v5
	v_mov_b32_e32 v7, 0xbdcccccd
	v_mul_f32_e32 v7, s44, v7
	v_fma_f32 v41, s43, v34, v7
	v_sub_f32_e32 v7, v15, v41
	v_cvt_f64_f32_e32 v[7:8], v7
	v_mul_f64 v[1:2], v[1:2], s[30:31]
	v_mul_f64 v[3:4], v[3:4], s[30:31]
	v_mul_f64 v[5:6], v[5:6], s[30:31]
	v_mul_f64 v[7:8], v[7:8], s[30:31]
	v_fma_f32 v11, v26, v11, s7
	v_mul_f32_e32 v15, v11, v30
	v_fma_f32 v30, v30, v11, -v15
	v_fma_f32 v11, v27, v11, v30
	v_cvt_f32_f64_e32 v1, v[1:2]
	v_cvt_f32_f64_e32 v2, v[3:4]
	v_cvt_f32_f64_e32 v3, v[5:6]
	v_cvt_f32_f64_e32 v4, v[7:8]
	v_add_f32_e32 v5, v28, v25
	v_sub_f32_e32 v6, v5, v28
	v_sub_f32_e32 v6, v25, v6
	v_add_f32_e32 v7, v24, v5
	v_sub_f32_e32 v8, v7, v24
	v_sub_f32_e32 v5, v5, v8
	v_add_f32_e32 v6, v21, v6
	v_cvt_i32_f32_e32 v8, v23
	v_add_f32_e32 v5, v5, v6
	v_add_f32_e32 v5, v7, v5
	v_add_f32_e32 v5, 1.0, v5
	v_ldexp_f32 v5, v5, v8
	v_add_f32_e32 v6, v15, v11
	v_sub_f32_e32 v7, v6, v15
	v_sub_f32_e32 v7, v11, v7
	v_add_f32_e32 v8, v26, v6
	v_sub_f32_e32 v11, v8, v26
	v_sub_f32_e32 v6, v6, v11
	v_add_f32_e32 v7, v10, v7
	v_cvt_i32_f32_e32 v10, v22
	v_add_f32_e32 v6, v6, v7
	v_add_f32_e32 v6, v8, v6
	v_add_f32_e32 v6, 1.0, v6
	v_ldexp_f32 v6, v6, v10
	v_cmp_nlt_f32_e32 vcc, s2, v19
	v_cndmask_b32_e32 v6, v12, v6, vcc
	v_cmp_ngt_f32_e32 vcc, s3, v19
	v_cndmask_b32_e32 v6, 0, v6, vcc
	s_brev_b32 s0, -2
	v_bfrev_b32_e32 v7, 1
	v_cmp_gt_f32_e32 vcc, 0, v18
	v_cndmask_b32_e32 v7, 0, v7, vcc
	v_bfi_b32 v6, s0, v6, v7
	v_bfi_b32 v7, s0, 0, v18
	v_cmp_eq_f32_e32 vcc, 0, v18
	v_cndmask_b32_e32 v10, v6, v7, vcc
	v_cmp_gt_f32_e64 s[0:1], s3, v20
	v_cmp_nlt_f32_e64 s[2:3], s2, v20
	v_cndmask_b32_e64 v5, v12, v5, s[2:3]
	v_mov_b32_e32 v6, 0x3fdc28f6
	v_mul_f32_e32 v11, s23, v6
	v_mov_b32_e32 v15, 0x41380000
	v_fma_f32 v19, s21, v14, v15
	v_mul_f32_e32 v20, s36, v11
	v_div_scale_f32 v14, s[2:3], v19, v19, v20
	s_or_b64 s[0:1], vcc, s[0:1]
	s_add_u32 s8, s26, 0xb8
	v_cndmask_b32_e64 v5, v5, 0, s[0:1]
	v_cmp_class_f32_e64 vcc, v18, s6
	v_cndmask_b32_e32 v5, v5, v12, vcc
	v_cmp_u_f32_e64 s[0:1], v18, v18
	v_cndmask_b32_e64 v5, |v5|, v18, s[0:1]
	v_cvt_f64_f32_e32 v[5:6], v5
	s_addc_u32 s9, s27, 0
	s_mov_b32 s3, 0x3f7e4f76
	s_mov_b32 s2, 0x5fd8adac
	v_mul_f64 v[5:6], v[5:6], s[2:3]
	s_mov_b32 s3, 0x3fac28f5
	s_mov_b32 s2, 0xc28f5c29
	v_cvt_f64_f32_e32 v[7:8], v18
	v_rcp_f32_e32 v21, v14
	v_div_scale_f32 v22, vcc, v20, v19, v20
	v_mov_b32_e32 v23, s37
	v_fma_f32 v23, s21, v23, v15
	v_mul_f32_e32 v24, s37, v11
	v_div_scale_f32 v25, s[6:7], v23, v23, v24
	v_fma_f64 v[5:6], v[7:8], s[2:3], v[5:6]
	v_fma_f32 v7, -v14, v21, 1.0
	v_div_scale_f32 v8, s[2:3], v24, v23, v24
	v_mov_b32_e32 v26, s38
	v_fma_f32 v15, s21, v26, v15
	v_mul_f32_e32 v26, s38, v11
	v_div_scale_f32 v11, s[6:7], v15, v15, v26
	v_fma_f32 v7, v7, v21, v21
	v_mul_f32_e32 v21, v22, v7
	v_fma_f32 v27, -v14, v21, v22
	v_fma_f32 v21, v27, v7, v21
	v_div_scale_f32 v27, s[6:7], v26, v15, v26
	v_rcp_f32_e32 v28, v25
	v_fma_f32 v14, -v14, v21, v22
	v_div_fmas_f32 v21, v14, v7, v21
	v_fma_f32 v7, -v25, v28, 1.0
	v_fma_f32 v7, v7, v28, v28
	v_mul_f32_e32 v14, v8, v7
	v_fma_f32 v22, -v25, v14, v8
	v_fma_f32 v14, v22, v7, v14
	v_rcp_f32_e32 v22, v11
	v_fma_f32 v8, -v25, v14, v8
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f32 v14, v8, v7, v14
	v_fma_f32 v7, -v11, v22, 1.0
	v_fma_f32 v7, v7, v22, v22
	v_mul_f32_e32 v8, v27, v7
	v_fma_f32 v22, -v11, v8, v27
	v_fma_f32 v8, v22, v7, v8
	v_fma_f32 v11, -v11, v8, v27
	s_mov_b64 vcc, s[6:7]
	v_div_fmas_f32 v22, v11, v7, v8
	v_mov_b32_e32 v7, 0xff800000
	v_cmp_class_f32_e64 vcc, v18, 4
	v_cndmask_b32_e32 v7, v10, v7, vcc
	s_movk_i32 s2, 0x200
	v_cmp_class_f32_e64 vcc, v18, s2
	v_cndmask_b32_e32 v7, v7, v12, vcc
	v_cndmask_b32_e64 v7, v7, v18, s[0:1]
	s_mov_b32 s1, 0x3f8eb851
	s_mov_b32 s0, 0xeb851eb8
	v_cvt_f64_f32_e32 v[7:8], v7
	v_div_fixup_f32 v18, v14, v23, v24
	v_mul_f32_e32 v9, s45, v9
	v_fma_f32 v23, s44, v36, v9
	v_add_f32_e32 v9, v17, v41
	v_sub_f32_e32 v9, v9, v23
	v_cvt_f64_f32_e32 v[9:10], v9
	v_add_f32_e32 v11, v13, v23
	v_cvt_f64_f32_e32 v[11:12], v11
	v_mov_b32_e32 v13, 0xc0566666
	v_mul_f32_e32 v13, s47, v13
	v_fma_f32 v24, s46, v36, v13
	v_sub_f32_e32 v13, v32, v24
	v_add_f32_e32 v13, v18, v13
	v_cvt_f64_f32_e32 v[13:14], v13
	v_fma_f64 v[5:6], v[7:8], s[0:1], v[5:6]
	v_mul_f64 v[7:8], v[9:10], s[30:31]
	v_mul_f64 v[9:10], v[11:12], s[30:31]
	v_mul_f64 v[11:12], v[13:14], s[30:31]
	v_mov_b32_e32 v14, s9
	v_mov_b32_e32 v13, s8
	flat_store_dwordx4 v[13:14], v[1:4]
	s_nop 0
	v_div_fixup_f32 v4, v21, v19, v20
	v_div_fixup_f32 v13, v22, v15, v26
	v_cvt_f32_f64_e32 v5, v[5:6]
	v_cvt_f32_f64_e32 v1, v[7:8]
	v_cvt_f32_f64_e32 v2, v[9:10]
	v_cvt_f32_f64_e32 v3, v[11:12]
	v_fma_f32 v6, s47, v5, -v4
	v_add_f32_e32 v4, v39, v24
	v_sub_f32_e32 v4, v4, v6
	v_cvt_f64_f32_e32 v[4:5], v4
	v_mul_f32_e32 v7, s37, v36
	v_mov_b32_e32 v8, 0x3b5b8bac
	v_fma_f32 v20, s36, v8, -v7
	v_sub_f32_e32 v7, v20, v33
	v_sub_f32_e32 v8, v7, v18
	v_sub_f32_e32 v6, v6, v40
	v_sub_f32_e32 v6, v6, v20
	v_cvt_f64_f32_e32 v[6:7], v6
	v_cvt_f64_f32_e32 v[8:9], v8
	v_add_f32_e32 v10, v40, v33
	v_sub_f32_e32 v10, v10, v13
	v_cvt_f64_f32_e32 v[10:11], v10
	v_mul_f64 v[4:5], v[4:5], s[30:31]
	v_mul_f64 v[6:7], v[6:7], s[30:31]
	v_mul_f64 v[8:9], v[8:9], s[30:31]
	v_mul_f64 v[10:11], v[10:11], s[30:31]
	v_mov_b32_e32 v12, s39
	v_sub_f32_e32 v12, s22, v12
	v_subrev_f32_e32 v12, s18, v12
	v_subrev_f32_e32 v12, s19, v12
	v_subrev_f32_e32 v12, s28, v12
	v_add_f32_e32 v13, v16, v16
	v_fma_f32 v21, v12, v13, -s39
	v_sub_f32_e32 v12, v21, v29
	v_sub_f32_e32 v12, v12, v31
	v_sub_f32_e32 v12, v12, v38
	v_cvt_f64_f32_e32 v[12:13], v12
	v_mov_b32_e32 v14, 0xbd783e10
	v_mul_f32_e32 v14, s19, v14
	v_fma_f32 v22, s18, v34, v14
	v_mov_b32_e32 v14, 0xbb82a766
	v_mul_f32_e32 v14, s28, v14
	v_fma_f32 v25, s19, v36, v14
	v_sub_f32_e32 v14, v29, v22
	v_cvt_f64_f32_e32 v[14:15], v14
	v_add_f32_e32 v16, v31, v22
	v_sub_f32_e32 v16, v16, v25
	v_cvt_f64_f32_e32 v[16:17], v16
	v_add_f32_e32 v18, v38, v25
	v_cvt_f64_f32_e32 v[18:19], v18
	v_mul_f64 v[12:13], v[12:13], s[30:31]
	v_mul_f64 v[14:15], v[14:15], s[30:31]
	v_mul_f64 v[16:17], v[16:17], s[30:31]
	v_mul_f64 v[18:19], v[18:19], s[30:31]
	v_cvt_f32_f64_e32 v4, v[4:5]
	v_cvt_f32_f64_e32 v5, v[6:7]
	v_cvt_f32_f64_e32 v6, v[8:9]
	v_cvt_f32_f64_e32 v7, v[10:11]
	v_cvt_f32_f64_e32 v8, v[12:13]
	v_cvt_f32_f64_e32 v9, v[14:15]
	v_cvt_f32_f64_e32 v10, v[16:17]
	v_cvt_f32_f64_e32 v11, v[18:19]
	v_sub_f32_e32 v12, v20, v24
	v_add_f32_e64 v13, s21, s21
	v_add_f32_e32 v14, v37, v35
	v_add_f32_e32 v14, v41, v14
	v_add_f32_e32 v14, v23, v14
	v_add_f32_e32 v14, v21, v14
	v_add_f32_e32 v14, v22, v14
	v_add_f32_e32 v14, v25, v14
	v_add_f32_e32 v14, v14, v14
	v_fma_f32 v12, v13, v12, -v14
	v_cvt_f64_f32_e32 v[12:13], v12
	s_add_u32 s0, s26, 0xc8
	s_addc_u32 s1, s27, 0
	v_mov_b32_e32 v15, s1
	v_mov_b32_e32 v14, s0
	v_mul_f64 v[12:13], v[12:13], s[30:31]
	flat_store_dwordx4 v[14:15], v[1:4]
	s_add_u32 s0, s26, 0xd8
	s_addc_u32 s1, s27, 0
	v_mov_b32_e32 v2, s1
	v_mov_b32_e32 v1, s0
	flat_store_dwordx4 v[1:2], v[5:8]
	s_add_u32 s0, s26, 0xe8
	s_addc_u32 s1, s27, 0
	v_cvt_f32_f64_e32 v3, v[12:13]
	v_mov_b32_e32 v2, s1
	v_mov_b32_e32 v1, s0
	flat_store_dwordx3 v[1:2], v[9:11]
	v_mov_b32_e32 v1, s26
	v_mov_b32_e32 v2, s27
	flat_store_dword v[1:2], v3
	v_mov_b32_e32 v5, s16
	v_mov_b32_e32 v6, s17
	s_add_u32 s0, s24, 0x90
	s_addc_u32 s1, s25, 0
	s_add_u32 s2, s12, 24
	s_addc_u32 s3, s13, 0
	v_mov_b32_e32 v8, s3
	v_mov_b32_e32 v7, s2
	flat_load_dwordx2 v[24:25], v[5:6]
	flat_load_dwordx4 v[1:4], v[7:8]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_cvt_f64_f32_e32 v[21:22], v24
	s_mov_b32 s3, 0x3fee147a
	s_mov_b32 s2, 0xe147ae14
	v_div_scale_f64 v[5:6], s[6:7], s[2:3], s[2:3], v[21:22]
	v_rcp_f64_e32 v[7:8], v[5:6]
	v_fma_f64 v[9:10], -v[5:6], v[7:8], 1.0
	v_fma_f64 v[7:8], v[7:8], v[9:10], v[7:8]
	v_fma_f64 v[9:10], -v[5:6], v[7:8], 1.0
	v_div_scale_f64 v[11:12], vcc, v[21:22], s[2:3], v[21:22]
	v_fma_f64 v[7:8], v[7:8], v[9:10], v[7:8]
	v_mul_f64 v[9:10], v[11:12], v[7:8]
	v_fma_f64 v[5:6], -v[5:6], v[9:10], v[11:12]
	s_nop 0
	v_div_fmas_f64 v[5:6], v[5:6], v[7:8], v[9:10]
	s_mov_b32 s18, 0
	v_mov_b32_e32 v8, s1
	v_mov_b32_e32 v7, s0
	flat_load_dword v20, v[7:8]
	s_add_u32 s0, s24, 0xf4
	s_addc_u32 s1, s25, 0
	s_add_u32 s6, s24, 0x12c
	s_addc_u32 s7, s25, 0
	v_mov_b32_e32 v8, s7
	v_mov_b32_e32 v7, s6
	s_add_u32 s6, s24, 0x124
	s_addc_u32 s7, s25, 0
	v_mov_b32_e32 v13, s7
	v_mov_b32_e32 v12, s6
	flat_load_dword v9, v[7:8]
	flat_load_dwordx2 v[10:11], v[12:13]
	v_div_fixup_f64 v[5:6], v[5:6], s[2:3], v[21:22]
	s_add_u32 s2, s24, 0x114
	s_addc_u32 s3, s25, 0
	v_mov_b32_e32 v17, s3
	v_mov_b32_e32 v16, s2
	s_add_u32 s2, s24, 0x104
	s_addc_u32 s3, s25, 0
	v_mov_b32_e32 v19, s3
	v_mov_b32_e32 v18, s2
	v_cmp_nge_f32_e32 vcc, 1.0, v25
	v_add_f64 v[23:24], v[5:6], 1.0
	s_and_b64 vcc, exec, vcc
	flat_load_dwordx4 v[5:8], v[16:17]
	flat_load_dwordx4 v[12:15], v[18:19]
	v_mov_b32_e32 v17, s1
	v_mov_b32_e32 v16, s0
	flat_load_dwordx4 v[16:19], v[16:17]
	s_cbranch_vccnz BB0_8
; %bb.7:
	v_cvt_f64_f32_e32 v[26:27], v25
	s_mov_b32 s1, 0xbf889374
	s_mov_b32 s0, 0xbc6a7efa
	v_div_scale_f64 v[28:29], s[2:3], s[0:1], s[0:1], v[26:27]
	v_rcp_f64_e32 v[30:31], v[28:29]
	v_fma_f64 v[32:33], -v[28:29], v[30:31], 1.0
	v_fma_f64 v[30:31], v[30:31], v[32:33], v[30:31]
	v_div_scale_f64 v[32:33], vcc, v[26:27], s[0:1], v[26:27]
	v_fma_f64 v[34:35], -v[28:29], v[30:31], 1.0
	v_fma_f64 v[30:31], v[30:31], v[34:35], v[30:31]
	v_mul_f64 v[34:35], v[32:33], v[30:31]
	v_fma_f64 v[28:29], -v[28:29], v[34:35], v[32:33]
	v_div_fmas_f64 v[28:29], v[28:29], v[30:31], v[34:35]
	v_div_fixup_f64 v[28:29], v[28:29], s[0:1], v[26:27]
	s_mov_b32 s21, 0x40203333
	s_mov_b32 s20, 0x33333333
	s_mov_b32 s23, 0x3f96872b
	s_mov_b32 s22, 0x20c49ba
	s_mov_b32 s29, 0x3f647ae1
	v_add_f64 v[28:29], v[23:24], v[28:29]
	s_mov_b32 s28, 0x47ae147b
	s_mov_b32 s35, 0x3f56f006
	s_mov_b32 s34, 0x8db8bac7
	v_div_scale_f64 v[30:31], s[0:1], s[20:21], s[20:21], v[21:22]
	v_div_scale_f64 v[32:33], s[0:1], s[22:23], s[22:23], v[26:27]
	v_mul_f64 v[28:29], v[28:29], s[28:29]
	s_mov_b32 s29, 0x3fe47ae1
	v_div_scale_f64 v[34:35], s[0:1], s[28:29], s[28:29], v[21:22]
	s_mov_b32 s19, 0x402a0000
	v_div_scale_f64 v[36:37], s[0:1], s[34:35], s[34:35], v[26:27]
	v_div_scale_f64 v[38:39], s[0:1], s[18:19], s[18:19], v[21:22]
	s_mov_b32 s37, 0xbfc39581
	s_mov_b32 s36, 0x624dd2f
	v_div_scale_f64 v[40:41], s[0:1], s[36:37], s[36:37], v[26:27]
	v_rcp_f64_e32 v[42:43], v[30:31]
	v_rcp_f64_e32 v[44:45], v[32:33]
	v_rcp_f64_e32 v[46:47], v[34:35]
	v_rcp_f64_e32 v[48:49], v[36:37]
	v_rcp_f64_e32 v[50:51], v[38:39]
	v_rcp_f64_e32 v[52:53], v[40:41]
	v_div_scale_f64 v[54:55], vcc, v[21:22], s[20:21], v[21:22]
	v_fma_f64 v[56:57], -v[30:31], v[42:43], 1.0
	v_fma_f64 v[58:59], -v[32:33], v[44:45], 1.0
	v_div_scale_f64 v[60:61], s[0:1], v[21:22], s[18:19], v[21:22]
	v_fma_f64 v[62:63], -v[34:35], v[46:47], 1.0
	v_div_scale_f64 v[64:65], s[2:3], v[26:27], s[22:23], v[26:27]
	v_fma_f64 v[66:67], -v[36:37], v[48:49], 1.0
	v_fma_f64 v[42:43], v[42:43], v[56:57], v[42:43]
	v_fma_f64 v[56:57], -v[38:39], v[50:51], 1.0
	v_fma_f64 v[44:45], v[44:45], v[58:59], v[44:45]
	v_div_scale_f64 v[58:59], s[6:7], v[26:27], s[34:35], v[26:27]
	v_fma_f64 v[46:47], v[46:47], v[62:63], v[46:47]
	v_fma_f64 v[62:63], -v[40:41], v[52:53], 1.0
	v_fma_f64 v[48:49], v[48:49], v[66:67], v[48:49]
	v_fma_f64 v[66:67], -v[30:31], v[42:43], 1.0
	v_fma_f64 v[50:51], v[50:51], v[56:57], v[50:51]
	v_fma_f64 v[56:57], -v[32:33], v[44:45], 1.0
	v_div_scale_f64 v[68:69], s[8:9], v[21:22], s[28:29], v[21:22]
	v_fma_f64 v[70:71], -v[34:35], v[46:47], 1.0
	v_fma_f64 v[52:53], v[52:53], v[62:63], v[52:53]
	v_fma_f64 v[62:63], -v[36:37], v[48:49], 1.0
	v_fma_f64 v[42:43], v[42:43], v[66:67], v[42:43]
	v_div_scale_f64 v[66:67], s[10:11], v[26:27], s[36:37], v[26:27]
	v_fma_f64 v[44:45], v[44:45], v[56:57], v[44:45]
	v_fma_f64 v[56:57], -v[38:39], v[50:51], 1.0
	v_fma_f64 v[46:47], v[46:47], v[70:71], v[46:47]
	v_fma_f64 v[70:71], -v[40:41], v[52:53], 1.0
	v_fma_f64 v[48:49], v[48:49], v[62:63], v[48:49]
	v_mul_f64 v[62:63], v[54:55], v[42:43]
	v_mul_f64 v[72:73], v[64:65], v[44:45]
	v_fma_f64 v[50:51], v[50:51], v[56:57], v[50:51]
	v_mul_f64 v[56:57], v[68:69], v[46:47]
	v_fma_f64 v[52:53], v[52:53], v[70:71], v[52:53]
	v_mul_f64 v[70:71], v[58:59], v[48:49]
	v_fma_f64 v[30:31], -v[30:31], v[62:63], v[54:55]
	v_fma_f64 v[32:33], -v[32:33], v[72:73], v[64:65]
	v_mul_f64 v[54:55], v[60:61], v[50:51]
	v_fma_f64 v[34:35], -v[34:35], v[56:57], v[68:69]
	v_mul_f64 v[64:65], v[66:67], v[52:53]
	v_fma_f64 v[36:37], -v[36:37], v[70:71], v[58:59]
	v_div_fmas_f64 v[30:31], v[30:31], v[42:43], v[62:63]
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f64 v[32:33], v[32:33], v[44:45], v[72:73]
	s_mov_b64 vcc, s[8:9]
	v_div_fmas_f64 v[34:35], v[34:35], v[46:47], v[56:57]
	v_fma_f64 v[38:39], -v[38:39], v[54:55], v[60:61]
	v_fma_f64 v[40:41], -v[40:41], v[64:65], v[66:67]
	s_mov_b64 vcc, s[6:7]
	v_div_fmas_f64 v[36:37], v[36:37], v[48:49], v[70:71]
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f64 v[38:39], v[38:39], v[50:51], v[54:55]
	s_mov_b64 vcc, s[10:11]
	v_div_fmas_f64 v[40:41], v[40:41], v[52:53], v[64:65]
	v_div_fixup_f64 v[34:35], v[34:35], s[28:29], v[21:22]
	v_div_fixup_f64 v[30:31], v[30:31], s[20:21], v[21:22]
	v_div_fixup_f64 v[36:37], v[36:37], s[34:35], v[26:27]
	v_add_f64 v[34:35], v[34:35], 1.0
	v_div_fixup_f64 v[38:39], v[38:39], s[18:19], v[21:22]
	v_div_fixup_f64 v[32:33], v[32:33], s[22:23], v[26:27]
	v_add_f64 v[30:31], v[30:31], 1.0
	v_div_fixup_f64 v[26:27], v[40:41], s[36:37], v[26:27]
	v_add_f64 v[34:35], v[34:35], v[36:37]
	v_add_f64 v[36:37], v[38:39], 1.0
	s_mov_b32 s31, 0x3fc0624d
	v_add_f64 v[30:31], v[30:31], v[32:33]
	v_mul_f64 v[32:33], v[34:35], s[30:31]
	v_add_f64 v[26:27], v[36:37], v[26:27]
	v_mul_f64 v[28:29], v[30:31], v[28:29]
	v_mul_f64 v[26:27], v[26:27], v[32:33]
	s_mov_b64 vcc, exec
	s_cbranch_execz BB0_9
	s_branch BB0_10
BB0_8:
                                        ; implicit-def: $vgpr28_vgpr29
                                        ; implicit-def: $vgpr26_vgpr27
	s_mov_b64 vcc, 0
BB0_9:
	v_add_f32_e32 v25, -1.0, v25
	v_cvt_f64_f32_e32 v[25:26], v25
	s_mov_b32 s1, 0x3faeb851
	s_mov_b32 s0, 0xeb851eb8
	v_div_scale_f64 v[27:28], s[2:3], s[0:1], s[0:1], v[25:26]
	v_rcp_f64_e32 v[29:30], v[27:28]
	v_fma_f64 v[31:32], -v[27:28], v[29:30], 1.0
	v_fma_f64 v[29:30], v[29:30], v[31:32], v[29:30]
	v_div_scale_f64 v[31:32], vcc, v[25:26], s[0:1], v[25:26]
	v_fma_f64 v[33:34], -v[27:28], v[29:30], 1.0
	v_fma_f64 v[29:30], v[29:30], v[33:34], v[29:30]
	v_mul_f64 v[33:34], v[31:32], v[29:30]
	v_fma_f64 v[27:28], -v[27:28], v[33:34], v[31:32]
	v_div_fmas_f64 v[27:28], v[27:28], v[29:30], v[33:34]
	s_mov_b32 s3, 0xc054d555
	s_mov_b32 s2, 0x55555555
	v_add_f64 v[23:24], v[23:24], s[2:3]
	v_div_fixup_f64 v[27:28], v[27:28], s[0:1], v[25:26]
	s_mov_b32 s7, 0x40203333
	s_mov_b32 s6, 0x33333333
	s_mov_b32 s9, 0x3fb16872
	v_add_f64 v[23:24], v[23:24], v[27:28]
	s_mov_b32 s8, 0xb020c49c
	s_mov_b32 s11, 0x3f647ae1
	s_mov_b32 s10, 0x47ae147b
	v_div_scale_f64 v[27:28], s[0:1], s[6:7], s[6:7], v[21:22]
	v_div_scale_f64 v[29:30], s[0:1], s[8:9], s[8:9], v[25:26]
	v_mul_f64 v[23:24], v[23:24], s[10:11]
	s_mov_b32 s11, 0x3fe47ae1
	v_div_scale_f64 v[31:32], s[0:1], s[10:11], s[10:11], v[21:22]
	v_rcp_f64_e32 v[33:34], v[27:28]
	v_rcp_f64_e32 v[35:36], v[29:30]
	v_rcp_f64_e32 v[37:38], v[31:32]
	v_fma_f64 v[39:40], -v[27:28], v[33:34], 1.0
	v_fma_f64 v[41:42], -v[29:30], v[35:36], 1.0
	v_fma_f64 v[43:44], -v[31:32], v[37:38], 1.0
	v_fma_f64 v[33:34], v[33:34], v[39:40], v[33:34]
	v_fma_f64 v[35:36], v[35:36], v[41:42], v[35:36]
	v_fma_f64 v[37:38], v[37:38], v[43:44], v[37:38]
	v_div_scale_f64 v[39:40], vcc, v[21:22], s[6:7], v[21:22]
	v_div_scale_f64 v[41:42], s[0:1], v[25:26], s[8:9], v[25:26]
	v_fma_f64 v[43:44], -v[27:28], v[33:34], 1.0
	v_fma_f64 v[45:46], -v[29:30], v[35:36], 1.0
	v_div_scale_f64 v[47:48], s[2:3], v[21:22], s[10:11], v[21:22]
	v_fma_f64 v[49:50], -v[31:32], v[37:38], 1.0
	v_fma_f64 v[33:34], v[33:34], v[43:44], v[33:34]
	v_fma_f64 v[35:36], v[35:36], v[45:46], v[35:36]
	v_fma_f64 v[37:38], v[37:38], v[49:50], v[37:38]
	v_mul_f64 v[43:44], v[39:40], v[33:34]
	v_mul_f64 v[45:46], v[41:42], v[35:36]
	v_mul_f64 v[49:50], v[47:48], v[37:38]
	v_fma_f64 v[27:28], -v[27:28], v[43:44], v[39:40]
	v_fma_f64 v[29:30], -v[29:30], v[45:46], v[41:42]
	v_fma_f64 v[31:32], -v[31:32], v[49:50], v[47:48]
	v_div_fmas_f64 v[27:28], v[27:28], v[33:34], v[43:44]
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f64 v[29:30], v[29:30], v[35:36], v[45:46]
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f64 v[31:32], v[31:32], v[37:38], v[49:50]
	s_mov_b32 s19, 0x402a0000
	s_mov_b32 s18, 0
	v_div_scale_f64 v[33:34], s[0:1], s[18:19], s[18:19], v[21:22]
	v_div_fixup_f64 v[31:32], v[31:32], s[10:11], v[21:22]
	s_mov_b32 s11, 0x3f747ae1
	v_div_scale_f64 v[35:36], s[0:1], s[10:11], s[10:11], v[25:26]
	v_rcp_f64_e32 v[37:38], v[33:34]
	v_rcp_f64_e32 v[39:40], v[35:36]
	v_div_fixup_f64 v[27:28], v[27:28], s[6:7], v[21:22]
	s_mov_b32 s7, 0x3fc33333
	v_div_scale_f64 v[41:42], s[0:1], s[6:7], s[6:7], v[25:26]
	v_fma_f64 v[43:44], -v[35:36], v[39:40], 1.0
	v_fma_f64 v[45:46], -v[33:34], v[37:38], 1.0
	v_rcp_f64_e32 v[47:48], v[41:42]
	v_fma_f64 v[39:40], v[39:40], v[43:44], v[39:40]
	v_fma_f64 v[37:38], v[37:38], v[45:46], v[37:38]
	v_div_scale_f64 v[43:44], s[0:1], v[21:22], s[18:19], v[21:22]
	v_div_scale_f64 v[45:46], vcc, v[25:26], s[10:11], v[25:26]
	v_fma_f64 v[49:50], -v[35:36], v[39:40], 1.0
	v_fma_f64 v[51:52], -v[33:34], v[37:38], 1.0
	v_fma_f64 v[53:54], -v[41:42], v[47:48], 1.0
	v_fma_f64 v[39:40], v[39:40], v[49:50], v[39:40]
	v_fma_f64 v[37:38], v[37:38], v[51:52], v[37:38]
	v_fma_f64 v[47:48], v[47:48], v[53:54], v[47:48]
	v_mul_f64 v[49:50], v[45:46], v[39:40]
	v_mul_f64 v[51:52], v[43:44], v[37:38]
	v_div_scale_f64 v[53:54], s[2:3], v[25:26], s[6:7], v[25:26]
	v_fma_f64 v[55:56], -v[41:42], v[47:48], 1.0
	v_fma_f64 v[35:36], -v[35:36], v[49:50], v[45:46]
	v_fma_f64 v[33:34], -v[33:34], v[51:52], v[43:44]
	v_fma_f64 v[43:44], v[47:48], v[55:56], v[47:48]
	v_div_fmas_f64 v[35:36], v[35:36], v[39:40], v[49:50]
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f64 v[33:34], v[33:34], v[37:38], v[51:52]
	v_mul_f64 v[37:38], v[53:54], v[43:44]
	v_fma_f64 v[39:40], -v[41:42], v[37:38], v[53:54]
	v_add_f64 v[31:32], v[31:32], 1.0
	v_div_fixup_f64 v[21:22], v[33:34], s[18:19], v[21:22]
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f64 v[33:34], v[39:40], v[43:44], v[37:38]
	s_mov_b32 s1, 0x40865249
	s_mov_b32 s0, 0x24924925
	v_add_f64 v[27:28], v[27:28], 1.0
	v_add_f64 v[31:32], v[31:32], s[0:1]
	v_div_fixup_f64 v[35:36], v[35:36], s[10:11], v[25:26]
	v_add_f64 v[21:22], v[21:22], 1.0
	s_mov_b32 s1, 0x4046ba2e
	s_mov_b32 s0, 0x8ba2e8bb
	s_mov_b32 s3, 0xc01a24cf
	v_div_fixup_f64 v[29:30], v[29:30], s[8:9], v[25:26]
	v_add_f64 v[27:28], v[27:28], s[0:1]
	s_mov_b32 s2, 0x7a24cf7a
	v_add_f64 v[31:32], v[31:32], v[35:36]
	v_add_f64 v[21:22], v[21:22], s[2:3]
	v_div_fixup_f64 v[25:26], v[33:34], s[6:7], v[25:26]
	v_add_f64 v[27:28], v[27:28], v[29:30]
	s_mov_b32 s1, 0x3fc0624d
	s_mov_b32 s0, 0xd2f1a9fc
	v_mul_f64 v[30:31], v[31:32], s[0:1]
	v_add_f64 v[21:22], v[21:22], v[25:26]
	v_mul_f64 v[28:29], v[27:28], v[23:24]
	v_mul_f64 v[26:27], v[21:22], v[30:31]
BB0_10:                                 ; %_Z10kernel_camfPfS_iS_iS_if.exit62
	v_cvt_f32_f64_e32 v21, v[28:29]
	s_mov_b32 s2, 0x41200000
	v_cvt_f32_f64_e32 v22, v[26:27]
	v_div_scale_f32 v23, s[0:1], v21, v21, s2
	s_mov_b32 s3, 0x43fa0000
	v_div_scale_f32 v24, s[0:1], v22, v22, s3
	v_div_scale_f32 v25, vcc, s2, v21, s2
	v_div_scale_f32 v26, s[0:1], s3, v22, s3
	v_rcp_f32_e32 v27, v23
	v_rcp_f32_e32 v28, v24
	s_waitcnt vmcnt(5) lgkmcnt(5)
	v_mul_f32_e32 v20, 0x447a0000, v20
	s_mov_b32 s8, 0x3f2aaaab
	v_fma_f32 v29, -v23, v27, 1.0
	v_fma_f32 v30, -v24, v28, 1.0
	v_fma_f32 v27, v29, v27, v27
	v_fma_f32 v28, v30, v28, v28
	v_mul_f32_e32 v29, v25, v27
	v_mul_f32_e32 v30, v26, v28
	v_fma_f32 v31, -v23, v29, v25
	v_fma_f32 v32, -v24, v30, v26
	v_fma_f32 v29, v31, v27, v29
	v_fma_f32 v30, v32, v28, v30
	v_fma_f32 v23, -v23, v29, v25
	v_fma_f32 v24, -v24, v30, v26
	v_div_fmas_f32 v23, v23, v27, v29
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v24, v24, v28, v30
	v_frexp_mant_f32_e64 v25, |v20|
	v_cmp_gt_f32_e32 vcc, s8, v25
	v_cndmask_b32_e64 v26, 0, 1, vcc
	v_ldexp_f32 v25, v25, v26
	v_add_f32_e32 v26, 1.0, v25
	v_sub_f32_e32 v27, v26, v25
	v_sub_f32_e32 v28, v26, v27
	v_sub_f32_e32 v28, v25, v28
	v_rcp_f32_e32 v29, v26
	v_sub_f32_e32 v27, 1.0, v27
	v_add_f32_e32 v27, v27, v28
	v_add_f32_e32 v25, -1.0, v25
	v_mul_f32_e32 v28, v25, v29
	v_mul_f32_e32 v30, v26, v28
	v_fma_f32 v26, v28, v26, -v30
	v_fma_f32 v26, v28, v27, v26
	v_add_f32_e32 v27, v30, v26
	v_sub_f32_e32 v30, v27, v30
	v_sub_f32_e32 v26, v26, v30
	v_sub_f32_e32 v30, v25, v27
	v_sub_f32_e32 v25, v25, v30
	v_sub_f32_e32 v25, v25, v27
	v_sub_f32_e32 v25, v25, v26
	v_add_f32_e32 v25, v30, v25
	v_mul_f32_e32 v25, v29, v25
	v_add_f32_e32 v26, v28, v25
	v_sub_f32_e32 v27, v26, v28
	v_sub_f32_e32 v25, v25, v27
	v_mul_f32_e32 v27, v26, v26
	v_add_f32_e32 v28, v25, v25
	v_fma_f32 v29, v26, v26, -v27
	v_fma_f32 v28, v26, v28, v29
	v_fma_f32 v28, v25, v25, v28
	v_add_f32_e32 v29, v27, v28
	v_sub_f32_e32 v27, v29, v27
	v_frexp_exp_i32_f32_e64 v30, |v20|
	v_subbrev_u32_e32 v30, vcc, 0, v30, vcc
	v_cvt_f32_i32_e32 v30, v30
	v_sub_f32_e32 v27, v28, v27
	s_mov_b32 s9, 0x3f317218
	s_mov_b32 s10, 0xb102e308
	v_mul_f32_e32 v28, s9, v30
	v_fma_f32 v31, v30, s9, -v28
	v_fma_f32 v30, v30, s10, v31
	v_add_f32_e32 v31, v28, v30
	v_sub_f32_e32 v28, v31, v28
	v_sub_f32_e32 v28, v30, v28
	s_mov_b32 s11, 0x3e76c4e1
	s_mov_b32 s18, 0x3ecccdef
	v_mov_b32_e32 v30, 0x3e91f4c4
	v_fma_f32 v32, v29, s11, v30
	v_fma_f32 v32, v29, v32, s18
	v_mul_f32_e32 v33, v29, v32
	v_fma_f32 v34, v29, v32, -v33
	v_fma_f32 v32, v27, v32, v34
	v_mul_f32_e32 v27, v26, v27
	v_fma_f32 v27, v29, v25, v27
	v_mul_f32_e32 v34, v26, v29
	v_fma_f32 v29, v29, v26, -v34
	v_add_f32_e32 v27, v29, v27
	v_add_f32_e32 v29, v33, v32
	v_sub_f32_e32 v33, v29, v33
	v_sub_f32_e32 v32, v32, v33
	s_mov_b32 s19, 0x3f2aaaaa
	s_mov_b32 s20, 0xbf2aaaaa
	v_add_f32_e32 v33, s19, v29
	v_add_f32_e32 v35, s20, v33
	v_sub_f32_e32 v29, v29, v35
	s_mov_b32 s21, 0x31739010
	v_add_f32_e32 v32, s21, v32
	v_add_f32_e32 v29, v29, v32
	v_add_f32_e32 v32, v33, v29
	v_sub_f32_e32 v33, v32, v33
	v_sub_f32_e32 v29, v29, v33
	v_add_f32_e32 v33, v34, v27
	v_sub_f32_e32 v34, v33, v34
	v_sub_f32_e32 v27, v27, v34
	v_mul_f32_e32 v27, v27, v32
	v_fma_f32 v27, v33, v29, v27
	v_mul_f32_e32 v29, v33, v32
	v_fma_f32 v32, v33, v32, -v29
	v_add_f32_e32 v27, v32, v27
	v_add_f32_e32 v32, v29, v27
	v_sub_f32_e32 v29, v32, v29
	v_sub_f32_e32 v27, v27, v29
	v_ldexp_f32 v26, v26, 1
	v_add_f32_e32 v29, v26, v32
	v_sub_f32_e32 v26, v29, v26
	v_sub_f32_e32 v26, v32, v26
	v_ldexp_f32 v25, v25, 1
	v_add_f32_e32 v25, v25, v27
	v_add_f32_e32 v25, v26, v25
	v_add_f32_e32 v26, v29, v25
	v_sub_f32_e32 v27, v26, v29
	v_sub_f32_e32 v25, v25, v27
	v_add_f32_e32 v27, v31, v26
	v_sub_f32_e32 v29, v27, v31
	v_sub_f32_e32 v32, v27, v29
	v_sub_f32_e32 v31, v31, v32
	v_sub_f32_e32 v26, v26, v29
	v_add_f32_e32 v26, v26, v31
	v_add_f32_e32 v29, v28, v25
	v_sub_f32_e32 v31, v29, v28
	v_sub_f32_e32 v32, v29, v31
	v_sub_f32_e32 v28, v28, v32
	v_sub_f32_e32 v25, v25, v31
	v_add_f32_e32 v25, v25, v28
	v_add_f32_e32 v26, v29, v26
	v_add_f32_e32 v28, v27, v26
	v_sub_f32_e32 v27, v28, v27
	v_sub_f32_e32 v26, v26, v27
	v_add_f32_e32 v25, v25, v26
	v_add_f32_e32 v26, v28, v25
	v_sub_f32_e32 v27, v26, v28
	v_sub_f32_e32 v25, v25, v27
	v_mul_f32_e32 v27, 0, v26
	v_fma_f32 v25, v25, 2.0, v27
	v_add_f32_e32 v27, v26, v26
	v_fma_f32 v26, v26, 2.0, -v27
	v_add_f32_e32 v25, v26, v25
	v_add_f32_e32 v26, v27, v25
	v_sub_f32_e32 v28, v26, v27
	v_sub_f32_e32 v25, v25, v28
	s_movk_i32 s6, 0x204
	v_cmp_class_f32_e64 vcc, v27, s6
	v_cndmask_b32_e32 v26, v26, v27, vcc
	s_mov_b32 s22, 0x3fb8aa3b
	v_mul_f32_e32 v27, s22, v26
	v_rndne_f32_e32 v27, v27
	s_mov_b32 s23, 0x3f317200
	v_mul_f32_e32 v28, s23, v27
	v_sub_f32_e32 v29, v26, v28
	v_sub_f32_e32 v31, v29, v26
	v_add_f32_e32 v28, v28, v31
	v_sub_f32_e32 v31, v29, v31
	v_sub_f32_e32 v31, v26, v31
	v_sub_f32_e32 v28, v31, v28
	s_mov_b32 s28, 0x7f800000
	v_cmp_neq_f32_e64 vcc, |v26|, s28
	v_cndmask_b32_e32 v25, 0, v25, vcc
	v_add_f32_e32 v25, v25, v28
	v_add_f32_e32 v28, v29, v25
	v_sub_f32_e32 v29, v28, v29
	v_sub_f32_e32 v25, v25, v29
	s_mov_b32 s29, 0x35bfbc00
	v_mul_f32_e32 v29, s29, v27
	v_sub_f32_e32 v31, v28, v29
	v_sub_f32_e32 v28, v28, v31
	v_sub_f32_e32 v28, v28, v29
	v_add_f32_e32 v25, v25, v28
	v_add_f32_e32 v28, v31, v25
	v_sub_f32_e32 v29, v28, v31
	v_sub_f32_e32 v25, v25, v29
	s_mov_b32 s30, 0x2ea39ef3
	v_mul_f32_e32 v29, s30, v27
	v_sub_f32_e32 v31, v28, v29
	v_sub_f32_e32 v28, v28, v31
	v_sub_f32_e32 v28, v28, v29
	v_add_f32_e32 v25, v25, v28
	v_add_f32_e32 v28, v31, v25
	v_sub_f32_e32 v29, v28, v31
	v_sub_f32_e32 v25, v25, v29
	v_mul_f32_e32 v29, v28, v28
	v_fma_f32 v31, v28, v28, -v29
	v_add_f32_e32 v32, v25, v25
	v_fma_f32 v31, v28, v32, v31
	v_fma_f32 v31, v25, v25, v31
	v_add_f32_e32 v32, v29, v31
	v_sub_f32_e32 v29, v32, v29
	v_sub_f32_e32 v29, v31, v29
	s_mov_b32 s31, 0x3ab42872
	s_mov_b32 s33, 0x3d2aadcc
	v_mov_b32_e32 v31, 0x3c091de6
	v_fma_f32 v33, v28, s31, v31
	v_fma_f32 v33, v28, v33, s33
	s_mov_b32 s34, 0x3e2aaa47
	v_fma_f32 v33, v28, v33, s34
	s_mov_b32 s35, 0x3efffffc
	v_fma_f32 v33, v28, v33, s35
	v_mul_f32_e32 v34, v33, v32
	v_fma_f32 v32, v32, v33, -v34
	v_fma_f32 v29, v29, v33, v32
	v_div_fixup_f32 v21, v23, v21, s2
	v_div_fixup_f32 v22, v24, v22, s3
	v_add_f32_e32 v23, v34, v29
	v_sub_f32_e32 v24, v23, v34
	v_sub_f32_e32 v24, v29, v24
	v_add_f32_e32 v29, v28, v23
	v_sub_f32_e32 v28, v29, v28
	v_sub_f32_e32 v23, v23, v28
	v_add_f32_e32 v24, v25, v24
	v_cvt_i32_f32_e32 v25, v27
	v_add_f32_e32 v23, v23, v24
	v_add_f32_e32 v23, v29, v23
	v_add_f32_e32 v23, 1.0, v23
	v_ldexp_f32 v23, v23, v25
	s_mov_b32 s2, 0x42b20000
	s_mov_b32 s3, 0xc2d00000
	v_cmp_ngt_f32_e32 vcc, s3, v26
	v_mov_b32_e32 v27, s28
	v_cmp_nlt_f32_e64 s[0:1], s2, v26
	v_cndmask_b32_e64 v23, v27, v23, s[0:1]
	v_cmp_neq_f32_e64 s[0:1], 0, v20
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v23, 0, v23, vcc
	v_cmp_class_f32_e64 vcc, v20, s6
	v_cndmask_b32_e32 v23, v23, v27, vcc
	v_cmp_u_f32_e32 vcc, v20, v20
	v_cndmask_b32_e64 v26, |v23|, v20, vcc
	v_mul_f32_e32 v28, v26, v21
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v20, 0xc1200000, v17
	v_fma_f32 v29, v16, v28, v20
	v_mul_f32_e32 v32, v26, v22
	s_mov_b32 s7, 0xc3fa0000
	v_mul_f32_e32 v20, s7, v18
	v_fma_f32 v33, v17, v32, v20
	v_mul_f32_e32 v20, 0xbdcccccd, v12
	v_fma_f32 v34, v19, v28, v20
	s_mov_b32 s0, 0x3be56041
	s_mov_b32 s1, 0x42380000
	s_mov_b32 s36, 0x428357e2
	v_sub_f32_e32 v1, v1, v19
	v_mul_f32_e32 v20, s0, v16
	v_mul_f32_e32 v19, 0xbab78034, v19
	v_mul_f32_e32 v21, s0, v17
	v_mul_f32_e32 v22, s0, v18
	v_mul_f32_e32 v16, s1, v16
	v_mul_f32_e32 v23, s1, v17
	v_mul_f32_e32 v24, s1, v18
	v_mul_f32_e32 v17, s36, v17
	v_mul_f32_e32 v25, s36, v18
	v_sub_f32_e32 v1, v1, v12
	v_sub_f32_e32 v1, v1, v13
	v_fma_f32 v35, v20, v1, v19
	s_mov_b32 s0, 0xb76ae18a
	v_mul_f32_e32 v18, s0, v12
	v_fma_f32 v36, v21, v1, v18
	v_mul_f32_e32 v18, s0, v13
	v_fma_f32 v1, v22, v1, v18
	v_add_f32_e32 v18, v15, v5
	v_add_f32_e32 v18, v18, v6
	v_add_f32_e32 v37, v18, v7
	v_frexp_mant_f32_e64 v18, |v37|
	v_cmp_gt_f32_e32 vcc, s8, v18
	v_cndmask_b32_e64 v19, 0, 1, vcc
	v_ldexp_f32 v18, v18, v19
	v_add_f32_e32 v19, 1.0, v18
	v_sub_f32_e32 v20, v19, v18
	v_sub_f32_e32 v21, v19, v20
	v_sub_f32_e32 v21, v18, v21
	v_rcp_f32_e32 v22, v19
	v_sub_f32_e32 v20, 1.0, v20
	v_add_f32_e32 v20, v20, v21
	v_add_f32_e32 v18, -1.0, v18
	v_mul_f32_e32 v21, v18, v22
	v_mul_f32_e32 v38, v19, v21
	v_fma_f32 v19, v21, v19, -v38
	v_fma_f32 v19, v21, v20, v19
	v_add_f32_e32 v20, v38, v19
	v_sub_f32_e32 v38, v20, v38
	v_sub_f32_e32 v19, v19, v38
	v_sub_f32_e32 v38, v18, v20
	v_sub_f32_e32 v18, v18, v38
	v_sub_f32_e32 v18, v18, v20
	v_sub_f32_e32 v18, v18, v19
	v_add_f32_e32 v18, v38, v18
	v_mul_f32_e32 v18, v22, v18
	v_add_f32_e32 v19, v21, v18
	v_sub_f32_e32 v20, v19, v21
	v_sub_f32_e32 v18, v18, v20
	v_mul_f32_e32 v20, v19, v19
	v_add_f32_e32 v21, v18, v18
	v_fma_f32 v22, v19, v19, -v20
	v_fma_f32 v21, v19, v21, v22
	v_fma_f32 v21, v18, v18, v21
	v_frexp_exp_i32_f32_e64 v22, |v37|
	v_subbrev_u32_e32 v22, vcc, 0, v22, vcc
	v_cvt_f32_i32_e32 v22, v22
	v_add_f32_e32 v38, v20, v21
	v_sub_f32_e32 v20, v38, v20
	v_sub_f32_e32 v20, v21, v20
	v_mul_f32_e32 v21, s9, v22
	v_fma_f32 v39, v22, s9, -v21
	v_fma_f32 v22, v22, s10, v39
	v_add_f32_e32 v39, v21, v22
	v_sub_f32_e32 v21, v39, v21
	v_sub_f32_e32 v21, v22, v21
	v_fma_f32 v22, v38, s11, v30
	v_fma_f32 v22, v38, v22, s18
	v_mul_f32_e32 v30, v38, v22
	v_fma_f32 v40, v38, v22, -v30
	v_fma_f32 v22, v20, v22, v40
	v_mul_f32_e32 v20, v19, v20
	v_fma_f32 v20, v38, v18, v20
	v_mul_f32_e32 v40, v19, v38
	v_fma_f32 v38, v38, v19, -v40
	v_add_f32_e32 v20, v38, v20
	v_add_f32_e32 v38, v30, v22
	v_sub_f32_e32 v30, v38, v30
	v_sub_f32_e32 v22, v22, v30
	v_add_f32_e32 v30, s19, v38
	v_add_f32_e32 v41, s20, v30
	v_sub_f32_e32 v38, v38, v41
	v_add_f32_e32 v22, s21, v22
	v_add_f32_e32 v22, v38, v22
	v_add_f32_e32 v38, v30, v22
	v_sub_f32_e32 v30, v38, v30
	v_sub_f32_e32 v22, v22, v30
	v_add_f32_e32 v30, v40, v20
	v_sub_f32_e32 v40, v30, v40
	v_sub_f32_e32 v20, v20, v40
	v_mul_f32_e32 v20, v20, v38
	v_fma_f32 v20, v30, v22, v20
	v_mul_f32_e32 v22, v30, v38
	v_fma_f32 v30, v30, v38, -v22
	v_add_f32_e32 v20, v30, v20
	v_add_f32_e32 v30, v22, v20
	v_sub_f32_e32 v22, v30, v22
	v_sub_f32_e32 v20, v20, v22
	v_ldexp_f32 v19, v19, 1
	v_add_f32_e32 v22, v19, v30
	v_sub_f32_e32 v19, v22, v19
	v_sub_f32_e32 v19, v30, v19
	v_ldexp_f32 v18, v18, 1
	v_add_f32_e32 v18, v18, v20
	v_add_f32_e32 v18, v19, v18
	v_add_f32_e32 v19, v22, v18
	v_sub_f32_e32 v20, v19, v22
	v_sub_f32_e32 v18, v18, v20
	v_add_f32_e32 v20, v39, v19
	v_sub_f32_e32 v22, v20, v39
	v_sub_f32_e32 v30, v20, v22
	v_sub_f32_e32 v30, v39, v30
	v_sub_f32_e32 v19, v19, v22
	v_add_f32_e32 v19, v19, v30
	v_add_f32_e32 v22, v21, v18
	v_sub_f32_e32 v30, v22, v21
	v_sub_f32_e32 v38, v22, v30
	v_sub_f32_e32 v21, v21, v38
	v_sub_f32_e32 v18, v18, v30
	v_add_f32_e32 v18, v18, v21
	v_add_f32_e32 v19, v22, v19
	v_add_f32_e32 v21, v20, v19
	v_sub_f32_e32 v20, v21, v20
	v_sub_f32_e32 v19, v19, v20
	v_add_f32_e32 v18, v18, v19
	v_add_f32_e32 v19, v21, v18
	v_sub_f32_e32 v20, v19, v21
	v_sub_f32_e32 v18, v18, v20
	v_add_f32_e32 v20, v19, v19
	v_fma_f32 v21, v19, 2.0, -v20
	v_mul_f32_e32 v22, 0, v19
	v_fma_f32 v30, v18, 2.0, v22
	v_add_f32_e32 v21, v21, v30
	v_add_f32_e32 v30, v20, v21
	v_sub_f32_e32 v38, v30, v20
	v_sub_f32_e32 v21, v21, v38
	v_cmp_class_f32_e64 vcc, v20, s6
	v_cndmask_b32_e32 v30, v30, v20, vcc
	v_mul_f32_e32 v20, s22, v30
	v_rndne_f32_e32 v38, v20
	v_mul_f32_e32 v20, s23, v38
	v_sub_f32_e32 v39, v30, v20
	v_sub_f32_e32 v40, v39, v30
	v_add_f32_e32 v20, v20, v40
	v_sub_f32_e32 v40, v39, v40
	v_sub_f32_e32 v40, v30, v40
	v_sub_f32_e32 v20, v40, v20
	v_cmp_neq_f32_e64 vcc, |v30|, s28
	v_cndmask_b32_e32 v21, 0, v21, vcc
	v_add_f32_e32 v20, v21, v20
	v_add_f32_e32 v21, v39, v20
	v_sub_f32_e32 v39, v21, v39
	v_sub_f32_e32 v20, v20, v39
	v_mul_f32_e32 v39, s29, v38
	v_sub_f32_e32 v40, v21, v39
	v_sub_f32_e32 v21, v21, v40
	v_sub_f32_e32 v21, v21, v39
	v_add_f32_e32 v20, v20, v21
	v_add_f32_e32 v21, v40, v20
	v_sub_f32_e32 v39, v21, v40
	v_sub_f32_e32 v20, v20, v39
	v_mul_f32_e32 v39, s30, v38
	v_sub_f32_e32 v40, v21, v39
	v_sub_f32_e32 v21, v21, v40
	v_sub_f32_e32 v21, v21, v39
	v_add_f32_e32 v20, v20, v21
	v_add_f32_e32 v39, v40, v20
	v_sub_f32_e32 v21, v39, v40
	v_sub_f32_e32 v40, v20, v21
	v_mul_f32_e32 v20, v39, v39
	v_fma_f32 v21, v39, v39, -v20
	v_add_f32_e32 v41, v40, v40
	v_fma_f32 v21, v39, v41, v21
	v_fma_f32 v21, v40, v40, v21
	v_add_f32_e32 v41, v20, v21
	v_sub_f32_e32 v20, v41, v20
	v_sub_f32_e32 v20, v21, v20
	v_fma_f32 v21, v39, s31, v31
	v_fma_f32 v21, v39, v21, s33
	v_fma_f32 v21, v39, v21, s34
	v_fma_f32 v21, v39, v21, s35
	v_mul_f32_e32 v42, v21, v41
	v_fma_f32 v41, v41, v21, -v42
	v_fma_f32 v41, v20, v21, v41
	s_mov_b32 s0, 0x40400000
	v_fma_f32 v18, v18, s0, v22
	v_mul_f32_e32 v20, s0, v19
	v_fma_f32 v19, v19, s0, -v20
	v_add_f32_e32 v18, v19, v18
	v_add_f32_e32 v19, v20, v18
	v_sub_f32_e32 v21, v19, v20
	v_sub_f32_e32 v18, v18, v21
	v_cmp_class_f32_e64 vcc, v20, s6
	v_cndmask_b32_e32 v22, v19, v20, vcc
	v_mul_f32_e32 v19, s22, v22
	v_rndne_f32_e32 v43, v19
	v_mul_f32_e32 v19, s23, v43
	v_sub_f32_e32 v20, v22, v19
	v_sub_f32_e32 v21, v20, v22
	v_add_f32_e32 v19, v19, v21
	v_sub_f32_e32 v21, v20, v21
	v_sub_f32_e32 v21, v22, v21
	v_sub_f32_e32 v19, v21, v19
	v_cmp_neq_f32_e64 vcc, |v22|, s28
	v_cndmask_b32_e32 v18, 0, v18, vcc
	v_add_f32_e32 v18, v18, v19
	v_add_f32_e32 v19, v20, v18
	v_sub_f32_e32 v20, v19, v20
	v_sub_f32_e32 v18, v18, v20
	v_mul_f32_e32 v20, s29, v43
	v_sub_f32_e32 v21, v19, v20
	v_sub_f32_e32 v19, v19, v21
	v_sub_f32_e32 v19, v19, v20
	v_add_f32_e32 v18, v18, v19
	v_add_f32_e32 v19, v21, v18
	v_sub_f32_e32 v20, v19, v21
	v_sub_f32_e32 v18, v18, v20
	v_mul_f32_e32 v20, s30, v43
	v_sub_f32_e32 v21, v19, v20
	v_sub_f32_e32 v19, v19, v21
	v_sub_f32_e32 v19, v19, v20
	v_add_f32_e32 v18, v18, v19
	v_add_f32_e32 v44, v21, v18
	v_sub_f32_e32 v19, v44, v21
	v_sub_f32_e32 v45, v18, v19
	v_mul_f32_e32 v18, v44, v44
	v_fma_f32 v19, v44, v44, -v18
	v_add_f32_e32 v20, v45, v45
	v_fma_f32 v19, v44, v20, v19
	v_fma_f32 v19, v45, v45, v19
	v_add_f32_e32 v20, v18, v19
	v_sub_f32_e32 v18, v20, v18
	v_sub_f32_e32 v21, v19, v18
	v_fma_f32 v18, v44, s31, v31
	v_fma_f32 v18, v44, v18, s33
	v_fma_f32 v18, v44, v18, s34
	v_fma_f32 v31, v44, v18, s35
	v_mul_f32_e32 v18, 0xc4067dd3, v10
	v_fma_f32 v46, v16, v8, v18
	v_mul_f32_e32 v16, 0xc050aa65, v11
	v_fma_f32 v47, v23, v8, v16
	v_sub_f32_e32 v16, 1.0, v14
	v_sub_f32_e32 v16, v16, v15
	v_sub_f32_e32 v16, v16, v5
	v_sub_f32_e32 v16, v16, v6
	v_sub_f32_e32 v23, v16, v7
	v_mul_f32_e32 v16, 0xc3a42dda, v14
	v_fma_f32 v48, v17, v23, v16
	v_mul_f32_e32 v16, v17, v7
	s_mov_b32 s0, 0x43a42dda
	v_fma_f32 v49, v6, s0, -v16
	v_sub_f32_e32 v16, v29, v33
	v_sub_f32_e32 v18, v16, v36
	v_sub_f32_e64 v16, -v29, v35
	v_sub_f32_e32 v16, v16, v46
	v_cvt_f64_f32_e32 v[16:17], v16
	v_sub_f32_e32 v18, v18, v47
	s_mov_b32 s19, 0x3f50624d
	s_mov_b32 s18, 0xd2f1a9fc
	v_mul_f64 v[16:17], v[16:17], s[18:19]
	v_sub_f32_e32 v19, v49, v48
	v_fma_f32 v18, v2, v19, v18
	v_cvt_f64_f32_e32 v[18:19], v18
	v_mul_f32_e32 v50, v31, v20
	v_fma_f32 v20, v20, v31, -v50
	v_fma_f32 v31, v21, v31, v20
	v_mul_f64 v[18:19], v[18:19], s[18:19]
	v_cvt_f32_f64_e32 v16, v[16:17]
	v_mul_f32_e32 v17, 0xbaaa64c3, v9
	v_fma_f32 v51, v24, v8, v17
	v_mul_f32_e32 v17, 0xc00ccccd, v15
	v_fma_f32 v52, v25, v23, v17
	v_mul_f32_e32 v17, v25, v7
	s_mov_b32 s0, 0x3b102de0
	v_fma_f32 v53, v5, s0, -v17
	v_sub_f32_e32 v17, v33, v1
	v_sub_f32_e32 v17, v17, v51
	v_sub_f32_e32 v20, v53, v52
	v_fma_f32 v17, v2, v20, v17
	v_cvt_f64_f32_e32 v[20:21], v17
	v_sub_f32_e32 v17, v35, v34
	v_add_f32_e32 v23, v42, v41
	v_sub_f32_e32 v24, v23, v42
	v_sub_f32_e32 v24, v41, v24
	v_add_f32_e32 v25, v39, v23
	v_sub_f32_e32 v35, v25, v39
	v_sub_f32_e32 v23, v23, v35
	v_add_f32_e32 v24, v40, v24
	v_cvt_i32_f32_e32 v35, v38
	v_add_f32_e32 v23, v23, v24
	v_add_f32_e32 v23, v25, v23
	v_add_f32_e32 v23, 1.0, v23
	v_ldexp_f32 v23, v23, v35
	v_add_f32_e32 v24, v50, v31
	v_sub_f32_e32 v25, v24, v50
	v_sub_f32_e32 v25, v31, v25
	v_add_f32_e32 v31, v44, v24
	v_sub_f32_e32 v35, v31, v44
	v_sub_f32_e32 v24, v24, v35
	v_add_f32_e32 v25, v45, v25
	v_cvt_i32_f32_e32 v35, v43
	v_add_f32_e32 v24, v24, v25
	v_add_f32_e32 v24, v31, v24
	v_add_f32_e32 v24, 1.0, v24
	v_ldexp_f32 v24, v24, v35
	v_cmp_nlt_f32_e32 vcc, s2, v22
	v_cndmask_b32_e32 v24, v27, v24, vcc
	v_cmp_ngt_f32_e32 vcc, s3, v22
	v_cndmask_b32_e32 v22, 0, v24, vcc
	s_brev_b32 s0, -2
	v_bfrev_b32_e32 v24, 1
	v_cmp_gt_f32_e32 vcc, 0, v37
	v_cndmask_b32_e32 v24, 0, v24, vcc
	v_bfi_b32 v22, s0, v22, v24
	v_bfi_b32 v24, s0, 0, v37
	v_cmp_eq_f32_e32 vcc, 0, v37
	v_cndmask_b32_e32 v31, v22, v24, vcc
	v_cmp_gt_f32_e64 s[0:1], s3, v30
	v_cmp_nlt_f32_e64 s[2:3], s2, v30
	v_cndmask_b32_e64 v22, v27, v23, s[2:3]
	s_or_b64 s[0:1], vcc, s[0:1]
	v_cndmask_b32_e64 v22, v22, 0, s[0:1]
	s_mov_b32 s8, 0x41380000
	v_mul_f32_e32 v4, 0x3fdc28f6, v4
	v_mul_f32_e32 v30, v4, v5
	v_fma_f32 v35, v2, v5, s8
	v_div_scale_f32 v38, s[0:1], v35, v35, v30
	v_cmp_class_f32_e64 vcc, v37, s6
	v_cndmask_b32_e32 v22, v22, v27, vcc
	v_cmp_u_f32_e64 s[0:1], v37, v37
	v_cndmask_b32_e64 v22, |v22|, v37, s[0:1]
	v_div_scale_f32 v39, vcc, v30, v35, v30
	v_cvt_f64_f32_e32 v[22:23], v22
	v_cvt_f64_f32_e32 v[24:25], v17
	s_mov_b32 s3, 0x3f7e4f76
	s_mov_b32 s2, 0x5fd8adac
	v_mul_f64 v[22:23], v[22:23], s[2:3]
	v_cvt_f32_f64_e32 v17, v[18:19]
	v_mul_f64 v[18:19], v[20:21], s[18:19]
	v_mul_f64 v[20:21], v[24:25], s[18:19]
	v_cvt_f64_f32_e32 v[24:25], v37
	v_rcp_f32_e32 v40, v38
	s_mov_b32 s3, 0x3fac28f5
	s_mov_b32 s2, 0xc28f5c29
	v_fma_f64 v[22:23], v[24:25], s[2:3], v[22:23]
	v_fma_f32 v24, -v38, v40, 1.0
	v_fma_f32 v24, v24, v40, v40
	v_mul_f32_e32 v25, v39, v24
	v_fma_f32 v40, -v38, v25, v39
	v_fma_f32 v25, v40, v24, v25
	v_fma_f32 v38, -v38, v25, v39
	v_div_fmas_f32 v38, v38, v24, v25
	v_mov_b32_e32 v24, 0xff800000
	v_cmp_class_f32_e64 vcc, v37, 4
	v_cndmask_b32_e32 v24, v31, v24, vcc
	s_movk_i32 s2, 0x200
	v_cmp_class_f32_e64 vcc, v37, s2
	v_cndmask_b32_e32 v24, v24, v27, vcc
	v_cndmask_b32_e64 v24, v24, v37, s[0:1]
	v_cvt_f64_f32_e32 v[24:25], v24
	v_cvt_f32_f64_e32 v18, v[18:19]
	s_mov_b32 s1, 0x3f8eb851
	s_mov_b32 s0, 0xeb851eb8
	v_fma_f64 v[22:23], v[24:25], s[0:1], v[22:23]
	v_cvt_f32_f64_e32 v19, v[20:21]
	s_add_u32 s0, s26, 0xf4
	v_mul_f32_e32 v24, v4, v6
	v_fma_f32 v25, v2, v6, s8
	v_div_scale_f32 v27, s[2:3], v25, v25, v24
	s_addc_u32 s1, s27, 0
	v_cvt_f32_f64_e32 v22, v[22:23]
	v_mov_b32_e32 v21, s1
	v_mov_b32_e32 v20, s0
	flat_store_dwordx4 v[20:21], v[16:19]
	s_nop 0
	v_div_fixup_f32 v16, v38, v35, v30
	v_fma_f32 v16, v15, v22, -v16
	v_mul_f32_e32 v13, s7, v13
	v_div_scale_f32 v17, vcc, v24, v25, v24
	v_fma_f32 v20, v12, v32, v13
	v_mul_f32_e32 v12, 0xc0566666, v15
	v_fma_f32 v21, v14, v32, v12
	v_mul_f32_e32 v12, 0xbd783e10, v11
	v_mul_f32_e32 v13, v4, v7
	v_fma_f32 v14, v2, v7, s8
	v_rcp_f32_e32 v4, v27
	v_div_scale_f32 v7, s[0:1], v14, v14, v13
	v_fma_f32 v22, v10, v28, v12
	v_sub_f32_e32 v3, v3, v8
	v_fma_f32 v12, -v27, v4, 1.0
	v_fma_f32 v4, v12, v4, v4
	v_div_scale_f32 v12, s[0:1], v13, v14, v13
	v_mul_f32_e32 v15, v17, v4
	v_fma_f32 v18, -v27, v15, v17
	v_fma_f32 v15, v18, v4, v15
	v_fma_f32 v17, -v27, v15, v17
	v_div_fmas_f32 v4, v17, v4, v15
	v_sub_f32_e32 v3, v3, v10
	v_sub_f32_e32 v3, v3, v11
	v_mul_f32_e32 v10, 0xbb82a766, v9
	v_rcp_f32_e32 v15, v7
	v_fma_f32 v23, v11, v32, v10
	v_sub_f32_e32 v17, v3, v9
	v_add_f32_e32 v18, v26, v26
	v_fma_f32 v3, -v7, v15, 1.0
	v_fma_f32 v3, v3, v15, v15
	v_mul_f32_e32 v9, v12, v3
	v_fma_f32 v10, -v7, v9, v12
	v_fma_f32 v9, v10, v3, v9
	v_fma_f32 v7, -v7, v9, v12
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v15, v7, v3, v9
	v_div_fixup_f32 v19, v4, v25, v24
	v_add_f32_e32 v3, v36, v34
	v_sub_f32_e32 v3, v3, v20
	v_cvt_f64_f32_e32 v[3:4], v3
	v_add_f32_e32 v1, v1, v20
	v_cvt_f64_f32_e32 v[9:10], v1
	v_sub_f32_e32 v1, v48, v21
	v_add_f32_e32 v1, v19, v1
	v_cvt_f64_f32_e32 v[11:12], v1
	v_fma_f32 v24, v17, v18, -v8
	v_mul_f64 v[3:4], v[3:4], s[18:19]
	v_mul_f64 v[7:8], v[9:10], s[18:19]
	v_mul_f64 v[9:10], v[11:12], s[18:19]
	v_mul_f32_e32 v1, v6, v32
	s_mov_b32 s0, 0x3b5b8bac
	v_fma_f32 v25, v5, s0, -v1
	v_add_f32_e32 v26, v2, v2
	v_div_fixup_f32 v11, v15, v14, v13
	v_cvt_f32_f64_e32 v1, v[3:4]
	v_cvt_f32_f64_e32 v2, v[7:8]
	v_cvt_f32_f64_e32 v3, v[9:10]
	v_add_f32_e32 v4, v52, v21
	v_sub_f32_e32 v4, v4, v16
	v_cvt_f64_f32_e32 v[4:5], v4
	v_sub_f32_e32 v6, v25, v49
	v_sub_f32_e32 v8, v6, v19
	v_sub_f32_e32 v6, v16, v53
	v_sub_f32_e32 v6, v6, v25
	v_cvt_f64_f32_e32 v[6:7], v6
	v_cvt_f64_f32_e32 v[8:9], v8
	v_add_f32_e32 v10, v53, v49
	v_sub_f32_e32 v10, v10, v11
	v_cvt_f64_f32_e32 v[10:11], v10
	v_mul_f64 v[4:5], v[4:5], s[18:19]
	v_mul_f64 v[6:7], v[6:7], s[18:19]
	v_mul_f64 v[8:9], v[8:9], s[18:19]
	v_mul_f64 v[10:11], v[10:11], s[18:19]
	v_sub_f32_e32 v12, v24, v46
	v_sub_f32_e32 v12, v12, v47
	v_sub_f32_e32 v12, v12, v51
	v_cvt_f64_f32_e32 v[12:13], v12
	v_sub_f32_e32 v14, v46, v22
	v_cvt_f64_f32_e32 v[14:15], v14
	v_add_f32_e32 v16, v47, v22
	v_sub_f32_e32 v16, v16, v23
	v_cvt_f64_f32_e32 v[16:17], v16
	v_add_f32_e32 v18, v51, v23
	v_cvt_f64_f32_e32 v[18:19], v18
	v_mul_f64 v[12:13], v[12:13], s[18:19]
	v_mul_f64 v[14:15], v[14:15], s[18:19]
	v_mul_f64 v[16:17], v[16:17], s[18:19]
	v_mul_f64 v[18:19], v[18:19], s[18:19]
	v_cvt_f32_f64_e32 v4, v[4:5]
	v_cvt_f32_f64_e32 v5, v[6:7]
	v_cvt_f32_f64_e32 v6, v[8:9]
	v_cvt_f32_f64_e32 v7, v[10:11]
	v_cvt_f32_f64_e32 v8, v[12:13]
	v_cvt_f32_f64_e32 v9, v[14:15]
	v_cvt_f32_f64_e32 v10, v[16:17]
	v_cvt_f32_f64_e32 v11, v[18:19]
	v_sub_f32_e32 v12, v25, v21
	s_add_u32 s0, s26, 0x104
	s_addc_u32 s1, s27, 0
	v_add_f32_e32 v13, v33, v29
	v_add_f32_e32 v13, v34, v13
	v_add_f32_e32 v13, v20, v13
	v_add_f32_e32 v13, v24, v13
	v_add_f32_e32 v13, v22, v13
	v_add_f32_e32 v13, v23, v13
	v_add_f32_e32 v13, v13, v13
	v_fma_f32 v12, v26, v12, -v13
	v_cvt_f64_f32_e32 v[12:13], v12
	v_mov_b32_e32 v15, s1
	v_mov_b32_e32 v14, s0
	flat_store_dwordx4 v[14:15], v[1:4]
	s_add_u32 s0, s26, 0x114
	v_mul_f64 v[1:2], v[12:13], s[18:19]
	s_addc_u32 s1, s27, 0
	v_mov_b32_e32 v4, s1
	v_mov_b32_e32 v3, s0
	flat_store_dwordx4 v[3:4], v[5:8]
	s_add_u32 s0, s26, 0x124
	s_addc_u32 s1, s27, 0
	v_mov_b32_e32 v4, s1
	v_mov_b32_e32 v3, s0
	flat_store_dwordx3 v[3:4], v[9:11]
	v_cvt_f32_f64_e32 v3, v[1:2]
	s_add_u32 s0, s26, 4
	s_addc_u32 s1, s27, 0
	v_mov_b32_e32 v2, s1
	v_mov_b32_e32 v1, s0
	flat_store_dword v[1:2], v3
	v_mov_b32_e32 v5, s16
	v_mov_b32_e32 v6, s17
	s_add_u32 s0, s24, 0x94
	s_addc_u32 s1, s25, 0
	s_add_u32 s2, s12, 44
	s_addc_u32 s3, s13, 0
	v_mov_b32_e32 v8, s3
	v_mov_b32_e32 v7, s2
	flat_load_dwordx2 v[24:25], v[5:6]
	flat_load_dwordx4 v[1:4], v[7:8]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_cvt_f64_f32_e32 v[21:22], v24
	s_mov_b32 s3, 0x3fee147a
	s_mov_b32 s2, 0xe147ae14
	v_div_scale_f64 v[5:6], s[6:7], s[2:3], s[2:3], v[21:22]
	v_rcp_f64_e32 v[7:8], v[5:6]
	v_fma_f64 v[9:10], -v[5:6], v[7:8], 1.0
	v_fma_f64 v[7:8], v[7:8], v[9:10], v[7:8]
	v_fma_f64 v[9:10], -v[5:6], v[7:8], 1.0
	v_div_scale_f64 v[11:12], vcc, v[21:22], s[2:3], v[21:22]
	v_fma_f64 v[7:8], v[7:8], v[9:10], v[7:8]
	v_mul_f64 v[9:10], v[11:12], v[7:8]
	v_fma_f64 v[5:6], -v[5:6], v[9:10], v[11:12]
	s_nop 0
	v_div_fmas_f64 v[5:6], v[5:6], v[7:8], v[9:10]
	s_mov_b32 s16, 0
	v_mov_b32_e32 v8, s1
	v_mov_b32_e32 v7, s0
	flat_load_dword v20, v[7:8]
	s_add_u32 s0, s24, 0x130
	s_addc_u32 s1, s25, 0
	s_add_u32 s6, s24, 0x168
	s_addc_u32 s7, s25, 0
	v_mov_b32_e32 v8, s7
	v_mov_b32_e32 v7, s6
	s_add_u32 s6, s24, 0x160
	s_addc_u32 s7, s25, 0
	v_mov_b32_e32 v13, s7
	v_mov_b32_e32 v12, s6
	flat_load_dword v9, v[7:8]
	flat_load_dwordx2 v[10:11], v[12:13]
	v_div_fixup_f64 v[5:6], v[5:6], s[2:3], v[21:22]
	s_add_u32 s2, s24, 0x150
	s_addc_u32 s3, s25, 0
	v_mov_b32_e32 v17, s3
	v_mov_b32_e32 v16, s2
	s_add_u32 s2, s24, 0x140
	s_addc_u32 s3, s25, 0
	v_mov_b32_e32 v19, s3
	v_mov_b32_e32 v18, s2
	v_cmp_nge_f32_e32 vcc, 1.0, v25
	v_add_f64 v[23:24], v[5:6], 1.0
	s_and_b64 vcc, exec, vcc
	flat_load_dwordx4 v[5:8], v[16:17]
	flat_load_dwordx4 v[12:15], v[18:19]
	v_mov_b32_e32 v17, s1
	v_mov_b32_e32 v16, s0
	flat_load_dwordx4 v[16:19], v[16:17]
	s_cbranch_vccnz BB0_12
; %bb.11:
	v_cvt_f64_f32_e32 v[26:27], v25
	s_mov_b32 s1, 0xbf889374
	s_mov_b32 s0, 0xbc6a7efa
	v_div_scale_f64 v[28:29], s[2:3], s[0:1], s[0:1], v[26:27]
	v_rcp_f64_e32 v[30:31], v[28:29]
	v_fma_f64 v[32:33], -v[28:29], v[30:31], 1.0
	v_fma_f64 v[30:31], v[30:31], v[32:33], v[30:31]
	v_div_scale_f64 v[32:33], vcc, v[26:27], s[0:1], v[26:27]
	v_fma_f64 v[34:35], -v[28:29], v[30:31], 1.0
	v_fma_f64 v[30:31], v[30:31], v[34:35], v[30:31]
	v_mul_f64 v[34:35], v[32:33], v[30:31]
	v_fma_f64 v[28:29], -v[28:29], v[34:35], v[32:33]
	v_div_fmas_f64 v[28:29], v[28:29], v[30:31], v[34:35]
	v_div_fixup_f64 v[28:29], v[28:29], s[0:1], v[26:27]
	s_mov_b32 s21, 0x40203333
	s_mov_b32 s20, 0x33333333
	s_mov_b32 s23, 0x3f96872b
	s_mov_b32 s22, 0x20c49ba
	s_mov_b32 s29, 0x3f647ae1
	v_add_f64 v[28:29], v[23:24], v[28:29]
	s_mov_b32 s28, 0x47ae147b
	s_mov_b32 s31, 0x3f56f006
	s_mov_b32 s30, 0x8db8bac7
	v_div_scale_f64 v[30:31], s[0:1], s[20:21], s[20:21], v[21:22]
	v_div_scale_f64 v[32:33], s[0:1], s[22:23], s[22:23], v[26:27]
	v_mul_f64 v[28:29], v[28:29], s[28:29]
	s_mov_b32 s29, 0x3fe47ae1
	v_div_scale_f64 v[34:35], s[0:1], s[28:29], s[28:29], v[21:22]
	s_mov_b32 s17, 0x402a0000
	v_div_scale_f64 v[36:37], s[0:1], s[30:31], s[30:31], v[26:27]
	v_div_scale_f64 v[38:39], s[0:1], s[16:17], s[16:17], v[21:22]
	s_mov_b32 s35, 0xbfc39581
	s_mov_b32 s34, 0x624dd2f
	v_div_scale_f64 v[40:41], s[0:1], s[34:35], s[34:35], v[26:27]
	v_rcp_f64_e32 v[42:43], v[30:31]
	v_rcp_f64_e32 v[44:45], v[32:33]
	v_rcp_f64_e32 v[46:47], v[34:35]
	v_rcp_f64_e32 v[48:49], v[36:37]
	v_rcp_f64_e32 v[50:51], v[38:39]
	v_rcp_f64_e32 v[52:53], v[40:41]
	v_div_scale_f64 v[54:55], vcc, v[21:22], s[20:21], v[21:22]
	v_fma_f64 v[56:57], -v[30:31], v[42:43], 1.0
	v_fma_f64 v[58:59], -v[32:33], v[44:45], 1.0
	v_div_scale_f64 v[60:61], s[0:1], v[21:22], s[16:17], v[21:22]
	v_fma_f64 v[62:63], -v[34:35], v[46:47], 1.0
	v_div_scale_f64 v[64:65], s[2:3], v[26:27], s[22:23], v[26:27]
	v_fma_f64 v[66:67], -v[36:37], v[48:49], 1.0
	v_fma_f64 v[42:43], v[42:43], v[56:57], v[42:43]
	v_fma_f64 v[56:57], -v[38:39], v[50:51], 1.0
	v_fma_f64 v[44:45], v[44:45], v[58:59], v[44:45]
	v_div_scale_f64 v[58:59], s[6:7], v[26:27], s[30:31], v[26:27]
	v_fma_f64 v[46:47], v[46:47], v[62:63], v[46:47]
	v_fma_f64 v[62:63], -v[40:41], v[52:53], 1.0
	v_fma_f64 v[48:49], v[48:49], v[66:67], v[48:49]
	v_fma_f64 v[66:67], -v[30:31], v[42:43], 1.0
	v_fma_f64 v[50:51], v[50:51], v[56:57], v[50:51]
	v_fma_f64 v[56:57], -v[32:33], v[44:45], 1.0
	v_div_scale_f64 v[68:69], s[8:9], v[21:22], s[28:29], v[21:22]
	v_fma_f64 v[70:71], -v[34:35], v[46:47], 1.0
	v_fma_f64 v[52:53], v[52:53], v[62:63], v[52:53]
	v_fma_f64 v[62:63], -v[36:37], v[48:49], 1.0
	v_fma_f64 v[42:43], v[42:43], v[66:67], v[42:43]
	v_div_scale_f64 v[66:67], s[10:11], v[26:27], s[34:35], v[26:27]
	v_fma_f64 v[44:45], v[44:45], v[56:57], v[44:45]
	v_fma_f64 v[56:57], -v[38:39], v[50:51], 1.0
	v_fma_f64 v[46:47], v[46:47], v[70:71], v[46:47]
	v_fma_f64 v[70:71], -v[40:41], v[52:53], 1.0
	v_fma_f64 v[48:49], v[48:49], v[62:63], v[48:49]
	v_mul_f64 v[62:63], v[54:55], v[42:43]
	v_mul_f64 v[72:73], v[64:65], v[44:45]
	v_fma_f64 v[50:51], v[50:51], v[56:57], v[50:51]
	v_mul_f64 v[56:57], v[68:69], v[46:47]
	v_fma_f64 v[52:53], v[52:53], v[70:71], v[52:53]
	v_mul_f64 v[70:71], v[58:59], v[48:49]
	v_fma_f64 v[30:31], -v[30:31], v[62:63], v[54:55]
	v_fma_f64 v[32:33], -v[32:33], v[72:73], v[64:65]
	v_mul_f64 v[54:55], v[60:61], v[50:51]
	v_fma_f64 v[34:35], -v[34:35], v[56:57], v[68:69]
	v_mul_f64 v[64:65], v[66:67], v[52:53]
	v_fma_f64 v[36:37], -v[36:37], v[70:71], v[58:59]
	v_div_fmas_f64 v[30:31], v[30:31], v[42:43], v[62:63]
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f64 v[32:33], v[32:33], v[44:45], v[72:73]
	s_mov_b64 vcc, s[8:9]
	v_div_fmas_f64 v[34:35], v[34:35], v[46:47], v[56:57]
	v_fma_f64 v[38:39], -v[38:39], v[54:55], v[60:61]
	v_fma_f64 v[40:41], -v[40:41], v[64:65], v[66:67]
	s_mov_b64 vcc, s[6:7]
	v_div_fmas_f64 v[36:37], v[36:37], v[48:49], v[70:71]
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f64 v[38:39], v[38:39], v[50:51], v[54:55]
	s_mov_b64 vcc, s[10:11]
	v_div_fmas_f64 v[40:41], v[40:41], v[52:53], v[64:65]
	v_div_fixup_f64 v[34:35], v[34:35], s[28:29], v[21:22]
	v_div_fixup_f64 v[30:31], v[30:31], s[20:21], v[21:22]
	v_div_fixup_f64 v[36:37], v[36:37], s[30:31], v[26:27]
	v_add_f64 v[34:35], v[34:35], 1.0
	v_div_fixup_f64 v[38:39], v[38:39], s[16:17], v[21:22]
	v_div_fixup_f64 v[32:33], v[32:33], s[22:23], v[26:27]
	v_add_f64 v[30:31], v[30:31], 1.0
	v_div_fixup_f64 v[26:27], v[40:41], s[34:35], v[26:27]
	v_add_f64 v[34:35], v[34:35], v[36:37]
	v_add_f64 v[36:37], v[38:39], 1.0
	s_mov_b32 s19, 0x3fc0624d
	v_add_f64 v[30:31], v[30:31], v[32:33]
	v_mul_f64 v[32:33], v[34:35], s[18:19]
	v_add_f64 v[26:27], v[36:37], v[26:27]
	v_mul_f64 v[28:29], v[30:31], v[28:29]
	v_mul_f64 v[26:27], v[26:27], v[32:33]
	s_mov_b64 vcc, exec
	s_cbranch_execz BB0_13
	s_branch BB0_14
BB0_12:
                                        ; implicit-def: $vgpr28_vgpr29
                                        ; implicit-def: $vgpr26_vgpr27
	s_mov_b64 vcc, 0
BB0_13:
	v_add_f32_e32 v25, -1.0, v25
	v_cvt_f64_f32_e32 v[25:26], v25
	s_mov_b32 s1, 0x3faeb851
	s_mov_b32 s0, 0xeb851eb8
	v_div_scale_f64 v[27:28], s[2:3], s[0:1], s[0:1], v[25:26]
	v_rcp_f64_e32 v[29:30], v[27:28]
	v_fma_f64 v[31:32], -v[27:28], v[29:30], 1.0
	v_fma_f64 v[29:30], v[29:30], v[31:32], v[29:30]
	v_div_scale_f64 v[31:32], vcc, v[25:26], s[0:1], v[25:26]
	v_fma_f64 v[33:34], -v[27:28], v[29:30], 1.0
	v_fma_f64 v[29:30], v[29:30], v[33:34], v[29:30]
	v_mul_f64 v[33:34], v[31:32], v[29:30]
	v_fma_f64 v[27:28], -v[27:28], v[33:34], v[31:32]
	v_div_fmas_f64 v[27:28], v[27:28], v[29:30], v[33:34]
	s_mov_b32 s3, 0xc054d555
	s_mov_b32 s2, 0x55555555
	v_add_f64 v[23:24], v[23:24], s[2:3]
	v_div_fixup_f64 v[27:28], v[27:28], s[0:1], v[25:26]
	s_mov_b32 s7, 0x40203333
	s_mov_b32 s6, 0x33333333
	s_mov_b32 s9, 0x3fb16872
	v_add_f64 v[23:24], v[23:24], v[27:28]
	s_mov_b32 s8, 0xb020c49c
	s_mov_b32 s11, 0x3f647ae1
	s_mov_b32 s10, 0x47ae147b
	v_div_scale_f64 v[27:28], s[0:1], s[6:7], s[6:7], v[21:22]
	v_div_scale_f64 v[29:30], s[0:1], s[8:9], s[8:9], v[25:26]
	v_mul_f64 v[23:24], v[23:24], s[10:11]
	s_mov_b32 s11, 0x3fe47ae1
	v_div_scale_f64 v[31:32], s[0:1], s[10:11], s[10:11], v[21:22]
	v_rcp_f64_e32 v[33:34], v[27:28]
	v_rcp_f64_e32 v[35:36], v[29:30]
	v_rcp_f64_e32 v[37:38], v[31:32]
	v_fma_f64 v[39:40], -v[27:28], v[33:34], 1.0
	v_fma_f64 v[41:42], -v[29:30], v[35:36], 1.0
	v_fma_f64 v[43:44], -v[31:32], v[37:38], 1.0
	v_fma_f64 v[33:34], v[33:34], v[39:40], v[33:34]
	v_fma_f64 v[35:36], v[35:36], v[41:42], v[35:36]
	v_fma_f64 v[37:38], v[37:38], v[43:44], v[37:38]
	v_div_scale_f64 v[39:40], vcc, v[21:22], s[6:7], v[21:22]
	v_div_scale_f64 v[41:42], s[0:1], v[25:26], s[8:9], v[25:26]
	v_fma_f64 v[43:44], -v[27:28], v[33:34], 1.0
	v_fma_f64 v[45:46], -v[29:30], v[35:36], 1.0
	v_div_scale_f64 v[47:48], s[2:3], v[21:22], s[10:11], v[21:22]
	v_fma_f64 v[49:50], -v[31:32], v[37:38], 1.0
	v_fma_f64 v[33:34], v[33:34], v[43:44], v[33:34]
	v_fma_f64 v[35:36], v[35:36], v[45:46], v[35:36]
	v_fma_f64 v[37:38], v[37:38], v[49:50], v[37:38]
	v_mul_f64 v[43:44], v[39:40], v[33:34]
	v_mul_f64 v[45:46], v[41:42], v[35:36]
	v_mul_f64 v[49:50], v[47:48], v[37:38]
	v_fma_f64 v[27:28], -v[27:28], v[43:44], v[39:40]
	v_fma_f64 v[29:30], -v[29:30], v[45:46], v[41:42]
	v_fma_f64 v[31:32], -v[31:32], v[49:50], v[47:48]
	v_div_fmas_f64 v[27:28], v[27:28], v[33:34], v[43:44]
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f64 v[29:30], v[29:30], v[35:36], v[45:46]
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f64 v[31:32], v[31:32], v[37:38], v[49:50]
	s_mov_b32 s17, 0x402a0000
	s_mov_b32 s16, 0
	v_div_scale_f64 v[33:34], s[0:1], s[16:17], s[16:17], v[21:22]
	v_div_fixup_f64 v[31:32], v[31:32], s[10:11], v[21:22]
	s_mov_b32 s11, 0x3f747ae1
	v_div_scale_f64 v[35:36], s[0:1], s[10:11], s[10:11], v[25:26]
	v_rcp_f64_e32 v[37:38], v[33:34]
	v_rcp_f64_e32 v[39:40], v[35:36]
	v_div_fixup_f64 v[27:28], v[27:28], s[6:7], v[21:22]
	s_mov_b32 s7, 0x3fc33333
	v_div_scale_f64 v[41:42], s[0:1], s[6:7], s[6:7], v[25:26]
	v_fma_f64 v[43:44], -v[35:36], v[39:40], 1.0
	v_fma_f64 v[45:46], -v[33:34], v[37:38], 1.0
	v_rcp_f64_e32 v[47:48], v[41:42]
	v_fma_f64 v[39:40], v[39:40], v[43:44], v[39:40]
	v_fma_f64 v[37:38], v[37:38], v[45:46], v[37:38]
	v_div_scale_f64 v[43:44], s[0:1], v[21:22], s[16:17], v[21:22]
	v_div_scale_f64 v[45:46], vcc, v[25:26], s[10:11], v[25:26]
	v_fma_f64 v[49:50], -v[35:36], v[39:40], 1.0
	v_fma_f64 v[51:52], -v[33:34], v[37:38], 1.0
	v_fma_f64 v[53:54], -v[41:42], v[47:48], 1.0
	v_fma_f64 v[39:40], v[39:40], v[49:50], v[39:40]
	v_fma_f64 v[37:38], v[37:38], v[51:52], v[37:38]
	v_fma_f64 v[47:48], v[47:48], v[53:54], v[47:48]
	v_mul_f64 v[49:50], v[45:46], v[39:40]
	v_mul_f64 v[51:52], v[43:44], v[37:38]
	v_div_scale_f64 v[53:54], s[2:3], v[25:26], s[6:7], v[25:26]
	v_fma_f64 v[55:56], -v[41:42], v[47:48], 1.0
	v_fma_f64 v[35:36], -v[35:36], v[49:50], v[45:46]
	v_fma_f64 v[33:34], -v[33:34], v[51:52], v[43:44]
	v_fma_f64 v[43:44], v[47:48], v[55:56], v[47:48]
	v_div_fmas_f64 v[35:36], v[35:36], v[39:40], v[49:50]
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f64 v[33:34], v[33:34], v[37:38], v[51:52]
	v_mul_f64 v[37:38], v[53:54], v[43:44]
	v_fma_f64 v[39:40], -v[41:42], v[37:38], v[53:54]
	v_add_f64 v[31:32], v[31:32], 1.0
	v_div_fixup_f64 v[21:22], v[33:34], s[16:17], v[21:22]
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f64 v[33:34], v[39:40], v[43:44], v[37:38]
	s_mov_b32 s1, 0x40865249
	s_mov_b32 s0, 0x24924925
	v_add_f64 v[27:28], v[27:28], 1.0
	v_add_f64 v[31:32], v[31:32], s[0:1]
	v_div_fixup_f64 v[35:36], v[35:36], s[10:11], v[25:26]
	v_add_f64 v[21:22], v[21:22], 1.0
	s_mov_b32 s1, 0x4046ba2e
	s_mov_b32 s0, 0x8ba2e8bb
	s_mov_b32 s3, 0xc01a24cf
	v_div_fixup_f64 v[29:30], v[29:30], s[8:9], v[25:26]
	v_add_f64 v[27:28], v[27:28], s[0:1]
	s_mov_b32 s2, 0x7a24cf7a
	v_add_f64 v[31:32], v[31:32], v[35:36]
	v_add_f64 v[21:22], v[21:22], s[2:3]
	v_div_fixup_f64 v[25:26], v[33:34], s[6:7], v[25:26]
	v_add_f64 v[27:28], v[27:28], v[29:30]
	s_mov_b32 s1, 0x3fc0624d
	s_mov_b32 s0, 0xd2f1a9fc
	v_mul_f64 v[30:31], v[31:32], s[0:1]
	v_add_f64 v[21:22], v[21:22], v[25:26]
	v_mul_f64 v[28:29], v[27:28], v[23:24]
	v_mul_f64 v[26:27], v[21:22], v[30:31]
BB0_14:                                 ; %_Z10kernel_camfPfS_iS_iS_if.exit
	v_cvt_f32_f64_e32 v21, v[28:29]
	s_mov_b32 s2, 0x41200000
	v_cvt_f32_f64_e32 v22, v[26:27]
	v_div_scale_f32 v23, s[0:1], v21, v21, s2
	s_mov_b32 s3, 0x43fa0000
	v_div_scale_f32 v24, s[0:1], v22, v22, s3
	v_div_scale_f32 v25, vcc, s2, v21, s2
	v_div_scale_f32 v26, s[0:1], s3, v22, s3
	v_rcp_f32_e32 v27, v23
	v_rcp_f32_e32 v28, v24
	s_waitcnt vmcnt(5) lgkmcnt(5)
	v_mul_f32_e32 v20, 0x447a0000, v20
	s_mov_b32 s8, 0x3f2aaaab
	v_fma_f32 v29, -v23, v27, 1.0
	v_fma_f32 v30, -v24, v28, 1.0
	v_fma_f32 v27, v29, v27, v27
	v_fma_f32 v28, v30, v28, v28
	v_mul_f32_e32 v29, v25, v27
	v_mul_f32_e32 v30, v26, v28
	v_fma_f32 v31, -v23, v29, v25
	v_fma_f32 v32, -v24, v30, v26
	v_fma_f32 v29, v31, v27, v29
	v_fma_f32 v30, v32, v28, v30
	v_fma_f32 v23, -v23, v29, v25
	v_fma_f32 v24, -v24, v30, v26
	v_div_fmas_f32 v23, v23, v27, v29
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v24, v24, v28, v30
	v_frexp_mant_f32_e64 v25, |v20|
	v_cmp_gt_f32_e32 vcc, s8, v25
	v_cndmask_b32_e64 v26, 0, 1, vcc
	v_ldexp_f32 v25, v25, v26
	v_add_f32_e32 v26, 1.0, v25
	v_sub_f32_e32 v27, v26, v25
	v_sub_f32_e32 v28, v26, v27
	v_sub_f32_e32 v28, v25, v28
	v_rcp_f32_e32 v29, v26
	v_sub_f32_e32 v27, 1.0, v27
	v_add_f32_e32 v27, v27, v28
	v_add_f32_e32 v25, -1.0, v25
	v_mul_f32_e32 v28, v25, v29
	v_mul_f32_e32 v30, v26, v28
	v_fma_f32 v26, v28, v26, -v30
	v_fma_f32 v26, v28, v27, v26
	v_add_f32_e32 v27, v30, v26
	v_sub_f32_e32 v30, v27, v30
	v_sub_f32_e32 v26, v26, v30
	v_sub_f32_e32 v30, v25, v27
	v_sub_f32_e32 v25, v25, v30
	v_sub_f32_e32 v25, v25, v27
	v_sub_f32_e32 v25, v25, v26
	v_add_f32_e32 v25, v30, v25
	v_mul_f32_e32 v25, v29, v25
	v_add_f32_e32 v26, v28, v25
	v_sub_f32_e32 v27, v26, v28
	v_sub_f32_e32 v25, v25, v27
	v_mul_f32_e32 v27, v26, v26
	v_add_f32_e32 v28, v25, v25
	v_fma_f32 v29, v26, v26, -v27
	v_fma_f32 v28, v26, v28, v29
	v_fma_f32 v28, v25, v25, v28
	v_add_f32_e32 v29, v27, v28
	v_sub_f32_e32 v27, v29, v27
	v_frexp_exp_i32_f32_e64 v30, |v20|
	v_subbrev_u32_e32 v30, vcc, 0, v30, vcc
	v_cvt_f32_i32_e32 v30, v30
	v_sub_f32_e32 v27, v28, v27
	s_mov_b32 s9, 0x3f317218
	s_mov_b32 s10, 0xb102e308
	v_mul_f32_e32 v28, s9, v30
	v_fma_f32 v31, v30, s9, -v28
	v_fma_f32 v30, v30, s10, v31
	v_add_f32_e32 v31, v28, v30
	v_sub_f32_e32 v28, v31, v28
	v_sub_f32_e32 v28, v30, v28
	s_mov_b32 s11, 0x3e76c4e1
	s_mov_b32 s16, 0x3ecccdef
	v_mov_b32_e32 v30, 0x3e91f4c4
	v_fma_f32 v32, v29, s11, v30
	v_fma_f32 v32, v29, v32, s16
	v_mul_f32_e32 v33, v29, v32
	v_fma_f32 v34, v29, v32, -v33
	v_fma_f32 v32, v27, v32, v34
	v_mul_f32_e32 v27, v26, v27
	v_fma_f32 v27, v29, v25, v27
	v_mul_f32_e32 v34, v26, v29
	v_fma_f32 v29, v29, v26, -v34
	v_add_f32_e32 v27, v29, v27
	v_add_f32_e32 v29, v33, v32
	v_sub_f32_e32 v33, v29, v33
	v_sub_f32_e32 v32, v32, v33
	s_mov_b32 s17, 0x3f2aaaaa
	s_mov_b32 s18, 0xbf2aaaaa
	v_add_f32_e32 v33, s17, v29
	v_add_f32_e32 v35, s18, v33
	v_sub_f32_e32 v29, v29, v35
	s_mov_b32 s19, 0x31739010
	v_add_f32_e32 v32, s19, v32
	v_add_f32_e32 v29, v29, v32
	v_add_f32_e32 v32, v33, v29
	v_sub_f32_e32 v33, v32, v33
	v_sub_f32_e32 v29, v29, v33
	v_add_f32_e32 v33, v34, v27
	v_sub_f32_e32 v34, v33, v34
	v_sub_f32_e32 v27, v27, v34
	v_mul_f32_e32 v27, v27, v32
	v_fma_f32 v27, v33, v29, v27
	v_mul_f32_e32 v29, v33, v32
	v_fma_f32 v32, v33, v32, -v29
	v_add_f32_e32 v27, v32, v27
	v_add_f32_e32 v32, v29, v27
	v_sub_f32_e32 v29, v32, v29
	v_sub_f32_e32 v27, v27, v29
	v_ldexp_f32 v26, v26, 1
	v_add_f32_e32 v29, v26, v32
	v_sub_f32_e32 v26, v29, v26
	v_sub_f32_e32 v26, v32, v26
	v_ldexp_f32 v25, v25, 1
	v_add_f32_e32 v25, v25, v27
	v_add_f32_e32 v25, v26, v25
	v_add_f32_e32 v26, v29, v25
	v_sub_f32_e32 v27, v26, v29
	v_sub_f32_e32 v25, v25, v27
	v_add_f32_e32 v27, v31, v26
	v_sub_f32_e32 v29, v27, v31
	v_sub_f32_e32 v32, v27, v29
	v_sub_f32_e32 v31, v31, v32
	v_sub_f32_e32 v26, v26, v29
	v_add_f32_e32 v26, v26, v31
	v_add_f32_e32 v29, v28, v25
	v_sub_f32_e32 v31, v29, v28
	v_sub_f32_e32 v32, v29, v31
	v_sub_f32_e32 v28, v28, v32
	v_sub_f32_e32 v25, v25, v31
	v_add_f32_e32 v25, v25, v28
	v_add_f32_e32 v26, v29, v26
	v_add_f32_e32 v28, v27, v26
	v_sub_f32_e32 v27, v28, v27
	v_sub_f32_e32 v26, v26, v27
	v_add_f32_e32 v25, v25, v26
	v_add_f32_e32 v26, v28, v25
	v_sub_f32_e32 v27, v26, v28
	v_sub_f32_e32 v25, v25, v27
	v_mul_f32_e32 v27, 0, v26
	v_fma_f32 v25, v25, 2.0, v27
	v_add_f32_e32 v27, v26, v26
	v_fma_f32 v26, v26, 2.0, -v27
	v_add_f32_e32 v25, v26, v25
	v_add_f32_e32 v26, v27, v25
	v_sub_f32_e32 v28, v26, v27
	v_sub_f32_e32 v25, v25, v28
	s_movk_i32 s6, 0x204
	v_cmp_class_f32_e64 vcc, v27, s6
	v_cndmask_b32_e32 v26, v26, v27, vcc
	s_mov_b32 s20, 0x3fb8aa3b
	v_mul_f32_e32 v27, s20, v26
	v_rndne_f32_e32 v27, v27
	s_mov_b32 s21, 0x3f317200
	v_mul_f32_e32 v28, s21, v27
	v_sub_f32_e32 v29, v26, v28
	v_sub_f32_e32 v31, v29, v26
	v_add_f32_e32 v28, v28, v31
	v_sub_f32_e32 v31, v29, v31
	v_sub_f32_e32 v31, v26, v31
	v_sub_f32_e32 v28, v31, v28
	s_mov_b32 s22, 0x7f800000
	v_cmp_neq_f32_e64 vcc, |v26|, s22
	v_cndmask_b32_e32 v25, 0, v25, vcc
	v_add_f32_e32 v25, v25, v28
	v_add_f32_e32 v28, v29, v25
	v_sub_f32_e32 v29, v28, v29
	v_sub_f32_e32 v25, v25, v29
	s_mov_b32 s23, 0x35bfbc00
	v_mul_f32_e32 v29, s23, v27
	v_sub_f32_e32 v31, v28, v29
	v_sub_f32_e32 v28, v28, v31
	v_sub_f32_e32 v28, v28, v29
	v_add_f32_e32 v25, v25, v28
	v_add_f32_e32 v28, v31, v25
	v_sub_f32_e32 v29, v28, v31
	v_sub_f32_e32 v25, v25, v29
	s_mov_b32 s28, 0x2ea39ef3
	v_mul_f32_e32 v29, s28, v27
	v_sub_f32_e32 v31, v28, v29
	v_sub_f32_e32 v28, v28, v31
	v_sub_f32_e32 v28, v28, v29
	v_add_f32_e32 v25, v25, v28
	v_add_f32_e32 v28, v31, v25
	v_sub_f32_e32 v29, v28, v31
	v_sub_f32_e32 v25, v25, v29
	v_mul_f32_e32 v29, v28, v28
	v_fma_f32 v31, v28, v28, -v29
	v_add_f32_e32 v32, v25, v25
	v_fma_f32 v31, v28, v32, v31
	v_fma_f32 v31, v25, v25, v31
	v_add_f32_e32 v32, v29, v31
	v_sub_f32_e32 v29, v32, v29
	v_sub_f32_e32 v29, v31, v29
	s_mov_b32 s29, 0x3ab42872
	s_mov_b32 s30, 0x3d2aadcc
	v_mov_b32_e32 v31, 0x3c091de6
	v_fma_f32 v33, v28, s29, v31
	v_fma_f32 v33, v28, v33, s30
	s_mov_b32 s31, 0x3e2aaa47
	v_fma_f32 v33, v28, v33, s31
	s_mov_b32 s33, 0x3efffffc
	v_fma_f32 v33, v28, v33, s33
	v_mul_f32_e32 v34, v33, v32
	v_fma_f32 v32, v32, v33, -v34
	v_fma_f32 v29, v29, v33, v32
	v_div_fixup_f32 v21, v23, v21, s2
	v_div_fixup_f32 v22, v24, v22, s3
	v_add_f32_e32 v23, v34, v29
	v_sub_f32_e32 v24, v23, v34
	v_sub_f32_e32 v24, v29, v24
	v_add_f32_e32 v29, v28, v23
	v_sub_f32_e32 v28, v29, v28
	v_sub_f32_e32 v23, v23, v28
	v_add_f32_e32 v24, v25, v24
	v_cvt_i32_f32_e32 v25, v27
	v_add_f32_e32 v23, v23, v24
	v_add_f32_e32 v23, v29, v23
	v_add_f32_e32 v23, 1.0, v23
	v_ldexp_f32 v23, v23, v25
	s_mov_b32 s2, 0x42b20000
	s_mov_b32 s3, 0xc2d00000
	v_cmp_ngt_f32_e32 vcc, s3, v26
	v_mov_b32_e32 v27, s22
	v_cmp_nlt_f32_e64 s[0:1], s2, v26
	v_cndmask_b32_e64 v23, v27, v23, s[0:1]
	v_cmp_neq_f32_e64 s[0:1], 0, v20
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v23, 0, v23, vcc
	v_cmp_class_f32_e64 vcc, v20, s6
	v_cndmask_b32_e32 v23, v23, v27, vcc
	v_cmp_u_f32_e32 vcc, v20, v20
	v_cndmask_b32_e64 v26, |v23|, v20, vcc
	v_mul_f32_e32 v28, v26, v21
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v20, 0xc1200000, v17
	v_fma_f32 v29, v16, v28, v20
	v_mul_f32_e32 v32, v26, v22
	s_mov_b32 s7, 0xc3fa0000
	v_mul_f32_e32 v20, s7, v18
	v_fma_f32 v33, v17, v32, v20
	v_mul_f32_e32 v20, 0xbdcccccd, v12
	v_fma_f32 v34, v19, v28, v20
	s_mov_b32 s0, 0x3be56041
	s_mov_b32 s1, 0x42380000
	s_mov_b32 s34, 0x428357e2
	v_sub_f32_e32 v1, v1, v19
	v_mul_f32_e32 v20, s0, v16
	v_mul_f32_e32 v19, 0xbab78034, v19
	v_mul_f32_e32 v21, s0, v17
	v_mul_f32_e32 v22, s0, v18
	v_mul_f32_e32 v16, s1, v16
	v_mul_f32_e32 v23, s1, v17
	v_mul_f32_e32 v24, s1, v18
	v_mul_f32_e32 v17, s34, v17
	v_mul_f32_e32 v25, s34, v18
	v_sub_f32_e32 v1, v1, v12
	v_sub_f32_e32 v1, v1, v13
	v_fma_f32 v35, v20, v1, v19
	s_mov_b32 s0, 0xb76ae18a
	v_mul_f32_e32 v18, s0, v12
	v_fma_f32 v36, v21, v1, v18
	v_mul_f32_e32 v18, s0, v13
	v_fma_f32 v1, v22, v1, v18
	v_add_f32_e32 v18, v15, v5
	v_add_f32_e32 v18, v18, v6
	v_add_f32_e32 v37, v18, v7
	v_frexp_mant_f32_e64 v18, |v37|
	v_cmp_gt_f32_e32 vcc, s8, v18
	v_cndmask_b32_e64 v19, 0, 1, vcc
	v_ldexp_f32 v18, v18, v19
	v_add_f32_e32 v19, 1.0, v18
	v_sub_f32_e32 v20, v19, v18
	v_sub_f32_e32 v21, v19, v20
	v_sub_f32_e32 v21, v18, v21
	v_rcp_f32_e32 v22, v19
	v_sub_f32_e32 v20, 1.0, v20
	v_add_f32_e32 v20, v20, v21
	v_add_f32_e32 v18, -1.0, v18
	v_mul_f32_e32 v21, v18, v22
	v_mul_f32_e32 v38, v19, v21
	v_fma_f32 v19, v21, v19, -v38
	v_fma_f32 v19, v21, v20, v19
	v_add_f32_e32 v20, v38, v19
	v_sub_f32_e32 v38, v20, v38
	v_sub_f32_e32 v19, v19, v38
	v_sub_f32_e32 v38, v18, v20
	v_sub_f32_e32 v18, v18, v38
	v_sub_f32_e32 v18, v18, v20
	v_sub_f32_e32 v18, v18, v19
	v_add_f32_e32 v18, v38, v18
	v_mul_f32_e32 v18, v22, v18
	v_add_f32_e32 v19, v21, v18
	v_sub_f32_e32 v20, v19, v21
	v_sub_f32_e32 v18, v18, v20
	v_mul_f32_e32 v20, v19, v19
	v_add_f32_e32 v21, v18, v18
	v_fma_f32 v22, v19, v19, -v20
	v_fma_f32 v21, v19, v21, v22
	v_fma_f32 v21, v18, v18, v21
	v_frexp_exp_i32_f32_e64 v22, |v37|
	v_subbrev_u32_e32 v22, vcc, 0, v22, vcc
	v_cvt_f32_i32_e32 v22, v22
	v_add_f32_e32 v38, v20, v21
	v_sub_f32_e32 v20, v38, v20
	v_sub_f32_e32 v20, v21, v20
	v_mul_f32_e32 v21, s9, v22
	v_fma_f32 v39, v22, s9, -v21
	v_fma_f32 v22, v22, s10, v39
	v_add_f32_e32 v39, v21, v22
	v_sub_f32_e32 v21, v39, v21
	v_sub_f32_e32 v21, v22, v21
	v_fma_f32 v22, v38, s11, v30
	v_fma_f32 v22, v38, v22, s16
	v_mul_f32_e32 v30, v38, v22
	v_fma_f32 v40, v38, v22, -v30
	v_fma_f32 v22, v20, v22, v40
	v_mul_f32_e32 v20, v19, v20
	v_fma_f32 v20, v38, v18, v20
	v_mul_f32_e32 v40, v19, v38
	v_fma_f32 v38, v38, v19, -v40
	v_add_f32_e32 v20, v38, v20
	v_add_f32_e32 v38, v30, v22
	v_sub_f32_e32 v30, v38, v30
	v_sub_f32_e32 v22, v22, v30
	v_add_f32_e32 v30, s17, v38
	v_add_f32_e32 v41, s18, v30
	v_sub_f32_e32 v38, v38, v41
	v_add_f32_e32 v22, s19, v22
	v_add_f32_e32 v22, v38, v22
	v_add_f32_e32 v38, v30, v22
	v_sub_f32_e32 v30, v38, v30
	v_sub_f32_e32 v22, v22, v30
	v_add_f32_e32 v30, v40, v20
	v_sub_f32_e32 v40, v30, v40
	v_sub_f32_e32 v20, v20, v40
	v_mul_f32_e32 v20, v20, v38
	v_fma_f32 v20, v30, v22, v20
	v_mul_f32_e32 v22, v30, v38
	v_fma_f32 v30, v30, v38, -v22
	v_add_f32_e32 v20, v30, v20
	v_add_f32_e32 v30, v22, v20
	v_sub_f32_e32 v22, v30, v22
	v_sub_f32_e32 v20, v20, v22
	v_ldexp_f32 v19, v19, 1
	v_add_f32_e32 v22, v19, v30
	v_sub_f32_e32 v19, v22, v19
	v_sub_f32_e32 v19, v30, v19
	v_ldexp_f32 v18, v18, 1
	v_add_f32_e32 v18, v18, v20
	v_add_f32_e32 v18, v19, v18
	v_add_f32_e32 v19, v22, v18
	v_sub_f32_e32 v20, v19, v22
	v_sub_f32_e32 v18, v18, v20
	v_add_f32_e32 v20, v39, v19
	v_sub_f32_e32 v22, v20, v39
	v_sub_f32_e32 v30, v20, v22
	v_sub_f32_e32 v30, v39, v30
	v_sub_f32_e32 v19, v19, v22
	v_add_f32_e32 v19, v19, v30
	v_add_f32_e32 v22, v21, v18
	v_sub_f32_e32 v30, v22, v21
	v_sub_f32_e32 v38, v22, v30
	v_sub_f32_e32 v21, v21, v38
	v_sub_f32_e32 v18, v18, v30
	v_add_f32_e32 v18, v18, v21
	v_add_f32_e32 v19, v22, v19
	v_add_f32_e32 v21, v20, v19
	v_sub_f32_e32 v20, v21, v20
	v_sub_f32_e32 v19, v19, v20
	v_add_f32_e32 v18, v18, v19
	v_add_f32_e32 v19, v21, v18
	v_sub_f32_e32 v20, v19, v21
	v_sub_f32_e32 v18, v18, v20
	v_add_f32_e32 v20, v19, v19
	v_fma_f32 v21, v19, 2.0, -v20
	v_mul_f32_e32 v22, 0, v19
	v_fma_f32 v30, v18, 2.0, v22
	v_add_f32_e32 v21, v21, v30
	v_add_f32_e32 v30, v20, v21
	v_sub_f32_e32 v38, v30, v20
	v_sub_f32_e32 v21, v21, v38
	v_cmp_class_f32_e64 vcc, v20, s6
	v_cndmask_b32_e32 v30, v30, v20, vcc
	v_mul_f32_e32 v20, s20, v30
	v_rndne_f32_e32 v38, v20
	v_mul_f32_e32 v20, s21, v38
	v_sub_f32_e32 v39, v30, v20
	v_sub_f32_e32 v40, v39, v30
	v_add_f32_e32 v20, v20, v40
	v_sub_f32_e32 v40, v39, v40
	v_sub_f32_e32 v40, v30, v40
	v_sub_f32_e32 v20, v40, v20
	v_cmp_neq_f32_e64 vcc, |v30|, s22
	v_cndmask_b32_e32 v21, 0, v21, vcc
	v_add_f32_e32 v20, v21, v20
	v_add_f32_e32 v21, v39, v20
	v_sub_f32_e32 v39, v21, v39
	v_sub_f32_e32 v20, v20, v39
	v_mul_f32_e32 v39, s23, v38
	v_sub_f32_e32 v40, v21, v39
	v_sub_f32_e32 v21, v21, v40
	v_sub_f32_e32 v21, v21, v39
	v_add_f32_e32 v20, v20, v21
	v_add_f32_e32 v21, v40, v20
	v_sub_f32_e32 v39, v21, v40
	v_sub_f32_e32 v20, v20, v39
	v_mul_f32_e32 v39, s28, v38
	v_sub_f32_e32 v40, v21, v39
	v_sub_f32_e32 v21, v21, v40
	v_sub_f32_e32 v21, v21, v39
	v_add_f32_e32 v20, v20, v21
	v_add_f32_e32 v39, v40, v20
	v_sub_f32_e32 v21, v39, v40
	v_sub_f32_e32 v40, v20, v21
	v_mul_f32_e32 v20, v39, v39
	v_fma_f32 v21, v39, v39, -v20
	v_add_f32_e32 v41, v40, v40
	v_fma_f32 v21, v39, v41, v21
	v_fma_f32 v21, v40, v40, v21
	v_add_f32_e32 v41, v20, v21
	v_sub_f32_e32 v20, v41, v20
	v_sub_f32_e32 v20, v21, v20
	v_fma_f32 v21, v39, s29, v31
	v_fma_f32 v21, v39, v21, s30
	v_fma_f32 v21, v39, v21, s31
	v_fma_f32 v21, v39, v21, s33
	v_mul_f32_e32 v42, v21, v41
	v_fma_f32 v41, v41, v21, -v42
	v_fma_f32 v41, v20, v21, v41
	s_mov_b32 s0, 0x40400000
	v_fma_f32 v18, v18, s0, v22
	v_mul_f32_e32 v20, s0, v19
	v_fma_f32 v19, v19, s0, -v20
	v_add_f32_e32 v18, v19, v18
	v_add_f32_e32 v19, v20, v18
	v_sub_f32_e32 v21, v19, v20
	v_sub_f32_e32 v18, v18, v21
	v_cmp_class_f32_e64 vcc, v20, s6
	v_cndmask_b32_e32 v22, v19, v20, vcc
	v_mul_f32_e32 v19, s20, v22
	v_rndne_f32_e32 v43, v19
	v_mul_f32_e32 v19, s21, v43
	v_sub_f32_e32 v20, v22, v19
	v_sub_f32_e32 v21, v20, v22
	v_add_f32_e32 v19, v19, v21
	v_sub_f32_e32 v21, v20, v21
	v_sub_f32_e32 v21, v22, v21
	v_sub_f32_e32 v19, v21, v19
	v_cmp_neq_f32_e64 vcc, |v22|, s22
	v_cndmask_b32_e32 v18, 0, v18, vcc
	v_add_f32_e32 v18, v18, v19
	v_add_f32_e32 v19, v20, v18
	v_sub_f32_e32 v20, v19, v20
	v_sub_f32_e32 v18, v18, v20
	v_mul_f32_e32 v20, s23, v43
	v_sub_f32_e32 v21, v19, v20
	v_sub_f32_e32 v19, v19, v21
	v_sub_f32_e32 v19, v19, v20
	v_add_f32_e32 v18, v18, v19
	v_add_f32_e32 v19, v21, v18
	v_sub_f32_e32 v20, v19, v21
	v_sub_f32_e32 v18, v18, v20
	v_mul_f32_e32 v20, s28, v43
	v_sub_f32_e32 v21, v19, v20
	v_sub_f32_e32 v19, v19, v21
	v_sub_f32_e32 v19, v19, v20
	v_add_f32_e32 v18, v18, v19
	v_add_f32_e32 v44, v21, v18
	v_sub_f32_e32 v19, v44, v21
	v_sub_f32_e32 v45, v18, v19
	v_mul_f32_e32 v18, v44, v44
	v_fma_f32 v19, v44, v44, -v18
	v_add_f32_e32 v20, v45, v45
	v_fma_f32 v19, v44, v20, v19
	v_fma_f32 v19, v45, v45, v19
	v_add_f32_e32 v20, v18, v19
	v_sub_f32_e32 v18, v20, v18
	v_sub_f32_e32 v21, v19, v18
	v_fma_f32 v18, v44, s29, v31
	v_fma_f32 v18, v44, v18, s30
	v_fma_f32 v18, v44, v18, s31
	v_fma_f32 v31, v44, v18, s33
	v_mul_f32_e32 v18, 0xc4067dd3, v10
	v_fma_f32 v46, v16, v8, v18
	v_mul_f32_e32 v16, 0xc050aa65, v11
	v_fma_f32 v47, v23, v8, v16
	v_sub_f32_e32 v16, 1.0, v14
	v_sub_f32_e32 v16, v16, v15
	v_sub_f32_e32 v16, v16, v5
	v_sub_f32_e32 v16, v16, v6
	v_sub_f32_e32 v23, v16, v7
	v_mul_f32_e32 v16, 0xc3a42dda, v14
	v_fma_f32 v48, v17, v23, v16
	v_mul_f32_e32 v16, v17, v7
	s_mov_b32 s0, 0x43a42dda
	v_fma_f32 v49, v6, s0, -v16
	v_sub_f32_e32 v16, v29, v33
	v_sub_f32_e32 v18, v16, v36
	v_sub_f32_e64 v16, -v29, v35
	v_sub_f32_e32 v16, v16, v46
	v_cvt_f64_f32_e32 v[16:17], v16
	v_sub_f32_e32 v18, v18, v47
	s_mov_b32 s9, 0x3f50624d
	s_mov_b32 s8, 0xd2f1a9fc
	v_mul_f64 v[16:17], v[16:17], s[8:9]
	v_sub_f32_e32 v19, v49, v48
	v_fma_f32 v18, v2, v19, v18
	v_cvt_f64_f32_e32 v[18:19], v18
	v_mul_f32_e32 v50, v31, v20
	v_fma_f32 v20, v20, v31, -v50
	v_fma_f32 v31, v21, v31, v20
	v_mul_f64 v[18:19], v[18:19], s[8:9]
	v_cvt_f32_f64_e32 v16, v[16:17]
	v_mul_f32_e32 v17, 0xbaaa64c3, v9
	v_fma_f32 v51, v24, v8, v17
	v_mul_f32_e32 v17, 0xc00ccccd, v15
	v_fma_f32 v52, v25, v23, v17
	v_mul_f32_e32 v17, v25, v7
	s_mov_b32 s0, 0x3b102de0
	v_fma_f32 v53, v5, s0, -v17
	v_sub_f32_e32 v17, v33, v1
	v_sub_f32_e32 v17, v17, v51
	v_sub_f32_e32 v20, v53, v52
	v_fma_f32 v17, v2, v20, v17
	v_cvt_f64_f32_e32 v[20:21], v17
	v_sub_f32_e32 v17, v35, v34
	v_add_f32_e32 v23, v42, v41
	v_sub_f32_e32 v24, v23, v42
	v_sub_f32_e32 v24, v41, v24
	v_add_f32_e32 v25, v39, v23
	v_sub_f32_e32 v35, v25, v39
	v_sub_f32_e32 v23, v23, v35
	v_add_f32_e32 v24, v40, v24
	v_cvt_i32_f32_e32 v35, v38
	v_add_f32_e32 v23, v23, v24
	v_add_f32_e32 v23, v25, v23
	v_add_f32_e32 v23, 1.0, v23
	v_ldexp_f32 v23, v23, v35
	v_add_f32_e32 v24, v50, v31
	v_sub_f32_e32 v25, v24, v50
	v_sub_f32_e32 v25, v31, v25
	v_add_f32_e32 v31, v44, v24
	v_sub_f32_e32 v35, v31, v44
	v_sub_f32_e32 v24, v24, v35
	v_add_f32_e32 v25, v45, v25
	v_cvt_i32_f32_e32 v35, v43
	v_add_f32_e32 v24, v24, v25
	v_add_f32_e32 v24, v31, v24
	v_add_f32_e32 v24, 1.0, v24
	v_ldexp_f32 v24, v24, v35
	v_cmp_nlt_f32_e32 vcc, s2, v22
	v_cndmask_b32_e32 v24, v27, v24, vcc
	v_cmp_ngt_f32_e32 vcc, s3, v22
	v_cndmask_b32_e32 v22, 0, v24, vcc
	s_brev_b32 s0, -2
	v_bfrev_b32_e32 v24, 1
	v_cmp_gt_f32_e32 vcc, 0, v37
	v_cndmask_b32_e32 v24, 0, v24, vcc
	v_bfi_b32 v22, s0, v22, v24
	v_bfi_b32 v24, s0, 0, v37
	v_cmp_eq_f32_e32 vcc, 0, v37
	v_cndmask_b32_e32 v31, v22, v24, vcc
	v_cmp_gt_f32_e64 s[0:1], s3, v30
	v_cmp_nlt_f32_e64 s[2:3], s2, v30
	v_cndmask_b32_e64 v22, v27, v23, s[2:3]
	s_or_b64 s[0:1], vcc, s[0:1]
	v_cndmask_b32_e64 v22, v22, 0, s[0:1]
	s_mov_b32 s10, 0x41380000
	v_mul_f32_e32 v4, 0x3fdc28f6, v4
	v_mul_f32_e32 v30, v4, v5
	v_fma_f32 v35, v2, v5, s10
	v_div_scale_f32 v38, s[0:1], v35, v35, v30
	v_cmp_class_f32_e64 vcc, v37, s6
	v_cndmask_b32_e32 v22, v22, v27, vcc
	v_cmp_u_f32_e64 s[0:1], v37, v37
	v_cndmask_b32_e64 v22, |v22|, v37, s[0:1]
	v_div_scale_f32 v39, vcc, v30, v35, v30
	v_cvt_f64_f32_e32 v[22:23], v22
	v_cvt_f64_f32_e32 v[24:25], v17
	s_mov_b32 s3, 0x3f7e4f76
	s_mov_b32 s2, 0x5fd8adac
	v_mul_f64 v[22:23], v[22:23], s[2:3]
	v_cvt_f32_f64_e32 v17, v[18:19]
	v_mul_f64 v[18:19], v[20:21], s[8:9]
	v_mul_f64 v[20:21], v[24:25], s[8:9]
	v_cvt_f64_f32_e32 v[24:25], v37
	v_rcp_f32_e32 v40, v38
	s_mov_b32 s3, 0x3fac28f5
	s_mov_b32 s2, 0xc28f5c29
	v_fma_f64 v[22:23], v[24:25], s[2:3], v[22:23]
	v_fma_f32 v24, -v38, v40, 1.0
	v_fma_f32 v24, v24, v40, v40
	v_mul_f32_e32 v25, v39, v24
	v_fma_f32 v40, -v38, v25, v39
	v_fma_f32 v25, v40, v24, v25
	v_fma_f32 v38, -v38, v25, v39
	v_div_fmas_f32 v38, v38, v24, v25
	v_mov_b32_e32 v24, 0xff800000
	v_cmp_class_f32_e64 vcc, v37, 4
	v_cndmask_b32_e32 v24, v31, v24, vcc
	s_movk_i32 s2, 0x200
	v_cmp_class_f32_e64 vcc, v37, s2
	v_cndmask_b32_e32 v24, v24, v27, vcc
	v_cndmask_b32_e64 v24, v24, v37, s[0:1]
	v_cvt_f64_f32_e32 v[24:25], v24
	v_cvt_f32_f64_e32 v18, v[18:19]
	s_mov_b32 s1, 0x3f8eb851
	s_mov_b32 s0, 0xeb851eb8
	v_fma_f64 v[22:23], v[24:25], s[0:1], v[22:23]
	v_cvt_f32_f64_e32 v19, v[20:21]
	s_add_u32 s0, s26, 0x130
	v_mul_f32_e32 v24, v4, v6
	v_fma_f32 v25, v2, v6, s10
	v_div_scale_f32 v27, s[2:3], v25, v25, v24
	s_addc_u32 s1, s27, 0
	v_cvt_f32_f64_e32 v22, v[22:23]
	v_mov_b32_e32 v21, s1
	v_mov_b32_e32 v20, s0
	flat_store_dwordx4 v[20:21], v[16:19]
	s_nop 0
	v_div_fixup_f32 v16, v38, v35, v30
	v_fma_f32 v16, v15, v22, -v16
	v_mul_f32_e32 v13, s7, v13
	v_div_scale_f32 v17, vcc, v24, v25, v24
	v_fma_f32 v20, v12, v32, v13
	v_mul_f32_e32 v12, 0xc0566666, v15
	v_fma_f32 v21, v14, v32, v12
	v_mul_f32_e32 v12, 0xbd783e10, v11
	v_mul_f32_e32 v13, v4, v7
	v_fma_f32 v14, v2, v7, s10
	v_rcp_f32_e32 v4, v27
	v_div_scale_f32 v7, s[0:1], v14, v14, v13
	v_fma_f32 v22, v10, v28, v12
	v_sub_f32_e32 v3, v3, v8
	v_fma_f32 v12, -v27, v4, 1.0
	v_fma_f32 v4, v12, v4, v4
	v_div_scale_f32 v12, s[0:1], v13, v14, v13
	v_mul_f32_e32 v15, v17, v4
	v_fma_f32 v18, -v27, v15, v17
	v_fma_f32 v15, v18, v4, v15
	v_fma_f32 v17, -v27, v15, v17
	v_div_fmas_f32 v4, v17, v4, v15
	v_sub_f32_e32 v3, v3, v10
	v_sub_f32_e32 v3, v3, v11
	v_mul_f32_e32 v10, 0xbb82a766, v9
	v_rcp_f32_e32 v15, v7
	v_fma_f32 v23, v11, v32, v10
	v_sub_f32_e32 v17, v3, v9
	v_add_f32_e32 v18, v26, v26
	v_fma_f32 v3, -v7, v15, 1.0
	v_fma_f32 v3, v3, v15, v15
	v_mul_f32_e32 v9, v12, v3
	v_fma_f32 v10, -v7, v9, v12
	v_fma_f32 v9, v10, v3, v9
	v_fma_f32 v7, -v7, v9, v12
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v15, v7, v3, v9
	v_div_fixup_f32 v19, v4, v25, v24
	v_add_f32_e32 v3, v36, v34
	v_sub_f32_e32 v3, v3, v20
	v_cvt_f64_f32_e32 v[3:4], v3
	v_add_f32_e32 v1, v1, v20
	v_cvt_f64_f32_e32 v[9:10], v1
	v_sub_f32_e32 v1, v48, v21
	v_add_f32_e32 v1, v19, v1
	v_cvt_f64_f32_e32 v[11:12], v1
	v_fma_f32 v24, v17, v18, -v8
	v_mul_f64 v[3:4], v[3:4], s[8:9]
	v_mul_f64 v[7:8], v[9:10], s[8:9]
	v_mul_f64 v[9:10], v[11:12], s[8:9]
	v_mul_f32_e32 v1, v6, v32
	s_mov_b32 s0, 0x3b5b8bac
	v_fma_f32 v25, v5, s0, -v1
	v_add_f32_e32 v26, v2, v2
	v_div_fixup_f32 v11, v15, v14, v13
	v_cvt_f32_f64_e32 v1, v[3:4]
	v_cvt_f32_f64_e32 v2, v[7:8]
	v_cvt_f32_f64_e32 v3, v[9:10]
	v_add_f32_e32 v4, v52, v21
	v_sub_f32_e32 v4, v4, v16
	v_cvt_f64_f32_e32 v[4:5], v4
	v_sub_f32_e32 v6, v25, v49
	v_sub_f32_e32 v8, v6, v19
	v_sub_f32_e32 v6, v16, v53
	v_sub_f32_e32 v6, v6, v25
	v_cvt_f64_f32_e32 v[6:7], v6
	v_cvt_f64_f32_e32 v[8:9], v8
	v_add_f32_e32 v10, v53, v49
	v_sub_f32_e32 v10, v10, v11
	v_cvt_f64_f32_e32 v[10:11], v10
	v_mul_f64 v[4:5], v[4:5], s[8:9]
	v_mul_f64 v[6:7], v[6:7], s[8:9]
	v_mul_f64 v[8:9], v[8:9], s[8:9]
	v_mul_f64 v[10:11], v[10:11], s[8:9]
	v_sub_f32_e32 v12, v24, v46
	v_sub_f32_e32 v12, v12, v47
	v_sub_f32_e32 v12, v12, v51
	v_cvt_f64_f32_e32 v[12:13], v12
	v_sub_f32_e32 v14, v46, v22
	v_cvt_f64_f32_e32 v[14:15], v14
	v_add_f32_e32 v16, v47, v22
	v_sub_f32_e32 v16, v16, v23
	v_cvt_f64_f32_e32 v[16:17], v16
	v_add_f32_e32 v18, v51, v23
	v_cvt_f64_f32_e32 v[18:19], v18
	v_mul_f64 v[12:13], v[12:13], s[8:9]
	v_mul_f64 v[14:15], v[14:15], s[8:9]
	v_mul_f64 v[16:17], v[16:17], s[8:9]
	v_mul_f64 v[18:19], v[18:19], s[8:9]
	v_cvt_f32_f64_e32 v4, v[4:5]
	v_cvt_f32_f64_e32 v5, v[6:7]
	v_cvt_f32_f64_e32 v6, v[8:9]
	v_cvt_f32_f64_e32 v7, v[10:11]
	v_cvt_f32_f64_e32 v8, v[12:13]
	v_cvt_f32_f64_e32 v9, v[14:15]
	v_cvt_f32_f64_e32 v10, v[16:17]
	v_cvt_f32_f64_e32 v11, v[18:19]
	v_sub_f32_e32 v12, v25, v21
	s_add_u32 s0, s26, 0x140
	s_addc_u32 s1, s27, 0
	v_add_f32_e32 v13, v33, v29
	v_add_f32_e32 v13, v34, v13
	v_add_f32_e32 v13, v20, v13
	v_add_f32_e32 v13, v24, v13
	v_add_f32_e32 v13, v22, v13
	v_add_f32_e32 v13, v23, v13
	v_add_f32_e32 v13, v13, v13
	v_fma_f32 v12, v26, v12, -v13
	v_cvt_f64_f32_e32 v[12:13], v12
	v_mov_b32_e32 v15, s1
	v_mov_b32_e32 v14, s0
	flat_store_dwordx4 v[14:15], v[1:4]
	s_add_u32 s0, s26, 0x150
	v_mul_f64 v[1:2], v[12:13], s[8:9]
	s_addc_u32 s1, s27, 0
	v_mov_b32_e32 v4, s1
	v_mov_b32_e32 v3, s0
	flat_store_dwordx4 v[3:4], v[5:8]
	s_add_u32 s0, s26, 0x160
	s_addc_u32 s1, s27, 0
	v_mov_b32_e32 v4, s1
	v_mov_b32_e32 v3, s0
	flat_store_dwordx3 v[3:4], v[9:11]
	v_cvt_f32_f64_e32 v3, v[1:2]
	s_add_u32 s0, s26, 8
	s_addc_u32 s1, s27, 0
	v_mov_b32_e32 v2, s1
	v_mov_b32_e32 v1, s0
	flat_store_dword v[1:2], v3
BB0_15:                                 ; %Flow168
	s_or_b64 exec, exec, s[14:15]
	s_mov_b64 s[0:1], 0
BB0_16:                                 ; %Flow179
	s_andn2_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz BB0_31
; %bb.17:
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB0_31
; %bb.18:
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s12, 60
	s_addc_u32 s1, s13, 0
	v_mov_b32_e32 v0, s0
	v_mov_b32_e32 v1, s1
	flat_load_dword v12, v[0:1]
	s_add_u32 s0, s24, 48
	s_addc_u32 s1, s25, 0
	v_mov_b32_e32 v0, s0
	v_mov_b32_e32 v1, s1
	s_add_u32 s0, s24, 32
	s_addc_u32 s1, s25, 0
	v_mov_b32_e32 v3, s1
	v_mov_b32_e32 v2, s0
	flat_load_dwordx4 v[19:22], v[0:1]
	flat_load_dwordx4 v[8:11], v[2:3]
	s_add_u32 s0, s24, 16
	s_addc_u32 s1, s25, 0
	v_mov_b32_e32 v14, s1
	v_mov_b32_e32 v13, s0
	v_mov_b32_e32 v15, s24
	v_mov_b32_e32 v16, s25
	flat_load_dwordx4 v[0:3], v[13:14]
	flat_load_dwordx4 v[4:7], v[15:16]
	s_add_u32 s0, s24, 64
	s_addc_u32 s1, s25, 0
	s_add_u32 s2, s24, 0x50
	s_addc_u32 s3, s25, 0
	v_mov_b32_e32 v14, s3
	v_mov_b32_e32 v13, s2
	s_add_u32 s2, s24, 0x58
	s_addc_u32 s3, s25, 0
	s_add_u32 s6, s24, 0x88
	s_addc_u32 s7, s25, 0
	s_add_u32 s8, s24, 0x78
	s_addc_u32 s9, s25, 0
	s_add_u32 s10, s24, 0x68
	s_addc_u32 s11, s25, 0
	s_add_u32 s12, s24, 0x98
	s_addc_u32 s13, s25, 0
	v_mov_b32_e32 v18, s13
	v_mov_b32_e32 v17, s12
	s_mov_b32 s12, 0xc2200000
	v_mov_b32_e32 v16, s1
	v_mov_b32_e32 v15, s0
	flat_load_dword v33, v[13:14]
	flat_load_dwordx4 v[46:49], v[15:16]
	v_mov_b32_e32 v30, s3
	v_mov_b32_e32 v29, s2
	v_mov_b32_e32 v24, s7
	v_mov_b32_e32 v23, s6
	v_mov_b32_e32 v32, s9
	v_mov_b32_e32 v31, s8
	flat_load_dwordx4 v[13:16], v[23:24]
	flat_load_dwordx4 v[25:28], v[31:32]
	v_mov_b32_e32 v32, s11
	v_mov_b32_e32 v31, s10
	flat_load_dwordx2 v[17:18], v[17:18]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_nle_f32_e32 vcc, s12, v17
	v_cvt_f64_f32_e32 v[23:24], v17
	s_and_b64 vcc, exec, vcc
	flat_load_dwordx4 v[38:41], v[31:32]
	flat_load_dwordx4 v[42:45], v[29:30]
	s_cbranch_vccnz BB0_20
; %bb.19:
	s_mov_b32 s1, 0x402551eb
	s_mov_b32 s0, 0x851eb852
	v_add_f64 v[29:30], v[23:24], s[0:1]
	s_mov_b32 s1, 0xc0263333
	s_mov_b32 s0, 0x33333333
	v_div_scale_f64 v[31:32], s[2:3], s[0:1], s[0:1], v[29:30]
	v_rcp_f64_e32 v[34:35], v[31:32]
	v_fma_f64 v[36:37], -v[31:32], v[34:35], 1.0
	v_fma_f64 v[34:35], v[34:35], v[36:37], v[34:35]
	v_div_scale_f64 v[36:37], vcc, v[29:30], s[0:1], v[29:30]
	v_fma_f64 v[50:51], -v[31:32], v[34:35], 1.0
	v_fma_f64 v[34:35], v[34:35], v[50:51], v[34:35]
	v_mul_f64 v[50:51], v[36:37], v[34:35]
	v_fma_f64 v[31:32], -v[31:32], v[50:51], v[36:37]
	v_div_fmas_f64 v[31:32], v[31:32], v[34:35], v[50:51]
	v_div_fixup_f64 v[29:30], v[31:32], s[0:1], v[29:30]
	s_mov_b32 s29, 0x3ff71547
	s_mov_b32 s28, 0x652b82fe
	v_mul_f64 v[31:32], v[29:30], s[28:29]
	v_rndne_f64_e32 v[31:32], v[31:32]
	s_mov_b32 s23, 0xbfe62e42
	s_mov_b32 s22, 0xfefa3000
	s_mov_b32 s25, 0xbd53de6a
	s_mov_b32 s24, 0xf278ece6
	v_fma_f64 v[34:35], v[31:32], s[22:23], v[29:30]
	v_mul_f64 v[36:37], v[31:32], s[24:25]
	v_add_f64 v[50:51], v[34:35], v[36:37]
	s_mov_b32 s3, 0x3e928af3
	s_mov_b32 s2, 0xfca7ab0c
	s_mov_b32 s21, 0x3e5ade15
	s_mov_b32 s20, 0x6a5dcb37
	v_mov_b32_e32 v55, s3
	v_mov_b32_e32 v54, s2
	v_fma_f64 v[52:53], v[50:51], s[20:21], v[54:55]
	s_mov_b32 s19, 0x3ec71dee
	s_mov_b32 s18, 0x623fde64
	v_fma_f64 v[52:53], v[50:51], v[52:53], s[18:19]
	s_mov_b32 s17, 0x3efa0199
	s_mov_b32 s16, 0x7c89e6b0
	v_fma_f64 v[52:53], v[50:51], v[52:53], s[16:17]
	s_mov_b32 s15, 0x3f2a01a0
	s_mov_b32 s14, 0x14761f6e
	v_add_f64 v[34:35], v[34:35], -v[50:51]
	v_fma_f64 v[52:53], v[50:51], v[52:53], s[14:15]
	s_mov_b32 s3, 0x3f56c16c
	s_mov_b32 s2, 0x1852b7b0
	v_mul_f64 v[56:57], v[50:51], v[50:51]
	v_add_f64 v[34:35], v[34:35], v[36:37]
	v_fma_f64 v[36:37], v[50:51], v[52:53], s[2:3]
	s_mov_b32 s9, 0x3f811111
	s_mov_b32 s8, 0x11122322
	v_fma_f64 v[52:53], v[50:51], v[50:51], -v[56:57]
	v_add_f64 v[58:59], v[34:35], v[34:35]
	v_fma_f64 v[36:37], v[50:51], v[36:37], s[8:9]
	s_mov_b32 s13, 0x3fa55555
	s_mov_b32 s12, 0x555502a1
	v_fma_f64 v[52:53], v[50:51], v[58:59], v[52:53]
	v_fma_f64 v[36:37], v[50:51], v[36:37], s[12:13]
	s_mov_b32 s11, 0x3fc55555
	s_mov_b32 s10, 0x55555511
	v_fma_f64 v[52:53], v[34:35], v[34:35], v[52:53]
	v_fma_f64 v[36:37], v[50:51], v[36:37], s[10:11]
	s_mov_b32 s7, 0x3fe00000
	s_mov_b32 s6, 11
	v_add_f64 v[58:59], v[56:57], v[52:53]
	v_fma_f64 v[36:37], v[50:51], v[36:37], s[6:7]
	s_mov_b32 s31, 0xbe910318
	s_mov_b32 s30, 0xca62757c
	v_mul_f64 v[60:61], v[23:24], s[30:31]
	v_add_f64 v[56:57], v[58:59], -v[56:57]
	v_mul_f64 v[62:63], v[58:59], v[36:37]
	v_mul_f64 v[64:65], v[60:61], s[28:29]
	v_add_f64 v[52:53], v[52:53], -v[56:57]
	v_fma_f64 v[56:57], v[58:59], v[36:37], -v[62:63]
	v_rndne_f64_e32 v[58:59], v[64:65]
	v_fma_f64 v[36:37], v[52:53], v[36:37], v[56:57]
	v_fma_f64 v[52:53], v[58:59], s[22:23], v[60:61]
	v_mul_f64 v[56:57], v[58:59], s[24:25]
	v_add_f64 v[64:65], v[62:63], v[36:37]
	v_add_f64 v[66:67], v[52:53], v[56:57]
	v_add_f64 v[68:69], v[50:51], v[64:65]
	v_add_f64 v[62:63], v[64:65], -v[62:63]
	v_fma_f64 v[70:71], v[66:67], s[20:21], v[54:55]
	v_add_f64 v[72:73], v[68:69], -v[50:51]
	v_add_f64 v[36:37], v[36:37], -v[62:63]
	v_add_f32_e32 v50, 0x42000000, v17
	v_cvt_f64_f32_e32 v[50:51], v50
	v_fma_f64 v[62:63], v[66:67], v[70:71], s[18:19]
	s_mov_b32 s31, 0xbfb99999
	s_mov_b32 s30, 0x9999999a
	v_mul_f64 v[50:51], v[50:51], s[30:31]
	v_add_f64 v[64:65], v[64:65], -v[72:73]
	v_add_f64 v[34:35], v[34:35], v[36:37]
	v_fma_f64 v[36:37], v[66:67], v[62:63], s[16:17]
	v_mul_f64 v[62:63], v[50:51], s[28:29]
	v_add_f64 v[34:35], v[64:65], v[34:35]
	v_add_f64 v[64:65], v[52:53], -v[66:67]
	v_fma_f64 v[36:37], v[66:67], v[36:37], s[14:15]
	v_rndne_f64_e32 v[52:53], v[62:63]
	v_add_f64 v[34:35], v[68:69], v[34:35]
	v_mul_f64 v[62:63], v[66:67], v[66:67]
	v_add_f64 v[56:57], v[64:65], v[56:57]
	v_fma_f64 v[36:37], v[66:67], v[36:37], s[2:3]
	v_fma_f64 v[64:65], v[52:53], s[22:23], v[50:51]
	v_mul_f64 v[68:69], v[52:53], s[24:25]
	v_add_f64 v[34:35], v[34:35], 1.0
	v_fma_f64 v[70:71], v[66:67], v[66:67], -v[62:63]
	v_add_f64 v[72:73], v[56:57], v[56:57]
	v_fma_f64 v[36:37], v[66:67], v[36:37], s[8:9]
	v_cvt_i32_f64_e32 v31, v[31:32]
	v_ldexp_f64 v[31:32], v[34:35], v31
	v_add_f64 v[34:35], v[64:65], v[68:69]
	v_fma_f64 v[70:71], v[66:67], v[72:73], v[70:71]
	v_fma_f64 v[36:37], v[66:67], v[36:37], s[12:13]
	v_add_f64 v[31:32], v[31:32], 1.0
	v_fma_f64 v[54:55], v[34:35], s[20:21], v[54:55]
	v_fma_f64 v[70:71], v[56:57], v[56:57], v[70:71]
	v_fma_f64 v[36:37], v[66:67], v[36:37], s[10:11]
	s_mov_b32 s21, 0x3fc0a3d7
	s_mov_b32 s20, 0xa3d70a4
	v_mul_f64 v[31:32], v[31:32], s[20:21]
	v_fma_f64 v[54:55], v[34:35], v[54:55], s[18:19]
	v_add_f64 v[72:73], v[62:63], v[70:71]
	v_fma_f64 v[36:37], v[66:67], v[36:37], s[6:7]
	v_div_scale_f64 v[74:75], s[18:19], v[31:32], v[31:32], 1.0
	v_fma_f64 v[54:55], v[34:35], v[54:55], s[16:17]
	v_add_f64 v[62:63], v[72:73], -v[62:63]
	v_mul_f64 v[76:77], v[72:73], v[36:37]
	v_add_f64 v[64:65], v[64:65], -v[34:35]
	v_fma_f64 v[54:55], v[34:35], v[54:55], s[14:15]
	v_add_f64 v[62:63], v[70:71], -v[62:63]
	v_fma_f64 v[70:71], v[72:73], v[36:37], -v[76:77]
	v_rcp_f64_e32 v[72:73], v[74:75]
	v_mul_f64 v[78:79], v[34:35], v[34:35]
	v_add_f64 v[64:65], v[64:65], v[68:69]
	v_fma_f64 v[54:55], v[34:35], v[54:55], s[2:3]
	v_fma_f64 v[36:37], v[62:63], v[36:37], v[70:71]
	v_fma_f64 v[62:63], v[34:35], v[34:35], -v[78:79]
	v_add_f64 v[68:69], v[64:65], v[64:65]
	v_fma_f64 v[54:55], v[34:35], v[54:55], s[8:9]
	v_add_f64 v[70:71], v[76:77], v[36:37]
	v_fma_f64 v[80:81], -v[74:75], v[72:73], 1.0
	v_fma_f64 v[62:63], v[34:35], v[68:69], v[62:63]
	v_fma_f64 v[54:55], v[34:35], v[54:55], s[12:13]
	v_add_f64 v[68:69], v[70:71], -v[76:77]
	v_add_f64 v[76:77], v[66:67], v[70:71]
	v_fma_f64 v[72:73], v[72:73], v[80:81], v[72:73]
	v_fma_f64 v[62:63], v[64:65], v[64:65], v[62:63]
	v_fma_f64 v[54:55], v[34:35], v[54:55], s[10:11]
	v_add_f64 v[36:37], v[36:37], -v[68:69]
	v_add_f64 v[66:67], v[76:77], -v[66:67]
	v_div_scale_f64 v[68:69], vcc, 1.0, v[31:32], 1.0
	v_fma_f64 v[80:81], -v[74:75], v[72:73], 1.0
	v_add_f64 v[82:83], v[78:79], v[62:63]
	v_fma_f64 v[54:55], v[34:35], v[54:55], s[6:7]
	v_add_f64 v[66:67], v[70:71], -v[66:67]
	v_add_f64 v[36:37], v[56:57], v[36:37]
	v_fma_f64 v[56:57], v[72:73], v[80:81], v[72:73]
	v_add_f64 v[70:71], v[82:83], -v[78:79]
	v_mul_f64 v[72:73], v[82:83], v[54:55]
	v_add_f64 v[36:37], v[66:67], v[36:37]
	v_mul_f64 v[66:67], v[68:69], v[56:57]
	v_add_f64 v[62:63], v[62:63], -v[70:71]
	v_fma_f64 v[70:71], v[82:83], v[54:55], -v[72:73]
	v_add_f64 v[36:37], v[76:77], v[36:37]
	v_fma_f64 v[68:69], -v[74:75], v[66:67], v[68:69]
	v_fma_f64 v[62:63], v[62:63], v[54:55], v[70:71]
	v_add_f64 v[36:37], v[36:37], 1.0
	v_div_fmas_f64 v[56:57], v[68:69], v[56:57], v[66:67]
	v_cvt_i32_f64_e32 v54, v[58:59]
	v_add_f64 v[58:59], v[72:73], v[62:63]
	v_ldexp_f64 v[36:37], v[36:37], v54
	s_mov_b32 s3, 0x40900000
	s_mov_b32 s2, 0
	s_mov_b32 s7, 0xc090cc00
	v_mov_b32_e32 v68, 0x401ec4ec
	v_add_f64 v[54:55], v[34:35], v[58:59]
	v_add_f64 v[66:67], v[58:59], -v[72:73]
	s_mov_b32 s1, 0x3fd33333
	v_mul_f64 v[36:37], v[36:37], s[0:1]
	v_mov_b32_e32 v69, 0x7ff00000
	v_div_fixup_f64 v[31:32], v[56:57], v[31:32], 1.0
	v_cmp_nlt_f64_e32 vcc, s[2:3], v[29:30]
	s_mov_b32 s6, s2
	v_add_f64 v[34:35], v[54:55], -v[34:35]
	v_add_f64 v[62:63], v[62:63], -v[66:67]
	v_cmp_nlt_f64_e64 s[0:1], s[2:3], v[60:61]
	v_cndmask_b32_e64 v37, v69, v37, s[0:1]
	v_cmp_ngt_f64_e64 s[2:3], s[6:7], v[60:61]
	v_cndmask_b32_e32 v31, 0, v31, vcc
	v_cndmask_b32_e32 v32, 0, v32, vcc
	v_cmp_ngt_f64_e32 vcc, s[6:7], v[29:30]
	v_add_f64 v[57:58], v[58:59], -v[34:35]
	v_add_f64 v[72:73], v[64:65], v[62:63]
	v_mov_b32_e32 v29, 0x4ec4ec4e
	v_cndmask_b32_e64 v61, 0, v37, s[2:3]
	s_and_b64 s[0:1], s[2:3], s[0:1]
	v_cndmask_b32_e64 v60, 0, v36, s[0:1]
	v_cndmask_b32_e32 v36, v68, v32, vcc
	v_cndmask_b32_e32 v35, v29, v31, vcc
	s_mov_b64 s[0:1], 0
	s_branch BB0_21
BB0_20:
	s_mov_b64 s[0:1], -1
                                        ; implicit-def: $vgpr35_vgpr36
                                        ; implicit-def: $vgpr60_vgpr61
                                        ; implicit-def: $vgpr50_vgpr51
                                        ; implicit-def: $vgpr52_vgpr53
                                        ; implicit-def: $vgpr54_vgpr55
                                        ; implicit-def: $vgpr57_vgpr58
                                        ; implicit-def: $vgpr72_vgpr73
BB0_21:                                 ; %Flow176
	s_load_dword s10, s[4:5], 0x0
	s_mov_b32 s6, 0
	s_andn2_b64 vcc, exec, s[0:1]
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v31, v32
	s_cbranch_vccnz BB0_23
; %bb.22:
	v_add_f32_e32 v29, 0x42a00000, v17
	v_cvt_f64_f32_e32 v[29:30], v29
	s_mov_b32 s1, 0xc01b3333
	s_mov_b32 s0, 0x33333333
	v_div_scale_f64 v[31:32], s[2:3], s[0:1], s[0:1], v[29:30]
	v_rcp_f64_e32 v[34:35], v[31:32]
	v_fma_f64 v[36:37], -v[31:32], v[34:35], 1.0
	v_fma_f64 v[34:35], v[34:35], v[36:37], v[34:35]
	v_fma_f64 v[36:37], -v[31:32], v[34:35], 1.0
	v_fma_f64 v[34:35], v[34:35], v[36:37], v[34:35]
	v_div_scale_f64 v[36:37], vcc, v[29:30], s[0:1], v[29:30]
	v_mul_f64 v[50:51], v[36:37], v[34:35]
	v_fma_f64 v[31:32], -v[31:32], v[50:51], v[36:37]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[31:32], v[31:32], v[34:35], v[50:51]
	v_div_fixup_f64 v[31:32], v[31:32], s[0:1], v[29:30]
	s_mov_b32 s31, 0x3ff71547
	s_mov_b32 s30, 0x652b82fe
	v_mul_f64 v[29:30], v[31:32], s[30:31]
	v_rndne_f64_e32 v[34:35], v[29:30]
	s_mov_b32 s25, 0xbfe62e42
	s_mov_b32 s24, 0xfefa3000
	v_fma_f64 v[29:30], v[34:35], s[24:25], v[31:32]
	s_mov_b32 s29, 0xbd53de6a
	s_mov_b32 s28, 0xf278ece6
	v_mul_f64 v[36:37], v[34:35], s[28:29]
	v_add_f64 v[50:51], v[29:30], v[36:37]
	v_add_f64 v[29:30], v[29:30], -v[50:51]
	v_add_f64 v[36:37], v[29:30], v[36:37]
	s_mov_b32 s1, 0x3e928af3
	s_mov_b32 s0, 0xfca7ab0c
	s_mov_b32 s21, 0x3e5ade15
	s_mov_b32 s20, 0x6a5dcb37
	v_mov_b32_e32 v30, s1
	v_mov_b32_e32 v29, s0
	v_fma_f64 v[52:53], v[50:51], s[20:21], v[29:30]
	s_mov_b32 s17, 0x3ec71dee
	s_mov_b32 s16, 0x623fde64
	v_fma_f64 v[52:53], v[50:51], v[52:53], s[16:17]
	s_mov_b32 s9, 0x3efa0199
	s_mov_b32 s8, 0x7c89e6b0
	v_fma_f64 v[52:53], v[50:51], v[52:53], s[8:9]
	s_mov_b32 s3, 0x3f2a01a0
	s_mov_b32 s2, 0x14761f6e
	v_fma_f64 v[52:53], v[50:51], v[52:53], s[2:3]
	s_mov_b32 s5, 0x3f56c16c
	s_mov_b32 s4, 0x1852b7b0
	v_fma_f64 v[52:53], v[50:51], v[52:53], s[4:5]
	s_mov_b32 s13, 0x3f811111
	s_mov_b32 s12, 0x11122322
	v_fma_f64 v[52:53], v[50:51], v[52:53], s[12:13]
	s_mov_b32 s15, 0x3fa55555
	s_mov_b32 s14, 0x555502a1
	v_fma_f64 v[52:53], v[50:51], v[52:53], s[14:15]
	s_mov_b32 s19, 0x3fc55555
	s_mov_b32 s18, 0x55555511
	v_fma_f64 v[52:53], v[50:51], v[52:53], s[18:19]
	s_mov_b32 s23, 0x3fe00000
	s_mov_b32 s22, 11
	v_fma_f64 v[52:53], v[50:51], v[52:53], s[22:23]
	v_mul_f64 v[54:55], v[50:51], v[50:51]
	v_fma_f64 v[56:57], v[50:51], v[50:51], -v[54:55]
	v_add_f64 v[58:59], v[36:37], v[36:37]
	v_fma_f64 v[56:57], v[50:51], v[58:59], v[56:57]
	v_fma_f64 v[56:57], v[36:37], v[36:37], v[56:57]
	v_add_f64 v[58:59], v[54:55], v[56:57]
	v_add_f64 v[54:55], v[58:59], -v[54:55]
	v_add_f64 v[54:55], v[56:57], -v[54:55]
	v_mul_f64 v[56:57], v[58:59], v[52:53]
	v_fma_f64 v[58:59], v[58:59], v[52:53], -v[56:57]
	v_fma_f64 v[52:53], v[54:55], v[52:53], v[58:59]
	v_add_f64 v[54:55], v[56:57], v[52:53]
	v_add_f64 v[56:57], v[54:55], -v[56:57]
	v_add_f64 v[52:53], v[52:53], -v[56:57]
	v_add_f64 v[56:57], v[50:51], v[54:55]
	v_add_f64 v[50:51], v[56:57], -v[50:51]
	v_add_f64 v[50:51], v[54:55], -v[50:51]
	v_add_f64 v[36:37], v[36:37], v[52:53]
	v_add_f64 v[36:37], v[50:51], v[36:37]
	v_add_f64 v[36:37], v[56:57], v[36:37]
	v_add_f64 v[36:37], v[36:37], 1.0
	v_cvt_i32_f64_e32 v34, v[34:35]
	v_ldexp_f64 v[34:35], v[36:37], v34
	s_mov_b32 s1, 0x3fc147ae
	s_mov_b32 s0, 0x147ae148
	v_mul_f64 v[34:35], v[34:35], s[0:1]
	s_mov_b32 s7, 0x40900000
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[31:32]
	v_mov_b32_e32 v68, 0x7ff00000
	v_cndmask_b32_e32 v35, v68, v35, vcc
	s_mov_b32 s35, 0xc090cc00
	s_mov_b32 s34, s6
	v_cmp_ngt_f64_e64 s[0:1], s[34:35], v[31:32]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v31, 0, v34, vcc
	v_cndmask_b32_e64 v32, 0, v35, s[0:1]
	v_cvt_f32_f64_e32 v31, v[31:32]
	s_mov_b32 s1, 0x3fb43958
	s_mov_b32 s0, 0x10624dd3
	v_mul_f64 v[34:35], v[23:24], s[0:1]
	v_mul_f64 v[36:37], v[34:35], s[30:31]
	v_rndne_f64_e32 v[36:37], v[36:37]
	v_fma_f64 v[50:51], v[36:37], s[24:25], v[34:35]
	v_mul_f64 v[52:53], v[36:37], s[28:29]
	v_add_f64 v[54:55], v[50:51], v[52:53]
	v_add_f64 v[50:51], v[50:51], -v[54:55]
	v_add_f64 v[50:51], v[50:51], v[52:53]
	v_fma_f64 v[52:53], v[54:55], s[20:21], v[29:30]
	v_fma_f64 v[52:53], v[54:55], v[52:53], s[16:17]
	v_fma_f64 v[52:53], v[54:55], v[52:53], s[8:9]
	v_fma_f64 v[52:53], v[54:55], v[52:53], s[2:3]
	v_fma_f64 v[52:53], v[54:55], v[52:53], s[4:5]
	v_fma_f64 v[52:53], v[54:55], v[52:53], s[12:13]
	v_fma_f64 v[52:53], v[54:55], v[52:53], s[14:15]
	v_fma_f64 v[52:53], v[54:55], v[52:53], s[18:19]
	v_fma_f64 v[52:53], v[54:55], v[52:53], s[22:23]
	v_mul_f64 v[56:57], v[54:55], v[54:55]
	v_fma_f64 v[58:59], v[54:55], v[54:55], -v[56:57]
	v_add_f64 v[60:61], v[50:51], v[50:51]
	v_fma_f64 v[58:59], v[54:55], v[60:61], v[58:59]
	v_fma_f64 v[58:59], v[50:51], v[50:51], v[58:59]
	v_add_f64 v[60:61], v[56:57], v[58:59]
	v_add_f64 v[56:57], v[60:61], -v[56:57]
	v_add_f64 v[56:57], v[58:59], -v[56:57]
	v_mul_f64 v[58:59], v[60:61], v[52:53]
	v_fma_f64 v[60:61], v[60:61], v[52:53], -v[58:59]
	v_fma_f64 v[52:53], v[56:57], v[52:53], v[60:61]
	v_add_f64 v[56:57], v[58:59], v[52:53]
	v_add_f64 v[58:59], v[56:57], -v[58:59]
	v_add_f64 v[52:53], v[52:53], -v[58:59]
	v_add_f64 v[58:59], v[54:55], v[56:57]
	v_add_f64 v[54:55], v[58:59], -v[54:55]
	v_add_f64 v[54:55], v[56:57], -v[54:55]
	v_add_f64 v[50:51], v[50:51], v[52:53]
	v_add_f64 v[50:51], v[54:55], v[50:51]
	v_add_f64 v[50:51], v[58:59], v[50:51]
	v_add_f64 v[50:51], v[50:51], 1.0
	v_cvt_i32_f64_e32 v32, v[36:37]
	v_ldexp_f64 v[36:37], v[50:51], v32
	s_mov_b32 s1, 0x400c7ae1
	s_mov_b32 s0, 0x47ae147b
	v_mul_f64 v[36:37], v[36:37], s[0:1]
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[34:35]
	v_cndmask_b32_e32 v32, v68, v37, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[34:35], v[34:35]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v34, 0, v36, vcc
	v_cndmask_b32_e64 v35, 0, v32, s[0:1]
	s_mov_b32 s1, 0x3fd66666
	s_mov_b32 s0, 0x66666666
	v_mul_f64 v[36:37], v[23:24], s[0:1]
	v_mul_f64 v[50:51], v[36:37], s[30:31]
	v_rndne_f64_e32 v[50:51], v[50:51]
	v_fma_f64 v[52:53], v[50:51], s[24:25], v[36:37]
	v_mul_f64 v[54:55], v[50:51], s[28:29]
	v_add_f64 v[56:57], v[52:53], v[54:55]
	v_add_f64 v[52:53], v[52:53], -v[56:57]
	v_add_f64 v[52:53], v[52:53], v[54:55]
	v_fma_f64 v[54:55], v[56:57], s[20:21], v[29:30]
	v_fma_f64 v[54:55], v[56:57], v[54:55], s[16:17]
	v_fma_f64 v[54:55], v[56:57], v[54:55], s[8:9]
	v_fma_f64 v[54:55], v[56:57], v[54:55], s[2:3]
	v_fma_f64 v[54:55], v[56:57], v[54:55], s[4:5]
	v_fma_f64 v[54:55], v[56:57], v[54:55], s[12:13]
	v_fma_f64 v[54:55], v[56:57], v[54:55], s[14:15]
	v_fma_f64 v[54:55], v[56:57], v[54:55], s[18:19]
	v_fma_f64 v[54:55], v[56:57], v[54:55], s[22:23]
	v_mul_f64 v[58:59], v[56:57], v[56:57]
	v_fma_f64 v[60:61], v[56:57], v[56:57], -v[58:59]
	v_add_f64 v[62:63], v[52:53], v[52:53]
	v_fma_f64 v[60:61], v[56:57], v[62:63], v[60:61]
	v_fma_f64 v[60:61], v[52:53], v[52:53], v[60:61]
	v_add_f64 v[62:63], v[58:59], v[60:61]
	v_add_f64 v[58:59], v[62:63], -v[58:59]
	v_add_f64 v[58:59], v[60:61], -v[58:59]
	v_mul_f64 v[60:61], v[62:63], v[54:55]
	v_fma_f64 v[62:63], v[62:63], v[54:55], -v[60:61]
	v_fma_f64 v[54:55], v[58:59], v[54:55], v[62:63]
	v_add_f64 v[58:59], v[60:61], v[54:55]
	v_add_f64 v[60:61], v[58:59], -v[60:61]
	v_add_f64 v[54:55], v[54:55], -v[60:61]
	v_add_f64 v[60:61], v[56:57], v[58:59]
	v_add_f64 v[56:57], v[60:61], -v[56:57]
	v_add_f64 v[56:57], v[58:59], -v[56:57]
	v_add_f64 v[52:53], v[52:53], v[54:55]
	v_add_f64 v[52:53], v[56:57], v[52:53]
	v_add_f64 v[52:53], v[60:61], v[52:53]
	v_add_f64 v[52:53], v[52:53], 1.0
	v_cvt_i32_f64_e32 v32, v[50:51]
	v_ldexp_f64 v[50:51], v[52:53], v32
	s_mov_b32 s1, 0x4112ebc0
	s_mov_b32 s0, s6
	v_mul_f64 v[50:51], v[50:51], s[0:1]
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[36:37]
	v_cndmask_b32_e32 v32, v68, v51, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[34:35], v[36:37]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v36, 0, v50, vcc
	v_cndmask_b32_e64 v37, 0, v32, s[0:1]
	v_add_f64 v[35:36], v[34:35], v[36:37]
	s_mov_b32 s1, 0x3fcf487f
	s_mov_b32 s0, 0xcb923a2a
	v_mul_f64 v[50:51], v[23:24], s[0:1]
	v_mul_f64 v[52:53], v[50:51], s[30:31]
	v_rndne_f64_e32 v[52:53], v[52:53]
	v_fma_f64 v[54:55], v[52:53], s[24:25], v[50:51]
	v_mul_f64 v[56:57], v[52:53], s[28:29]
	v_add_f64 v[58:59], v[54:55], v[56:57]
	v_add_f64 v[54:55], v[54:55], -v[58:59]
	v_add_f64 v[54:55], v[54:55], v[56:57]
	v_fma_f64 v[56:57], v[58:59], s[20:21], v[29:30]
	v_fma_f64 v[56:57], v[58:59], v[56:57], s[16:17]
	v_fma_f64 v[56:57], v[58:59], v[56:57], s[8:9]
	v_fma_f64 v[56:57], v[58:59], v[56:57], s[2:3]
	v_fma_f64 v[56:57], v[58:59], v[56:57], s[4:5]
	v_fma_f64 v[56:57], v[58:59], v[56:57], s[12:13]
	v_fma_f64 v[56:57], v[58:59], v[56:57], s[14:15]
	v_fma_f64 v[56:57], v[58:59], v[56:57], s[18:19]
	v_fma_f64 v[56:57], v[58:59], v[56:57], s[22:23]
	v_mul_f64 v[60:61], v[58:59], v[58:59]
	v_fma_f64 v[62:63], v[58:59], v[58:59], -v[60:61]
	v_add_f64 v[64:65], v[54:55], v[54:55]
	v_fma_f64 v[62:63], v[58:59], v[64:65], v[62:63]
	v_fma_f64 v[62:63], v[54:55], v[54:55], v[62:63]
	v_add_f64 v[64:65], v[60:61], v[62:63]
	v_add_f64 v[60:61], v[64:65], -v[60:61]
	v_add_f64 v[60:61], v[62:63], -v[60:61]
	v_mul_f64 v[62:63], v[64:65], v[56:57]
	v_fma_f64 v[64:65], v[64:65], v[56:57], -v[62:63]
	v_fma_f64 v[56:57], v[60:61], v[56:57], v[64:65]
	v_add_f64 v[60:61], v[62:63], v[56:57]
	v_add_f64 v[62:63], v[60:61], -v[62:63]
	v_add_f64 v[56:57], v[56:57], -v[62:63]
	v_add_f64 v[62:63], v[58:59], v[60:61]
	v_add_f64 v[58:59], v[62:63], -v[58:59]
	v_add_f64 v[58:59], v[60:61], -v[58:59]
	v_add_f64 v[54:55], v[54:55], v[56:57]
	v_add_f64 v[54:55], v[58:59], v[54:55]
	v_add_f64 v[54:55], v[62:63], v[54:55]
	v_add_f64 v[54:55], v[54:55], 1.0
	v_cvt_i32_f64_e32 v32, v[52:53]
	v_ldexp_f64 v[52:53], v[54:55], v32
	s_mov_b32 s1, 0xc0ff0a40
	s_mov_b32 s0, s6
	v_mul_f64 v[52:53], v[52:53], s[0:1]
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[50:51]
	v_mov_b32_e32 v32, 0xfff00000
	v_cndmask_b32_e32 v32, v32, v53, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[34:35], v[50:51]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v50, 0, v52, vcc
	v_bfrev_b32_e32 v34, 1
	v_cndmask_b32_e64 v51, v34, v32, s[0:1]
	s_mov_b32 s1, 0xbfa67b5f
	s_mov_b32 s0, 0x1bef49cf
	v_mul_f64 v[52:53], v[23:24], s[0:1]
	v_mul_f64 v[54:55], v[52:53], s[30:31]
	v_rndne_f64_e32 v[54:55], v[54:55]
	v_fma_f64 v[56:57], v[54:55], s[24:25], v[52:53]
	v_mul_f64 v[58:59], v[54:55], s[28:29]
	v_add_f64 v[60:61], v[56:57], v[58:59]
	v_add_f64 v[56:57], v[56:57], -v[60:61]
	v_add_f64 v[56:57], v[56:57], v[58:59]
	v_fma_f64 v[58:59], v[60:61], s[20:21], v[29:30]
	v_fma_f64 v[58:59], v[60:61], v[58:59], s[16:17]
	v_fma_f64 v[58:59], v[60:61], v[58:59], s[8:9]
	v_fma_f64 v[58:59], v[60:61], v[58:59], s[2:3]
	v_fma_f64 v[58:59], v[60:61], v[58:59], s[4:5]
	v_fma_f64 v[58:59], v[60:61], v[58:59], s[12:13]
	v_fma_f64 v[58:59], v[60:61], v[58:59], s[14:15]
	v_fma_f64 v[58:59], v[60:61], v[58:59], s[18:19]
	v_fma_f64 v[58:59], v[60:61], v[58:59], s[22:23]
	v_mul_f64 v[62:63], v[60:61], v[60:61]
	v_fma_f64 v[64:65], v[60:61], v[60:61], -v[62:63]
	v_add_f64 v[66:67], v[56:57], v[56:57]
	v_fma_f64 v[64:65], v[60:61], v[66:67], v[64:65]
	v_fma_f64 v[64:65], v[56:57], v[56:57], v[64:65]
	v_add_f64 v[66:67], v[62:63], v[64:65]
	v_add_f64 v[62:63], v[66:67], -v[62:63]
	v_add_f64 v[62:63], v[64:65], -v[62:63]
	v_mul_f64 v[64:65], v[66:67], v[58:59]
	v_fma_f64 v[66:67], v[66:67], v[58:59], -v[64:65]
	v_fma_f64 v[58:59], v[62:63], v[58:59], v[66:67]
	v_add_f64 v[62:63], v[64:65], v[58:59]
	v_add_f64 v[64:65], v[62:63], -v[64:65]
	v_add_f64 v[58:59], v[58:59], -v[64:65]
	v_add_f64 v[64:65], v[60:61], v[62:63]
	v_add_f64 v[60:61], v[64:65], -v[60:61]
	v_add_f64 v[60:61], v[62:63], -v[60:61]
	v_add_f64 v[56:57], v[56:57], v[58:59]
	v_add_f64 v[56:57], v[60:61], v[56:57]
	v_add_f64 v[56:57], v[64:65], v[56:57]
	v_add_f64 v[56:57], v[56:57], 1.0
	v_cvt_i32_f64_e32 v32, v[54:55]
	v_ldexp_f64 v[54:55], v[56:57], v32
	s_mov_b32 s1, 0x3f0236b9
	s_mov_b32 s0, 0x4f976cef
	v_mul_f64 v[54:55], v[54:55], s[0:1]
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[52:53]
	v_cndmask_b32_e32 v32, v68, v55, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[34:35], v[52:53]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v52, 0, v54, vcc
	v_cndmask_b32_e64 v53, 0, v32, s[0:1]
	v_add_f64 v[50:51], v[50:51], -v[52:53]
	s_mov_b32 s1, 0x4042e3d7
	s_mov_b32 s0, 0xa3d70a4
	v_add_f64 v[52:53], v[23:24], s[0:1]
	v_mul_f64 v[50:51], v[52:53], v[50:51]
	s_mov_b32 s1, 0x4053ceb8
	s_mov_b32 s0, 0x51eb851f
	v_add_f64 v[52:53], v[23:24], s[0:1]
	s_mov_b32 s1, 0x3fd3e76c
	s_mov_b32 s0, 0x8b439581
	v_mul_f64 v[52:53], v[52:53], s[0:1]
	v_mul_f64 v[54:55], v[52:53], s[30:31]
	v_rndne_f64_e32 v[54:55], v[54:55]
	v_fma_f64 v[56:57], v[54:55], s[24:25], v[52:53]
	v_mul_f64 v[58:59], v[54:55], s[28:29]
	v_add_f64 v[60:61], v[56:57], v[58:59]
	v_add_f64 v[56:57], v[56:57], -v[60:61]
	v_add_f64 v[56:57], v[56:57], v[58:59]
	v_fma_f64 v[58:59], v[60:61], s[20:21], v[29:30]
	v_fma_f64 v[58:59], v[60:61], v[58:59], s[16:17]
	v_fma_f64 v[58:59], v[60:61], v[58:59], s[8:9]
	v_fma_f64 v[58:59], v[60:61], v[58:59], s[2:3]
	v_fma_f64 v[58:59], v[60:61], v[58:59], s[4:5]
	v_fma_f64 v[58:59], v[60:61], v[58:59], s[12:13]
	v_fma_f64 v[58:59], v[60:61], v[58:59], s[14:15]
	v_fma_f64 v[58:59], v[60:61], v[58:59], s[18:19]
	v_fma_f64 v[58:59], v[60:61], v[58:59], s[22:23]
	v_mul_f64 v[62:63], v[60:61], v[60:61]
	v_fma_f64 v[64:65], v[60:61], v[60:61], -v[62:63]
	v_add_f64 v[66:67], v[56:57], v[56:57]
	v_fma_f64 v[64:65], v[60:61], v[66:67], v[64:65]
	v_fma_f64 v[64:65], v[56:57], v[56:57], v[64:65]
	v_add_f64 v[66:67], v[62:63], v[64:65]
	v_add_f64 v[62:63], v[66:67], -v[62:63]
	v_add_f64 v[62:63], v[64:65], -v[62:63]
	v_mul_f64 v[64:65], v[66:67], v[58:59]
	v_fma_f64 v[66:67], v[66:67], v[58:59], -v[64:65]
	v_fma_f64 v[58:59], v[62:63], v[58:59], v[66:67]
	v_add_f64 v[62:63], v[64:65], v[58:59]
	v_add_f64 v[64:65], v[62:63], -v[64:65]
	v_add_f64 v[58:59], v[58:59], -v[64:65]
	v_add_f64 v[64:65], v[60:61], v[62:63]
	v_add_f64 v[60:61], v[64:65], -v[60:61]
	v_add_f64 v[60:61], v[62:63], -v[60:61]
	v_add_f64 v[56:57], v[56:57], v[58:59]
	v_add_f64 v[56:57], v[60:61], v[56:57]
	v_add_f64 v[56:57], v[64:65], v[56:57]
	v_add_f64 v[56:57], v[56:57], 1.0
	v_cvt_i32_f64_e32 v32, v[54:55]
	v_ldexp_f64 v[54:55], v[56:57], v32
	v_add_f64 v[54:55], v[54:55], 1.0
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[52:53]
	v_cndmask_b32_e32 v32, v68, v55, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[34:35], v[52:53]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v52, 0, v54, vcc
	v_mov_b32_e32 v34, 0x3ff00000
	v_cndmask_b32_e64 v53, v34, v32, s[0:1]
	v_div_scale_f64 v[54:55], s[0:1], v[52:53], v[52:53], v[50:51]
	v_rcp_f64_e32 v[56:57], v[54:55]
	v_fma_f64 v[58:59], -v[54:55], v[56:57], 1.0
	v_fma_f64 v[56:57], v[56:57], v[58:59], v[56:57]
	v_fma_f64 v[58:59], -v[54:55], v[56:57], 1.0
	v_fma_f64 v[56:57], v[56:57], v[58:59], v[56:57]
	v_div_scale_f64 v[58:59], vcc, v[50:51], v[52:53], v[50:51]
	v_mul_f64 v[60:61], v[58:59], v[56:57]
	v_fma_f64 v[54:55], -v[54:55], v[60:61], v[58:59]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[54:55], v[54:55], v[56:57], v[60:61]
	v_div_fixup_f64 v[50:51], v[54:55], v[52:53], v[50:51]
	v_cvt_f32_f64_e32 v32, v[50:51]
	s_mov_b32 s1, 0xbf858b82
	s_mov_b32 s0, 0x7fa1a0cf
	v_mul_f64 v[50:51], v[23:24], s[0:1]
	v_mul_f64 v[52:53], v[50:51], s[30:31]
	v_rndne_f64_e32 v[52:53], v[52:53]
	v_fma_f64 v[54:55], v[52:53], s[24:25], v[50:51]
	v_mul_f64 v[56:57], v[52:53], s[28:29]
	v_add_f64 v[58:59], v[54:55], v[56:57]
	v_add_f64 v[54:55], v[54:55], -v[58:59]
	v_add_f64 v[54:55], v[54:55], v[56:57]
	v_fma_f64 v[56:57], v[58:59], s[20:21], v[29:30]
	v_fma_f64 v[56:57], v[58:59], v[56:57], s[16:17]
	v_fma_f64 v[56:57], v[58:59], v[56:57], s[8:9]
	v_fma_f64 v[56:57], v[58:59], v[56:57], s[2:3]
	v_fma_f64 v[56:57], v[58:59], v[56:57], s[4:5]
	v_fma_f64 v[56:57], v[58:59], v[56:57], s[12:13]
	v_fma_f64 v[56:57], v[58:59], v[56:57], s[14:15]
	v_fma_f64 v[56:57], v[58:59], v[56:57], s[18:19]
	v_fma_f64 v[56:57], v[58:59], v[56:57], s[22:23]
	v_mul_f64 v[60:61], v[58:59], v[58:59]
	v_fma_f64 v[62:63], v[58:59], v[58:59], -v[60:61]
	v_add_f64 v[64:65], v[54:55], v[54:55]
	v_fma_f64 v[62:63], v[58:59], v[64:65], v[62:63]
	v_fma_f64 v[62:63], v[54:55], v[54:55], v[62:63]
	v_add_f64 v[64:65], v[60:61], v[62:63]
	v_add_f64 v[60:61], v[64:65], -v[60:61]
	v_add_f64 v[60:61], v[62:63], -v[60:61]
	v_mul_f64 v[62:63], v[64:65], v[56:57]
	v_fma_f64 v[64:65], v[64:65], v[56:57], -v[62:63]
	v_fma_f64 v[56:57], v[60:61], v[56:57], v[64:65]
	v_add_f64 v[60:61], v[62:63], v[56:57]
	v_add_f64 v[62:63], v[60:61], -v[62:63]
	v_add_f64 v[56:57], v[56:57], -v[62:63]
	v_add_f64 v[62:63], v[58:59], v[60:61]
	v_add_f64 v[58:59], v[62:63], -v[58:59]
	v_add_f64 v[58:59], v[60:61], -v[58:59]
	v_add_f64 v[54:55], v[54:55], v[56:57]
	v_add_f64 v[54:55], v[58:59], v[54:55]
	v_add_f64 v[54:55], v[62:63], v[54:55]
	v_add_f64 v[54:55], v[54:55], 1.0
	v_cvt_i32_f64_e32 v34, v[52:53]
	v_ldexp_f64 v[52:53], v[54:55], v34
	s_mov_b32 s1, 0x3fbf06f6
	s_mov_b32 s0, 0x94467382
	v_mul_f64 v[52:53], v[52:53], s[0:1]
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[50:51]
	v_cndmask_b32_e32 v34, v68, v53, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[34:35], v[50:51]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v60, 0, v52, vcc
	v_cndmask_b32_e64 v61, 0, v34, s[0:1]
	s_mov_b32 s1, 0x404411eb
	s_mov_b32 s0, 0x851eb852
	v_add_f64 v[50:51], v[23:24], s[0:1]
	s_mov_b32 s1, 0xbfc1a36e
	s_mov_b32 s0, 0x2eb1c433
	v_mul_f64 v[50:51], v[50:51], s[0:1]
	v_mul_f64 v[52:53], v[50:51], s[30:31]
	v_rndne_f64_e32 v[52:53], v[52:53]
	v_fma_f64 v[54:55], v[52:53], s[24:25], v[50:51]
	v_mul_f64 v[56:57], v[52:53], s[28:29]
	v_add_f64 v[58:59], v[54:55], v[56:57]
	v_add_f64 v[54:55], v[54:55], -v[58:59]
	v_add_f64 v[62:63], v[54:55], v[56:57]
	v_fma_f64 v[29:30], v[58:59], s[20:21], v[29:30]
	v_fma_f64 v[29:30], v[58:59], v[29:30], s[16:17]
	v_fma_f64 v[29:30], v[58:59], v[29:30], s[8:9]
	v_fma_f64 v[29:30], v[58:59], v[29:30], s[2:3]
	v_fma_f64 v[29:30], v[58:59], v[29:30], s[4:5]
	v_fma_f64 v[29:30], v[58:59], v[29:30], s[12:13]
	v_fma_f64 v[29:30], v[58:59], v[29:30], s[14:15]
	v_fma_f64 v[29:30], v[58:59], v[29:30], s[18:19]
	v_fma_f64 v[29:30], v[58:59], v[29:30], s[22:23]
	v_mul_f64 v[54:55], v[58:59], v[58:59]
	v_fma_f64 v[56:57], v[58:59], v[58:59], -v[54:55]
	v_add_f64 v[64:65], v[62:63], v[62:63]
	v_fma_f64 v[56:57], v[58:59], v[64:65], v[56:57]
	v_fma_f64 v[56:57], v[62:63], v[62:63], v[56:57]
	v_add_f64 v[64:65], v[54:55], v[56:57]
	v_add_f64 v[54:55], v[64:65], -v[54:55]
	v_add_f64 v[54:55], v[56:57], -v[54:55]
	v_mul_f64 v[56:57], v[64:65], v[29:30]
	v_fma_f64 v[64:65], v[64:65], v[29:30], -v[56:57]
	v_fma_f64 v[29:30], v[54:55], v[29:30], v[64:65]
	v_add_f64 v[64:65], v[56:57], v[29:30]
	v_add_f64 v[54:55], v[64:65], -v[56:57]
	v_add_f64 v[29:30], v[29:30], -v[54:55]
	v_add_f64 v[54:55], v[58:59], v[64:65]
	v_add_f64 v[56:57], v[54:55], -v[58:59]
	v_add_f64 v[57:58], v[64:65], -v[56:57]
	v_add_f64 v[72:73], v[62:63], v[29:30]
BB0_23:
	s_mov_b32 s3, 0x404790a3
	s_mov_b32 s2, 0xd70a3d71
	s_mov_b32 s1, 0xbfb99999
	s_mov_b32 s0, 0x9999999a
	s_mov_b32 s49, 0x3ff71547
	s_mov_b32 s48, 0x652b82fe
	v_add_f64 v[67:68], v[23:24], s[2:3]
	v_mul_f64 v[29:30], v[67:68], s[0:1]
	v_mul_f64 v[62:63], v[29:30], s[48:49]
	v_rndne_f64_e32 v[64:65], v[62:63]
	s_mov_b32 s65, 0xbfe62e42
	s_mov_b32 s64, 0xfefa3000
	s_mov_b32 s67, 0xbd53de6a
	s_mov_b32 s66, 0xf278ece6
	v_fma_f64 v[62:63], v[64:65], s[64:65], v[29:30]
	v_mul_f64 v[69:70], v[64:65], s[66:67]
	v_add_f64 v[74:75], v[62:63], v[69:70]
	v_add_f64 v[62:63], v[62:63], -v[74:75]
	v_add_f64 v[69:70], v[62:63], v[69:70]
	v_mul_f64 v[62:63], v[74:75], v[74:75]
	v_fma_f64 v[76:77], v[74:75], v[74:75], -v[62:63]
	v_add_f64 v[78:79], v[69:70], v[69:70]
	v_fma_f64 v[76:77], v[74:75], v[78:79], v[76:77]
	v_fma_f64 v[76:77], v[69:70], v[69:70], v[76:77]
	v_add_f64 v[78:79], v[62:63], v[76:77]
	v_add_f64 v[62:63], v[78:79], -v[62:63]
	v_add_f64 v[76:77], v[76:77], -v[62:63]
	s_mov_b32 s3, 0x3e928af3
	s_mov_b32 s2, 0xfca7ab0c
	s_mov_b32 s39, 0x3e5ade15
	s_mov_b32 s38, 0x6a5dcb37
	s_mov_b32 s41, 0x3ec71dee
	s_mov_b32 s40, 0x623fde64
	v_mov_b32_e32 v63, s3
	v_mov_b32_e32 v62, s2
	v_fma_f64 v[80:81], v[74:75], s[38:39], v[62:63]
	v_fma_f64 v[80:81], v[74:75], v[80:81], s[40:41]
	s_mov_b32 s43, 0x3efa0199
	s_mov_b32 s42, 0x7c89e6b0
	v_fma_f64 v[80:81], v[74:75], v[80:81], s[42:43]
	s_mov_b32 s53, 0x3f2a01a0
	s_mov_b32 s52, 0x14761f6e
	v_fma_f64 v[80:81], v[74:75], v[80:81], s[52:53]
	s_mov_b32 s55, 0x3f56c16c
	s_mov_b32 s54, 0x1852b7b0
	v_fma_f64 v[80:81], v[74:75], v[80:81], s[54:55]
	s_mov_b32 s57, 0x3f811111
	s_mov_b32 s56, 0x11122322
	v_fma_f64 v[80:81], v[74:75], v[80:81], s[56:57]
	s_mov_b32 s61, 0x3fa55555
	s_mov_b32 s60, 0x555502a1
	v_fma_f64 v[80:81], v[74:75], v[80:81], s[60:61]
	s_mov_b32 s63, 0x3fc55555
	s_mov_b32 s62, 0x55555511
	v_fma_f64 v[80:81], v[74:75], v[80:81], s[62:63]
	s_mov_b32 s59, 0x3fe00000
	s_mov_b32 s58, 11
	v_fma_f64 v[80:81], v[74:75], v[80:81], s[58:59]
	v_mul_f64 v[82:83], v[78:79], v[80:81]
	v_fma_f64 v[78:79], v[78:79], v[80:81], -v[82:83]
	v_fma_f64 v[76:77], v[76:77], v[80:81], v[78:79]
	s_mov_b32 s3, 0x3fa32acb
	s_mov_b32 s2, -2.0
	v_mul_f64 v[78:79], v[23:24], s[0:1]
	v_mul_f64 v[80:81], v[78:79], s[2:3]
	v_mul_f64 v[78:79], v[80:81], s[48:49]
	v_rndne_f64_e32 v[84:85], v[78:79]
	v_fma_f64 v[78:79], v[84:85], s[64:65], v[80:81]
	v_mul_f64 v[86:87], v[84:85], s[66:67]
	v_add_f64 v[88:89], v[78:79], v[86:87]
	v_add_f64 v[78:79], v[78:79], -v[88:89]
	v_add_f64 v[86:87], v[78:79], v[86:87]
	v_mul_f64 v[78:79], v[88:89], v[88:89]
	v_fma_f64 v[90:91], v[88:89], v[88:89], -v[78:79]
	v_add_f64 v[92:93], v[86:87], v[86:87]
	v_fma_f64 v[90:91], v[88:89], v[92:93], v[90:91]
	v_fma_f64 v[90:91], v[86:87], v[86:87], v[90:91]
	v_add_f64 v[92:93], v[78:79], v[90:91]
	v_add_f64 v[78:79], v[92:93], -v[78:79]
	v_add_f64 v[78:79], v[90:91], -v[78:79]
	v_fma_f64 v[90:91], v[88:89], s[38:39], v[62:63]
	v_fma_f64 v[90:91], v[88:89], v[90:91], s[40:41]
	v_fma_f64 v[90:91], v[88:89], v[90:91], s[42:43]
	v_fma_f64 v[90:91], v[88:89], v[90:91], s[52:53]
	v_fma_f64 v[90:91], v[88:89], v[90:91], s[54:55]
	v_fma_f64 v[90:91], v[88:89], v[90:91], s[56:57]
	v_fma_f64 v[90:91], v[88:89], v[90:91], s[60:61]
	v_fma_f64 v[90:91], v[88:89], v[90:91], s[62:63]
	v_fma_f64 v[90:91], v[88:89], v[90:91], s[58:59]
	v_mul_f64 v[94:95], v[92:93], v[90:91]
	v_fma_f64 v[92:93], v[92:93], v[90:91], -v[94:95]
	v_fma_f64 v[90:91], v[78:79], v[90:91], v[92:93]
	v_add_f64 v[78:79], v[82:83], v[76:77]
	v_add_f64 v[82:83], v[78:79], -v[82:83]
	v_add_f64 v[76:77], v[76:77], -v[82:83]
	v_add_f64 v[82:83], v[74:75], v[78:79]
	v_add_f64 v[74:75], v[82:83], -v[74:75]
	v_add_f64 v[74:75], v[78:79], -v[74:75]
	v_add_f64 v[69:70], v[69:70], v[76:77]
	v_add_f64 v[69:70], v[74:75], v[69:70]
	v_add_f64 v[69:70], v[82:83], v[69:70]
	s_mov_b32 s11, 0x430c0000
	v_div_scale_f32 v34, s[0:1], v26, v26, s11
	v_rcp_f32_e32 v37, v34
	v_fma_f32 v56, -v34, v37, 1.0
	v_fma_f32 v37, v56, v37, v37
	v_div_scale_f32 v56, vcc, s11, v26, s11
	v_mul_f32_e32 v59, v56, v37
	v_fma_f32 v66, -v34, v59, v56
	v_fma_f32 v59, v66, v37, v59
	v_fma_f32 v34, -v34, v59, v56
	v_div_fmas_f32 v34, v34, v37, v59
	v_cvt_i32_f64_e32 v37, v[64:65]
	v_add_f64 v[64:65], v[69:70], 1.0
	v_ldexp_f64 v[64:65], v[64:65], v37
	v_add_f64 v[64:65], -v[64:65], 1.0
	s_mov_b32 s7, 0x40900000
	s_mov_b32 s71, 0xc090cc00
	s_mov_b32 s70, s6
	v_mov_b32_e32 v56, 0xfff00000
	v_cmp_nlt_f64_e64 s[0:1], s[6:7], v[29:30]
	v_mov_b32_e32 v37, 0x3ff00000
	v_cndmask_b32_e64 v59, v56, v65, s[0:1]
	v_cmp_ngt_f64_e64 s[2:3], s[70:71], v[29:30]
	v_div_scale_f32 v29, s[4:5], v27, v27, s11
	v_rcp_f32_e32 v30, v29
	v_fma_f32 v65, -v29, v30, 1.0
	v_fma_f32 v30, v65, v30, v30
	v_div_scale_f32 v65, vcc, s11, v27, s11
	v_mul_f32_e32 v66, v65, v30
	v_fma_f32 v69, -v29, v66, v65
	v_fma_f32 v66, v69, v30, v66
	v_fma_f32 v29, -v29, v66, v65
	v_div_fmas_f32 v29, v29, v30, v66
	v_cndmask_b32_e64 v66, v37, v59, s[2:3]
	s_and_b64 vcc, s[2:3], s[0:1]
	v_cndmask_b32_e32 v65, 0, v64, vcc
	s_mov_b32 s73, 0x3fd47ae1
	s_mov_b32 s72, 0x47ae147b
	v_mul_f64 v[67:68], v[67:68], s[72:73]
	v_div_scale_f64 v[69:70], s[0:1], v[65:66], v[65:66], v[67:68]
	v_rcp_f64_e32 v[74:75], v[69:70]
	v_fma_f64 v[76:77], -v[69:70], v[74:75], 1.0
	v_fma_f64 v[75:76], v[74:75], v[76:77], v[74:75]
	s_mov_b32 s8, 0x3fe66666
	v_div_scale_f32 v30, s[0:1], v14, v14, s8
	v_rcp_f32_e32 v59, v30
	v_fma_f32 v64, -v30, v59, 1.0
	v_fma_f32 v59, v64, v59, v59
	v_div_scale_f32 v64, vcc, s8, v14, s8
	v_mul_f32_e32 v71, v64, v59
	v_fma_f32 v74, -v30, v71, v64
	v_fma_f32 v71, v74, v59, v71
	v_fma_f32 v30, -v30, v71, v64
	v_div_fmas_f32 v74, v30, v59, v71
	v_fma_f64 v[77:78], -v[69:70], v[75:76], 1.0
	v_fma_f64 v[75:76], v[75:76], v[77:78], v[75:76]
	v_div_scale_f64 v[77:78], s[0:1], v[67:68], v[65:66], v[67:68]
	v_mul_f64 v[82:83], v[77:78], v[75:76]
	v_fma_f64 v[69:70], -v[69:70], v[82:83], v[77:78]
	v_div_scale_f32 v30, s[2:3], v15, v15, s8
	v_rcp_f32_e32 v59, v30
	v_fma_f32 v64, -v30, v59, 1.0
	v_fma_f32 v59, v64, v59, v59
	v_div_scale_f32 v64, vcc, s8, v15, s8
	v_mul_f32_e32 v71, v64, v59
	v_fma_f32 v77, -v30, v71, v64
	v_fma_f32 v71, v77, v59, v71
	v_fma_f32 v30, -v30, v71, v64
	v_div_fmas_f32 v77, v30, v59, v71
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f64 v[70:71], v[69:70], v[75:76], v[82:83]
	v_add_f64 v[57:58], v[57:58], v[72:73]
	v_add_f64 v[54:55], v[54:55], v[57:58]
	v_cvt_i32_f64_e32 v30, v[52:53]
	v_add_f64 v[52:53], v[54:55], 1.0
	v_ldexp_f64 v[52:53], v[52:53], v30
	v_add_f64 v[52:53], v[52:53], 1.0
	s_mov_b32 s4, 0x7ff00000
	v_mov_b32_e32 v69, s4
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[50:51]
	v_cndmask_b32_e32 v30, v69, v53, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[70:71], v[50:51]
	v_cndmask_b32_e64 v76, v37, v30, s[0:1]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v75, 0, v52, vcc
	v_div_scale_f64 v[50:51], s[0:1], v[75:76], v[75:76], v[60:61]
	v_rcp_f64_e32 v[52:53], v[50:51]
	v_fma_f64 v[54:55], -v[50:51], v[52:53], 1.0
	v_fma_f64 v[52:53], v[52:53], v[54:55], v[52:53]
	v_fma_f64 v[54:55], -v[50:51], v[52:53], 1.0
	v_fma_f64 v[52:53], v[52:53], v[54:55], v[52:53]
	v_div_scale_f64 v[54:55], s[0:1], v[60:61], v[75:76], v[60:61]
	v_mul_f64 v[57:58], v[54:55], v[52:53]
	v_fma_f64 v[50:51], -v[50:51], v[57:58], v[54:55]
	s_mov_b32 s44, 0xc1300000
	v_div_scale_f32 v30, s[2:3], s44, s44, v17
	v_rcp_f32_e32 v54, v30
	v_fma_f32 v55, -v30, v54, 1.0
	v_fma_f32 v54, v55, v54, v54
	v_div_scale_f32 v55, vcc, v17, s44, v17
	v_mul_f32_e32 v59, v55, v54
	v_fma_f32 v64, -v30, v59, v55
	v_fma_f32 v59, v64, v54, v59
	v_fma_f32 v30, -v30, v59, v55
	v_div_fmas_f32 v64, v30, v54, v59
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f64 v[78:79], v[50:51], v[52:53], v[57:58]
	v_add_f64 v[50:51], v[94:95], v[90:91]
	v_add_f64 v[52:53], v[50:51], -v[94:95]
	v_add_f64 v[52:53], v[90:91], -v[52:53]
	v_add_f64 v[54:55], v[88:89], v[50:51]
	v_add_f64 v[57:58], v[54:55], -v[88:89]
	v_add_f64 v[50:51], v[50:51], -v[57:58]
	v_add_f64 v[52:53], v[86:87], v[52:53]
	v_add_f64 v[50:51], v[50:51], v[52:53]
	v_add_f64 v[50:51], v[54:55], v[50:51]
	v_cvt_i32_f64_e32 v30, v[84:85]
	v_add_f64 v[50:51], v[50:51], 1.0
	v_ldexp_f64 v[50:51], v[50:51], v30
	s_mov_b32 s1, 0x3fbfdf3b
	s_mov_b32 s0, 0x645a1cac
	v_fma_f64 v[50:51], v[50:51], s[0:1], 1.0
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[80:81]
	v_cndmask_b32_e32 v30, v69, v51, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[70:71], v[80:81]
	v_cndmask_b32_e64 v51, v37, v30, s[0:1]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v50, 0, v50, vcc
	s_mov_b32 s9, 0xc2aeac50
	v_mov_b32_e32 v72, 0x42800000
	v_mul_f32_e32 v30, 0xbd19565e, v17
	v_cmp_gt_f32_e32 vcc, s9, v30
	v_cndmask_b32_e32 v52, 0, v72, vcc
	v_add_f32_e32 v52, v30, v52
	s_mov_b32 s15, 0x3fb8aa3b
	s_mov_b32 s47, 0x32a5705f
	v_mul_f32_e32 v30, s15, v52
	v_fma_f32 v53, v52, s15, -v30
	v_exp_f32_e32 v30, v30
	v_fma_f32 v53, v52, s47, v53
	v_exp_f32_e32 v53, v53
	v_mul_f32_e32 v30, v30, v53
	v_mov_b32_e32 v73, 0x114b4ea4
	v_cndmask_b32_e32 v53, 1.0, v73, vcc
	v_mul_f32_e32 v30, v53, v30
	s_mov_b32 s46, 0xc2ce8ed0
	s_mov_b32 s45, 0x42b17218
	s_mov_b32 s16, 0x7f800000
	v_cmp_ngt_f32_e32 vcc, s46, v52
	v_cndmask_b32_e32 v53, 0, v30, vcc
	v_mov_b32_e32 v30, s16
	v_cmp_nlt_f32_e32 vcc, s45, v52
	s_mov_b32 s1, 0x3fa2b47b
	s_mov_b32 s0, 0x9fbe76c8
	v_cndmask_b32_e32 v52, v30, v53, vcc
	v_cvt_f64_f32_e32 v[52:53], v52
	v_fma_f64 v[50:51], v[52:53], s[0:1], v[50:51]
	v_div_scale_f64 v[52:53], s[0:1], v[50:51], v[50:51], 1.0
	v_rcp_f64_e32 v[54:55], v[52:53]
	v_fma_f64 v[57:58], -v[52:53], v[54:55], 1.0
	v_fma_f64 v[54:55], v[54:55], v[57:58], v[54:55]
	v_fma_f64 v[57:58], -v[52:53], v[54:55], 1.0
	v_fma_f64 v[54:55], v[54:55], v[57:58], v[54:55]
	v_div_scale_f64 v[57:58], vcc, 1.0, v[50:51], 1.0
	v_mul_f64 v[80:81], v[57:58], v[54:55]
	v_fma_f64 v[52:53], -v[52:53], v[80:81], v[57:58]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[52:53], v[52:53], v[54:55], v[80:81]
	s_mov_b32 s2, 0x41300000
	v_div_scale_f32 v54, s[0:1], v26, v26, s2
	v_rcp_f32_e32 v55, v54
	v_fma_f32 v57, -v54, v55, 1.0
	v_fma_f32 v55, v57, v55, v55
	v_div_scale_f32 v57, vcc, s2, v26, s2
	v_mul_f32_e32 v58, v57, v55
	v_fma_f32 v59, -v54, v58, v57
	v_fma_f32 v58, v59, v55, v58
	v_fma_f32 v54, -v54, v58, v57
	v_div_fmas_f32 v54, v54, v55, v58
	v_div_fixup_f64 v[50:51], v[52:53], v[50:51], 1.0
	s_mov_b32 s35, 0x3f2aaaab
	v_div_fixup_f32 v52, v54, v26, s2
	v_frexp_mant_f32_e64 v53, |v52|
	v_cmp_gt_f32_e32 vcc, s35, v53
	v_cndmask_b32_e64 v54, 0, 1, vcc
	v_ldexp_f32 v53, v53, v54
	v_add_f32_e32 v54, 1.0, v53
	v_sub_f32_e32 v55, v54, v53
	v_sub_f32_e32 v57, v54, v55
	v_sub_f32_e32 v55, 1.0, v55
	v_sub_f32_e32 v57, v53, v57
	v_add_f32_e32 v55, v55, v57
	v_frexp_exp_i32_f32_e64 v57, |v52|
	v_subbrev_u32_e32 v57, vcc, 0, v57, vcc
	v_cvt_f32_i32_e32 v57, v57
	s_mov_b32 s24, 0x3f317218
	s_mov_b32 s25, 0xb102e308
	v_mul_f32_e32 v58, s24, v57
	v_fma_f32 v59, v57, s24, -v58
	v_fma_f32 v57, v57, s25, v59
	v_add_f32_e32 v53, -1.0, v53
	v_rcp_f32_e32 v59, v54
	v_mul_f32_e32 v80, v53, v59
	v_mul_f32_e32 v81, v54, v80
	v_fma_f32 v54, v80, v54, -v81
	v_fma_f32 v54, v80, v55, v54
	v_add_f32_e32 v82, v58, v57
	v_sub_f32_e32 v55, v82, v58
	v_sub_f32_e32 v57, v57, v55
	v_add_f32_e32 v55, v81, v54
	v_sub_f32_e32 v58, v55, v81
	v_sub_f32_e32 v54, v54, v58
	v_sub_f32_e32 v58, v53, v55
	v_sub_f32_e32 v53, v53, v58
	v_sub_f32_e32 v53, v53, v55
	v_sub_f32_e32 v53, v53, v54
	v_add_f32_e32 v53, v58, v53
	v_mul_f32_e32 v53, v59, v53
	v_add_f32_e32 v54, v80, v53
	v_sub_f32_e32 v55, v54, v80
	v_sub_f32_e32 v53, v53, v55
	v_mul_f32_e32 v55, v54, v54
	v_fma_f32 v58, v54, v54, -v55
	v_add_f32_e32 v59, v53, v53
	v_fma_f32 v58, v54, v59, v58
	v_fma_f32 v58, v53, v53, v58
	v_add_f32_e32 v59, v55, v58
	v_sub_f32_e32 v55, v59, v55
	v_sub_f32_e32 v58, v58, v55
	s_mov_b32 s29, 0x3e76c4e1
	s_mov_b32 s30, 0x3ecccdef
	v_mov_b32_e32 v55, 0x3e91f4c4
	v_fma_f32 v80, v59, s29, v55
	v_fma_f32 v80, v59, v80, s30
	v_mul_f32_e32 v81, v59, v80
	v_fma_f32 v83, v59, v80, -v81
	v_fma_f32 v80, v58, v80, v83
	v_mul_f32_e32 v58, v54, v58
	v_fma_f32 v58, v59, v53, v58
	v_mul_f32_e32 v83, v54, v59
	v_fma_f32 v59, v59, v54, -v83
	v_add_f32_e32 v58, v59, v58
	v_add_f32_e32 v59, v81, v80
	v_sub_f32_e32 v81, v59, v81
	v_sub_f32_e32 v80, v80, v81
	s_mov_b32 s31, 0x3f2aaaaa
	s_mov_b32 s33, 0xbf2aaaaa
	v_add_f32_e32 v81, s31, v59
	v_add_f32_e32 v84, s33, v81
	v_sub_f32_e32 v59, v59, v84
	s_mov_b32 s34, 0x31739010
	v_add_f32_e32 v80, s34, v80
	v_add_f32_e32 v59, v59, v80
	v_add_f32_e32 v80, v81, v59
	v_sub_f32_e32 v81, v80, v81
	v_sub_f32_e32 v59, v59, v81
	v_add_f32_e32 v81, v83, v58
	v_sub_f32_e32 v83, v81, v83
	v_sub_f32_e32 v58, v58, v83
	v_mul_f32_e32 v58, v58, v80
	v_fma_f32 v58, v81, v59, v58
	v_mul_f32_e32 v59, v81, v80
	v_fma_f32 v80, v81, v80, -v59
	v_add_f32_e32 v58, v80, v58
	v_add_f32_e32 v80, v59, v58
	v_sub_f32_e32 v59, v80, v59
	v_sub_f32_e32 v58, v58, v59
	v_ldexp_f32 v54, v54, 1
	v_add_f32_e32 v59, v54, v80
	v_sub_f32_e32 v54, v59, v54
	v_sub_f32_e32 v54, v80, v54
	v_ldexp_f32 v53, v53, 1
	v_add_f32_e32 v53, v53, v58
	v_add_f32_e32 v53, v54, v53
	v_add_f32_e32 v54, v59, v53
	v_sub_f32_e32 v58, v54, v59
	v_sub_f32_e32 v53, v53, v58
	v_add_f32_e32 v58, v82, v54
	v_sub_f32_e32 v59, v58, v82
	v_sub_f32_e32 v80, v58, v59
	v_sub_f32_e32 v80, v82, v80
	v_sub_f32_e32 v54, v54, v59
	v_add_f32_e32 v54, v54, v80
	v_add_f32_e32 v59, v57, v53
	v_sub_f32_e32 v80, v59, v57
	v_sub_f32_e32 v81, v59, v80
	v_sub_f32_e32 v57, v57, v81
	v_sub_f32_e32 v53, v53, v80
	v_add_f32_e32 v53, v53, v57
	v_add_f32_e32 v54, v59, v54
	v_add_f32_e32 v57, v58, v54
	v_sub_f32_e32 v58, v57, v58
	v_sub_f32_e32 v54, v54, v58
	v_add_f32_e32 v53, v53, v54
	v_add_f32_e32 v54, v57, v53
	v_sub_f32_e32 v57, v54, v57
	v_sub_f32_e32 v53, v53, v57
	v_mul_f32_e32 v57, 0, v54
	v_fma_f32 v53, v53, 4.0, v57
	v_mul_f32_e32 v57, 4.0, v54
	v_fma_f32 v54, v54, 4.0, -v57
	v_add_f32_e32 v53, v54, v53
	v_add_f32_e32 v54, v57, v53
	v_sub_f32_e32 v58, v54, v57
	v_sub_f32_e32 v53, v53, v58
	s_movk_i32 s28, 0x204
	v_cmp_class_f32_e64 vcc, v57, s28
	v_cndmask_b32_e32 v57, v54, v57, vcc
	s_mov_b32 s23, 0x3f317200
	v_mul_f32_e32 v54, s15, v57
	v_rndne_f32_e32 v58, v54
	v_mul_f32_e32 v54, s23, v58
	v_sub_f32_e32 v59, v57, v54
	v_sub_f32_e32 v80, v59, v57
	v_add_f32_e32 v54, v54, v80
	v_sub_f32_e32 v80, v59, v80
	v_sub_f32_e32 v80, v57, v80
	v_sub_f32_e32 v54, v80, v54
	v_cmp_neq_f32_e64 vcc, |v57|, s16
	v_cndmask_b32_e32 v53, 0, v53, vcc
	v_add_f32_e32 v53, v53, v54
	v_add_f32_e32 v54, v59, v53
	v_sub_f32_e32 v59, v54, v59
	v_sub_f32_e32 v53, v53, v59
	s_mov_b32 s22, 0x35bfbc00
	v_mul_f32_e32 v59, s22, v58
	v_sub_f32_e32 v80, v54, v59
	v_sub_f32_e32 v54, v54, v80
	v_sub_f32_e32 v54, v54, v59
	v_add_f32_e32 v53, v53, v54
	v_add_f32_e32 v54, v80, v53
	v_sub_f32_e32 v59, v54, v80
	v_sub_f32_e32 v53, v53, v59
	s_mov_b32 s21, 0x2ea39ef3
	v_mul_f32_e32 v59, s21, v58
	v_sub_f32_e32 v80, v54, v59
	v_sub_f32_e32 v54, v54, v80
	v_sub_f32_e32 v54, v54, v59
	v_add_f32_e32 v53, v53, v54
	v_add_f32_e32 v59, v80, v53
	v_sub_f32_e32 v54, v59, v80
	v_sub_f32_e32 v53, v53, v54
	v_mul_f32_e32 v54, v59, v59
	v_fma_f32 v80, v59, v59, -v54
	v_add_f32_e32 v81, v53, v53
	v_fma_f32 v80, v59, v81, v80
	v_fma_f32 v80, v53, v53, v80
	v_add_f32_e32 v81, v54, v80
	v_sub_f32_e32 v54, v81, v54
	v_sub_f32_e32 v80, v80, v54
	s_mov_b32 s20, 0x3ab42872
	s_mov_b32 s19, 0x3d2aadcc
	s_mov_b32 s18, 0x3e2aaa47
	s_mov_b32 s17, 0x3efffffc
	v_mov_b32_e32 v54, 0x3c091de6
	v_fma_f32 v82, v59, s20, v54
	v_fma_f32 v82, v59, v82, s19
	v_fma_f32 v82, v59, v82, s18
	v_fma_f32 v82, v59, v82, s17
	v_mul_f32_e32 v83, v82, v81
	v_fma_f32 v81, v81, v82, -v83
	v_fma_f32 v80, v80, v82, v81
	v_cvt_f32_f64_e32 v81, v[50:51]
	v_add_f32_e32 v50, v83, v80
	v_sub_f32_e32 v51, v50, v83
	v_sub_f32_e32 v51, v80, v51
	v_add_f32_e32 v80, v59, v50
	v_sub_f32_e32 v59, v80, v59
	v_sub_f32_e32 v50, v50, v59
	v_add_f32_e32 v51, v53, v51
	v_add_f32_e32 v50, v50, v51
	v_add_f32_e32 v50, v80, v50
	v_cvt_i32_f32_e32 v51, v58
	v_add_f32_e32 v50, 1.0, v50
	v_ldexp_f32 v50, v50, v51
	s_mov_b32 s14, 0x42b20000
	s_mov_b32 s13, 0xc2d00000
	v_cmp_ngt_f32_e32 vcc, s13, v57
	v_cmp_nlt_f32_e64 s[0:1], s14, v57
	v_cndmask_b32_e64 v50, v30, v50, s[0:1]
	v_cmp_neq_f32_e64 s[0:1], 0, v52
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v50, 0, v50, vcc
	v_cmp_class_f32_e64 vcc, v52, s28
	v_cndmask_b32_e32 v50, v50, v30, vcc
	v_cmp_u_f32_e32 vcc, v52, v52
	v_cndmask_b32_e64 v50, |v50|, v52, vcc
	s_mov_b32 s3, 0x40accccd
	v_mul_f32_e32 v51, 0x3e56d36d, v81
	v_mul_f32_e32 v51, s3, v51
	v_add_f32_e32 v50, 1.0, v50
	v_div_scale_f32 v52, s[0:1], v50, v50, v51
	v_rcp_f32_e32 v53, v52
	v_fma_f32 v57, -v52, v53, 1.0
	v_fma_f32 v53, v57, v53, v53
	v_div_scale_f32 v57, vcc, v51, v50, v51
	v_mul_f32_e32 v58, v57, v53
	v_fma_f32 v59, -v52, v58, v57
	v_fma_f32 v58, v59, v53, v58
	v_fma_f32 v52, -v52, v58, v57
	v_div_fmas_f32 v52, v52, v53, v58
	v_div_fixup_f32 v50, v52, v50, v51
	s_mov_b32 s12, 0x40dccccd
	v_div_scale_f32 v51, s[0:1], s12, s12, v50
	v_rcp_f32_e32 v52, v51
	v_fma_f32 v53, -v51, v52, 1.0
	v_fma_f32 v52, v53, v52, v52
	v_div_scale_f32 v53, vcc, v50, s12, v50
	v_mul_f32_e32 v57, v53, v52
	v_fma_f32 v58, -v51, v57, v53
	v_fma_f32 v57, v58, v52, v57
	v_fma_f32 v51, -v51, v57, v53
	v_div_fmas_f32 v51, v51, v52, v57
	v_div_scale_f32 v52, s[0:1], v27, v27, s2
	v_rcp_f32_e32 v53, v52
	v_fma_f32 v57, -v52, v53, 1.0
	v_fma_f32 v53, v57, v53, v53
	v_div_scale_f32 v57, vcc, s2, v27, s2
	v_mul_f32_e32 v58, v57, v53
	v_fma_f32 v59, -v52, v58, v57
	v_fma_f32 v58, v59, v53, v58
	v_fma_f32 v52, -v52, v58, v57
	v_div_fmas_f32 v52, v52, v53, v58
	v_div_fixup_f32 v52, v52, v27, s2
	v_frexp_mant_f32_e64 v53, |v52|
	v_cmp_gt_f32_e32 vcc, s35, v53
	v_cndmask_b32_e64 v57, 0, 1, vcc
	v_ldexp_f32 v53, v53, v57
	v_add_f32_e32 v57, 1.0, v53
	v_sub_f32_e32 v58, v57, v53
	v_sub_f32_e32 v59, v57, v58
	v_sub_f32_e32 v59, v53, v59
	v_sub_f32_e32 v58, 1.0, v58
	v_add_f32_e32 v58, v58, v59
	v_add_f32_e32 v53, -1.0, v53
	v_rcp_f32_e32 v59, v57
	v_mul_f32_e32 v80, v53, v59
	v_mul_f32_e32 v82, v57, v80
	v_fma_f32 v57, v80, v57, -v82
	v_fma_f32 v57, v80, v58, v57
	v_add_f32_e32 v58, v82, v57
	v_sub_f32_e32 v82, v58, v82
	v_sub_f32_e32 v57, v57, v82
	v_sub_f32_e32 v82, v53, v58
	v_sub_f32_e32 v53, v53, v82
	v_sub_f32_e32 v53, v53, v58
	v_sub_f32_e32 v53, v53, v57
	v_add_f32_e32 v53, v82, v53
	v_mul_f32_e32 v53, v59, v53
	v_add_f32_e32 v57, v80, v53
	v_sub_f32_e32 v58, v57, v80
	v_sub_f32_e32 v53, v53, v58
	v_mul_f32_e32 v58, v57, v57
	v_add_f32_e32 v59, v53, v53
	v_fma_f32 v80, v57, v57, -v58
	v_fma_f32 v59, v57, v59, v80
	v_fma_f32 v59, v53, v53, v59
	v_add_f32_e32 v80, v58, v59
	v_sub_f32_e32 v58, v80, v58
	v_sub_f32_e32 v58, v59, v58
	v_frexp_exp_i32_f32_e64 v59, |v52|
	v_subbrev_u32_e32 v59, vcc, 0, v59, vcc
	v_cvt_f32_i32_e32 v59, v59
	v_mul_f32_e32 v82, s24, v59
	v_fma_f32 v83, v59, s24, -v82
	v_fma_f32 v59, v59, s25, v83
	v_add_f32_e32 v83, v82, v59
	v_sub_f32_e32 v82, v83, v82
	v_sub_f32_e32 v59, v59, v82
	v_fma_f32 v82, v80, s29, v55
	v_fma_f32 v82, v80, v82, s30
	v_mul_f32_e32 v84, v80, v82
	v_fma_f32 v85, v80, v82, -v84
	v_fma_f32 v82, v58, v82, v85
	v_mul_f32_e32 v58, v57, v58
	v_fma_f32 v58, v80, v53, v58
	v_mul_f32_e32 v85, v57, v80
	v_fma_f32 v80, v80, v57, -v85
	v_add_f32_e32 v58, v80, v58
	v_add_f32_e32 v80, v84, v82
	v_sub_f32_e32 v84, v80, v84
	v_sub_f32_e32 v82, v82, v84
	v_add_f32_e32 v84, s31, v80
	v_add_f32_e32 v86, s33, v84
	v_sub_f32_e32 v80, v80, v86
	v_add_f32_e32 v82, s34, v82
	v_add_f32_e32 v80, v80, v82
	v_add_f32_e32 v82, v84, v80
	v_sub_f32_e32 v84, v82, v84
	v_sub_f32_e32 v80, v80, v84
	v_add_f32_e32 v84, v85, v58
	v_sub_f32_e32 v85, v84, v85
	v_sub_f32_e32 v58, v58, v85
	v_mul_f32_e32 v58, v58, v82
	v_fma_f32 v58, v84, v80, v58
	v_mul_f32_e32 v80, v84, v82
	v_fma_f32 v82, v84, v82, -v80
	v_add_f32_e32 v58, v82, v58
	v_add_f32_e32 v82, v80, v58
	v_sub_f32_e32 v80, v82, v80
	v_sub_f32_e32 v58, v58, v80
	v_ldexp_f32 v57, v57, 1
	v_add_f32_e32 v80, v57, v82
	v_sub_f32_e32 v57, v80, v57
	v_sub_f32_e32 v57, v82, v57
	v_ldexp_f32 v53, v53, 1
	v_add_f32_e32 v53, v53, v58
	v_add_f32_e32 v53, v57, v53
	v_add_f32_e32 v57, v80, v53
	v_sub_f32_e32 v58, v57, v80
	v_sub_f32_e32 v53, v53, v58
	v_add_f32_e32 v58, v83, v57
	v_sub_f32_e32 v80, v58, v83
	v_sub_f32_e32 v82, v58, v80
	v_sub_f32_e32 v82, v83, v82
	v_sub_f32_e32 v57, v57, v80
	v_add_f32_e32 v57, v57, v82
	v_add_f32_e32 v80, v59, v53
	v_sub_f32_e32 v82, v80, v59
	v_sub_f32_e32 v83, v80, v82
	v_sub_f32_e32 v59, v59, v83
	v_sub_f32_e32 v53, v53, v82
	v_add_f32_e32 v53, v53, v59
	v_add_f32_e32 v57, v80, v57
	v_add_f32_e32 v59, v58, v57
	v_sub_f32_e32 v58, v59, v58
	v_sub_f32_e32 v57, v57, v58
	v_add_f32_e32 v53, v53, v57
	v_add_f32_e32 v57, v59, v53
	v_sub_f32_e32 v58, v57, v59
	v_sub_f32_e32 v53, v53, v58
	v_mul_f32_e32 v58, 0, v57
	v_fma_f32 v53, v53, 4.0, v58
	v_mul_f32_e32 v58, 4.0, v57
	v_fma_f32 v57, v57, 4.0, -v58
	v_add_f32_e32 v53, v57, v53
	v_add_f32_e32 v57, v58, v53
	v_sub_f32_e32 v59, v57, v58
	v_sub_f32_e32 v53, v53, v59
	v_cmp_class_f32_e64 vcc, v58, s28
	v_cndmask_b32_e32 v57, v57, v58, vcc
	v_mul_f32_e32 v58, s15, v57
	v_rndne_f32_e32 v58, v58
	v_mul_f32_e32 v59, s23, v58
	v_sub_f32_e32 v80, v57, v59
	v_sub_f32_e32 v82, v80, v57
	v_add_f32_e32 v59, v59, v82
	v_sub_f32_e32 v82, v80, v82
	v_sub_f32_e32 v82, v57, v82
	v_sub_f32_e32 v59, v82, v59
	v_cmp_neq_f32_e64 vcc, |v57|, s16
	v_cndmask_b32_e32 v53, 0, v53, vcc
	v_add_f32_e32 v53, v53, v59
	v_add_f32_e32 v59, v80, v53
	v_sub_f32_e32 v80, v59, v80
	v_sub_f32_e32 v53, v53, v80
	v_mul_f32_e32 v80, s22, v58
	v_sub_f32_e32 v82, v59, v80
	v_sub_f32_e32 v59, v59, v82
	v_sub_f32_e32 v59, v59, v80
	v_add_f32_e32 v53, v53, v59
	v_add_f32_e32 v59, v82, v53
	v_sub_f32_e32 v80, v59, v82
	v_sub_f32_e32 v53, v53, v80
	v_mul_f32_e32 v80, s21, v58
	v_sub_f32_e32 v82, v59, v80
	v_sub_f32_e32 v59, v59, v82
	v_sub_f32_e32 v59, v59, v80
	v_add_f32_e32 v53, v53, v59
	v_add_f32_e32 v59, v82, v53
	v_sub_f32_e32 v80, v59, v82
	v_sub_f32_e32 v53, v53, v80
	v_mul_f32_e32 v80, v59, v59
	v_fma_f32 v82, v59, v59, -v80
	v_add_f32_e32 v83, v53, v53
	v_fma_f32 v82, v59, v83, v82
	v_fma_f32 v82, v53, v53, v82
	v_add_f32_e32 v83, v80, v82
	v_sub_f32_e32 v80, v83, v80
	v_sub_f32_e32 v80, v82, v80
	v_fma_f32 v82, v59, s20, v54
	v_fma_f32 v82, v59, v82, s19
	v_fma_f32 v82, v59, v82, s18
	v_fma_f32 v82, v59, v82, s17
	v_mul_f32_e32 v84, v82, v83
	v_fma_f32 v83, v83, v82, -v84
	v_fma_f32 v80, v80, v82, v83
	v_add_f32_e32 v82, v84, v80
	v_sub_f32_e32 v83, v82, v84
	v_sub_f32_e32 v80, v80, v83
	v_add_f32_e32 v83, v59, v82
	v_sub_f32_e32 v59, v83, v59
	v_sub_f32_e32 v59, v82, v59
	v_add_f32_e32 v53, v53, v80
	v_add_f32_e32 v53, v59, v53
	v_add_f32_e32 v53, v83, v53
	v_cvt_i32_f32_e32 v58, v58
	v_add_f32_e32 v53, 1.0, v53
	v_ldexp_f32 v53, v53, v58
	v_cmp_ngt_f32_e32 vcc, s13, v57
	v_cmp_nlt_f32_e64 s[0:1], s14, v57
	v_cndmask_b32_e64 v53, v30, v53, s[0:1]
	v_cmp_neq_f32_e64 s[0:1], 0, v52
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v53, 0, v53, vcc
	v_cmp_class_f32_e64 vcc, v52, s28
	v_cndmask_b32_e32 v53, v53, v30, vcc
	v_cmp_u_f32_e32 vcc, v52, v52
	v_cndmask_b32_e64 v52, |v53|, v52, vcc
	v_mul_f32_e32 v53, 0x3fd9445f, v81
	v_mul_f32_e32 v59, s3, v53
	v_add_f32_e32 v84, 1.0, v52
	v_div_scale_f32 v52, s[0:1], v84, v84, v59
	v_rcp_f32_e32 v53, v52
	v_fma_f32 v57, -v52, v53, 1.0
	v_fma_f32 v53, v57, v53, v53
	v_div_scale_f32 v57, vcc, v59, v84, v59
	v_mul_f32_e32 v58, v57, v53
	v_fma_f32 v80, -v52, v58, v57
	v_fma_f32 v58, v80, v53, v58
	v_fma_f32 v52, -v52, v58, v57
	v_div_fmas_f32 v85, v52, v53, v58
	s_mov_b32 s69, 0x42480000
	s_mov_b32 s3, 0xc01e0000
	s_mov_b32 s2, s6
	v_add_f32_e32 v52, s69, v17
	v_cvt_f64_f32_e32 v[57:58], v52
	v_div_scale_f64 v[80:81], s[0:1], s[2:3], s[2:3], v[57:58]
	v_rcp_f64_e32 v[52:53], v[80:81]
	v_fma_f64 v[82:83], -v[80:81], v[52:53], 1.0
	v_fma_f64 v[82:83], v[52:53], v[82:83], v[52:53]
	v_div_fixup_f32 v52, v85, v84, v59
	v_fma_f64 v[84:85], -v[80:81], v[82:83], 1.0
	v_fma_f64 v[82:83], v[82:83], v[84:85], v[82:83]
	v_div_scale_f64 v[84:85], s[0:1], v[57:58], s[2:3], v[57:58]
	v_mul_f64 v[86:87], v[84:85], v[82:83]
	v_fma_f64 v[80:81], -v[80:81], v[86:87], v[84:85]
	v_div_scale_f32 v53, s[36:37], s12, s12, v52
	v_rcp_f32_e32 v59, v53
	v_fma_f32 v84, -v53, v59, 1.0
	v_fma_f32 v59, v84, v59, v59
	v_div_scale_f32 v84, vcc, v52, s12, v52
	v_mul_f32_e32 v85, v84, v59
	v_fma_f32 v88, -v53, v85, v84
	v_fma_f32 v85, v88, v59, v85
	v_fma_f32 v53, -v53, v85, v84
	v_div_fmas_f32 v53, v53, v59, v85
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f64 v[80:81], v[80:81], v[82:83], v[86:87]
	v_div_fixup_f64 v[57:58], v[80:81], s[2:3], v[57:58]
	v_mul_f64 v[80:81], v[57:58], s[48:49]
	v_rndne_f64_e32 v[80:81], v[80:81]
	v_fma_f64 v[82:83], v[80:81], s[64:65], v[57:58]
	v_mul_f64 v[84:85], v[80:81], s[66:67]
	v_add_f64 v[86:87], v[82:83], v[84:85]
	v_add_f64 v[82:83], v[82:83], -v[86:87]
	v_add_f64 v[82:83], v[82:83], v[84:85]
	v_mul_f64 v[84:85], v[86:87], v[86:87]
	v_fma_f64 v[88:89], v[86:87], v[86:87], -v[84:85]
	v_add_f64 v[90:91], v[82:83], v[82:83]
	v_fma_f64 v[88:89], v[86:87], v[90:91], v[88:89]
	v_fma_f64 v[88:89], v[82:83], v[82:83], v[88:89]
	v_add_f64 v[90:91], v[84:85], v[88:89]
	v_add_f64 v[84:85], v[90:91], -v[84:85]
	v_add_f64 v[84:85], v[88:89], -v[84:85]
	v_fma_f64 v[88:89], v[86:87], s[38:39], v[62:63]
	v_fma_f64 v[88:89], v[86:87], v[88:89], s[40:41]
	v_fma_f64 v[88:89], v[86:87], v[88:89], s[42:43]
	v_fma_f64 v[88:89], v[86:87], v[88:89], s[52:53]
	v_fma_f64 v[88:89], v[86:87], v[88:89], s[54:55]
	v_fma_f64 v[88:89], v[86:87], v[88:89], s[56:57]
	v_fma_f64 v[88:89], v[86:87], v[88:89], s[60:61]
	v_fma_f64 v[88:89], v[86:87], v[88:89], s[62:63]
	v_fma_f64 v[88:89], v[86:87], v[88:89], s[58:59]
	v_mul_f64 v[92:93], v[90:91], v[88:89]
	v_fma_f64 v[90:91], v[90:91], v[88:89], -v[92:93]
	v_fma_f64 v[84:85], v[84:85], v[88:89], v[90:91]
	s_mov_b32 s1, 0xbfbf7ced
	s_mov_b32 s0, 0x916872b0
	v_add_f32_e32 v59, 0x40e00000, v17
	v_cvt_f64_f32_e32 v[88:89], v59
	v_mul_f64 v[90:91], v[88:89], s[0:1]
	v_mul_f64 v[94:95], v[90:91], s[48:49]
	v_rndne_f64_e32 v[94:95], v[94:95]
	v_fma_f64 v[96:97], v[94:95], s[64:65], v[90:91]
	v_mul_f64 v[98:99], v[94:95], s[66:67]
	v_add_f64 v[100:101], v[96:97], v[98:99]
	v_add_f64 v[96:97], v[96:97], -v[100:101]
	v_add_f64 v[96:97], v[96:97], v[98:99]
	v_mul_f64 v[98:99], v[100:101], v[100:101]
	v_fma_f64 v[102:103], v[100:101], v[100:101], -v[98:99]
	v_add_f64 v[104:105], v[96:97], v[96:97]
	v_fma_f64 v[102:103], v[100:101], v[104:105], v[102:103]
	v_fma_f64 v[102:103], v[96:97], v[96:97], v[102:103]
	v_add_f64 v[104:105], v[98:99], v[102:103]
	v_add_f64 v[98:99], v[104:105], -v[98:99]
	v_add_f64 v[98:99], v[102:103], -v[98:99]
	v_fma_f64 v[102:103], v[100:101], s[38:39], v[62:63]
	v_fma_f64 v[102:103], v[100:101], v[102:103], s[40:41]
	v_fma_f64 v[102:103], v[100:101], v[102:103], s[42:43]
	v_fma_f64 v[102:103], v[100:101], v[102:103], s[52:53]
	v_fma_f64 v[102:103], v[100:101], v[102:103], s[54:55]
	v_fma_f64 v[102:103], v[100:101], v[102:103], s[56:57]
	v_fma_f64 v[102:103], v[100:101], v[102:103], s[60:61]
	v_fma_f64 v[102:103], v[100:101], v[102:103], s[62:63]
	v_fma_f64 v[102:103], v[100:101], v[102:103], s[58:59]
	v_mul_f64 v[106:107], v[104:105], v[102:103]
	v_fma_f64 v[104:105], v[104:105], v[102:103], -v[106:107]
	v_fma_f64 v[98:99], v[98:99], v[102:103], v[104:105]
	s_mov_b32 s68, 0x41200000
	s_mov_b32 s1, 0x3fc28f5c
	s_mov_b32 s0, 0x28f5c28f
	v_add_f32_e32 v59, s68, v17
	v_cvt_f64_f32_e32 v[102:103], v59
	v_mul_f64 v[104:105], v[102:103], s[0:1]
	v_mul_f64 v[108:109], v[104:105], s[48:49]
	v_rndne_f64_e32 v[108:109], v[108:109]
	v_fma_f64 v[110:111], v[108:109], s[64:65], v[104:105]
	v_mul_f64 v[112:113], v[108:109], s[66:67]
	v_add_f64 v[114:115], v[110:111], v[112:113]
	v_add_f64 v[110:111], v[110:111], -v[114:115]
	v_add_f64 v[110:111], v[110:111], v[112:113]
	v_mul_f64 v[112:113], v[114:115], v[114:115]
	v_fma_f64 v[116:117], v[114:115], v[114:115], -v[112:113]
	v_add_f64 v[118:119], v[110:111], v[110:111]
	v_fma_f64 v[116:117], v[114:115], v[118:119], v[116:117]
	v_fma_f64 v[116:117], v[110:111], v[110:111], v[116:117]
	v_add_f64 v[118:119], v[112:113], v[116:117]
	v_add_f64 v[112:113], v[118:119], -v[112:113]
	v_add_f64 v[112:113], v[116:117], -v[112:113]
	v_fma_f64 v[116:117], v[114:115], s[38:39], v[62:63]
	v_fma_f64 v[116:117], v[114:115], v[116:117], s[40:41]
	v_fma_f64 v[116:117], v[114:115], v[116:117], s[42:43]
	v_fma_f64 v[116:117], v[114:115], v[116:117], s[52:53]
	v_fma_f64 v[116:117], v[114:115], v[116:117], s[54:55]
	v_fma_f64 v[116:117], v[114:115], v[116:117], s[56:57]
	v_fma_f64 v[116:117], v[114:115], v[116:117], s[60:61]
	v_fma_f64 v[116:117], v[114:115], v[116:117], s[62:63]
	v_fma_f64 v[116:117], v[114:115], v[116:117], s[58:59]
	v_mul_f64 v[120:121], v[118:119], v[116:117]
	v_fma_f64 v[118:119], v[118:119], v[116:117], -v[120:121]
	v_fma_f64 v[112:113], v[112:113], v[116:117], v[118:119]
	v_add_f64 v[116:117], v[92:93], v[84:85]
	v_add_f64 v[92:93], v[116:117], -v[92:93]
	v_add_f64 v[84:85], v[84:85], -v[92:93]
	v_add_f64 v[92:93], v[86:87], v[116:117]
	v_add_f64 v[86:87], v[92:93], -v[86:87]
	v_add_f64 v[86:87], v[116:117], -v[86:87]
	v_add_f64 v[82:83], v[82:83], v[84:85]
	v_add_f64 v[82:83], v[86:87], v[82:83]
	v_add_f64 v[82:83], v[92:93], v[82:83]
	v_cvt_i32_f64_e32 v59, v[80:81]
	v_add_f64 v[80:81], v[82:83], 1.0
	v_ldexp_f64 v[80:81], v[80:81], v59
	v_add_f64 v[80:81], v[80:81], 1.0
	v_div_scale_f64 v[82:83], s[0:1], v[80:81], v[80:81], 1.0
	v_rcp_f64_e32 v[84:85], v[82:83]
	v_fma_f64 v[86:87], -v[82:83], v[84:85], 1.0
	v_fma_f64 v[84:85], v[84:85], v[86:87], v[84:85]
	v_fma_f64 v[86:87], -v[82:83], v[84:85], 1.0
	v_fma_f64 v[84:85], v[84:85], v[86:87], v[84:85]
	v_div_scale_f64 v[86:87], vcc, 1.0, v[80:81], 1.0
	v_mul_f64 v[92:93], v[86:87], v[84:85]
	v_fma_f64 v[82:83], -v[82:83], v[92:93], v[86:87]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[82:83], v[82:83], v[84:85], v[92:93]
	v_add_f64 v[84:85], v[106:107], v[98:99]
	v_add_f64 v[86:87], v[84:85], -v[106:107]
	v_add_f64 v[86:87], v[98:99], -v[86:87]
	v_add_f64 v[92:93], v[100:101], v[84:85]
	v_add_f64 v[98:99], v[92:93], -v[100:101]
	v_add_f64 v[84:85], v[84:85], -v[98:99]
	v_add_f64 v[86:87], v[96:97], v[86:87]
	v_add_f64 v[84:85], v[84:85], v[86:87]
	v_add_f64 v[84:85], v[92:93], v[84:85]
	v_cvt_i32_f64_e32 v59, v[94:95]
	v_add_f64 v[84:85], v[84:85], 1.0
	v_ldexp_f64 v[84:85], v[84:85], v59
	v_add_f64 v[84:85], -v[84:85], 1.0
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[90:91]
	v_cndmask_b32_e32 v59, v56, v85, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[70:71], v[90:91]
	v_cndmask_b32_e64 v85, v37, v59, s[0:1]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v84, 0, v84, vcc
	s_mov_b32 s1, 0x3f569c23
	s_mov_b32 s0, 0xb7952d23
	v_mul_f64 v[86:87], v[88:89], s[0:1]
	v_div_scale_f64 v[88:89], s[0:1], v[84:85], v[84:85], v[86:87]
	v_rcp_f64_e32 v[90:91], v[88:89]
	v_fma_f64 v[92:93], -v[88:89], v[90:91], 1.0
	v_fma_f64 v[90:91], v[90:91], v[92:93], v[90:91]
	v_fma_f64 v[92:93], -v[88:89], v[90:91], 1.0
	v_fma_f64 v[90:91], v[90:91], v[92:93], v[90:91]
	v_div_scale_f64 v[92:93], vcc, v[86:87], v[84:85], v[86:87]
	v_mul_f64 v[94:95], v[92:93], v[90:91]
	v_fma_f64 v[88:89], -v[88:89], v[94:95], v[92:93]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[88:89], v[88:89], v[90:91], v[94:95]
	v_add_f64 v[90:91], v[120:121], v[112:113]
	v_add_f64 v[92:93], v[90:91], -v[120:121]
	v_add_f64 v[92:93], v[112:113], -v[92:93]
	v_add_f64 v[94:95], v[114:115], v[90:91]
	v_add_f64 v[96:97], v[94:95], -v[114:115]
	v_add_f64 v[90:91], v[90:91], -v[96:97]
	v_add_f64 v[92:93], v[110:111], v[92:93]
	v_add_f64 v[90:91], v[90:91], v[92:93]
	v_add_f64 v[90:91], v[94:95], v[90:91]
	v_cvt_i32_f64_e32 v59, v[108:109]
	v_add_f64 v[90:91], v[90:91], 1.0
	v_ldexp_f64 v[90:91], v[90:91], v59
	v_add_f64 v[90:91], v[90:91], -1.0
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[104:105]
	v_mov_b32_e32 v59, 0xbff00000
	v_cndmask_b32_e32 v91, v69, v91, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[70:71], v[104:105]
	v_cndmask_b32_e64 v91, v59, v91, s[0:1]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v90, 0, v90, vcc
	s_mov_b32 s1, 0x3f43fd0d
	s_mov_b32 s0, 0x678c005
	v_mul_f64 v[92:93], v[102:103], s[0:1]
	v_div_scale_f64 v[94:95], s[0:1], v[90:91], v[90:91], v[92:93]
	v_rcp_f64_e32 v[96:97], v[94:95]
	v_fma_f64 v[98:99], -v[94:95], v[96:97], 1.0
	v_fma_f64 v[96:97], v[96:97], v[98:99], v[96:97]
	v_fma_f64 v[98:99], -v[94:95], v[96:97], 1.0
	v_fma_f64 v[96:97], v[96:97], v[98:99], v[96:97]
	v_div_scale_f64 v[98:99], vcc, v[92:93], v[90:91], v[92:93]
	v_mul_f64 v[100:101], v[98:99], v[96:97]
	v_fma_f64 v[94:95], -v[94:95], v[100:101], v[98:99]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[94:95], v[94:95], v[96:97], v[100:101]
	v_div_fixup_f64 v[84:85], v[88:89], v[84:85], v[86:87]
	v_div_fixup_f64 v[86:87], v[94:95], v[90:91], v[92:93]
	v_add_f64 v[84:85], v[84:85], v[86:87]
	v_div_scale_f64 v[86:87], s[0:1], v[84:85], v[84:85], 1.0
	v_rcp_f64_e32 v[88:89], v[86:87]
	v_fma_f64 v[90:91], -v[86:87], v[88:89], 1.0
	v_fma_f64 v[88:89], v[88:89], v[90:91], v[88:89]
	v_fma_f64 v[90:91], -v[86:87], v[88:89], 1.0
	v_fma_f64 v[88:89], v[88:89], v[90:91], v[88:89]
	v_div_scale_f64 v[90:91], vcc, 1.0, v[84:85], 1.0
	v_mul_f64 v[92:93], v[90:91], v[88:89]
	v_fma_f64 v[86:87], -v[86:87], v[92:93], v[90:91]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[86:87], v[86:87], v[88:89], v[92:93]
	s_mov_b32 s1, 0xbff80000
	s_mov_b32 s0, s6
	s_mov_b32 s75, 0xc030b333
	s_mov_b32 s74, 0x33333333
	v_add_f64 v[88:89], v[23:24], s[0:1]
	v_div_scale_f64 v[90:91], s[0:1], s[74:75], s[74:75], v[88:89]
	v_rcp_f64_e32 v[92:93], v[90:91]
	v_fma_f64 v[94:95], -v[90:91], v[92:93], 1.0
	v_fma_f64 v[92:93], v[92:93], v[94:95], v[92:93]
	v_div_fixup_f64 v[80:81], v[82:83], v[80:81], 1.0
	v_fma_f64 v[82:83], -v[90:91], v[92:93], 1.0
	v_fma_f64 v[82:83], v[92:93], v[82:83], v[92:93]
	v_div_fixup_f64 v[84:85], v[86:87], v[84:85], 1.0
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[57:58]
	v_cndmask_b32_e32 v81, 0, v81, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[70:71], v[57:58]
	v_div_scale_f64 v[57:58], s[2:3], v[88:89], s[74:75], v[88:89]
	v_mul_f64 v[86:87], v[57:58], v[82:83]
	v_fma_f64 v[90:91], -v[90:91], v[86:87], v[57:58]
	v_cndmask_b32_e64 v58, v37, v81, s[0:1]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v57, 0, v80, vcc
	v_cvt_f32_f64_e32 v58, v[57:58]
	v_cvt_f32_f64_e32 v57, v[84:85]
	v_sub_f32_e32 v58, v58, v11
	v_div_scale_f32 v80, s[0:1], v57, v57, v58
	v_rcp_f32_e32 v81, v80
	v_fma_f32 v84, -v80, v81, 1.0
	v_fma_f32 v81, v84, v81, v81
	v_div_scale_f32 v84, vcc, v58, v57, v58
	v_mul_f32_e32 v85, v84, v81
	v_fma_f32 v92, -v80, v85, v84
	v_fma_f32 v85, v92, v81, v85
	v_fma_f32 v80, -v80, v85, v84
	v_div_fmas_f32 v81, v80, v81, v85
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f64 v[82:83], v[90:91], v[82:83], v[86:87]
	s_mov_b32 s5, 0x41f00000
	s_mov_b32 s1, 0xbfc2f1a9
	s_mov_b32 s0, 0xfbe76c8b
	v_add_f32_e32 v80, s5, v17
	v_cvt_f64_f32_e32 v[84:85], v80
	v_mul_f64 v[86:87], v[84:85], s[0:1]
	v_mul_f64 v[90:91], v[86:87], s[48:49]
	v_rndne_f64_e32 v[90:91], v[90:91]
	v_fma_f64 v[92:93], v[90:91], s[64:65], v[86:87]
	v_mul_f64 v[94:95], v[90:91], s[66:67]
	v_add_f64 v[96:97], v[92:93], v[94:95]
	v_add_f64 v[92:93], v[92:93], -v[96:97]
	v_add_f64 v[92:93], v[92:93], v[94:95]
	v_mul_f64 v[94:95], v[96:97], v[96:97]
	v_fma_f64 v[98:99], v[96:97], v[96:97], -v[94:95]
	v_add_f64 v[100:101], v[92:93], v[92:93]
	v_fma_f64 v[98:99], v[96:97], v[100:101], v[98:99]
	v_fma_f64 v[98:99], v[92:93], v[92:93], v[98:99]
	v_add_f64 v[100:101], v[94:95], v[98:99]
	v_add_f64 v[94:95], v[100:101], -v[94:95]
	v_add_f64 v[94:95], v[98:99], -v[94:95]
	v_fma_f64 v[98:99], v[96:97], s[38:39], v[62:63]
	v_fma_f64 v[98:99], v[96:97], v[98:99], s[40:41]
	v_fma_f64 v[98:99], v[96:97], v[98:99], s[42:43]
	v_fma_f64 v[98:99], v[96:97], v[98:99], s[52:53]
	v_fma_f64 v[98:99], v[96:97], v[98:99], s[54:55]
	v_fma_f64 v[98:99], v[96:97], v[98:99], s[56:57]
	v_fma_f64 v[98:99], v[96:97], v[98:99], s[60:61]
	v_fma_f64 v[98:99], v[96:97], v[98:99], s[62:63]
	v_fma_f64 v[98:99], v[96:97], v[98:99], s[58:59]
	v_mul_f64 v[102:103], v[100:101], v[98:99]
	v_fma_f64 v[100:101], v[100:101], v[98:99], -v[102:103]
	v_fma_f64 v[94:95], v[94:95], v[98:99], v[100:101]
	v_div_fixup_f64 v[82:83], v[82:83], s[74:75], v[88:89]
	v_mul_f64 v[88:89], v[82:83], s[48:49]
	v_rndne_f64_e32 v[88:89], v[88:89]
	v_fma_f64 v[98:99], v[88:89], s[64:65], v[82:83]
	v_mul_f64 v[100:101], v[88:89], s[66:67]
	v_add_f64 v[104:105], v[98:99], v[100:101]
	v_add_f64 v[98:99], v[98:99], -v[104:105]
	v_add_f64 v[98:99], v[98:99], v[100:101]
	v_mul_f64 v[100:101], v[104:105], v[104:105]
	v_fma_f64 v[106:107], v[104:105], v[104:105], -v[100:101]
	v_add_f64 v[108:109], v[98:99], v[98:99]
	v_fma_f64 v[106:107], v[104:105], v[108:109], v[106:107]
	v_fma_f64 v[106:107], v[98:99], v[98:99], v[106:107]
	v_add_f64 v[108:109], v[100:101], v[106:107]
	v_add_f64 v[100:101], v[108:109], -v[100:101]
	v_add_f64 v[100:101], v[106:107], -v[100:101]
	v_fma_f64 v[106:107], v[104:105], s[38:39], v[62:63]
	v_fma_f64 v[106:107], v[104:105], v[106:107], s[40:41]
	v_fma_f64 v[106:107], v[104:105], v[106:107], s[42:43]
	v_fma_f64 v[106:107], v[104:105], v[106:107], s[52:53]
	v_fma_f64 v[106:107], v[104:105], v[106:107], s[54:55]
	v_fma_f64 v[106:107], v[104:105], v[106:107], s[56:57]
	v_fma_f64 v[106:107], v[104:105], v[106:107], s[60:61]
	v_fma_f64 v[106:107], v[104:105], v[106:107], s[62:63]
	v_fma_f64 v[106:107], v[104:105], v[106:107], s[58:59]
	v_mul_f64 v[110:111], v[108:109], v[106:107]
	v_fma_f64 v[108:109], v[108:109], v[106:107], -v[110:111]
	v_fma_f64 v[100:101], v[100:101], v[106:107], v[108:109]
	s_mov_b32 s1, 0x3fb19652
	s_mov_b32 s0, 0xbd3c3611
	v_mul_f64 v[106:107], v[84:85], s[0:1]
	v_mul_f64 v[108:109], v[106:107], s[48:49]
	v_rndne_f64_e32 v[108:109], v[108:109]
	v_fma_f64 v[112:113], v[108:109], s[64:65], v[106:107]
	v_mul_f64 v[114:115], v[108:109], s[66:67]
	v_add_f64 v[116:117], v[112:113], v[114:115]
	v_add_f64 v[112:113], v[112:113], -v[116:117]
	v_add_f64 v[112:113], v[112:113], v[114:115]
	v_mul_f64 v[114:115], v[116:117], v[116:117]
	v_fma_f64 v[118:119], v[116:117], v[116:117], -v[114:115]
	v_add_f64 v[120:121], v[112:113], v[112:113]
	v_fma_f64 v[118:119], v[116:117], v[120:121], v[118:119]
	v_fma_f64 v[118:119], v[112:113], v[112:113], v[118:119]
	v_add_f64 v[120:121], v[114:115], v[118:119]
	v_add_f64 v[114:115], v[120:121], -v[114:115]
	v_add_f64 v[114:115], v[118:119], -v[114:115]
	v_fma_f64 v[118:119], v[116:117], s[38:39], v[62:63]
	v_fma_f64 v[118:119], v[116:117], v[118:119], s[40:41]
	v_fma_f64 v[118:119], v[116:117], v[118:119], s[42:43]
	v_fma_f64 v[118:119], v[116:117], v[118:119], s[52:53]
	v_fma_f64 v[118:119], v[116:117], v[118:119], s[54:55]
	v_fma_f64 v[118:119], v[116:117], v[118:119], s[56:57]
	v_fma_f64 v[118:119], v[116:117], v[118:119], s[60:61]
	v_fma_f64 v[118:119], v[116:117], v[118:119], s[62:63]
	v_fma_f64 v[118:119], v[116:117], v[118:119], s[58:59]
	v_mul_f64 v[122:123], v[120:121], v[118:119]
	v_fma_f64 v[120:121], v[120:121], v[118:119], -v[122:123]
	v_fma_f64 v[114:115], v[114:115], v[118:119], v[120:121]
	v_add_f64 v[118:119], v[110:111], v[100:101]
	v_add_f64 v[110:111], v[118:119], -v[110:111]
	v_add_f64 v[100:101], v[100:101], -v[110:111]
	v_add_f64 v[110:111], v[104:105], v[118:119]
	v_add_f64 v[104:105], v[110:111], -v[104:105]
	v_add_f64 v[104:105], v[118:119], -v[104:105]
	v_add_f64 v[98:99], v[98:99], v[100:101]
	v_add_f64 v[98:99], v[104:105], v[98:99]
	v_add_f64 v[98:99], v[110:111], v[98:99]
	v_cvt_i32_f64_e32 v80, v[88:89]
	v_add_f64 v[88:89], v[98:99], 1.0
	v_ldexp_f64 v[88:89], v[88:89], v80
	v_add_f64 v[88:89], v[88:89], 1.0
	v_div_scale_f64 v[98:99], s[0:1], v[88:89], v[88:89], 1.0
	v_rcp_f64_e32 v[100:101], v[98:99]
	v_fma_f64 v[104:105], -v[98:99], v[100:101], 1.0
	v_fma_f64 v[100:101], v[100:101], v[104:105], v[100:101]
	v_fma_f64 v[104:105], -v[98:99], v[100:101], 1.0
	v_fma_f64 v[100:101], v[100:101], v[104:105], v[100:101]
	v_div_scale_f64 v[104:105], vcc, 1.0, v[88:89], 1.0
	v_mul_f64 v[110:111], v[104:105], v[100:101]
	v_fma_f64 v[98:99], -v[98:99], v[110:111], v[104:105]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[98:99], v[98:99], v[100:101], v[110:111]
	v_add_f64 v[100:101], v[102:103], v[94:95]
	v_add_f64 v[102:103], v[100:101], -v[102:103]
	v_add_f64 v[94:95], v[94:95], -v[102:103]
	v_add_f64 v[102:103], v[96:97], v[100:101]
	v_add_f64 v[96:97], v[102:103], -v[96:97]
	v_add_f64 v[96:97], v[100:101], -v[96:97]
	v_add_f64 v[92:93], v[92:93], v[94:95]
	v_add_f64 v[92:93], v[96:97], v[92:93]
	v_add_f64 v[92:93], v[102:103], v[92:93]
	v_cvt_i32_f64_e32 v80, v[90:91]
	v_add_f64 v[90:91], v[92:93], 1.0
	v_ldexp_f64 v[90:91], v[90:91], v80
	v_add_f64 v[90:91], -v[90:91], 1.0
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[86:87]
	v_cndmask_b32_e32 v56, v56, v91, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[70:71], v[86:87]
	v_cndmask_b32_e64 v87, v37, v56, s[0:1]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v86, 0, v90, vcc
	s_mov_b32 s1, 0x3f12d920
	s_mov_b32 s0, 0x9825fc13
	v_mul_f64 v[90:91], v[84:85], s[0:1]
	v_div_scale_f64 v[92:93], s[0:1], v[86:87], v[86:87], v[90:91]
	v_rcp_f64_e32 v[94:95], v[92:93]
	v_fma_f64 v[96:97], -v[92:93], v[94:95], 1.0
	v_fma_f64 v[94:95], v[94:95], v[96:97], v[94:95]
	v_fma_f64 v[96:97], -v[92:93], v[94:95], 1.0
	v_fma_f64 v[94:95], v[94:95], v[96:97], v[94:95]
	v_div_scale_f64 v[96:97], vcc, v[90:91], v[86:87], v[90:91]
	v_mul_f64 v[100:101], v[96:97], v[94:95]
	v_fma_f64 v[92:93], -v[92:93], v[100:101], v[96:97]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[92:93], v[92:93], v[94:95], v[100:101]
	v_add_f64 v[94:95], v[122:123], v[114:115]
	v_add_f64 v[96:97], v[94:95], -v[122:123]
	v_add_f64 v[96:97], v[114:115], -v[96:97]
	v_add_f64 v[100:101], v[116:117], v[94:95]
	v_add_f64 v[102:103], v[100:101], -v[116:117]
	v_add_f64 v[94:95], v[94:95], -v[102:103]
	v_add_f64 v[96:97], v[112:113], v[96:97]
	v_add_f64 v[94:95], v[94:95], v[96:97]
	v_add_f64 v[94:95], v[100:101], v[94:95]
	v_cvt_i32_f64_e32 v56, v[108:109]
	v_add_f64 v[94:95], v[94:95], 1.0
	v_ldexp_f64 v[94:95], v[94:95], v56
	v_add_f64 v[94:95], v[94:95], -1.0
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[106:107]
	v_cndmask_b32_e32 v56, v69, v95, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[70:71], v[106:107]
	v_cndmask_b32_e64 v95, v59, v56, s[0:1]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v94, 0, v94, vcc
	s_mov_b32 s1, 0x3f212ba1
	s_mov_b32 s0, 0x6e7a311f
	v_mul_f64 v[84:85], v[84:85], s[0:1]
	v_div_scale_f64 v[96:97], s[0:1], v[94:95], v[94:95], v[84:85]
	v_rcp_f64_e32 v[100:101], v[96:97]
	v_fma_f64 v[102:103], -v[96:97], v[100:101], 1.0
	v_fma_f64 v[100:101], v[100:101], v[102:103], v[100:101]
	v_fma_f64 v[102:103], -v[96:97], v[100:101], 1.0
	v_fma_f64 v[100:101], v[100:101], v[102:103], v[100:101]
	v_div_scale_f64 v[102:103], vcc, v[84:85], v[94:95], v[84:85]
	v_mul_f64 v[104:105], v[102:103], v[100:101]
	v_fma_f64 v[96:97], -v[96:97], v[104:105], v[102:103]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[96:97], v[96:97], v[100:101], v[104:105]
	v_div_fixup_f64 v[86:87], v[92:93], v[86:87], v[90:91]
	v_div_fixup_f64 v[84:85], v[96:97], v[94:95], v[84:85]
	v_add_f64 v[84:85], v[86:87], v[84:85]
	v_div_scale_f64 v[86:87], s[0:1], v[84:85], v[84:85], 1.0
	v_rcp_f64_e32 v[90:91], v[86:87]
	v_fma_f64 v[92:93], -v[86:87], v[90:91], 1.0
	v_fma_f64 v[90:91], v[90:91], v[92:93], v[90:91]
	v_fma_f64 v[92:93], -v[86:87], v[90:91], 1.0
	v_fma_f64 v[90:91], v[90:91], v[92:93], v[90:91]
	v_div_scale_f64 v[92:93], vcc, 1.0, v[84:85], 1.0
	v_mul_f64 v[94:95], v[92:93], v[90:91]
	v_fma_f64 v[86:87], -v[86:87], v[94:95], v[92:93]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[86:87], v[86:87], v[90:91], v[94:95]
	s_mov_b32 s1, 0x40080000
	s_mov_b32 s0, s6
	s_mov_b32 s37, 0xc02e0000
	s_mov_b32 s36, s6
	v_add_f64 v[90:91], v[23:24], s[0:1]
	v_div_scale_f64 v[92:93], s[0:1], s[36:37], s[36:37], v[90:91]
	v_rcp_f64_e32 v[94:95], v[92:93]
	v_fma_f64 v[96:97], -v[92:93], v[94:95], 1.0
	v_fma_f64 v[94:95], v[94:95], v[96:97], v[94:95]
	v_div_fixup_f64 v[88:89], v[98:99], v[88:89], 1.0
	v_fma_f64 v[96:97], -v[92:93], v[94:95], 1.0
	v_fma_f64 v[94:95], v[94:95], v[96:97], v[94:95]
	v_div_fixup_f64 v[84:85], v[86:87], v[84:85], 1.0
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[82:83]
	v_cndmask_b32_e32 v56, 0, v89, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[70:71], v[82:83]
	v_div_scale_f64 v[82:83], s[2:3], v[90:91], s[36:37], v[90:91]
	v_mul_f64 v[86:87], v[82:83], v[94:95]
	v_fma_f64 v[82:83], -v[92:93], v[86:87], v[82:83]
	v_cndmask_b32_e64 v89, v37, v56, s[0:1]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v88, 0, v88, vcc
	v_cvt_f32_f64_e32 v59, v[88:89]
	v_cvt_f32_f64_e32 v56, v[84:85]
	v_sub_f32_e32 v59, v59, v19
	v_div_scale_f32 v80, s[0:1], v56, v56, v59
	v_rcp_f32_e32 v84, v80
	v_fma_f32 v85, -v80, v84, 1.0
	v_fma_f32 v84, v85, v84, v84
	v_div_scale_f32 v85, vcc, v59, v56, v59
	v_mul_f32_e32 v88, v85, v84
	v_fma_f32 v89, -v80, v88, v85
	v_fma_f32 v88, v89, v84, v88
	v_fma_f32 v80, -v80, v88, v85
	v_div_fmas_f32 v80, v80, v84, v88
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f64 v[82:83], v[82:83], v[94:95], v[86:87]
	v_div_fixup_f64 v[82:83], v[82:83], s[36:37], v[90:91]
	v_mul_f64 v[84:85], v[82:83], s[48:49]
	v_rndne_f64_e32 v[84:85], v[84:85]
	v_fma_f64 v[86:87], v[84:85], s[64:65], v[82:83]
	v_mul_f64 v[88:89], v[84:85], s[66:67]
	v_add_f64 v[92:93], v[86:87], v[88:89]
	v_add_f64 v[86:87], v[86:87], -v[92:93]
	v_add_f64 v[86:87], v[86:87], v[88:89]
	v_mul_f64 v[88:89], v[92:93], v[92:93]
	v_fma_f64 v[94:95], v[92:93], v[92:93], -v[88:89]
	v_add_f64 v[96:97], v[86:87], v[86:87]
	v_fma_f64 v[94:95], v[92:93], v[96:97], v[94:95]
	v_fma_f64 v[94:95], v[86:87], v[86:87], v[94:95]
	v_add_f64 v[96:97], v[88:89], v[94:95]
	v_add_f64 v[88:89], v[96:97], -v[88:89]
	v_add_f64 v[88:89], v[94:95], -v[88:89]
	v_fma_f64 v[94:95], v[92:93], s[38:39], v[62:63]
	v_fma_f64 v[94:95], v[92:93], v[94:95], s[40:41]
	v_fma_f64 v[94:95], v[92:93], v[94:95], s[42:43]
	v_fma_f64 v[94:95], v[92:93], v[94:95], s[52:53]
	v_fma_f64 v[94:95], v[92:93], v[94:95], s[54:55]
	v_fma_f64 v[94:95], v[92:93], v[94:95], s[56:57]
	v_fma_f64 v[94:95], v[92:93], v[94:95], s[60:61]
	v_fma_f64 v[94:95], v[92:93], v[94:95], s[62:63]
	v_fma_f64 v[94:95], v[92:93], v[94:95], s[58:59]
	v_mul_f64 v[98:99], v[96:97], v[94:95]
	v_fma_f64 v[96:97], v[96:97], v[94:95], -v[98:99]
	v_fma_f64 v[88:89], v[88:89], v[94:95], v[96:97]
	v_add_f64 v[94:95], v[98:99], v[88:89]
	v_add_f64 v[96:97], v[94:95], -v[98:99]
	v_add_f64 v[88:89], v[88:89], -v[96:97]
	v_add_f64 v[96:97], v[92:93], v[94:95]
	v_add_f64 v[92:93], v[96:97], -v[92:93]
	v_add_f64 v[92:93], v[94:95], -v[92:93]
	v_add_f64 v[86:87], v[86:87], v[88:89]
	v_add_f64 v[86:87], v[92:93], v[86:87]
	v_add_f64 v[86:87], v[96:97], v[86:87]
	v_cvt_i32_f64_e32 v88, v[84:85]
	v_add_f64 v[84:85], v[86:87], 1.0
	v_ldexp_f64 v[84:85], v[84:85], v88
	v_add_f64 v[84:85], v[84:85], 1.0
	v_div_scale_f64 v[86:87], s[0:1], v[84:85], v[84:85], 1.0
	v_rcp_f64_e32 v[88:89], v[86:87]
	v_fma_f64 v[92:93], -v[86:87], v[88:89], 1.0
	v_fma_f64 v[88:89], v[88:89], v[92:93], v[88:89]
	v_fma_f64 v[92:93], -v[86:87], v[88:89], 1.0
	v_fma_f64 v[88:89], v[88:89], v[92:93], v[88:89]
	v_div_scale_f64 v[92:93], vcc, 1.0, v[84:85], 1.0
	v_mul_f64 v[94:95], v[92:93], v[88:89]
	v_fma_f64 v[86:87], -v[86:87], v[94:95], v[92:93]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[86:87], v[86:87], v[88:89], v[94:95]
	s_mov_b32 s1, 0x4040c000
	s_mov_b32 s0, s6
	s_mov_b32 s3, 0x40240000
	s_mov_b32 s2, s6
	v_add_f64 v[88:89], v[23:24], s[0:1]
	v_div_scale_f64 v[92:93], s[0:1], s[2:3], s[2:3], v[88:89]
	v_rcp_f64_e32 v[94:95], v[92:93]
	v_fma_f64 v[96:97], -v[92:93], v[94:95], 1.0
	v_fma_f64 v[94:95], v[94:95], v[96:97], v[94:95]
	v_fma_f64 v[96:97], -v[92:93], v[94:95], 1.0
	v_fma_f64 v[94:95], v[94:95], v[96:97], v[94:95]
	v_div_scale_f64 v[96:97], vcc, v[88:89], s[2:3], v[88:89]
	v_mul_f64 v[98:99], v[96:97], v[94:95]
	v_fma_f64 v[92:93], -v[92:93], v[98:99], v[96:97]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[92:93], v[92:93], v[94:95], v[98:99]
	v_div_fixup_f64 v[88:89], v[92:93], s[2:3], v[88:89]
	v_mul_f64 v[92:93], v[88:89], s[48:49]
	v_rndne_f64_e32 v[92:93], v[92:93]
	v_fma_f64 v[94:95], v[92:93], s[64:65], v[88:89]
	v_mul_f64 v[96:97], v[92:93], s[66:67]
	v_add_f64 v[98:99], v[94:95], v[96:97]
	v_add_f64 v[94:95], v[94:95], -v[98:99]
	v_add_f64 v[94:95], v[94:95], v[96:97]
	v_mul_f64 v[96:97], v[98:99], v[98:99]
	v_fma_f64 v[100:101], v[98:99], v[98:99], -v[96:97]
	v_add_f64 v[102:103], v[94:95], v[94:95]
	v_fma_f64 v[100:101], v[98:99], v[102:103], v[100:101]
	v_fma_f64 v[100:101], v[94:95], v[94:95], v[100:101]
	v_add_f64 v[102:103], v[96:97], v[100:101]
	v_add_f64 v[96:97], v[102:103], -v[96:97]
	v_add_f64 v[96:97], v[100:101], -v[96:97]
	v_fma_f64 v[100:101], v[98:99], s[38:39], v[62:63]
	v_fma_f64 v[100:101], v[98:99], v[100:101], s[40:41]
	v_fma_f64 v[100:101], v[98:99], v[100:101], s[42:43]
	v_fma_f64 v[100:101], v[98:99], v[100:101], s[52:53]
	v_fma_f64 v[100:101], v[98:99], v[100:101], s[54:55]
	v_fma_f64 v[100:101], v[98:99], v[100:101], s[56:57]
	v_fma_f64 v[100:101], v[98:99], v[100:101], s[60:61]
	v_fma_f64 v[100:101], v[98:99], v[100:101], s[62:63]
	v_fma_f64 v[100:101], v[98:99], v[100:101], s[58:59]
	v_mul_f64 v[104:105], v[102:103], v[100:101]
	v_fma_f64 v[102:103], v[102:103], v[100:101], -v[104:105]
	v_fma_f64 v[96:97], v[96:97], v[100:101], v[102:103]
	v_add_f64 v[100:101], v[104:105], v[96:97]
	v_add_f64 v[102:103], v[100:101], -v[104:105]
	v_add_f64 v[96:97], v[96:97], -v[102:103]
	v_add_f64 v[102:103], v[98:99], v[100:101]
	v_add_f64 v[98:99], v[102:103], -v[98:99]
	v_add_f64 v[98:99], v[100:101], -v[98:99]
	v_add_f64 v[94:95], v[94:95], v[96:97]
	v_add_f64 v[94:95], v[98:99], v[94:95]
	v_add_f64 v[94:95], v[102:103], v[94:95]
	v_cvt_i32_f64_e32 v96, v[92:93]
	v_add_f64 v[92:93], v[94:95], 1.0
	v_ldexp_f64 v[92:93], v[92:93], v96
	v_add_f64 v[92:93], v[92:93], 1.0
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[88:89]
	v_cndmask_b32_e32 v93, v69, v93, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[70:71], v[88:89]
	s_add_u32 s50, s26, 48
	s_addc_u32 s51, s27, 0
	v_cndmask_b32_e64 v93, v37, v93, s[0:1]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v92, 0, v92, vcc
	v_div_scale_f64 v[88:89], s[0:1], v[92:93], v[92:93], 1.0
	v_rcp_f64_e32 v[94:95], v[88:89]
	v_fma_f64 v[96:97], -v[88:89], v[94:95], 1.0
	v_fma_f64 v[94:95], v[94:95], v[96:97], v[94:95]
	v_fma_f64 v[96:97], -v[88:89], v[94:95], 1.0
	v_fma_f64 v[94:95], v[94:95], v[96:97], v[94:95]
	v_div_scale_f64 v[96:97], vcc, 1.0, v[92:93], 1.0
	v_mul_f64 v[98:99], v[96:97], v[94:95]
	v_fma_f64 v[88:89], -v[88:89], v[98:99], v[96:97]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[88:89], v[88:89], v[94:95], v[98:99]
	s_mov_b32 s1, 0x402e0000
	s_mov_b32 s0, s6
	v_div_scale_f64 v[94:95], s[36:37], s[0:1], s[0:1], v[90:91]
	v_rcp_f64_e32 v[96:97], v[94:95]
	v_fma_f64 v[98:99], -v[94:95], v[96:97], 1.0
	v_fma_f64 v[96:97], v[96:97], v[98:99], v[96:97]
	v_fma_f64 v[98:99], -v[94:95], v[96:97], 1.0
	v_fma_f64 v[96:97], v[96:97], v[98:99], v[96:97]
	v_div_scale_f64 v[98:99], vcc, v[90:91], s[0:1], v[90:91]
	v_mul_f64 v[100:101], v[98:99], v[96:97]
	v_fma_f64 v[94:95], -v[94:95], v[100:101], v[98:99]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[94:95], v[94:95], v[96:97], v[100:101]
	v_div_fixup_f64 v[90:91], v[94:95], s[0:1], v[90:91]
	v_mul_f64 v[94:95], v[90:91], s[48:49]
	v_rndne_f64_e32 v[94:95], v[94:95]
	v_fma_f64 v[96:97], v[94:95], s[64:65], v[90:91]
	v_mul_f64 v[98:99], v[94:95], s[66:67]
	v_add_f64 v[100:101], v[96:97], v[98:99]
	v_add_f64 v[96:97], v[96:97], -v[100:101]
	v_add_f64 v[96:97], v[96:97], v[98:99]
	v_mul_f64 v[98:99], v[100:101], v[100:101]
	v_fma_f64 v[102:103], v[100:101], v[100:101], -v[98:99]
	v_add_f64 v[104:105], v[96:97], v[96:97]
	v_fma_f64 v[102:103], v[100:101], v[104:105], v[102:103]
	v_fma_f64 v[102:103], v[96:97], v[96:97], v[102:103]
	v_add_f64 v[104:105], v[98:99], v[102:103]
	v_add_f64 v[98:99], v[104:105], -v[98:99]
	v_add_f64 v[98:99], v[102:103], -v[98:99]
	v_fma_f64 v[102:103], v[100:101], s[38:39], v[62:63]
	v_fma_f64 v[102:103], v[100:101], v[102:103], s[40:41]
	v_fma_f64 v[102:103], v[100:101], v[102:103], s[42:43]
	v_fma_f64 v[102:103], v[100:101], v[102:103], s[52:53]
	v_fma_f64 v[102:103], v[100:101], v[102:103], s[54:55]
	v_fma_f64 v[102:103], v[100:101], v[102:103], s[56:57]
	v_fma_f64 v[102:103], v[100:101], v[102:103], s[60:61]
	v_fma_f64 v[102:103], v[100:101], v[102:103], s[62:63]
	v_fma_f64 v[102:103], v[100:101], v[102:103], s[58:59]
	v_mul_f64 v[106:107], v[104:105], v[102:103]
	v_fma_f64 v[104:105], v[104:105], v[102:103], -v[106:107]
	v_fma_f64 v[98:99], v[98:99], v[102:103], v[104:105]
	v_add_f64 v[102:103], v[106:107], v[98:99]
	v_add_f64 v[104:105], v[102:103], -v[106:107]
	v_add_f64 v[98:99], v[98:99], -v[104:105]
	v_add_f64 v[104:105], v[100:101], v[102:103]
	v_add_f64 v[100:101], v[104:105], -v[100:101]
	v_add_f64 v[100:101], v[102:103], -v[100:101]
	v_add_f64 v[96:97], v[96:97], v[98:99]
	v_add_f64 v[96:97], v[100:101], v[96:97]
	v_add_f64 v[96:97], v[104:105], v[96:97]
	v_cvt_i32_f64_e32 v98, v[94:95]
	v_add_f64 v[94:95], v[96:97], 1.0
	v_ldexp_f64 v[94:95], v[94:95], v98
	v_add_f64 v[94:95], v[94:95], 1.0
	s_mov_b32 s37, 0x40220000
	s_mov_b32 s36, s6
	v_div_scale_f64 v[96:97], s[0:1], v[94:95], v[94:95], s[36:37]
	v_rcp_f64_e32 v[98:99], v[96:97]
	v_fma_f64 v[100:101], -v[96:97], v[98:99], 1.0
	v_fma_f64 v[98:99], v[98:99], v[100:101], v[98:99]
	v_fma_f64 v[100:101], -v[96:97], v[98:99], 1.0
	v_fma_f64 v[98:99], v[98:99], v[100:101], v[98:99]
	v_div_scale_f64 v[100:101], vcc, s[36:37], v[94:95], s[36:37]
	v_mul_f64 v[102:103], v[100:101], v[98:99]
	v_fma_f64 v[96:97], -v[96:97], v[102:103], v[100:101]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[96:97], v[96:97], v[98:99], v[102:103]
	s_mov_b32 s1, 0x404e0000
	s_mov_b32 s0, s6
	v_add_f64 v[98:99], v[23:24], s[0:1]
	v_div_scale_f64 v[100:101], s[0:1], s[2:3], s[2:3], v[98:99]
	v_rcp_f64_e32 v[102:103], v[100:101]
	v_fma_f64 v[104:105], -v[100:101], v[102:103], 1.0
	v_fma_f64 v[102:103], v[102:103], v[104:105], v[102:103]
	v_fma_f64 v[104:105], -v[100:101], v[102:103], 1.0
	v_fma_f64 v[102:103], v[102:103], v[104:105], v[102:103]
	v_div_scale_f64 v[104:105], vcc, v[98:99], s[2:3], v[98:99]
	v_mul_f64 v[106:107], v[104:105], v[102:103]
	v_fma_f64 v[100:101], -v[100:101], v[106:107], v[104:105]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[100:101], v[100:101], v[102:103], v[106:107]
	v_div_fixup_f64 v[98:99], v[100:101], s[2:3], v[98:99]
	v_mul_f64 v[100:101], v[98:99], s[48:49]
	v_rndne_f64_e32 v[100:101], v[100:101]
	v_fma_f64 v[102:103], v[100:101], s[64:65], v[98:99]
	v_mul_f64 v[104:105], v[100:101], s[66:67]
	v_add_f64 v[106:107], v[102:103], v[104:105]
	v_add_f64 v[102:103], v[102:103], -v[106:107]
	v_add_f64 v[102:103], v[102:103], v[104:105]
	v_mul_f64 v[104:105], v[106:107], v[106:107]
	v_fma_f64 v[108:109], v[106:107], v[106:107], -v[104:105]
	v_add_f64 v[110:111], v[102:103], v[102:103]
	v_fma_f64 v[108:109], v[106:107], v[110:111], v[108:109]
	v_fma_f64 v[108:109], v[102:103], v[102:103], v[108:109]
	v_add_f64 v[110:111], v[104:105], v[108:109]
	v_add_f64 v[104:105], v[110:111], -v[104:105]
	v_add_f64 v[104:105], v[108:109], -v[104:105]
	v_fma_f64 v[108:109], v[106:107], s[38:39], v[62:63]
	v_fma_f64 v[108:109], v[106:107], v[108:109], s[40:41]
	v_fma_f64 v[108:109], v[106:107], v[108:109], s[42:43]
	v_fma_f64 v[108:109], v[106:107], v[108:109], s[52:53]
	v_fma_f64 v[108:109], v[106:107], v[108:109], s[54:55]
	v_fma_f64 v[108:109], v[106:107], v[108:109], s[56:57]
	v_fma_f64 v[108:109], v[106:107], v[108:109], s[60:61]
	v_fma_f64 v[108:109], v[106:107], v[108:109], s[62:63]
	v_fma_f64 v[108:109], v[106:107], v[108:109], s[58:59]
	v_mul_f64 v[112:113], v[110:111], v[108:109]
	v_fma_f64 v[110:111], v[110:111], v[108:109], -v[112:113]
	v_fma_f64 v[104:105], v[104:105], v[108:109], v[110:111]
	v_add_f64 v[108:109], v[112:113], v[104:105]
	v_add_f64 v[110:111], v[108:109], -v[112:113]
	v_add_f64 v[104:105], v[104:105], -v[110:111]
	v_add_f64 v[110:111], v[106:107], v[108:109]
	v_add_f64 v[106:107], v[110:111], -v[106:107]
	v_add_f64 v[106:107], v[108:109], -v[106:107]
	v_add_f64 v[102:103], v[102:103], v[104:105]
	v_add_f64 v[102:103], v[106:107], v[102:103]
	v_add_f64 v[102:103], v[110:111], v[102:103]
	v_cvt_i32_f64_e32 v104, v[100:101]
	v_add_f64 v[100:101], v[102:103], 1.0
	v_ldexp_f64 v[100:101], v[100:101], v104
	v_add_f64 v[100:101], v[100:101], 1.0
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[98:99]
	v_cndmask_b32_e32 v101, v69, v101, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[70:71], v[98:99]
	v_cndmask_b32_e64 v99, v37, v101, s[0:1]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v98, 0, v100, vcc
	s_mov_b32 s77, 0x40a77000
	s_mov_b32 s76, s6
	v_div_scale_f64 v[100:101], s[0:1], v[98:99], v[98:99], s[76:77]
	v_rcp_f64_e32 v[102:103], v[100:101]
	v_fma_f64 v[104:105], -v[100:101], v[102:103], 1.0
	v_fma_f64 v[102:103], v[102:103], v[104:105], v[102:103]
	v_fma_f64 v[104:105], -v[100:101], v[102:103], 1.0
	v_fma_f64 v[102:103], v[102:103], v[104:105], v[102:103]
	v_div_scale_f64 v[104:105], vcc, s[76:77], v[98:99], s[76:77]
	v_mul_f64 v[106:107], v[104:105], v[102:103]
	v_fma_f64 v[100:101], -v[100:101], v[106:107], v[104:105]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[100:101], v[100:101], v[102:103], v[106:107]
	s_mov_b32 s79, 0x40a5e000
	s_mov_b32 s78, s6
	v_div_scale_f64 v[102:103], s[0:1], v[98:99], v[98:99], s[78:79]
	v_rcp_f64_e32 v[104:105], v[102:103]
	v_fma_f64 v[106:107], -v[102:103], v[104:105], 1.0
	v_fma_f64 v[104:105], v[104:105], v[106:107], v[104:105]
	v_fma_f64 v[106:107], -v[102:103], v[104:105], 1.0
	v_fma_f64 v[104:105], v[104:105], v[106:107], v[104:105]
	v_div_scale_f64 v[106:107], vcc, s[78:79], v[98:99], s[78:79]
	v_mul_f64 v[108:109], v[106:107], v[104:105]
	v_fma_f64 v[102:103], -v[102:103], v[108:109], v[106:107]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[102:103], v[102:103], v[104:105], v[108:109]
	v_div_fixup_f64 v[84:85], v[86:87], v[84:85], 1.0
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[82:83]
	v_cndmask_b32_e32 v85, 0, v85, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[70:71], v[82:83]
	v_cndmask_b32_e64 v83, v37, v85, s[0:1]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v82, 0, v84, vcc
	v_div_fixup_f64 v[84:85], v[96:97], v[94:95], s[36:37]
	s_mov_b32 s3, 0x40340000
	v_div_scale_f64 v[86:87], s[0:1], v[92:93], v[92:93], s[2:3]
	v_rcp_f64_e32 v[94:95], v[86:87]
	v_fma_f64 v[96:97], -v[86:87], v[94:95], 1.0
	v_fma_f64 v[94:95], v[94:95], v[96:97], v[94:95]
	v_add_f64 v[84:85], v[84:85], 0.5
	v_mov_b32_e32 v96, s59
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[90:91]
	v_cndmask_b32_e32 v85, v96, v85, vcc
	v_mov_b32_e32 v96, 0x40230000
	v_cmp_ngt_f64_e64 s[0:1], s[70:71], v[90:91]
	v_fma_f64 v[90:91], -v[86:87], v[94:95], 1.0
	v_fma_f64 v[90:91], v[94:95], v[90:91], v[94:95]
	v_cndmask_b32_e64 v85, v96, v85, s[0:1]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v84, 0, v84, vcc
	v_cvt_f32_f64_e32 v104, v[82:83]
	v_cvt_f32_f64_e32 v82, v[84:85]
	v_sub_f32_e32 v83, v104, v3
	v_div_scale_f32 v84, s[0:1], v82, v82, v83
	v_rcp_f32_e32 v85, v84
	v_fma_f32 v94, -v84, v85, 1.0
	v_fma_f32 v85, v94, v85, v85
	v_div_scale_f32 v94, vcc, v83, v82, v83
	v_mul_f32_e32 v95, v94, v85
	v_fma_f32 v96, -v84, v95, v94
	v_fma_f32 v95, v96, v85, v95
	v_fma_f32 v84, -v84, v95, v94
	v_div_fmas_f32 v84, v84, v85, v95
	v_div_fixup_f64 v[94:95], v[100:101], v[98:99], s[76:77]
	v_div_fixup_f64 v[96:97], v[102:103], v[98:99], s[78:79]
	v_div_fixup_f64 v[88:89], v[88:89], v[92:93], 1.0
	v_cvt_f32_f64_e32 v98, v[88:89]
	s_mov_b32 s1, 0x403e0000
	s_mov_b32 s0, s6
	v_add_f64 v[88:89], v[94:95], s[0:1]
	v_cvt_f32_f64_e32 v99, v[88:89]
	v_sub_f32_e32 v100, v98, v8
	v_div_scale_f32 v85, s[0:1], v99, v99, v100
	v_rcp_f32_e32 v88, v85
	v_fma_f32 v89, -v85, v88, 1.0
	v_fma_f32 v88, v89, v88, v88
	v_div_scale_f32 v89, vcc, v100, v99, v100
	v_mul_f32_e32 v94, v89, v88
	v_fma_f32 v95, -v85, v94, v89
	v_fma_f32 v94, v95, v88, v94
	v_fma_f32 v85, -v85, v94, v89
	v_div_fmas_f32 v101, v85, v88, v94
	s_mov_b32 s1, 0x406b8000
	s_mov_b32 s0, s6
	v_add_f64 v[88:89], v[96:97], s[0:1]
	v_cvt_f32_f64_e32 v96, v[88:89]
	v_sub_f32_e32 v97, v98, v18
	v_div_scale_f32 v85, s[0:1], v96, v96, v97
	v_rcp_f32_e32 v88, v85
	v_fma_f32 v89, -v85, v88, 1.0
	v_fma_f32 v88, v89, v88, v88
	v_div_scale_f32 v89, vcc, v97, v96, v97
	v_mul_f32_e32 v94, v89, v88
	v_fma_f32 v95, -v85, v94, v89
	v_fma_f32 v94, v95, v88, v94
	v_fma_f32 v85, -v85, v94, v89
	v_div_fmas_f32 v102, v85, v88, v94
	v_mul_f32_e64 v103, v17, -v17
	v_div_scale_f32 v85, s[0:1], s5, s5, v103
	v_rcp_f32_e32 v88, v85
	v_fma_f32 v89, -v85, v88, 1.0
	v_fma_f32 v88, v89, v88, v88
	v_div_scale_f32 v89, vcc, v103, s5, v103
	v_mul_f32_e32 v94, v89, v88
	v_fma_f32 v95, -v85, v94, v89
	v_fma_f32 v94, v95, v88, v94
	v_fma_f32 v85, -v85, v94, v89
	v_div_fmas_f32 v105, v85, v88, v94
	v_div_scale_f64 v[88:89], s[0:1], s[2:3], v[92:93], s[2:3]
	v_mul_f64 v[94:95], v[88:89], v[90:91]
	v_fma_f64 v[85:86], -v[86:87], v[94:95], v[88:89]
	v_div_fixup_f32 v87, v105, s5, v103
	v_div_scale_f32 v88, s[36:37], s5, s5, v87
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v103, -v88, v89, 1.0
	v_fma_f32 v89, v103, v89, v89
	v_div_scale_f32 v103, vcc, v87, s5, v87
	v_mul_f32_e32 v105, v103, v89
	v_fma_f32 v106, -v88, v105, v103
	v_fma_f32 v105, v106, v89, v105
	v_fma_f32 v88, -v88, v105, v103
	v_div_fmas_f32 v103, v88, v89, v105
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f64 v[89:90], v[85:86], v[90:91], v[94:95]
	v_div_fixup_f32 v88, v81, v57, v58
	v_div_fixup_f32 v85, v101, v99, v100
	v_div_fixup_f32 v81, v102, v96, v97
	s_add_u32 s0, s26, 32
	s_addc_u32 s1, s27, 0
	s_add_u32 s36, s26, 0x9c
	s_addc_u32 s37, s27, 0
	v_mov_b32_e32 v58, s37
	v_mov_b32_e32 v57, s36
	flat_store_dword v[57:58], v81
	v_div_fixup_f32 v57, v103, s5, v87
	v_cmp_gt_f32_e32 vcc, s9, v57
	v_cndmask_b32_e32 v58, 0, v72, vcc
	v_add_f32_e32 v57, v57, v58
	v_mul_f32_e32 v58, s15, v57
	v_fma_f32 v81, v57, s15, -v58
	v_exp_f32_e32 v58, v58
	v_fma_f32 v81, v57, s47, v81
	v_exp_f32_e32 v81, v81
	v_mul_f32_e32 v58, v58, v81
	v_cndmask_b32_e32 v81, 1.0, v73, vcc
	v_mul_f32_e32 v58, v81, v58
	v_cmp_ngt_f32_e32 vcc, s46, v57
	v_cndmask_b32_e32 v81, 0, v58, vcc
	v_cmp_nlt_f32_e32 vcc, s45, v57
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v58, 0x3ff80000
	s_mov_b32 s37, 0x400c0000
	s_mov_b32 s36, s6
	v_cndmask_b32_e32 v81, v30, v81, vcc
	v_cvt_f64_f32_e32 v[86:87], v81
	v_fma_f64 v[86:87], v[86:87], s[36:37], v[57:58]
	v_cvt_f32_f64_e32 v58, v[86:87]
	v_sub_f32_e32 v81, v104, v9
	v_div_scale_f32 v86, s[36:37], v58, v58, v81
	v_rcp_f32_e32 v87, v86
	v_fma_f32 v91, -v86, v87, 1.0
	v_fma_f32 v87, v91, v87, v87
	v_div_scale_f32 v91, vcc, v81, v58, v81
	v_mul_f32_e32 v94, v91, v87
	v_fma_f32 v95, -v86, v94, v91
	v_fma_f32 v94, v95, v87, v94
	v_fma_f32 v86, -v86, v94, v91
	v_div_fmas_f32 v86, v86, v87, v94
	v_div_fixup_f32 v86, v86, v58, v81
	v_div_fixup_f64 v[89:90], v[89:90], v[92:93], s[2:3]
	v_add_f64 v[89:90], v[89:90], s[2:3]
	v_cvt_f32_f64_e32 v58, v[89:90]
	v_sub_f32_e32 v81, v98, v10
	v_div_scale_f32 v87, s[2:3], v58, v58, v81
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v90, -v87, v89, 1.0
	v_fma_f32 v89, v90, v89, v89
	v_div_scale_f32 v90, vcc, v81, v58, v81
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v87, v91, v90
	v_fma_f32 v91, v92, v89, v91
	v_fma_f32 v87, -v87, v91, v90
	v_div_fmas_f32 v87, v87, v89, v91
	v_div_fixup_f32 v87, v87, v58, v81
	v_mov_b32_e32 v90, s1
	v_mov_b32_e32 v89, s0
	flat_store_dwordx4 v[89:90], v[85:88]
	s_mov_b32 s1, 0x402d0000
	s_mov_b32 s0, s6
	s_mov_b32 s3, 0xc0180000
	s_mov_b32 s2, s6
	v_add_f64 v[85:86], v[23:24], s[0:1]
	v_div_scale_f64 v[87:88], s[0:1], s[2:3], s[2:3], v[85:86]
	v_rcp_f64_e32 v[89:90], v[87:88]
	v_fma_f64 v[91:92], -v[87:88], v[89:90], 1.0
	v_fma_f64 v[89:90], v[89:90], v[91:92], v[89:90]
	v_fma_f64 v[91:92], -v[87:88], v[89:90], 1.0
	v_fma_f64 v[89:90], v[89:90], v[91:92], v[89:90]
	v_div_scale_f64 v[91:92], vcc, v[85:86], s[2:3], v[85:86]
	v_mul_f64 v[93:94], v[91:92], v[89:90]
	v_fma_f64 v[87:88], -v[87:88], v[93:94], v[91:92]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[87:88], v[87:88], v[89:90], v[93:94]
	v_div_fixup_f64 v[87:88], v[87:88], s[2:3], v[85:86]
	v_mul_f64 v[89:90], v[87:88], s[48:49]
	v_rndne_f64_e32 v[89:90], v[89:90]
	v_fma_f64 v[91:92], v[89:90], s[64:65], v[87:88]
	v_mul_f64 v[93:94], v[89:90], s[66:67]
	v_add_f64 v[95:96], v[91:92], v[93:94]
	v_add_f64 v[91:92], v[91:92], -v[95:96]
	v_add_f64 v[91:92], v[91:92], v[93:94]
	v_mul_f64 v[93:94], v[95:96], v[95:96]
	v_fma_f64 v[97:98], v[95:96], v[95:96], -v[93:94]
	v_add_f64 v[99:100], v[91:92], v[91:92]
	v_fma_f64 v[97:98], v[95:96], v[99:100], v[97:98]
	v_fma_f64 v[97:98], v[91:92], v[91:92], v[97:98]
	v_add_f64 v[99:100], v[93:94], v[97:98]
	v_add_f64 v[93:94], v[99:100], -v[93:94]
	v_add_f64 v[93:94], v[97:98], -v[93:94]
	v_fma_f64 v[97:98], v[95:96], s[38:39], v[62:63]
	v_fma_f64 v[97:98], v[95:96], v[97:98], s[40:41]
	v_fma_f64 v[97:98], v[95:96], v[97:98], s[42:43]
	v_fma_f64 v[97:98], v[95:96], v[97:98], s[52:53]
	v_fma_f64 v[97:98], v[95:96], v[97:98], s[54:55]
	v_fma_f64 v[97:98], v[95:96], v[97:98], s[56:57]
	v_fma_f64 v[97:98], v[95:96], v[97:98], s[60:61]
	v_fma_f64 v[97:98], v[95:96], v[97:98], s[62:63]
	v_fma_f64 v[97:98], v[95:96], v[97:98], s[58:59]
	v_mul_f64 v[101:102], v[99:100], v[97:98]
	v_fma_f64 v[99:100], v[99:100], v[97:98], -v[101:102]
	v_fma_f64 v[93:94], v[93:94], v[97:98], v[99:100]
	v_add_f64 v[97:98], v[101:102], v[93:94]
	v_add_f64 v[99:100], v[97:98], -v[101:102]
	v_add_f64 v[93:94], v[93:94], -v[99:100]
	v_add_f64 v[99:100], v[95:96], v[97:98]
	v_add_f64 v[95:96], v[99:100], -v[95:96]
	v_add_f64 v[95:96], v[97:98], -v[95:96]
	v_add_f64 v[91:92], v[91:92], v[93:94]
	v_add_f64 v[91:92], v[95:96], v[91:92]
	v_add_f64 v[91:92], v[99:100], v[91:92]
	v_cvt_i32_f64_e32 v58, v[89:90]
	v_add_f64 v[89:90], v[91:92], 1.0
	v_ldexp_f64 v[89:90], v[89:90], v58
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[87:88]
	v_cndmask_b32_e32 v58, v69, v90, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[70:71], v[87:88]
	v_cndmask_b32_e64 v88, 0, v58, s[0:1]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v87, 0, v89, vcc
	v_add_f64 v[89:90], v[87:88], 1.0
	v_div_scale_f64 v[91:92], s[0:1], v[89:90], v[89:90], 1.0
	v_rcp_f64_e32 v[93:94], v[91:92]
	v_fma_f64 v[95:96], -v[91:92], v[93:94], 1.0
	v_fma_f64 v[93:94], v[93:94], v[95:96], v[93:94]
	v_fma_f64 v[95:96], -v[91:92], v[93:94], 1.0
	v_fma_f64 v[93:94], v[93:94], v[95:96], v[93:94]
	v_div_scale_f64 v[95:96], vcc, 1.0, v[89:90], 1.0
	v_mul_f64 v[97:98], v[95:96], v[93:94]
	v_fma_f64 v[91:92], -v[91:92], v[97:98], v[95:96]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[91:92], v[91:92], v[93:94], v[97:98]
	v_div_fixup_f64 v[89:90], v[91:92], v[89:90], 1.0
	v_cvt_f32_f64_e32 v58, v[89:90]
	v_add_f64 v[87:88], -v[87:88], 1.0
	v_cvt_f64_f32_e32 v[89:90], v58
	v_mul_f64 v[87:88], v[87:88], v[89:90]
	s_mov_b32 s1, 0x3fa1eb85
	s_mov_b32 s0, 0x1eb851ec
	v_mul_f64 v[89:90], v[85:86], s[0:1]
	v_div_scale_f64 v[91:92], s[0:1], v[89:90], v[89:90], v[87:88]
	v_rcp_f64_e32 v[93:94], v[91:92]
	v_fma_f64 v[95:96], -v[91:92], v[93:94], 1.0
	v_fma_f64 v[93:94], v[93:94], v[95:96], v[93:94]
	v_fma_f64 v[95:96], -v[91:92], v[93:94], 1.0
	v_fma_f64 v[93:94], v[93:94], v[95:96], v[93:94]
	v_div_scale_f64 v[95:96], vcc, v[87:88], v[89:90], v[87:88]
	v_mul_f64 v[97:98], v[95:96], v[93:94]
	v_fma_f64 v[91:92], -v[91:92], v[97:98], v[95:96]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[91:92], v[91:92], v[93:94], v[97:98]
	s_mov_b32 s1, 0x404187ae
	s_mov_b32 s0, 0x147ae148
	s_mov_b32 s37, 0x400ccccc
	s_mov_b32 s36, 0xcccccccd
	v_add_f64 v[93:94], v[23:24], s[0:1]
	v_div_scale_f64 v[95:96], s[0:1], s[36:37], s[36:37], v[93:94]
	v_rcp_f64_e32 v[97:98], v[95:96]
	v_fma_f64 v[99:100], -v[95:96], v[97:98], 1.0
	v_fma_f64 v[97:98], v[97:98], v[99:100], v[97:98]
	v_fma_f64 v[99:100], -v[95:96], v[97:98], 1.0
	v_fma_f64 v[97:98], v[97:98], v[99:100], v[97:98]
	v_div_scale_f64 v[99:100], vcc, v[93:94], s[36:37], v[93:94]
	v_mul_f64 v[101:102], v[99:100], v[97:98]
	v_fma_f64 v[95:96], -v[95:96], v[101:102], v[99:100]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[95:96], v[95:96], v[97:98], v[101:102]
	v_div_fixup_f64 v[93:94], v[95:96], s[36:37], v[93:94]
	v_mul_f64 v[95:96], v[93:94], s[48:49]
	v_rndne_f64_e32 v[95:96], v[95:96]
	v_fma_f64 v[97:98], v[95:96], s[64:65], v[93:94]
	v_mul_f64 v[99:100], v[95:96], s[66:67]
	v_add_f64 v[101:102], v[97:98], v[99:100]
	v_add_f64 v[97:98], v[97:98], -v[101:102]
	v_add_f64 v[97:98], v[97:98], v[99:100]
	v_mul_f64 v[99:100], v[101:102], v[101:102]
	v_fma_f64 v[103:104], v[101:102], v[101:102], -v[99:100]
	v_add_f64 v[105:106], v[97:98], v[97:98]
	v_fma_f64 v[103:104], v[101:102], v[105:106], v[103:104]
	v_fma_f64 v[103:104], v[97:98], v[97:98], v[103:104]
	v_add_f64 v[105:106], v[99:100], v[103:104]
	v_add_f64 v[99:100], v[105:106], -v[99:100]
	v_add_f64 v[99:100], v[103:104], -v[99:100]
	v_fma_f64 v[103:104], v[101:102], s[38:39], v[62:63]
	v_fma_f64 v[103:104], v[101:102], v[103:104], s[40:41]
	v_fma_f64 v[103:104], v[101:102], v[103:104], s[42:43]
	v_fma_f64 v[103:104], v[101:102], v[103:104], s[52:53]
	v_fma_f64 v[103:104], v[101:102], v[103:104], s[54:55]
	v_fma_f64 v[103:104], v[101:102], v[103:104], s[56:57]
	v_fma_f64 v[103:104], v[101:102], v[103:104], s[60:61]
	v_fma_f64 v[103:104], v[101:102], v[103:104], s[62:63]
	v_fma_f64 v[103:104], v[101:102], v[103:104], s[58:59]
	v_mul_f64 v[107:108], v[105:106], v[103:104]
	v_fma_f64 v[105:106], v[105:106], v[103:104], -v[107:108]
	v_fma_f64 v[99:100], v[99:100], v[103:104], v[105:106]
	v_add_f64 v[103:104], v[107:108], v[99:100]
	v_add_f64 v[105:106], v[103:104], -v[107:108]
	v_add_f64 v[99:100], v[99:100], -v[105:106]
	v_add_f64 v[105:106], v[101:102], v[103:104]
	v_add_f64 v[101:102], v[105:106], -v[101:102]
	v_add_f64 v[101:102], v[103:104], -v[101:102]
	v_add_f64 v[97:98], v[97:98], v[99:100]
	v_add_f64 v[97:98], v[101:102], v[97:98]
	v_add_f64 v[97:98], v[105:106], v[97:98]
	v_cvt_i32_f64_e32 v81, v[95:96]
	v_add_f64 v[95:96], v[97:98], 1.0
	v_ldexp_f64 v[95:96], v[95:96], v81
	v_add_f64 v[95:96], v[95:96], 1.0
	v_div_scale_f64 v[97:98], s[0:1], v[95:96], v[95:96], 1.0
	v_rcp_f64_e32 v[99:100], v[97:98]
	v_fma_f64 v[101:102], -v[97:98], v[99:100], 1.0
	v_fma_f64 v[99:100], v[99:100], v[101:102], v[99:100]
	v_fma_f64 v[101:102], -v[97:98], v[99:100], 1.0
	v_fma_f64 v[99:100], v[99:100], v[101:102], v[99:100]
	v_div_scale_f64 v[101:102], vcc, 1.0, v[95:96], 1.0
	v_mul_f64 v[103:104], v[101:102], v[99:100]
	v_fma_f64 v[97:98], -v[97:98], v[103:104], v[101:102]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[97:98], v[97:98], v[99:100], v[103:104]
	s_mov_b32 s1, 0x3fa14120
	s_mov_b32 s0, 0x5bc01a37
	v_mul_f64 v[85:86], v[85:86], s[0:1]
	s_mov_b32 s1, 0x3fe55555
	s_mov_b32 s0, 0x55555555
	v_frexp_mant_f64_e64 v[99:100], |v[85:86]|
	v_cmp_gt_f64_e32 vcc, s[0:1], v[99:100]
	v_cndmask_b32_e64 v81, 0, 1, vcc
	v_ldexp_f64 v[99:100], v[99:100], v81
	v_add_f64 v[101:102], v[99:100], 1.0
	v_rcp_f64_e32 v[103:104], v[101:102]
	v_fma_f64 v[105:106], -v[101:102], v[103:104], 1.0
	v_fma_f64 v[103:104], v[105:106], v[103:104], v[103:104]
	v_add_f64 v[105:106], v[101:102], -v[99:100]
	v_add_f64 v[107:108], v[101:102], -v[105:106]
	v_add_f64 v[105:106], -v[105:106], 1.0
	v_add_f64 v[107:108], v[99:100], -v[107:108]
	v_add_f64 v[105:106], v[105:106], v[107:108]
	v_fma_f64 v[107:108], -v[101:102], v[103:104], 1.0
	v_fma_f64 v[103:104], v[107:108], v[103:104], v[103:104]
	v_add_f64 v[99:100], v[99:100], -1.0
	v_mul_f64 v[107:108], v[99:100], v[103:104]
	v_mul_f64 v[109:110], v[101:102], v[107:108]
	v_fma_f64 v[101:102], v[107:108], v[101:102], -v[109:110]
	v_fma_f64 v[101:102], v[107:108], v[105:106], v[101:102]
	v_add_f64 v[105:106], v[109:110], v[101:102]
	v_add_f64 v[109:110], v[105:106], -v[109:110]
	v_add_f64 v[101:102], v[101:102], -v[109:110]
	v_add_f64 v[109:110], v[99:100], -v[105:106]
	v_add_f64 v[99:100], v[99:100], -v[109:110]
	v_add_f64 v[99:100], v[99:100], -v[105:106]
	v_add_f64 v[99:100], v[99:100], -v[101:102]
	v_add_f64 v[99:100], v[109:110], v[99:100]
	v_mul_f64 v[99:100], v[103:104], v[99:100]
	v_add_f64 v[101:102], v[107:108], v[99:100]
	v_add_f64 v[103:104], v[101:102], -v[107:108]
	v_add_f64 v[99:100], v[99:100], -v[103:104]
	v_mul_f64 v[103:104], v[101:102], v[101:102]
	v_fma_f64 v[105:106], v[101:102], v[101:102], -v[103:104]
	v_add_f64 v[107:108], v[99:100], v[99:100]
	v_fma_f64 v[105:106], v[101:102], v[107:108], v[105:106]
	v_fma_f64 v[105:106], v[99:100], v[99:100], v[105:106]
	v_add_f64 v[107:108], v[103:104], v[105:106]
	v_add_f64 v[103:104], v[107:108], -v[103:104]
	v_add_f64 v[103:104], v[105:106], -v[103:104]
	v_mov_b32_e32 v105, 0x968915a9
	v_mov_b32_e32 v106, 0x3fba6564
	s_mov_b32 s3, 0x3fbdee67
	s_mov_b32 s2, 0x4222de17
	v_fma_f64 v[105:106], v[107:108], s[2:3], v[105:106]
	s_mov_b32 s3, 0x3fbe25e4
	s_mov_b32 s2, 0x3abe935a
	v_fma_f64 v[105:106], v[107:108], v[105:106], s[2:3]
	s_mov_b32 s3, 0x3fc110ef
	s_mov_b32 s2, 0x47e6c9c2
	v_fma_f64 v[105:106], v[107:108], v[105:106], s[2:3]
	s_mov_b32 s3, 0x3fc3b13b
	s_mov_b32 s2, 0xcfa74449
	v_fma_f64 v[105:106], v[107:108], v[105:106], s[2:3]
	s_mov_b32 s3, 0x3fc745d1
	s_mov_b32 s2, 0x71bf3c30
	v_fma_f64 v[105:106], v[107:108], v[105:106], s[2:3]
	s_mov_b32 s3, 0x3fcc71c7
	s_mov_b32 s2, 0x1c7792ce
	v_fma_f64 v[105:106], v[107:108], v[105:106], s[2:3]
	s_mov_b32 s3, 0x3fd24924
	s_mov_b32 s2, 0x924920da
	v_fma_f64 v[105:106], v[107:108], v[105:106], s[2:3]
	s_mov_b32 s3, 0x3fd99999
	s_mov_b32 s2, 0x9999999c
	v_fma_f64 v[105:106], v[107:108], v[105:106], s[2:3]
	v_mul_f64 v[109:110], v[107:108], v[105:106]
	v_fma_f64 v[111:112], v[107:108], v[105:106], -v[109:110]
	v_fma_f64 v[105:106], v[103:104], v[105:106], v[111:112]
	v_mul_f64 v[103:104], v[101:102], v[103:104]
	v_fma_f64 v[103:104], v[107:108], v[99:100], v[103:104]
	v_mul_f64 v[111:112], v[101:102], v[107:108]
	v_fma_f64 v[107:108], v[107:108], v[101:102], -v[111:112]
	v_add_f64 v[103:104], v[107:108], v[103:104]
	v_add_f64 v[107:108], v[109:110], v[105:106]
	v_add_f64 v[109:110], v[107:108], -v[109:110]
	v_add_f64 v[105:106], v[105:106], -v[109:110]
	v_add_f64 v[109:110], v[107:108], s[0:1]
	s_mov_b32 s1, 0xbfe55555
	v_add_f64 v[113:114], v[109:110], s[0:1]
	v_add_f64 v[107:108], v[107:108], -v[113:114]
	s_mov_b32 s1, 0x3c8543b0
	s_mov_b32 s0, 0xd5df274d
	v_add_f64 v[105:106], v[105:106], s[0:1]
	v_add_f64 v[105:106], v[107:108], v[105:106]
	v_add_f64 v[107:108], v[111:112], v[103:104]
	v_add_f64 v[111:112], v[107:108], -v[111:112]
	v_add_f64 v[103:104], v[103:104], -v[111:112]
	v_add_f64 v[111:112], v[109:110], v[105:106]
	v_add_f64 v[109:110], v[111:112], -v[109:110]
	v_add_f64 v[105:106], v[105:106], -v[109:110]
	v_mul_f64 v[103:104], v[103:104], v[111:112]
	v_fma_f64 v[103:104], v[107:108], v[105:106], v[103:104]
	v_mul_f64 v[105:106], v[107:108], v[111:112]
	v_fma_f64 v[107:108], v[107:108], v[111:112], -v[105:106]
	v_add_f64 v[103:104], v[107:108], v[103:104]
	v_add_f64 v[107:108], v[105:106], v[103:104]
	v_add_f64 v[105:106], v[107:108], -v[105:106]
	v_add_f64 v[103:104], v[103:104], -v[105:106]
	v_ldexp_f64 v[101:102], v[101:102], 1
	v_add_f64 v[105:106], v[101:102], v[107:108]
	v_add_f64 v[101:102], v[105:106], -v[101:102]
	v_add_f64 v[101:102], v[107:108], -v[101:102]
	v_ldexp_f64 v[99:100], v[99:100], 1
	v_add_f64 v[99:100], v[99:100], v[103:104]
	s_mov_b32 s1, 0x3fe62e42
	s_mov_b32 s0, 0xfefa39ef
	s_mov_b32 s3, 0x3c7abc9e
	s_mov_b32 s2, 0x3b39803f
	v_frexp_exp_i32_f64_e64 v81, |v[85:86]|
	v_subbrev_u32_e32 v81, vcc, 0, v81, vcc
	v_cvt_f64_i32_e32 v[103:104], v81
	v_mul_f64 v[107:108], v[103:104], s[0:1]
	v_fma_f64 v[109:110], v[103:104], s[0:1], -v[107:108]
	v_fma_f64 v[103:104], v[103:104], s[2:3], v[109:110]
	v_add_f64 v[99:100], v[101:102], v[99:100]
	v_add_f64 v[101:102], v[107:108], v[103:104]
	v_add_f64 v[107:108], v[101:102], -v[107:108]
	v_add_f64 v[103:104], v[103:104], -v[107:108]
	v_add_f64 v[107:108], v[105:106], v[99:100]
	v_add_f64 v[105:106], v[107:108], -v[105:106]
	v_add_f64 v[109:110], v[101:102], v[107:108]
	v_add_f64 v[111:112], v[109:110], -v[101:102]
	v_add_f64 v[107:108], v[107:108], -v[111:112]
	v_add_f64 v[111:112], v[109:110], -v[111:112]
	v_add_f64 v[101:102], v[101:102], -v[111:112]
	v_add_f64 v[99:100], v[99:100], -v[105:106]
	v_add_f64 v[101:102], v[107:108], v[101:102]
	v_add_f64 v[105:106], v[103:104], v[99:100]
	v_add_f64 v[107:108], v[105:106], -v[103:104]
	v_add_f64 v[99:100], v[99:100], -v[107:108]
	v_add_f64 v[107:108], v[105:106], -v[107:108]
	v_add_f64 v[103:104], v[103:104], -v[107:108]
	v_add_f64 v[101:102], v[105:106], v[101:102]
	v_add_f64 v[99:100], v[99:100], v[103:104]
	v_add_f64 v[103:104], v[109:110], v[101:102]
	v_add_f64 v[105:106], v[103:104], -v[109:110]
	v_add_f64 v[101:102], v[101:102], -v[105:106]
	v_add_f64 v[99:100], v[99:100], v[101:102]
	v_add_f64 v[101:102], v[103:104], v[99:100]
	v_add_f64 v[103:104], v[101:102], -v[103:104]
	v_add_f64 v[99:100], v[99:100], -v[103:104]
	v_add_f64 v[103:104], v[101:102], v[101:102]
	v_fma_f64 v[101:102], v[101:102], 2.0, -v[103:104]
	v_fma_f64 v[99:100], v[99:100], 2.0, v[101:102]
	v_add_f64 v[101:102], v[103:104], v[99:100]
	v_cmp_class_f64_e64 vcc, v[103:104], s28
	v_cndmask_b32_e32 v106, v102, v104, vcc
	v_cndmask_b32_e32 v105, v101, v103, vcc
	v_add_f64 v[101:102], v[101:102], -v[103:104]
	v_add_f64 v[99:100], v[99:100], -v[101:102]
	v_mul_f64 v[101:102], v[105:106], s[48:49]
	v_rndne_f64_e32 v[101:102], v[101:102]
	s_mov_b32 s0, s64
	v_mul_f64 v[103:104], v[101:102], s[0:1]
	v_add_f64 v[107:108], v[105:106], -v[103:104]
	v_add_f64 v[109:110], v[107:108], -v[105:106]
	v_add_f64 v[103:104], v[103:104], v[109:110]
	v_add_f64 v[109:110], v[107:108], -v[109:110]
	v_add_f64 v[109:110], v[105:106], -v[109:110]
	v_add_f64 v[103:104], v[109:110], -v[103:104]
	v_div_fixup_f64 v[95:96], v[97:98], v[95:96], 1.0
	v_cmp_nlt_f64_e64 s[0:1], s[6:7], v[93:94]
	s_mov_b32 s7, s4
	v_cmp_neq_f64_e64 vcc, |v[105:106]|, s[6:7]
	v_cndmask_b32_e32 v98, 0, v100, vcc
	v_cndmask_b32_e32 v97, 0, v99, vcc
	v_add_f64 v[97:98], v[97:98], v[103:104]
	v_add_f64 v[99:100], v[107:108], v[97:98]
	v_add_f64 v[103:104], v[99:100], -v[107:108]
	v_add_f64 v[97:98], v[97:98], -v[103:104]
	s_mov_b32 s2, 0xf278e000
	s_mov_b32 s3, s67
	v_mul_f64 v[103:104], v[101:102], s[2:3]
	v_add_f64 v[107:108], v[99:100], v[103:104]
	v_add_f64 v[99:100], v[99:100], -v[107:108]
	v_add_f64 v[99:100], v[99:100], v[103:104]
	v_add_f64 v[97:98], v[97:98], v[99:100]
	v_add_f64 v[99:100], v[107:108], v[97:98]
	v_add_f64 v[103:104], v[99:100], -v[107:108]
	v_add_f64 v[97:98], v[97:98], -v[103:104]
	s_mov_b32 s3, 0xbac9cc01
	s_mov_b32 s2, 0xf97b57a0
	v_mul_f64 v[103:104], v[101:102], s[2:3]
	v_add_f64 v[107:108], v[99:100], v[103:104]
	v_add_f64 v[99:100], v[99:100], -v[107:108]
	v_add_f64 v[99:100], v[99:100], v[103:104]
	v_add_f64 v[97:98], v[97:98], v[99:100]
	v_add_f64 v[99:100], v[107:108], v[97:98]
	v_add_f64 v[103:104], v[99:100], -v[107:108]
	v_add_f64 v[97:98], v[97:98], -v[103:104]
	v_mul_f64 v[103:104], v[99:100], v[99:100]
	v_fma_f64 v[107:108], v[99:100], v[99:100], -v[103:104]
	v_add_f64 v[109:110], v[97:98], v[97:98]
	v_fma_f64 v[107:108], v[99:100], v[109:110], v[107:108]
	v_fma_f64 v[107:108], v[97:98], v[97:98], v[107:108]
	v_add_f64 v[109:110], v[103:104], v[107:108]
	v_add_f64 v[103:104], v[109:110], -v[103:104]
	v_add_f64 v[103:104], v[107:108], -v[103:104]
	v_fma_f64 v[107:108], v[99:100], s[38:39], v[62:63]
	v_fma_f64 v[107:108], v[99:100], v[107:108], s[40:41]
	v_fma_f64 v[107:108], v[99:100], v[107:108], s[42:43]
	v_fma_f64 v[107:108], v[99:100], v[107:108], s[52:53]
	v_fma_f64 v[107:108], v[99:100], v[107:108], s[54:55]
	v_fma_f64 v[107:108], v[99:100], v[107:108], s[56:57]
	v_fma_f64 v[107:108], v[99:100], v[107:108], s[60:61]
	v_fma_f64 v[107:108], v[99:100], v[107:108], s[62:63]
	v_fma_f64 v[107:108], v[99:100], v[107:108], s[58:59]
	v_mul_f64 v[111:112], v[109:110], v[107:108]
	v_fma_f64 v[109:110], v[109:110], v[107:108], -v[111:112]
	v_fma_f64 v[103:104], v[103:104], v[107:108], v[109:110]
	v_div_fixup_f64 v[65:66], v[70:71], v[65:66], v[67:68]
	v_div_fixup_f64 v[60:61], v[78:79], v[75:76], v[60:61]
	v_div_fixup_f64 v[67:68], v[91:92], v[89:90], v[87:88]
	v_add_f64 v[70:71], v[111:112], v[103:104]
	v_add_f64 v[75:76], v[70:71], -v[111:112]
	v_add_f64 v[75:76], v[103:104], -v[75:76]
	v_add_f64 v[78:79], v[99:100], v[70:71]
	v_add_f64 v[87:88], v[78:79], -v[99:100]
	v_add_f64 v[70:71], v[70:71], -v[87:88]
	v_add_f64 v[75:76], v[97:98], v[75:76]
	v_add_f64 v[70:71], v[70:71], v[75:76]
	v_add_f64 v[70:71], v[78:79], v[70:71]
	v_cvt_i32_f64_e32 v75, v[101:102]
	v_add_f64 v[70:71], v[70:71], 1.0
	v_ldexp_f64 v[70:71], v[70:71], v75
	s_mov_b32 s7, 0x40863000
	v_cmp_nlt_f64_e32 vcc, s[6:7], v[105:106]
	s_mov_b32 s7, 0xc0874800
	v_cmp_ngt_f64_e64 s[2:3], s[6:7], v[105:106]
	v_cmp_neq_f64_e64 s[4:5], 0, v[85:86]
	v_cndmask_b32_e32 v71, v69, v71, vcc
	s_and_b64 s[2:3], s[4:5], s[2:3]
	v_cndmask_b32_e64 v71, 0, v71, s[2:3]
	s_and_b64 vcc, s[2:3], vcc
	v_cndmask_b32_e32 v70, 0, v70, vcc
	v_cmp_class_f64_e64 vcc, v[85:86], s28
	v_cndmask_b32_e64 v75, v70, 0, vcc
	v_cndmask_b32_e32 v69, v71, v69, vcc
	v_and_b32_e32 v69, 0x7fffffff, v69
	v_cmp_u_f64_e32 vcc, v[85:86], v[85:86]
	v_cndmask_b32_e32 v70, v69, v86, vcc
	v_cndmask_b32_e32 v69, v75, v85, vcc
	s_mov_b32 s49, 0xbff71547
	v_mul_f64 v[75:76], v[69:70], s[48:49]
	v_rndne_f64_e32 v[75:76], v[75:76]
	v_fma_f64 v[78:79], v[75:76], s[64:65], -v[69:70]
	v_mul_f64 v[85:86], v[75:76], s[66:67]
	v_add_f64 v[87:88], v[78:79], v[85:86]
	v_add_f64 v[78:79], v[78:79], -v[87:88]
	v_add_f64 v[78:79], v[78:79], v[85:86]
	v_mul_f64 v[85:86], v[87:88], v[87:88]
	v_fma_f64 v[89:90], v[87:88], v[87:88], -v[85:86]
	v_add_f64 v[91:92], v[78:79], v[78:79]
	v_fma_f64 v[89:90], v[87:88], v[91:92], v[89:90]
	v_fma_f64 v[89:90], v[78:79], v[78:79], v[89:90]
	v_add_f64 v[91:92], v[85:86], v[89:90]
	v_add_f64 v[85:86], v[91:92], -v[85:86]
	v_add_f64 v[85:86], v[89:90], -v[85:86]
	v_fma_f64 v[62:63], v[87:88], s[38:39], v[62:63]
	v_fma_f64 v[62:63], v[87:88], v[62:63], s[40:41]
	v_fma_f64 v[62:63], v[87:88], v[62:63], s[42:43]
	v_fma_f64 v[62:63], v[87:88], v[62:63], s[52:53]
	v_fma_f64 v[62:63], v[87:88], v[62:63], s[54:55]
	v_fma_f64 v[62:63], v[87:88], v[62:63], s[56:57]
	v_fma_f64 v[62:63], v[87:88], v[62:63], s[60:61]
	v_fma_f64 v[62:63], v[87:88], v[62:63], s[62:63]
	v_fma_f64 v[62:63], v[87:88], v[62:63], s[58:59]
	v_mul_f64 v[89:90], v[91:92], v[62:63]
	v_fma_f64 v[91:92], v[91:92], v[62:63], -v[89:90]
	v_fma_f64 v[62:63], v[85:86], v[62:63], v[91:92]
	s_mov_b32 s4, 0x41a00000
	v_sub_f32_e32 v71, s69, v17
	v_div_scale_f32 v81, s[2:3], s4, s4, v71
	v_rcp_f32_e32 v85, v81
	v_fma_f32 v86, -v81, v85, 1.0
	v_fma_f32 v85, v86, v85, v85
	v_div_scale_f32 v86, vcc, v71, s4, v71
	v_mul_f32_e32 v91, v86, v85
	v_fma_f32 v92, -v81, v91, v86
	v_fma_f32 v91, v92, v85, v91
	v_fma_f32 v81, -v81, v91, v86
	v_div_fmas_f32 v81, v81, v85, v91
	v_div_fixup_f32 v71, v81, s4, v71
	v_cmp_gt_f32_e32 vcc, s9, v71
	v_cndmask_b32_e32 v81, 0, v72, vcc
	v_add_f32_e32 v71, v71, v81
	v_mul_f32_e32 v81, s15, v71
	v_fma_f32 v85, v71, s15, -v81
	v_exp_f32_e32 v81, v81
	v_fma_f32 v85, v71, s47, v85
	v_exp_f32_e32 v85, v85
	v_mul_f32_e32 v81, v81, v85
	v_cndmask_b32_e32 v85, 1.0, v73, vcc
	v_fma_f32 v81, v85, v81, 1.0
	v_cmp_ngt_f32_e32 vcc, s46, v71
	v_cndmask_b32_e32 v81, 1.0, v81, vcc
	v_cmp_nlt_f32_e32 vcc, s45, v71
	s_mov_b32 s75, 0x3fe33333
	v_cndmask_b32_e32 v71, v30, v81, vcc
	v_cvt_f64_f32_e32 v[85:86], v71
	v_div_scale_f64 v[91:92], s[2:3], v[85:86], v[85:86], s[74:75]
	v_rcp_f64_e32 v[97:98], v[91:92]
	v_fma_f64 v[99:100], -v[91:92], v[97:98], 1.0
	v_fma_f64 v[97:98], v[97:98], v[99:100], v[97:98]
	v_fma_f64 v[99:100], -v[91:92], v[97:98], 1.0
	v_fma_f64 v[97:98], v[97:98], v[99:100], v[97:98]
	v_div_scale_f64 v[99:100], vcc, s[74:75], v[85:86], s[74:75]
	v_mul_f64 v[101:102], v[99:100], v[97:98]
	v_fma_f64 v[91:92], -v[91:92], v[101:102], v[99:100]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[91:92], v[91:92], v[97:98], v[101:102]
	v_add_f64 v[97:98], v[89:90], v[62:63]
	v_add_f64 v[89:90], v[97:98], -v[89:90]
	v_add_f64 v[62:63], v[62:63], -v[89:90]
	v_add_f64 v[89:90], v[87:88], v[97:98]
	v_add_f64 v[87:88], v[89:90], -v[87:88]
	v_add_f64 v[87:88], v[97:98], -v[87:88]
	v_add_f64 v[62:63], v[78:79], v[62:63]
	v_add_f64 v[62:63], v[87:88], v[62:63]
	v_add_f64 v[62:63], v[89:90], v[62:63]
	v_cvt_i32_f64_e32 v71, v[75:76]
	v_add_f64 v[62:63], v[62:63], 1.0
	v_ldexp_f64 v[62:63], v[62:63], v71
	s_mov_b32 s3, 0x3f942c3c
	s_mov_b32 s2, 0x9eecbfb1
	v_mov_b32_e32 v76, 0x3f947ae1
	v_mov_b32_e32 v75, s72
	v_fma_f64 v[75:76], v[62:63], s[2:3], v[75:76]
	v_div_scale_f64 v[62:63], s[2:3], v[75:76], v[75:76], 1.0
	v_rcp_f64_e32 v[78:79], v[62:63]
	v_fma_f64 v[87:88], -v[62:63], v[78:79], 1.0
	v_fma_f64 v[78:79], v[78:79], v[87:88], v[78:79]
	v_fma_f64 v[87:88], -v[62:63], v[78:79], 1.0
	v_fma_f64 v[78:79], v[78:79], v[87:88], v[78:79]
	v_div_scale_f64 v[87:88], vcc, 1.0, v[75:76], 1.0
	v_mul_f64 v[89:90], v[87:88], v[78:79]
	v_fma_f64 v[62:63], -v[62:63], v[89:90], v[87:88]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[78:79], v[62:63], v[78:79], v[89:90]
	v_cvt_f32_f64_e32 v35, v[35:36]
	v_cvt_f32_f64_e32 v36, v[60:61]
	v_mul_f32_e32 v35, v5, v35
	v_mul_f32_e32 v36, v6, v36
	v_sub_f32_e32 v60, 1.0, v5
	v_sub_f32_e32 v62, 1.0, v6
	v_fma_f32 v61, v60, v31, -v35
	v_fma_f32 v62, v62, v32, -v36
	v_div_fixup_f32 v31, v64, s44, v17
	v_cmp_gt_f32_e32 vcc, s9, v31
	v_cndmask_b32_e32 v32, 0, v72, vcc
	v_add_f32_e32 v31, v31, v32
	v_mul_f32_e32 v32, s15, v31
	v_fma_f32 v35, v31, s15, -v32
	v_exp_f32_e32 v32, v32
	v_fma_f32 v35, v31, s47, v35
	v_exp_f32_e32 v35, v35
	v_mul_f32_e32 v32, v32, v35
	v_cndmask_b32_e32 v35, 1.0, v73, vcc
	v_mul_f32_e32 v32, v35, v32
	v_cmp_ngt_f32_e32 vcc, s46, v31
	v_cndmask_b32_e32 v32, 0, v32, vcc
	v_cmp_nlt_f32_e32 vcc, s45, v31
	s_mov_b32 s73, 0xbfb47ae1
	v_cndmask_b32_e32 v31, v30, v32, vcc
	v_cvt_f64_f32_e32 v[31:32], v31
	v_mul_f64 v[31:32], v[31:32], s[72:73]
	v_cvt_f32_f64_e32 v31, v[31:32]
	v_cvt_f32_f64_e32 v32, v[65:66]
	v_mul_f32_e32 v31, v4, v31
	v_sub_f32_e32 v35, 1.0, v4
	v_fma_f32 v60, v35, v32, v31
	v_cvt_f32_f64_e32 v31, v[67:68]
	v_sub_f32_e32 v32, v58, v7
	v_div_scale_f32 v35, s[2:3], v31, v31, v32
	v_rcp_f32_e32 v36, v35
	v_fma_f32 v58, -v35, v36, 1.0
	v_fma_f32 v36, v58, v36, v36
	v_div_scale_f32 v58, vcc, v32, v31, v32
	v_mul_f32_e32 v63, v58, v36
	v_fma_f32 v64, -v35, v63, v58
	v_fma_f32 v63, v64, v36, v63
	v_fma_f32 v35, -v35, v63, v58
	v_div_fmas_f32 v35, v35, v36, v63
	v_div_fixup_f32 v63, v35, v31, v32
	v_mov_b32_e32 v32, s27
	v_mov_b32_e32 v31, s26
	flat_store_dwordx4 v[31:32], v[60:63]
	v_div_fixup_f64 v[31:32], v[91:92], v[85:86], s[74:75]
	s_mov_b32 s3, 0xbf885f06
	s_mov_b32 s2, 0xf6944674
	v_cvt_f64_f32_e32 v[35:36], v1
	v_mul_f64 v[35:36], v[35:36], s[2:3]
	s_mov_b32 s75, 0x3ffb3333
	v_sub_f32_e32 v1, 1.0, v1
	v_cvt_f64_f32_e32 v[64:65], v14
	v_mul_f64 v[60:61], v[64:65], s[74:75]
	v_cvt_f64_f32_e32 v[62:63], v1
	v_fma_f64 v[35:36], v[60:61], v[62:63], v[35:36]
	v_cvt_f64_f32_e32 v[60:61], v2
	v_mul_f64 v[60:61], v[60:61], s[2:3]
	v_sub_f32_e32 v2, 1.0, v2
	v_cvt_f64_f32_e32 v[66:67], v15
	v_mul_f64 v[62:63], v[66:67], s[74:75]
	v_cvt_f64_f32_e32 v[85:86], v2
	v_fma_f64 v[85:86], v[62:63], v[85:86], v[60:61]
	v_div_fixup_f64 v[60:61], v[78:79], v[75:76], 1.0
	v_cndmask_b32_e64 v58, 0, v96, s[0:1]
	v_cmp_ngt_f64_e32 vcc, s[70:71], v[93:94]
	s_mov_b32 s7, 0xc0900000
	v_cmp_ngt_f64_e64 s[2:3], s[6:7], v[69:70]
	s_mov_b32 s7, 0x4090cc00
	v_mov_b32_e32 v63, 0x40490000
	v_cndmask_b32_e64 v68, 0, v61, s[2:3]
	v_cmp_nlt_f64_e64 s[4:5], s[6:7], v[69:70]
	v_cndmask_b32_e32 v62, v37, v58, vcc
	s_and_b64 vcc, vcc, s[0:1]
	v_cndmask_b32_e32 v61, 0, v95, vcc
	v_add_f64 v[31:32], v[31:32], v[61:62]
	v_cndmask_b32_e64 v61, v63, v68, s[4:5]
	s_and_b64 vcc, s[4:5], s[2:3]
	v_cndmask_b32_e32 v60, 0, v60, vcc
	v_cvt_f32_f64_e32 v31, v[31:32]
	v_cvt_f32_f64_e32 v32, v[60:61]
	v_sub_f32_e32 v31, v31, v0
	v_div_scale_f32 v37, s[0:1], v32, v32, v31
	v_rcp_f32_e32 v58, v37
	v_fma_f32 v60, -v37, v58, 1.0
	v_fma_f32 v58, v60, v58, v58
	v_div_scale_f32 v60, vcc, v31, v32, v31
	v_mul_f32_e32 v61, v60, v58
	v_fma_f32 v62, -v37, v61, v60
	v_fma_f32 v61, v62, v58, v61
	v_fma_f32 v37, -v37, v61, v60
	v_div_fmas_f32 v37, v37, v58, v61
	v_div_fixup_f32 v63, v84, v82, v83
	v_div_fixup_f32 v60, v37, v32, v31
	v_cvt_f32_f64_e32 v61, v[35:36]
	v_cvt_f32_f64_e32 v62, v[85:86]
	s_add_u32 s0, s26, 16
	s_addc_u32 s1, s27, 0
	v_mov_b32_e32 v32, s1
	v_mov_b32_e32 v31, s0
	flat_store_dwordx4 v[31:32], v[60:63]
	s_mov_b32 s0, 0x3d19565e
	v_add_f32_e32 v31, v17, v17
	v_mul_f32_e32 v31, s0, v31
	v_cmp_gt_f32_e32 vcc, s9, v31
	v_cndmask_b32_e32 v32, 0, v72, vcc
	v_add_f32_e32 v31, v31, v32
	v_mul_f32_e32 v32, s15, v31
	v_fma_f32 v35, v31, s15, -v32
	v_exp_f32_e32 v32, v32
	v_fma_f32 v35, v31, s47, v35
	v_exp_f32_e32 v35, v35
	v_mul_f32_e32 v32, v32, v35
	v_cndmask_b32_e32 v35, 1.0, v73, vcc
	v_mul_f32_e32 v32, v35, v32
	v_cmp_ngt_f32_e32 vcc, s46, v31
	v_cndmask_b32_e32 v35, 0, v32, vcc
	v_cmp_nlt_f32_e32 vcc, s45, v31
	s_mov_b32 s38, 0x47bc7280
	s_mov_b32 s3, 0x3fd5d2f1
	s_mov_b32 s2, 0xa9fbe76d
	v_mul_f64 v[31:32], v[64:65], s[2:3]
	s_mov_b32 s5, 0xbfe3a43f
	s_mov_b32 s4, 0xdd0e5605
	v_cndmask_b32_e32 v58, v30, v35, vcc
	v_cvt_f64_f32_e32 v[36:37], v58
	v_fma_f64 v[31:32], v[31:32], v[36:37], s[4:5]
	v_mul_f32_e32 v35, s38, v17
	v_mul_f32_e32 v35, s0, v35
	v_mul_f32_e32 v60, 0x3b0d8ec9, v35
	v_cvt_f64_f32_e32 v[60:61], v60
	v_mul_f64 v[31:32], v[31:32], v[60:61]
	v_add_f32_e32 v58, -1.0, v58
	v_cvt_f64_f32_e32 v[62:63], v58
	v_div_scale_f64 v[64:65], s[40:41], v[62:63], v[62:63], v[31:32]
	v_rcp_f64_e32 v[68:69], v[64:65]
	v_fma_f64 v[70:71], -v[64:65], v[68:69], 1.0
	v_fma_f64 v[68:69], v[68:69], v[70:71], v[68:69]
	v_fma_f64 v[70:71], -v[64:65], v[68:69], 1.0
	v_fma_f64 v[68:69], v[68:69], v[70:71], v[68:69]
	v_div_scale_f64 v[70:71], vcc, v[31:32], v[62:63], v[31:32]
	v_mul_f64 v[75:76], v[70:71], v[68:69]
	v_fma_f64 v[64:65], -v[64:65], v[75:76], v[70:71]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[64:65], v[64:65], v[68:69], v[75:76]
	v_mul_f64 v[66:67], v[66:67], s[2:3]
	v_fma_f64 v[36:37], v[66:67], v[36:37], s[4:5]
	v_mul_f64 v[36:37], v[36:37], v[60:61]
	v_div_scale_f64 v[60:61], s[2:3], v[62:63], v[62:63], v[36:37]
	v_rcp_f64_e32 v[66:67], v[60:61]
	v_fma_f64 v[68:69], -v[60:61], v[66:67], 1.0
	v_fma_f64 v[66:67], v[66:67], v[68:69], v[66:67]
	v_fma_f64 v[68:69], -v[60:61], v[66:67], 1.0
	v_fma_f64 v[66:67], v[66:67], v[68:69], v[66:67]
	v_div_scale_f64 v[68:69], vcc, v[36:37], v[62:63], v[36:37]
	v_mul_f64 v[70:71], v[68:69], v[66:67]
	v_fma_f64 v[60:61], -v[60:61], v[70:71], v[68:69]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[60:61], v[60:61], v[66:67], v[70:71]
	v_div_fixup_f64 v[83:84], v[64:65], v[62:63], v[31:32]
	v_div_fixup_f64 v[60:61], v[60:61], v[62:63], v[36:37]
	v_mul_f32_e32 v31, s0, v17
	v_cmp_gt_f32_e32 vcc, s9, v31
	v_cndmask_b32_e32 v32, 0, v72, vcc
	v_add_f32_e32 v31, v31, v32
	v_mul_f32_e32 v32, s15, v31
	v_fma_f32 v36, v31, s15, -v32
	v_exp_f32_e32 v32, v32
	v_fma_f32 v36, v31, s47, v36
	v_exp_f32_e32 v36, v36
	v_mul_f32_e32 v32, v32, v36
	v_cndmask_b32_e32 v36, 1.0, v73, vcc
	v_mul_f32_e32 v32, v36, v32
	v_cmp_ngt_f32_e32 vcc, s46, v31
	v_cndmask_b32_e32 v36, 0, v32, vcc
	v_cmp_nlt_f32_e32 vcc, s45, v31
	s_mov_b32 s7, 0x3fe80000
	v_cvt_f64_f32_e32 v[31:32], v26
	v_mul_f64 v[31:32], v[31:32], s[6:7]
	s_mov_b32 s3, 0xc05a4000
	s_mov_b32 s2, s6
	v_cndmask_b32_e32 v58, v30, v36, vcc
	v_cvt_f64_f32_e32 v[36:37], v58
	v_fma_f64 v[31:32], v[31:32], v[36:37], s[2:3]
	v_mul_f32_e32 v62, 0x3280d959, v35
	v_cvt_f64_f32_e32 v[62:63], v62
	v_mul_f64 v[64:65], v[31:32], v[62:63]
	v_add_f32_e32 v31, -1.0, v58
	v_cvt_f64_f32_e32 v[31:32], v31
	v_div_scale_f64 v[66:67], s[4:5], v[31:32], v[31:32], v[64:65]
	v_rcp_f64_e32 v[68:69], v[66:67]
	v_fma_f64 v[70:71], -v[66:67], v[68:69], 1.0
	v_fma_f64 v[68:69], v[68:69], v[70:71], v[68:69]
	v_fma_f64 v[70:71], -v[66:67], v[68:69], 1.0
	v_fma_f64 v[68:69], v[68:69], v[70:71], v[68:69]
	v_div_scale_f64 v[70:71], vcc, v[64:65], v[31:32], v[64:65]
	v_mul_f64 v[75:76], v[70:71], v[68:69]
	v_fma_f64 v[66:67], -v[66:67], v[75:76], v[70:71]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[66:67], v[66:67], v[68:69], v[75:76]
	v_cvt_f64_f32_e32 v[68:69], v27
	v_mul_f64 v[68:69], v[68:69], s[6:7]
	v_fma_f64 v[68:69], v[68:69], v[36:37], s[2:3]
	v_mul_f64 v[68:69], v[68:69], v[62:63]
	v_div_scale_f64 v[62:63], s[2:3], v[31:32], v[31:32], v[68:69]
	v_rcp_f64_e32 v[70:71], v[62:63]
	v_fma_f64 v[75:76], -v[62:63], v[70:71], 1.0
	v_fma_f64 v[70:71], v[70:71], v[75:76], v[70:71]
	v_fma_f64 v[75:76], -v[62:63], v[70:71], 1.0
	v_fma_f64 v[70:71], v[70:71], v[75:76], v[70:71]
	v_div_scale_f64 v[75:76], vcc, v[68:69], v[31:32], v[68:69]
	v_mul_f64 v[78:79], v[75:76], v[70:71]
	v_fma_f64 v[62:63], -v[62:63], v[78:79], v[75:76]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[70:71], v[62:63], v[70:71], v[78:79]
	v_frexp_mant_f32_e64 v58, |v14|
	v_cmp_gt_f32_e32 vcc, s35, v58
	v_cndmask_b32_e64 v62, 0, 1, vcc
	v_ldexp_f32 v58, v58, v62
	v_add_f32_e32 v62, 1.0, v58
	v_sub_f32_e32 v63, v62, v58
	v_sub_f32_e32 v75, v62, v63
	v_sub_f32_e32 v63, 1.0, v63
	v_sub_f32_e32 v75, v58, v75
	v_add_f32_e32 v63, v63, v75
	v_frexp_exp_i32_f32_e64 v75, |v14|
	v_subbrev_u32_e32 v75, vcc, 0, v75, vcc
	v_cvt_f32_i32_e32 v75, v75
	v_mul_f32_e32 v76, s24, v75
	v_fma_f32 v78, v75, s24, -v76
	v_fma_f32 v75, v75, s25, v78
	v_add_f32_e32 v58, -1.0, v58
	v_rcp_f32_e32 v78, v62
	v_mul_f32_e32 v79, v58, v78
	v_mul_f32_e32 v81, v62, v79
	v_fma_f32 v62, v79, v62, -v81
	v_fma_f32 v62, v79, v63, v62
	v_add_f32_e32 v63, v76, v75
	v_sub_f32_e32 v76, v63, v76
	v_sub_f32_e32 v75, v75, v76
	v_add_f32_e32 v76, v81, v62
	v_sub_f32_e32 v81, v76, v81
	v_sub_f32_e32 v62, v62, v81
	v_sub_f32_e32 v81, v58, v76
	v_sub_f32_e32 v58, v58, v81
	v_sub_f32_e32 v58, v58, v76
	v_sub_f32_e32 v58, v58, v62
	v_add_f32_e32 v58, v81, v58
	v_mul_f32_e32 v58, v78, v58
	v_add_f32_e32 v62, v79, v58
	v_sub_f32_e32 v76, v62, v79
	v_sub_f32_e32 v58, v58, v76
	v_mul_f32_e32 v76, v62, v62
	v_fma_f32 v78, v62, v62, -v76
	v_add_f32_e32 v79, v58, v58
	v_fma_f32 v78, v62, v79, v78
	v_fma_f32 v78, v58, v58, v78
	v_add_f32_e32 v79, v76, v78
	v_sub_f32_e32 v76, v79, v76
	v_sub_f32_e32 v76, v78, v76
	v_fma_f32 v78, v79, s29, v55
	v_fma_f32 v78, v79, v78, s30
	v_mul_f32_e32 v81, v79, v78
	v_fma_f32 v82, v79, v78, -v81
	v_fma_f32 v78, v76, v78, v82
	v_mul_f32_e32 v76, v62, v76
	v_fma_f32 v76, v79, v58, v76
	v_mul_f32_e32 v82, v62, v79
	v_fma_f32 v79, v79, v62, -v82
	v_add_f32_e32 v76, v79, v76
	v_add_f32_e32 v79, v81, v78
	v_sub_f32_e32 v81, v79, v81
	v_sub_f32_e32 v78, v78, v81
	v_add_f32_e32 v81, v82, v76
	v_sub_f32_e32 v82, v81, v82
	v_sub_f32_e32 v76, v76, v82
	v_add_f32_e32 v82, s31, v79
	v_add_f32_e32 v85, s33, v82
	v_sub_f32_e32 v79, v79, v85
	v_add_f32_e32 v78, s34, v78
	v_add_f32_e32 v78, v79, v78
	v_add_f32_e32 v79, v82, v78
	v_sub_f32_e32 v82, v79, v82
	v_sub_f32_e32 v78, v78, v82
	v_mul_f32_e32 v76, v76, v79
	v_fma_f32 v76, v81, v78, v76
	v_mul_f32_e32 v78, v81, v79
	v_fma_f32 v79, v81, v79, -v78
	v_add_f32_e32 v76, v79, v76
	v_add_f32_e32 v79, v78, v76
	v_sub_f32_e32 v78, v79, v78
	v_sub_f32_e32 v76, v76, v78
	v_ldexp_f32 v62, v62, 1
	v_add_f32_e32 v78, v62, v79
	v_sub_f32_e32 v62, v78, v62
	v_sub_f32_e32 v62, v79, v62
	v_ldexp_f32 v58, v58, 1
	v_add_f32_e32 v58, v58, v76
	v_add_f32_e32 v58, v62, v58
	v_add_f32_e32 v62, v78, v58
	v_sub_f32_e32 v76, v62, v78
	v_sub_f32_e32 v58, v58, v76
	v_add_f32_e32 v76, v63, v62
	v_sub_f32_e32 v78, v76, v63
	v_sub_f32_e32 v62, v62, v78
	v_sub_f32_e32 v78, v76, v78
	v_sub_f32_e32 v63, v63, v78
	v_add_f32_e32 v62, v62, v63
	v_add_f32_e32 v63, v75, v58
	v_sub_f32_e32 v78, v63, v75
	v_sub_f32_e32 v58, v58, v78
	v_sub_f32_e32 v78, v63, v78
	v_sub_f32_e32 v75, v75, v78
	v_add_f32_e32 v62, v63, v62
	v_add_f32_e32 v58, v58, v75
	v_add_f32_e32 v63, v76, v62
	v_sub_f32_e32 v75, v63, v76
	v_sub_f32_e32 v62, v62, v75
	v_add_f32_e32 v62, v58, v62
	v_add_f32_e32 v58, v63, v62
	v_sub_f32_e32 v63, v58, v63
	v_sub_f32_e32 v82, v62, v63
	s_mov_b32 s2, 0x3fcccccd
	v_mul_f32_e32 v62, s2, v58
	v_fma_f32 v63, v58, s2, -v62
	v_fma_f32 v63, v82, s2, v63
	v_add_f32_e32 v75, v62, v63
	v_cmp_class_f32_e64 vcc, v62, s28
	v_sub_f32_e32 v78, v75, v62
	v_cndmask_b32_e32 v76, v75, v62, vcc
	v_sub_f32_e32 v62, v63, v78
	v_mul_f32_e32 v63, s15, v76
	v_rndne_f32_e32 v78, v63
	v_mul_f32_e32 v63, s23, v78
	v_sub_f32_e32 v75, v76, v63
	v_sub_f32_e32 v79, v75, v76
	v_add_f32_e32 v63, v63, v79
	v_sub_f32_e32 v79, v75, v79
	v_sub_f32_e32 v79, v76, v79
	v_sub_f32_e32 v63, v79, v63
	v_cmp_neq_f32_e64 vcc, |v76|, s16
	v_cndmask_b32_e32 v62, 0, v62, vcc
	v_add_f32_e32 v62, v62, v63
	v_add_f32_e32 v63, v75, v62
	v_sub_f32_e32 v75, v63, v75
	v_sub_f32_e32 v62, v62, v75
	v_mul_f32_e32 v75, s22, v78
	v_sub_f32_e32 v79, v63, v75
	v_sub_f32_e32 v63, v63, v79
	v_sub_f32_e32 v63, v63, v75
	v_add_f32_e32 v62, v62, v63
	v_add_f32_e32 v63, v79, v62
	v_sub_f32_e32 v75, v63, v79
	v_sub_f32_e32 v62, v62, v75
	v_mul_f32_e32 v75, s21, v78
	v_sub_f32_e32 v81, v63, v75
	v_sub_f32_e32 v63, v63, v81
	v_sub_f32_e32 v63, v63, v75
	v_add_f32_e32 v62, v62, v63
	v_add_f32_e32 v79, v81, v62
	v_sub_f32_e32 v63, v79, v81
	v_sub_f32_e32 v81, v62, v63
	v_mul_f32_e32 v62, v79, v79
	v_fma_f32 v63, v79, v79, -v62
	v_add_f32_e32 v75, v81, v81
	v_fma_f32 v63, v79, v75, v63
	v_fma_f32 v63, v81, v81, v63
	v_add_f32_e32 v75, v62, v63
	v_sub_f32_e32 v62, v75, v62
	v_sub_f32_e32 v62, v63, v62
	v_fma_f32 v63, v79, s20, v54
	v_fma_f32 v63, v79, v63, s19
	v_fma_f32 v63, v79, v63, s18
	v_fma_f32 v63, v79, v63, s17
	v_mul_f32_e32 v85, v63, v75
	v_fma_f32 v75, v75, v63, -v85
	v_fma_f32 v86, v62, v63, v75
	v_cvt_f32_f64_e32 v62, v[83:84]
	v_cvt_f32_f64_e32 v63, v[60:61]
	s_mov_b32 s43, 0x3f666666
	s_mov_b32 s37, 0x3fdccccc
	v_mul_f32_e32 v60, s43, v62
	v_mul_f32_e32 v60, v7, v60
	v_mul_f32_e32 v60, v0, v60
	v_mul_f32_e32 v60, v1, v60
	v_cvt_f64_f32_e32 v[60:61], v60
	v_mul_f64 v[60:61], v[60:61], s[36:37]
	v_cvt_f32_f64_e32 v61, v[60:61]
	s_mov_b32 s41, 0x3dccccd0
	v_mul_f32_e32 v60, s41, v63
	v_mul_f32_e32 v60, v7, v60
	v_mul_f32_e32 v60, v0, v60
	v_mul_f32_e32 v60, v2, v60
	v_cvt_f64_f32_e32 v[62:63], v60
	v_mul_f64 v[62:63], v[62:63], s[36:37]
	v_cvt_f32_f64_e32 v60, v[62:63]
	s_mov_b32 s39, 0xaf17d7b2
	s_mov_b32 s52, 0x368aea72
	v_add_f32_e32 v62, v61, v60
	v_mul_f32_e32 v83, s39, v62
	v_div_scale_f32 v62, s[4:5], s52, s52, v83
	v_rcp_f32_e32 v63, v62
	v_fma_f32 v75, -v62, v63, 1.0
	v_fma_f32 v63, v75, v63, v63
	v_div_scale_f32 v75, vcc, v83, s52, v83
	v_mul_f32_e32 v84, v75, v63
	v_fma_f32 v87, -v62, v84, v75
	v_fma_f32 v84, v87, v63, v84
	v_fma_f32 v62, -v62, v84, v75
	v_div_fmas_f32 v84, v62, v63, v84
	s_mov_b32 s1, 0x398637bd
	v_div_scale_f32 v62, s[4:5], v14, v14, s1
	v_rcp_f32_e32 v63, v62
	v_fma_f32 v75, -v62, v63, 1.0
	v_fma_f32 v63, v75, v63, v63
	v_div_scale_f32 v75, vcc, s1, v14, s1
	v_mul_f32_e32 v87, v75, v63
	v_fma_f32 v88, -v62, v87, v75
	v_fma_f32 v87, v88, v63, v87
	v_fma_f32 v62, -v62, v87, v75
	v_div_fmas_f32 v62, v62, v63, v87
	v_frexp_mant_f32_e64 v63, |v26|
	v_cmp_gt_f32_e32 vcc, s35, v63
	v_cndmask_b32_e64 v75, 0, 1, vcc
	v_ldexp_f32 v63, v63, v75
	v_add_f32_e32 v75, 1.0, v63
	v_sub_f32_e32 v87, v75, v63
	v_sub_f32_e32 v88, v75, v87
	v_sub_f32_e32 v87, 1.0, v87
	v_sub_f32_e32 v88, v63, v88
	v_add_f32_e32 v87, v87, v88
	v_frexp_exp_i32_f32_e64 v88, |v26|
	v_subbrev_u32_e32 v88, vcc, 0, v88, vcc
	v_cvt_f32_i32_e32 v88, v88
	v_mul_f32_e32 v89, s24, v88
	v_fma_f32 v90, v88, s24, -v89
	v_fma_f32 v88, v88, s25, v90
	v_add_f32_e32 v63, -1.0, v63
	v_rcp_f32_e32 v90, v75
	v_mul_f32_e32 v91, v63, v90
	v_mul_f32_e32 v92, v75, v91
	v_fma_f32 v75, v91, v75, -v92
	v_fma_f32 v75, v91, v87, v75
	v_add_f32_e32 v87, v89, v88
	v_sub_f32_e32 v89, v87, v89
	v_sub_f32_e32 v88, v88, v89
	v_add_f32_e32 v89, v92, v75
	v_sub_f32_e32 v92, v89, v92
	v_sub_f32_e32 v75, v75, v92
	v_sub_f32_e32 v92, v63, v89
	v_sub_f32_e32 v63, v63, v92
	v_sub_f32_e32 v63, v63, v89
	v_sub_f32_e32 v63, v63, v75
	v_add_f32_e32 v63, v92, v63
	v_mul_f32_e32 v63, v90, v63
	v_add_f32_e32 v75, v91, v63
	v_sub_f32_e32 v89, v75, v91
	v_sub_f32_e32 v63, v63, v89
	v_mul_f32_e32 v89, v75, v75
	v_fma_f32 v90, v75, v75, -v89
	v_add_f32_e32 v91, v63, v63
	v_fma_f32 v90, v75, v91, v90
	v_fma_f32 v90, v63, v63, v90
	v_add_f32_e32 v91, v89, v90
	v_sub_f32_e32 v89, v91, v89
	v_sub_f32_e32 v89, v90, v89
	v_fma_f32 v90, v91, s29, v55
	v_fma_f32 v90, v91, v90, s30
	v_mul_f32_e32 v92, v91, v90
	v_fma_f32 v93, v91, v90, -v92
	v_fma_f32 v90, v89, v90, v93
	v_mul_f32_e32 v89, v75, v89
	v_fma_f32 v89, v91, v63, v89
	v_mul_f32_e32 v93, v75, v91
	v_fma_f32 v91, v91, v75, -v93
	v_add_f32_e32 v89, v91, v89
	v_add_f32_e32 v91, v92, v90
	v_sub_f32_e32 v92, v91, v92
	v_sub_f32_e32 v90, v90, v92
	v_add_f32_e32 v92, v93, v89
	v_sub_f32_e32 v93, v92, v93
	v_sub_f32_e32 v89, v89, v93
	v_add_f32_e32 v93, s31, v91
	v_add_f32_e32 v94, s33, v93
	v_sub_f32_e32 v91, v91, v94
	v_add_f32_e32 v90, s34, v90
	v_add_f32_e32 v90, v91, v90
	v_add_f32_e32 v91, v93, v90
	v_sub_f32_e32 v93, v91, v93
	v_sub_f32_e32 v90, v90, v93
	v_mul_f32_e32 v89, v89, v91
	v_fma_f32 v89, v92, v90, v89
	v_mul_f32_e32 v90, v92, v91
	v_fma_f32 v91, v92, v91, -v90
	v_add_f32_e32 v89, v91, v89
	v_add_f32_e32 v91, v90, v89
	v_sub_f32_e32 v90, v91, v90
	v_sub_f32_e32 v89, v89, v90
	v_ldexp_f32 v75, v75, 1
	v_add_f32_e32 v90, v75, v91
	v_sub_f32_e32 v75, v90, v75
	v_sub_f32_e32 v75, v91, v75
	v_ldexp_f32 v63, v63, 1
	v_add_f32_e32 v63, v63, v89
	v_add_f32_e32 v63, v75, v63
	v_add_f32_e32 v75, v90, v63
	v_sub_f32_e32 v89, v75, v90
	v_sub_f32_e32 v63, v63, v89
	v_add_f32_e32 v89, v87, v75
	v_sub_f32_e32 v90, v89, v87
	v_sub_f32_e32 v75, v75, v90
	v_sub_f32_e32 v90, v89, v90
	v_sub_f32_e32 v87, v87, v90
	v_add_f32_e32 v75, v75, v87
	v_add_f32_e32 v87, v88, v63
	v_sub_f32_e32 v90, v87, v88
	v_sub_f32_e32 v63, v63, v90
	v_sub_f32_e32 v90, v87, v90
	v_sub_f32_e32 v88, v88, v90
	v_add_f32_e32 v75, v87, v75
	v_add_f32_e32 v63, v63, v88
	v_add_f32_e32 v87, v89, v75
	v_sub_f32_e32 v88, v87, v89
	v_sub_f32_e32 v75, v75, v88
	v_add_f32_e32 v63, v63, v75
	v_add_f32_e32 v75, v87, v63
	v_sub_f32_e32 v87, v75, v87
	v_sub_f32_e32 v63, v63, v87
	s_mov_b32 s42, 0x40400000
	v_mul_f32_e32 v87, 0, v75
	v_fma_f32 v63, v63, s42, v87
	v_mul_f32_e32 v87, s42, v75
	v_fma_f32 v75, v75, s42, -v87
	v_add_f32_e32 v63, v75, v63
	v_add_f32_e32 v75, v87, v63
	v_cmp_class_f32_e64 vcc, v87, s28
	v_sub_f32_e32 v88, v75, v87
	v_cndmask_b32_e32 v75, v75, v87, vcc
	v_sub_f32_e32 v63, v63, v88
	v_mul_f32_e32 v87, s15, v75
	v_rndne_f32_e32 v87, v87
	v_mul_f32_e32 v88, s23, v87
	v_sub_f32_e32 v89, v75, v88
	v_sub_f32_e32 v90, v89, v75
	v_add_f32_e32 v88, v88, v90
	v_sub_f32_e32 v90, v89, v90
	v_sub_f32_e32 v90, v75, v90
	v_sub_f32_e32 v88, v90, v88
	v_cmp_neq_f32_e64 vcc, |v75|, s16
	v_cndmask_b32_e32 v63, 0, v63, vcc
	v_add_f32_e32 v63, v63, v88
	v_add_f32_e32 v88, v89, v63
	v_sub_f32_e32 v89, v88, v89
	v_sub_f32_e32 v63, v63, v89
	v_mul_f32_e32 v89, s22, v87
	v_sub_f32_e32 v90, v88, v89
	v_sub_f32_e32 v88, v88, v90
	v_sub_f32_e32 v88, v88, v89
	v_add_f32_e32 v63, v63, v88
	v_add_f32_e32 v88, v90, v63
	v_sub_f32_e32 v89, v88, v90
	v_sub_f32_e32 v63, v63, v89
	v_mul_f32_e32 v89, s21, v87
	v_sub_f32_e32 v90, v88, v89
	v_sub_f32_e32 v88, v88, v90
	v_sub_f32_e32 v88, v88, v89
	v_add_f32_e32 v63, v63, v88
	v_add_f32_e32 v88, v90, v63
	v_sub_f32_e32 v89, v88, v90
	v_sub_f32_e32 v89, v63, v89
	v_mul_f32_e32 v63, v88, v88
	v_fma_f32 v90, v88, v88, -v63
	v_add_f32_e32 v91, v89, v89
	v_fma_f32 v90, v88, v91, v90
	v_fma_f32 v90, v89, v89, v90
	v_add_f32_e32 v91, v63, v90
	v_sub_f32_e32 v63, v91, v63
	v_sub_f32_e32 v63, v90, v63
	v_fma_f32 v90, v88, s20, v54
	v_fma_f32 v90, v88, v90, s19
	v_fma_f32 v90, v88, v90, s18
	v_fma_f32 v90, v88, v90, s17
	v_mul_f32_e32 v92, v90, v91
	v_fma_f32 v91, v91, v90, -v92
	v_fma_f32 v90, v63, v90, v91
	v_div_fixup_f32 v91, v62, v14, s1
	v_frexp_mant_f32_e64 v62, |v91|
	v_cmp_gt_f32_e32 vcc, s35, v62
	v_cndmask_b32_e64 v63, 0, 1, vcc
	v_ldexp_f32 v62, v62, v63
	v_add_f32_e32 v63, 1.0, v62
	v_sub_f32_e32 v93, v63, v62
	v_sub_f32_e32 v94, v63, v93
	v_sub_f32_e32 v93, 1.0, v93
	v_sub_f32_e32 v94, v62, v94
	v_add_f32_e32 v93, v93, v94
	v_frexp_exp_i32_f32_e64 v94, |v91|
	v_subbrev_u32_e32 v94, vcc, 0, v94, vcc
	v_cvt_f32_i32_e32 v94, v94
	v_mul_f32_e32 v95, s24, v94
	v_fma_f32 v96, v94, s24, -v95
	v_fma_f32 v94, v94, s25, v96
	v_add_f32_e32 v62, -1.0, v62
	v_rcp_f32_e32 v96, v63
	v_mul_f32_e32 v97, v62, v96
	v_mul_f32_e32 v98, v63, v97
	v_fma_f32 v63, v97, v63, -v98
	v_fma_f32 v63, v97, v93, v63
	v_add_f32_e32 v93, v95, v94
	v_sub_f32_e32 v95, v93, v95
	v_sub_f32_e32 v94, v94, v95
	v_add_f32_e32 v95, v98, v63
	v_sub_f32_e32 v98, v95, v98
	v_sub_f32_e32 v63, v63, v98
	v_sub_f32_e32 v98, v62, v95
	v_sub_f32_e32 v62, v62, v98
	v_sub_f32_e32 v62, v62, v95
	v_sub_f32_e32 v62, v62, v63
	v_add_f32_e32 v62, v98, v62
	v_mul_f32_e32 v62, v96, v62
	v_add_f32_e32 v63, v97, v62
	v_sub_f32_e32 v95, v63, v97
	v_sub_f32_e32 v62, v62, v95
	v_mul_f32_e32 v95, v63, v63
	v_fma_f32 v96, v63, v63, -v95
	v_add_f32_e32 v97, v62, v62
	v_fma_f32 v96, v63, v97, v96
	v_fma_f32 v96, v62, v62, v96
	v_add_f32_e32 v97, v95, v96
	v_sub_f32_e32 v95, v97, v95
	v_sub_f32_e32 v95, v96, v95
	v_fma_f32 v96, v97, s29, v55
	v_fma_f32 v96, v97, v96, s30
	v_mul_f32_e32 v98, v97, v96
	v_fma_f32 v99, v97, v96, -v98
	v_fma_f32 v96, v95, v96, v99
	v_mul_f32_e32 v95, v63, v95
	v_fma_f32 v95, v97, v62, v95
	v_mul_f32_e32 v99, v63, v97
	v_fma_f32 v97, v97, v63, -v99
	v_add_f32_e32 v95, v97, v95
	v_add_f32_e32 v97, v98, v96
	v_sub_f32_e32 v98, v97, v98
	v_sub_f32_e32 v96, v96, v98
	v_add_f32_e32 v98, v99, v95
	v_sub_f32_e32 v99, v98, v99
	v_sub_f32_e32 v95, v95, v99
	v_add_f32_e32 v99, s31, v97
	v_add_f32_e32 v100, s33, v99
	v_sub_f32_e32 v97, v97, v100
	v_add_f32_e32 v96, s34, v96
	v_add_f32_e32 v96, v97, v96
	v_add_f32_e32 v97, v99, v96
	v_sub_f32_e32 v99, v97, v99
	v_sub_f32_e32 v96, v96, v99
	v_mul_f32_e32 v95, v95, v97
	v_fma_f32 v95, v98, v96, v95
	v_mul_f32_e32 v96, v98, v97
	v_fma_f32 v97, v98, v97, -v96
	v_add_f32_e32 v95, v97, v95
	v_add_f32_e32 v97, v96, v95
	v_sub_f32_e32 v96, v97, v96
	v_sub_f32_e32 v95, v95, v96
	v_ldexp_f32 v63, v63, 1
	v_add_f32_e32 v96, v63, v97
	v_sub_f32_e32 v63, v96, v63
	v_sub_f32_e32 v63, v97, v63
	v_ldexp_f32 v62, v62, 1
	v_add_f32_e32 v62, v62, v95
	v_add_f32_e32 v62, v63, v62
	v_add_f32_e32 v63, v96, v62
	v_sub_f32_e32 v95, v63, v96
	v_sub_f32_e32 v62, v62, v95
	v_add_f32_e32 v95, v93, v63
	v_sub_f32_e32 v96, v95, v93
	v_sub_f32_e32 v63, v63, v96
	v_sub_f32_e32 v96, v95, v96
	v_sub_f32_e32 v93, v93, v96
	v_add_f32_e32 v63, v63, v93
	v_add_f32_e32 v93, v94, v62
	v_sub_f32_e32 v96, v93, v94
	v_sub_f32_e32 v62, v62, v96
	v_sub_f32_e32 v96, v93, v96
	v_sub_f32_e32 v94, v94, v96
	v_add_f32_e32 v63, v93, v63
	v_add_f32_e32 v62, v62, v94
	v_add_f32_e32 v93, v95, v63
	v_sub_f32_e32 v94, v93, v95
	v_sub_f32_e32 v63, v63, v94
	v_add_f32_e32 v62, v62, v63
	v_add_f32_e32 v63, v93, v62
	v_sub_f32_e32 v93, v63, v93
	v_sub_f32_e32 v62, v62, v93
	v_mul_f32_e32 v93, 0, v63
	v_fma_f32 v62, v62, s42, v93
	v_mul_f32_e32 v93, s42, v63
	v_fma_f32 v63, v63, s42, -v93
	v_add_f32_e32 v62, v63, v62
	v_add_f32_e32 v63, v93, v62
	v_cmp_class_f32_e64 vcc, v93, s28
	v_sub_f32_e32 v94, v63, v93
	v_cndmask_b32_e32 v63, v63, v93, vcc
	v_sub_f32_e32 v62, v62, v94
	v_mul_f32_e32 v93, s15, v63
	v_rndne_f32_e32 v93, v93
	v_mul_f32_e32 v94, s23, v93
	v_sub_f32_e32 v95, v63, v94
	v_sub_f32_e32 v96, v95, v63
	v_add_f32_e32 v94, v94, v96
	v_sub_f32_e32 v96, v95, v96
	v_sub_f32_e32 v96, v63, v96
	v_sub_f32_e32 v94, v96, v94
	v_cmp_neq_f32_e64 vcc, |v63|, s16
	v_cndmask_b32_e32 v62, 0, v62, vcc
	v_add_f32_e32 v62, v62, v94
	v_add_f32_e32 v94, v95, v62
	v_sub_f32_e32 v95, v94, v95
	v_sub_f32_e32 v62, v62, v95
	v_mul_f32_e32 v95, s22, v93
	v_sub_f32_e32 v96, v94, v95
	v_sub_f32_e32 v94, v94, v96
	v_sub_f32_e32 v94, v94, v95
	v_add_f32_e32 v62, v62, v94
	v_add_f32_e32 v94, v96, v62
	v_sub_f32_e32 v95, v94, v96
	v_sub_f32_e32 v62, v62, v95
	v_mul_f32_e32 v95, s21, v93
	v_sub_f32_e32 v96, v94, v95
	v_sub_f32_e32 v94, v94, v96
	v_sub_f32_e32 v94, v94, v95
	v_add_f32_e32 v62, v62, v94
	v_add_f32_e32 v94, v96, v62
	v_sub_f32_e32 v95, v94, v96
	v_sub_f32_e32 v62, v62, v95
	v_mul_f32_e32 v95, v94, v94
	v_fma_f32 v96, v94, v94, -v95
	v_add_f32_e32 v97, v62, v62
	v_fma_f32 v96, v94, v97, v96
	v_fma_f32 v96, v62, v62, v96
	v_add_f32_e32 v97, v95, v96
	v_sub_f32_e32 v95, v97, v95
	v_sub_f32_e32 v95, v96, v95
	v_fma_f32 v96, v94, s20, v54
	v_fma_f32 v96, v94, v96, s19
	v_fma_f32 v96, v94, v96, s18
	v_fma_f32 v96, v94, v96, s17
	v_mul_f32_e32 v98, v96, v97
	v_fma_f32 v97, v97, v96, -v98
	v_fma_f32 v95, v95, v96, v97
	v_add_f32_e32 v96, v98, v95
	v_sub_f32_e32 v97, v96, v98
	v_sub_f32_e32 v95, v95, v97
	v_add_f32_e32 v97, v94, v96
	v_sub_f32_e32 v94, v97, v94
	v_sub_f32_e32 v94, v96, v94
	v_add_f32_e32 v62, v62, v95
	v_add_f32_e32 v62, v94, v62
	v_add_f32_e32 v62, v97, v62
	v_cvt_i32_f32_e32 v93, v93
	v_add_f32_e32 v62, 1.0, v62
	v_ldexp_f32 v62, v62, v93
	v_cmp_nlt_f32_e32 vcc, s14, v63
	v_cndmask_b32_e32 v62, v30, v62, vcc
	v_cmp_ngt_f32_e32 vcc, s13, v63
	s_brev_b32 s40, -2
	v_cndmask_b32_e32 v63, 0, v62, vcc
	v_bfrev_b32_e32 v62, 1
	v_cmp_gt_f32_e32 vcc, 0, v91
	v_cndmask_b32_e32 v93, 0, v62, vcc
	v_bfi_b32 v63, s40, v63, v93
	v_bfi_b32 v93, s40, 0, v91
	v_cmp_eq_f32_e32 vcc, 0, v91
	v_cndmask_b32_e32 v93, v63, v93, vcc
	s_movk_i32 s44, 0x200
	v_mov_b32_e32 v63, 0xff800000
	v_cmp_class_f32_e64 vcc, v91, 4
	v_cndmask_b32_e32 v93, v93, v63, vcc
	v_cmp_class_f32_e64 vcc, v91, s44
	v_cndmask_b32_e32 v93, v93, v30, vcc
	v_cmp_u_f32_e32 vcc, v91, v91
	v_cndmask_b32_e32 v91, v93, v91, vcc
	v_add_f32_e32 v91, 1.0, v91
	v_div_scale_f32 v93, s[4:5], v91, v91, 1.0
	v_rcp_f32_e32 v94, v93
	v_fma_f32 v95, -v93, v94, 1.0
	v_fma_f32 v94, v95, v94, v94
	v_div_scale_f32 v95, vcc, 1.0, v91, 1.0
	v_mul_f32_e32 v96, v95, v94
	v_fma_f32 v97, -v93, v96, v95
	v_fma_f32 v96, v97, v94, v96
	v_fma_f32 v93, -v93, v96, v95
	v_div_fmas_f32 v93, v93, v94, v96
	v_div_scale_f32 v94, s[4:5], v15, v15, s1
	v_rcp_f32_e32 v95, v94
	v_fma_f32 v96, -v94, v95, 1.0
	v_fma_f32 v95, v96, v95, v95
	v_div_scale_f32 v96, vcc, s1, v15, s1
	v_mul_f32_e32 v97, v96, v95
	v_fma_f32 v98, -v94, v97, v96
	v_fma_f32 v97, v98, v95, v97
	v_fma_f32 v94, -v94, v97, v96
	v_div_fmas_f32 v94, v94, v95, v97
	v_frexp_mant_f32_e64 v95, |v27|
	v_cmp_gt_f32_e32 vcc, s35, v95
	v_cndmask_b32_e64 v96, 0, 1, vcc
	v_ldexp_f32 v95, v95, v96
	v_add_f32_e32 v96, 1.0, v95
	v_sub_f32_e32 v97, v96, v95
	v_sub_f32_e32 v98, v96, v97
	v_sub_f32_e32 v97, 1.0, v97
	v_sub_f32_e32 v98, v95, v98
	v_add_f32_e32 v97, v97, v98
	v_frexp_exp_i32_f32_e64 v98, |v27|
	v_subbrev_u32_e32 v98, vcc, 0, v98, vcc
	v_cvt_f32_i32_e32 v98, v98
	v_mul_f32_e32 v99, s24, v98
	v_fma_f32 v100, v98, s24, -v99
	v_fma_f32 v98, v98, s25, v100
	v_add_f32_e32 v95, -1.0, v95
	v_rcp_f32_e32 v100, v96
	v_mul_f32_e32 v101, v95, v100
	v_mul_f32_e32 v102, v96, v101
	v_fma_f32 v96, v101, v96, -v102
	v_fma_f32 v96, v101, v97, v96
	v_add_f32_e32 v97, v99, v98
	v_sub_f32_e32 v99, v97, v99
	v_sub_f32_e32 v98, v98, v99
	v_add_f32_e32 v99, v102, v96
	v_sub_f32_e32 v102, v99, v102
	v_sub_f32_e32 v96, v96, v102
	v_sub_f32_e32 v102, v95, v99
	v_sub_f32_e32 v95, v95, v102
	v_sub_f32_e32 v95, v95, v99
	v_sub_f32_e32 v95, v95, v96
	v_add_f32_e32 v95, v102, v95
	v_mul_f32_e32 v95, v100, v95
	v_add_f32_e32 v96, v101, v95
	v_sub_f32_e32 v99, v96, v101
	v_sub_f32_e32 v95, v95, v99
	v_mul_f32_e32 v99, v96, v96
	v_fma_f32 v100, v96, v96, -v99
	v_add_f32_e32 v101, v95, v95
	v_fma_f32 v100, v96, v101, v100
	v_fma_f32 v100, v95, v95, v100
	v_add_f32_e32 v101, v99, v100
	v_sub_f32_e32 v99, v101, v99
	v_sub_f32_e32 v99, v100, v99
	v_fma_f32 v100, v101, s29, v55
	v_fma_f32 v100, v101, v100, s30
	v_mul_f32_e32 v102, v101, v100
	v_fma_f32 v103, v101, v100, -v102
	v_fma_f32 v100, v99, v100, v103
	v_mul_f32_e32 v99, v96, v99
	v_fma_f32 v99, v101, v95, v99
	v_mul_f32_e32 v103, v96, v101
	v_fma_f32 v101, v101, v96, -v103
	v_add_f32_e32 v99, v101, v99
	v_add_f32_e32 v101, v102, v100
	v_sub_f32_e32 v102, v101, v102
	v_sub_f32_e32 v100, v100, v102
	v_add_f32_e32 v102, v103, v99
	v_sub_f32_e32 v103, v102, v103
	v_sub_f32_e32 v99, v99, v103
	v_add_f32_e32 v103, s31, v101
	v_add_f32_e32 v104, s33, v103
	v_sub_f32_e32 v101, v101, v104
	v_add_f32_e32 v100, s34, v100
	v_add_f32_e32 v100, v101, v100
	v_add_f32_e32 v101, v103, v100
	v_sub_f32_e32 v103, v101, v103
	v_sub_f32_e32 v100, v100, v103
	v_mul_f32_e32 v99, v99, v101
	v_fma_f32 v99, v102, v100, v99
	v_mul_f32_e32 v100, v102, v101
	v_fma_f32 v101, v102, v101, -v100
	v_add_f32_e32 v99, v101, v99
	v_add_f32_e32 v101, v100, v99
	v_sub_f32_e32 v100, v101, v100
	v_sub_f32_e32 v99, v99, v100
	v_ldexp_f32 v96, v96, 1
	v_add_f32_e32 v100, v96, v101
	v_sub_f32_e32 v96, v100, v96
	v_sub_f32_e32 v96, v101, v96
	v_ldexp_f32 v95, v95, 1
	v_add_f32_e32 v95, v95, v99
	v_add_f32_e32 v95, v96, v95
	v_add_f32_e32 v96, v100, v95
	v_sub_f32_e32 v99, v96, v100
	v_sub_f32_e32 v95, v95, v99
	v_add_f32_e32 v99, v97, v96
	v_sub_f32_e32 v100, v99, v97
	v_sub_f32_e32 v96, v96, v100
	v_sub_f32_e32 v100, v99, v100
	v_sub_f32_e32 v97, v97, v100
	v_add_f32_e32 v96, v96, v97
	v_add_f32_e32 v97, v98, v95
	v_sub_f32_e32 v100, v97, v98
	v_sub_f32_e32 v95, v95, v100
	v_sub_f32_e32 v100, v97, v100
	v_sub_f32_e32 v98, v98, v100
	v_add_f32_e32 v96, v97, v96
	v_add_f32_e32 v95, v95, v98
	v_add_f32_e32 v97, v99, v96
	v_sub_f32_e32 v98, v97, v99
	v_sub_f32_e32 v96, v96, v98
	v_add_f32_e32 v95, v95, v96
	v_add_f32_e32 v96, v97, v95
	v_sub_f32_e32 v97, v96, v97
	v_sub_f32_e32 v95, v95, v97
	v_mul_f32_e32 v97, 0, v96
	v_fma_f32 v95, v95, s42, v97
	v_mul_f32_e32 v97, s42, v96
	v_fma_f32 v96, v96, s42, -v97
	v_add_f32_e32 v95, v96, v95
	v_add_f32_e32 v96, v97, v95
	v_cmp_class_f32_e64 vcc, v97, s28
	v_sub_f32_e32 v98, v96, v97
	v_cndmask_b32_e32 v96, v96, v97, vcc
	v_sub_f32_e32 v95, v95, v98
	v_mul_f32_e32 v97, s15, v96
	v_rndne_f32_e32 v97, v97
	v_mul_f32_e32 v98, s23, v97
	v_sub_f32_e32 v99, v96, v98
	v_sub_f32_e32 v100, v99, v96
	v_add_f32_e32 v98, v98, v100
	v_sub_f32_e32 v100, v99, v100
	v_sub_f32_e32 v100, v96, v100
	v_sub_f32_e32 v98, v100, v98
	v_cmp_neq_f32_e64 vcc, |v96|, s16
	v_cndmask_b32_e32 v95, 0, v95, vcc
	v_add_f32_e32 v95, v95, v98
	v_add_f32_e32 v98, v99, v95
	v_sub_f32_e32 v99, v98, v99
	v_sub_f32_e32 v95, v95, v99
	v_mul_f32_e32 v99, s22, v97
	v_sub_f32_e32 v100, v98, v99
	v_sub_f32_e32 v98, v98, v100
	v_sub_f32_e32 v98, v98, v99
	v_add_f32_e32 v95, v95, v98
	v_add_f32_e32 v98, v100, v95
	v_sub_f32_e32 v99, v98, v100
	v_sub_f32_e32 v95, v95, v99
	v_mul_f32_e32 v99, s21, v97
	v_sub_f32_e32 v100, v98, v99
	v_sub_f32_e32 v98, v98, v100
	v_sub_f32_e32 v98, v98, v99
	v_add_f32_e32 v95, v95, v98
	v_add_f32_e32 v98, v100, v95
	v_sub_f32_e32 v99, v98, v100
	v_sub_f32_e32 v95, v95, v99
	v_mul_f32_e32 v99, v98, v98
	v_fma_f32 v100, v98, v98, -v99
	v_add_f32_e32 v101, v95, v95
	v_fma_f32 v100, v98, v101, v100
	v_fma_f32 v100, v95, v95, v100
	v_add_f32_e32 v101, v99, v100
	v_sub_f32_e32 v99, v101, v99
	v_sub_f32_e32 v99, v100, v99
	v_fma_f32 v100, v98, s20, v54
	v_fma_f32 v100, v98, v100, s19
	v_fma_f32 v100, v98, v100, s18
	v_fma_f32 v100, v98, v100, s17
	v_mul_f32_e32 v102, v100, v101
	v_fma_f32 v101, v101, v100, -v102
	v_fma_f32 v99, v99, v100, v101
	v_div_fixup_f32 v94, v94, v15, s1
	v_frexp_mant_f32_e64 v100, |v94|
	v_cmp_gt_f32_e32 vcc, s35, v100
	v_cndmask_b32_e64 v101, 0, 1, vcc
	v_ldexp_f32 v100, v100, v101
	v_add_f32_e32 v101, 1.0, v100
	v_sub_f32_e32 v103, v101, v100
	v_sub_f32_e32 v104, v101, v103
	v_sub_f32_e32 v103, 1.0, v103
	v_sub_f32_e32 v104, v100, v104
	v_add_f32_e32 v103, v103, v104
	v_frexp_exp_i32_f32_e64 v104, |v94|
	v_subbrev_u32_e32 v104, vcc, 0, v104, vcc
	v_cvt_f32_i32_e32 v104, v104
	v_mul_f32_e32 v105, s24, v104
	v_fma_f32 v106, v104, s24, -v105
	v_fma_f32 v104, v104, s25, v106
	v_add_f32_e32 v100, -1.0, v100
	v_rcp_f32_e32 v106, v101
	v_mul_f32_e32 v107, v100, v106
	v_mul_f32_e32 v108, v101, v107
	v_fma_f32 v101, v107, v101, -v108
	v_fma_f32 v101, v107, v103, v101
	v_add_f32_e32 v103, v105, v104
	v_sub_f32_e32 v105, v103, v105
	v_sub_f32_e32 v104, v104, v105
	v_add_f32_e32 v105, v108, v101
	v_sub_f32_e32 v108, v105, v108
	v_sub_f32_e32 v101, v101, v108
	v_sub_f32_e32 v108, v100, v105
	v_sub_f32_e32 v100, v100, v108
	v_sub_f32_e32 v100, v100, v105
	v_sub_f32_e32 v100, v100, v101
	v_add_f32_e32 v100, v108, v100
	v_mul_f32_e32 v100, v106, v100
	v_add_f32_e32 v101, v107, v100
	v_sub_f32_e32 v105, v101, v107
	v_sub_f32_e32 v100, v100, v105
	v_mul_f32_e32 v105, v101, v101
	v_fma_f32 v106, v101, v101, -v105
	v_add_f32_e32 v107, v100, v100
	v_fma_f32 v106, v101, v107, v106
	v_fma_f32 v106, v100, v100, v106
	v_add_f32_e32 v107, v105, v106
	v_sub_f32_e32 v105, v107, v105
	v_sub_f32_e32 v105, v106, v105
	v_fma_f32 v106, v107, s29, v55
	v_fma_f32 v106, v107, v106, s30
	v_mul_f32_e32 v108, v107, v106
	v_fma_f32 v109, v107, v106, -v108
	v_fma_f32 v106, v105, v106, v109
	v_mul_f32_e32 v105, v101, v105
	v_fma_f32 v105, v107, v100, v105
	v_mul_f32_e32 v109, v101, v107
	v_fma_f32 v107, v107, v101, -v109
	v_add_f32_e32 v105, v107, v105
	v_add_f32_e32 v107, v108, v106
	v_sub_f32_e32 v108, v107, v108
	v_sub_f32_e32 v106, v106, v108
	v_add_f32_e32 v108, v109, v105
	v_sub_f32_e32 v109, v108, v109
	v_sub_f32_e32 v105, v105, v109
	v_add_f32_e32 v109, s31, v107
	v_add_f32_e32 v110, s33, v109
	v_sub_f32_e32 v107, v107, v110
	v_add_f32_e32 v106, s34, v106
	v_add_f32_e32 v106, v107, v106
	v_add_f32_e32 v107, v109, v106
	v_sub_f32_e32 v109, v107, v109
	v_sub_f32_e32 v106, v106, v109
	v_mul_f32_e32 v105, v105, v107
	v_fma_f32 v105, v108, v106, v105
	v_mul_f32_e32 v106, v108, v107
	v_fma_f32 v107, v108, v107, -v106
	v_add_f32_e32 v105, v107, v105
	v_add_f32_e32 v107, v106, v105
	v_sub_f32_e32 v106, v107, v106
	v_sub_f32_e32 v105, v105, v106
	v_ldexp_f32 v101, v101, 1
	v_add_f32_e32 v106, v101, v107
	v_sub_f32_e32 v101, v106, v101
	v_sub_f32_e32 v101, v107, v101
	v_ldexp_f32 v100, v100, 1
	v_add_f32_e32 v100, v100, v105
	v_add_f32_e32 v100, v101, v100
	v_add_f32_e32 v101, v106, v100
	v_sub_f32_e32 v105, v101, v106
	v_sub_f32_e32 v100, v100, v105
	v_add_f32_e32 v105, v103, v101
	v_sub_f32_e32 v106, v105, v103
	v_sub_f32_e32 v101, v101, v106
	v_sub_f32_e32 v106, v105, v106
	v_sub_f32_e32 v103, v103, v106
	v_add_f32_e32 v101, v101, v103
	v_add_f32_e32 v103, v104, v100
	v_sub_f32_e32 v106, v103, v104
	v_sub_f32_e32 v100, v100, v106
	v_sub_f32_e32 v106, v103, v106
	v_sub_f32_e32 v104, v104, v106
	v_add_f32_e32 v101, v103, v101
	v_add_f32_e32 v100, v100, v104
	v_add_f32_e32 v103, v105, v101
	v_sub_f32_e32 v104, v103, v105
	v_sub_f32_e32 v101, v101, v104
	v_add_f32_e32 v100, v100, v101
	v_add_f32_e32 v101, v103, v100
	v_sub_f32_e32 v103, v101, v103
	v_sub_f32_e32 v100, v100, v103
	v_mul_f32_e32 v103, 0, v101
	v_fma_f32 v100, v100, s42, v103
	v_mul_f32_e32 v103, s42, v101
	v_fma_f32 v101, v101, s42, -v103
	v_add_f32_e32 v100, v101, v100
	v_add_f32_e32 v101, v103, v100
	v_cmp_class_f32_e64 vcc, v103, s28
	v_sub_f32_e32 v104, v101, v103
	v_cndmask_b32_e32 v101, v101, v103, vcc
	v_sub_f32_e32 v100, v100, v104
	v_mul_f32_e32 v103, s15, v101
	v_rndne_f32_e32 v103, v103
	v_mul_f32_e32 v104, s23, v103
	v_sub_f32_e32 v105, v101, v104
	v_sub_f32_e32 v106, v105, v101
	v_add_f32_e32 v104, v104, v106
	v_sub_f32_e32 v106, v105, v106
	v_sub_f32_e32 v106, v101, v106
	v_sub_f32_e32 v104, v106, v104
	v_cmp_neq_f32_e64 vcc, |v101|, s16
	v_cndmask_b32_e32 v100, 0, v100, vcc
	v_add_f32_e32 v100, v100, v104
	v_add_f32_e32 v104, v105, v100
	v_sub_f32_e32 v105, v104, v105
	v_sub_f32_e32 v100, v100, v105
	v_mul_f32_e32 v105, s22, v103
	v_sub_f32_e32 v106, v104, v105
	v_sub_f32_e32 v104, v104, v106
	v_sub_f32_e32 v104, v104, v105
	v_add_f32_e32 v100, v100, v104
	v_add_f32_e32 v104, v106, v100
	v_sub_f32_e32 v105, v104, v106
	v_sub_f32_e32 v100, v100, v105
	v_mul_f32_e32 v105, s21, v103
	v_sub_f32_e32 v106, v104, v105
	v_sub_f32_e32 v104, v104, v106
	v_sub_f32_e32 v104, v104, v105
	v_add_f32_e32 v100, v100, v104
	v_add_f32_e32 v104, v106, v100
	v_sub_f32_e32 v105, v104, v106
	v_sub_f32_e32 v100, v100, v105
	v_mul_f32_e32 v105, v104, v104
	v_fma_f32 v106, v104, v104, -v105
	v_add_f32_e32 v107, v100, v100
	v_fma_f32 v106, v104, v107, v106
	v_fma_f32 v106, v100, v100, v106
	v_add_f32_e32 v107, v105, v106
	v_sub_f32_e32 v105, v107, v105
	v_sub_f32_e32 v105, v106, v105
	v_fma_f32 v106, v104, s20, v54
	v_fma_f32 v106, v104, v106, s19
	v_fma_f32 v106, v104, v106, s18
	v_fma_f32 v106, v104, v106, s17
	v_mul_f32_e32 v108, v106, v107
	v_fma_f32 v107, v107, v106, -v108
	v_fma_f32 v105, v105, v106, v107
	v_add_f32_e32 v106, v108, v105
	v_sub_f32_e32 v107, v106, v108
	v_sub_f32_e32 v105, v105, v107
	v_add_f32_e32 v107, v104, v106
	v_sub_f32_e32 v104, v107, v104
	v_sub_f32_e32 v104, v106, v104
	v_add_f32_e32 v100, v100, v105
	v_add_f32_e32 v100, v104, v100
	v_add_f32_e32 v100, v107, v100
	v_cvt_i32_f32_e32 v103, v103
	v_add_f32_e32 v100, 1.0, v100
	v_ldexp_f32 v100, v100, v103
	v_cmp_nlt_f32_e32 vcc, s14, v101
	v_cndmask_b32_e32 v100, v30, v100, vcc
	v_cmp_ngt_f32_e32 vcc, s13, v101
	v_cndmask_b32_e32 v100, 0, v100, vcc
	v_cmp_gt_f32_e32 vcc, 0, v94
	v_cndmask_b32_e32 v101, 0, v62, vcc
	v_bfi_b32 v100, s40, v100, v101
	v_bfi_b32 v101, s40, 0, v94
	v_cmp_eq_f32_e32 vcc, 0, v94
	v_cndmask_b32_e32 v100, v100, v101, vcc
	v_cmp_class_f32_e64 vcc, v94, 4
	v_cndmask_b32_e32 v100, v100, v63, vcc
	v_cmp_class_f32_e64 vcc, v94, s44
	v_cndmask_b32_e32 v100, v100, v30, vcc
	v_cmp_u_f32_e32 vcc, v94, v94
	v_cndmask_b32_e32 v94, v100, v94, vcc
	v_add_f32_e32 v94, 1.0, v94
	v_div_scale_f32 v100, s[4:5], v94, v94, 1.0
	v_rcp_f32_e32 v101, v100
	v_fma_f32 v103, -v100, v101, 1.0
	v_fma_f32 v101, v103, v101, v101
	v_div_scale_f32 v103, vcc, 1.0, v94, 1.0
	v_mul_f32_e32 v104, v103, v101
	v_fma_f32 v105, -v100, v104, v103
	v_fma_f32 v104, v105, v101, v104
	v_fma_f32 v100, -v100, v104, v103
	v_div_fmas_f32 v100, v100, v101, v104
	s_mov_b32 s1, 0x4144a3d7
	v_div_scale_f32 v101, s[4:5], s1, s1, v26
	v_rcp_f32_e32 v103, v101
	v_fma_f32 v104, -v101, v103, 1.0
	v_fma_f32 v103, v104, v103, v103
	v_div_scale_f32 v104, vcc, v26, s1, v26
	v_mul_f32_e32 v105, v104, v103
	v_fma_f32 v106, -v101, v105, v104
	v_fma_f32 v105, v106, v103, v105
	v_fma_f32 v101, -v101, v105, v104
	v_div_fmas_f32 v101, v101, v103, v105
	s_mov_b32 s3, 0x3b6b4635
	v_div_scale_f32 v103, s[4:5], s3, s3, v14
	v_rcp_f32_e32 v104, v103
	v_fma_f32 v105, -v103, v104, 1.0
	v_fma_f32 v104, v105, v104, v104
	v_div_scale_f32 v105, vcc, v14, s3, v14
	v_mul_f32_e32 v106, v105, v104
	v_fma_f32 v107, -v103, v106, v105
	v_fma_f32 v106, v107, v104, v106
	v_fma_f32 v103, -v103, v106, v105
	v_div_fmas_f32 v103, v103, v104, v106
	v_div_scale_f32 v104, s[4:5], s1, s1, v27
	v_rcp_f32_e32 v105, v104
	v_fma_f32 v106, -v104, v105, 1.0
	v_fma_f32 v105, v106, v105, v105
	v_div_scale_f32 v106, vcc, v27, s1, v27
	v_mul_f32_e32 v107, v106, v105
	v_fma_f32 v108, -v104, v107, v106
	v_fma_f32 v107, v108, v105, v107
	v_fma_f32 v104, -v104, v107, v106
	v_div_fmas_f32 v104, v104, v105, v107
	v_div_scale_f32 v105, s[4:5], s3, s3, v15
	v_rcp_f32_e32 v106, v105
	v_fma_f32 v107, -v105, v106, 1.0
	v_fma_f32 v106, v107, v106, v106
	v_div_scale_f32 v107, vcc, v15, s3, v15
	v_mul_f32_e32 v108, v107, v106
	v_fma_f32 v109, -v105, v108, v107
	v_fma_f32 v108, v109, v106, v108
	v_fma_f32 v105, -v105, v108, v107
	v_div_fmas_f32 v105, v105, v106, v108
	v_div_fixup_f32 v101, v101, s1, v26
	v_frexp_mant_f32_e64 v106, |v101|
	v_cmp_gt_f32_e32 vcc, s35, v106
	v_cndmask_b32_e64 v107, 0, 1, vcc
	v_ldexp_f32 v106, v106, v107
	v_add_f32_e32 v107, 1.0, v106
	v_sub_f32_e32 v108, v107, v106
	v_sub_f32_e32 v109, v107, v108
	v_sub_f32_e32 v108, 1.0, v108
	v_sub_f32_e32 v109, v106, v109
	v_add_f32_e32 v108, v108, v109
	v_frexp_exp_i32_f32_e64 v109, |v101|
	v_subbrev_u32_e32 v109, vcc, 0, v109, vcc
	v_cvt_f32_i32_e32 v109, v109
	v_mul_f32_e32 v110, s24, v109
	v_fma_f32 v111, v109, s24, -v110
	v_fma_f32 v109, v109, s25, v111
	v_add_f32_e32 v106, -1.0, v106
	v_rcp_f32_e32 v111, v107
	v_mul_f32_e32 v112, v106, v111
	v_mul_f32_e32 v113, v107, v112
	v_fma_f32 v107, v112, v107, -v113
	v_fma_f32 v107, v112, v108, v107
	v_add_f32_e32 v108, v110, v109
	v_sub_f32_e32 v110, v108, v110
	v_sub_f32_e32 v109, v109, v110
	v_add_f32_e32 v110, v113, v107
	v_sub_f32_e32 v113, v110, v113
	v_sub_f32_e32 v107, v107, v113
	v_sub_f32_e32 v113, v106, v110
	v_sub_f32_e32 v106, v106, v113
	v_sub_f32_e32 v106, v106, v110
	v_sub_f32_e32 v106, v106, v107
	v_add_f32_e32 v106, v113, v106
	v_mul_f32_e32 v106, v111, v106
	v_add_f32_e32 v107, v112, v106
	v_sub_f32_e32 v110, v107, v112
	v_sub_f32_e32 v106, v106, v110
	v_mul_f32_e32 v110, v107, v107
	v_fma_f32 v111, v107, v107, -v110
	v_add_f32_e32 v112, v106, v106
	v_fma_f32 v111, v107, v112, v111
	v_fma_f32 v111, v106, v106, v111
	v_add_f32_e32 v112, v110, v111
	v_sub_f32_e32 v110, v112, v110
	v_sub_f32_e32 v110, v111, v110
	v_fma_f32 v111, v112, s29, v55
	v_fma_f32 v111, v112, v111, s30
	v_mul_f32_e32 v113, v112, v111
	v_fma_f32 v114, v112, v111, -v113
	v_fma_f32 v111, v110, v111, v114
	v_mul_f32_e32 v110, v107, v110
	v_fma_f32 v110, v112, v106, v110
	v_mul_f32_e32 v114, v107, v112
	v_fma_f32 v112, v112, v107, -v114
	v_add_f32_e32 v110, v112, v110
	v_add_f32_e32 v112, v113, v111
	v_sub_f32_e32 v113, v112, v113
	v_sub_f32_e32 v111, v111, v113
	v_add_f32_e32 v113, v114, v110
	v_sub_f32_e32 v114, v113, v114
	v_sub_f32_e32 v110, v110, v114
	v_add_f32_e32 v114, s31, v112
	v_add_f32_e32 v115, s33, v114
	v_sub_f32_e32 v112, v112, v115
	v_add_f32_e32 v111, s34, v111
	v_add_f32_e32 v111, v112, v111
	v_add_f32_e32 v112, v114, v111
	v_sub_f32_e32 v114, v112, v114
	v_sub_f32_e32 v111, v111, v114
	v_mul_f32_e32 v110, v110, v112
	v_fma_f32 v110, v113, v111, v110
	v_mul_f32_e32 v111, v113, v112
	v_fma_f32 v112, v113, v112, -v111
	v_add_f32_e32 v110, v112, v110
	v_add_f32_e32 v112, v111, v110
	v_sub_f32_e32 v111, v112, v111
	v_sub_f32_e32 v110, v110, v111
	v_ldexp_f32 v107, v107, 1
	v_add_f32_e32 v111, v107, v112
	v_sub_f32_e32 v107, v111, v107
	v_sub_f32_e32 v107, v112, v107
	v_ldexp_f32 v106, v106, 1
	v_add_f32_e32 v106, v106, v110
	v_add_f32_e32 v106, v107, v106
	v_add_f32_e32 v107, v111, v106
	v_sub_f32_e32 v110, v107, v111
	v_sub_f32_e32 v106, v106, v110
	v_add_f32_e32 v110, v108, v107
	v_sub_f32_e32 v111, v110, v108
	v_sub_f32_e32 v107, v107, v111
	v_sub_f32_e32 v111, v110, v111
	v_sub_f32_e32 v108, v108, v111
	v_add_f32_e32 v107, v107, v108
	v_add_f32_e32 v108, v109, v106
	v_sub_f32_e32 v111, v108, v109
	v_sub_f32_e32 v106, v106, v111
	v_sub_f32_e32 v111, v108, v111
	v_sub_f32_e32 v109, v109, v111
	v_add_f32_e32 v107, v108, v107
	v_add_f32_e32 v106, v106, v109
	v_add_f32_e32 v108, v110, v107
	v_sub_f32_e32 v109, v108, v110
	v_sub_f32_e32 v107, v107, v109
	v_add_f32_e32 v106, v106, v107
	v_add_f32_e32 v107, v108, v106
	v_sub_f32_e32 v108, v107, v108
	v_sub_f32_e32 v106, v106, v108
	v_mul_f32_e32 v108, 0, v107
	v_fma_f32 v106, v106, s42, v108
	v_mul_f32_e32 v108, s42, v107
	v_fma_f32 v107, v107, s42, -v108
	v_add_f32_e32 v106, v107, v106
	v_add_f32_e32 v107, v108, v106
	v_cmp_class_f32_e64 vcc, v108, s28
	v_sub_f32_e32 v109, v107, v108
	v_cndmask_b32_e32 v107, v107, v108, vcc
	v_sub_f32_e32 v106, v106, v109
	v_mul_f32_e32 v108, s15, v107
	v_rndne_f32_e32 v108, v108
	v_mul_f32_e32 v109, s23, v108
	v_sub_f32_e32 v110, v107, v109
	v_sub_f32_e32 v111, v110, v107
	v_add_f32_e32 v109, v109, v111
	v_sub_f32_e32 v111, v110, v111
	v_sub_f32_e32 v111, v107, v111
	v_sub_f32_e32 v109, v111, v109
	v_cmp_neq_f32_e64 vcc, |v107|, s16
	v_cndmask_b32_e32 v106, 0, v106, vcc
	v_add_f32_e32 v106, v106, v109
	v_add_f32_e32 v109, v110, v106
	v_sub_f32_e32 v110, v109, v110
	v_sub_f32_e32 v106, v106, v110
	v_mul_f32_e32 v110, s22, v108
	v_sub_f32_e32 v111, v109, v110
	v_sub_f32_e32 v109, v109, v111
	v_sub_f32_e32 v109, v109, v110
	v_add_f32_e32 v106, v106, v109
	v_add_f32_e32 v109, v111, v106
	v_sub_f32_e32 v110, v109, v111
	v_sub_f32_e32 v106, v106, v110
	v_mul_f32_e32 v110, s21, v108
	v_sub_f32_e32 v111, v109, v110
	v_sub_f32_e32 v109, v109, v111
	v_sub_f32_e32 v109, v109, v110
	v_add_f32_e32 v106, v106, v109
	v_add_f32_e32 v109, v111, v106
	v_sub_f32_e32 v110, v109, v111
	v_sub_f32_e32 v106, v106, v110
	v_mul_f32_e32 v110, v109, v109
	v_fma_f32 v111, v109, v109, -v110
	v_add_f32_e32 v112, v106, v106
	v_fma_f32 v111, v109, v112, v111
	v_fma_f32 v111, v106, v106, v111
	v_add_f32_e32 v112, v110, v111
	v_sub_f32_e32 v110, v112, v110
	v_sub_f32_e32 v110, v111, v110
	v_fma_f32 v111, v109, s20, v54
	v_fma_f32 v111, v109, v111, s19
	v_fma_f32 v111, v109, v111, s18
	v_fma_f32 v111, v109, v111, s17
	v_mul_f32_e32 v113, v111, v112
	v_fma_f32 v112, v112, v111, -v113
	v_fma_f32 v110, v110, v111, v112
	v_div_fixup_f32 v104, v104, s1, v27
	v_frexp_mant_f32_e64 v111, |v104|
	v_cmp_gt_f32_e32 vcc, s35, v111
	v_cndmask_b32_e64 v112, 0, 1, vcc
	v_ldexp_f32 v111, v111, v112
	v_add_f32_e32 v112, 1.0, v111
	v_sub_f32_e32 v114, v112, v111
	v_sub_f32_e32 v115, v112, v114
	v_sub_f32_e32 v114, 1.0, v114
	v_sub_f32_e32 v115, v111, v115
	v_add_f32_e32 v114, v114, v115
	v_frexp_exp_i32_f32_e64 v115, |v104|
	v_subbrev_u32_e32 v115, vcc, 0, v115, vcc
	v_cvt_f32_i32_e32 v115, v115
	v_mul_f32_e32 v116, s24, v115
	v_fma_f32 v117, v115, s24, -v116
	v_fma_f32 v115, v115, s25, v117
	v_add_f32_e32 v111, -1.0, v111
	v_rcp_f32_e32 v117, v112
	v_mul_f32_e32 v118, v111, v117
	v_mul_f32_e32 v119, v112, v118
	v_fma_f32 v112, v118, v112, -v119
	v_fma_f32 v112, v118, v114, v112
	v_add_f32_e32 v114, v116, v115
	v_sub_f32_e32 v116, v114, v116
	v_sub_f32_e32 v115, v115, v116
	v_add_f32_e32 v116, v119, v112
	v_sub_f32_e32 v119, v116, v119
	v_sub_f32_e32 v112, v112, v119
	v_sub_f32_e32 v119, v111, v116
	v_sub_f32_e32 v111, v111, v119
	v_sub_f32_e32 v111, v111, v116
	v_sub_f32_e32 v111, v111, v112
	v_add_f32_e32 v111, v119, v111
	v_mul_f32_e32 v111, v117, v111
	v_add_f32_e32 v112, v118, v111
	v_sub_f32_e32 v116, v112, v118
	v_sub_f32_e32 v111, v111, v116
	v_mul_f32_e32 v116, v112, v112
	v_fma_f32 v117, v112, v112, -v116
	v_add_f32_e32 v118, v111, v111
	v_fma_f32 v117, v112, v118, v117
	v_fma_f32 v117, v111, v111, v117
	v_add_f32_e32 v118, v116, v117
	v_sub_f32_e32 v116, v118, v116
	v_sub_f32_e32 v116, v117, v116
	v_fma_f32 v117, v118, s29, v55
	v_fma_f32 v117, v118, v117, s30
	v_mul_f32_e32 v119, v118, v117
	v_fma_f32 v120, v118, v117, -v119
	v_fma_f32 v117, v116, v117, v120
	v_mul_f32_e32 v116, v112, v116
	v_fma_f32 v116, v118, v111, v116
	v_mul_f32_e32 v120, v112, v118
	v_fma_f32 v118, v118, v112, -v120
	v_add_f32_e32 v116, v118, v116
	v_add_f32_e32 v118, v119, v117
	v_sub_f32_e32 v119, v118, v119
	v_sub_f32_e32 v117, v117, v119
	v_add_f32_e32 v119, v120, v116
	v_sub_f32_e32 v120, v119, v120
	v_sub_f32_e32 v116, v116, v120
	v_add_f32_e32 v120, s31, v118
	v_add_f32_e32 v121, s33, v120
	v_sub_f32_e32 v118, v118, v121
	v_add_f32_e32 v117, s34, v117
	v_add_f32_e32 v117, v118, v117
	v_add_f32_e32 v118, v120, v117
	v_sub_f32_e32 v120, v118, v120
	v_sub_f32_e32 v117, v117, v120
	v_mul_f32_e32 v116, v116, v118
	v_fma_f32 v116, v119, v117, v116
	v_mul_f32_e32 v117, v119, v118
	v_fma_f32 v118, v119, v118, -v117
	v_add_f32_e32 v116, v118, v116
	v_add_f32_e32 v118, v117, v116
	v_sub_f32_e32 v117, v118, v117
	v_sub_f32_e32 v116, v116, v117
	v_ldexp_f32 v112, v112, 1
	v_add_f32_e32 v117, v112, v118
	v_sub_f32_e32 v112, v117, v112
	v_sub_f32_e32 v112, v118, v112
	v_ldexp_f32 v111, v111, 1
	v_add_f32_e32 v111, v111, v116
	v_add_f32_e32 v111, v112, v111
	v_add_f32_e32 v112, v117, v111
	v_sub_f32_e32 v116, v112, v117
	v_sub_f32_e32 v111, v111, v116
	v_add_f32_e32 v116, v114, v112
	v_sub_f32_e32 v117, v116, v114
	v_sub_f32_e32 v112, v112, v117
	v_sub_f32_e32 v117, v116, v117
	v_sub_f32_e32 v114, v114, v117
	v_add_f32_e32 v112, v112, v114
	v_add_f32_e32 v114, v115, v111
	v_sub_f32_e32 v117, v114, v115
	v_sub_f32_e32 v111, v111, v117
	v_sub_f32_e32 v117, v114, v117
	v_sub_f32_e32 v115, v115, v117
	v_add_f32_e32 v112, v114, v112
	v_add_f32_e32 v111, v111, v115
	v_add_f32_e32 v114, v116, v112
	v_sub_f32_e32 v115, v114, v116
	v_sub_f32_e32 v112, v112, v115
	v_add_f32_e32 v111, v111, v112
	v_add_f32_e32 v112, v114, v111
	v_sub_f32_e32 v114, v112, v114
	v_sub_f32_e32 v111, v111, v114
	v_mul_f32_e32 v114, 0, v112
	v_fma_f32 v111, v111, s42, v114
	v_mul_f32_e32 v114, s42, v112
	v_fma_f32 v112, v112, s42, -v114
	v_add_f32_e32 v111, v112, v111
	v_add_f32_e32 v112, v114, v111
	v_cmp_class_f32_e64 vcc, v114, s28
	v_sub_f32_e32 v115, v112, v114
	v_cndmask_b32_e32 v112, v112, v114, vcc
	v_sub_f32_e32 v111, v111, v115
	v_mul_f32_e32 v114, s15, v112
	v_rndne_f32_e32 v114, v114
	v_mul_f32_e32 v115, s23, v114
	v_sub_f32_e32 v116, v112, v115
	v_sub_f32_e32 v117, v116, v112
	v_add_f32_e32 v115, v115, v117
	v_sub_f32_e32 v117, v116, v117
	v_sub_f32_e32 v117, v112, v117
	v_sub_f32_e32 v115, v117, v115
	v_cmp_neq_f32_e64 vcc, |v112|, s16
	v_cndmask_b32_e32 v111, 0, v111, vcc
	v_add_f32_e32 v111, v111, v115
	v_add_f32_e32 v115, v116, v111
	v_sub_f32_e32 v116, v115, v116
	v_sub_f32_e32 v111, v111, v116
	v_mul_f32_e32 v116, s22, v114
	v_sub_f32_e32 v117, v115, v116
	v_sub_f32_e32 v115, v115, v117
	v_sub_f32_e32 v115, v115, v116
	v_add_f32_e32 v111, v111, v115
	v_add_f32_e32 v115, v117, v111
	v_sub_f32_e32 v116, v115, v117
	v_sub_f32_e32 v111, v111, v116
	v_mul_f32_e32 v116, s21, v114
	v_sub_f32_e32 v117, v115, v116
	v_sub_f32_e32 v115, v115, v117
	v_sub_f32_e32 v115, v115, v116
	v_add_f32_e32 v111, v111, v115
	v_add_f32_e32 v115, v117, v111
	v_sub_f32_e32 v116, v115, v117
	v_sub_f32_e32 v111, v111, v116
	v_mul_f32_e32 v116, v115, v115
	v_fma_f32 v117, v115, v115, -v116
	v_add_f32_e32 v118, v111, v111
	v_fma_f32 v117, v115, v118, v117
	v_fma_f32 v117, v111, v111, v117
	v_add_f32_e32 v118, v116, v117
	v_sub_f32_e32 v116, v118, v116
	v_sub_f32_e32 v116, v117, v116
	v_fma_f32 v117, v115, s20, v54
	v_fma_f32 v117, v115, v117, s19
	v_fma_f32 v117, v115, v117, s18
	v_fma_f32 v117, v115, v117, s17
	v_mul_f32_e32 v119, v117, v118
	v_fma_f32 v118, v118, v117, -v119
	v_fma_f32 v116, v116, v117, v118
	v_mul_f32_e32 v117, 0x3eb33333, v17
	v_mul_f32_e32 v117, s0, v117
	v_cmp_gt_f32_e32 vcc, s9, v117
	v_cndmask_b32_e32 v118, 0, v72, vcc
	v_add_f32_e32 v117, v117, v118
	v_mul_f32_e32 v118, 0xbf266666, v17
	v_mul_f32_e32 v118, s0, v118
	v_cmp_gt_f32_e64 s[0:1], s9, v118
	v_cndmask_b32_e64 v72, 0, v72, s[0:1]
	v_add_f32_e32 v72, v118, v72
	v_mul_f32_e32 v118, s15, v117
	v_fma_f32 v120, v117, s15, -v118
	v_exp_f32_e32 v118, v118
	v_fma_f32 v120, v117, s47, v120
	v_exp_f32_e32 v120, v120
	v_mul_f32_e32 v118, v118, v120
	v_mul_f32_e32 v120, s15, v72
	v_fma_f32 v121, v72, s15, -v120
	v_exp_f32_e32 v120, v120
	v_fma_f32 v121, v72, s47, v121
	v_exp_f32_e32 v121, v121
	v_mul_f32_e32 v120, v120, v121
	v_cndmask_b32_e32 v121, 1.0, v73, vcc
	v_mul_f32_e32 v118, v121, v118
	v_cndmask_b32_e64 v73, 1.0, v73, s[0:1]
	v_mul_f32_e32 v73, v73, v120
	v_cmp_ngt_f32_e32 vcc, s46, v72
	v_cndmask_b32_e32 v73, 0, v73, vcc
	v_cmp_nlt_f32_e32 vcc, s45, v72
	v_add_f32_e32 v72, v92, v90
	v_sub_f32_e32 v92, v72, v92
	v_sub_f32_e32 v90, v90, v92
	v_add_f32_e32 v92, v88, v72
	v_sub_f32_e32 v88, v92, v88
	v_sub_f32_e32 v72, v72, v88
	v_add_f32_e32 v88, v89, v90
	v_add_f32_e32 v72, v72, v88
	v_add_f32_e32 v72, v92, v72
	v_cvt_i32_f32_e32 v87, v87
	v_add_f32_e32 v72, 1.0, v72
	v_ldexp_f32 v72, v72, v87
	v_cmp_nlt_f32_e64 s[0:1], s14, v75
	v_cndmask_b32_e64 v72, v30, v72, s[0:1]
	v_cmp_ngt_f32_e64 s[0:1], s13, v75
	v_cndmask_b32_e64 v72, 0, v72, s[0:1]
	v_cmp_gt_f32_e64 s[0:1], 0, v26
	v_cndmask_b32_e64 v75, 0, v62, s[0:1]
	v_bfi_b32 v72, s40, v72, v75
	v_bfi_b32 v75, s40, 0, v26
	v_cmp_eq_f32_e64 s[0:1], 0, v26
	v_cndmask_b32_e64 v72, v72, v75, s[0:1]
	v_cmp_ngt_f32_e64 s[0:1], s46, v117
	v_cndmask_b32_e64 v75, 0, v118, s[0:1]
	v_cmp_nlt_f32_e64 s[0:1], s45, v117
	s_mov_b32 s4, 0x4a277b00
	v_cndmask_b32_e64 v75, v30, v75, s[0:1]
	v_cndmask_b32_e32 v73, v30, v73, vcc
	v_cmp_class_f32_e64 vcc, v26, 4
	v_cndmask_b32_e32 v72, v72, v63, vcc
	v_cmp_class_f32_e64 vcc, v26, s44
	v_cndmask_b32_e32 v72, v72, v30, vcc
	v_cmp_u_f32_e32 vcc, v26, v26
	v_cndmask_b32_e32 v72, v72, v26, vcc
	v_mul_f32_e32 v87, s4, v73
	v_mul_f32_e32 v88, v14, v87
	v_mul_f32_e32 v89, v75, v72
	v_fma_f32 v88, v89, s8, -v88
	v_div_fixup_f32 v89, v93, v91, 1.0
	v_mul_f32_e32 v89, 0x3f7d70a4, v89
	v_mul_f32_e32 v88, v88, v89
	v_add_f32_e32 v89, v113, v110
	v_sub_f32_e32 v90, v89, v113
	v_sub_f32_e32 v90, v110, v90
	v_add_f32_e32 v91, v109, v89
	v_sub_f32_e32 v92, v91, v109
	v_sub_f32_e32 v89, v89, v92
	v_add_f32_e32 v90, v106, v90
	v_add_f32_e32 v89, v89, v90
	v_add_f32_e32 v89, v91, v89
	v_cvt_i32_f32_e32 v90, v108
	v_add_f32_e32 v89, 1.0, v89
	v_ldexp_f32 v89, v89, v90
	v_cmp_nlt_f32_e32 vcc, s14, v107
	v_cndmask_b32_e32 v89, v30, v89, vcc
	v_cmp_ngt_f32_e32 vcc, s13, v107
	v_cndmask_b32_e32 v89, 0, v89, vcc
	v_cmp_gt_f32_e32 vcc, 0, v101
	v_cndmask_b32_e32 v90, 0, v62, vcc
	v_bfi_b32 v89, s40, v89, v90
	v_bfi_b32 v90, s40, 0, v101
	v_cmp_eq_f32_e32 vcc, 0, v101
	v_cndmask_b32_e32 v89, v89, v90, vcc
	v_cmp_class_f32_e64 vcc, v101, 4
	v_cndmask_b32_e32 v89, v89, v63, vcc
	v_cmp_class_f32_e64 vcc, v101, s44
	v_cndmask_b32_e32 v89, v89, v30, vcc
	v_cmp_u_f32_e32 vcc, v101, v101
	v_cndmask_b32_e32 v89, v89, v101, vcc
	s_mov_b32 s5, 0x4619ebd7
	s_mov_b32 s6, 0x49238e1e
	s_mov_b32 s7, 0x4550d65c
	v_div_fixup_f32 v90, v103, s3, v14
	v_add_f32_e32 v90, 1.0, v90
	v_add_f32_e32 v89, 1.0, v89
	v_mul_f32_e32 v89, s5, v89
	v_fma_f32 v89, v14, s6, v89
	v_fma_f32 v89, v90, s7, v89
	s_mov_b32 s9, 0x3fa66666
	v_fma_f32 v89, v72, s9, v89
	v_fma_f32 v72, v72, s8, v89
	s_mov_b32 s0, 0x3e8a3d71
	v_fma_f32 v73, v73, s0, 1.0
	v_fma_f32 v72, v14, s4, v72
	v_mul_f32_e32 v72, v73, v72
	v_div_scale_f32 v89, s[0:1], v72, v72, v88
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v91, -v89, v90, 1.0
	v_fma_f32 v90, v91, v90, v90
	v_div_scale_f32 v91, vcc, v88, v72, v88
	v_mul_f32_e32 v92, v91, v90
	v_fma_f32 v93, -v89, v92, v91
	v_fma_f32 v92, v93, v90, v92
	v_fma_f32 v89, -v89, v92, v91
	v_div_fmas_f32 v89, v89, v90, v92
	v_add_f32_e32 v90, v102, v99
	v_sub_f32_e32 v91, v90, v102
	v_sub_f32_e32 v91, v99, v91
	v_add_f32_e32 v92, v98, v90
	v_sub_f32_e32 v93, v92, v98
	v_sub_f32_e32 v90, v90, v93
	v_add_f32_e32 v91, v95, v91
	v_add_f32_e32 v90, v90, v91
	v_add_f32_e32 v90, v92, v90
	v_cvt_i32_f32_e32 v91, v97
	v_add_f32_e32 v90, 1.0, v90
	v_ldexp_f32 v90, v90, v91
	v_cmp_nlt_f32_e32 vcc, s14, v96
	v_cndmask_b32_e32 v90, v30, v90, vcc
	v_cmp_ngt_f32_e32 vcc, s13, v96
	v_cndmask_b32_e32 v90, 0, v90, vcc
	v_cmp_gt_f32_e32 vcc, 0, v27
	v_cndmask_b32_e32 v91, 0, v62, vcc
	v_bfi_b32 v90, s40, v90, v91
	v_bfi_b32 v91, s40, 0, v27
	v_cmp_eq_f32_e32 vcc, 0, v27
	v_cndmask_b32_e32 v90, v90, v91, vcc
	v_mul_f32_e32 v87, v15, v87
	v_cmp_class_f32_e64 vcc, v27, 4
	v_cndmask_b32_e32 v90, v90, v63, vcc
	v_cmp_class_f32_e64 vcc, v27, s44
	v_cndmask_b32_e32 v90, v90, v30, vcc
	v_cmp_u_f32_e32 vcc, v27, v27
	v_cndmask_b32_e32 v90, v90, v27, vcc
	v_mul_f32_e32 v75, v75, v90
	v_fma_f32 v75, v75, s8, -v87
	v_div_fixup_f32 v87, v100, v94, 1.0
	v_mul_f32_e32 v87, 0x410028f6, v87
	v_mul_f32_e32 v87, v75, v87
	v_add_f32_e32 v75, v119, v116
	v_sub_f32_e32 v91, v75, v119
	v_sub_f32_e32 v91, v116, v91
	v_add_f32_e32 v92, v115, v75
	v_sub_f32_e32 v93, v92, v115
	v_sub_f32_e32 v75, v75, v93
	v_add_f32_e32 v91, v111, v91
	v_add_f32_e32 v75, v75, v91
	v_add_f32_e32 v75, v92, v75
	v_cvt_i32_f32_e32 v91, v114
	v_add_f32_e32 v75, 1.0, v75
	v_ldexp_f32 v75, v75, v91
	v_cmp_nlt_f32_e32 vcc, s14, v112
	v_cndmask_b32_e32 v75, v30, v75, vcc
	v_cmp_ngt_f32_e32 vcc, s13, v112
	v_cndmask_b32_e32 v75, 0, v75, vcc
	v_cmp_gt_f32_e32 vcc, 0, v104
	v_cndmask_b32_e32 v91, 0, v62, vcc
	v_bfi_b32 v75, s40, v75, v91
	v_bfi_b32 v91, s40, 0, v104
	v_cmp_eq_f32_e32 vcc, 0, v104
	v_cndmask_b32_e32 v75, v75, v91, vcc
	v_cmp_class_f32_e64 vcc, v104, 4
	v_cndmask_b32_e32 v75, v75, v63, vcc
	v_cmp_class_f32_e64 vcc, v104, s44
	v_cndmask_b32_e32 v75, v75, v30, vcc
	v_cmp_u_f32_e32 vcc, v104, v104
	v_cndmask_b32_e32 v75, v75, v104, vcc
	v_div_fixup_f32 v91, v105, s3, v15
	v_add_f32_e32 v91, 1.0, v91
	v_add_f32_e32 v75, 1.0, v75
	v_mul_f32_e32 v75, s5, v75
	v_fma_f32 v75, v15, s6, v75
	v_fma_f32 v75, v91, s7, v75
	v_fma_f32 v75, v90, s9, v75
	v_fma_f32 v75, v90, s8, v75
	v_fma_f32 v75, v15, s4, v75
	v_mul_f32_e32 v73, v73, v75
	v_div_scale_f32 v75, s[0:1], v73, v73, v87
	v_rcp_f32_e32 v90, v75
	v_fma_f32 v91, -v75, v90, 1.0
	v_fma_f32 v90, v91, v90, v90
	v_div_scale_f32 v91, vcc, v87, v73, v87
	v_mul_f32_e32 v92, v91, v90
	v_fma_f32 v93, -v75, v92, v91
	v_fma_f32 v92, v93, v90, v92
	v_fma_f32 v75, -v75, v92, v91
	v_div_fmas_f32 v90, v75, v90, v92
	v_frexp_mant_f32_e64 v75, |v15|
	v_cmp_gt_f32_e32 vcc, s35, v75
	v_cndmask_b32_e64 v91, 0, 1, vcc
	v_ldexp_f32 v75, v75, v91
	v_add_f32_e32 v91, 1.0, v75
	v_sub_f32_e32 v92, v91, v75
	v_sub_f32_e32 v93, v91, v92
	v_sub_f32_e32 v92, 1.0, v92
	v_sub_f32_e32 v93, v75, v93
	v_add_f32_e32 v92, v92, v93
	v_frexp_exp_i32_f32_e64 v93, |v15|
	v_subbrev_u32_e32 v93, vcc, 0, v93, vcc
	v_cvt_f32_i32_e32 v93, v93
	v_mul_f32_e32 v94, s24, v93
	v_fma_f32 v95, v93, s24, -v94
	v_fma_f32 v93, v93, s25, v95
	v_add_f32_e32 v75, -1.0, v75
	v_rcp_f32_e32 v95, v91
	v_mul_f32_e32 v96, v75, v95
	v_mul_f32_e32 v97, v91, v96
	v_fma_f32 v91, v96, v91, -v97
	v_fma_f32 v91, v96, v92, v91
	v_add_f32_e32 v92, v94, v93
	v_sub_f32_e32 v94, v92, v94
	v_sub_f32_e32 v93, v93, v94
	v_add_f32_e32 v94, v97, v91
	v_sub_f32_e32 v97, v94, v97
	v_sub_f32_e32 v91, v91, v97
	v_sub_f32_e32 v97, v75, v94
	v_sub_f32_e32 v75, v75, v97
	v_sub_f32_e32 v75, v75, v94
	v_sub_f32_e32 v75, v75, v91
	v_add_f32_e32 v75, v97, v75
	v_mul_f32_e32 v75, v95, v75
	v_add_f32_e32 v91, v96, v75
	v_sub_f32_e32 v94, v91, v96
	v_sub_f32_e32 v75, v75, v94
	v_mul_f32_e32 v94, v91, v91
	v_fma_f32 v95, v91, v91, -v94
	v_add_f32_e32 v96, v75, v75
	v_fma_f32 v95, v91, v96, v95
	v_fma_f32 v95, v75, v75, v95
	v_add_f32_e32 v96, v94, v95
	v_sub_f32_e32 v94, v96, v94
	v_sub_f32_e32 v94, v95, v94
	v_fma_f32 v95, v96, s29, v55
	v_fma_f32 v95, v96, v95, s30
	v_mul_f32_e32 v97, v96, v95
	v_fma_f32 v98, v96, v95, -v97
	v_fma_f32 v95, v94, v95, v98
	v_mul_f32_e32 v94, v91, v94
	v_fma_f32 v94, v96, v75, v94
	v_mul_f32_e32 v98, v91, v96
	v_fma_f32 v96, v96, v91, -v98
	v_add_f32_e32 v94, v96, v94
	v_add_f32_e32 v96, v97, v95
	v_sub_f32_e32 v97, v96, v97
	v_sub_f32_e32 v95, v95, v97
	v_add_f32_e32 v97, v98, v94
	v_sub_f32_e32 v98, v97, v98
	v_sub_f32_e32 v94, v94, v98
	v_add_f32_e32 v98, s31, v96
	v_add_f32_e32 v99, s33, v98
	v_sub_f32_e32 v96, v96, v99
	v_add_f32_e32 v95, s34, v95
	v_add_f32_e32 v95, v96, v95
	v_add_f32_e32 v96, v98, v95
	v_sub_f32_e32 v98, v96, v98
	v_sub_f32_e32 v95, v95, v98
	v_mul_f32_e32 v94, v94, v96
	v_fma_f32 v94, v97, v95, v94
	v_mul_f32_e32 v95, v97, v96
	v_fma_f32 v96, v97, v96, -v95
	v_add_f32_e32 v94, v96, v94
	v_add_f32_e32 v96, v95, v94
	v_sub_f32_e32 v95, v96, v95
	v_sub_f32_e32 v94, v94, v95
	v_ldexp_f32 v91, v91, 1
	v_add_f32_e32 v95, v91, v96
	v_sub_f32_e32 v91, v95, v91
	v_sub_f32_e32 v91, v96, v91
	v_ldexp_f32 v75, v75, 1
	v_add_f32_e32 v75, v75, v94
	v_add_f32_e32 v75, v91, v75
	v_add_f32_e32 v91, v95, v75
	v_sub_f32_e32 v94, v91, v95
	v_sub_f32_e32 v75, v75, v94
	v_add_f32_e32 v94, v92, v91
	v_sub_f32_e32 v95, v94, v92
	v_sub_f32_e32 v91, v91, v95
	v_sub_f32_e32 v95, v94, v95
	v_sub_f32_e32 v92, v92, v95
	v_add_f32_e32 v91, v91, v92
	v_add_f32_e32 v92, v93, v75
	v_sub_f32_e32 v95, v92, v93
	v_sub_f32_e32 v75, v75, v95
	v_sub_f32_e32 v95, v92, v95
	v_sub_f32_e32 v93, v93, v95
	v_add_f32_e32 v91, v92, v91
	v_add_f32_e32 v75, v75, v93
	v_add_f32_e32 v92, v94, v91
	v_sub_f32_e32 v93, v92, v94
	v_sub_f32_e32 v91, v91, v93
	v_add_f32_e32 v75, v75, v91
	v_add_f32_e32 v91, v92, v75
	v_sub_f32_e32 v92, v91, v92
	v_sub_f32_e32 v75, v75, v92
	v_mul_f32_e32 v92, s2, v91
	v_fma_f32 v91, v91, s2, -v92
	v_fma_f32 v75, v75, s2, v91
	v_add_f32_e32 v91, v92, v75
	v_cmp_class_f32_e64 vcc, v92, s28
	v_sub_f32_e32 v93, v91, v92
	v_cndmask_b32_e32 v91, v91, v92, vcc
	v_sub_f32_e32 v75, v75, v93
	v_mul_f32_e32 v92, s15, v91
	v_rndne_f32_e32 v92, v92
	v_mul_f32_e32 v93, s23, v92
	v_sub_f32_e32 v94, v91, v93
	v_sub_f32_e32 v95, v94, v91
	v_add_f32_e32 v93, v93, v95
	v_sub_f32_e32 v95, v94, v95
	v_sub_f32_e32 v95, v91, v95
	v_sub_f32_e32 v93, v95, v93
	v_cmp_neq_f32_e64 vcc, |v91|, s16
	v_cndmask_b32_e32 v75, 0, v75, vcc
	v_add_f32_e32 v75, v75, v93
	v_add_f32_e32 v93, v94, v75
	v_sub_f32_e32 v94, v93, v94
	v_sub_f32_e32 v75, v75, v94
	v_mul_f32_e32 v94, s22, v92
	v_sub_f32_e32 v95, v93, v94
	v_sub_f32_e32 v93, v93, v95
	v_sub_f32_e32 v93, v93, v94
	v_add_f32_e32 v75, v75, v93
	v_add_f32_e32 v93, v95, v75
	v_sub_f32_e32 v94, v93, v95
	v_sub_f32_e32 v75, v75, v94
	v_mul_f32_e32 v94, s21, v92
	v_sub_f32_e32 v95, v93, v94
	v_sub_f32_e32 v93, v93, v95
	v_sub_f32_e32 v93, v93, v94
	v_add_f32_e32 v75, v75, v93
	v_add_f32_e32 v93, v95, v75
	v_sub_f32_e32 v94, v93, v95
	v_sub_f32_e32 v94, v75, v94
	v_mul_f32_e32 v75, v93, v93
	v_fma_f32 v95, v93, v93, -v75
	v_add_f32_e32 v96, v94, v94
	v_fma_f32 v95, v93, v96, v95
	v_fma_f32 v95, v94, v94, v95
	v_add_f32_e32 v96, v75, v95
	v_sub_f32_e32 v75, v96, v75
	v_sub_f32_e32 v75, v95, v75
	v_fma_f32 v95, v93, s20, v54
	v_fma_f32 v95, v93, v95, s19
	v_fma_f32 v95, v93, v95, s18
	v_fma_f32 v95, v93, v95, s17
	v_mul_f32_e32 v97, v95, v96
	v_fma_f32 v96, v96, v95, -v97
	v_fma_f32 v95, v75, v95, v96
	v_div_fixup_f32 v75, v89, v72, v88
	v_div_fixup_f32 v72, v90, v73, v87
	v_add_f32_e32 v73, v75, v72
	v_add_f32_e32 v73, v73, v73
	v_mul_f32_e32 v87, 0x2f17d7b2, v73
	v_div_scale_f32 v73, s[0:1], s52, s52, v87
	v_rcp_f32_e32 v88, v73
	v_fma_f32 v89, -v73, v88, 1.0
	v_fma_f32 v88, v89, v88, v88
	v_div_scale_f32 v89, vcc, v87, s52, v87
	v_mul_f32_e32 v90, v89, v88
	v_fma_f32 v96, -v73, v90, v89
	v_fma_f32 v90, v96, v88, v90
	v_fma_f32 v73, -v73, v90, v89
	v_div_fmas_f32 v88, v73, v88, v90
	v_add_f32_e32 v73, v85, v86
	v_sub_f32_e32 v85, v73, v85
	v_sub_f32_e32 v85, v86, v85
	v_add_f32_e32 v86, v79, v73
	v_sub_f32_e32 v79, v86, v79
	v_sub_f32_e32 v73, v73, v79
	v_add_f32_e32 v79, v81, v85
	v_add_f32_e32 v73, v73, v79
	v_add_f32_e32 v73, v86, v73
	v_cvt_i32_f32_e32 v78, v78
	v_add_f32_e32 v73, 1.0, v73
	v_ldexp_f32 v73, v73, v78
	v_cmp_nlt_f32_e32 vcc, s14, v76
	v_cndmask_b32_e32 v73, v30, v73, vcc
	v_cmp_ngt_f32_e32 vcc, s13, v76
	s_movk_i32 s49, 0x3c0
	s_mov_b32 s9, 0x36af6ddf
	v_cndmask_b32_e32 v73, 0, v73, vcc
	v_mov_b32_e32 v81, 0x7fc00000
	v_cmp_class_f32_e64 vcc, v14, s49
	v_cndmask_b32_e32 v73, v81, v73, vcc
	v_cmp_eq_f32_e64 s[0:1], 0, v14
	v_cndmask_b32_e64 v73, v73, 0, s[0:1]
	v_cmp_class_f32_e64 s[2:3], v14, s28
	v_cndmask_b32_e64 v73, v73, v30, s[2:3]
	v_cmp_u_f32_e64 s[4:5], v14, v14
	v_cndmask_b32_e64 v73, |v73|, v14, s[4:5]
	v_cmp_neq_f32_e32 vcc, 1.0, v14
	v_cndmask_b32_e32 v73, 1.0, v73, vcc
	v_mul_f32_e32 v76, 0x3bf294dd, v73
	v_add_f32_e32 v73, s9, v73
	v_div_scale_f32 v78, s[6:7], v73, v73, v76
	v_rcp_f32_e32 v79, v78
	v_fma_f32 v85, -v78, v79, 1.0
	v_fma_f32 v79, v85, v79, v79
	v_div_scale_f32 v85, vcc, v76, v73, v76
	v_mul_f32_e32 v86, v85, v79
	v_fma_f32 v89, -v78, v86, v85
	v_fma_f32 v86, v89, v79, v86
	v_fma_f32 v78, -v78, v86, v85
	v_div_fmas_f32 v78, v78, v79, v86
	v_add_f32_e32 v79, v97, v95
	v_sub_f32_e32 v85, v79, v97
	v_sub_f32_e32 v85, v95, v85
	v_add_f32_e32 v86, v93, v79
	v_sub_f32_e32 v89, v86, v93
	v_sub_f32_e32 v79, v79, v89
	v_add_f32_e32 v85, v94, v85
	v_add_f32_e32 v79, v79, v85
	v_add_f32_e32 v79, v86, v79
	v_cvt_i32_f32_e32 v85, v92
	v_add_f32_e32 v79, 1.0, v79
	v_ldexp_f32 v79, v79, v85
	v_cmp_nlt_f32_e32 vcc, s14, v91
	v_cndmask_b32_e32 v79, v30, v79, vcc
	v_cmp_ngt_f32_e32 vcc, s13, v91
	v_cndmask_b32_e32 v79, 0, v79, vcc
	v_cmp_class_f32_e64 vcc, v15, s49
	v_cndmask_b32_e32 v79, v81, v79, vcc
	v_cmp_neq_f32_e32 vcc, 0, v15
	v_cndmask_b32_e32 v79, 0, v79, vcc
	v_cmp_class_f32_e64 vcc, v15, s28
	v_cndmask_b32_e32 v79, v79, v30, vcc
	v_cmp_u_f32_e32 vcc, v15, v15
	v_cndmask_b32_e64 v79, |v79|, v15, vcc
	v_cmp_neq_f32_e32 vcc, 1.0, v15
	v_cndmask_b32_e32 v79, 1.0, v79, vcc
	v_mul_f32_e32 v85, 0x3d75568e, v79
	v_add_f32_e32 v79, s9, v79
	v_div_scale_f32 v86, s[6:7], v79, v79, v85
	v_rcp_f32_e32 v89, v86
	v_fma_f32 v90, -v86, v89, 1.0
	v_fma_f32 v89, v90, v89, v89
	v_div_scale_f32 v90, vcc, v85, v79, v85
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v86, v91, v90
	v_fma_f32 v91, v92, v89, v91
	v_fma_f32 v86, -v86, v91, v90
	v_div_fmas_f32 v86, v86, v89, v91
	v_div_fixup_f32 v76, v78, v73, v76
	v_div_fixup_f32 v73, v86, v79, v85
	v_add_f32_e32 v78, v76, v73
	v_mul_f32_e32 v86, s39, v78
	v_div_scale_f32 v78, s[6:7], s52, s52, v86
	v_rcp_f32_e32 v79, v78
	v_fma_f32 v85, -v78, v79, 1.0
	v_fma_f32 v79, v85, v79, v79
	v_div_scale_f32 v85, vcc, v86, s52, v86
	v_mul_f32_e32 v89, v85, v79
	v_fma_f32 v90, -v78, v89, v85
	v_fma_f32 v89, v90, v79, v89
	v_fma_f32 v78, -v78, v89, v85
	v_div_fmas_f32 v89, v78, v79, v89
	s_movk_i32 s45, 0x90
	v_div_fixup_f32 v74, v74, v14, s8
	v_mov_b32_e32 v78, 0x4f800000
	v_cmp_class_f32_e64 vcc, v74, s45
	v_cndmask_b32_e32 v79, 1.0, v78, vcc
	v_mul_f32_e32 v74, v74, v79
	v_div_fixup_f32 v77, v77, v15, s8
	v_cmp_class_f32_e64 s[6:7], v77, s45
	v_cndmask_b32_e64 v79, 1.0, v78, s[6:7]
	v_mul_f32_e32 v77, v77, v79
	v_log_f32_e32 v74, v74
	s_mov_b32 s46, 0x3f317217
	s_mov_b32 s47, 0x3377d1cf
	v_mul_f32_e32 v79, s46, v74
	v_fma_f32 v85, v74, s46, -v79
	v_fma_f32 v85, v74, s47, v85
	v_add_f32_e32 v79, v79, v85
	s_movk_i32 s48, 0x207
	v_cmp_class_f32_e64 s[8:9], v74, s48
	v_cndmask_b32_e64 v74, v79, v74, s[8:9]
	v_log_f32_e32 v77, v77
	v_mul_f32_e32 v79, s46, v77
	v_fma_f32 v85, v77, s46, -v79
	v_fma_f32 v85, v77, s47, v85
	v_add_f32_e32 v85, v79, v85
	v_mov_b32_e32 v79, 0x41b17218
	v_cndmask_b32_e32 v90, 0, v79, vcc
	v_sub_f32_e32 v74, v74, v90
	v_cmp_class_f32_e64 vcc, v77, s48
	v_cndmask_b32_e32 v77, v85, v77, vcc
	v_cndmask_b32_e64 v85, 0, v79, s[6:7]
	v_sub_f32_e32 v85, v77, v85
	s_mov_b32 s6, 0xc155b2df
	s_mov_b32 s8, 0x396a8577
	s_mov_b32 s9, 0x37e7e2e3
	v_fma_f32 v77, v74, s6, v17
	v_fma_f32 v74, v85, s6, v17
	v_mul_f32_e32 v85, s8, v74
	v_fma_f32 v85, v77, s9, v85
	v_mul_f32_e32 v90, s39, v85
	v_div_scale_f32 v85, s[6:7], s52, s52, v90
	v_rcp_f32_e32 v91, v85
	v_fma_f32 v92, -v85, v91, 1.0
	v_fma_f32 v91, v92, v91, v91
	v_div_scale_f32 v92, vcc, v90, s52, v90
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v85, v93, v92
	v_fma_f32 v93, v94, v91, v93
	v_fma_f32 v85, -v85, v93, v92
	v_div_fmas_f32 v91, v85, v91, v93
	v_div_fixup_f32 v83, v84, s52, v83
	v_div_fixup_f32 v84, v88, s52, v87
	s_mov_b32 s6, 0x447a0000
	v_mul_f32_e32 v83, s6, v83
	v_mul_f32_e32 v85, s6, v84
	v_div_fixup_f32 v84, v89, s52, v86
	v_mul_f32_e32 v84, s6, v84
	v_div_fixup_f32 v86, v91, s52, v90
	v_mul_f32_e32 v86, s6, v86
	s_add_u32 s6, s26, 0xa8
	s_addc_u32 s7, s27, 0
	v_mov_b32_e32 v88, s7
	v_mov_b32_e32 v87, s6
	flat_store_dwordx4 v[87:88], v[83:86]
	s_mov_b32 s52, 0x3ee66666
	v_div_scale_f32 v83, s[6:7], v25, v25, s52
	v_rcp_f32_e32 v84, v83
	v_fma_f32 v85, -v83, v84, 1.0
	v_fma_f32 v84, v85, v84, v84
	v_div_scale_f32 v85, vcc, s52, v25, s52
	v_mul_f32_e32 v86, v85, v84
	v_fma_f32 v87, -v83, v86, v85
	v_fma_f32 v86, v87, v84, v86
	v_fma_f32 v83, -v83, v86, v85
	v_div_fmas_f32 v83, v83, v84, v86
	v_div_fixup_f32 v83, v83, v25, s52
	v_frexp_mant_f32_e64 v84, |v83|
	v_cmp_gt_f32_e32 vcc, s35, v84
	v_cndmask_b32_e64 v85, 0, 1, vcc
	v_ldexp_f32 v84, v84, v85
	v_add_f32_e32 v85, 1.0, v84
	v_sub_f32_e32 v86, v85, v84
	v_sub_f32_e32 v87, v85, v86
	v_sub_f32_e32 v86, 1.0, v86
	v_sub_f32_e32 v87, v84, v87
	v_add_f32_e32 v86, v86, v87
	v_frexp_exp_i32_f32_e64 v87, |v83|
	v_subbrev_u32_e32 v87, vcc, 0, v87, vcc
	v_cvt_f32_i32_e32 v87, v87
	v_mul_f32_e32 v88, s24, v87
	v_fma_f32 v89, v87, s24, -v88
	v_fma_f32 v87, v87, s25, v89
	v_add_f32_e32 v84, -1.0, v84
	v_rcp_f32_e32 v89, v85
	v_mul_f32_e32 v90, v84, v89
	v_mul_f32_e32 v91, v85, v90
	v_fma_f32 v85, v90, v85, -v91
	v_fma_f32 v85, v90, v86, v85
	v_add_f32_e32 v86, v88, v87
	v_sub_f32_e32 v88, v86, v88
	v_sub_f32_e32 v87, v87, v88
	v_add_f32_e32 v88, v91, v85
	v_sub_f32_e32 v91, v88, v91
	v_sub_f32_e32 v85, v85, v91
	v_sub_f32_e32 v91, v84, v88
	v_sub_f32_e32 v84, v84, v91
	v_sub_f32_e32 v84, v84, v88
	v_sub_f32_e32 v84, v84, v85
	v_add_f32_e32 v84, v91, v84
	v_mul_f32_e32 v84, v89, v84
	v_add_f32_e32 v85, v90, v84
	v_sub_f32_e32 v88, v85, v90
	v_sub_f32_e32 v84, v84, v88
	v_mul_f32_e32 v88, v85, v85
	v_fma_f32 v89, v85, v85, -v88
	v_add_f32_e32 v90, v84, v84
	v_fma_f32 v89, v85, v90, v89
	v_fma_f32 v89, v84, v84, v89
	v_add_f32_e32 v90, v88, v89
	v_sub_f32_e32 v88, v90, v88
	v_sub_f32_e32 v88, v89, v88
	v_fma_f32 v89, v90, s29, v55
	v_fma_f32 v89, v90, v89, s30
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, v90, v89, -v91
	v_fma_f32 v89, v88, v89, v92
	v_mul_f32_e32 v88, v85, v88
	v_fma_f32 v88, v90, v84, v88
	v_mul_f32_e32 v92, v85, v90
	v_fma_f32 v90, v90, v85, -v92
	v_add_f32_e32 v88, v90, v88
	v_add_f32_e32 v90, v91, v89
	v_sub_f32_e32 v91, v90, v91
	v_sub_f32_e32 v89, v89, v91
	v_add_f32_e32 v91, v92, v88
	v_sub_f32_e32 v92, v91, v92
	v_sub_f32_e32 v88, v88, v92
	v_add_f32_e32 v92, s31, v90
	v_add_f32_e32 v93, s33, v92
	v_sub_f32_e32 v90, v90, v93
	v_add_f32_e32 v89, s34, v89
	v_add_f32_e32 v89, v90, v89
	v_add_f32_e32 v90, v92, v89
	v_sub_f32_e32 v92, v90, v92
	v_sub_f32_e32 v89, v89, v92
	v_mul_f32_e32 v88, v88, v90
	v_fma_f32 v88, v91, v89, v88
	v_mul_f32_e32 v89, v91, v90
	v_fma_f32 v90, v91, v90, -v89
	v_add_f32_e32 v88, v90, v88
	v_add_f32_e32 v90, v89, v88
	v_sub_f32_e32 v89, v90, v89
	v_sub_f32_e32 v88, v88, v89
	v_ldexp_f32 v85, v85, 1
	v_add_f32_e32 v89, v85, v90
	v_sub_f32_e32 v85, v89, v85
	v_sub_f32_e32 v85, v90, v85
	v_ldexp_f32 v84, v84, 1
	v_add_f32_e32 v84, v84, v88
	v_add_f32_e32 v84, v85, v84
	v_add_f32_e32 v85, v89, v84
	v_sub_f32_e32 v88, v85, v89
	v_sub_f32_e32 v84, v84, v88
	v_add_f32_e32 v88, v86, v85
	v_sub_f32_e32 v89, v88, v86
	v_sub_f32_e32 v85, v85, v89
	v_sub_f32_e32 v89, v88, v89
	v_sub_f32_e32 v86, v86, v89
	v_add_f32_e32 v85, v85, v86
	v_add_f32_e32 v86, v87, v84
	v_sub_f32_e32 v89, v86, v87
	v_sub_f32_e32 v84, v84, v89
	v_sub_f32_e32 v89, v86, v89
	v_sub_f32_e32 v87, v87, v89
	v_add_f32_e32 v85, v86, v85
	v_add_f32_e32 v84, v84, v87
	v_add_f32_e32 v86, v88, v85
	v_sub_f32_e32 v87, v86, v88
	v_sub_f32_e32 v85, v85, v87
	v_add_f32_e32 v84, v84, v85
	v_add_f32_e32 v85, v86, v84
	v_sub_f32_e32 v86, v85, v86
	v_sub_f32_e32 v84, v84, v86
	s_mov_b32 s6, 0x40200000
	v_mul_f32_e32 v86, s6, v85
	v_fma_f32 v85, v85, s6, -v86
	v_fma_f32 v84, v84, s6, v85
	v_add_f32_e32 v85, v86, v84
	v_cmp_class_f32_e64 vcc, v86, s28
	v_sub_f32_e32 v87, v85, v86
	v_cndmask_b32_e32 v85, v85, v86, vcc
	v_sub_f32_e32 v84, v84, v87
	v_mul_f32_e32 v86, s15, v85
	v_rndne_f32_e32 v86, v86
	v_mul_f32_e32 v87, s23, v86
	v_sub_f32_e32 v88, v85, v87
	v_sub_f32_e32 v89, v88, v85
	v_add_f32_e32 v87, v87, v89
	v_sub_f32_e32 v89, v88, v89
	v_sub_f32_e32 v89, v85, v89
	v_sub_f32_e32 v87, v89, v87
	v_cmp_neq_f32_e64 vcc, |v85|, s16
	v_cndmask_b32_e32 v84, 0, v84, vcc
	v_add_f32_e32 v84, v84, v87
	v_add_f32_e32 v87, v88, v84
	v_sub_f32_e32 v88, v87, v88
	v_sub_f32_e32 v84, v84, v88
	v_mul_f32_e32 v88, s22, v86
	v_sub_f32_e32 v89, v87, v88
	v_sub_f32_e32 v87, v87, v89
	v_sub_f32_e32 v87, v87, v88
	v_add_f32_e32 v84, v84, v87
	v_add_f32_e32 v87, v89, v84
	v_sub_f32_e32 v88, v87, v89
	v_sub_f32_e32 v84, v84, v88
	v_mul_f32_e32 v88, s21, v86
	v_sub_f32_e32 v89, v87, v88
	v_sub_f32_e32 v87, v87, v89
	v_sub_f32_e32 v87, v87, v88
	v_add_f32_e32 v84, v84, v87
	v_add_f32_e32 v87, v89, v84
	v_sub_f32_e32 v88, v87, v89
	v_sub_f32_e32 v84, v84, v88
	v_mul_f32_e32 v88, v87, v87
	v_fma_f32 v89, v87, v87, -v88
	v_add_f32_e32 v90, v84, v84
	v_fma_f32 v89, v87, v90, v89
	v_fma_f32 v89, v84, v84, v89
	v_add_f32_e32 v90, v88, v89
	v_sub_f32_e32 v88, v90, v88
	v_sub_f32_e32 v88, v89, v88
	v_fma_f32 v89, v87, s20, v54
	v_fma_f32 v89, v87, v89, s19
	v_fma_f32 v89, v87, v89, s18
	v_fma_f32 v89, v87, v89, s17
	v_mul_f32_e32 v91, v89, v90
	v_fma_f32 v90, v90, v89, -v91
	v_fma_f32 v88, v88, v89, v90
	v_add_f32_e32 v89, v91, v88
	v_sub_f32_e32 v90, v89, v91
	v_sub_f32_e32 v88, v88, v90
	v_add_f32_e32 v90, v87, v89
	v_sub_f32_e32 v87, v90, v87
	v_sub_f32_e32 v87, v89, v87
	v_add_f32_e32 v84, v84, v88
	v_add_f32_e32 v84, v87, v84
	v_add_f32_e32 v84, v90, v84
	v_cvt_i32_f32_e32 v86, v86
	v_add_f32_e32 v84, 1.0, v84
	v_ldexp_f32 v84, v84, v86
	v_cmp_nlt_f32_e32 vcc, s14, v85
	v_cndmask_b32_e32 v84, v30, v84, vcc
	v_cmp_ngt_f32_e32 vcc, s13, v85
	s_mov_b32 s52, 0xc1600000
	v_cndmask_b32_e32 v84, 0, v84, vcc
	v_cmp_class_f32_e64 vcc, v83, s49
	v_cndmask_b32_e32 v84, v81, v84, vcc
	v_cmp_neq_f32_e32 vcc, 0, v83
	v_cndmask_b32_e32 v84, 0, v84, vcc
	v_cmp_class_f32_e64 vcc, v83, s28
	v_cndmask_b32_e32 v84, v84, v30, vcc
	v_cmp_u_f32_e32 vcc, v83, v83
	v_cndmask_b32_e64 v84, |v84|, v83, vcc
	v_add_f32_e32 v84, 1.0, v84
	v_div_scale_f32 v85, s[6:7], v84, v84, s52
	v_rcp_f32_e32 v86, v85
	v_fma_f32 v87, -v85, v86, 1.0
	v_fma_f32 v86, v87, v86, v86
	v_div_scale_f32 v87, vcc, s52, v84, s52
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v85, v88, v87
	v_fma_f32 v88, v89, v86, v88
	v_fma_f32 v85, -v85, v88, v87
	v_div_fmas_f32 v85, v85, v86, v88
	v_mul_f32_e32 v86, 0, v58
	v_fma_f32 v82, v82, 2.0, v86
	v_add_f32_e32 v86, v58, v58
	v_fma_f32 v58, v58, 2.0, -v86
	v_add_f32_e32 v58, v58, v82
	v_add_f32_e32 v82, v86, v58
	v_cmp_class_f32_e64 vcc, v86, s28
	v_sub_f32_e32 v87, v82, v86
	v_cndmask_b32_e32 v82, v82, v86, vcc
	v_sub_f32_e32 v58, v58, v87
	v_mul_f32_e32 v86, s15, v82
	v_rndne_f32_e32 v86, v86
	v_mul_f32_e32 v87, s23, v86
	v_sub_f32_e32 v88, v82, v87
	v_sub_f32_e32 v89, v88, v82
	v_add_f32_e32 v87, v87, v89
	v_sub_f32_e32 v89, v88, v89
	v_sub_f32_e32 v89, v82, v89
	v_sub_f32_e32 v87, v89, v87
	v_cmp_neq_f32_e64 vcc, |v82|, s16
	v_cndmask_b32_e32 v58, 0, v58, vcc
	v_add_f32_e32 v58, v58, v87
	v_add_f32_e32 v87, v88, v58
	v_sub_f32_e32 v88, v87, v88
	v_sub_f32_e32 v58, v58, v88
	v_mul_f32_e32 v88, s22, v86
	v_sub_f32_e32 v89, v87, v88
	v_sub_f32_e32 v87, v87, v89
	v_sub_f32_e32 v87, v87, v88
	v_add_f32_e32 v58, v58, v87
	v_add_f32_e32 v87, v89, v58
	v_sub_f32_e32 v88, v87, v89
	v_sub_f32_e32 v58, v58, v88
	v_mul_f32_e32 v88, s21, v86
	v_sub_f32_e32 v89, v87, v88
	v_sub_f32_e32 v87, v87, v89
	v_sub_f32_e32 v87, v87, v88
	v_add_f32_e32 v58, v58, v87
	v_add_f32_e32 v87, v89, v58
	v_sub_f32_e32 v88, v87, v89
	v_sub_f32_e32 v88, v58, v88
	v_mul_f32_e32 v58, v87, v87
	v_fma_f32 v89, v87, v87, -v58
	v_add_f32_e32 v90, v88, v88
	v_fma_f32 v89, v87, v90, v89
	v_fma_f32 v89, v88, v88, v89
	v_add_f32_e32 v90, v58, v89
	v_sub_f32_e32 v58, v90, v58
	v_sub_f32_e32 v58, v89, v58
	v_fma_f32 v89, v87, s20, v54
	v_fma_f32 v89, v87, v89, s19
	v_fma_f32 v89, v87, v89, s18
	v_fma_f32 v89, v87, v89, s17
	v_mul_f32_e32 v91, v89, v90
	v_fma_f32 v90, v90, v89, -v91
	v_fma_f32 v89, v58, v89, v90
	v_div_fixup_f32 v58, v85, v84, s52
	v_add_f32_e32 v58, 0x41700000, v58
	v_mov_b32_e32 v84, 0x41000000
	v_cmp_neq_f32_e32 vcc, 1.0, v83
	v_cndmask_b32_e32 v58, v84, v58, vcc
	v_div_scale_f32 v83, s[6:7], v58, v58, s68
	v_rcp_f32_e32 v84, v83
	v_fma_f32 v85, -v83, v84, 1.0
	v_fma_f32 v84, v85, v84, v84
	v_div_scale_f32 v85, vcc, s68, v58, s68
	v_mul_f32_e32 v90, v85, v84
	v_fma_f32 v92, -v83, v90, v85
	v_fma_f32 v90, v92, v84, v90
	v_fma_f32 v83, -v83, v90, v85
	v_div_fmas_f32 v83, v83, v84, v90
	v_add_f32_e32 v84, v91, v89
	v_sub_f32_e32 v85, v84, v91
	v_sub_f32_e32 v85, v89, v85
	v_add_f32_e32 v89, v87, v84
	v_sub_f32_e32 v87, v89, v87
	v_sub_f32_e32 v84, v84, v87
	v_add_f32_e32 v85, v88, v85
	v_add_f32_e32 v84, v84, v85
	v_add_f32_e32 v84, v89, v84
	v_cvt_i32_f32_e32 v85, v86
	v_add_f32_e32 v84, 1.0, v84
	v_ldexp_f32 v84, v84, v85
	v_cmp_gt_f32_e32 vcc, s13, v82
	v_cmp_nlt_f32_e64 s[6:7], s14, v82
	v_cndmask_b32_e64 v82, v30, v84, s[6:7]
	s_or_b64 s[0:1], s[0:1], vcc
	v_cndmask_b32_e64 v82, v82, 0, s[0:1]
	v_cndmask_b32_e64 v82, v82, v30, s[2:3]
	v_cndmask_b32_e64 v82, |v82|, v14, s[4:5]
	v_div_fixup_f32 v83, v83, v58, s68
	v_mul_f32_e32 v82, v82, v83
	s_mov_b32 s0, 0x3ba3d70a
	s_mov_b32 s1, 0xbd75c28f
	v_sub_f32_e32 v83, 1.0, v20
	v_sub_f32_e32 v83, v83, v21
	v_sub_f32_e32 v83, v83, v22
	v_mul_f32_e32 v58, 0.5, v58
	v_mul_f32_e32 v58, v14, v58
	v_mul_f32_e32 v84, 0xbba3d70a, v22
	v_fma_f32 v85, v21, v58, v84
	v_mul_f32_e32 v58, v20, v58
	v_fma_f32 v58, v83, s0, -v58
	v_mul_f32_e32 v84, s1, v21
	v_fma_f32 v20, v20, v82, v84
	v_mul_f32_e32 v86, v83, v82
	v_div_fixup_f32 v82, v80, v56, v59
	v_sub_f32_e32 v83, v58, v20
	v_sub_f32_e32 v84, v20, v85
	s_mov_b32 s0, 0x3d75c28f
	v_fma_f32 v20, v22, s0, -v86
	v_sub_f32_e32 v85, v85, v20
	v_mov_b32_e32 v59, s51
	v_mov_b32_e32 v58, s50
	flat_store_dwordx4 v[58:59], v[82:85]
	s_mov_b32 s0, 0xba83126f
	s_mov_b32 s2, 0x3e0f5c29
	v_sub_f32_e32 v20, 0x40f1f3b6, v46
	v_sub_f32_e32 v22, 0x3fd33333, v47
	v_sub_f32_e32 v56, 0x3d8f5c29, v48
	v_mul_f32_e32 v48, 0xbca0902e, v48
	v_mul_f32_e32 v58, 0xb80637bd, v49
	v_mul_f32_e32 v46, s0, v46
	v_mul_f32_e32 v47, s0, v47
	v_sub_f32_e32 v49, s2, v49
	s_mov_b32 s0, 0xbfa66666
	s_waitcnt vmcnt(6) lgkmcnt(0)
	v_sub_f32_e32 v59, s2, v42
	v_sub_f32_e32 v59, v59, v43
	v_mul_f32_e32 v80, 0xb9f12c28, v42
	v_mul_f32_e32 v82, 0xb86f1349, v43
	v_sub_f32_e32 v42, 0x3c8c154d, v44
	v_sub_f32_e32 v43, 0x3f0ea0ea, v45
	v_mul_f32_e32 v44, s1, v44
	v_mul_f32_e32 v45, s0, v45
	s_mov_b32 s1, 0xbcf5c28f
	v_sub_f32_e32 v83, 0x3f9b8034, v38
	v_sub_f32_e32 v84, 0x3e4bc14e, v39
	v_sub_f32_e32 v85, 0x3ede24dd, v40
	v_sub_f32_e32 v86, 0x402ccccd, v41
	v_mul_f32_e32 v41, 0xc2820000, v41
	v_mul_f32_e32 v87, s0, v38
	v_mul_f32_e32 v88, s1, v39
	v_mul_f32_e32 v89, s1, v40
	s_mov_b32 s0, 0x38d1b717
	v_mul_f32_e32 v38, 0x4202cccd, v16
	v_mul_f32_e32 v39, s0, v26
	v_fma_f32 v40, v56, v38, v48
	v_fma_f32 v38, v20, v39, v46
	v_mul_f32_e32 v20, s0, v27
	v_fma_f32 v39, v22, v20, v47
	s_mov_b32 s0, 0x42c80000
	v_mul_f32_e32 v20, s0, v16
	v_mul_f32_e32 v22, s0, v14
	v_fma_f32 v42, v42, v20, v44
	v_fma_f32 v43, v43, v22, v45
	v_fma_f32 v45, v84, v22, v88
	v_mul_f32_e32 v20, s0, v15
	v_fma_f32 v44, v83, v20, v87
	v_mul_f32_e32 v22, s0, v25
	v_fma_f32 v46, v85, v20, v89
	v_fma_f32 v47, v86, v22, v41
	v_sub_f32_e32 v20, v49, v33
	v_mul_f32_e32 v22, 0x4017ae14, v16
	v_fma_f32 v41, v20, v22, v58
	v_mul_f32_e32 v22, 0xbb5a3c21, v33
	s_mov_b32 s0, 0x3b449ba6
	v_fma_f32 v56, v20, s0, v22
	v_mul_f32_e32 v20, 0x415ccccd, v16
	v_fma_f32 v58, v59, v20, v80
	s_mov_b32 s0, 0x3c809d49
	v_fma_f32 v59, v59, s0, v82
	s_mov_b32 s2, 0x3980f990
	v_div_scale_f32 v20, s[0:1], s2, s2, v16
	v_rcp_f32_e32 v22, v20
	v_fma_f32 v33, -v20, v22, 1.0
	v_fma_f32 v22, v33, v22, v22
	v_div_scale_f32 v33, vcc, v16, s2, v16
	v_mul_f32_e32 v48, v33, v22
	v_fma_f32 v49, -v20, v48, v33
	v_fma_f32 v48, v49, v22, v48
	v_fma_f32 v20, -v20, v48, v33
	v_div_fmas_f32 v20, v20, v22, v48
	s_mov_b32 s3, 0x3fd9999a
	v_div_scale_f32 v22, s[0:1], s3, s3, v25
	v_rcp_f32_e32 v33, v22
	v_fma_f32 v48, -v22, v33, 1.0
	v_fma_f32 v33, v48, v33, v33
	v_div_scale_f32 v48, vcc, v25, s3, v25
	v_mul_f32_e32 v49, v48, v33
	v_fma_f32 v80, -v22, v49, v48
	v_fma_f32 v49, v80, v33, v49
	v_fma_f32 v22, -v22, v49, v48
	v_div_fmas_f32 v22, v22, v33, v49
	v_div_fixup_f32 v20, v20, s2, v16
	v_frexp_mant_f32_e64 v33, |v20|
	v_cmp_gt_f32_e32 vcc, s35, v33
	v_cndmask_b32_e64 v48, 0, 1, vcc
	v_ldexp_f32 v33, v33, v48
	v_add_f32_e32 v48, 1.0, v33
	v_sub_f32_e32 v49, v48, v33
	v_sub_f32_e32 v80, v48, v49
	v_sub_f32_e32 v49, 1.0, v49
	v_sub_f32_e32 v80, v33, v80
	v_add_f32_e32 v49, v49, v80
	v_frexp_exp_i32_f32_e64 v80, |v20|
	v_subbrev_u32_e32 v80, vcc, 0, v80, vcc
	v_cvt_f32_i32_e32 v80, v80
	v_mul_f32_e32 v82, s24, v80
	v_fma_f32 v83, v80, s24, -v82
	v_fma_f32 v80, v80, s25, v83
	v_add_f32_e32 v33, -1.0, v33
	v_rcp_f32_e32 v83, v48
	v_mul_f32_e32 v84, v33, v83
	v_mul_f32_e32 v85, v48, v84
	v_fma_f32 v48, v84, v48, -v85
	v_fma_f32 v48, v84, v49, v48
	v_add_f32_e32 v49, v82, v80
	v_sub_f32_e32 v82, v49, v82
	v_sub_f32_e32 v80, v80, v82
	v_add_f32_e32 v82, v85, v48
	v_sub_f32_e32 v85, v82, v85
	v_sub_f32_e32 v48, v48, v85
	v_sub_f32_e32 v85, v33, v82
	v_sub_f32_e32 v33, v33, v85
	v_sub_f32_e32 v33, v33, v82
	v_sub_f32_e32 v33, v33, v48
	v_add_f32_e32 v33, v85, v33
	v_mul_f32_e32 v33, v83, v33
	v_add_f32_e32 v48, v84, v33
	v_sub_f32_e32 v82, v48, v84
	v_sub_f32_e32 v33, v33, v82
	v_mul_f32_e32 v82, v48, v48
	v_fma_f32 v83, v48, v48, -v82
	v_add_f32_e32 v84, v33, v33
	v_fma_f32 v83, v48, v84, v83
	v_fma_f32 v83, v33, v33, v83
	v_add_f32_e32 v84, v82, v83
	v_sub_f32_e32 v82, v84, v82
	v_sub_f32_e32 v82, v83, v82
	v_fma_f32 v83, v84, s29, v55
	v_fma_f32 v83, v84, v83, s30
	v_mul_f32_e32 v85, v84, v83
	v_fma_f32 v86, v84, v83, -v85
	v_fma_f32 v83, v82, v83, v86
	v_mul_f32_e32 v82, v48, v82
	v_fma_f32 v82, v84, v33, v82
	v_mul_f32_e32 v86, v48, v84
	v_fma_f32 v84, v84, v48, -v86
	v_add_f32_e32 v82, v84, v82
	v_add_f32_e32 v84, v85, v83
	v_sub_f32_e32 v85, v84, v85
	v_sub_f32_e32 v83, v83, v85
	v_add_f32_e32 v85, v86, v82
	v_sub_f32_e32 v86, v85, v86
	v_sub_f32_e32 v82, v82, v86
	v_add_f32_e32 v86, s31, v84
	v_add_f32_e32 v87, s33, v86
	v_sub_f32_e32 v84, v84, v87
	v_add_f32_e32 v83, s34, v83
	v_add_f32_e32 v83, v84, v83
	v_add_f32_e32 v84, v86, v83
	v_sub_f32_e32 v86, v84, v86
	v_sub_f32_e32 v83, v83, v86
	v_mul_f32_e32 v82, v82, v84
	v_fma_f32 v82, v85, v83, v82
	v_mul_f32_e32 v83, v85, v84
	v_fma_f32 v84, v85, v84, -v83
	v_add_f32_e32 v82, v84, v82
	v_add_f32_e32 v84, v83, v82
	v_sub_f32_e32 v83, v84, v83
	v_sub_f32_e32 v82, v82, v83
	v_ldexp_f32 v48, v48, 1
	v_add_f32_e32 v83, v48, v84
	v_sub_f32_e32 v48, v83, v48
	v_sub_f32_e32 v48, v84, v48
	v_ldexp_f32 v33, v33, 1
	v_add_f32_e32 v33, v33, v82
	v_add_f32_e32 v33, v48, v33
	v_add_f32_e32 v48, v83, v33
	v_sub_f32_e32 v82, v48, v83
	v_sub_f32_e32 v33, v33, v82
	v_add_f32_e32 v82, v49, v48
	v_sub_f32_e32 v83, v82, v49
	v_sub_f32_e32 v48, v48, v83
	v_sub_f32_e32 v83, v82, v83
	v_sub_f32_e32 v49, v49, v83
	v_add_f32_e32 v48, v48, v49
	v_add_f32_e32 v49, v80, v33
	v_sub_f32_e32 v83, v49, v80
	v_sub_f32_e32 v33, v33, v83
	v_sub_f32_e32 v83, v49, v83
	v_sub_f32_e32 v80, v80, v83
	v_add_f32_e32 v48, v49, v48
	v_add_f32_e32 v33, v33, v80
	v_add_f32_e32 v49, v82, v48
	v_sub_f32_e32 v80, v49, v82
	v_sub_f32_e32 v48, v48, v80
	v_add_f32_e32 v33, v33, v48
	v_add_f32_e32 v48, v49, v33
	v_sub_f32_e32 v49, v48, v49
	v_sub_f32_e32 v33, v33, v49
	s_mov_b32 s0, 0x3fe4bc6a
	v_mul_f32_e32 v49, s0, v48
	v_fma_f32 v48, v48, s0, -v49
	v_fma_f32 v33, v33, s0, v48
	v_add_f32_e32 v48, v49, v33
	v_cmp_class_f32_e64 vcc, v49, s28
	v_sub_f32_e32 v80, v48, v49
	v_cndmask_b32_e32 v48, v48, v49, vcc
	v_sub_f32_e32 v33, v33, v80
	v_mul_f32_e32 v49, s15, v48
	v_rndne_f32_e32 v49, v49
	v_mul_f32_e32 v80, s23, v49
	v_sub_f32_e32 v82, v48, v80
	v_sub_f32_e32 v83, v82, v48
	v_add_f32_e32 v80, v80, v83
	v_sub_f32_e32 v83, v82, v83
	v_sub_f32_e32 v83, v48, v83
	v_sub_f32_e32 v80, v83, v80
	v_cmp_neq_f32_e64 vcc, |v48|, s16
	v_cndmask_b32_e32 v33, 0, v33, vcc
	v_add_f32_e32 v33, v33, v80
	v_add_f32_e32 v80, v82, v33
	v_sub_f32_e32 v82, v80, v82
	v_sub_f32_e32 v33, v33, v82
	v_mul_f32_e32 v82, s22, v49
	v_sub_f32_e32 v83, v80, v82
	v_sub_f32_e32 v80, v80, v83
	v_sub_f32_e32 v80, v80, v82
	v_add_f32_e32 v33, v33, v80
	v_add_f32_e32 v80, v83, v33
	v_sub_f32_e32 v82, v80, v83
	v_sub_f32_e32 v33, v33, v82
	v_mul_f32_e32 v82, s21, v49
	v_sub_f32_e32 v83, v80, v82
	v_sub_f32_e32 v80, v80, v83
	v_sub_f32_e32 v80, v80, v82
	v_add_f32_e32 v33, v33, v80
	v_add_f32_e32 v80, v83, v33
	v_sub_f32_e32 v82, v80, v83
	v_sub_f32_e32 v33, v33, v82
	v_mul_f32_e32 v82, v80, v80
	v_fma_f32 v83, v80, v80, -v82
	v_add_f32_e32 v84, v33, v33
	v_fma_f32 v83, v80, v84, v83
	v_fma_f32 v83, v33, v33, v83
	v_add_f32_e32 v84, v82, v83
	v_sub_f32_e32 v82, v84, v82
	v_sub_f32_e32 v82, v83, v82
	v_fma_f32 v83, v80, s20, v54
	v_fma_f32 v83, v80, v83, s19
	v_fma_f32 v83, v80, v83, s18
	v_fma_f32 v83, v80, v83, s17
	v_mul_f32_e32 v85, v83, v84
	v_fma_f32 v84, v84, v83, -v85
	v_fma_f32 v82, v82, v83, v84
	v_div_fixup_f32 v22, v22, s3, v25
	v_frexp_mant_f32_e64 v83, |v22|
	v_cmp_gt_f32_e32 vcc, s35, v83
	v_cndmask_b32_e64 v84, 0, 1, vcc
	v_ldexp_f32 v83, v83, v84
	v_add_f32_e32 v84, 1.0, v83
	v_sub_f32_e32 v86, v84, v83
	v_sub_f32_e32 v87, v84, v86
	v_sub_f32_e32 v86, 1.0, v86
	v_sub_f32_e32 v87, v83, v87
	v_add_f32_e32 v86, v86, v87
	v_frexp_exp_i32_f32_e64 v87, |v22|
	v_subbrev_u32_e32 v87, vcc, 0, v87, vcc
	v_cvt_f32_i32_e32 v87, v87
	v_mul_f32_e32 v88, s24, v87
	v_fma_f32 v89, v87, s24, -v88
	v_fma_f32 v87, v87, s25, v89
	v_add_f32_e32 v83, -1.0, v83
	v_rcp_f32_e32 v89, v84
	v_mul_f32_e32 v90, v83, v89
	v_mul_f32_e32 v91, v84, v90
	v_fma_f32 v84, v90, v84, -v91
	v_fma_f32 v84, v90, v86, v84
	v_add_f32_e32 v86, v88, v87
	v_sub_f32_e32 v88, v86, v88
	v_sub_f32_e32 v87, v87, v88
	v_add_f32_e32 v88, v91, v84
	v_sub_f32_e32 v91, v88, v91
	v_sub_f32_e32 v84, v84, v91
	v_sub_f32_e32 v91, v83, v88
	v_sub_f32_e32 v83, v83, v91
	v_sub_f32_e32 v83, v83, v88
	v_sub_f32_e32 v83, v83, v84
	v_add_f32_e32 v83, v91, v83
	v_mul_f32_e32 v83, v89, v83
	v_add_f32_e32 v84, v90, v83
	v_sub_f32_e32 v88, v84, v90
	v_sub_f32_e32 v83, v83, v88
	v_mul_f32_e32 v88, v84, v84
	v_fma_f32 v89, v84, v84, -v88
	v_add_f32_e32 v90, v83, v83
	v_fma_f32 v89, v84, v90, v89
	v_fma_f32 v89, v83, v83, v89
	v_add_f32_e32 v90, v88, v89
	v_sub_f32_e32 v88, v90, v88
	v_sub_f32_e32 v88, v89, v88
	v_fma_f32 v89, v90, s29, v55
	v_fma_f32 v89, v90, v89, s30
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, v90, v89, -v91
	v_fma_f32 v89, v88, v89, v92
	v_mul_f32_e32 v88, v84, v88
	v_fma_f32 v88, v90, v83, v88
	v_mul_f32_e32 v92, v84, v90
	v_fma_f32 v90, v90, v84, -v92
	v_add_f32_e32 v88, v90, v88
	v_add_f32_e32 v90, v91, v89
	v_sub_f32_e32 v91, v90, v91
	v_sub_f32_e32 v89, v89, v91
	v_add_f32_e32 v91, v92, v88
	v_sub_f32_e32 v92, v91, v92
	v_sub_f32_e32 v88, v88, v92
	v_add_f32_e32 v92, s31, v90
	v_add_f32_e32 v93, s33, v92
	v_sub_f32_e32 v90, v90, v93
	v_add_f32_e32 v89, s34, v89
	v_add_f32_e32 v89, v90, v89
	v_add_f32_e32 v90, v92, v89
	v_sub_f32_e32 v92, v90, v92
	v_sub_f32_e32 v89, v89, v92
	v_mul_f32_e32 v88, v88, v90
	v_fma_f32 v88, v91, v89, v88
	v_mul_f32_e32 v89, v91, v90
	v_fma_f32 v90, v91, v90, -v89
	v_add_f32_e32 v88, v90, v88
	v_add_f32_e32 v90, v89, v88
	v_sub_f32_e32 v89, v90, v89
	v_sub_f32_e32 v88, v88, v89
	v_ldexp_f32 v84, v84, 1
	v_add_f32_e32 v89, v84, v90
	v_sub_f32_e32 v84, v89, v84
	v_sub_f32_e32 v84, v90, v84
	v_ldexp_f32 v83, v83, 1
	v_add_f32_e32 v83, v83, v88
	v_add_f32_e32 v83, v84, v83
	v_add_f32_e32 v84, v89, v83
	v_sub_f32_e32 v88, v84, v89
	v_sub_f32_e32 v83, v83, v88
	v_add_f32_e32 v88, v86, v84
	v_sub_f32_e32 v89, v88, v86
	v_sub_f32_e32 v84, v84, v89
	v_sub_f32_e32 v89, v88, v89
	v_sub_f32_e32 v86, v86, v89
	v_add_f32_e32 v84, v84, v86
	v_add_f32_e32 v86, v87, v83
	v_sub_f32_e32 v89, v86, v87
	v_sub_f32_e32 v83, v83, v89
	v_sub_f32_e32 v89, v86, v89
	v_sub_f32_e32 v87, v87, v89
	v_add_f32_e32 v84, v86, v84
	v_add_f32_e32 v83, v83, v87
	v_add_f32_e32 v86, v88, v84
	v_sub_f32_e32 v87, v86, v88
	v_sub_f32_e32 v84, v84, v87
	v_add_f32_e32 v83, v83, v84
	v_add_f32_e32 v84, v86, v83
	v_sub_f32_e32 v86, v84, v86
	v_sub_f32_e32 v83, v83, v86
	v_mul_f32_e32 v86, s0, v84
	v_fma_f32 v84, v84, s0, -v86
	v_fma_f32 v83, v83, s0, v84
	v_add_f32_e32 v84, v86, v83
	v_cmp_class_f32_e64 vcc, v86, s28
	v_sub_f32_e32 v87, v84, v86
	v_cndmask_b32_e32 v84, v84, v86, vcc
	v_sub_f32_e32 v83, v83, v87
	v_mul_f32_e32 v86, s15, v84
	v_rndne_f32_e32 v86, v86
	v_mul_f32_e32 v87, s23, v86
	v_sub_f32_e32 v88, v84, v87
	v_sub_f32_e32 v89, v88, v84
	v_add_f32_e32 v87, v87, v89
	v_sub_f32_e32 v89, v88, v89
	v_sub_f32_e32 v89, v84, v89
	v_sub_f32_e32 v87, v89, v87
	v_cmp_neq_f32_e64 vcc, |v84|, s16
	v_cndmask_b32_e32 v83, 0, v83, vcc
	v_add_f32_e32 v83, v83, v87
	v_add_f32_e32 v87, v88, v83
	v_sub_f32_e32 v88, v87, v88
	v_sub_f32_e32 v83, v83, v88
	v_mul_f32_e32 v88, s22, v86
	v_sub_f32_e32 v89, v87, v88
	v_sub_f32_e32 v87, v87, v89
	v_sub_f32_e32 v87, v87, v88
	v_add_f32_e32 v83, v83, v87
	v_add_f32_e32 v87, v89, v83
	v_sub_f32_e32 v88, v87, v89
	v_sub_f32_e32 v83, v83, v88
	v_mul_f32_e32 v88, s21, v86
	v_sub_f32_e32 v89, v87, v88
	v_sub_f32_e32 v87, v87, v89
	v_sub_f32_e32 v87, v87, v88
	v_add_f32_e32 v83, v83, v87
	v_add_f32_e32 v87, v89, v83
	v_sub_f32_e32 v88, v87, v89
	v_sub_f32_e32 v83, v83, v88
	v_mul_f32_e32 v88, v87, v87
	v_fma_f32 v89, v87, v87, -v88
	v_add_f32_e32 v90, v83, v83
	v_fma_f32 v89, v87, v90, v89
	v_fma_f32 v89, v83, v83, v89
	v_add_f32_e32 v90, v88, v89
	v_sub_f32_e32 v88, v90, v88
	v_sub_f32_e32 v88, v89, v88
	v_fma_f32 v89, v87, s20, v54
	v_fma_f32 v89, v87, v89, s19
	v_fma_f32 v89, v87, v89, s18
	v_fma_f32 v89, v87, v89, s17
	v_mul_f32_e32 v91, v89, v90
	v_fma_f32 v90, v90, v89, -v91
	v_fma_f32 v88, v88, v89, v90
	v_add_f32_e32 v89, v85, v82
	v_sub_f32_e32 v85, v89, v85
	v_sub_f32_e32 v82, v82, v85
	v_add_f32_e32 v85, v80, v89
	v_sub_f32_e32 v80, v85, v80
	v_sub_f32_e32 v80, v89, v80
	v_add_f32_e32 v33, v33, v82
	v_add_f32_e32 v82, v91, v88
	v_sub_f32_e32 v89, v82, v91
	v_sub_f32_e32 v88, v88, v89
	v_add_f32_e32 v33, v80, v33
	v_add_f32_e32 v80, v87, v82
	v_sub_f32_e32 v87, v80, v87
	v_sub_f32_e32 v82, v82, v87
	v_add_f32_e32 v83, v83, v88
	v_add_f32_e32 v33, v85, v33
	v_add_f32_e32 v82, v82, v83
	v_add_f32_e32 v80, v80, v82
	v_cvt_i32_f32_e32 v49, v49
	v_add_f32_e32 v33, 1.0, v33
	v_ldexp_f32 v33, v33, v49
	v_cvt_i32_f32_e32 v49, v86
	v_add_f32_e32 v80, 1.0, v80
	v_ldexp_f32 v49, v80, v49
	v_cmp_nlt_f32_e32 vcc, s14, v84
	v_cndmask_b32_e32 v49, v30, v49, vcc
	v_cmp_ngt_f32_e32 vcc, s13, v84
	v_cmp_nlt_f32_e64 s[0:1], s14, v48
	v_cndmask_b32_e64 v33, v30, v33, s[0:1]
	v_cmp_ngt_f32_e64 s[0:1], s13, v48
	v_cndmask_b32_e64 v33, 0, v33, s[0:1]
	v_cmp_class_f32_e64 s[0:1], v20, s49
	v_cndmask_b32_e64 v33, v81, v33, s[0:1]
	v_cndmask_b32_e32 v48, 0, v49, vcc
	v_cmp_class_f32_e64 vcc, v22, s49
	v_cndmask_b32_e32 v48, v81, v48, vcc
	v_cmp_neq_f32_e32 vcc, 0, v22
	v_cndmask_b32_e32 v48, 0, v48, vcc
	v_cmp_class_f32_e64 vcc, v22, s28
	v_cndmask_b32_e32 v48, v48, v30, vcc
	v_cmp_u_f32_e32 vcc, v22, v22
	v_cndmask_b32_e64 v48, |v48|, v22, vcc
	v_cmp_neq_f32_e32 vcc, 1.0, v22
	v_cmp_neq_f32_e64 s[0:1], 0, v20
	v_cndmask_b32_e64 v22, 0, v33, s[0:1]
	v_cmp_class_f32_e64 s[0:1], v20, s28
	v_cndmask_b32_e64 v22, v22, v30, s[0:1]
	v_cmp_u_f32_e64 s[0:1], v20, v20
	v_cndmask_b32_e64 v22, |v22|, v20, s[0:1]
	v_cmp_neq_f32_e64 s[0:1], 1.0, v20
	v_cndmask_b32_e64 v20, 1.0, v22, s[0:1]
	v_cndmask_b32_e32 v22, 1.0, v48, vcc
	v_add_f32_e32 v33, 1.0, v20
	v_sub_f32_e32 v48, v20, v22
	v_add_f32_e32 v20, v22, v33
	v_mul_f32_e32 v22, 0x3995f245, v48
	v_div_scale_f32 v33, s[0:1], v20, v20, v22
	v_rcp_f32_e32 v48, v33
	v_fma_f32 v49, -v33, v48, 1.0
	v_fma_f32 v48, v49, v48, v48
	v_div_scale_f32 v49, vcc, v22, v20, v22
	v_mul_f32_e32 v80, v49, v48
	v_fma_f32 v81, -v33, v80, v49
	v_fma_f32 v80, v81, v48, v80
	v_fma_f32 v33, -v33, v80, v49
	v_div_fmas_f32 v33, v33, v48, v80
	v_frexp_mant_f32_e64 v48, |v4|
	v_cmp_gt_f32_e32 vcc, s35, v48
	v_cndmask_b32_e64 v49, 0, 1, vcc
	v_ldexp_f32 v48, v48, v49
	v_add_f32_e32 v49, 1.0, v48
	v_sub_f32_e32 v80, v49, v48
	v_sub_f32_e32 v81, v49, v80
	v_sub_f32_e32 v80, 1.0, v80
	v_sub_f32_e32 v81, v48, v81
	v_add_f32_e32 v80, v80, v81
	v_frexp_exp_i32_f32_e64 v81, |v4|
	v_subbrev_u32_e32 v81, vcc, 0, v81, vcc
	v_cvt_f32_i32_e32 v81, v81
	v_mul_f32_e32 v82, s24, v81
	v_fma_f32 v83, v81, s24, -v82
	v_fma_f32 v81, v81, s25, v83
	v_add_f32_e32 v48, -1.0, v48
	v_rcp_f32_e32 v83, v49
	v_mul_f32_e32 v84, v48, v83
	v_mul_f32_e32 v85, v49, v84
	v_fma_f32 v49, v84, v49, -v85
	v_fma_f32 v49, v84, v80, v49
	v_add_f32_e32 v80, v82, v81
	v_sub_f32_e32 v82, v80, v82
	v_sub_f32_e32 v81, v81, v82
	v_add_f32_e32 v82, v85, v49
	v_sub_f32_e32 v85, v82, v85
	v_sub_f32_e32 v49, v49, v85
	v_sub_f32_e32 v85, v48, v82
	v_sub_f32_e32 v48, v48, v85
	v_sub_f32_e32 v48, v48, v82
	v_sub_f32_e32 v48, v48, v49
	v_add_f32_e32 v48, v85, v48
	v_mul_f32_e32 v48, v83, v48
	v_add_f32_e32 v49, v84, v48
	v_sub_f32_e32 v82, v49, v84
	v_sub_f32_e32 v48, v48, v82
	v_mul_f32_e32 v82, v49, v49
	v_fma_f32 v83, v49, v49, -v82
	v_add_f32_e32 v84, v48, v48
	v_fma_f32 v83, v49, v84, v83
	v_fma_f32 v83, v48, v48, v83
	v_add_f32_e32 v84, v82, v83
	v_sub_f32_e32 v82, v84, v82
	v_sub_f32_e32 v82, v83, v82
	v_fma_f32 v55, v84, s29, v55
	v_fma_f32 v55, v84, v55, s30
	v_mul_f32_e32 v83, v84, v55
	v_fma_f32 v85, v84, v55, -v83
	v_fma_f32 v55, v82, v55, v85
	v_mul_f32_e32 v82, v49, v82
	v_fma_f32 v82, v84, v48, v82
	v_mul_f32_e32 v85, v49, v84
	v_fma_f32 v84, v84, v49, -v85
	v_add_f32_e32 v82, v84, v82
	v_add_f32_e32 v84, v83, v55
	v_sub_f32_e32 v83, v84, v83
	v_sub_f32_e32 v55, v55, v83
	v_add_f32_e32 v83, v85, v82
	v_sub_f32_e32 v85, v83, v85
	v_sub_f32_e32 v82, v82, v85
	v_add_f32_e32 v85, s31, v84
	v_add_f32_e32 v86, s33, v85
	v_sub_f32_e32 v84, v84, v86
	v_add_f32_e32 v55, s34, v55
	v_add_f32_e32 v55, v84, v55
	v_add_f32_e32 v84, v85, v55
	v_sub_f32_e32 v85, v84, v85
	v_sub_f32_e32 v55, v55, v85
	v_mul_f32_e32 v82, v82, v84
	v_fma_f32 v55, v83, v55, v82
	v_mul_f32_e32 v82, v83, v84
	v_fma_f32 v83, v83, v84, -v82
	v_add_f32_e32 v55, v83, v55
	v_add_f32_e32 v83, v82, v55
	v_sub_f32_e32 v82, v83, v82
	v_sub_f32_e32 v55, v55, v82
	v_ldexp_f32 v49, v49, 1
	v_add_f32_e32 v82, v49, v83
	v_sub_f32_e32 v49, v82, v49
	v_sub_f32_e32 v49, v83, v49
	v_ldexp_f32 v48, v48, 1
	v_add_f32_e32 v48, v48, v55
	v_add_f32_e32 v48, v49, v48
	v_add_f32_e32 v49, v82, v48
	v_sub_f32_e32 v55, v49, v82
	v_sub_f32_e32 v48, v48, v55
	v_add_f32_e32 v55, v80, v49
	v_sub_f32_e32 v82, v55, v80
	v_sub_f32_e32 v49, v49, v82
	v_sub_f32_e32 v82, v55, v82
	v_sub_f32_e32 v80, v80, v82
	v_add_f32_e32 v49, v49, v80
	v_add_f32_e32 v80, v81, v48
	v_sub_f32_e32 v82, v80, v81
	v_sub_f32_e32 v48, v48, v82
	v_sub_f32_e32 v82, v80, v82
	v_sub_f32_e32 v81, v81, v82
	v_add_f32_e32 v49, v80, v49
	v_add_f32_e32 v48, v48, v81
	v_add_f32_e32 v80, v55, v49
	v_sub_f32_e32 v55, v80, v55
	v_sub_f32_e32 v49, v49, v55
	v_add_f32_e32 v48, v48, v49
	v_add_f32_e32 v49, v80, v48
	v_sub_f32_e32 v55, v49, v80
	v_sub_f32_e32 v48, v48, v55
	v_mul_f32_e32 v55, 0, v49
	v_fma_f32 v48, v48, s42, v55
	v_mul_f32_e32 v55, s42, v49
	v_fma_f32 v49, v49, s42, -v55
	v_add_f32_e32 v48, v49, v48
	v_add_f32_e32 v49, v55, v48
	v_cmp_class_f32_e64 vcc, v55, s28
	v_sub_f32_e32 v80, v49, v55
	v_cndmask_b32_e32 v81, v49, v55, vcc
	v_sub_f32_e32 v48, v48, v80
	v_mul_f32_e32 v49, s15, v81
	v_rndne_f32_e32 v80, v49
	v_mul_f32_e32 v49, s23, v80
	v_sub_f32_e32 v55, v81, v49
	v_sub_f32_e32 v82, v55, v81
	v_add_f32_e32 v49, v49, v82
	v_sub_f32_e32 v82, v55, v82
	v_sub_f32_e32 v82, v81, v82
	v_sub_f32_e32 v49, v82, v49
	v_cmp_neq_f32_e64 vcc, |v81|, s16
	v_cndmask_b32_e32 v48, 0, v48, vcc
	v_add_f32_e32 v48, v48, v49
	v_add_f32_e32 v49, v55, v48
	v_sub_f32_e32 v55, v49, v55
	v_sub_f32_e32 v48, v48, v55
	v_mul_f32_e32 v55, s22, v80
	v_sub_f32_e32 v82, v49, v55
	v_sub_f32_e32 v49, v49, v82
	v_sub_f32_e32 v49, v49, v55
	v_add_f32_e32 v48, v48, v49
	v_add_f32_e32 v49, v82, v48
	v_sub_f32_e32 v55, v49, v82
	v_sub_f32_e32 v48, v48, v55
	v_mul_f32_e32 v55, s21, v80
	v_sub_f32_e32 v82, v49, v55
	v_sub_f32_e32 v49, v49, v82
	v_sub_f32_e32 v49, v49, v55
	v_add_f32_e32 v48, v48, v49
	v_add_f32_e32 v83, v82, v48
	v_sub_f32_e32 v49, v83, v82
	v_sub_f32_e32 v82, v48, v49
	v_mul_f32_e32 v48, v83, v83
	v_fma_f32 v49, v83, v83, -v48
	v_add_f32_e32 v55, v82, v82
	v_fma_f32 v49, v83, v55, v49
	v_fma_f32 v49, v82, v82, v49
	v_add_f32_e32 v55, v48, v49
	v_sub_f32_e32 v48, v55, v48
	v_sub_f32_e32 v48, v49, v48
	v_fma_f32 v49, v83, s20, v54
	v_fma_f32 v49, v83, v49, s19
	v_fma_f32 v49, v83, v49, s18
	v_fma_f32 v49, v83, v49, s17
	v_mul_f32_e32 v84, v49, v55
	v_fma_f32 v54, v55, v49, -v84
	v_fma_f32 v85, v48, v49, v54
	v_div_fixup_f64 v[48:49], v[66:67], v[31:32], v[64:65]
	v_div_fixup_f64 v[54:55], v[70:71], v[31:32], v[68:69]
	s_add_u32 s0, s26, 64
	s_addc_u32 s1, s27, 0
	v_mov_b32_e32 v65, s1
	v_mov_b32_e32 v64, s0
	flat_store_dwordx4 v[64:65], v[38:41]
	s_add_u32 s0, s26, 0x50
	s_addc_u32 s1, s27, 0
	v_mov_b32_e32 v65, s1
	v_mov_b32_e32 v64, s0
	flat_store_dwordx4 v[64:65], v[56:59]
	s_add_u32 s0, s26, 0x60
	s_addc_u32 s1, s27, 0
	v_mov_b32_e32 v65, s1
	v_mov_b32_e32 v64, s0
	flat_store_dwordx4 v[64:65], v[42:45]
	v_div_fixup_f32 v64, v33, v20, v22
	v_div_fixup_f32 v20, v34, v26, s11
	v_cmp_class_f32_e64 vcc, v20, s45
	v_cndmask_b32_e32 v22, 1.0, v78, vcc
	v_mul_f32_e32 v20, v20, v22
	v_log_f32_e32 v20, v20
	v_mul_f32_e32 v22, s46, v20
	v_fma_f32 v33, v20, s46, -v22
	v_fma_f32 v33, v20, s47, v33
	v_add_f32_e32 v22, v22, v33
	v_cmp_class_f32_e64 s[0:1], v20, s48
	v_cndmask_b32_e64 v20, v22, v20, s[0:1]
	v_cndmask_b32_e32 v22, 0, v79, vcc
	v_sub_f32_e32 v22, v20, v22
	v_add_f32_e32 v20, v84, v85
	v_sub_f32_e32 v33, v20, v84
	v_sub_f32_e32 v33, v85, v33
	v_add_f32_e32 v34, v83, v20
	v_sub_f32_e32 v65, v34, v83
	v_sub_f32_e32 v20, v20, v65
	v_add_f32_e32 v33, v82, v33
	v_add_f32_e32 v20, v20, v33
	v_add_f32_e32 v20, v34, v20
	v_cvt_i32_f32_e32 v33, v80
	v_add_f32_e32 v20, 1.0, v20
	v_ldexp_f32 v20, v20, v33
	v_cmp_nlt_f32_e32 vcc, s14, v81
	v_cndmask_b32_e32 v20, v30, v20, vcc
	v_cmp_ngt_f32_e32 vcc, s13, v81
	v_cndmask_b32_e32 v20, 0, v20, vcc
	v_cmp_gt_f32_e32 vcc, 0, v4
	v_cndmask_b32_e32 v33, 0, v62, vcc
	v_bfi_b32 v20, s40, v20, v33
	v_bfi_b32 v33, s40, 0, v4
	v_cmp_eq_f32_e32 vcc, 0, v4
	v_cndmask_b32_e32 v20, v20, v33, vcc
	v_cmp_class_f32_e64 vcc, v4, 4
	v_cndmask_b32_e32 v20, v20, v63, vcc
	v_cvt_f32_f64_e32 v33, v[48:49]
	v_cmp_class_f32_e64 vcc, v4, s44
	v_cndmask_b32_e32 v30, v20, v30, vcc
	v_div_fixup_f32 v20, v51, s12, v50
	v_mul_f32_e32 v33, s43, v33
	v_mul_f32_e32 v33, v7, v33
	v_mul_f32_e32 v33, v0, v33
	v_mul_f32_e32 v33, v1, v33
	v_cvt_f64_f32_e32 v[33:34], v33
	v_mul_f64 v[33:34], v[33:34], s[36:37]
	v_cvt_f32_f64_e32 v33, v[33:34]
	v_cmp_u_f32_e32 vcc, v4, v4
	v_cndmask_b32_e32 v50, v30, v4, vcc
	v_mul_f32_e32 v4, 0x3fe147ae, v50
	v_mul_f32_e32 v4, v5, v4
	v_mul_f32_e32 v4, v6, v4
	s_mov_b32 s2, 0xc1d5b2df
	v_fma_f32 v22, v22, s2, v17
	v_mul_f32_e32 v4, v22, v4
	s_mov_b32 s0, 0x38090725
	v_fma_f32 v4, v22, s0, v4
	v_fma_f32 v4, v75, s42, v4
	v_fma_f32 v4, v20, s42, v4
	v_add_f32_e32 v4, v4, v33
	s_mov_b32 s3, 0x30ebea72
	v_mul_f32_e32 v22, s39, v4
	v_div_scale_f32 v30, s[0:1], s3, s3, v22
	v_rcp_f32_e32 v33, v30
	v_fma_f32 v34, -v30, v33, 1.0
	v_fma_f32 v33, v34, v33, v33
	v_div_scale_f32 v34, vcc, v22, s3, v22
	v_mul_f32_e32 v48, v34, v33
	v_fma_f32 v49, -v30, v48, v34
	v_fma_f32 v48, v49, v33, v48
	v_fma_f32 v30, -v30, v48, v34
	v_div_fmas_f32 v30, v30, v33, v48
	s_mov_b32 s1, 0x3ed66e5f
	s_mov_b32 s0, 0xbdcb5ac
	v_sub_f32_e32 v25, v25, v14
	v_cvt_f64_f32_e32 v[33:34], v25
	v_mul_f64 v[33:34], v[33:34], s[0:1]
	v_cvt_f32_f64_e32 v33, v[33:34]
	v_mul_f32_e32 v21, 0x41c80000, v21
	v_mul_f32_e32 v25, v21, v25
	s_mov_b32 s0, 0x41949249
	v_fma_f32 v21, v33, s0, v25
	v_fma_f32 v21, v64, s0, -v21
	v_sub_f32_e32 v48, v21, v47
	v_div_fixup_f32 v21, v30, s3, v22
	s_mov_b32 s0, 0x3f83c20b
	v_sub_f32_e32 v22, v27, v26
	v_fma_f32 v21, v22, s0, v21
	v_sub_f32_e32 v49, v21, v38
	s_add_u32 s0, s26, 0x70
	s_addc_u32 s1, s27, 0
	v_mov_b32_e32 v22, s1
	v_mov_b32_e32 v21, s0
	flat_store_dwordx4 v[21:22], v[46:49]
	v_div_fixup_f32 v21, v29, v27, s11
	v_cmp_class_f32_e64 vcc, v21, s45
	v_cndmask_b32_e32 v22, 1.0, v78, vcc
	v_mul_f32_e32 v21, v21, v22
	v_log_f32_e32 v21, v21
	v_mul_f32_e32 v22, s46, v21
	v_fma_f32 v29, v21, s46, -v22
	v_fma_f32 v29, v21, s47, v29
	v_add_f32_e32 v22, v22, v29
	v_cmp_class_f32_e64 s[0:1], v21, s48
	v_cndmask_b32_e64 v21, v22, v21, s[0:1]
	v_cvt_f32_f64_e32 v22, v[54:55]
	v_cndmask_b32_e32 v29, 0, v79, vcc
	v_sub_f32_e32 v34, v21, v29
	v_div_fixup_f32 v21, v53, s12, v52
	v_mul_f32_e32 v22, s41, v22
	v_mul_f32_e32 v22, v7, v22
	v_mul_f32_e32 v22, v0, v22
	v_mul_f32_e32 v22, v2, v22
	v_cvt_f64_f32_e32 v[29:30], v22
	v_mul_f64 v[29:30], v[29:30], s[36:37]
	v_cvt_f32_f64_e32 v22, v[29:30]
	v_mul_f32_e32 v29, 0x4163d70a, v50
	v_mul_f32_e32 v5, v5, v29
	v_mul_f32_e32 v5, v6, v5
	v_fma_f32 v6, v34, s2, v17
	v_mul_f32_e32 v5, v6, v5
	s_mov_b32 s0, 0x398a95c5
	v_fma_f32 v5, v6, s0, v5
	v_fma_f32 v5, v72, s42, v5
	v_fma_f32 v5, v21, s42, v5
	v_add_f32_e32 v5, v5, v22
	v_mul_f32_e32 v6, s39, v5
	v_mul_f32_e32 v22, 0x53b05a3b, v6
	v_div_scale_f32 v6, s[0:1], s38, s38, v22
	v_rcp_f32_e32 v29, v6
	v_fma_f32 v30, -v6, v29, 1.0
	v_fma_f32 v29, v30, v29, v29
	v_div_scale_f32 v30, vcc, v22, s38, v22
	v_mul_f32_e32 v34, v30, v29
	v_fma_f32 v38, -v6, v34, v30
	v_fma_f32 v34, v38, v29, v34
	v_fma_f32 v6, -v6, v34, v30
	v_div_fmas_f32 v29, v6, v29, v34
	v_fma_f32 v6, v77, s9, v61
	v_add_f32_e32 v6, v6, v76
	v_fma_f32 v6, v75, -2.0, v6
	s_mov_b32 s2, 0x316bea72
	v_mul_f32_e32 v30, s39, v6
	v_div_scale_f32 v34, s[0:1], s2, s2, v30
	v_rcp_f32_e32 v38, v34
	v_fma_f32 v47, -v34, v38, 1.0
	v_fma_f32 v38, v47, v38, v38
	v_div_scale_f32 v47, vcc, v30, s2, v30
	v_mul_f32_e32 v48, v47, v38
	v_fma_f32 v49, -v34, v48, v47
	v_fma_f32 v48, v49, v38, v48
	v_fma_f32 v34, -v34, v48, v47
	v_div_fmas_f32 v34, v34, v38, v48
	v_mul_f32_e32 v25, 0x2ba29560, v25
	s_mov_b32 s3, 0x28a03e07
	v_div_scale_f32 v38, s[0:1], s3, s3, v25
	v_rcp_f32_e32 v47, v38
	v_fma_f32 v48, -v38, v47, 1.0
	v_fma_f32 v47, v48, v47, v47
	v_div_scale_f32 v48, vcc, v25, s3, v25
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v50, -v38, v49, v48
	v_fma_f32 v49, v50, v47, v49
	v_fma_f32 v38, -v38, v49, v48
	v_div_fmas_f32 v38, v38, v47, v49
	v_mul_f32_e32 v33, 0x2dbcb686, v33
	v_div_scale_f32 v47, s[0:1], s3, s3, v33
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v49, -v47, v48, 1.0
	v_fma_f32 v48, v49, v48, v48
	v_div_scale_f32 v49, vcc, v33, s3, v33
	v_mul_f32_e32 v50, v49, v48
	v_fma_f32 v51, -v47, v50, v49
	v_fma_f32 v50, v51, v48, v50
	v_fma_f32 v47, -v47, v50, v49
	v_div_fmas_f32 v47, v47, v48, v50
	v_div_fixup_f32 v22, v29, s38, v22
	s_mov_b32 s0, 0x3ce34194
	v_sub_f32_e32 v26, v26, v27
	v_fma_f32 v22, v26, s0, v22
	s_mov_b32 s0, 0x401eddc4
	v_sub_f32_e32 v26, v28, v27
	v_fma_f32 v22, v26, s0, v22
	v_div_fixup_f32 v26, v34, s2, v30
	s_mov_b32 s0, 0x42394c0e
	v_sub_f32_e32 v29, v15, v14
	v_fma_f32 v26, v29, s0, v26
	v_add_f32_e32 v29, v43, v45
	v_sub_f32_e32 v26, v26, v29
	v_div_fixup_f32 v25, v38, s3, v25
	v_add_f32_e32 v25, v25, v26
	v_div_fixup_f32 v26, v47, s3, v33
	v_add_f32_e32 v50, v26, v25
	v_sub_f32_e32 v47, v22, v39
	v_sub_f32_e32 v22, v27, v28
	v_mul_f32_e32 v48, 0x3d9c6c14, v22
	s_add_u32 s0, s26, 0x80
	s_addc_u32 s1, s27, 0
	v_mov_b32_e32 v49, v57
	v_mov_b32_e32 v26, s1
	v_mov_b32_e32 v25, s0
	flat_store_dwordx4 v[25:26], v[47:50]
	v_add_f32_e32 v22, v40, v41
	v_add_f32_e32 v22, v56, v22
	v_add_f32_e32 v22, 0, v22
	v_add_f32_e32 v22, v58, v22
	v_add_f32_e32 v22, v59, v22
	v_add_f32_e32 v25, v44, v46
	v_add_f32_e32 v26, v42, v22
	v_fma_f32 v22, v74, s8, v60
	v_add_f32_e32 v22, v22, v73
	v_fma_f32 v22, v72, -2.0, v22
	s_mov_b32 s2, 0x3408c755
	v_mul_f32_e32 v27, s39, v22
	v_div_scale_f32 v29, s[0:1], s2, s2, v27
	v_rcp_f32_e32 v30, v29
	v_fma_f32 v33, -v29, v30, 1.0
	v_fma_f32 v30, v33, v30, v30
	v_div_scale_f32 v33, vcc, v27, s2, v27
	v_mul_f32_e32 v34, v33, v30
	v_fma_f32 v38, -v29, v34, v33
	v_fma_f32 v34, v38, v30, v34
	v_fma_f32 v29, -v29, v34, v33
	v_div_fmas_f32 v29, v29, v30, v34
	v_div_fixup_f32 v27, v29, s2, v27
	s_mov_b32 s0, 0x3f9fccdb
	v_sub_f32_e32 v29, v14, v15
	v_fma_f32 v27, v29, s0, v27
	s_mov_b32 s0, 0x40b488e8
	v_sub_f32_e32 v29, v16, v15
	v_fma_f32 v27, v29, s0, v27
	v_sub_f32_e64 v26, -v64, v26
	v_sub_f32_e32 v25, v27, v25
	s_mov_b32 s0, 0x3e31c1e1
	v_sub_f32_e32 v16, v15, v16
	v_fma_f32 v26, v16, s0, v26
	s_add_u32 s0, s26, s45
	s_addc_u32 s1, s27, 0
	v_mov_b32_e32 v30, s1
	v_mov_b32_e32 v29, s0
	flat_store_dwordx2 v[29:30], v[25:26]
	s_mov_b64 s[0:1], 0
	v_cvt_f32_i32_e32 v16, s10
	v_cmp_ngt_f32_e64 s[2:3], |v16|, |v12|
	s_and_b64 vcc, exec, s[2:3]
	v_and_b32_e32 v27, s40, v16
	v_and_b32_e32 v26, s40, v12
	s_cbranch_vccz BB0_25
; %bb.24:
	v_bfi_b32 v25, s40, 0, v16
	v_cmp_eq_f32_e32 vcc, v27, v26
	v_cndmask_b32_e32 v25, v16, v25, vcc
	s_andn2_b64 vcc, exec, s[0:1]
	s_cbranch_vccz BB0_26
	s_branch BB0_30
BB0_25:
                                        ; implicit-def: $vgpr25
	s_mov_b64 vcc, 0
BB0_26:
	v_frexp_exp_i32_f32_e32 v29, v27
	v_frexp_mant_f32_e32 v33, v27
	v_frexp_exp_i32_f32_e32 v27, v26
	v_frexp_mant_f32_e32 v25, v26
	v_ldexp_f32 v25, v25, 1
	v_subrev_u32_e32 v30, vcc, v27, v29
	v_rcp_f32_e32 v26, v25
	v_cmp_gt_i32_e32 vcc, 13, v30
	s_and_b64 vcc, exec, vcc
	v_ldexp_f32 v29, v33, 12
	s_cbranch_vccnz BB0_28
BB0_27:                                 ; %.preheader
                                        ; =>This Inner Loop Header: Depth=1
	v_mul_f32_e32 v33, v26, v29
	v_rndne_f32_e32 v33, v33
	v_fma_f32 v29, -v33, v25, v29
	v_add_f32_e32 v33, v25, v29
	v_cmp_gt_f32_e32 vcc, 0, v29
	v_cndmask_b32_e32 v29, v29, v33, vcc
	v_ldexp_f32 v29, v29, 12
	v_add_u32_e32 v33, vcc, -12, v30
	v_cmp_lt_i32_e32 vcc, 24, v30
	s_and_b64 vcc, exec, vcc
	v_mov_b32_e32 v30, v33
	s_cbranch_vccnz BB0_27
	s_branch BB0_29
BB0_28:
	v_mov_b32_e32 v33, v30
BB0_29:                                 ; %Flow171
	v_add_u32_e32 v27, vcc, -1, v27
	v_add_u32_e32 v30, vcc, -11, v33
	v_ldexp_f32 v29, v29, v30
	v_mul_f32_e32 v26, v26, v29
	v_rndne_f32_e32 v26, v26
	v_fma_f32 v26, -v26, v25, v29
	v_add_f32_e32 v25, v25, v26
	v_cmp_gt_f32_e32 vcc, 0, v26
	v_cndmask_b32_e32 v25, v26, v25, vcc
	v_ldexp_f32 v25, v25, v27
	v_and_b32_e32 v26, 0x80000000, v16
	v_xor_b32_e32 v25, v26, v25
BB0_30:                                 ; %Flow174
	s_movk_i32 s6, 0x90
	v_mov_b32_e32 v95, 0x4f800000
	s_movk_i32 s12, 0x207
	v_add_f32_e32 v26, 0x42040000, v17
	v_cmp_class_f32_e64 vcc, v14, s6
	v_cndmask_b32_e32 v27, 1.0, v95, vcc
	v_mul_f32_e32 v27, v14, v27
	v_log_f32_e32 v29, v27
	v_cvt_f64_f32_e32 v[26:27], v26
	s_mov_b32 s9, 0x40366666
	s_mov_b32 s2, 0x3e9a209a
	v_mul_f32_e32 v30, s2, v29
	v_fma_f32 v33, v29, s2, -v30
	s_mov_b32 s3, 0x3284fbcf
	v_fma_f32 v33, v29, s3, v33
	v_add_f32_e32 v30, v30, v33
	v_cmp_class_f32_e64 s[0:1], v29, s12
	v_cndmask_b32_e64 v29, v30, v29, s[0:1]
	v_mov_b32_e32 v30, 0x411a209b
	v_cndmask_b32_e32 v33, 0, v30, vcc
	v_cmp_class_f32_e64 vcc, v15, s6
	v_cndmask_b32_e32 v34, 1.0, v95, vcc
	v_mul_f32_e32 v34, v15, v34
	v_log_f32_e32 v34, v34
	v_sub_f32_e32 v29, v33, v29
	s_mov_b32 s4, 0x40400000
	v_add_f32_e32 v29, s4, v29
	v_mul_f32_e32 v33, s2, v34
	v_fma_f32 v38, v34, s2, -v33
	v_fma_f32 v38, v34, s3, v38
	v_add_f32_e32 v33, v33, v38
	v_cmp_class_f32_e64 s[0:1], v34, s12
	v_cndmask_b32_e64 v33, v33, v34, s[0:1]
	v_cndmask_b32_e32 v30, 0, v30, vcc
	v_sub_f32_e32 v30, v30, v33
	v_add_f32_e32 v33, s4, v30
	v_cvt_f64_f32_e32 v[29:30], v29
	s_mov_b32 s25, 0xc01ccccc
	v_cvt_f64_f32_e32 v[33:34], v33
	s_mov_b32 s24, 0xcccccccd
	v_add_f64 v[29:30], v[29:30], s[24:25]
	s_mov_b32 s8, 0x66666666
	v_add_f64 v[33:34], v[33:34], s[24:25]
	v_div_scale_f64 v[38:39], s[0:1], s[8:9], s[8:9], v[26:27]
	s_mov_b32 s11, 0x3fe33333
	s_mov_b32 s10, 0x33333333
	v_div_scale_f64 v[40:41], s[0:1], s[10:11], s[10:11], v[29:30]
	v_div_scale_f64 v[42:43], s[0:1], s[10:11], s[10:11], v[33:34]
	v_rcp_f64_e32 v[44:45], v[38:39]
	v_rcp_f64_e32 v[46:47], v[40:41]
	v_rcp_f64_e32 v[48:49], v[42:43]
	v_fma_f64 v[50:51], -v[38:39], v[44:45], 1.0
	v_fma_f64 v[52:53], -v[40:41], v[46:47], 1.0
	v_fma_f64 v[54:55], -v[42:43], v[48:49], 1.0
	s_mov_b32 s7, 0x40accccd
	v_fma_f64 v[44:45], v[44:45], v[50:51], v[44:45]
	v_fma_f64 v[46:47], v[46:47], v[52:53], v[46:47]
	v_div_scale_f32 v62, s[0:1], v13, v13, s7
	v_fma_f64 v[48:49], v[48:49], v[54:55], v[48:49]
	v_div_scale_f64 v[50:51], s[0:1], v[26:27], s[8:9], v[26:27]
	v_div_scale_f64 v[52:53], s[2:3], v[29:30], s[10:11], v[29:30]
	v_fma_f64 v[54:55], -v[38:39], v[44:45], 1.0
	v_fma_f64 v[56:57], -v[40:41], v[46:47], 1.0
	v_div_scale_f64 v[58:59], s[4:5], v[33:34], s[10:11], v[33:34]
	v_fma_f64 v[60:61], -v[42:43], v[48:49], 1.0
	v_div_scale_f32 v63, vcc, s7, v13, s7
	v_fma_f64 v[44:45], v[44:45], v[54:55], v[44:45]
	s_mov_b32 s13, 0x3f317217
	v_fma_f64 v[46:47], v[46:47], v[56:57], v[46:47]
	s_mov_b32 s14, 0x3377d1cf
	v_fma_f64 v[48:49], v[48:49], v[60:61], v[48:49]
	s_mov_b32 s28, 0
	v_mov_b32_e32 v96, 0x41b17218
	v_rcp_f32_e32 v64, v62
	v_mul_f64 v[54:55], v[50:51], v[44:45]
	s_mov_b32 s64, 0xc1d5b2df
	v_mul_f64 v[56:57], v[52:53], v[46:47]
	v_fma_f32 v65, -v62, v64, 1.0
	v_mul_f64 v[60:61], v[58:59], v[48:49]
	v_fma_f32 v64, v65, v64, v64
	v_mul_f32_e32 v65, v63, v64
	v_fma_f32 v66, -v62, v65, v63
	v_fma_f64 v[38:39], -v[38:39], v[54:55], v[50:51]
	v_fma_f32 v50, v66, v64, v65
	v_fma_f64 v[40:41], -v[40:41], v[56:57], v[52:53]
	v_fma_f32 v51, -v62, v50, v63
	v_fma_f64 v[42:43], -v[42:43], v[60:61], v[58:59]
	v_div_fmas_f32 v89, v51, v64, v50
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f64 v[38:39], v[38:39], v[44:45], v[54:55]
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f64 v[40:41], v[40:41], v[46:47], v[56:57]
	s_mov_b64 vcc, s[4:5]
	v_div_fmas_f64 v[42:43], v[42:43], v[48:49], v[60:61]
	s_mov_b32 s17, 0x3ff00000
	s_mov_b32 s16, 0x4bda12f
	s_mov_b32 s51, 0x3ff71547
	s_mov_b32 s50, 0x652b82fe
	s_mov_b32 s47, 0xbfe62e42
	s_mov_b32 s46, 0xfefa3000
	s_mov_b32 s49, 0xbd53de6a
	s_mov_b32 s48, 0xf278ece6
	s_mov_b32 s1, 0x3e928af3
	s_mov_b32 s0, 0xfca7ab0c
	s_mov_b32 s45, 0x3e5ade15
	v_div_fixup_f64 v[38:39], v[38:39], s[8:9], v[26:27]
	s_mov_b32 s44, 0x6a5dcb37
	v_div_fixup_f64 v[29:30], v[40:41], s[10:11], v[29:30]
	s_mov_b32 s43, 0x3ec71dee
	v_div_fixup_f64 v[33:34], v[42:43], s[10:11], v[33:34]
	s_mov_b32 s42, 0x623fde64
	s_mov_b32 s41, 0x3efa0199
	s_mov_b32 s40, 0x7c89e6b0
	v_mul_f64 v[26:27], v[38:39], s[50:51]
	s_mov_b32 s39, 0x3f2a01a0
	v_mul_f64 v[40:41], v[29:30], s[50:51]
	s_mov_b32 s38, 0x14761f6e
	v_mul_f64 v[42:43], v[33:34], s[50:51]
	s_mov_b32 s37, 0x3f56c16c
	s_mov_b32 s36, 0x1852b7b0
	s_mov_b32 s35, 0x3f811111
	v_rndne_f64_e32 v[45:46], v[26:27]
	s_mov_b32 s34, 0x11122322
	v_rndne_f64_e32 v[47:48], v[40:41]
	s_mov_b32 s23, 0x3fa55555
	v_rndne_f64_e32 v[42:43], v[42:43]
	s_mov_b32 s22, 0x555502a1
	s_mov_b32 s19, 0x3fc55555
	s_mov_b32 s18, 0x55555511
	v_fma_f64 v[26:27], v[45:46], s[46:47], v[38:39]
	v_mul_f64 v[49:50], v[45:46], s[48:49]
	v_fma_f64 v[51:52], v[47:48], s[46:47], v[29:30]
	v_mul_f64 v[53:54], v[47:48], s[48:49]
	v_fma_f64 v[55:56], v[42:43], s[46:47], v[33:34]
	v_mul_f64 v[57:58], v[42:43], s[48:49]
	s_mov_b32 s21, 0x3fe00000
	s_mov_b32 s2, 0x3c9628cc
	s_mov_b32 s4, 0x40feeb1c
	v_rsq_f64_e32 v[59:60], s[16:17]
	v_add_f64 v[61:62], v[26:27], v[49:50]
	v_fma_f32 v97, v28, s2, v13
	v_add_f64 v[63:64], v[51:52], v[53:54]
	v_add_f64 v[65:66], v[55:56], v[57:58]
	v_div_scale_f32 v28, s[2:3], v97, v97, s4
	s_mov_b32 s20, 11
	v_mov_b32_e32 v41, s1
	v_mov_b32_e32 v40, s0
	v_fma_f64 v[67:68], v[61:62], s[44:45], v[40:41]
	s_mov_b32 s29, 0x40900000
	s_mov_b32 s31, 0xc090cc00
	v_fma_f64 v[69:70], v[63:64], s[44:45], v[40:41]
	v_fma_f64 v[71:72], v[65:66], s[44:45], v[40:41]
	v_div_scale_f32 v44, vcc, s4, v97, s4
	v_frexp_mant_f32_e64 v98, |v11|
	v_fma_f64 v[67:68], v[61:62], v[67:68], s[42:43]
	s_mov_b32 s30, s28
	v_mul_f64 v[73:74], v[59:60], s[16:17]
	v_fma_f64 v[69:70], v[63:64], v[69:70], s[42:43]
	v_fma_f64 v[71:72], v[65:66], v[71:72], s[42:43]
	v_rcp_f32_e32 v75, v28
	v_mul_f64 v[59:60], v[59:60], 0.5
	v_add_f64 v[26:27], v[26:27], -v[61:62]
	v_fma_f64 v[67:68], v[61:62], v[67:68], s[40:41]
	v_fma_f32 v76, -v28, v75, 1.0
	v_fma_f32 v99, v76, v75, v75
	v_fma_f64 v[69:70], v[63:64], v[69:70], s[40:41]
	v_fma_f64 v[71:72], v[65:66], v[71:72], s[40:41]
	v_mul_f64 v[75:76], v[61:62], v[61:62]
	v_mul_f32_e32 v90, v44, v99
	v_add_f64 v[49:50], v[26:27], v[49:50]
	v_fma_f64 v[26:27], v[61:62], v[67:68], s[38:39]
	v_add_f64 v[51:52], v[51:52], -v[63:64]
	v_add_f64 v[55:56], v[55:56], -v[65:66]
	v_fma_f64 v[67:68], v[63:64], v[69:70], s[38:39]
	v_fma_f64 v[69:70], v[65:66], v[71:72], s[38:39]
	v_fma_f64 v[71:72], v[61:62], v[61:62], -v[75:76]
	v_mul_f64 v[77:78], v[63:64], v[63:64]
	v_mul_f64 v[79:80], v[65:66], v[65:66]
	v_fma_f64 v[26:27], v[61:62], v[26:27], s[36:37]
	v_add_f64 v[51:52], v[51:52], v[53:54]
	v_add_f64 v[53:54], v[55:56], v[57:58]
	v_fma_f64 v[55:56], v[63:64], v[67:68], s[36:37]
	v_fma_f64 v[57:58], v[65:66], v[69:70], s[36:37]
	v_add_f64 v[67:68], v[49:50], v[49:50]
	v_fma_f64 v[69:70], v[63:64], v[63:64], -v[77:78]
	v_fma_f64 v[81:82], v[65:66], v[65:66], -v[79:80]
	v_fma_f64 v[26:27], v[61:62], v[26:27], s[34:35]
	v_add_f64 v[83:84], v[51:52], v[51:52]
	v_add_f64 v[85:86], v[53:54], v[53:54]
	v_fma_f64 v[55:56], v[63:64], v[55:56], s[34:35]
	v_fma_f64 v[57:58], v[65:66], v[57:58], s[34:35]
	v_fma_f64 v[87:88], -v[59:60], v[73:74], 0.5
	v_fma_f32 v91, -v28, v90, v44
	v_fma_f64 v[67:68], v[61:62], v[67:68], v[71:72]
	v_fma_f64 v[26:27], v[61:62], v[26:27], s[22:23]
	v_fma_f64 v[69:70], v[63:64], v[83:84], v[69:70]
	v_fma_f64 v[71:72], v[65:66], v[85:86], v[81:82]
	v_fma_f64 v[55:56], v[63:64], v[55:56], s[22:23]
	v_fma_f64 v[57:58], v[65:66], v[57:58], s[22:23]
	v_fma_f32 v100, v91, v99, v90
	v_fma_f32 v101, -v28, v100, v44
	v_fma_f64 v[67:68], v[49:50], v[49:50], v[67:68]
	v_fma_f64 v[26:27], v[61:62], v[26:27], s[18:19]
	v_fma_f64 v[69:70], v[51:52], v[51:52], v[69:70]
	v_fma_f64 v[71:72], v[53:54], v[53:54], v[71:72]
	v_fma_f64 v[55:56], v[63:64], v[55:56], s[18:19]
	v_fma_f64 v[57:58], v[65:66], v[57:58], s[18:19]
	v_fma_f64 v[73:74], v[73:74], v[87:88], v[73:74]
	v_fma_f64 v[59:60], v[59:60], v[87:88], v[59:60]
	v_add_f64 v[81:82], v[75:76], v[67:68]
	v_fma_f64 v[26:27], v[61:62], v[26:27], s[20:21]
	v_add_f64 v[83:84], v[77:78], v[69:70]
	v_add_f64 v[85:86], v[79:80], v[71:72]
	v_fma_f64 v[55:56], v[63:64], v[55:56], s[20:21]
	v_fma_f64 v[57:58], v[65:66], v[57:58], s[20:21]
	v_fma_f64 v[87:88], -v[73:74], v[73:74], s[16:17]
	v_div_fixup_f32 v28, v89, v13, s7
	v_add_f64 v[75:76], v[81:82], -v[75:76]
	v_mul_f64 v[89:90], v[81:82], v[26:27]
	v_add_f64 v[77:78], v[83:84], -v[77:78]
	v_add_f64 v[79:80], v[85:86], -v[79:80]
	v_mul_f64 v[91:92], v[83:84], v[55:56]
	v_mul_f64 v[93:94], v[85:86], v[57:58]
	v_cmp_class_f32_e64 s[0:1], v28, s6
	v_cndmask_b32_e64 v44, 1.0, v95, s[0:1]
	v_add_f64 v[67:68], v[67:68], -v[75:76]
	v_fma_f64 v[75:76], v[81:82], v[26:27], -v[89:90]
	v_mul_f32_e32 v28, v28, v44
	v_add_f64 v[69:70], v[69:70], -v[77:78]
	v_fma_f64 v[77:78], v[83:84], v[55:56], -v[91:92]
	v_add_f64 v[71:72], v[71:72], -v[79:80]
	v_fma_f64 v[79:80], v[85:86], v[57:58], -v[93:94]
	v_log_f32_e32 v44, v28
	v_cndmask_b32_e64 v81, 0, v96, s[0:1]
	v_fma_f64 v[67:68], v[67:68], v[26:27], v[75:76]
	v_fma_f64 v[27:28], v[87:88], v[59:60], v[73:74]
	v_mul_f32_e32 v26, s13, v44
	v_fma_f64 v[55:56], v[69:70], v[55:56], v[77:78]
	v_fma_f32 v69, v44, s13, -v26
	v_fma_f64 v[57:58], v[71:72], v[57:58], v[79:80]
	v_fma_f32 v69, v44, s14, v69
	v_add_f32_e32 v26, v26, v69
	v_add_f64 v[69:70], v[89:90], v[67:68]
	v_cmp_class_f32_e64 s[0:1], v44, s12
	v_cndmask_b32_e64 v26, v26, v44, s[0:1]
	v_add_f64 v[71:72], v[91:92], v[55:56]
	v_sub_f32_e32 v26, v26, v81
	v_add_f64 v[73:74], v[93:94], v[57:58]
	v_mul_f32_e32 v44, s64, v26
	v_fma_f32 v26, v26, s64, v17
	v_fma_f64 v[75:76], -v[27:28], v[27:28], s[16:17]
	v_add_f64 v[77:78], v[69:70], -v[89:90]
	v_add_f64 v[79:80], v[61:62], v[69:70]
	v_add_f64 v[81:82], v[71:72], -v[91:92]
	v_add_f64 v[83:84], v[63:64], v[71:72]
	v_add_f64 v[85:86], v[73:74], -v[93:94]
	v_add_f64 v[87:88], v[65:66], v[73:74]
	v_div_fmas_f32 v89, v101, v99, v100
	v_fma_f64 v[27:28], v[75:76], v[59:60], v[27:28]
	v_add_f64 v[59:60], v[79:80], -v[61:62]
	v_add_f64 v[61:62], v[67:68], -v[77:78]
	v_add_f64 v[63:64], v[83:84], -v[63:64]
	v_add_f64 v[55:56], v[55:56], -v[81:82]
	v_add_f64 v[65:66], v[87:88], -v[65:66]
	v_add_f64 v[57:58], v[57:58], -v[85:86]
	v_cmp_lt_f64_e64 s[10:11], s[28:29], v[38:39]
	v_cmp_gt_f64_e64 s[8:9], s[30:31], v[38:39]
	v_add_f64 v[38:39], v[69:70], -v[59:60]
	v_add_f64 v[49:50], v[49:50], v[61:62]
	v_add_f64 v[59:60], v[71:72], -v[63:64]
	v_add_f64 v[51:52], v[51:52], v[55:56]
	v_add_f64 v[55:56], v[73:74], -v[65:66]
	v_add_f64 v[53:54], v[53:54], v[57:58]
	v_div_fixup_f32 v57, v89, v97, s4
	v_cvt_i32_f64_e32 v58, v[45:46]
	v_cmp_class_f32_e64 vcc, v57, s6
	v_cndmask_b32_e32 v45, 1.0, v95, vcc
	v_mul_f32_e32 v57, v57, v45
	v_add_f64 v[38:39], v[38:39], v[49:50]
	v_add_f64 v[45:46], v[59:60], v[51:52]
	v_add_f64 v[49:50], v[55:56], v[53:54]
	v_cndmask_b32_e32 v51, 0, v96, vcc
	v_log_f32_e32 v52, v57
	v_cmp_lt_f64_e64 s[2:3], s[28:29], v[29:30]
	v_cmp_gt_f64_e64 s[0:1], s[30:31], v[29:30]
	v_cmp_lt_f64_e64 s[4:5], s[28:29], v[33:34]
	v_add_f64 v[29:30], v[79:80], v[38:39]
	v_add_f64 v[38:39], v[83:84], v[45:46]
	v_add_f64 v[45:46], v[87:88], v[49:50]
	v_cmp_gt_f64_e64 s[6:7], s[30:31], v[33:34]
	v_mul_f32_e32 v33, s13, v52
	v_fma_f32 v34, v52, s13, -v33
	v_fma_f32 v34, v52, s14, v34
	v_add_f32_e32 v49, v33, v34
	v_add_f64 v[29:30], v[29:30], 1.0
	v_add_f64 v[33:34], v[38:39], 1.0
	v_add_f64 v[45:46], v[45:46], 1.0
	v_cmp_class_f32_e64 vcc, v52, s12
	v_cndmask_b32_e32 v38, v49, v52, vcc
	v_cvt_i32_f64_e32 v47, v[47:48]
	v_cvt_i32_f64_e32 v42, v[42:43]
	v_sub_f32_e32 v56, v38, v51
	v_ldexp_f64 v[38:39], v[29:30], v58
	v_ldexp_f64 v[33:34], v[33:34], v47
	v_ldexp_f64 v[29:30], v[45:46], v42
	s_mov_b32 s67, 0x3f2aaaab
	v_cmp_gt_f32_e32 vcc, s67, v98
	v_cndmask_b32_e64 v42, 0, 1, vcc
	v_ldexp_f32 v42, v98, v42
	v_frexp_exp_i32_f32_e64 v43, |v11|
	v_subbrev_u32_e32 v43, vcc, 0, v43, vcc
	v_add_f32_e32 v45, -1.0, v42
	v_add_f32_e32 v46, 1.0, v42
	v_sub_f32_e32 v47, v46, v42
	v_sub_f32_e32 v48, v46, v47
	v_rcp_f32_e32 v49, v46
	v_sub_f32_e32 v42, v42, v48
	v_sub_f32_e32 v47, 1.0, v47
	v_add_f32_e32 v42, v47, v42
	v_mul_f32_e32 v47, v45, v49
	v_mul_f32_e32 v48, v46, v47
	v_fma_f32 v46, v47, v46, -v48
	v_fma_f32 v42, v47, v42, v46
	v_add_f32_e32 v46, v48, v42
	v_sub_f32_e32 v48, v46, v48
	v_sub_f32_e32 v42, v42, v48
	v_sub_f32_e32 v48, v45, v46
	v_sub_f32_e32 v45, v45, v48
	v_sub_f32_e32 v45, v45, v46
	v_sub_f32_e32 v42, v45, v42
	v_add_f32_e32 v42, v48, v42
	v_mul_f32_e32 v42, v49, v42
	v_add_f32_e32 v46, v47, v42
	v_sub_f32_e32 v45, v46, v47
	v_sub_f32_e32 v42, v42, v45
	v_mul_f32_e32 v45, v46, v46
	v_add_f32_e32 v47, v42, v42
	v_fma_f32 v48, v46, v46, -v45
	v_fma_f32 v47, v46, v47, v48
	v_fma_f32 v47, v42, v42, v47
	v_add_f32_e32 v48, v45, v47
	v_sub_f32_e32 v45, v48, v45
	v_sub_f32_e32 v47, v47, v45
	s_mov_b32 s57, 0x3e76c4e1
	v_mov_b32_e32 v45, 0x3e91f4c4
	v_fma_f32 v49, v48, s57, v45
	v_cvt_f32_i32_e32 v43, v43
	s_mov_b32 s59, 0x3ecccdef
	v_fma_f32 v49, v48, v49, s59
	s_mov_b32 s60, 0x3f317218
	v_mul_f32_e32 v50, s60, v43
	v_fma_f32 v51, v43, s60, -v50
	s_mov_b32 s63, 0xb102e308
	v_fma_f32 v43, v43, s63, v51
	v_add_f32_e32 v51, v50, v43
	v_sub_f32_e32 v50, v51, v50
	v_sub_f32_e32 v43, v43, v50
	v_ldexp_f32 v50, v46, 1
	v_mul_f32_e32 v52, v46, v48
	v_fma_f32 v53, v48, v46, -v52
	v_mul_f32_e32 v46, v46, v47
	v_fma_f32 v46, v48, v42, v46
	v_add_f32_e32 v46, v53, v46
	v_add_f32_e32 v53, v52, v46
	v_mul_f32_e32 v54, v48, v49
	v_fma_f32 v48, v48, v49, -v54
	v_fma_f32 v47, v47, v49, v48
	v_add_f32_e32 v48, v54, v47
	v_sub_f32_e32 v49, v48, v54
	v_sub_f32_e32 v47, v47, v49
	s_mov_b32 s58, 0x3f2aaaaa
	v_add_f32_e32 v49, s58, v48
	s_mov_b32 s61, 0xbf2aaaaa
	v_add_f32_e32 v54, s61, v49
	v_sub_f32_e32 v48, v48, v54
	s_mov_b32 s62, 0x31739010
	v_add_f32_e32 v47, s62, v47
	v_add_f32_e32 v47, v48, v47
	v_add_f32_e32 v48, v49, v47
	v_mul_f32_e32 v54, v53, v48
	v_fma_f32 v55, v53, v48, -v54
	v_sub_f32_e32 v49, v48, v49
	v_sub_f32_e32 v47, v47, v49
	v_sub_f32_e32 v49, v53, v52
	v_sub_f32_e32 v46, v46, v49
	v_mul_f32_e32 v46, v46, v48
	v_fma_f32 v46, v53, v47, v46
	v_add_f32_e32 v46, v55, v46
	v_ldexp_f32 v42, v42, 1
	v_add_f32_e32 v47, v54, v46
	v_sub_f32_e32 v48, v47, v54
	v_sub_f32_e32 v46, v46, v48
	v_add_f32_e32 v48, v50, v47
	v_sub_f32_e32 v49, v48, v50
	v_sub_f32_e32 v47, v47, v49
	v_add_f32_e32 v42, v42, v46
	v_add_f32_e32 v42, v47, v42
	v_add_f32_e32 v46, v48, v42
	v_sub_f32_e32 v47, v46, v48
	v_sub_f32_e32 v42, v42, v47
	v_add_f32_e32 v47, v51, v46
	v_sub_f32_e32 v48, v47, v51
	v_sub_f32_e32 v49, v47, v48
	v_sub_f32_e32 v49, v51, v49
	v_sub_f32_e32 v46, v46, v48
	v_add_f32_e32 v46, v46, v49
	v_add_f32_e32 v48, v43, v42
	v_sub_f32_e32 v49, v48, v43
	v_sub_f32_e32 v50, v48, v49
	v_sub_f32_e32 v43, v43, v50
	v_sub_f32_e32 v42, v42, v49
	v_add_f32_e32 v42, v42, v43
	v_add_f32_e32 v43, v48, v46
	v_add_f32_e32 v46, v47, v43
	v_sub_f32_e32 v47, v46, v47
	v_sub_f32_e32 v43, v43, v47
	v_add_f32_e32 v42, v42, v43
	v_add_f32_e32 v43, v46, v42
	v_sub_f32_e32 v46, v43, v46
	v_sub_f32_e32 v42, v42, v46
	v_add_f32_e32 v46, v43, v43
	v_fma_f32 v47, v43, 2.0, -v46
	v_mul_f32_e32 v43, 0, v43
	v_fma_f32 v42, v42, 2.0, v43
	v_add_f32_e32 v42, v47, v42
	v_add_f32_e32 v43, v46, v42
	v_sub_f32_e32 v47, v43, v46
	v_sub_f32_e32 v42, v42, v47
	s_movk_i32 s16, 0x204
	v_cmp_class_f32_e64 vcc, v46, s16
	v_cndmask_b32_e32 v52, v43, v46, vcc
	s_mov_b32 s55, 0x7f800000
	v_cmp_neq_f32_e64 vcc, |v52|, s55
	v_cndmask_b32_e32 v42, 0, v42, vcc
	s_mov_b32 s56, 0x3fb8aa3b
	v_mul_f32_e32 v43, s56, v52
	v_rndne_f32_e32 v50, v43
	s_mov_b32 s54, 0x3f317200
	v_mul_f32_e32 v43, s54, v50
	v_sub_f32_e32 v46, v52, v43
	v_sub_f32_e32 v47, v46, v52
	v_sub_f32_e32 v48, v46, v47
	v_sub_f32_e32 v48, v52, v48
	v_add_f32_e32 v43, v43, v47
	v_sub_f32_e32 v43, v48, v43
	v_add_f32_e32 v42, v42, v43
	v_add_f32_e32 v43, v46, v42
	v_sub_f32_e32 v46, v43, v46
	v_sub_f32_e32 v42, v42, v46
	s_mov_b32 s33, 0x35bfbc00
	v_mul_f32_e32 v46, s33, v50
	v_sub_f32_e32 v47, v43, v46
	v_sub_f32_e32 v43, v43, v47
	v_sub_f32_e32 v43, v43, v46
	v_add_f32_e32 v42, v42, v43
	v_add_f32_e32 v43, v47, v42
	v_sub_f32_e32 v46, v43, v47
	v_sub_f32_e32 v42, v42, v46
	s_mov_b32 s25, 0x2ea39ef3
	v_mul_f32_e32 v46, s25, v50
	v_sub_f32_e32 v47, v43, v46
	v_sub_f32_e32 v43, v43, v47
	s_mov_b32 s53, 0xc017eb85
	s_mov_b32 s52, 0x1eb851ec
	v_div_scale_f64 v[48:49], s[12:13], s[52:53], s[52:53], v[23:24]
	v_sub_f32_e32 v43, v43, v46
	v_add_f32_e32 v42, v42, v43
	v_add_f32_e32 v46, v47, v42
	v_sub_f32_e32 v43, v46, v47
	v_sub_f32_e32 v51, v42, v43
	s_mov_b32 s69, 0x3ab42872
	v_mov_b32_e32 v80, 0x3c091de6
	v_fma_f32 v42, v46, s69, v80
	s_mov_b32 s70, 0x3d2aadcc
	v_fma_f32 v42, v46, v42, s70
	s_mov_b32 s71, 0x3e2aaa47
	v_fma_f32 v42, v46, v42, s71
	s_mov_b32 s68, 0x3efffffc
	v_fma_f32 v47, v46, v42, s68
	v_mul_f32_e32 v53, v46, v46
	v_rcp_f64_e32 v[42:43], v[48:49]
	v_fma_f32 v54, v46, v46, -v53
	v_add_f32_e32 v55, v51, v51
	v_fma_f32 v54, v46, v55, v54
	v_fma_f32 v54, v51, v51, v54
	v_add_f32_e32 v55, v53, v54
	v_mul_f32_e32 v57, v47, v55
	v_sub_f32_e32 v53, v55, v53
	v_sub_f32_e32 v53, v54, v53
	v_fma_f32 v54, v55, v47, -v57
	v_fma_f32 v47, v53, v47, v54
	v_add_f32_e32 v53, v57, v47
	v_sub_f32_e32 v54, v53, v57
	v_sub_f32_e32 v54, v47, v54
	v_add_f32_e32 v55, v46, v53
	v_sub_f32_e32 v57, v55, v46
	v_fma_f64 v[46:47], -v[48:49], v[42:43], 1.0
	v_sub_f32_e32 v53, v53, v57
	v_add_f32_e32 v51, v51, v54
	v_cvt_i32_f32_e32 v50, v50
	v_add_f32_e32 v51, v53, v51
	v_add_f32_e32 v51, v55, v51
	v_add_f32_e32 v51, 1.0, v51
	v_ldexp_f32 v53, v51, v50
	v_fma_f64 v[50:51], v[42:43], v[46:47], v[42:43]
	s_mov_b32 s66, 0x42b20000
	v_mov_b32_e32 v47, s55
	v_cmp_nlt_f32_e32 vcc, s66, v52
	v_cndmask_b32_e32 v42, v47, v53, vcc
	s_mov_b32 s65, 0xc2d00000
	v_cmp_ngt_f32_e32 vcc, s65, v52
	v_cmp_neq_f32_e64 s[12:13], 0, v11
	v_fma_f64 v[52:53], -v[48:49], v[50:51], 1.0
	v_div_scale_f64 v[54:55], s[14:15], v[23:24], s[52:53], v[23:24]
	s_and_b64 vcc, s[12:13], vcc
	v_cndmask_b32_e32 v42, 0, v42, vcc
	v_cmp_class_f32_e64 vcc, v11, s16
	v_cndmask_b32_e32 v42, v42, v47, vcc
	v_cmp_u_f32_e32 vcc, v11, v11
	v_cndmask_b32_e64 v43, |v42|, v11, vcc
	v_fma_f32 v42, v56, s64, v17
	v_fma_f64 v[50:51], v[50:51], v[52:53], v[50:51]
	v_frexp_mant_f32_e64 v46, |v19|
	v_cmp_gt_f32_e32 vcc, s67, v46
	v_cndmask_b32_e64 v52, 0, 1, vcc
	v_ldexp_f32 v46, v46, v52
	v_frexp_exp_i32_f32_e64 v52, |v19|
	v_subbrev_u32_e32 v56, vcc, 0, v52, vcc
	v_mul_f64 v[52:53], v[54:55], v[50:51]
	v_add_f32_e32 v57, -1.0, v46
	v_add_f32_e32 v58, 1.0, v46
	v_sub_f32_e32 v59, v58, v46
	v_sub_f32_e32 v60, v58, v59
	v_sub_f32_e32 v46, v46, v60
	v_rcp_f32_e32 v60, v58
	v_sub_f32_e32 v59, 1.0, v59
	v_fma_f64 v[48:49], -v[48:49], v[52:53], v[54:55]
	v_add_f32_e32 v46, v59, v46
	v_mul_f32_e32 v54, v57, v60
	v_mul_f32_e32 v55, v58, v54
	v_fma_f32 v58, v54, v58, -v55
	v_fma_f32 v46, v54, v46, v58
	v_add_f32_e32 v58, v55, v46
	s_mov_b64 vcc, s[14:15]
	v_div_fmas_f64 v[48:49], v[48:49], v[50:51], v[52:53]
	v_sub_f32_e32 v50, v58, v55
	v_sub_f32_e32 v46, v46, v50
	v_sub_f32_e32 v50, v57, v58
	v_sub_f32_e32 v51, v57, v50
	v_sub_f32_e32 v51, v51, v58
	v_sub_f32_e32 v46, v51, v46
	v_add_f32_e32 v46, v50, v46
	v_mul_f32_e32 v46, v60, v46
	v_add_f32_e32 v50, v54, v46
	v_sub_f32_e32 v51, v50, v54
	v_sub_f32_e32 v60, v46, v51
	v_mul_f32_e32 v46, v50, v50
	v_add_f32_e32 v51, v60, v60
	v_fma_f32 v52, v50, v50, -v46
	v_fma_f32 v51, v50, v51, v52
	v_div_fixup_f64 v[48:49], v[48:49], s[52:53], v[23:24]
	v_fma_f32 v51, v60, v60, v51
	v_add_f32_e32 v52, v46, v51
	v_sub_f32_e32 v46, v52, v46
	v_sub_f32_e32 v53, v51, v46
	v_cvt_f32_i32_e32 v46, v56
	s_mov_b32 s13, 0x401df3b6
	s_mov_b32 s12, 0x45a1cac1
	v_add_f64 v[48:49], v[48:49], s[12:13]
	v_fma_f32 v45, v52, s57, v45
	v_fma_f32 v54, v52, v45, s59
	v_mul_f32_e32 v45, s60, v46
	v_fma_f32 v51, v46, s60, -v45
	v_fma_f32 v51, v46, s63, v51
	v_add_f32_e32 v64, v45, v51
	v_sub_f32_e32 v55, v64, v45
	v_mul_f64 v[45:46], v[48:49], s[50:51]
	v_sub_f32_e32 v68, v51, v55
	v_ldexp_f32 v62, v50, 1
	v_mul_f32_e32 v58, v50, v52
	v_fma_f32 v51, v52, v50, -v58
	v_mul_f32_e32 v50, v50, v53
	v_fma_f32 v50, v52, v60, v50
	v_add_f32_e32 v59, v51, v50
	v_rndne_f64_e32 v[50:51], v[45:46]
	v_add_f32_e32 v45, v58, v59
	v_mul_f32_e32 v46, v52, v54
	v_fma_f32 v52, v52, v54, -v46
	v_fma_f32 v52, v53, v54, v52
	v_add_f32_e32 v56, v46, v52
	v_sub_f32_e32 v46, v56, v46
	v_sub_f32_e32 v46, v52, v46
	v_fma_f64 v[52:53], v[50:51], s[46:47], v[48:49]
	v_mul_f64 v[54:55], v[50:51], s[48:49]
	v_add_f32_e32 v61, s58, v56
	v_add_f32_e32 v57, s61, v61
	v_sub_f32_e32 v56, v56, v57
	v_add_f32_e32 v46, s62, v46
	v_add_f32_e32 v46, v56, v46
	v_add_f32_e32 v63, v61, v46
	v_mul_f32_e32 v65, v45, v63
	v_add_f64 v[56:57], v[52:53], v[54:55]
	v_fma_f32 v66, v45, v63, -v65
	v_sub_f32_e32 v61, v63, v61
	v_sub_f32_e32 v46, v46, v61
	v_sub_f32_e32 v58, v45, v58
	v_sub_f32_e32 v58, v59, v58
	v_mul_f32_e32 v58, v58, v63
	v_fma_f32 v45, v45, v46, v58
	v_fma_f64 v[58:59], v[56:57], s[44:45], v[40:41]
	v_add_f32_e32 v45, v66, v45
	v_ldexp_f32 v63, v60, 1
	v_add_f32_e32 v66, v65, v45
	v_sub_f32_e32 v46, v66, v65
	v_sub_f32_e32 v65, v45, v46
	v_add_f32_e32 v67, v62, v66
	v_cvt_f64_f32_e32 v[45:46], v26
	v_fma_f64 v[58:59], v[56:57], v[58:59], s[42:43]
	s_mov_b32 s13, 0xc04d9b85
	s_mov_b32 s12, s52
	v_add_f64 v[60:61], v[45:46], s[12:13]
	v_sub_f32_e32 v62, v67, v62
	v_sub_f32_e32 v62, v66, v62
	v_add_f32_e32 v63, v63, v65
	v_add_f32_e32 v62, v62, v63
	v_fma_f64 v[58:59], v[56:57], v[58:59], s[40:41]
	s_mov_b32 s13, 0x3fce872b
	s_mov_b32 s12, 0x20c49ba
	v_mul_f64 v[60:61], v[60:61], s[12:13]
	v_add_f32_e32 v65, v67, v62
	v_sub_f32_e32 v63, v65, v67
	v_sub_f32_e32 v72, v62, v63
	v_add_f32_e32 v73, v64, v65
	v_add_f64 v[52:53], v[52:53], -v[56:57]
	v_fma_f64 v[58:59], v[56:57], v[58:59], s[38:39]
	v_sub_f32_e32 v66, v73, v64
	v_mul_f64 v[62:63], v[60:61], s[50:51]
	v_sub_f32_e32 v67, v73, v66
	v_sub_f32_e32 v67, v64, v67
	v_sub_f32_e32 v66, v65, v66
	v_mul_f64 v[64:65], v[56:57], v[56:57]
	v_add_f64 v[52:53], v[52:53], v[54:55]
	v_fma_f64 v[54:55], v[56:57], v[58:59], s[36:37]
	v_add_f32_e32 v74, v66, v67
	v_rndne_f64_e32 v[58:59], v[62:63]
	v_add_f32_e32 v75, v68, v72
	v_sub_f32_e32 v76, v75, v68
	v_sub_f32_e32 v69, v75, v76
	v_fma_f64 v[62:63], v[56:57], v[56:57], -v[64:65]
	v_add_f64 v[66:67], v[52:53], v[52:53]
	v_fma_f64 v[54:55], v[56:57], v[54:55], s[34:35]
	v_sub_f32_e32 v77, v68, v69
	v_fma_f64 v[68:69], v[58:59], s[46:47], v[60:61]
	v_mul_f64 v[70:71], v[58:59], s[48:49]
	v_sub_f32_e32 v72, v72, v76
	v_add_f32_e32 v72, v72, v77
	v_add_f32_e32 v74, v75, v74
	v_fma_f64 v[62:63], v[56:57], v[66:67], v[62:63]
	v_fma_f64 v[54:55], v[56:57], v[54:55], s[22:23]
	v_add_f32_e32 v75, v73, v74
	v_sub_f32_e32 v73, v75, v73
	v_add_f64 v[66:67], v[68:69], v[70:71]
	v_sub_f32_e32 v73, v74, v73
	v_add_f32_e32 v72, v72, v73
	v_add_f32_e32 v74, v75, v72
	v_fma_f64 v[62:63], v[52:53], v[52:53], v[62:63]
	v_fma_f64 v[54:55], v[56:57], v[54:55], s[18:19]
	v_sub_f32_e32 v73, v74, v75
	v_sub_f32_e32 v76, v72, v73
	v_fma_f64 v[72:73], v[66:67], s[44:45], v[40:41]
	v_add_f32_e32 v78, v74, v74
	v_fma_f32 v77, v74, 2.0, -v78
	v_mul_f32_e32 v79, 0, v74
	v_add_f64 v[74:75], v[64:65], v[62:63]
	v_fma_f64 v[54:55], v[56:57], v[54:55], s[20:21]
	v_fma_f32 v76, v76, 2.0, v79
	v_add_f32_e32 v76, v77, v76
	v_fma_f64 v[72:73], v[66:67], v[72:73], s[42:43]
	v_add_f32_e32 v79, v78, v76
	v_sub_f32_e32 v77, v79, v78
	v_sub_f32_e32 v81, v76, v77
	v_add_f64 v[64:65], v[74:75], -v[64:65]
	v_mul_f64 v[76:77], v[74:75], v[54:55]
	v_cmp_class_f32_e64 vcc, v78, s16
	v_cndmask_b32_e32 v116, v79, v78, vcc
	v_fma_f64 v[72:73], v[66:67], v[72:73], s[40:41]
	v_cmp_neq_f32_e64 vcc, |v116|, s55
	v_cndmask_b32_e32 v78, 0, v81, vcc
	v_mul_f32_e32 v79, s56, v116
	v_add_f64 v[62:63], v[62:63], -v[64:65]
	v_fma_f64 v[64:65], v[74:75], v[54:55], -v[76:77]
	v_rndne_f32_e32 v96, v79
	v_add_f64 v[68:69], v[68:69], -v[66:67]
	v_fma_f64 v[72:73], v[66:67], v[72:73], s[38:39]
	v_mul_f32_e32 v74, s54, v96
	v_sub_f32_e32 v79, v116, v74
	v_sub_f32_e32 v75, v79, v116
	v_sub_f32_e32 v81, v79, v75
	v_fma_f64 v[54:55], v[62:63], v[54:55], v[64:65]
	v_mul_f64 v[62:63], v[66:67], v[66:67]
	v_add_f64 v[64:65], v[68:69], v[70:71]
	v_fma_f64 v[68:69], v[66:67], v[72:73], s[36:37]
	v_sub_f32_e32 v70, v116, v81
	v_add_f32_e32 v71, v74, v75
	v_sub_f32_e32 v70, v70, v71
	v_add_f32_e32 v78, v78, v70
	v_add_f64 v[70:71], v[76:77], v[54:55]
	v_fma_f64 v[72:73], v[66:67], v[66:67], -v[62:63]
	v_add_f64 v[74:75], v[64:65], v[64:65]
	v_fma_f64 v[68:69], v[66:67], v[68:69], s[34:35]
	v_add_f32_e32 v81, v79, v78
	v_sub_f32_e32 v79, v81, v79
	v_sub_f32_e32 v82, v78, v79
	v_mul_f32_e32 v83, s33, v96
	v_add_f64 v[78:79], v[56:57], v[70:71]
	v_add_f64 v[76:77], v[70:71], -v[76:77]
	v_fma_f64 v[72:73], v[66:67], v[74:75], v[72:73]
	v_fma_f64 v[68:69], v[66:67], v[68:69], s[22:23]
	v_sub_f32_e32 v74, v81, v83
	v_sub_f32_e32 v75, v81, v74
	v_sub_f32_e32 v75, v75, v83
	v_add_f32_e32 v75, v82, v75
	v_add_f64 v[56:57], v[78:79], -v[56:57]
	v_add_f64 v[54:55], v[54:55], -v[76:77]
	v_fma_f64 v[72:73], v[64:65], v[64:65], v[72:73]
	v_fma_f64 v[68:69], v[66:67], v[68:69], s[18:19]
	v_add_f32_e32 v76, v74, v75
	v_sub_f32_e32 v74, v76, v74
	v_sub_f32_e32 v74, v75, v74
	v_mul_f32_e32 v75, s25, v96
	v_add_f64 v[56:57], v[70:71], -v[56:57]
	v_add_f64 v[52:53], v[52:53], v[54:55]
	v_add_f64 v[54:55], v[62:63], v[72:73]
	v_fma_f64 v[68:69], v[66:67], v[68:69], s[20:21]
	v_sub_f32_e32 v70, v76, v75
	v_sub_f32_e32 v71, v76, v70
	v_sub_f32_e32 v71, v71, v75
	v_add_f32_e32 v71, v74, v71
	v_add_f32_e32 v92, v70, v71
	v_add_f64 v[52:53], v[56:57], v[52:53]
	v_add_f64 v[56:57], v[54:55], -v[62:63]
	v_mul_f64 v[62:63], v[54:55], v[68:69]
	v_sub_f32_e32 v70, v92, v70
	v_sub_f32_e32 v97, v71, v70
	v_fma_f32 v70, v92, s69, v80
	v_fma_f32 v70, v92, v70, s70
	v_fma_f32 v70, v92, v70, s71
	v_add_f64 v[52:53], v[78:79], v[52:53]
	v_add_f64 v[56:57], v[72:73], -v[56:57]
	v_fma_f64 v[54:55], v[54:55], v[68:69], -v[62:63]
	s_mov_b32 s13, 0x4015e76c
	s_mov_b32 s12, 0x8b439581
	v_add_f64 v[23:24], v[23:24], s[12:13]
	v_fma_f32 v86, v92, v70, s68
	v_mul_f32_e32 v80, v92, v92
	v_add_f64 v[52:53], v[52:53], 1.0
	v_cvt_f64_f32_e32 v[70:71], v44
	v_fma_f64 v[54:55], v[56:57], v[68:69], v[54:55]
	v_fma_f32 v44, v92, v92, -v80
	v_cvt_i32_f64_e32 v50, v[50:51]
	v_add_f64 v[23:24], v[23:24], v[70:71]
	v_add_f32_e32 v51, v97, v97
	v_fma_f32 v44, v92, v51, v44
	v_fma_f32 v44, v97, v97, v44
	v_ldexp_f64 v[50:51], v[52:53], v50
	v_add_f64 v[52:53], v[62:63], v[54:55]
	s_mov_b32 s13, 0x3fb48fd9
	s_mov_b32 s12, 0xfd36f7e4
	v_mul_f64 v[56:57], v[23:24], s[12:13]
	s_mov_b32 s13, 0xc082927a
	s_mov_b32 s12, 0xe147ae14
	v_add_f64 v[23:24], v[45:46], s[12:13]
	v_add_f32_e32 v82, v80, v44
	v_mul_f32_e32 v87, v86, v82
	v_add_f64 v[50:51], v[50:51], 1.0
	v_add_f64 v[62:63], v[52:53], -v[62:63]
	v_mul_f64 v[68:69], v[56:57], s[50:51]
	s_mov_b32 s13, 0x3faf9db2
	s_mov_b32 s12, 0x2d0e5604
	v_mul_f64 v[70:71], v[23:24], s[12:13]
	s_mov_b32 s13, 0x40130312
	s_mov_b32 s12, 0x6e978d50
	v_add_f64 v[23:24], v[45:46], s[12:13]
	v_add_f64 v[72:73], v[66:67], v[52:53]
	v_div_scale_f64 v[74:75], s[12:13], v[50:51], v[50:51], 1.0
	v_rndne_f64_e32 v[68:69], v[68:69]
	v_mul_f64 v[76:77], v[70:71], s[50:51]
	s_mov_b32 s13, 0xbfe07525
	s_mov_b32 s12, 0x460aa64c
	v_mul_f64 v[78:79], v[23:24], s[12:13]
	v_add_f64 v[23:24], v[72:73], -v[66:67]
	v_add_f64 v[54:55], v[54:55], -v[62:63]
	v_sub_f32_e32 v62, v82, v80
	v_sub_f32_e32 v44, v44, v62
	v_rndne_f64_e32 v[62:63], v[76:77]
	v_fma_f64 v[66:67], v[68:69], s[46:47], v[56:57]
	v_mul_f64 v[76:77], v[68:69], s[48:49]
	v_mul_f64 v[80:81], v[78:79], s[50:51]
	v_add_f64 v[23:24], v[52:53], -v[23:24]
	v_add_f64 v[52:53], v[64:65], v[54:55]
	v_fma_f32 v88, v82, v86, -v87
	v_rcp_f64_e32 v[54:55], v[74:75]
	v_fma_f64 v[64:65], v[62:63], s[46:47], v[70:71]
	v_mul_f64 v[82:83], v[62:63], s[48:49]
	v_add_f64 v[84:85], v[66:67], v[76:77]
	v_rndne_f64_e32 v[80:81], v[80:81]
	v_fma_f32 v44, v44, v86, v88
	v_add_f64 v[23:24], v[23:24], v[52:53]
	v_add_f32_e32 v93, v87, v44
	v_sub_f32_e32 v52, v93, v87
	v_sub_f32_e32 v44, v44, v52
	v_add_f64 v[52:53], v[64:65], v[82:83]
	v_fma_f64 v[86:87], v[84:85], s[44:45], v[40:41]
	v_fma_f64 v[88:89], v[80:81], s[46:47], v[78:79]
	v_mul_f64 v[90:91], v[80:81], s[48:49]
	v_add_f64 v[23:24], v[72:73], v[23:24]
	v_add_f32_e32 v98, v92, v93
	v_sub_f32_e32 v72, v98, v92
	v_sub_f32_e32 v99, v93, v72
	v_fma_f64 v[72:73], v[52:53], s[44:45], v[40:41]
	v_fma_f64 v[86:87], v[84:85], v[86:87], s[42:43]
	v_fma_f64 v[92:93], -v[74:75], v[54:55], 1.0
	v_add_f64 v[94:95], v[88:89], v[90:91]
	v_add_f64 v[23:24], v[23:24], 1.0
	v_add_f32_e32 v44, v97, v44
	v_add_f32_e32 v44, v99, v44
	v_cvt_i32_f64_e32 v97, v[58:59]
	v_fma_f64 v[58:59], v[52:53], v[72:73], s[42:43]
	v_fma_f64 v[72:73], v[84:85], v[86:87], s[40:41]
	v_fma_f64 v[54:55], v[54:55], v[92:93], v[54:55]
	v_fma_f64 v[40:41], v[94:95], s[44:45], v[40:41]
	v_ldexp_f64 v[23:24], v[23:24], v97
	v_add_f32_e32 v44, v98, v44
	v_add_f32_e32 v44, 1.0, v44
	v_cvt_i32_f32_e32 v108, v96
	v_fma_f64 v[58:59], v[52:53], v[58:59], s[40:41]
	v_fma_f64 v[72:73], v[84:85], v[72:73], s[38:39]
	v_fma_f64 v[86:87], -v[74:75], v[54:55], 1.0
	v_fma_f64 v[40:41], v[94:95], v[40:41], s[42:43]
	v_add_f64 v[92:93], v[23:24], 1.0
	s_mov_b32 s43, 0x3ff051eb
	s_mov_b32 s42, 0x851eb852
	v_add_f64 v[23:24], v[66:67], -v[84:85]
	v_fma_f64 v[58:59], v[52:53], v[58:59], s[38:39]
	v_fma_f64 v[66:67], v[84:85], v[72:73], s[36:37]
	v_add_f64 v[64:65], v[64:65], -v[52:53]
	v_fma_f64 v[40:41], v[94:95], v[40:41], s[40:41]
	v_div_scale_f64 v[72:73], s[12:13], v[92:93], v[92:93], s[42:43]
	v_mul_f64 v[96:97], v[84:85], v[84:85]
	v_add_f64 v[23:24], v[23:24], v[76:77]
	v_fma_f64 v[58:59], v[52:53], v[58:59], s[36:37]
	v_mul_f64 v[76:77], v[52:53], v[52:53]
	v_add_f64 v[64:65], v[64:65], v[82:83]
	v_fma_f64 v[40:41], v[94:95], v[40:41], s[38:39]
	v_fma_f64 v[66:67], v[84:85], v[66:67], s[34:35]
	v_add_f64 v[82:83], v[88:89], -v[94:95]
	v_fma_f64 v[88:89], v[84:85], v[84:85], -v[96:97]
	v_add_f64 v[98:99], v[23:24], v[23:24]
	v_fma_f64 v[58:59], v[52:53], v[58:59], s[34:35]
	v_fma_f64 v[100:101], v[52:53], v[52:53], -v[76:77]
	v_add_f64 v[102:103], v[64:65], v[64:65]
	v_fma_f64 v[40:41], v[94:95], v[40:41], s[36:37]
	v_mul_f64 v[104:105], v[94:95], v[94:95]
	v_add_f64 v[82:83], v[82:83], v[90:91]
	v_rcp_f64_e32 v[90:91], v[72:73]
	v_fma_f64 v[66:67], v[84:85], v[66:67], s[22:23]
	v_fma_f64 v[88:89], v[84:85], v[98:99], v[88:89]
	v_fma_f64 v[58:59], v[52:53], v[58:59], s[22:23]
	v_fma_f64 v[98:99], v[52:53], v[102:103], v[100:101]
	v_fma_f64 v[40:41], v[94:95], v[40:41], s[34:35]
	v_fma_f64 v[100:101], v[94:95], v[94:95], -v[104:105]
	v_add_f64 v[102:103], v[82:83], v[82:83]
	v_div_scale_f64 v[106:107], vcc, 1.0, v[50:51], 1.0
	v_fma_f64 v[88:89], v[23:24], v[23:24], v[88:89]
	v_fma_f64 v[66:67], v[84:85], v[66:67], s[18:19]
	v_ldexp_f32 v44, v44, v108
	v_fma_f64 v[98:99], v[64:65], v[64:65], v[98:99]
	v_fma_f64 v[58:59], v[52:53], v[58:59], s[18:19]
	v_fma_f64 v[100:101], v[94:95], v[102:103], v[100:101]
	v_fma_f64 v[40:41], v[94:95], v[40:41], s[22:23]
	v_fma_f64 v[54:55], v[54:55], v[86:87], v[54:55]
	v_add_f64 v[86:87], v[96:97], v[88:89]
	v_fma_f64 v[66:67], v[84:85], v[66:67], s[20:21]
	v_fma_f64 v[102:103], -v[72:73], v[90:91], 1.0
	v_add_f64 v[108:109], v[76:77], v[98:99]
	v_fma_f64 v[58:59], v[52:53], v[58:59], s[20:21]
	v_fma_f64 v[100:101], v[82:83], v[82:83], v[100:101]
	v_fma_f64 v[40:41], v[94:95], v[40:41], s[18:19]
	v_mul_f64 v[110:111], v[106:107], v[54:55]
	v_add_f64 v[96:97], v[86:87], -v[96:97]
	v_mul_f64 v[112:113], v[86:87], v[66:67]
	v_fma_f64 v[90:91], v[90:91], v[102:103], v[90:91]
	v_add_f64 v[76:77], v[108:109], -v[76:77]
	v_mul_f64 v[102:103], v[108:109], v[58:59]
	v_add_f64 v[114:115], v[104:105], v[100:101]
	v_fma_f64 v[40:41], v[94:95], v[40:41], s[20:21]
	v_fma_f64 v[74:75], -v[74:75], v[110:111], v[106:107]
	v_add_f64 v[88:89], v[88:89], -v[96:97]
	v_fma_f64 v[86:87], v[86:87], v[66:67], -v[112:113]
	v_fma_f64 v[96:97], -v[72:73], v[90:91], 1.0
	v_add_f64 v[76:77], v[98:99], -v[76:77]
	v_fma_f64 v[98:99], v[108:109], v[58:59], -v[102:103]
	v_add_f64 v[104:105], v[114:115], -v[104:105]
	v_mul_f64 v[106:107], v[114:115], v[40:41]
	v_div_scale_f64 v[108:109], s[12:13], s[42:43], v[92:93], s[42:43]
	v_fma_f64 v[66:67], v[88:89], v[66:67], v[86:87]
	v_cmp_nlt_f32_e64 s[14:15], s66, v116
	v_cndmask_b32_e64 v44, v47, v44, s[14:15]
	v_fma_f64 v[58:59], v[76:77], v[58:59], v[98:99]
	v_add_f64 v[76:77], v[100:101], -v[104:105]
	v_fma_f64 v[86:87], v[114:115], v[40:41], -v[106:107]
	v_div_fmas_f64 v[54:55], v[74:75], v[54:55], v[110:111]
	v_fma_f64 v[74:75], v[90:91], v[96:97], v[90:91]
	v_add_f64 v[88:89], v[112:113], v[66:67]
	v_cmp_ngt_f32_e32 vcc, s65, v116
	v_add_f64 v[90:91], v[102:103], v[58:59]
	v_cmp_neq_f32_e64 s[14:15], 0, v19
	v_fma_f64 v[40:41], v[76:77], v[40:41], v[86:87]
	s_and_b64 vcc, s[14:15], vcc
	v_cndmask_b32_e32 v44, 0, v44, vcc
	v_mul_f64 v[76:77], v[108:109], v[74:75]
	v_add_f64 v[86:87], v[88:89], -v[112:113]
	v_add_f64 v[96:97], v[84:85], v[88:89]
	v_add_f64 v[98:99], v[90:91], -v[102:103]
	v_add_f64 v[100:101], v[52:53], v[90:91]
	v_add_f64 v[102:103], v[106:107], v[40:41]
	v_cmp_class_f32_e64 vcc, v19, s16
	v_cndmask_b32_e32 v44, v44, v47, vcc
	v_div_fixup_f64 v[50:51], v[54:55], v[50:51], 1.0
	v_fma_f64 v[54:55], -v[72:73], v[76:77], v[108:109]
	v_add_f64 v[72:73], v[96:97], -v[84:85]
	v_add_f64 v[66:67], v[66:67], -v[86:87]
	v_add_f64 v[52:53], v[100:101], -v[52:53]
	v_add_f64 v[58:59], v[58:59], -v[98:99]
	v_add_f64 v[84:85], v[94:95], v[102:103]
	v_add_f64 v[86:87], v[102:103], -v[106:107]
	s_mov_b64 vcc, s[12:13]
	v_div_fmas_f64 v[54:55], v[54:55], v[74:75], v[76:77]
	v_add_f64 v[72:73], v[88:89], -v[72:73]
	v_add_f64 v[23:24], v[23:24], v[66:67]
	v_add_f64 v[52:53], v[90:91], -v[52:53]
	v_add_f64 v[58:59], v[64:65], v[58:59]
	v_add_f64 v[64:65], v[84:85], -v[94:95]
	v_add_f64 v[40:41], v[40:41], -v[86:87]
	v_cmp_nlt_f64_e32 vcc, s[28:29], v[48:49]
	v_cndmask_b32_e32 v66, 0, v51, vcc
	v_mov_b32_e32 v67, s17
	v_cmp_ngt_f64_e64 s[12:13], s[30:31], v[48:49]
	v_add_f64 v[47:48], v[72:73], v[23:24]
	v_add_f64 v[51:52], v[52:53], v[58:59]
	v_add_f64 v[58:59], v[102:103], -v[64:65]
	v_add_f64 v[40:41], v[82:83], v[40:41]
	v_cmp_u_f32_e64 s[14:15], v19, v19
	v_cndmask_b32_e64 v23, |v44|, v19, s[14:15]
	v_cndmask_b32_e64 v49, v67, v66, s[12:13]
	v_div_fixup_f64 v[53:54], v[54:55], v[92:93], s[42:43]
	v_cmp_nlt_f64_e64 s[14:15], s[28:29], v[60:61]
	v_add_f64 v[51:52], v[100:101], v[51:52]
	v_add_f64 v[64:65], v[96:97], v[47:48]
	v_add_f64 v[40:41], v[58:59], v[40:41]
	s_and_b64 vcc, s[12:13], vcc
	v_cndmask_b32_e32 v48, 0, v50, vcc
	v_cvt_f32_f64_e32 v19, v[48:49]
	v_cndmask_b32_e64 v24, 0, v53, s[14:15]
	v_cndmask_b32_e64 v44, 0, v54, s[14:15]
	v_add_f64 v[47:48], v[51:52], 1.0
	v_add_f64 v[49:50], v[64:65], 1.0
	v_add_f64 v[40:41], v[84:85], v[40:41]
	v_mov_b32_e32 v51, s43
	v_cvt_i32_f64_e32 v53, v[62:63]
	v_cvt_i32_f64_e32 v55, v[68:69]
	v_cmp_ngt_f64_e64 s[18:19], s[30:31], v[60:61]
	v_cndmask_b32_e64 v52, v51, v44, s[18:19]
	v_ldexp_f64 v[53:54], v[47:48], v53
	v_ldexp_f64 v[49:50], v[49:50], v55
	v_add_f64 v[47:48], v[40:41], 1.0
	v_cmp_lt_f64_e64 s[12:13], s[28:29], v[56:57]
	v_cmp_gt_f64_e32 vcc, s[30:31], v[56:57]
	v_mov_b32_e32 v40, 0x7ff00000
	v_cvt_i32_f64_e32 v41, v[80:81]
	v_cmp_nlt_f64_e64 s[20:21], s[28:29], v[70:71]
	v_cndmask_b32_e64 v44, v40, v54, s[20:21]
	v_cmp_ngt_f64_e64 s[22:23], s[30:31], v[70:71]
	v_ldexp_f64 v[47:48], v[47:48], v41
	v_cmp_lt_f64_e64 s[16:17], s[28:29], v[78:79]
	v_cmp_gt_f64_e64 s[14:15], s[30:31], v[78:79]
	v_mov_b32_e32 v41, s42
	v_cndmask_b32_e64 v51, v41, v24, s[18:19]
	v_cvt_f32_f64_e32 v24, v[51:52]
	v_cndmask_b32_e64 v52, 0, v44, s[22:23]
	s_and_b64 s[18:19], s[22:23], s[20:21]
	v_cndmask_b32_e64 v51, 0, v53, s[18:19]
	v_add_f32_e32 v17, 0x4276079d, v17
	v_add_f64 v[38:39], v[38:39], 1.0
	v_add_f64 v[33:34], v[33:34], 1.0
	s_mov_b32 s19, 0x3fdf7079
	s_mov_b32 s18, 0xe59f2baa
	v_mul_f64 v[49:50], v[49:50], s[18:19]
	s_mov_b32 s43, 0x3fc851eb
	v_div_scale_f64 v[53:54], s[18:19], v[38:39], v[38:39], 1.0
	v_div_scale_f64 v[55:56], s[18:19], v[33:34], v[33:34], s[42:43]
	v_add_f64 v[29:30], v[29:30], 1.0
	v_add_f64 v[47:48], v[47:48], 1.0
	v_cndmask_b32_e64 v41, v50, v40, s[12:13]
	s_or_b64 s[12:13], vcc, s[12:13]
	v_cndmask_b32_e64 v49, v49, 0, s[12:13]
	v_cndmask_b32_e64 v50, v41, 0, vcc
	v_add_f64 v[49:50], v[49:50], v[51:52]
	v_div_scale_f64 v[51:52], s[12:13], v[29:30], v[29:30], s[42:43]
	v_cndmask_b32_e64 v41, v48, v40, s[16:17]
	s_or_b64 s[12:13], s[14:15], s[16:17]
	v_cndmask_b32_e64 v40, v47, 0, s[12:13]
	v_mov_b32_e32 v44, 0x3ff00000
	v_cndmask_b32_e64 v41, v41, v44, s[14:15]
	v_div_scale_f64 v[47:48], s[12:13], v[40:41], v[40:41], v[49:50]
	v_rcp_f64_e32 v[57:58], v[53:54]
	v_rcp_f64_e32 v[59:60], v[55:56]
	v_rcp_f64_e32 v[61:62], v[51:52]
	v_rcp_f64_e32 v[63:64], v[47:48]
	s_mov_b32 s29, 0x3fe80000
	v_cvt_f64_f32_e32 v[65:66], v13
	s_mov_b32 s15, 0xc0103333
	s_brev_b32 s14, 28
	v_mul_f32_e32 v13, 0x3490f484, v35
	v_fma_f64 v[67:68], -v[53:54], v[57:58], 1.0
	v_fma_f64 v[69:70], -v[55:56], v[59:60], 1.0
	v_fma_f64 v[71:72], -v[51:52], v[61:62], 1.0
	v_cvt_f64_f32_e32 v[73:74], v13
	v_mul_f64 v[65:66], v[65:66], s[28:29]
	v_fma_f64 v[75:76], -v[47:48], v[63:64], 1.0
	v_div_scale_f64 v[77:78], vcc, 1.0, v[38:39], 1.0
	v_fma_f64 v[57:58], v[57:58], v[67:68], v[57:58]
	v_fma_f64 v[59:60], v[59:60], v[69:70], v[59:60]
	v_fma_f64 v[61:62], v[61:62], v[71:72], v[61:62]
	v_div_scale_f64 v[67:68], s[12:13], s[42:43], v[33:34], s[42:43]
	v_fma_f64 v[35:36], v[65:66], v[36:37], s[14:15]
	v_fma_f64 v[63:64], v[63:64], v[75:76], v[63:64]
	v_div_scale_f64 v[65:66], s[14:15], s[42:43], v[29:30], s[42:43]
	v_fma_f64 v[69:70], -v[53:54], v[57:58], 1.0
	v_fma_f64 v[71:72], -v[55:56], v[59:60], 1.0
	v_fma_f64 v[75:76], -v[51:52], v[61:62], 1.0
	v_div_scale_f64 v[79:80], s[16:17], v[49:50], v[40:41], v[49:50]
	v_mul_f64 v[35:36], v[35:36], v[73:74]
	v_fma_f64 v[73:74], -v[47:48], v[63:64], 1.0
	v_fma_f64 v[57:58], v[57:58], v[69:70], v[57:58]
	s_mov_b32 s30, 0x3dcccccd
	v_fma_f64 v[59:60], v[59:60], v[71:72], v[59:60]
	v_fma_f64 v[61:62], v[61:62], v[75:76], v[61:62]
	v_div_scale_f64 v[69:70], s[18:19], v[31:32], v[31:32], v[35:36]
	v_fma_f64 v[63:64], v[63:64], v[73:74], v[63:64]
	s_mov_b32 s31, 0x3c459210
	v_mul_f64 v[71:72], v[77:78], v[57:58]
	v_mul_f32_e32 v37, 0x3d75c28f, v3
	v_mul_f64 v[73:74], v[67:68], v[59:60]
	s_mov_b32 s23, 0x3f9eb851
	v_mul_f64 v[75:76], v[65:66], v[61:62]
	s_mov_b32 s22, 0xeb851eb8
	v_mul_f64 v[81:82], v[79:80], v[63:64]
	v_mul_f32_e32 v83, 0x3ca3d70a, v9
	v_fma_f64 v[53:54], -v[53:54], v[71:72], v[77:78]
	v_cvt_f64_f32_e32 v[8:9], v8
	v_fma_f64 v[55:56], -v[55:56], v[73:74], v[67:68]
	v_cvt_f64_f32_e32 v[67:68], v18
	v_fma_f64 v[51:52], -v[51:52], v[75:76], v[65:66]
	v_rcp_f64_e32 v[65:66], v[69:70]
	v_fma_f64 v[47:48], -v[47:48], v[81:82], v[79:80]
	v_div_fmas_f64 v[53:54], v[53:54], v[57:58], v[71:72]
	s_mov_b64 vcc, s[12:13]
	v_div_fmas_f64 v[55:56], v[55:56], v[59:60], v[73:74]
	s_mov_b64 vcc, s[14:15]
	v_div_fmas_f64 v[51:52], v[51:52], v[61:62], v[75:76]
	s_mov_b64 vcc, s[16:17]
	v_div_fmas_f64 v[47:48], v[47:48], v[63:64], v[81:82]
	s_mov_b32 s29, 0x3fad2f1a
	s_mov_b32 s28, 0x9fbe76c9
	s_mov_b32 s53, 0x3fb1eb85
	v_mov_b32_e32 v18, 0x782d3848
	v_mov_b32_e32 v59, 0x3f7057d1
	v_mov_b32_e32 v60, 0x3f91b478
	v_mov_b32_e32 v61, 0x4230fcf8
	s_mov_b32 s25, 0x3feccccc
	v_fma_f64 v[57:58], -v[69:70], v[65:66], 1.0
	s_mov_b32 s33, 0x3dc7d0d0
	v_cmp_neq_f32_e64 s[12:13], 0, v12
	v_cmp_o_f32_e64 s[14:15], v12, v12
	s_movk_i32 s34, 0x1f8
	v_mul_f32_e32 v62, 0x3dccccd0, v2
	s_mov_b32 s35, 0x3f666666
	v_div_fixup_f64 v[2:3], v[47:48], v[40:41], v[49:50]
	v_fma_f64 v[12:13], v[65:66], v[57:58], v[65:66]
	v_mov_b32_e32 v57, 0x7fc00000
	s_mov_b32 s36, 0x40a00000
	v_div_scale_f32 v58, s[16:17], v14, v14, s30
	v_div_scale_f64 v[40:41], s[16:17], v[35:36], v[31:32], v[35:36]
	v_cvt_f32_f64_e32 v47, v[2:3]
	v_fma_f64 v[2:3], -v[69:70], v[12:13], 1.0
	v_div_scale_f32 v63, s[18:19], s30, v14, s30
	v_add_f32_e32 v64, v24, v47
	v_div_scale_f32 v65, s[20:21], v64, v64, v24
	v_div_scale_f32 v66, s[20:21], v15, v15, s30
	v_fma_f64 v[2:3], v[12:13], v[2:3], v[12:13]
	v_div_scale_f32 v71, s[20:21], s30, v15, s30
	v_div_scale_f32 v72, vcc, v24, v64, v24
	v_mul_f64 v[12:13], v[27:28], s[22:23]
	v_rcp_f32_e32 v73, v58
	v_cvt_f64_f32_e32 v[47:48], v37
	v_fma_f64 v[8:9], v[67:68], 0.5, v[8:9]
	v_mul_f64 v[49:50], v[40:41], v[2:3]
	v_fma_f32 v37, -v58, v73, 1.0
	v_fma_f32 v37, v37, v73, v73
	v_mul_f32_e32 v67, v63, v37
	v_fma_f32 v68, -v58, v67, v63
	v_rcp_f32_e32 v73, v65
	v_fma_f32 v67, v68, v37, v67
	v_fma_f32 v58, -v58, v67, v63
	v_fma_f64 v[40:41], -v[69:70], v[49:50], v[40:41]
	v_fma_f32 v63, -v65, v73, 1.0
	v_fma_f32 v63, v63, v73, v73
	v_mul_f32_e32 v68, v72, v63
	v_fma_f32 v69, -v65, v68, v72
	v_fma_f32 v68, v69, v63, v68
	v_fma_f32 v65, -v65, v68, v72
	v_div_fmas_f32 v63, v65, v63, v68
	s_mov_b64 vcc, s[16:17]
	v_div_fmas_f64 v[2:3], v[40:41], v[2:3], v[49:50]
	s_mov_b64 vcc, s[18:19]
	v_div_fmas_f32 v37, v58, v37, v67
	v_mul_f32_e32 v10, v83, v10
	v_mul_f64 v[27:28], v[27:28], s[24:25]
	v_cmp_class_f32_e64 s[16:17], v16, s34
	v_mul_f64 v[8:9], v[8:9], v[47:48]
	v_fma_f32 v16, v1, s35, v62
	s_mov_b32 s25, 0x3fdccccc
	s_and_b64 s[14:15], s[16:17], s[14:15]
	v_rcp_f32_e32 v1, v66
	s_and_b64 vcc, s[14:15], s[12:13]
	v_cndmask_b32_e32 v25, v57, v25, vcc
	v_cvt_f32_f64_e32 v40, v[12:13]
	v_mul_f64 v[8:9], v[8:9], v[45:46]
	v_fma_f32 v12, -v66, v1, 1.0
	v_fma_f32 v1, v12, v1, v1
	v_mul_f32_e32 v41, v71, v1
	v_div_fixup_f32 v12, v37, v14, s30
	v_add_f32_e32 v14, 1.0, v12
	v_div_scale_f32 v37, s[12:13], v14, v14, s31
	v_fma_f32 v47, -v66, v41, v71
	v_div_fixup_f64 v[12:13], v[55:56], v[33:34], s[42:43]
	v_div_fixup_f64 v[29:30], v[51:52], v[29:30], s[42:43]
	v_div_fixup_f64 v[33:34], v[53:54], v[38:39], 1.0
	v_div_scale_f32 v38, vcc, s31, v14, s31
	v_fma_f32 v39, v47, v1, v41
	v_fma_f32 v41, -v66, v39, v71
	v_cvt_f32_f64_e32 v47, v[8:9]
	v_add_f64 v[8:9], v[12:13], s[28:29]
	v_add_f64 v[12:13], v[29:30], s[28:29]
	v_cndmask_b32_e64 v30, v34, 0, s[10:11]
	s_or_b64 s[10:11], s[8:9], s[10:11]
	v_cndmask_b32_e64 v29, v33, 0, s[10:11]
	v_cndmask_b32_e64 v30, v30, v44, s[8:9]
	v_rcp_f32_e32 v33, v37
	v_cvt_f32_f64_e32 v29, v[29:30]
	v_mul_f64 v[8:9], v[8:9], s[52:53]
	v_mul_f64 v[12:13], v[12:13], s[52:53]
	v_fma_f32 v30, -v37, v33, 1.0
	v_fma_f32 v30, v30, v33, v33
	v_mul_f32_e32 v33, v38, v30
	v_fma_f32 v34, -v37, v33, v38
	v_fma_f32 v33, v34, v30, v33
	v_fma_f32 v34, -v37, v33, v38
	v_div_fmas_f32 v30, v34, v30, v33
	s_mov_b64 vcc, s[20:21]
	v_div_fmas_f32 v33, v41, v1, v39
	v_mul_f32_e32 v1, v11, v40
	v_fma_f32 v10, v10, v26, v47
	v_mul_f32_e32 v1, v1, v29
	v_fma_f32 v29, v26, v1, v10
	v_cndmask_b32_e64 v1, v8, v18, s[2:3]
	v_cndmask_b32_e64 v8, v9, v59, s[2:3]
	v_cndmask_b32_e64 v10, v12, v18, s[4:5]
	v_cndmask_b32_e64 v11, v13, v59, s[4:5]
	v_cndmask_b32_e64 v9, v8, v60, s[0:1]
	v_cndmask_b32_e64 v8, v1, v61, s[0:1]
	v_cndmask_b32_e64 v11, v11, v60, s[6:7]
	v_cndmask_b32_e64 v10, v10, v61, s[6:7]
	v_cvt_f32_f64_e32 v8, v[8:9]
	v_cvt_f32_f64_e32 v10, v[10:11]
	v_div_fixup_f64 v[1:2], v[2:3], v[31:32], v[35:36]
	v_div_fixup_f32 v3, v33, v15, s30
	v_add_f32_e32 v11, 1.0, v3
	v_div_scale_f32 v12, s[0:1], v11, v11, s33
	v_mul_f32_e32 v3, 0x3de147ae, v8
	v_mul_f32_e32 v3, v3, v43
	v_div_fixup_f32 v8, v63, v64, v24
	v_cvt_f64_f32_e32 v[8:9], v8
	v_div_scale_f32 v13, vcc, s33, v11, s33
	v_mul_f32_e32 v10, 0x3f63d70a, v10
	v_cvt_f32_f64_e32 v15, v[1:2]
	v_mul_f32_e32 v10, v10, v23
	v_mul_f64 v[1:2], v[27:28], v[8:9]
	v_mul_f32_e32 v9, v42, v10
	v_mul_f32_e32 v7, v7, v15
	v_mul_f32_e32 v0, v0, v7
	v_mul_f32_e32 v0, v16, v0
	v_cvt_f64_f32_e32 v[7:8], v0
	v_rcp_f32_e32 v10, v12
	v_fma_f32 v9, v42, v3, v9
	v_mul_f64 v[0:1], v[1:2], v[45:46]
	v_mul_f64 v[2:3], v[7:8], s[24:25]
	v_fma_f32 v7, -v12, v10, 1.0
	v_fma_f32 v7, v7, v10, v10
	v_mul_f32_e32 v8, v13, v7
	v_fma_f32 v10, -v12, v8, v13
	v_fma_f32 v8, v10, v7, v8
	v_fma_f32 v10, -v12, v8, v13
	v_div_fmas_f32 v7, v10, v7, v8
	v_add_f32_e32 v8, v29, v9
	v_mov_b32_e32 v9, 0x41180000
	v_cvt_f32_f64_e32 v1, v[0:1]
	v_mov_b32_e32 v0, 0
	v_cmp_nge_f32_e32 vcc, s36, v25
	v_cndmask_b32_e64 v9, v9, 0, vcc
	v_cvt_f32_f64_e32 v2, v[2:3]
	v_add_f32_e32 v1, v8, v1
	v_add_f32_e32 v3, v20, v21
	v_fma_f32 v1, v3, -2.0, v1
	v_add_f32_e32 v1, v1, v2
	v_mul_f32_e32 v2, 0x38e6afce, v19
	v_mul_f32_e32 v3, 0x3a694ee4, v19
	v_mul_f32_e32 v3, v26, v3
	v_fma_f32 v2, v26, v2, v3
	v_add_f32_e32 v1, v2, v1
	v_div_fixup_f32 v2, v30, v14, s31
	v_div_fixup_f32 v3, v7, v11, s33
	v_mul_f32_e32 v3, v3, v17
	v_fma_f32 v2, v2, v17, v3
	v_add_f32_e32 v3, v4, v5
	s_mov_b32 s0, 0x3c1374bc
	v_fma_f32 v2, v17, s0, v2
	v_add_f32_e32 v4, v6, v22
	v_add_f32_e32 v2, v2, v3
	v_add_f32_e32 v2, v4, v2
	v_add_f32_e32 v1, v1, v2
	v_sub_f32_e32 v1, v1, v9
	v_xor_b32_e32 v3, 0x80000000, v1
	s_add_u32 s0, s26, 0x98
	s_addc_u32 s1, s27, 0
	v_mov_b32_e32 v2, s1
	v_mov_b32_e32 v1, s0
	flat_store_dword v[1:2], v3
	s_add_u32 s0, s26, 0xa0
	s_addc_u32 s1, s27, 0
	v_mov_b32_e32 v1, v0
	v_mov_b32_e32 v3, s1
	v_mov_b32_e32 v2, s0
	flat_store_dwordx2 v[2:3], v[0:1]
BB0_31:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z6kerneliPfS_S_S_
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 124
		.amdhsa_next_free_sgpr 80
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	_Z6kerneliPfS_S_S_, .Lfunc_end0-_Z6kerneliPfS_S_S_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 64804
; NumSgprs: 84
; NumVgprs: 124
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 10
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 84
; NumVGPRsForWavesPerEU: 124
; Occupancy: 2
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z8solver_2iiPfS_S_S_S_S_S_S_S_ ; -- Begin function _Z8solver_2iiPfS_S_S_S_S_S_S_S_
	.globl	_Z8solver_2iiPfS_S_S_S_S_S_S_S_
	.p2align	8
	.type	_Z8solver_2iiPfS_S_S_S_S_S_S_S_,@function
_Z8solver_2iiPfS_S_S_S_S_S_S_S_:        ; @_Z8solver_2iiPfS_S_S_S_S_S_S_S_
_Z8solver_2iiPfS_S_S_S_S_S_S_S_$local:
; %bb.0:
	s_load_dwordx2 s[8:9], s[4:5], 0x0
	s_lshl_b32 s0, s6, 5
	v_add_u32_e32 v22, vcc, s0, v0
	s_mov_b32 s25, 0
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s[0:1], s9, 0
	v_cmp_gt_i32_e32 vcc, s8, v22
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz BB1_131
; %bb.1:                                ; %.preheader296
	s_mov_b32 s89, 0x3ff00000
	s_mov_b32 s88, 0x4bda12f
	v_rsq_f64_e32 v[0:1], s[88:89]
	v_mul_f64 v[2:3], v[0:1], s[88:89]
	v_mul_f64 v[0:1], v[0:1], 0.5
	v_fma_f64 v[4:5], -v[0:1], v[2:3], 0.5
	v_fma_f64 v[2:3], v[2:3], v[4:5], v[2:3]
	v_fma_f64 v[4:5], v[0:1], v[4:5], v[0:1]
	v_fma_f64 v[6:7], -v[2:3], v[2:3], s[88:89]
	s_load_dwordx16 s[36:51], s[4:5], 0x8
	s_load_dwordx2 s[0:1], s[4:5], 0x48
	s_movk_i32 s82, 0x5b
	v_cvt_f32_i32_e32 v0, s9
	s_mov_b32 s4, 0x41200000
	v_fma_f64 v[6:7], v[6:7], v[4:5], v[2:3]
	v_mul_lo_u32 v8, v22, 3
	s_movk_i32 s2, 0x49f
	v_mul_lo_u32 v10, v22, 18
	v_mul_lo_u32 v1, v22, s82
	v_mul_lo_u32 v11, v22, s2
	v_div_scale_f32 v15, s[2:3], v0, v0, s4
	v_fma_f64 v[13:14], -v[6:7], v[6:7], s[88:89]
	v_ashrrev_i32_e32 v9, 31, v8
	v_ashrrev_i32_e32 v2, 31, v1
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v16, s45
	v_mov_b32_e32 v17, s51
	v_ashrrev_i32_e32 v12, 31, v11
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_mov_b32_e32 v3, s43
	v_fma_f64 v[35:36], v[13:14], v[4:5], v[6:7]
	v_lshlrev_b64 v[6:7], 2, v[1:2]
	v_add_u32_e32 v2, vcc, s42, v8
	v_addc_u32_e32 v3, vcc, v3, v9, vcc
	v_add_u32_e32 v4, vcc, s44, v6
	v_addc_u32_e32 v5, vcc, v16, v7, vcc
	v_add_u32_e32 v6, vcc, s50, v6
	v_addc_u32_e32 v7, vcc, v17, v7, vcc
	v_mov_b32_e32 v13, s1
	v_lshlrev_b64 v[8:9], 2, v[11:12]
	v_add_u32_e32 v8, vcc, s0, v8
	v_addc_u32_e32 v9, vcc, v13, v9, vcc
	v_div_scale_f32 v12, vcc, s4, v0, s4
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_mov_b32_e32 v13, s41
	v_writelane_b32 v170, s36, 0
	v_writelane_b32 v170, s37, 1
	v_writelane_b32 v170, s38, 2
	v_writelane_b32 v170, s39, 3
	v_writelane_b32 v170, s40, 4
	v_writelane_b32 v170, s41, 5
	v_writelane_b32 v170, s42, 6
	v_writelane_b32 v170, s43, 7
	v_writelane_b32 v170, s44, 8
	v_writelane_b32 v170, s45, 9
	v_writelane_b32 v170, s46, 10
	v_writelane_b32 v170, s47, 11
	v_writelane_b32 v170, s48, 12
	v_writelane_b32 v170, s49, 13
	v_writelane_b32 v170, s50, 14
	v_writelane_b32 v170, s51, 15
	v_add_u32_e64 v19, s[0:1], s40, v10
	v_addc_u32_e64 v20, s[0:1], v13, v11, s[0:1]
	v_rcp_f32_e32 v10, v15
	v_fma_f32 v11, -v15, v10, 1.0
	v_fma_f32 v10, v11, v10, v10
	v_mul_f32_e32 v11, v12, v10
	v_fma_f32 v13, -v15, v11, v12
	v_fma_f32 v11, v13, v10, v11
	s_mov_b32 s3, 0x3f9eb851
	s_mov_b32 s2, 0xeb851eb8
	v_fma_f32 v12, -v15, v11, v12
	v_div_fmas_f32 v21, v12, v10, v11
	v_mul_f64 v[10:11], v[35:36], s[2:3]
	v_cvt_f32_f64_e32 v10, v[10:11]
	v_add_u32_e32 v11, vcc, 60, v19
	v_addc_u32_e32 v12, vcc, 0, v20, vcc
	v_add_u32_e32 v13, vcc, 4, v19
	v_addc_u32_e32 v14, vcc, 0, v20, vcc
	v_add_u32_e32 v15, vcc, 64, v19
	v_addc_u32_e32 v16, vcc, 0, v20, vcc
	v_add_u32_e32 v17, vcc, 24, v19
	v_addc_u32_e32 v18, vcc, 0, v20, vcc
	v_add_u32_e32 v19, vcc, 44, v19
	v_addc_u32_e32 v20, vcc, 0, v20, vcc
	v_div_fixup_f32 v21, v21, v0, s4
	v_writelane_b32 v170, s8, 16
	v_writelane_b32 v170, s9, 17
	s_add_i32 s0, s9, 1
	v_mul_lo_u32 v22, s0, v22
	v_add_u32_e32 v23, vcc, 64, v6
	v_addc_u32_e32 v24, vcc, 0, v7, vcc
	s_movk_i32 s1, 0x58
	v_add_u32_e32 v25, vcc, s1, v6
	v_addc_u32_e32 v26, vcc, 0, v7, vcc
	s_movk_i32 s1, 0x8c
	v_add_u32_e32 v27, vcc, s1, v6
	v_addc_u32_e32 v28, vcc, 0, v7, vcc
	s_movk_i32 s1, 0x90
	v_add_u32_e32 v29, vcc, s1, v6
	v_addc_u32_e32 v30, vcc, 0, v7, vcc
	s_movk_i32 s1, 0x94
	v_add_u32_e32 v31, vcc, s1, v6
	v_addc_u32_e32 v32, vcc, 0, v7, vcc
	s_movk_i32 s1, 0x98
	v_add_u32_e32 v33, vcc, s1, v6
	v_addc_u32_e32 v34, vcc, 0, v7, vcc
	s_mov_b32 s3, 0x3feccccc
	s_mov_b32 s16, 0xcccccccd
	s_mov_b32 s1, 0x3feccccc
	v_writelane_b32 v170, s0, 18
	v_writelane_b32 v170, s1, 19
	s_mov_b32 s17, s3
	v_mul_f64 v[35:36], v[35:36], s[16:17]
	s_movk_i32 s1, 0xb8
	v_add_u32_e32 v37, vcc, s1, v6
	v_addc_u32_e32 v38, vcc, 0, v7, vcc
	s_movk_i32 s1, 0xe8
	v_add_u32_e32 v39, vcc, s1, v6
	v_addc_u32_e32 v40, vcc, 0, v7, vcc
	s_movk_i32 s1, 0xf4
	v_add_u32_e32 v41, vcc, s1, v6
	v_addc_u32_e32 v42, vcc, 0, v7, vcc
	s_movk_i32 s1, 0x130
	v_add_u32_e32 v43, vcc, s1, v6
	v_addc_u32_e32 v44, vcc, 0, v7, vcc
	v_add_u32_e32 v45, vcc, 4, v2
	v_addc_u32_e32 v46, vcc, 0, v3, vcc
	v_add_u32_e32 v47, vcc, 8, v2
	v_addc_u32_e32 v48, vcc, 0, v3, vcc
	s_mov_b32 s52, 11
	s_mov_b32 s55, 0x3ff71547
	s_mov_b32 s54, 0x652b82fe
	s_mov_b32 s57, 0xbfe62e42
	s_mov_b32 s56, 0xfefa3000
	s_mov_b32 s59, 0xbd53de6a
	s_mov_b32 s58, 0xf278ece6
	s_mov_b32 s79, 0x3e928af3
	s_mov_b32 s78, 0xfca7ab0c
	s_mov_b32 s63, 0x3e5ade15
	s_mov_b32 s62, 0x6a5dcb37
	s_mov_b32 s65, 0x3ec71dee
	s_mov_b32 s64, 0x623fde64
	s_mov_b32 s67, 0x3efa0199
	s_mov_b32 s66, 0x7c89e6b0
	s_mov_b32 s69, 0x3f2a01a0
	s_mov_b32 s68, 0x14761f6e
	s_mov_b32 s71, 0x3f56c16c
	s_mov_b32 s70, 0x1852b7b0
	s_mov_b32 s73, 0x3f811111
	s_mov_b32 s72, 0x11122322
	s_mov_b32 s75, 0x3fa55555
	s_mov_b32 s74, 0x555502a1
	s_mov_b32 s77, 0x3fc55555
	s_mov_b32 s76, 0x55555511
	s_mov_b32 s53, 0x3fe00000
	s_mov_b32 s5, 0x3fc0a3d7
	s_mov_b32 s4, 0xa3d70a4
	v_writelane_b32 v170, s4, 20
	v_writelane_b32 v170, s5, 21
	s_mov_b32 s5, 0xbe910318
	s_mov_b32 s4, 0xca62757c
	v_writelane_b32 v170, s4, 22
	v_writelane_b32 v170, s5, 23
	s_mov_b32 s5, 0xbfb99999
	s_mov_b32 s4, 0x9999999a
	v_writelane_b32 v170, s4, 24
	v_writelane_b32 v170, s5, 25
	s_mov_b32 s5, 0x3fb43958
	s_mov_b32 s4, 0x10624dd3
	v_writelane_b32 v170, s4, 26
	v_writelane_b32 v170, s5, 27
	s_mov_b32 s4, 0x47ae147b
	s_mov_b32 s7, 0x3fcf487f
	s_mov_b32 s6, 0xcb923a2a
	v_writelane_b32 v170, s6, 28
	v_writelane_b32 v170, s7, 29
	s_mov_b32 s7, 0xbfa67b5f
	s_mov_b32 s6, 0x1bef49cf
	v_writelane_b32 v170, s6, 30
	v_writelane_b32 v170, s7, 31
	s_mov_b32 s7, 0x3f0236b9
	s_mov_b32 s6, 0x4f976cef
	v_writelane_b32 v170, s6, 32
	v_writelane_b32 v170, s7, 33
	s_mov_b32 s7, 0x4053ceb8
	s_mov_b32 s6, 0x51eb851f
	v_writelane_b32 v170, s6, 34
	v_writelane_b32 v170, s7, 35
	s_mov_b32 s7, 0xbf858b82
	s_mov_b32 s6, 0x7fa1a0cf
	v_writelane_b32 v170, s6, 36
	v_writelane_b32 v170, s7, 37
	s_mov_b32 s7, 0x3fbf06f6
	s_mov_b32 s6, 0x94467382
	v_writelane_b32 v170, s6, 38
	v_writelane_b32 v170, s7, 39
	s_mov_b32 s7, 0xbfc1a36e
	s_mov_b32 s6, 0x2eb1c433
	v_writelane_b32 v170, s6, 40
	v_writelane_b32 v170, s7, 41
	s_mov_b32 s7, 0x404790a3
	s_mov_b32 s6, 0xd70a3d71
	v_writelane_b32 v170, s6, 42
	v_writelane_b32 v170, s7, 43
	s_mov_b32 s5, 0x3fd47ae1
	v_writelane_b32 v170, s4, 44
	v_writelane_b32 v170, s5, 45
	v_mul_lo_u32 v49, v1, s0
	s_mov_b32 s1, 0x3fa32acb
	s_mov_b32 s0, -2.0
	v_writelane_b32 v170, s0, 46
	v_writelane_b32 v170, s1, 47
	s_mov_b32 s1, 0x3fbfdf3b
	s_mov_b32 s0, 0x645a1cac
	v_writelane_b32 v170, s0, 48
	v_writelane_b32 v170, s1, 49
	v_cvt_f64_f32_e32 v[51:52], v0
	s_mov_b32 s1, 0x3fa2b47b
	s_mov_b32 s0, 0x9fbe76c8
	v_writelane_b32 v170, s0, 50
	v_writelane_b32 v170, s1, 51
	v_add_u32_e32 v53, vcc, s82, v49
	s_mov_b32 s1, 0x3f569c23
	s_mov_b32 s0, 0xb7952d23
	v_writelane_b32 v170, s0, 52
	v_writelane_b32 v170, s1, 53
	s_mov_b32 s1, 0xbfbf7ced
	s_mov_b32 s0, 0x916872b0
	v_writelane_b32 v170, s0, 54
	v_writelane_b32 v170, s1, 55
	s_mov_b32 s1, 0x3f43fd0d
	s_mov_b32 s0, 0x678c005
	v_writelane_b32 v170, s0, 56
	v_writelane_b32 v170, s1, 57
	s_mov_b32 s1, 0x3fc28f5c
	s_mov_b32 s0, 0x28f5c28f
	v_writelane_b32 v170, s0, 58
	v_writelane_b32 v170, s1, 59
	s_mov_b32 s84, 0x33333333
	s_mov_b32 s85, 0xc030b333
	s_mov_b32 s1, 0x3f12d920
	s_mov_b32 s0, 0x9825fc13
	v_writelane_b32 v170, s0, 60
	v_writelane_b32 v170, s1, 61
	s_mov_b32 s1, 0xbfc2f1a9
	s_mov_b32 s0, 0xfbe76c8b
	v_writelane_b32 v170, s0, 62
	v_writelane_b32 v170, s1, 63
	s_mov_b32 s1, 0x3f212ba1
	s_mov_b32 s0, 0x6e7a311f
	v_writelane_b32 v171, s0, 0
	v_writelane_b32 v171, s1, 1
	s_mov_b32 s1, 0x3fb19652
	s_mov_b32 s0, 0xbd3c3611
	v_writelane_b32 v171, s0, 2
	v_writelane_b32 v171, s1, 3
	s_mov_b32 s87, 0x3fa1eb85
	s_mov_b32 s86, 0x1eb851ec
	s_mov_b32 s0, 0x147ae148
	s_mov_b32 s1, 0x404187ae
	v_writelane_b32 v171, s0, 4
	v_writelane_b32 v171, s1, 5
	s_mov_b32 s17, 0x400ccccc
	s_mov_b32 s1, 0x3fa14120
	s_mov_b32 s0, 0x5bc01a37
	v_writelane_b32 v171, s0, 6
	v_writelane_b32 v171, s1, 7
	s_mov_b32 s1, 0x3fe55555
	s_mov_b32 s0, 0x55555555
	v_writelane_b32 v171, s0, 8
	v_writelane_b32 v171, s1, 9
	s_mov_b32 s1, 0x3fbdee67
	s_mov_b32 s0, 0x4222de17
	v_writelane_b32 v171, s0, 10
	v_writelane_b32 v171, s1, 11
	s_mov_b32 s1, 0x3fbe25e4
	s_mov_b32 s0, 0x3abe935a
	v_writelane_b32 v171, s0, 12
	v_writelane_b32 v171, s1, 13
	s_mov_b32 s1, 0x3fc110ef
	s_mov_b32 s0, 0x47e6c9c2
	v_writelane_b32 v171, s0, 14
	v_writelane_b32 v171, s1, 15
	s_mov_b32 s1, 0x3fc3b13b
	s_mov_b32 s0, 0xcfa74449
	v_writelane_b32 v171, s0, 16
	v_writelane_b32 v171, s1, 17
	s_mov_b32 s1, 0x3fc745d1
	s_mov_b32 s0, 0x71bf3c30
	v_writelane_b32 v171, s0, 18
	v_writelane_b32 v171, s1, 19
	s_mov_b32 s1, 0x3fcc71c7
	s_mov_b32 s0, 0x1c7792ce
	v_writelane_b32 v171, s0, 20
	v_writelane_b32 v171, s1, 21
	s_mov_b32 s1, 0x3fd24924
	s_mov_b32 s0, 0x924920da
	v_writelane_b32 v171, s0, 22
	v_writelane_b32 v171, s1, 23
	s_mov_b32 s1, 0x3fd99999
	s_mov_b32 s0, 0x9999999c
	v_writelane_b32 v171, s0, 24
	v_writelane_b32 v171, s1, 25
	s_mov_b32 s1, 0x3fe62e42
	s_mov_b32 s0, 0xfefa39ef
	v_writelane_b32 v171, s0, 26
	v_writelane_b32 v171, s1, 27
	s_mov_b32 s1, 0x3c7abc9e
	s_mov_b32 s0, 0x3b39803f
	v_writelane_b32 v171, s0, 28
	v_writelane_b32 v171, s1, 29
	s_mov_b32 s1, 0x3c8543b0
	s_mov_b32 s0, 0xd5df274d
	v_writelane_b32 v171, s0, 30
	v_writelane_b32 v171, s1, 31
	s_mov_b32 s1, 0xbac9cc01
	s_mov_b32 s0, 0xf97b57a0
	v_writelane_b32 v171, s0, 32
	v_writelane_b32 v171, s1, 33
	s_mov_b32 s1, 0x3f942c3c
	s_mov_b32 s0, 0x9eecbfb1
	v_writelane_b32 v171, s0, 34
	v_writelane_b32 v171, s1, 35
	s_mov_b32 s1, 0xbf885f06
	s_mov_b32 s0, 0xf6944674
	v_writelane_b32 v171, s0, 36
	v_writelane_b32 v171, s1, 37
	s_mov_b32 s1, 0x3fd5d2f1
	s_mov_b32 s0, 0xa9fbe76d
	v_writelane_b32 v171, s0, 38
	v_writelane_b32 v171, s1, 39
	s_mov_b32 s1, 0xbfe3a43f
	s_mov_b32 s0, 0xdd0e5605
	v_writelane_b32 v171, s0, 40
	v_writelane_b32 v171, s1, 41
	s_mov_b32 s1, 0x3ed66e5f
	s_mov_b32 s0, 0xbdcb5ac
	v_writelane_b32 v171, s0, 42
	v_writelane_b32 v171, s1, 43
	s_mov_b32 s0, 0x66666666
	s_mov_b32 s1, 0x40366666
	v_writelane_b32 v171, s0, 44
	v_writelane_b32 v171, s1, 45
	s_mov_b32 s1, 0x401df3b6
	s_mov_b32 s0, 0x45a1cac1
	v_writelane_b32 v171, s0, 46
	v_writelane_b32 v171, s1, 47
	s_mov_b32 s47, 0x3fce872b
	s_mov_b32 s46, 0x20c49ba
	s_mov_b32 s80, 0x851eb852
	s_mov_b32 s81, 0x3ff051eb
	s_mov_b32 s0, 0x8b439581
	s_mov_b32 s1, 0x4015e76c
	v_writelane_b32 v171, s0, 48
	v_writelane_b32 v171, s1, 49
	s_mov_b32 s1, 0x3fb48fd9
	s_mov_b32 s0, 0xfd36f7e4
	v_writelane_b32 v171, s0, 50
	v_writelane_b32 v171, s1, 51
	s_mov_b32 s1, 0x3faf9db2
	s_mov_b32 s0, 0x2d0e5604
	v_writelane_b32 v171, s0, 52
	v_writelane_b32 v171, s1, 53
	s_mov_b32 s1, 0x40130312
	s_mov_b32 s0, 0x6e978d50
	v_writelane_b32 v171, s0, 54
	v_writelane_b32 v171, s1, 55
	s_mov_b32 s1, 0xbfe07525
	s_mov_b32 s0, 0x460aa64c
	v_writelane_b32 v171, s0, 56
	v_writelane_b32 v171, s1, 57
	s_mov_b32 s1, 0x3fad2f1a
	s_mov_b32 s0, 0x9fbe76c9
	v_writelane_b32 v171, s0, 58
	v_writelane_b32 v171, s1, 59
	s_mov_b32 s1, 0x3fdf7079
	s_mov_b32 s0, 0xe59f2baa
	v_writelane_b32 v171, s0, 60
	v_writelane_b32 v171, s1, 61
	s_mov_b32 s1, 0xc0103333
	s_brev_b32 s0, 28
	v_writelane_b32 v171, s0, 62
	v_writelane_b32 v171, s1, 63
	s_mov_b32 s18, 0xe147ae14
	s_mov_b32 s19, 0x3fee147a
	s_mov_b32 s1, 0xbf889374
	s_mov_b32 s0, 0xbc6a7efa
	v_writelane_b32 v172, s0, 0
	v_writelane_b32 v172, s1, 1
	s_mov_b32 s1, 0x3f56f006
	s_mov_b32 s0, 0x8db8bac7
	v_writelane_b32 v172, s0, 2
	v_writelane_b32 v172, s1, 3
	s_mov_b32 s1, 0xbfc39581
	s_mov_b32 s0, 0x624dd2f
	v_writelane_b32 v172, s0, 4
	v_writelane_b32 v172, s1, 5
	s_mov_b32 s1, 0x4046ba2e
	s_mov_b32 s0, 0x8ba2e8bb
	v_writelane_b32 v172, s0, 6
	v_writelane_b32 v172, s1, 7
	s_mov_b32 s1, 0x3fb16872
	s_mov_b32 s0, 0xb020c49c
	v_writelane_b32 v172, s0, 8
	v_writelane_b32 v172, s1, 9
	s_mov_b32 s1, 0x40865249
	s_mov_b32 s0, 0x24924925
	v_writelane_b32 v172, s0, 10
	v_writelane_b32 v172, s1, 11
	s_mov_b32 s1, 0xc01a24cf
	s_mov_b32 s0, 0x7a24cf7a
	v_writelane_b32 v172, s0, 12
	v_writelane_b32 v172, s1, 13
	s_mov_b32 s1, 0x3f7e4f76
	s_mov_b32 s0, 0x5fd8adac
	v_writelane_b32 v172, s0, 14
	v_writelane_b32 v172, s1, 15
	s_mov_b32 s1, 0x3fac28f5
	s_mov_b32 s0, 0xc28f5c29
	v_writelane_b32 v172, s0, 16
	v_writelane_b32 v172, s1, 17
	s_mov_b32 s3, 0x3f8eb851
	v_writelane_b32 v172, s2, 18
	v_writelane_b32 v172, s3, 19
	s_mov_b32 s36, 0xd2f1a9fc
	s_mov_b32 s37, 0x3f50624d
	s_mov_b32 s0, 1
	v_writelane_b32 v172, s0, 20
	s_mov_b32 s42, 0x3f2aaaab
	s_mov_b32 s24, 0x3ed55555
	s_movk_i32 s60, 0x16c
	s_mov_b32 s61, 0x40400000
	s_mov_b32 s38, 0x4f800000
	s_mov_b32 s39, 0x41b17218
	s_mov_b32 s26, 0x3fb8aa3b
	s_mov_b32 s1, 0xc01e0000
	v_writelane_b32 v172, s0, 21
	v_writelane_b32 v172, s1, 22
	s_mov_b32 s94, 0x7f800000
	s_mov_b32 s48, 0x3e76c4e1
	s_brev_b32 s90, -2
	s_mov_b32 s95, 0xc2d00000
	s_mov_b32 s34, 0x42b20000
	s_mov_b32 s91, 0x3efffffc
	s_mov_b32 s35, 0x3e2aaa47
	s_mov_b32 s40, 0x3d2aadcc
	s_mov_b32 s27, 0x3ab42872
	s_mov_b32 s29, 0x2ea39ef3
	s_mov_b32 s30, 0x35bfbc00
	s_mov_b32 s31, 0x3f317200
	s_movk_i32 s92, 0x204
	s_mov_b32 s49, 0x31739010
	s_mov_b32 s41, 0xbf2aaaaa
	s_mov_b32 s28, 0x3f2aaaaa
	s_mov_b32 s44, 0xb102e308
	s_mov_b32 s45, 0x3f317218
	s_mov_b32 s93, 0x3ecccdef
	s_mov_b32 s1, 0xbfb47ae1
	v_writelane_b32 v172, s0, 23
	v_writelane_b32 v172, s1, 24
	s_mov_b32 s1, 0x404411eb
	v_writelane_b32 v172, s0, 25
	v_writelane_b32 v172, s1, 26
	s_mov_b32 s1, 0x3fd3e76c
	v_writelane_b32 v172, s0, 27
	v_writelane_b32 v172, s1, 28
	s_mov_b32 s1, 0x4042e3d7
	v_writelane_b32 v172, s0, 29
	v_writelane_b32 v172, s1, 30
	s_mov_b32 s1, 0xc0ff0a40
	v_writelane_b32 v172, s0, 31
	v_writelane_b32 v172, s1, 32
	s_mov_b32 s1, 0x4112ebc0
	v_writelane_b32 v172, s0, 33
	v_writelane_b32 v172, s1, 34
	s_mov_b32 s1, 0x3fd66666
	v_writelane_b32 v172, s0, 35
	v_writelane_b32 v172, s1, 36
	s_mov_b32 s1, 0x400c7ae1
	v_writelane_b32 v172, s0, 37
	v_writelane_b32 v172, s1, 38
	s_mov_b32 s1, 0x3fc147ae
	v_writelane_b32 v172, s0, 39
	v_writelane_b32 v172, s1, 40
	s_mov_b32 s1, 0xc01b3333
	v_writelane_b32 v172, s0, 41
	v_writelane_b32 v172, s1, 42
	s_mov_b32 s1, 0x7ff00000
	v_writelane_b32 v172, s0, 43
	v_writelane_b32 v172, s1, 44
	s_mov_b32 s1, 0x3fd33333
	v_writelane_b32 v172, s0, 45
	v_writelane_b32 v172, s1, 46
	s_mov_b32 s83, 0xc090cc00
	s_mov_b32 s43, 0x40900000
	s_mov_b32 s1, 0xc0263333
	v_writelane_b32 v172, s0, 47
	v_writelane_b32 v172, s1, 48
	s_mov_b32 s1, 0x402551eb
	v_writelane_b32 v172, s0, 49
	v_writelane_b32 v172, s1, 50
	s_mov_b64 s[0:1], 0
	s_mov_b32 s3, 0xbff80000
	v_writelane_b32 v172, s2, 51
	v_writelane_b32 v172, s3, 52
	s_mov_b32 s3, 0x40080000
	v_writelane_b32 v172, s2, 53
	v_writelane_b32 v172, s3, 54
	s_mov_b32 s3, 0xc02e0000
	v_writelane_b32 v172, s2, 55
	v_writelane_b32 v172, s3, 56
	s_mov_b32 s3, 0x4040c000
	v_writelane_b32 v172, s2, 57
	v_writelane_b32 v172, s3, 58
	s_mov_b32 s3, 0x40240000
	v_writelane_b32 v172, s2, 59
	v_writelane_b32 v172, s3, 60
	s_mov_b32 s3, 0x402e0000
	v_writelane_b32 v172, s2, 61
	v_writelane_b32 v172, s3, 62
	s_mov_b32 s3, 0x40220000
	v_writelane_b32 v172, s2, 63
	v_writelane_b32 v173, s3, 0
	s_mov_b32 s3, 0x404e0000
	v_writelane_b32 v173, s2, 1
	v_writelane_b32 v173, s3, 2
	s_mov_b32 s3, 0x40a77000
	v_writelane_b32 v173, s2, 3
	v_writelane_b32 v173, s3, 4
	s_mov_b32 s3, 0x403e0000
	v_writelane_b32 v173, s2, 5
	v_writelane_b32 v173, s3, 6
	s_mov_b32 s3, 0x40a5e000
	v_writelane_b32 v173, s2, 7
	v_writelane_b32 v173, s3, 8
	s_mov_b32 s3, 0x406b8000
	v_writelane_b32 v173, s2, 9
	v_writelane_b32 v173, s3, 10
	s_mov_b32 s3, 0x400c0000
	v_writelane_b32 v173, s2, 11
	v_writelane_b32 v173, s3, 12
	s_mov_b32 s3, 0x40340000
	v_writelane_b32 v173, s2, 13
	v_writelane_b32 v173, s3, 14
	s_mov_b32 s3, 0x402d0000
	v_writelane_b32 v173, s2, 15
	v_writelane_b32 v173, s3, 16
	s_mov_b32 s3, 0xc0180000
	v_writelane_b32 v173, s2, 17
	v_writelane_b32 v173, s3, 18
	s_mov_b32 s3, 0x3fe33333
	v_writelane_b32 v173, s2, 19
	v_writelane_b32 v173, s3, 20
	s_mov_b32 s3, 0xbfe55555
	v_writelane_b32 v173, s2, 21
	v_writelane_b32 v173, s3, 22
	s_mov_b32 s2, 0xf278e000
	v_writelane_b32 v173, s2, 23
	v_writelane_b32 v173, s3, 24
	s_mov_b32 s3, 0x40863000
	v_writelane_b32 v173, s2, 25
	v_writelane_b32 v173, s3, 26
	s_mov_b32 s3, 0xc0874800
	v_writelane_b32 v173, s2, 27
	v_writelane_b32 v173, s3, 28
	s_mov_b32 s3, 0xbff71547
	v_writelane_b32 v173, s2, 29
	v_writelane_b32 v173, s3, 30
	s_mov_b32 s3, 0xc0900000
	v_writelane_b32 v173, s2, 31
	v_writelane_b32 v173, s3, 32
	s_mov_b32 s3, 0x4090cc00
	v_writelane_b32 v173, s2, 33
	v_writelane_b32 v173, s3, 34
	s_mov_b32 s3, 0x3ffb3333
	v_writelane_b32 v173, s2, 35
	v_writelane_b32 v173, s3, 36
	s_mov_b32 s3, 0x3fe80000
	v_writelane_b32 v173, s2, 37
	v_writelane_b32 v173, s3, 38
	s_mov_b32 s3, 0xc05a4000
	v_writelane_b32 v173, s2, 39
	v_writelane_b32 v173, s3, 40
	s_mov_b32 s3, 0x3fdccccc
	v_writelane_b32 v173, s2, 41
	v_writelane_b32 v173, s3, 42
	s_mov_b32 s3, 0xc01ccccc
	v_writelane_b32 v173, s2, 43
	v_writelane_b32 v173, s3, 44
	s_mov_b32 s3, 0xc017eb85
	v_writelane_b32 v173, s2, 45
	v_writelane_b32 v173, s3, 46
	s_mov_b32 s3, 0xc04d9b85
	v_writelane_b32 v173, s2, 47
	v_writelane_b32 v173, s3, 48
	s_mov_b32 s3, 0xc082927a
	v_writelane_b32 v173, s2, 49
	v_writelane_b32 v173, s3, 50
	s_mov_b32 s3, 0x3fc851eb
	v_writelane_b32 v173, s2, 51
	v_writelane_b32 v173, s3, 52
	s_mov_b32 s3, 0x3fb1eb85
	v_writelane_b32 v173, s2, 53
	v_writelane_b32 v173, s3, 54
	s_mov_b32 s3, 0x3f647ae1
	v_writelane_b32 v173, s2, 55
	v_writelane_b32 v173, s3, 56
	s_mov_b32 s3, 0x40203333
	v_writelane_b32 v173, s2, 57
	v_writelane_b32 v173, s3, 58
	s_mov_b32 s3, 0x3f96872b
	v_writelane_b32 v173, s2, 59
	v_writelane_b32 v173, s3, 60
	s_mov_b32 s3, 0x3fe47ae1
	v_writelane_b32 v173, s2, 61
	v_writelane_b32 v173, s3, 62
	s_mov_b32 s3, 0x3fc0624d
	v_writelane_b32 v173, s2, 63
	v_writelane_b32 v174, s3, 0
	s_mov_b32 s3, 0x402a0000
	v_writelane_b32 v174, s2, 1
	v_writelane_b32 v174, s3, 2
	s_mov_b32 s3, 0xc054d555
	v_writelane_b32 v174, s2, 3
	v_writelane_b32 v174, s3, 4
	s_mov_b32 s3, 0x3faeb851
	v_writelane_b32 v174, s2, 5
	v_writelane_b32 v174, s3, 6
	s_mov_b32 s3, 0x3f747ae1
	v_writelane_b32 v174, s2, 7
	v_writelane_b32 v174, s3, 8
	s_mov_b32 s3, 0x3fc33333
	v_writelane_b32 v174, s2, 9
	v_writelane_b32 v174, s3, 10
	s_mov_b32 s3, 0x3fe99999
	v_writelane_b32 v174, s2, 11
	v_writelane_b32 v174, s3, 12
	s_mov_b32 s3, 0x3fc00000
	v_writelane_b32 v174, s2, 13
	v_writelane_b32 v174, s3, 14
	s_branch BB1_3
BB1_2:                                  ; %Flow886
                                        ;   in Loop: Header=BB1_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_and_b64 s[0:1], exec, s[0:1]
	v_readlane_b32 s2, v174, 15
	v_readlane_b32 s3, v174, 16
	s_or_b64 s[0:1], s[0:1], s[2:3]
	s_andn2_b64 exec, exec, s[0:1]
	s_cbranch_execz BB1_131
BB1_3:                                  ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_7 Depth 2
                                        ;       Child Loop BB1_9 Depth 3
                                        ;         Child Loop BB1_17 Depth 4
                                        ;         Child Loop BB1_25 Depth 4
                                        ;         Child Loop BB1_30 Depth 4
                                        ;         Child Loop BB1_34 Depth 4
                                        ;         Child Loop BB1_40 Depth 4
                                        ;         Child Loop BB1_44 Depth 4
                                        ;         Child Loop BB1_49 Depth 4
                                        ;         Child Loop BB1_56 Depth 4
                                        ;         Child Loop BB1_60 Depth 4
                                        ;         Child Loop BB1_66 Depth 4
                                        ;         Child Loop BB1_72 Depth 4
                                        ;         Child Loop BB1_76 Depth 4
                                        ;         Child Loop BB1_81 Depth 4
                                        ;         Child Loop BB1_92 Depth 4
                                        ;         Child Loop BB1_109 Depth 4
                                        ;       Child Loop BB1_112 Depth 3
                                        ;       Child Loop BB1_114 Depth 3
                                        ;       Child Loop BB1_116 Depth 3
                                        ;       Child Loop BB1_119 Depth 3
                                        ;       Child Loop BB1_121 Depth 3
	v_writelane_b32 v174, s0, 15
	v_writelane_b32 v174, s1, 16
	v_ashrrev_i32_e32 v50, 31, v49
	v_lshlrev_b64 v[54:55], 2, v[49:50]
	v_readlane_b32 s0, v170, 0
	v_readlane_b32 s1, v170, 1
	v_readlane_b32 s2, v170, 2
	v_readlane_b32 s3, v170, 3
	v_readlane_b32 s4, v170, 4
	v_readlane_b32 s5, v170, 5
	v_readlane_b32 s6, v170, 6
	v_readlane_b32 s7, v170, 7
	v_readlane_b32 s8, v170, 8
	v_readlane_b32 s9, v170, 9
	v_readlane_b32 s10, v170, 10
	v_readlane_b32 s11, v170, 11
	v_readlane_b32 s12, v170, 12
	v_readlane_b32 s13, v170, 13
	v_readlane_b32 s14, v170, 14
	v_readlane_b32 s15, v170, 15
	v_mov_b32_e32 v56, s3
	v_add_u32_e32 v50, vcc, s2, v54
	v_addc_u32_e32 v55, vcc, v56, v55, vcc
	v_ashrrev_i32_e32 v54, 31, v53
	v_lshlrev_b64 v[56:57], 2, v[53:54]
	v_mov_b32_e32 v58, s3
	v_add_u32_e32 v54, vcc, s2, v56
	v_addc_u32_e32 v56, vcc, v58, v57, vcc
	v_readlane_b32 s2, v172, 20
	v_add_u32_e32 v57, vcc, s2, v22
	v_ashrrev_i32_e32 v58, 31, v57
	v_cvt_f32_i32_e32 v59, s2
	v_lshlrev_b64 v[57:58], 2, v[57:58]
	v_mov_b32_e32 v60, s1
	v_add_u32_e32 v57, vcc, s0, v57
	v_addc_u32_e32 v58, vcc, v60, v58, vcc
	flat_store_dword v[57:58], v59
	s_mov_b32 s33, 0
	v_mov_b32_e32 v59, 1.0
	s_mov_b64 s[0:1], 0
	v_readlane_b32 s10, v170, 44
	v_readlane_b32 s11, v170, 45
	s_brev_b32 s14, 1
	v_readlane_b32 s8, v172, 43
	v_readlane_b32 s9, v172, 44
	s_branch BB1_7
BB1_4:                                  ;   in Loop: Header=BB1_7 Depth=2
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s33, s33, 1
	v_mov_b32_e32 v62, 12
	v_cmp_eq_u32_e64 s[4:5], s33, 12
	s_orn2_b64 s[4:5], s[4:5], exec
BB1_5:                                  ; %Flow884
                                        ;   in Loop: Header=BB1_7 Depth=2
	s_or_b64 exec, exec, s[0:1]
	s_orn2_b64 s[0:1], s[4:5], exec
BB1_6:                                  ; %Flow883
                                        ;   in Loop: Header=BB1_7 Depth=2
	s_or_b64 exec, exec, s[2:3]
	s_and_b64 s[0:1], exec, s[0:1]
	v_readlane_b32 s2, v174, 17
	v_readlane_b32 s3, v174, 18
	s_or_b64 s[0:1], s[0:1], s[2:3]
	s_andn2_b64 exec, exec, s[0:1]
	s_cbranch_execz BB1_129
BB1_7:                                  ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_9 Depth 3
                                        ;         Child Loop BB1_17 Depth 4
                                        ;         Child Loop BB1_25 Depth 4
                                        ;         Child Loop BB1_30 Depth 4
                                        ;         Child Loop BB1_34 Depth 4
                                        ;         Child Loop BB1_40 Depth 4
                                        ;         Child Loop BB1_44 Depth 4
                                        ;         Child Loop BB1_49 Depth 4
                                        ;         Child Loop BB1_56 Depth 4
                                        ;         Child Loop BB1_60 Depth 4
                                        ;         Child Loop BB1_66 Depth 4
                                        ;         Child Loop BB1_72 Depth 4
                                        ;         Child Loop BB1_76 Depth 4
                                        ;         Child Loop BB1_81 Depth 4
                                        ;         Child Loop BB1_92 Depth 4
                                        ;         Child Loop BB1_109 Depth 4
                                        ;       Child Loop BB1_112 Depth 3
                                        ;       Child Loop BB1_114 Depth 3
                                        ;       Child Loop BB1_116 Depth 3
                                        ;       Child Loop BB1_119 Depth 3
                                        ;       Child Loop BB1_121 Depth 3
	v_writelane_b32 v174, s0, 17
	v_writelane_b32 v174, s1, 18
	v_writelane_b32 v174, s33, 19
	flat_load_dword v60, v[57:58]
	s_mov_b32 s0, 0x3d97b426
	v_mul_f32_e32 v61, s0, v59
	s_mov_b64 s[2:3], 0
	v_writelane_b32 v174, s2, 20
	v_writelane_b32 v174, s3, 21
	v_mov_b32_e32 v63, v9
	v_mov_b32_e32 v62, v8
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v64, v59, v60
	s_mov_b32 s1, 0x3eaaaaab
	v_fma_f32 v65, v59, s1, v60
	v_fma_f32 v66, v59, s42, v60
	s_mov_b32 s1, 0x3e2aaaab
	v_fma_f32 v67, v59, s1, v60
	s_mov_b32 s1, 0x3f555555
	v_fma_f32 v68, v59, s1, v60
	v_fma_f32 v69, v59, 0.5, v60
	v_fma_f32 v70, v59, s24, v60
	s_mov_b32 s1, 0x3de38e39
	v_fma_f32 v71, v59, s1, v60
	v_fma_f32 v72, v59, s0, v60
	s_mov_b32 s33, 0
                                        ; implicit-def: $vgpr73
	s_mov_b32 s15, 0x3e91f4c4
	s_branch BB1_9
BB1_8:                                  ; %_Z8kernel_2iPfS_S_S_.exit.i
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_add_i32 s33, s33, 1
	v_readlane_b32 s0, v174, 20
	v_readlane_b32 s1, v174, 21
	s_add_u32 s0, s0, 4
	s_addc_u32 s1, s1, 0
	v_writelane_b32 v174, s0, 20
	v_writelane_b32 v174, s1, 21
	v_add_u32_e32 v62, vcc, s60, v62
	v_addc_u32_e32 v63, vcc, 0, v63, vcc
	s_cmp_lg_u32 s33, 13
	s_cbranch_scc0 BB1_111
BB1_9:                                  ; %NodeBlock827
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB1_17 Depth 4
                                        ;         Child Loop BB1_25 Depth 4
                                        ;         Child Loop BB1_30 Depth 4
                                        ;         Child Loop BB1_34 Depth 4
                                        ;         Child Loop BB1_40 Depth 4
                                        ;         Child Loop BB1_44 Depth 4
                                        ;         Child Loop BB1_49 Depth 4
                                        ;         Child Loop BB1_56 Depth 4
                                        ;         Child Loop BB1_60 Depth 4
                                        ;         Child Loop BB1_66 Depth 4
                                        ;         Child Loop BB1_72 Depth 4
                                        ;         Child Loop BB1_76 Depth 4
                                        ;         Child Loop BB1_81 Depth 4
                                        ;         Child Loop BB1_92 Depth 4
                                        ;         Child Loop BB1_109 Depth 4
	s_cmp_lt_i32 s33, 6
	s_cbranch_scc1 BB1_20
; %bb.10:                               ; %NodeBlock825
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_cmp_lt_i32 s33, 9
	s_cbranch_scc1 BB1_21
; %bb.11:                               ; %NodeBlock823
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_cmp_lt_i32 s33, 11
	s_cbranch_scc1 BB1_22
; %bb.12:                               ; %NodeBlock821
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_cmp_lt_i32 s33, 12
	s_cbranch_scc1 BB1_23
; %bb.13:                               ; %LeafBlock
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_cmp_lg_u32 s33, 12
	s_mov_b64 s[0:1], -1
	s_cbranch_scc0 BB1_15
; %bb.14:                               ; %NewDefault
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[0:1], 0
BB1_15:                                 ; %Flow845
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_andn2_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz BB1_19
; %bb.16:                               ; %.preheader350.preheader
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[48:49], s[8:9]
	s_mov_b64 s[0:1], 0
	s_movk_i32 s2, 0x444
	s_movk_i32 s3, 0x5b0
	s_movk_i32 s4, 0x71c
	s_mov_b32 s5, 0xc00512bb
	s_mov_b32 s6, 0xbedde886
	s_mov_b32 s7, 0x408c5ce9
	s_mov_b32 s8, 0xc0618f9c
	s_movk_i32 s9, 0x888
	s_mov_b32 s12, 0x3f08edc5
	s_movk_i32 s13, 0x9f4
	s_mov_b32 s14, 0x3f1f3832
	s_movk_i32 s15, 0xb60
	s_mov_b32 s20, 0x3e4e0c7d
	s_movk_i32 s21, 0xccc
	s_mov_b32 s22, 0x3e95da89
	s_movk_i32 s23, 0xfa4
BB1_17:                                 ; %.preheader350
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ;       Parent Loop BB1_9 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	v_add_u32_e32 v73, vcc, s0, v50
	v_mov_b32_e32 v74, s1
	v_addc_u32_e32 v74, vcc, v55, v74, vcc
	flat_load_dword v77, v[73:74]
	v_add_u32_e32 v73, vcc, s0, v8
	v_mov_b32_e32 v74, s1
	v_addc_u32_e32 v74, vcc, v9, v74, vcc
	flat_load_dword v78, v[73:74]
	v_add_u32_e32 v75, vcc, s2, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v75, s5, v75
	v_fma_f32 v78, v78, s6, v75
	v_add_u32_e32 v75, vcc, s3, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v78, v75, s7, v78
	v_add_u32_e32 v75, vcc, s4, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v78, v75, s8, v78
	v_add_u32_e32 v75, vcc, s9, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v78, v75, s12, v78
	v_add_u32_e32 v75, vcc, s13, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v78, v75, s14, v78
	v_add_u32_e32 v75, vcc, s15, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v78, v75, s20, v78
	v_add_u32_e32 v75, vcc, s21, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v75, v75, s22, v78
	v_add_u32_e32 v73, vcc, s23, v73
	v_addc_u32_e32 v74, vcc, 0, v74, vcc
	flat_load_dword v73, v[73:74]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v73, v73, v75
	v_fma_f32 v75, v59, v73, v77
	v_add_u32_e32 v73, vcc, s0, v6
	v_mov_b32_e32 v74, s1
	v_addc_u32_e32 v74, vcc, v7, v74, vcc
	flat_store_dword v[73:74], v75
	s_add_u32 s0, s0, 4
	s_addc_u32 s1, s1, 0
	s_cmp_eq_u32 s0, s60
	s_cbranch_scc0 BB1_17
; %bb.18:                               ;   in Loop: Header=BB1_9 Depth=3
	v_mov_b32_e32 v73, v64
	s_brev_b32 s14, 1
	s_mov_b32 s15, 0x3e91f4c4
	s_mov_b64 s[8:9], s[48:49]
	s_mov_b32 s48, 0x3e76c4e1
	s_mov_b32 s49, 0x31739010
BB1_19:                                 ; %Flow846
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 vcc, exec
	s_cbranch_execz BB1_24
	s_branch BB1_27
BB1_20:                                 ;   in Loop: Header=BB1_9 Depth=3
                                        ; implicit-def: $vgpr73
	s_mov_b64 vcc, 0
	s_branch BB1_52
BB1_21:                                 ;   in Loop: Header=BB1_9 Depth=3
                                        ; implicit-def: $vgpr73
	s_mov_b64 vcc, 0
	s_branch BB1_37
BB1_22:                                 ;   in Loop: Header=BB1_9 Depth=3
                                        ; implicit-def: $vgpr73
	s_mov_b64 vcc, 0
	s_branch BB1_28
BB1_23:                                 ;   in Loop: Header=BB1_9 Depth=3
                                        ; implicit-def: $vgpr73
	s_mov_b64 vcc, 0
BB1_24:                                 ; %.preheader290.preheader
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[20:21], s[8:9]
	s_mov_b64 s[0:1], 0
	s_movk_i32 s2, 0x71c
	s_movk_i32 s3, 0x888
	s_movk_i32 s4, 0x9f4
	s_movk_i32 s5, 0xb60
	s_movk_i32 s6, 0xccc
	s_mov_b32 s7, 0x3c6fc40f
	s_mov_b32 s8, 0xbc6fc40f
	s_mov_b32 s9, 0xbd95da89
	s_mov_b32 s12, 0x3d95da89
	s_mov_b32 s13, 0x3e15da89
BB1_25:                                 ; %.preheader290
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ;       Parent Loop BB1_9 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	v_add_u32_e32 v73, vcc, s0, v50
	v_mov_b32_e32 v74, s1
	v_addc_u32_e32 v74, vcc, v55, v74, vcc
	flat_load_dword v77, v[73:74]
	v_add_u32_e32 v73, vcc, s0, v8
	v_mov_b32_e32 v74, s1
	v_addc_u32_e32 v74, vcc, v9, v74, vcc
	flat_load_dword v78, v[73:74]
	v_add_u32_e32 v75, vcc, s2, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v75, 0xbe15da89, v75
	v_fma_f32 v78, v78, s7, v75
	v_add_u32_e32 v75, vcc, s3, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v78, v75, s8, v78
	v_add_u32_e32 v75, vcc, s4, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v78, v75, s9, v78
	v_add_u32_e32 v75, vcc, s5, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v75, v75, s12, v78
	v_add_u32_e32 v73, vcc, s6, v73
	v_addc_u32_e32 v74, vcc, 0, v74, vcc
	flat_load_dword v73, v[73:74]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v73, v73, s13, v75
	v_fma_f32 v75, v59, v73, v77
	v_add_u32_e32 v73, vcc, s0, v6
	v_mov_b32_e32 v74, s1
	v_addc_u32_e32 v74, vcc, v7, v74, vcc
	flat_store_dword v[73:74], v75
	s_add_u32 s0, s0, 4
	s_addc_u32 s1, s1, 0
	s_cmp_eq_u32 s0, s60
	s_cbranch_scc0 BB1_25
; %bb.26:                               ;   in Loop: Header=BB1_9 Depth=3
	v_mov_b32_e32 v73, v60
	s_mov_b64 s[8:9], s[20:21]
BB1_27:                                 ; %Flow849
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 vcc, exec
	s_cbranch_execnz BB1_36
BB1_28:                                 ; %NodeBlock819
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_cmp_gt_i32 s33, 9
	s_mov_b64 s[0:1], -1
	s_cbranch_scc0 BB1_32
; %bb.29:                               ; %.preheader347.preheader
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[48:49], s[8:9]
	s_mov_b64 s[0:1], 0
	s_movk_i32 s2, 0x444
	s_movk_i32 s3, 0x5b0
	s_movk_i32 s4, 0x71c
	s_mov_b32 s5, 0xc00512bb
	s_mov_b32 s6, 0x408c5ce9
	s_movk_i32 s7, 0x888
	s_movk_i32 s8, 0x9f4
	s_movk_i32 s9, 0xb60
	s_movk_i32 s12, 0xccc
	s_mov_b32 s13, 0x3f14cacd
	s_mov_b32 s14, 0xc06aed45
	s_mov_b32 s15, 0x3f052eb4
	s_mov_b32 s20, 0x3f0c7ce1
	s_mov_b32 s21, 0x3e8c7ce1
	s_mov_b32 s22, 0x3ee0c7ce
BB1_30:                                 ; %.preheader347
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ;       Parent Loop BB1_9 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	v_add_u32_e32 v73, vcc, s0, v50
	v_mov_b32_e32 v74, s1
	v_addc_u32_e32 v74, vcc, v55, v74, vcc
	flat_load_dword v77, v[73:74]
	v_add_u32_e32 v73, vcc, s0, v8
	v_mov_b32_e32 v74, s1
	v_addc_u32_e32 v74, vcc, v9, v74, vcc
	flat_load_dword v78, v[73:74]
	v_add_u32_e32 v75, vcc, s2, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v75, s5, v75
	v_fma_f32 v78, v78, s13, v75
	v_add_u32_e32 v75, vcc, s3, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v78, v75, s6, v78
	v_add_u32_e32 v75, vcc, s4, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v78, v75, s14, v78
	v_add_u32_e32 v75, vcc, s7, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v78, v75, s15, v78
	v_add_u32_e32 v75, vcc, s8, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v78, v75, s20, v78
	v_add_u32_e32 v75, vcc, s9, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v75, v75, s21, v78
	v_add_u32_e32 v73, vcc, s12, v73
	v_addc_u32_e32 v74, vcc, 0, v74, vcc
	flat_load_dword v73, v[73:74]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v73, v73, s22, v75
	v_fma_f32 v75, v59, v73, v77
	v_add_u32_e32 v73, vcc, s0, v6
	v_mov_b32_e32 v74, s1
	v_addc_u32_e32 v74, vcc, v7, v74, vcc
	flat_store_dword v[73:74], v75
	s_add_u32 s0, s0, 4
	s_addc_u32 s1, s1, 0
	s_cmp_eq_u32 s0, s60
	s_cbranch_scc0 BB1_30
; %bb.31:                               ; %Flow850
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[0:1], 0
	s_brev_b32 s14, 1
	s_mov_b32 s15, 0x3e91f4c4
	s_mov_b64 s[8:9], s[48:49]
	s_mov_b32 s48, 0x3e76c4e1
	s_mov_b32 s49, 0x31739010
BB1_32:                                 ; %Flow852
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_and_b64 vcc, exec, s[0:1]
	v_mov_b32_e32 v73, v64
	s_cbranch_vccz BB1_36
; %bb.33:                               ; %.preheader345.preheader
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[20:21], s[8:9]
	s_mov_b64 s[0:1], 0
	s_movk_i32 s2, 0x444
	s_movk_i32 s3, 0x5b0
	s_movk_i32 s4, 0x71c
	s_movk_i32 s5, 0x888
	s_movk_i32 s6, 0x9f4
	s_movk_i32 s7, 0xb60
	s_mov_b32 s8, 0x3e5a12f7
	s_mov_b32 s9, 0xc0e75920
	s_mov_b32 s12, 0x40b84bda
	s_mov_b32 s13, 0xbea22222
	s_mov_b32 s14, 0x40355555
	s_mov_b32 s15, 0xbdaaaaab
BB1_34:                                 ; %.preheader345
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ;       Parent Loop BB1_9 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	v_add_u32_e32 v73, vcc, s0, v50
	v_mov_b32_e32 v74, s1
	v_addc_u32_e32 v74, vcc, v55, v74, vcc
	flat_load_dword v77, v[73:74]
	v_add_u32_e32 v73, vcc, s0, v8
	v_mov_b32_e32 v74, s1
	v_addc_u32_e32 v74, vcc, v9, v74, vcc
	flat_load_dword v75, v[73:74]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v78, 0xbf57b426, v75
	v_add_u32_e32 v75, vcc, s2, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v78, v75, s8, v78
	v_add_u32_e32 v75, vcc, s3, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v78, v75, s9, v78
	v_add_u32_e32 v75, vcc, s4, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v78, v75, s12, v78
	v_add_u32_e32 v75, vcc, s5, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v78, v75, s13, v78
	v_add_u32_e32 v75, vcc, s6, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v75, v75, s14, v78
	v_add_u32_e32 v73, vcc, s7, v73
	v_addc_u32_e32 v74, vcc, 0, v74, vcc
	flat_load_dword v73, v[73:74]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v73, v73, s15, v75
	v_fma_f32 v75, v59, v73, v77
	v_add_u32_e32 v73, vcc, s0, v6
	v_mov_b32_e32 v74, s1
	v_addc_u32_e32 v74, vcc, v7, v74, vcc
	flat_store_dword v[73:74], v75
	s_add_u32 s0, s0, 4
	s_addc_u32 s1, s1, 0
	s_cmp_eq_u32 s0, s60
	s_cbranch_scc0 BB1_34
; %bb.35:                               ;   in Loop: Header=BB1_9 Depth=3
	v_mov_b32_e32 v73, v65
	s_brev_b32 s14, 1
	s_mov_b32 s15, 0x3e91f4c4
	s_mov_b64 s[8:9], s[20:21]
BB1_36:                                 ; %Flow855
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 vcc, exec
	s_cbranch_execnz BB1_51
BB1_37:                                 ; %NodeBlock817
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_cmp_lt_i32 s33, 7
	s_cbranch_scc1 BB1_47
; %bb.38:                               ; %NodeBlock815
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_cmp_gt_i32 s33, 7
	s_mov_b64 s[0:1], -1
	s_cbranch_scc0 BB1_42
; %bb.39:                               ; %.preheader343.preheader
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[12:13], s[8:9]
	s_mov_b64 s[0:1], 0
	s_movk_i32 s2, 0x444
	s_movk_i32 s3, 0x5b0
	s_movk_i32 s4, 0x71c
	s_movk_i32 s5, 0x888
	s_movk_i32 s6, 0x9f4
	s_mov_b32 s7, 0x417a4fa5
	s_mov_b32 s8, 0xc13e38e4
	s_mov_b32 s9, 0x3f3e93e9
BB1_40:                                 ; %.preheader343
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ;       Parent Loop BB1_9 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	v_add_u32_e32 v73, vcc, s0, v50
	v_mov_b32_e32 v74, s1
	v_addc_u32_e32 v74, vcc, v55, v74, vcc
	flat_load_dword v77, v[73:74]
	v_add_u32_e32 v73, vcc, s0, v8
	v_mov_b32_e32 v74, s1
	v_addc_u32_e32 v74, vcc, v9, v74, vcc
	flat_load_dword v78, v[73:74]
	v_add_u32_e32 v75, vcc, s2, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v75, 0xc10d5555, v75
	v_fma_f32 v78, v78, 2.0, v75
	v_add_u32_e32 v75, vcc, s3, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v78, v75, s7, v78
	v_add_u32_e32 v75, vcc, s4, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v78, v75, s8, v78
	v_add_u32_e32 v75, vcc, s5, v73
	v_addc_u32_e32 v76, vcc, 0, v74, vcc
	flat_load_dword v75, v[75:76]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v75, v75, s9, v78
	v_add_u32_e32 v73, vcc, s6, v73
	v_addc_u32_e32 v74, vcc, 0, v74, vcc
	flat_load_dword v73, v[73:74]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v73, v73, s61, v75
	v_fma_f32 v75, v59, v73, v77
	v_add_u32_e32 v73, vcc, s0, v6
	v_mov_b32_e32 v74, s1
	v_addc_u32_e32 v74, vcc, v7, v74, vcc
	flat_store_dword v[73:74], v75
	s_add_u32 s0, s0, 4
	s_addc_u32 s1, s1, 0
	s_cmp_eq_u32 s0, s60
	s_cbranch_scc0 BB1_40
; %bb.41:                               ; %Flow856
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[0:1], 0
	s_mov_b64 s[8:9], s[12:13]
BB1_42:                                 ; %Flow858
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_and_b64 vcc, exec, s[0:1]
	v_mov_b32_e32 v73, v66
	s_cbranch_vccz BB1_46
; %bb.43:                               ; %.preheader341.preheader
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[20:21], s[8:9]
	s_mov_b64 s[4:5], 0
	s_movk_i32 s6, 0x5b0
	s_movk_i32 s7, 0x71c
	s_movk_i32 s8, 0x888
	s_mov_b32 s9, 0x3dd3a06d
	s_mov_b32 s12, 0xbe638e39
	s_mov_b32 s13, 0x3c6ca864
BB1_44:                                 ; %.preheader341
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ;       Parent Loop BB1_9 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	v_mov_b32_e32 v74, s5
	v_mov_b32_e32 v77, s5
	v_add_u32_e32 v73, vcc, s4, v8
	v_add_u32_e64 v75, s[0:1], s4, v50
	v_addc_u32_e64 v76, s[0:1], v55, v74, s[0:1]
	v_addc_u32_e32 v74, vcc, v9, v77, vcc
	v_add_u32_e32 v77, vcc, s7, v73
	v_add_u32_e64 v79, s[0:1], s8, v73
	v_add_u32_e64 v80, s[2:3], s6, v73
	v_addc_u32_e64 v81, s[2:3], 0, v74, s[2:3]
	v_addc_u32_e32 v78, vcc, 0, v74, vcc
	flat_load_dword v82, v[73:74]
	s_nop 0
	flat_load_dword v81, v[80:81]
	v_addc_u32_e64 v80, vcc, 0, v74, s[0:1]
	flat_load_dword v77, v[77:78]
	s_nop 0
	flat_load_dword v78, v[79:80]
	s_nop 0
	flat_load_dword v75, v[75:76]
	v_mov_b32_e32 v74, s5
	v_add_u32_e32 v73, vcc, s4, v6
	s_add_u32 s4, s4, 4
	v_addc_u32_e32 v74, vcc, v7, v74, vcc
	s_addc_u32 s5, s5, 0
	s_cmp_eq_u32 s4, s60
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_mul_f32_e32 v76, 0x3e8acf13, v81
	v_fma_f32 v76, v82, s9, v76
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_fma_f32 v76, v77, s12, v76
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_fma_f32 v76, v78, s13, v76
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v75, v59, v76, v75
	flat_store_dword v[73:74], v75
	s_cbranch_scc0 BB1_44
; %bb.45:                               ;   in Loop: Header=BB1_9 Depth=3
	v_mov_b32_e32 v73, v67
	s_mov_b64 s[8:9], s[20:21]
BB1_46:                                 ; %Flow859
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 vcc, exec
	s_cbranch_execz BB1_48
	s_branch BB1_51
BB1_47:                                 ;   in Loop: Header=BB1_9 Depth=3
                                        ; implicit-def: $vgpr73
	s_mov_b64 vcc, 0
BB1_48:                                 ; %.preheader339.preheader
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[20:21], s[8:9]
	s_mov_b64 s[4:5], 0
	s_movk_i32 s6, 0x444
	s_movk_i32 s7, 0x5b0
	s_movk_i32 s8, 0x71c
	s_mov_b32 s9, 0x3f9425ed
	s_mov_b32 s12, 0xc01a12f7
	s_mov_b32 s13, 0x401425ed
BB1_49:                                 ; %.preheader339
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ;       Parent Loop BB1_9 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	v_mov_b32_e32 v74, s5
	v_mov_b32_e32 v77, s5
	v_add_u32_e32 v73, vcc, s4, v8
	v_add_u32_e64 v75, s[0:1], s4, v50
	v_addc_u32_e64 v76, s[0:1], v55, v74, s[0:1]
	v_addc_u32_e32 v74, vcc, v9, v77, vcc
	v_add_u32_e32 v77, vcc, s7, v73
	v_add_u32_e64 v79, s[0:1], s8, v73
	v_add_u32_e64 v81, s[2:3], s6, v73
	v_addc_u32_e64 v82, s[2:3], 0, v74, s[2:3]
	v_addc_u32_e32 v78, vcc, 0, v74, vcc
	v_addc_u32_e64 v80, vcc, 0, v74, s[0:1]
	flat_load_dword v83, v[73:74]
	s_nop 0
	flat_load_dword v81, v[81:82]
	s_nop 0
	flat_load_dword v77, v[77:78]
	s_nop 0
	flat_load_dword v78, v[79:80]
	s_nop 0
	flat_load_dword v75, v[75:76]
	v_mov_b32_e32 v74, s5
	v_add_u32_e32 v73, vcc, s4, v6
	s_add_u32 s4, s4, 4
	v_addc_u32_e32 v74, vcc, v7, v74, vcc
	s_addc_u32 s5, s5, 0
	s_cmp_eq_u32 s4, s60
	s_waitcnt vmcnt(4) lgkmcnt(4)
	v_mul_f32_e32 v76, 0xbe6d097b, v83
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_fma_f32 v76, v81, s9, v76
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_fma_f32 v76, v77, s12, v76
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_fma_f32 v76, v78, s13, v76
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v75, v59, v76, v75
	flat_store_dword v[73:74], v75
	s_cbranch_scc0 BB1_49
; %bb.50:                               ;   in Loop: Header=BB1_9 Depth=3
	v_mov_b32_e32 v73, v68
	s_mov_b64 s[8:9], s[20:21]
BB1_51:                                 ; %Flow864
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 vcc, exec
	s_cbranch_execnz BB1_83
BB1_52:                                 ; %NodeBlock813
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_cmp_lt_i32 s33, 3
	s_cbranch_scc1 BB1_63
; %bb.53:                               ; %NodeBlock811
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_cmp_lt_i32 s33, 4
	s_cbranch_scc1 BB1_64
; %bb.54:                               ; %NodeBlock809
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_cmp_gt_i32 s33, 4
	s_mov_b64 s[0:1], -1
	s_cbranch_scc0 BB1_58
; %bb.55:                               ; %.preheader337.preheader
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[2:3], 0
	s_movk_i32 s4, 0x444
	s_movk_i32 s5, 0x5b0
	s_mov_b32 s6, 0x3d4ccccd
	s_mov_b32 s7, 0x3e4ccccd
BB1_56:                                 ; %.preheader337
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ;       Parent Loop BB1_9 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	v_mov_b32_e32 v74, s3
	v_mov_b32_e32 v77, s3
	v_add_u32_e32 v73, vcc, s2, v8
	v_add_u32_e64 v75, s[0:1], s2, v50
	v_addc_u32_e64 v76, s[0:1], v55, v74, s[0:1]
	v_addc_u32_e32 v74, vcc, v9, v77, vcc
	v_add_u32_e32 v77, vcc, s5, v73
	v_add_u32_e64 v78, s[0:1], s4, v73
	v_addc_u32_e64 v79, s[0:1], 0, v74, s[0:1]
	flat_load_dword v80, v[73:74]
	s_nop 0
	flat_load_dword v79, v[78:79]
	v_addc_u32_e32 v78, vcc, 0, v74, vcc
	flat_load_dword v77, v[77:78]
	s_nop 0
	flat_load_dword v75, v[75:76]
	v_mov_b32_e32 v74, s3
	v_add_u32_e32 v73, vcc, s2, v6
	s_add_u32 s2, s2, 4
	v_addc_u32_e32 v74, vcc, v7, v74, vcc
	s_addc_u32 s3, s3, 0
	s_cmp_eq_u32 s2, s60
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_mul_f32_e32 v76, 0x3e800000, v79
	v_fma_f32 v76, v80, s6, v76
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_fma_f32 v76, v77, s7, v76
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v75, v59, v76, v75
	flat_store_dword v[73:74], v75
	s_cbranch_scc0 BB1_56
; %bb.57:                               ; %Flow865
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[0:1], 0
BB1_58:                                 ; %Flow867
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_and_b64 vcc, exec, s[0:1]
	v_mov_b32_e32 v73, v69
	s_cbranch_vccz BB1_62
; %bb.59:                               ; %.preheader335.preheader
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[2:3], 0
	s_movk_i32 s4, 0x444
	s_mov_b32 s5, 0x3ed55555
	s_movk_i32 s6, 0x2d8
	s_mov_b32 s7, 0x3fc80000
BB1_60:                                 ; %.preheader335
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ;       Parent Loop BB1_9 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	v_mov_b32_e32 v74, s3
	v_mov_b32_e32 v77, s3
	v_add_u32_e32 v73, vcc, s2, v8
	v_add_u32_e64 v75, s[0:1], s2, v50
	v_addc_u32_e64 v76, s[0:1], v55, v74, s[0:1]
	v_addc_u32_e32 v74, vcc, v9, v77, vcc
	v_add_u32_e32 v77, vcc, s4, v73
	v_add_u32_e64 v78, s[0:1], s6, v73
	v_addc_u32_e64 v79, s[0:1], 0, v74, s[0:1]
	flat_load_dword v80, v[73:74]
	s_nop 0
	flat_load_dword v79, v[78:79]
	v_addc_u32_e32 v78, vcc, 0, v74, vcc
	flat_load_dword v77, v[77:78]
	s_nop 0
	flat_load_dword v75, v[75:76]
	v_mov_b32_e32 v74, s3
	v_add_u32_e32 v73, vcc, s2, v6
	s_add_u32 s2, s2, 4
	v_addc_u32_e32 v74, vcc, v7, v74, vcc
	s_addc_u32 s3, s3, 0
	s_cmp_eq_u32 s2, s60
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_mul_f32_e32 v76, 0xbfc80000, v79
	v_fma_f32 v76, v80, s5, v76
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_fma_f32 v76, v77, s7, v76
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v75, v59, v76, v75
	flat_store_dword v[73:74], v75
	s_cbranch_scc0 BB1_60
; %bb.61:                               ;   in Loop: Header=BB1_9 Depth=3
	v_mov_b32_e32 v73, v70
BB1_62:                                 ; %Flow868
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 vcc, exec
	s_cbranch_execz BB1_65
	s_branch BB1_68
BB1_63:                                 ;   in Loop: Header=BB1_9 Depth=3
                                        ; implicit-def: $vgpr73
	s_mov_b64 vcc, 0
	s_branch BB1_69
BB1_64:                                 ;   in Loop: Header=BB1_9 Depth=3
                                        ; implicit-def: $vgpr73
	s_mov_b64 vcc, 0
BB1_65:                                 ; %.preheader333.preheader
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[2:3], 0
	s_movk_i32 s4, 0x2d8
	s_mov_b32 s5, 0x3d2aaaab
BB1_66:                                 ; %.preheader333
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ;       Parent Loop BB1_9 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	v_mov_b32_e32 v78, s3
	v_add_u32_e32 v73, vcc, s2, v50
	v_mov_b32_e32 v75, s3
	v_add_u32_e64 v74, s[0:1], s2, v8
	v_addc_u32_e64 v75, s[0:1], v9, v75, s[0:1]
	v_add_u32_e64 v76, s[0:1], s4, v74
	v_addc_u32_e64 v77, s[0:1], 0, v75, s[0:1]
	flat_load_dword v75, v[74:75]
	s_nop 0
	flat_load_dword v76, v[76:77]
	v_addc_u32_e32 v74, vcc, v55, v78, vcc
	flat_load_dword v77, v[73:74]
	v_mov_b32_e32 v74, s3
	v_add_u32_e32 v73, vcc, s2, v6
	s_add_u32 s2, s2, 4
	v_addc_u32_e32 v74, vcc, v7, v74, vcc
	s_addc_u32 s3, s3, 0
	s_cmp_eq_u32 s2, s60
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_mul_f32_e32 v76, 0x3e000000, v76
	v_fma_f32 v75, v75, s5, v76
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v75, v59, v75, v77
	flat_store_dword v[73:74], v75
	s_cbranch_scc0 BB1_66
; %bb.67:                               ;   in Loop: Header=BB1_9 Depth=3
	v_mov_b32_e32 v73, v67
BB1_68:                                 ; %Flow871
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 vcc, exec
	s_cbranch_execnz BB1_83
BB1_69:                                 ; %NodeBlock807
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_cmp_lt_i32 s33, 1
	s_cbranch_scc1 BB1_79
; %bb.70:                               ; %NodeBlock
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_cmp_gt_i32 s33, 1
	s_mov_b64 s[0:1], -1
	s_cbranch_scc0 BB1_74
; %bb.71:                               ; %.preheader331.preheader
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[2:3], 0
	s_mov_b32 s4, 0x3ce38e39
BB1_72:                                 ; %.preheader331
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ;       Parent Loop BB1_9 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	v_mov_b32_e32 v78, s3
	v_add_u32_e32 v73, vcc, s2, v50
	v_mov_b32_e32 v75, s3
	v_add_u32_e64 v74, s[0:1], s2, v8
	v_addc_u32_e64 v75, s[0:1], v9, v75, s[0:1]
	v_add_u32_e64 v76, s[0:1], s60, v74
	v_addc_u32_e64 v77, s[0:1], 0, v75, s[0:1]
	flat_load_dword v75, v[74:75]
	s_nop 0
	flat_load_dword v76, v[76:77]
	v_addc_u32_e32 v74, vcc, v55, v78, vcc
	flat_load_dword v77, v[73:74]
	v_mov_b32_e32 v74, s3
	v_add_u32_e32 v73, vcc, s2, v6
	s_add_u32 s2, s2, 4
	v_addc_u32_e32 v74, vcc, v7, v74, vcc
	s_addc_u32 s3, s3, 0
	s_cmp_eq_u32 s2, s60
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_mul_f32_e32 v76, 0x3daaaaab, v76
	v_fma_f32 v75, v75, s4, v76
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v75, v59, v75, v77
	flat_store_dword v[73:74], v75
	s_cbranch_scc0 BB1_72
; %bb.73:                               ; %Flow872
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[0:1], 0
BB1_74:                                 ; %Flow874
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_and_b64 vcc, exec, s[0:1]
	v_mov_b32_e32 v73, v71
	s_cbranch_vccz BB1_78
; %bb.75:                               ; %.preheader329.preheader
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[2:3], 0
BB1_76:                                 ; %.preheader329
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ;       Parent Loop BB1_9 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	v_mov_b32_e32 v74, s3
	v_mov_b32_e32 v77, s3
	v_add_u32_e32 v73, vcc, s2, v8
	v_add_u32_e64 v75, s[0:1], s2, v50
	v_addc_u32_e64 v76, s[0:1], v55, v74, s[0:1]
	v_addc_u32_e32 v74, vcc, v9, v77, vcc
	flat_load_dword v75, v[75:76]
	s_nop 0
	flat_load_dword v76, v[73:74]
	v_mov_b32_e32 v74, s3
	v_add_u32_e32 v73, vcc, s2, v6
	s_add_u32 s2, s2, 4
	v_addc_u32_e32 v74, vcc, v7, v74, vcc
	s_addc_u32 s3, s3, 0
	s_cmp_eq_u32 s2, s60
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v75, v61, v76, v75
	flat_store_dword v[73:74], v75
	s_cbranch_scc0 BB1_76
; %bb.77:                               ;   in Loop: Header=BB1_9 Depth=3
	v_mov_b32_e32 v73, v72
BB1_78:                                 ; %Flow875
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[0:1], 0
	s_branch BB1_80
BB1_79:                                 ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[0:1], -1
                                        ; implicit-def: $vgpr73
BB1_80:                                 ; %Flow877
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_andn2_b64 vcc, exec, s[0:1]
	v_readlane_b32 s0, v174, 20
	v_readlane_b32 s1, v174, 21
	s_cbranch_vccnz BB1_83
BB1_81:                                 ; %.preheader278
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ;       Parent Loop BB1_9 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	v_mov_b32_e32 v74, s1
	v_add_u32_e32 v73, vcc, s0, v50
	v_addc_u32_e32 v74, vcc, v55, v74, vcc
	flat_load_dword v75, v[73:74]
	v_mov_b32_e32 v74, s1
	v_add_u32_e32 v73, vcc, s0, v6
	s_add_u32 s0, s0, 4
	v_addc_u32_e32 v74, vcc, v7, v74, vcc
	s_addc_u32 s1, s1, 0
	s_cmp_eq_u32 s0, s60
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[73:74], v75
	s_cbranch_scc0 BB1_81
; %bb.82:                               ;   in Loop: Header=BB1_9 Depth=3
	v_mov_b32_e32 v73, v60
BB1_83:                                 ; %.loopexit279
                                        ;   in Loop: Header=BB1_9 Depth=3
	flat_load_dword v92, v[11:12]
	v_add_u32_e32 v74, vcc, 48, v6
	v_addc_u32_e32 v75, vcc, 0, v7, vcc
	flat_load_dwordx4 v[97:100], v[74:75]
	v_add_u32_e32 v74, vcc, 32, v6
	v_addc_u32_e32 v75, vcc, 0, v7, vcc
	flat_load_dwordx4 v[88:91], v[74:75]
	v_add_u32_e32 v74, vcc, 16, v6
	v_addc_u32_e32 v75, vcc, 0, v7, vcc
	flat_load_dwordx4 v[80:83], v[74:75]
	flat_load_dwordx4 v[84:87], v[6:7]
	v_add_u32_e32 v74, vcc, 16, v23
	v_addc_u32_e32 v75, vcc, 0, v24, vcc
	flat_load_dword v114, v[74:75]
	flat_load_dwordx4 v[115:118], v[23:24]
	v_add_u32_e32 v74, vcc, 48, v25
	v_addc_u32_e32 v75, vcc, 0, v26, vcc
	flat_load_dwordx4 v[76:79], v[74:75]
	v_add_u32_e32 v74, vcc, 32, v25
	v_addc_u32_e32 v75, vcc, 0, v26, vcc
	flat_load_dwordx4 v[101:104], v[74:75]
	v_add_u32_e32 v74, vcc, 16, v25
	v_addc_u32_e32 v75, vcc, 0, v26, vcc
	flat_load_dwordx4 v[106:109], v[74:75]
	flat_load_dwordx4 v[110:113], v[25:26]
	flat_load_dwordx2 v[93:94], v[33:34]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[95:96], v93
	s_mov_b32 s0, 0xc2200000
	v_cmp_le_f32_e32 vcc, s0, v93
                                        ; implicit-def: $vgpr122_vgpr123
                                        ; implicit-def: $vgpr125_vgpr126
                                        ; implicit-def: $vgpr136_vgpr137
                                        ; implicit-def: $vgpr138_vgpr139
                                        ; implicit-def: $vgpr140_vgpr141
                                        ; implicit-def: $vgpr143_vgpr144
                                        ; implicit-def: $vgpr145_vgpr146
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[2:3], exec, s[0:1]
	s_cbranch_execz BB1_85
; %bb.84:                               ;   in Loop: Header=BB1_9 Depth=3
	v_readlane_b32 s0, v172, 49
	v_readlane_b32 s1, v172, 50
	s_mov_b32 s0, s80
	v_writelane_b32 v172, s0, 49
	v_writelane_b32 v172, s1, 50
	v_add_f64 v[74:75], v[95:96], s[0:1]
	v_readlane_b32 s4, v172, 47
	v_readlane_b32 s5, v172, 48
	s_mov_b32 s4, s84
	v_div_scale_f64 v[119:120], s[0:1], s[4:5], s[4:5], v[74:75]
	v_rcp_f64_e32 v[121:122], v[119:120]
	v_fma_f64 v[123:124], -v[119:120], v[121:122], 1.0
	v_fma_f64 v[121:122], v[121:122], v[123:124], v[121:122]
	v_fma_f64 v[123:124], -v[119:120], v[121:122], 1.0
	v_fma_f64 v[121:122], v[121:122], v[123:124], v[121:122]
	v_div_scale_f64 v[123:124], vcc, v[74:75], s[4:5], v[74:75]
	v_mul_f64 v[125:126], v[123:124], v[121:122]
	v_fma_f64 v[119:120], -v[119:120], v[125:126], v[123:124]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[119:120], v[119:120], v[121:122], v[125:126]
	v_writelane_b32 v172, s4, 47
	v_writelane_b32 v172, s5, 48
	v_div_fixup_f64 v[74:75], v[119:120], s[4:5], v[74:75]
	v_mul_f64 v[119:120], v[74:75], s[54:55]
	v_rndne_f64_e32 v[119:120], v[119:120]
	v_fma_f64 v[121:122], v[119:120], s[56:57], v[74:75]
	v_mul_f64 v[123:124], v[119:120], s[58:59]
	v_add_f64 v[125:126], v[121:122], v[123:124]
	v_add_f64 v[121:122], v[121:122], -v[125:126]
	v_add_f64 v[121:122], v[121:122], v[123:124]
	v_mov_b32_e32 v128, s79
	v_mov_b32_e32 v127, s78
	v_fma_f64 v[123:124], v[125:126], s[62:63], v[127:128]
	v_fma_f64 v[123:124], v[125:126], v[123:124], s[64:65]
	v_fma_f64 v[123:124], v[125:126], v[123:124], s[66:67]
	v_fma_f64 v[123:124], v[125:126], v[123:124], s[68:69]
	v_fma_f64 v[123:124], v[125:126], v[123:124], s[70:71]
	v_fma_f64 v[123:124], v[125:126], v[123:124], s[72:73]
	v_fma_f64 v[123:124], v[125:126], v[123:124], s[74:75]
	v_fma_f64 v[123:124], v[125:126], v[123:124], s[76:77]
	v_fma_f64 v[123:124], v[125:126], v[123:124], s[52:53]
	v_mul_f64 v[129:130], v[125:126], v[125:126]
	v_fma_f64 v[131:132], v[125:126], v[125:126], -v[129:130]
	v_add_f64 v[133:134], v[121:122], v[121:122]
	v_fma_f64 v[131:132], v[125:126], v[133:134], v[131:132]
	v_fma_f64 v[131:132], v[121:122], v[121:122], v[131:132]
	v_add_f64 v[133:134], v[129:130], v[131:132]
	v_add_f64 v[129:130], v[133:134], -v[129:130]
	v_add_f64 v[129:130], v[131:132], -v[129:130]
	v_mul_f64 v[131:132], v[133:134], v[123:124]
	v_fma_f64 v[133:134], v[133:134], v[123:124], -v[131:132]
	v_fma_f64 v[123:124], v[129:130], v[123:124], v[133:134]
	v_add_f64 v[129:130], v[131:132], v[123:124]
	v_add_f64 v[131:132], v[129:130], -v[131:132]
	v_add_f64 v[123:124], v[123:124], -v[131:132]
	v_add_f64 v[131:132], v[125:126], v[129:130]
	v_add_f64 v[125:126], v[131:132], -v[125:126]
	v_add_f64 v[125:126], v[129:130], -v[125:126]
	v_add_f64 v[121:122], v[121:122], v[123:124]
	v_add_f64 v[121:122], v[125:126], v[121:122]
	v_add_f64 v[121:122], v[131:132], v[121:122]
	v_add_f64 v[121:122], v[121:122], 1.0
	v_cvt_i32_f64_e32 v105, v[119:120]
	v_ldexp_f64 v[119:120], v[121:122], v105
	v_add_f64 v[119:120], v[119:120], 1.0
	v_readlane_b32 s0, v170, 20
	v_readlane_b32 s1, v170, 21
	v_mul_f64 v[119:120], v[119:120], s[0:1]
	v_div_scale_f64 v[121:122], s[0:1], v[119:120], v[119:120], 1.0
	v_rcp_f64_e32 v[123:124], v[121:122]
	v_fma_f64 v[125:126], -v[121:122], v[123:124], 1.0
	v_fma_f64 v[123:124], v[123:124], v[125:126], v[123:124]
	v_fma_f64 v[125:126], -v[121:122], v[123:124], 1.0
	v_fma_f64 v[123:124], v[123:124], v[125:126], v[123:124]
	v_div_scale_f64 v[125:126], vcc, 1.0, v[119:120], 1.0
	v_mul_f64 v[129:130], v[125:126], v[123:124]
	v_fma_f64 v[121:122], -v[121:122], v[129:130], v[125:126]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[121:122], v[121:122], v[123:124], v[129:130]
	v_div_fixup_f64 v[119:120], v[121:122], v[119:120], 1.0
	s_mov_b32 s0, s25
	s_mov_b32 s1, s43
	v_cmp_nlt_f64_e32 vcc, s[0:1], v[74:75]
	v_cndmask_b32_e32 v105, 0, v119, vcc
	v_cndmask_b32_e32 v119, 0, v120, vcc
	s_mov_b32 s4, s25
	s_mov_b32 s5, s83
	v_cmp_ngt_f64_e32 vcc, s[4:5], v[74:75]
	v_mov_b32_e32 v74, 0x401ec4ec
	v_cndmask_b32_e32 v123, v74, v119, vcc
	v_mov_b32_e32 v74, 0x4ec4ec4e
	v_cndmask_b32_e32 v122, v74, v105, vcc
	v_readlane_b32 s6, v170, 22
	v_readlane_b32 s7, v170, 23
	v_mul_f64 v[74:75], v[95:96], s[6:7]
	v_mul_f64 v[119:120], v[74:75], s[54:55]
	v_rndne_f64_e32 v[119:120], v[119:120]
	v_fma_f64 v[124:125], v[119:120], s[56:57], v[74:75]
	v_mul_f64 v[129:130], v[119:120], s[58:59]
	v_add_f64 v[131:132], v[124:125], v[129:130]
	v_add_f64 v[124:125], v[124:125], -v[131:132]
	v_add_f64 v[124:125], v[124:125], v[129:130]
	v_fma_f64 v[129:130], v[131:132], s[62:63], v[127:128]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[64:65]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[66:67]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[68:69]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[70:71]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[72:73]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[74:75]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[76:77]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[52:53]
	v_mul_f64 v[133:134], v[131:132], v[131:132]
	v_fma_f64 v[135:136], v[131:132], v[131:132], -v[133:134]
	v_add_f64 v[137:138], v[124:125], v[124:125]
	v_fma_f64 v[135:136], v[131:132], v[137:138], v[135:136]
	v_fma_f64 v[135:136], v[124:125], v[124:125], v[135:136]
	v_add_f64 v[137:138], v[133:134], v[135:136]
	v_add_f64 v[133:134], v[137:138], -v[133:134]
	v_add_f64 v[133:134], v[135:136], -v[133:134]
	v_mul_f64 v[135:136], v[137:138], v[129:130]
	v_fma_f64 v[137:138], v[137:138], v[129:130], -v[135:136]
	v_fma_f64 v[129:130], v[133:134], v[129:130], v[137:138]
	v_add_f64 v[133:134], v[135:136], v[129:130]
	v_add_f64 v[135:136], v[133:134], -v[135:136]
	v_add_f64 v[129:130], v[129:130], -v[135:136]
	v_add_f64 v[135:136], v[131:132], v[133:134]
	v_add_f64 v[131:132], v[135:136], -v[131:132]
	v_add_f64 v[131:132], v[133:134], -v[131:132]
	v_add_f64 v[124:125], v[124:125], v[129:130]
	v_add_f64 v[124:125], v[131:132], v[124:125]
	v_add_f64 v[124:125], v[135:136], v[124:125]
	v_add_f64 v[124:125], v[124:125], 1.0
	v_cvt_i32_f64_e32 v105, v[119:120]
	v_ldexp_f64 v[119:120], v[124:125], v105
	v_readlane_b32 s6, v172, 45
	v_readlane_b32 s7, v172, 46
	s_mov_b32 s6, s84
	v_writelane_b32 v172, s6, 45
	v_writelane_b32 v172, s7, 46
	v_mul_f64 v[119:120], v[119:120], s[6:7]
	v_cmp_nlt_f64_e32 vcc, s[0:1], v[74:75]
	v_mov_b32_e32 v105, s9
	v_cndmask_b32_e32 v105, v105, v120, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[4:5], v[74:75]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v125, 0, v119, vcc
	v_cndmask_b32_e64 v126, 0, v105, s[0:1]
	v_add_f32_e32 v74, 0x42000000, v93
	v_cvt_f64_f32_e32 v[74:75], v74
	v_readlane_b32 s0, v170, 24
	v_readlane_b32 s1, v170, 25
	v_mul_f64 v[136:137], v[74:75], s[0:1]
	v_mul_f64 v[74:75], v[136:137], s[54:55]
	v_rndne_f64_e32 v[138:139], v[74:75]
	v_fma_f64 v[74:75], v[138:139], s[56:57], v[136:137]
	v_mul_f64 v[119:120], v[138:139], s[58:59]
	v_add_f64 v[129:130], v[74:75], v[119:120]
	v_add_f64 v[74:75], v[74:75], -v[129:130]
	v_add_f64 v[74:75], v[74:75], v[119:120]
	v_fma_f64 v[119:120], v[129:130], s[62:63], v[127:128]
	v_fma_f64 v[119:120], v[129:130], v[119:120], s[64:65]
	v_fma_f64 v[119:120], v[129:130], v[119:120], s[66:67]
	v_fma_f64 v[119:120], v[129:130], v[119:120], s[68:69]
	v_fma_f64 v[119:120], v[129:130], v[119:120], s[70:71]
	v_fma_f64 v[119:120], v[129:130], v[119:120], s[72:73]
	v_fma_f64 v[119:120], v[129:130], v[119:120], s[74:75]
	v_fma_f64 v[119:120], v[129:130], v[119:120], s[76:77]
	v_fma_f64 v[119:120], v[129:130], v[119:120], s[52:53]
	v_mul_f64 v[127:128], v[129:130], v[129:130]
	v_fma_f64 v[131:132], v[129:130], v[129:130], -v[127:128]
	v_add_f64 v[133:134], v[74:75], v[74:75]
	v_fma_f64 v[131:132], v[129:130], v[133:134], v[131:132]
	v_fma_f64 v[131:132], v[74:75], v[74:75], v[131:132]
	v_add_f64 v[133:134], v[127:128], v[131:132]
	v_add_f64 v[127:128], v[133:134], -v[127:128]
	v_add_f64 v[127:128], v[131:132], -v[127:128]
	v_mul_f64 v[131:132], v[133:134], v[119:120]
	v_fma_f64 v[133:134], v[133:134], v[119:120], -v[131:132]
	v_fma_f64 v[119:120], v[127:128], v[119:120], v[133:134]
	v_add_f64 v[127:128], v[131:132], v[119:120]
	v_add_f64 v[131:132], v[127:128], -v[131:132]
	v_add_f64 v[119:120], v[119:120], -v[131:132]
	v_add_f64 v[140:141], v[129:130], v[127:128]
	v_add_f64 v[129:130], v[140:141], -v[129:130]
	v_add_f64 v[143:144], v[127:128], -v[129:130]
	v_add_f64 v[145:146], v[74:75], v[119:120]
BB1_85:                                 ; %Flow843
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_mov_b64 s[100:101], s[8:9]
	v_mov_b32_e32 v131, 0
	v_mov_b32_e32 v124, v131
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB1_87
; %bb.86:                               ;   in Loop: Header=BB1_9 Depth=3
	v_add_f32_e32 v74, 0x42a00000, v93
	v_cvt_f64_f32_e32 v[74:75], v74
	v_readlane_b32 s4, v172, 41
	v_readlane_b32 s5, v172, 42
	s_mov_b32 s4, s84
	v_div_scale_f64 v[119:120], s[0:1], s[4:5], s[4:5], v[74:75]
	v_rcp_f64_e32 v[121:122], v[119:120]
	v_fma_f64 v[123:124], -v[119:120], v[121:122], 1.0
	v_fma_f64 v[121:122], v[121:122], v[123:124], v[121:122]
	v_fma_f64 v[123:124], -v[119:120], v[121:122], 1.0
	v_fma_f64 v[121:122], v[121:122], v[123:124], v[121:122]
	v_div_scale_f64 v[123:124], vcc, v[74:75], s[4:5], v[74:75]
	v_mul_f64 v[125:126], v[123:124], v[121:122]
	v_fma_f64 v[119:120], -v[119:120], v[125:126], v[123:124]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[119:120], v[119:120], v[121:122], v[125:126]
	v_writelane_b32 v172, s4, 41
	v_writelane_b32 v172, s5, 42
	v_div_fixup_f64 v[119:120], v[119:120], s[4:5], v[74:75]
	v_mul_f64 v[74:75], v[119:120], s[54:55]
	v_rndne_f64_e32 v[121:122], v[74:75]
	v_fma_f64 v[74:75], v[121:122], s[56:57], v[119:120]
	v_mul_f64 v[123:124], v[121:122], s[58:59]
	v_add_f64 v[125:126], v[74:75], v[123:124]
	v_add_f64 v[74:75], v[74:75], -v[125:126]
	v_add_f64 v[123:124], v[74:75], v[123:124]
	v_mov_b32_e32 v74, s78
	v_mov_b32_e32 v75, s79
	v_fma_f64 v[127:128], v[125:126], s[62:63], v[74:75]
	v_fma_f64 v[127:128], v[125:126], v[127:128], s[64:65]
	v_fma_f64 v[127:128], v[125:126], v[127:128], s[66:67]
	v_fma_f64 v[127:128], v[125:126], v[127:128], s[68:69]
	v_fma_f64 v[127:128], v[125:126], v[127:128], s[70:71]
	v_fma_f64 v[127:128], v[125:126], v[127:128], s[72:73]
	v_fma_f64 v[127:128], v[125:126], v[127:128], s[74:75]
	v_fma_f64 v[127:128], v[125:126], v[127:128], s[76:77]
	v_fma_f64 v[127:128], v[125:126], v[127:128], s[52:53]
	v_mul_f64 v[129:130], v[125:126], v[125:126]
	v_fma_f64 v[131:132], v[125:126], v[125:126], -v[129:130]
	v_add_f64 v[133:134], v[123:124], v[123:124]
	v_fma_f64 v[131:132], v[125:126], v[133:134], v[131:132]
	v_fma_f64 v[131:132], v[123:124], v[123:124], v[131:132]
	v_add_f64 v[133:134], v[129:130], v[131:132]
	v_add_f64 v[129:130], v[133:134], -v[129:130]
	v_add_f64 v[129:130], v[131:132], -v[129:130]
	v_mul_f64 v[131:132], v[133:134], v[127:128]
	v_fma_f64 v[133:134], v[133:134], v[127:128], -v[131:132]
	v_fma_f64 v[127:128], v[129:130], v[127:128], v[133:134]
	v_add_f64 v[129:130], v[131:132], v[127:128]
	v_add_f64 v[131:132], v[129:130], -v[131:132]
	v_add_f64 v[127:128], v[127:128], -v[131:132]
	v_add_f64 v[131:132], v[125:126], v[129:130]
	v_add_f64 v[125:126], v[131:132], -v[125:126]
	v_add_f64 v[125:126], v[129:130], -v[125:126]
	v_add_f64 v[123:124], v[123:124], v[127:128]
	v_add_f64 v[123:124], v[125:126], v[123:124]
	v_add_f64 v[123:124], v[131:132], v[123:124]
	v_add_f64 v[123:124], v[123:124], 1.0
	v_cvt_i32_f64_e32 v105, v[121:122]
	v_ldexp_f64 v[121:122], v[123:124], v105
	v_readlane_b32 s0, v171, 4
	v_readlane_b32 s1, v171, 5
	v_readlane_b32 s4, v172, 39
	v_readlane_b32 s5, v172, 40
	s_mov_b32 s4, s0
	v_writelane_b32 v172, s4, 39
	v_writelane_b32 v172, s5, 40
	v_mul_f64 v[121:122], v[121:122], s[4:5]
	s_mov_b32 s4, s25
	s_mov_b32 s5, s43
	v_cmp_nlt_f64_e32 vcc, s[4:5], v[119:120]
	v_mov_b32_e32 v105, s101
	v_cndmask_b32_e32 v122, v105, v122, vcc
	s_mov_b32 s6, s25
	s_mov_b32 s7, s83
	v_cmp_ngt_f64_e64 s[0:1], s[6:7], v[119:120]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v119, 0, v121, vcc
	v_cndmask_b32_e64 v120, 0, v122, s[0:1]
	v_cvt_f32_f64_e32 v124, v[119:120]
	v_readlane_b32 s0, v170, 26
	v_readlane_b32 s1, v170, 27
	v_mul_f64 v[119:120], v[95:96], s[0:1]
	v_mul_f64 v[121:122], v[119:120], s[54:55]
	v_rndne_f64_e32 v[121:122], v[121:122]
	v_fma_f64 v[125:126], v[121:122], s[56:57], v[119:120]
	v_mul_f64 v[127:128], v[121:122], s[58:59]
	v_add_f64 v[129:130], v[125:126], v[127:128]
	v_add_f64 v[125:126], v[125:126], -v[129:130]
	v_add_f64 v[125:126], v[125:126], v[127:128]
	v_fma_f64 v[127:128], v[129:130], s[62:63], v[74:75]
	v_fma_f64 v[127:128], v[129:130], v[127:128], s[64:65]
	v_fma_f64 v[127:128], v[129:130], v[127:128], s[66:67]
	v_fma_f64 v[127:128], v[129:130], v[127:128], s[68:69]
	v_fma_f64 v[127:128], v[129:130], v[127:128], s[70:71]
	v_fma_f64 v[127:128], v[129:130], v[127:128], s[72:73]
	v_fma_f64 v[127:128], v[129:130], v[127:128], s[74:75]
	v_fma_f64 v[127:128], v[129:130], v[127:128], s[76:77]
	v_fma_f64 v[127:128], v[129:130], v[127:128], s[52:53]
	v_mul_f64 v[131:132], v[129:130], v[129:130]
	v_fma_f64 v[133:134], v[129:130], v[129:130], -v[131:132]
	v_add_f64 v[135:136], v[125:126], v[125:126]
	v_fma_f64 v[133:134], v[129:130], v[135:136], v[133:134]
	v_fma_f64 v[133:134], v[125:126], v[125:126], v[133:134]
	v_add_f64 v[135:136], v[131:132], v[133:134]
	v_add_f64 v[131:132], v[135:136], -v[131:132]
	v_add_f64 v[131:132], v[133:134], -v[131:132]
	v_mul_f64 v[133:134], v[135:136], v[127:128]
	v_fma_f64 v[135:136], v[135:136], v[127:128], -v[133:134]
	v_fma_f64 v[127:128], v[131:132], v[127:128], v[135:136]
	v_add_f64 v[131:132], v[133:134], v[127:128]
	v_add_f64 v[133:134], v[131:132], -v[133:134]
	v_add_f64 v[127:128], v[127:128], -v[133:134]
	v_add_f64 v[133:134], v[129:130], v[131:132]
	v_add_f64 v[129:130], v[133:134], -v[129:130]
	v_add_f64 v[129:130], v[131:132], -v[129:130]
	v_add_f64 v[125:126], v[125:126], v[127:128]
	v_add_f64 v[125:126], v[129:130], v[125:126]
	v_add_f64 v[125:126], v[133:134], v[125:126]
	v_add_f64 v[125:126], v[125:126], 1.0
	v_cvt_i32_f64_e32 v121, v[121:122]
	v_ldexp_f64 v[121:122], v[125:126], v121
	v_readlane_b32 s0, v172, 37
	v_readlane_b32 s1, v172, 38
	s_mov_b32 s0, s10
	v_writelane_b32 v172, s0, 37
	v_writelane_b32 v172, s1, 38
	v_mul_f64 v[121:122], v[121:122], s[0:1]
	v_cmp_nlt_f64_e32 vcc, s[4:5], v[119:120]
	v_cndmask_b32_e32 v122, v105, v122, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[6:7], v[119:120]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v119, 0, v121, vcc
	v_cndmask_b32_e64 v120, 0, v122, s[0:1]
	v_readlane_b32 s0, v171, 44
	v_readlane_b32 s1, v171, 45
	v_readlane_b32 s8, v172, 35
	v_readlane_b32 s9, v172, 36
	s_mov_b32 s8, s0
	v_writelane_b32 v172, s8, 35
	v_writelane_b32 v172, s9, 36
	v_mul_f64 v[121:122], v[95:96], s[8:9]
	v_mul_f64 v[125:126], v[121:122], s[54:55]
	v_rndne_f64_e32 v[125:126], v[125:126]
	v_fma_f64 v[127:128], v[125:126], s[56:57], v[121:122]
	v_mul_f64 v[129:130], v[125:126], s[58:59]
	v_add_f64 v[131:132], v[127:128], v[129:130]
	v_add_f64 v[127:128], v[127:128], -v[131:132]
	v_add_f64 v[127:128], v[127:128], v[129:130]
	v_fma_f64 v[129:130], v[131:132], s[62:63], v[74:75]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[64:65]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[66:67]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[68:69]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[70:71]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[72:73]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[74:75]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[76:77]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[52:53]
	v_mul_f64 v[133:134], v[131:132], v[131:132]
	v_fma_f64 v[135:136], v[131:132], v[131:132], -v[133:134]
	v_add_f64 v[137:138], v[127:128], v[127:128]
	v_fma_f64 v[135:136], v[131:132], v[137:138], v[135:136]
	v_fma_f64 v[135:136], v[127:128], v[127:128], v[135:136]
	v_add_f64 v[137:138], v[133:134], v[135:136]
	v_add_f64 v[133:134], v[137:138], -v[133:134]
	v_add_f64 v[133:134], v[135:136], -v[133:134]
	v_mul_f64 v[135:136], v[137:138], v[129:130]
	v_fma_f64 v[137:138], v[137:138], v[129:130], -v[135:136]
	v_fma_f64 v[129:130], v[133:134], v[129:130], v[137:138]
	v_add_f64 v[133:134], v[135:136], v[129:130]
	v_add_f64 v[135:136], v[133:134], -v[135:136]
	v_add_f64 v[129:130], v[129:130], -v[135:136]
	v_add_f64 v[135:136], v[131:132], v[133:134]
	v_add_f64 v[131:132], v[135:136], -v[131:132]
	v_add_f64 v[131:132], v[133:134], -v[131:132]
	v_add_f64 v[127:128], v[127:128], v[129:130]
	v_add_f64 v[127:128], v[131:132], v[127:128]
	v_add_f64 v[127:128], v[135:136], v[127:128]
	v_add_f64 v[127:128], v[127:128], 1.0
	v_cvt_i32_f64_e32 v123, v[125:126]
	v_ldexp_f64 v[125:126], v[127:128], v123
	v_readlane_b32 s0, v172, 33
	v_readlane_b32 s1, v172, 34
	s_mov_b32 s0, s25
	v_writelane_b32 v172, s0, 33
	v_writelane_b32 v172, s1, 34
	v_mul_f64 v[125:126], v[125:126], s[0:1]
	v_cmp_nlt_f64_e32 vcc, s[4:5], v[121:122]
	v_cndmask_b32_e32 v123, v105, v126, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[6:7], v[121:122]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v121, 0, v125, vcc
	v_cndmask_b32_e64 v122, 0, v123, s[0:1]
	v_add_f64 v[122:123], v[119:120], v[121:122]
	v_readlane_b32 s0, v170, 28
	v_readlane_b32 s1, v170, 29
	v_mul_f64 v[119:120], v[95:96], s[0:1]
	v_mul_f64 v[125:126], v[119:120], s[54:55]
	v_rndne_f64_e32 v[125:126], v[125:126]
	v_fma_f64 v[127:128], v[125:126], s[56:57], v[119:120]
	v_mul_f64 v[129:130], v[125:126], s[58:59]
	v_add_f64 v[131:132], v[127:128], v[129:130]
	v_add_f64 v[127:128], v[127:128], -v[131:132]
	v_add_f64 v[127:128], v[127:128], v[129:130]
	v_fma_f64 v[129:130], v[131:132], s[62:63], v[74:75]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[64:65]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[66:67]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[68:69]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[70:71]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[72:73]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[74:75]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[76:77]
	v_fma_f64 v[129:130], v[131:132], v[129:130], s[52:53]
	v_mul_f64 v[133:134], v[131:132], v[131:132]
	v_fma_f64 v[135:136], v[131:132], v[131:132], -v[133:134]
	v_add_f64 v[137:138], v[127:128], v[127:128]
	v_fma_f64 v[135:136], v[131:132], v[137:138], v[135:136]
	v_fma_f64 v[135:136], v[127:128], v[127:128], v[135:136]
	v_add_f64 v[137:138], v[133:134], v[135:136]
	v_add_f64 v[133:134], v[137:138], -v[133:134]
	v_add_f64 v[133:134], v[135:136], -v[133:134]
	v_mul_f64 v[135:136], v[137:138], v[129:130]
	v_fma_f64 v[137:138], v[137:138], v[129:130], -v[135:136]
	v_fma_f64 v[129:130], v[133:134], v[129:130], v[137:138]
	v_add_f64 v[133:134], v[135:136], v[129:130]
	v_add_f64 v[135:136], v[133:134], -v[135:136]
	v_add_f64 v[129:130], v[129:130], -v[135:136]
	v_add_f64 v[135:136], v[131:132], v[133:134]
	v_add_f64 v[131:132], v[135:136], -v[131:132]
	v_add_f64 v[131:132], v[133:134], -v[131:132]
	v_add_f64 v[127:128], v[127:128], v[129:130]
	v_add_f64 v[127:128], v[131:132], v[127:128]
	v_add_f64 v[127:128], v[135:136], v[127:128]
	v_add_f64 v[127:128], v[127:128], 1.0
	v_cvt_i32_f64_e32 v121, v[125:126]
	v_ldexp_f64 v[125:126], v[127:128], v121
	v_readlane_b32 s0, v172, 31
	v_readlane_b32 s1, v172, 32
	s_mov_b32 s0, s25
	v_writelane_b32 v172, s0, 31
	v_writelane_b32 v172, s1, 32
	v_mul_f64 v[125:126], v[125:126], s[0:1]
	v_cmp_nlt_f64_e32 vcc, s[4:5], v[119:120]
	s_mov_b32 s0, 0xfff00000
	v_mov_b32_e32 v121, s0
	v_cndmask_b32_e32 v121, v121, v126, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[6:7], v[119:120]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v119, 0, v125, vcc
	v_mov_b32_e32 v120, s14
	v_cndmask_b32_e64 v120, v120, v121, s[0:1]
	v_readlane_b32 s0, v170, 30
	v_readlane_b32 s1, v170, 31
	v_mul_f64 v[125:126], v[95:96], s[0:1]
	v_mul_f64 v[127:128], v[125:126], s[54:55]
	v_rndne_f64_e32 v[127:128], v[127:128]
	v_fma_f64 v[129:130], v[127:128], s[56:57], v[125:126]
	v_mul_f64 v[131:132], v[127:128], s[58:59]
	v_add_f64 v[133:134], v[129:130], v[131:132]
	v_add_f64 v[129:130], v[129:130], -v[133:134]
	v_add_f64 v[129:130], v[129:130], v[131:132]
	v_fma_f64 v[131:132], v[133:134], s[62:63], v[74:75]
	v_fma_f64 v[131:132], v[133:134], v[131:132], s[64:65]
	v_fma_f64 v[131:132], v[133:134], v[131:132], s[66:67]
	v_fma_f64 v[131:132], v[133:134], v[131:132], s[68:69]
	v_fma_f64 v[131:132], v[133:134], v[131:132], s[70:71]
	v_fma_f64 v[131:132], v[133:134], v[131:132], s[72:73]
	v_fma_f64 v[131:132], v[133:134], v[131:132], s[74:75]
	v_fma_f64 v[131:132], v[133:134], v[131:132], s[76:77]
	v_fma_f64 v[131:132], v[133:134], v[131:132], s[52:53]
	v_mul_f64 v[135:136], v[133:134], v[133:134]
	v_fma_f64 v[137:138], v[133:134], v[133:134], -v[135:136]
	v_add_f64 v[139:140], v[129:130], v[129:130]
	v_fma_f64 v[137:138], v[133:134], v[139:140], v[137:138]
	v_fma_f64 v[137:138], v[129:130], v[129:130], v[137:138]
	v_add_f64 v[139:140], v[135:136], v[137:138]
	v_add_f64 v[135:136], v[139:140], -v[135:136]
	v_add_f64 v[135:136], v[137:138], -v[135:136]
	v_mul_f64 v[137:138], v[139:140], v[131:132]
	v_fma_f64 v[139:140], v[139:140], v[131:132], -v[137:138]
	v_fma_f64 v[131:132], v[135:136], v[131:132], v[139:140]
	v_add_f64 v[135:136], v[137:138], v[131:132]
	v_add_f64 v[137:138], v[135:136], -v[137:138]
	v_add_f64 v[131:132], v[131:132], -v[137:138]
	v_add_f64 v[137:138], v[133:134], v[135:136]
	v_add_f64 v[133:134], v[137:138], -v[133:134]
	v_add_f64 v[133:134], v[135:136], -v[133:134]
	v_add_f64 v[129:130], v[129:130], v[131:132]
	v_add_f64 v[129:130], v[133:134], v[129:130]
	v_add_f64 v[129:130], v[137:138], v[129:130]
	v_add_f64 v[129:130], v[129:130], 1.0
	v_cvt_i32_f64_e32 v121, v[127:128]
	v_ldexp_f64 v[127:128], v[129:130], v121
	v_readlane_b32 s0, v170, 32
	v_readlane_b32 s1, v170, 33
	v_mul_f64 v[127:128], v[127:128], s[0:1]
	v_cmp_nlt_f64_e32 vcc, s[4:5], v[125:126]
	v_cndmask_b32_e32 v121, v105, v128, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[6:7], v[125:126]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v125, 0, v127, vcc
	v_cndmask_b32_e64 v126, 0, v121, s[0:1]
	v_add_f64 v[119:120], v[119:120], -v[125:126]
	v_readlane_b32 s0, v170, 20
	v_readlane_b32 s1, v170, 21
	v_readlane_b32 s8, v172, 29
	v_readlane_b32 s9, v172, 30
	s_mov_b32 s8, s0
	v_writelane_b32 v172, s8, 29
	v_writelane_b32 v172, s9, 30
	v_add_f64 v[125:126], v[95:96], s[8:9]
	v_mul_f64 v[119:120], v[125:126], v[119:120]
	v_readlane_b32 s0, v170, 34
	v_readlane_b32 s1, v170, 35
	v_add_f64 v[125:126], v[95:96], s[0:1]
	v_readlane_b32 s0, v171, 48
	v_readlane_b32 s1, v171, 49
	v_readlane_b32 s8, v172, 27
	v_readlane_b32 s9, v172, 28
	s_mov_b32 s8, s0
	v_writelane_b32 v172, s8, 27
	v_writelane_b32 v172, s9, 28
	v_mul_f64 v[125:126], v[125:126], s[8:9]
	v_mul_f64 v[127:128], v[125:126], s[54:55]
	v_rndne_f64_e32 v[127:128], v[127:128]
	v_fma_f64 v[129:130], v[127:128], s[56:57], v[125:126]
	v_mul_f64 v[131:132], v[127:128], s[58:59]
	v_add_f64 v[133:134], v[129:130], v[131:132]
	v_add_f64 v[129:130], v[129:130], -v[133:134]
	v_add_f64 v[129:130], v[129:130], v[131:132]
	v_fma_f64 v[131:132], v[133:134], s[62:63], v[74:75]
	v_fma_f64 v[131:132], v[133:134], v[131:132], s[64:65]
	v_fma_f64 v[131:132], v[133:134], v[131:132], s[66:67]
	v_fma_f64 v[131:132], v[133:134], v[131:132], s[68:69]
	v_fma_f64 v[131:132], v[133:134], v[131:132], s[70:71]
	v_fma_f64 v[131:132], v[133:134], v[131:132], s[72:73]
	v_fma_f64 v[131:132], v[133:134], v[131:132], s[74:75]
	v_fma_f64 v[131:132], v[133:134], v[131:132], s[76:77]
	v_fma_f64 v[131:132], v[133:134], v[131:132], s[52:53]
	v_mul_f64 v[135:136], v[133:134], v[133:134]
	v_fma_f64 v[137:138], v[133:134], v[133:134], -v[135:136]
	v_add_f64 v[139:140], v[129:130], v[129:130]
	v_fma_f64 v[137:138], v[133:134], v[139:140], v[137:138]
	v_fma_f64 v[137:138], v[129:130], v[129:130], v[137:138]
	v_add_f64 v[139:140], v[135:136], v[137:138]
	v_add_f64 v[135:136], v[139:140], -v[135:136]
	v_add_f64 v[135:136], v[137:138], -v[135:136]
	v_mul_f64 v[137:138], v[139:140], v[131:132]
	v_fma_f64 v[139:140], v[139:140], v[131:132], -v[137:138]
	v_fma_f64 v[131:132], v[135:136], v[131:132], v[139:140]
	v_add_f64 v[135:136], v[137:138], v[131:132]
	v_add_f64 v[137:138], v[135:136], -v[137:138]
	v_add_f64 v[131:132], v[131:132], -v[137:138]
	v_add_f64 v[137:138], v[133:134], v[135:136]
	v_add_f64 v[133:134], v[137:138], -v[133:134]
	v_add_f64 v[133:134], v[135:136], -v[133:134]
	v_add_f64 v[129:130], v[129:130], v[131:132]
	v_add_f64 v[129:130], v[133:134], v[129:130]
	v_add_f64 v[129:130], v[137:138], v[129:130]
	v_add_f64 v[129:130], v[129:130], 1.0
	v_cvt_i32_f64_e32 v121, v[127:128]
	v_ldexp_f64 v[127:128], v[129:130], v121
	v_add_f64 v[127:128], v[127:128], 1.0
	v_cmp_nlt_f64_e32 vcc, s[4:5], v[125:126]
	v_cndmask_b32_e32 v121, v105, v128, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[6:7], v[125:126]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v125, 0, v127, vcc
	v_mov_b32_e32 v126, s89
	v_cndmask_b32_e64 v126, v126, v121, s[0:1]
	v_div_scale_f64 v[127:128], s[0:1], v[125:126], v[125:126], v[119:120]
	v_rcp_f64_e32 v[129:130], v[127:128]
	v_fma_f64 v[131:132], -v[127:128], v[129:130], 1.0
	v_fma_f64 v[129:130], v[129:130], v[131:132], v[129:130]
	v_fma_f64 v[131:132], -v[127:128], v[129:130], 1.0
	v_fma_f64 v[129:130], v[129:130], v[131:132], v[129:130]
	v_div_scale_f64 v[131:132], vcc, v[119:120], v[125:126], v[119:120]
	v_mul_f64 v[133:134], v[131:132], v[129:130]
	v_fma_f64 v[127:128], -v[127:128], v[133:134], v[131:132]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[127:128], v[127:128], v[129:130], v[133:134]
	v_div_fixup_f64 v[119:120], v[127:128], v[125:126], v[119:120]
	v_cvt_f32_f64_e32 v131, v[119:120]
	v_readlane_b32 s0, v170, 36
	v_readlane_b32 s1, v170, 37
	v_mul_f64 v[119:120], v[95:96], s[0:1]
	v_mul_f64 v[125:126], v[119:120], s[54:55]
	v_rndne_f64_e32 v[125:126], v[125:126]
	v_fma_f64 v[127:128], v[125:126], s[56:57], v[119:120]
	v_mul_f64 v[129:130], v[125:126], s[58:59]
	v_add_f64 v[132:133], v[127:128], v[129:130]
	v_add_f64 v[127:128], v[127:128], -v[132:133]
	v_add_f64 v[127:128], v[127:128], v[129:130]
	v_fma_f64 v[129:130], v[132:133], s[62:63], v[74:75]
	v_fma_f64 v[129:130], v[132:133], v[129:130], s[64:65]
	v_fma_f64 v[129:130], v[132:133], v[129:130], s[66:67]
	v_fma_f64 v[129:130], v[132:133], v[129:130], s[68:69]
	v_fma_f64 v[129:130], v[132:133], v[129:130], s[70:71]
	v_fma_f64 v[129:130], v[132:133], v[129:130], s[72:73]
	v_fma_f64 v[129:130], v[132:133], v[129:130], s[74:75]
	v_fma_f64 v[129:130], v[132:133], v[129:130], s[76:77]
	v_fma_f64 v[129:130], v[132:133], v[129:130], s[52:53]
	v_mul_f64 v[134:135], v[132:133], v[132:133]
	v_fma_f64 v[136:137], v[132:133], v[132:133], -v[134:135]
	v_add_f64 v[138:139], v[127:128], v[127:128]
	v_fma_f64 v[136:137], v[132:133], v[138:139], v[136:137]
	v_fma_f64 v[136:137], v[127:128], v[127:128], v[136:137]
	v_add_f64 v[138:139], v[134:135], v[136:137]
	v_add_f64 v[134:135], v[138:139], -v[134:135]
	v_add_f64 v[134:135], v[136:137], -v[134:135]
	v_mul_f64 v[136:137], v[138:139], v[129:130]
	v_fma_f64 v[138:139], v[138:139], v[129:130], -v[136:137]
	v_fma_f64 v[129:130], v[134:135], v[129:130], v[138:139]
	v_add_f64 v[134:135], v[136:137], v[129:130]
	v_add_f64 v[136:137], v[134:135], -v[136:137]
	v_add_f64 v[129:130], v[129:130], -v[136:137]
	v_add_f64 v[136:137], v[132:133], v[134:135]
	v_add_f64 v[132:133], v[136:137], -v[132:133]
	v_add_f64 v[132:133], v[134:135], -v[132:133]
	v_add_f64 v[127:128], v[127:128], v[129:130]
	v_add_f64 v[127:128], v[132:133], v[127:128]
	v_add_f64 v[127:128], v[136:137], v[127:128]
	v_add_f64 v[127:128], v[127:128], 1.0
	v_cvt_i32_f64_e32 v121, v[125:126]
	v_ldexp_f64 v[125:126], v[127:128], v121
	v_readlane_b32 s0, v170, 38
	v_readlane_b32 s1, v170, 39
	v_mul_f64 v[125:126], v[125:126], s[0:1]
	v_cmp_nlt_f64_e32 vcc, s[4:5], v[119:120]
	v_cndmask_b32_e32 v105, v105, v126, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[6:7], v[119:120]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v125, 0, v125, vcc
	v_cndmask_b32_e64 v126, 0, v105, s[0:1]
	v_readlane_b32 s0, v172, 25
	v_readlane_b32 s1, v172, 26
	s_mov_b32 s0, s80
	v_writelane_b32 v172, s0, 25
	v_writelane_b32 v172, s1, 26
	v_add_f64 v[119:120], v[95:96], s[0:1]
	v_readlane_b32 s0, v170, 40
	v_readlane_b32 s1, v170, 41
	v_mul_f64 v[136:137], v[119:120], s[0:1]
	v_mul_f64 v[119:120], v[136:137], s[54:55]
	v_rndne_f64_e32 v[138:139], v[119:120]
	v_fma_f64 v[119:120], v[138:139], s[56:57], v[136:137]
	v_mul_f64 v[127:128], v[138:139], s[58:59]
	v_add_f64 v[129:130], v[119:120], v[127:128]
	v_add_f64 v[119:120], v[119:120], -v[129:130]
	v_add_f64 v[119:120], v[119:120], v[127:128]
	v_fma_f64 v[74:75], v[129:130], s[62:63], v[74:75]
	v_fma_f64 v[74:75], v[129:130], v[74:75], s[64:65]
	v_fma_f64 v[74:75], v[129:130], v[74:75], s[66:67]
	v_fma_f64 v[74:75], v[129:130], v[74:75], s[68:69]
	v_fma_f64 v[74:75], v[129:130], v[74:75], s[70:71]
	v_fma_f64 v[74:75], v[129:130], v[74:75], s[72:73]
	v_fma_f64 v[74:75], v[129:130], v[74:75], s[74:75]
	v_fma_f64 v[74:75], v[129:130], v[74:75], s[76:77]
	v_fma_f64 v[74:75], v[129:130], v[74:75], s[52:53]
	v_mul_f64 v[127:128], v[129:130], v[129:130]
	v_fma_f64 v[132:133], v[129:130], v[129:130], -v[127:128]
	v_add_f64 v[134:135], v[119:120], v[119:120]
	v_fma_f64 v[132:133], v[129:130], v[134:135], v[132:133]
	v_fma_f64 v[132:133], v[119:120], v[119:120], v[132:133]
	v_add_f64 v[134:135], v[127:128], v[132:133]
	v_add_f64 v[127:128], v[134:135], -v[127:128]
	v_add_f64 v[127:128], v[132:133], -v[127:128]
	v_mul_f64 v[132:133], v[134:135], v[74:75]
	v_fma_f64 v[134:135], v[134:135], v[74:75], -v[132:133]
	v_fma_f64 v[74:75], v[127:128], v[74:75], v[134:135]
	v_add_f64 v[127:128], v[132:133], v[74:75]
	v_add_f64 v[132:133], v[127:128], -v[132:133]
	v_add_f64 v[74:75], v[74:75], -v[132:133]
	v_add_f64 v[140:141], v[129:130], v[127:128]
	v_add_f64 v[129:130], v[140:141], -v[129:130]
	v_add_f64 v[143:144], v[127:128], -v[129:130]
	v_add_f64 v[145:146], v[119:120], v[74:75]
BB1_87:                                 ;   in Loop: Header=BB1_9 Depth=3
	s_or_b64 exec, exec, s[2:3]
	v_cvt_i32_f32_e32 v105, v73
	s_mul_i32 s24, s33, s82
	s_lshl_b64 s[0:1], s[24:25], 2
	v_add_u32_e32 v74, vcc, s0, v8
	v_mov_b32_e32 v75, s1
	v_addc_u32_e32 v75, vcc, v9, v75, vcc
	v_cvt_f32_i32_e32 v105, v105
	s_mov_b32 s2, 0x430c0000
	v_div_scale_f32 v119, s[0:1], v102, v102, s2
	v_rcp_f32_e32 v120, v119
	v_fma_f32 v121, -v119, v120, 1.0
	v_fma_f32 v120, v121, v120, v120
	v_div_scale_f32 v121, vcc, s2, v102, s2
	v_mul_f32_e32 v127, v121, v120
	v_fma_f32 v128, -v119, v127, v121
	v_fma_f32 v127, v128, v120, v127
	v_fma_f32 v119, -v119, v127, v121
	v_div_fmas_f32 v119, v119, v120, v127
	v_div_fixup_f32 v119, v119, v102, s2
	s_brev_b32 s13, 1
	s_movk_i32 s14, 0x90
	v_cmp_class_f32_e64 vcc, v119, s14
	v_mov_b32_e32 v120, s38
	v_cndmask_b32_e32 v121, 1.0, v120, vcc
	v_mul_f32_e32 v119, v119, v121
	v_log_f32_e32 v119, v119
	s_mov_b32 s3, 0x3f317217
	v_mul_f32_e32 v121, s3, v119
	s_movk_i32 s4, 0x207
	v_cmp_class_f32_e64 s[0:1], v119, s4
	v_fma_f32 v127, v119, s3, -v121
	s_mov_b32 s5, 0x3377d1cf
	v_fma_f32 v127, v119, s5, v127
	v_add_f32_e32 v121, v121, v127
	v_cndmask_b32_e64 v121, v121, v119, s[0:1]
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v127, s39
	v_cndmask_b32_e32 v128, 0, v127, vcc
	v_sub_f32_e32 v132, v121, v128
	v_div_scale_f32 v121, s[0:1], v103, v103, s2
	v_rcp_f32_e32 v128, v121
	v_fma_f32 v129, -v121, v128, 1.0
	v_fma_f32 v128, v129, v128, v128
	v_div_scale_f32 v129, vcc, s2, v103, s2
	v_mul_f32_e32 v130, v129, v128
	v_fma_f32 v133, -v121, v130, v129
	v_fma_f32 v130, v133, v128, v130
	v_fma_f32 v121, -v121, v130, v129
	v_div_fmas_f32 v121, v121, v128, v130
	v_div_fixup_f32 v121, v121, v103, s2
	v_cmp_class_f32_e64 vcc, v121, s14
	v_cndmask_b32_e32 v128, 1.0, v120, vcc
	v_mul_f32_e32 v121, v121, v128
	v_log_f32_e32 v121, v121
	v_mul_f32_e32 v128, s3, v121
	v_cmp_class_f32_e64 s[0:1], v121, s4
	v_fma_f32 v129, v121, s3, -v128
	v_fma_f32 v129, v121, s5, v129
	v_add_f32_e32 v128, v128, v129
	v_cndmask_b32_e64 v121, v128, v121, s[0:1]
	v_cndmask_b32_e32 v128, 0, v127, vcc
	v_sub_f32_e32 v161, v121, v128
	s_mov_b32 s20, 0x3fe66666
	v_div_scale_f32 v121, s[0:1], v77, v77, s20
	v_rcp_f32_e32 v128, v121
	v_fma_f32 v129, -v121, v128, 1.0
	v_fma_f32 v128, v129, v128, v128
	v_div_scale_f32 v129, vcc, s20, v77, s20
	v_mul_f32_e32 v130, v129, v128
	v_fma_f32 v133, -v121, v130, v129
	v_fma_f32 v130, v133, v128, v130
	v_fma_f32 v121, -v121, v130, v129
	v_div_fmas_f32 v121, v121, v128, v130
	v_div_fixup_f32 v121, v121, v77, s20
	v_cmp_class_f32_e64 vcc, v121, s14
	v_cndmask_b32_e32 v128, 1.0, v120, vcc
	v_mul_f32_e32 v121, v121, v128
	v_log_f32_e32 v121, v121
	v_mul_f32_e32 v128, s3, v121
	v_cmp_class_f32_e64 s[0:1], v121, s4
	v_fma_f32 v129, v121, s3, -v128
	v_fma_f32 v129, v121, s5, v129
	v_add_f32_e32 v128, v128, v129
	v_cndmask_b32_e64 v121, v128, v121, s[0:1]
	v_cndmask_b32_e32 v128, 0, v127, vcc
	v_sub_f32_e32 v133, v121, v128
	v_div_scale_f32 v121, s[0:1], v78, v78, s20
	v_rcp_f32_e32 v128, v121
	v_fma_f32 v129, -v121, v128, 1.0
	v_fma_f32 v128, v129, v128, v128
	v_div_scale_f32 v129, vcc, s20, v78, s20
	v_mul_f32_e32 v130, v129, v128
	v_fma_f32 v134, -v121, v130, v129
	v_fma_f32 v130, v134, v128, v130
	v_fma_f32 v121, -v121, v130, v129
	v_div_fmas_f32 v121, v121, v128, v130
	v_div_fixup_f32 v121, v121, v78, s20
	v_cmp_class_f32_e64 vcc, v121, s14
	v_cndmask_b32_e32 v120, 1.0, v120, vcc
	v_mul_f32_e32 v120, v121, v120
	v_log_f32_e32 v120, v120
	v_mul_f32_e32 v121, s3, v120
	v_cmp_class_f32_e64 s[0:1], v120, s4
	v_fma_f32 v128, v120, s3, -v121
	v_fma_f32 v128, v120, s5, v128
	v_add_f32_e32 v121, v121, v128
	v_cndmask_b32_e64 v120, v121, v120, s[0:1]
	v_cndmask_b32_e32 v121, 0, v127, vcc
	v_sub_f32_e32 v134, v120, v121
	v_readlane_b32 s0, v170, 42
	v_readlane_b32 s1, v170, 43
	v_add_f64 v[120:121], v[95:96], s[0:1]
	v_mul_f64 v[147:148], v[120:121], s[10:11]
	v_readlane_b32 s8, v170, 24
	v_readlane_b32 s9, v170, 25
	v_mul_f64 v[129:130], v[120:121], s[8:9]
	v_mul_f64 v[120:121], v[129:130], s[54:55]
	v_rndne_f64_e32 v[120:121], v[120:121]
	v_fma_f64 v[127:128], v[120:121], s[56:57], v[129:130]
	v_mul_f64 v[149:150], v[120:121], s[58:59]
	v_add_f64 v[151:152], v[127:128], v[149:150]
	v_add_f64 v[127:128], v[127:128], -v[151:152]
	v_add_f64 v[149:150], v[127:128], v[149:150]
	v_mov_b32_e32 v128, s79
	v_mov_b32_e32 v127, s78
	v_fma_f64 v[153:154], v[151:152], s[62:63], v[127:128]
	v_fma_f64 v[153:154], v[151:152], v[153:154], s[64:65]
	v_fma_f64 v[153:154], v[151:152], v[153:154], s[66:67]
	v_fma_f64 v[153:154], v[151:152], v[153:154], s[68:69]
	v_fma_f64 v[153:154], v[151:152], v[153:154], s[70:71]
	v_fma_f64 v[153:154], v[151:152], v[153:154], s[72:73]
	v_fma_f64 v[153:154], v[151:152], v[153:154], s[74:75]
	v_fma_f64 v[153:154], v[151:152], v[153:154], s[76:77]
	v_fma_f64 v[153:154], v[151:152], v[153:154], s[52:53]
	v_mul_f64 v[155:156], v[151:152], v[151:152]
	v_fma_f64 v[157:158], v[151:152], v[151:152], -v[155:156]
	v_add_f64 v[159:160], v[149:150], v[149:150]
	v_fma_f64 v[157:158], v[151:152], v[159:160], v[157:158]
	v_fma_f64 v[157:158], v[149:150], v[149:150], v[157:158]
	v_add_f64 v[159:160], v[155:156], v[157:158]
	v_add_f64 v[155:156], v[159:160], -v[155:156]
	v_add_f64 v[155:156], v[157:158], -v[155:156]
	v_mul_f64 v[157:158], v[159:160], v[153:154]
	v_fma_f64 v[159:160], v[159:160], v[153:154], -v[157:158]
	v_fma_f64 v[153:154], v[155:156], v[153:154], v[159:160]
	v_add_f64 v[155:156], v[157:158], v[153:154]
	v_add_f64 v[157:158], v[155:156], -v[157:158]
	v_add_f64 v[153:154], v[153:154], -v[157:158]
	v_add_f64 v[157:158], v[151:152], v[155:156]
	v_add_f64 v[151:152], v[157:158], -v[151:152]
	v_add_f64 v[151:152], v[155:156], -v[151:152]
	v_add_f64 v[149:150], v[149:150], v[153:154]
	v_add_f64 v[149:150], v[151:152], v[149:150]
	v_add_f64 v[149:150], v[157:158], v[149:150]
	v_add_f64 v[149:150], v[149:150], 1.0
	v_cvt_i32_f64_e32 v120, v[120:121]
	v_ldexp_f64 v[120:121], v[149:150], v120
	v_add_f64 v[149:150], -v[120:121], 1.0
	s_mov_b32 s42, s25
	v_cmp_nlt_f64_e32 vcc, s[42:43], v[129:130]
	s_mov_b32 s0, 0xfff00000
	v_mov_b32_e32 v120, s0
	v_cndmask_b32_e32 v121, v120, v150, vcc
	s_mov_b32 s82, s25
	v_cmp_ngt_f64_e64 s[0:1], s[82:83], v[129:130]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v149, 0, v149, vcc
	v_mov_b32_e32 v130, s89
	v_cndmask_b32_e64 v150, v130, v121, s[0:1]
	v_div_scale_f64 v[151:152], s[0:1], v[149:150], v[149:150], v[147:148]
	v_rcp_f64_e32 v[153:154], v[151:152]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_div_scale_f64 v[155:156], vcc, v[147:148], v[149:150], v[147:148]
	v_mul_f64 v[157:158], v[155:156], v[153:154]
	v_fma_f64 v[151:152], -v[151:152], v[157:158], v[155:156]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[151:152], v[151:152], v[153:154], v[157:158]
	v_div_fixup_f64 v[147:148], v[151:152], v[149:150], v[147:148]
	v_cvt_f32_f64_e32 v149, v[147:148]
	s_mov_b32 s2, 0xc1300000
	v_div_scale_f32 v121, s[0:1], s2, s2, v93
	v_rcp_f32_e32 v129, v121
	v_fma_f32 v135, -v121, v129, 1.0
	v_fma_f32 v129, v135, v129, v129
	v_div_scale_f32 v135, vcc, v93, s2, v93
	v_mul_f32_e32 v142, v135, v129
	v_fma_f32 v147, -v121, v142, v135
	v_fma_f32 v142, v147, v129, v142
	v_fma_f32 v121, -v121, v142, v135
	v_div_fmas_f32 v121, v121, v129, v142
	v_div_fixup_f32 v121, v121, s2, v93
	s_mov_b32 s21, 0xc2aeac50
	v_cmp_gt_f32_e32 vcc, s21, v121
	v_mov_b32_e32 v142, 0x42800000
	v_cndmask_b32_e32 v129, 0, v142, vcc
	v_add_f32_e32 v121, v121, v129
	v_mul_f32_e32 v129, s26, v121
	v_mov_b32_e32 v135, 0x114b4ea4
	v_cndmask_b32_e32 v147, 1.0, v135, vcc
	v_fma_f32 v148, v121, s26, -v129
	s_mov_b32 s22, 0x32a5705f
	v_fma_f32 v148, v121, s22, v148
	v_exp_f32_e32 v148, v148
	v_exp_f32_e32 v129, v129
	v_mul_f32_e32 v129, v129, v148
	v_mul_f32_e32 v129, v147, v129
	s_mov_b32 s23, 0xc2ce8ed0
	v_cmp_ngt_f32_e32 vcc, s23, v121
	v_cndmask_b32_e32 v129, 0, v129, vcc
	s_mov_b32 s50, 0x42b17218
	v_cmp_nlt_f32_e32 vcc, s50, v121
	v_mov_b32_e32 v121, s94
	v_cndmask_b32_e32 v129, v121, v129, vcc
	v_cvt_f64_f32_e32 v[147:148], v129
	v_readlane_b32 s0, v172, 23
	v_readlane_b32 s1, v172, 24
	s_mov_b32 s0, s10
	v_writelane_b32 v172, s0, 23
	v_writelane_b32 v172, s1, 24
	v_mul_f64 v[147:148], v[147:148], s[0:1]
	v_cvt_f32_f64_e32 v147, v[147:148]
	v_add_f64 v[143:144], v[143:144], v[145:146]
	v_add_f64 v[140:141], v[140:141], v[143:144]
	v_add_f64 v[140:141], v[140:141], 1.0
	v_cvt_i32_f64_e32 v129, v[138:139]
	v_ldexp_f64 v[138:139], v[140:141], v129
	v_add_f64 v[138:139], v[138:139], 1.0
	v_cmp_nlt_f64_e32 vcc, s[42:43], v[136:137]
	v_mov_b32_e32 v129, s101
	v_cndmask_b32_e32 v139, v129, v139, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[82:83], v[136:137]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v136, 0, v138, vcc
	v_cndmask_b32_e64 v137, v130, v139, s[0:1]
	v_div_scale_f64 v[138:139], s[0:1], v[136:137], v[136:137], v[125:126]
	v_rcp_f64_e32 v[140:141], v[138:139]
	v_fma_f64 v[143:144], -v[138:139], v[140:141], 1.0
	v_fma_f64 v[140:141], v[140:141], v[143:144], v[140:141]
	v_fma_f64 v[143:144], -v[138:139], v[140:141], 1.0
	v_fma_f64 v[140:141], v[140:141], v[143:144], v[140:141]
	v_div_scale_f64 v[143:144], vcc, v[125:126], v[136:137], v[125:126]
	v_mul_f64 v[145:146], v[143:144], v[140:141]
	v_fma_f64 v[138:139], -v[138:139], v[145:146], v[143:144]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[138:139], v[138:139], v[140:141], v[145:146]
	v_div_fixup_f64 v[125:126], v[138:139], v[136:137], v[125:126]
	v_cvt_f32_f64_e32 v122, v[122:123]
	v_cvt_f32_f64_e32 v123, v[125:126]
	v_sub_f32_e32 v125, 1.0, v84
	v_mul_f32_e32 v126, v84, v147
	v_fma_f32 v138, v125, v149, v126
	v_sub_f32_e32 v125, 1.0, v85
	v_mul_f32_e32 v122, v85, v122
	v_fma_f32 v139, v125, v124, -v122
	v_sub_f32_e32 v122, 1.0, v86
	v_mul_f32_e32 v123, v86, v123
	v_fma_f32 v140, v122, v131, -v123
	v_frexp_mant_f32_e64 v122, |v84|
	s_mov_b32 s12, 0x3f2aaaab
	v_cmp_gt_f32_e32 vcc, s12, v122
	v_cndmask_b32_e64 v123, 0, 1, vcc
	v_ldexp_f32 v122, v122, v123
	v_frexp_exp_i32_f32_e64 v123, |v84|
	v_subbrev_u32_e32 v123, vcc, 0, v123, vcc
	v_add_f32_e32 v124, -1.0, v122
	v_add_f32_e32 v125, 1.0, v122
	v_sub_f32_e32 v126, v125, v122
	v_sub_f32_e32 v131, v125, v126
	v_sub_f32_e32 v122, v122, v131
	v_sub_f32_e32 v126, 1.0, v126
	v_add_f32_e32 v122, v126, v122
	v_rcp_f32_e32 v126, v125
	v_mul_f32_e32 v131, v124, v126
	v_mul_f32_e32 v136, v125, v131
	v_fma_f32 v125, v131, v125, -v136
	v_fma_f32 v122, v131, v122, v125
	v_add_f32_e32 v125, v136, v122
	v_sub_f32_e32 v136, v125, v136
	v_sub_f32_e32 v122, v122, v136
	v_sub_f32_e32 v136, v124, v125
	v_sub_f32_e32 v124, v124, v136
	v_sub_f32_e32 v124, v124, v125
	v_sub_f32_e32 v122, v124, v122
	v_add_f32_e32 v122, v136, v122
	v_mul_f32_e32 v122, v126, v122
	v_add_f32_e32 v124, v131, v122
	v_sub_f32_e32 v125, v124, v131
	v_sub_f32_e32 v122, v122, v125
	v_mul_f32_e32 v125, v124, v124
	v_add_f32_e32 v126, v122, v122
	v_fma_f32 v131, v124, v124, -v125
	v_fma_f32 v126, v124, v126, v131
	v_fma_f32 v126, v122, v122, v126
	v_add_f32_e32 v131, v125, v126
	v_sub_f32_e32 v125, v131, v125
	v_sub_f32_e32 v125, v126, v125
	v_mov_b32_e32 v126, s15
	v_fma_f32 v136, v131, s48, v126
	v_fma_f32 v136, v131, v136, s93
	v_cvt_f32_i32_e32 v123, v123
	v_mul_f32_e32 v137, s45, v123
	v_fma_f32 v141, v123, s45, -v137
	v_fma_f32 v123, v123, s44, v141
	v_add_f32_e32 v141, v137, v123
	v_sub_f32_e32 v137, v141, v137
	v_sub_f32_e32 v123, v123, v137
	v_ldexp_f32 v137, v124, 1
	v_mul_f32_e32 v143, v124, v131
	v_fma_f32 v144, v131, v124, -v143
	v_mul_f32_e32 v124, v124, v125
	v_fma_f32 v124, v131, v122, v124
	v_add_f32_e32 v124, v144, v124
	v_add_f32_e32 v144, v143, v124
	v_mul_f32_e32 v145, v131, v136
	v_fma_f32 v131, v131, v136, -v145
	v_fma_f32 v125, v125, v136, v131
	v_add_f32_e32 v131, v145, v125
	v_sub_f32_e32 v136, v131, v145
	v_sub_f32_e32 v125, v125, v136
	v_add_f32_e32 v136, s28, v131
	v_add_f32_e32 v145, s41, v136
	v_sub_f32_e32 v131, v131, v145
	v_add_f32_e32 v125, s49, v125
	v_add_f32_e32 v125, v131, v125
	v_add_f32_e32 v131, v136, v125
	v_mul_f32_e32 v145, v144, v131
	v_fma_f32 v146, v144, v131, -v145
	v_sub_f32_e32 v136, v131, v136
	v_sub_f32_e32 v125, v125, v136
	v_sub_f32_e32 v136, v144, v143
	v_sub_f32_e32 v124, v124, v136
	v_mul_f32_e32 v124, v124, v131
	v_fma_f32 v124, v144, v125, v124
	v_add_f32_e32 v124, v146, v124
	v_ldexp_f32 v122, v122, 1
	v_add_f32_e32 v125, v145, v124
	v_sub_f32_e32 v131, v125, v145
	v_sub_f32_e32 v124, v124, v131
	v_add_f32_e32 v131, v137, v125
	v_sub_f32_e32 v136, v131, v137
	v_sub_f32_e32 v125, v125, v136
	v_add_f32_e32 v122, v122, v124
	v_add_f32_e32 v122, v125, v122
	v_add_f32_e32 v124, v131, v122
	v_sub_f32_e32 v125, v124, v131
	v_sub_f32_e32 v122, v122, v125
	v_add_f32_e32 v125, v141, v124
	v_sub_f32_e32 v131, v125, v141
	v_sub_f32_e32 v136, v125, v131
	v_sub_f32_e32 v136, v141, v136
	v_sub_f32_e32 v124, v124, v131
	v_add_f32_e32 v124, v124, v136
	v_add_f32_e32 v131, v123, v122
	v_sub_f32_e32 v136, v131, v123
	v_sub_f32_e32 v137, v131, v136
	v_sub_f32_e32 v123, v123, v137
	v_sub_f32_e32 v122, v122, v136
	v_add_f32_e32 v122, v122, v123
	v_add_f32_e32 v123, v131, v124
	v_add_f32_e32 v124, v125, v123
	v_sub_f32_e32 v125, v124, v125
	v_sub_f32_e32 v123, v123, v125
	v_add_f32_e32 v122, v122, v123
	v_add_f32_e32 v123, v124, v122
	v_sub_f32_e32 v124, v123, v124
	v_sub_f32_e32 v122, v122, v124
	v_mul_f32_e32 v124, s61, v123
	v_fma_f32 v125, v123, s61, -v124
	v_mul_f32_e32 v123, 0, v123
	v_fma_f32 v122, v122, s61, v123
	v_add_f32_e32 v122, v125, v122
	v_add_f32_e32 v123, v124, v122
	v_sub_f32_e32 v125, v123, v124
	v_sub_f32_e32 v122, v122, v125
	v_cmp_class_f32_e64 vcc, v124, s92
	v_cndmask_b32_e32 v123, v123, v124, vcc
	v_cmp_neq_f32_e64 vcc, |v123|, s94
	v_cndmask_b32_e32 v122, 0, v122, vcc
	v_mul_f32_e32 v124, s26, v123
	v_rndne_f32_e32 v124, v124
	v_mul_f32_e32 v125, s31, v124
	v_sub_f32_e32 v131, v123, v125
	v_sub_f32_e32 v136, v131, v123
	v_sub_f32_e32 v137, v131, v136
	v_sub_f32_e32 v137, v123, v137
	v_add_f32_e32 v125, v125, v136
	v_sub_f32_e32 v125, v137, v125
	v_add_f32_e32 v122, v122, v125
	v_add_f32_e32 v125, v131, v122
	v_sub_f32_e32 v131, v125, v131
	v_sub_f32_e32 v122, v122, v131
	v_mul_f32_e32 v131, s30, v124
	v_sub_f32_e32 v136, v125, v131
	v_sub_f32_e32 v125, v125, v136
	v_sub_f32_e32 v125, v125, v131
	v_add_f32_e32 v122, v122, v125
	v_add_f32_e32 v125, v136, v122
	v_sub_f32_e32 v131, v125, v136
	v_sub_f32_e32 v122, v122, v131
	v_mul_f32_e32 v131, s29, v124
	v_sub_f32_e32 v136, v125, v131
	v_sub_f32_e32 v125, v125, v136
	v_sub_f32_e32 v125, v125, v131
	v_add_f32_e32 v122, v122, v125
	v_add_f32_e32 v131, v136, v122
	v_sub_f32_e32 v125, v131, v136
	v_sub_f32_e32 v122, v122, v125
	s_mov_b32 s0, 0x3c091de6
	v_mov_b32_e32 v125, s0
	v_fma_f32 v136, v131, s27, v125
	v_fma_f32 v136, v131, v136, s40
	v_fma_f32 v136, v131, v136, s35
	v_fma_f32 v136, v131, v136, s91
	v_mul_f32_e32 v137, v131, v131
	v_fma_f32 v141, v131, v131, -v137
	v_add_f32_e32 v143, v122, v122
	v_fma_f32 v141, v131, v143, v141
	v_fma_f32 v141, v122, v122, v141
	v_add_f32_e32 v143, v137, v141
	v_mul_f32_e32 v144, v136, v143
	v_sub_f32_e32 v137, v143, v137
	v_sub_f32_e32 v137, v141, v137
	v_fma_f32 v141, v143, v136, -v144
	v_fma_f32 v136, v137, v136, v141
	v_add_f32_e32 v137, v144, v136
	v_sub_f32_e32 v141, v137, v144
	v_sub_f32_e32 v136, v136, v141
	v_add_f32_e32 v141, v131, v137
	v_sub_f32_e32 v131, v141, v131
	v_sub_f32_e32 v131, v137, v131
	v_add_f32_e32 v122, v122, v136
	v_add_f32_e32 v122, v131, v122
	v_add_f32_e32 v122, v141, v122
	v_add_f32_e32 v122, 1.0, v122
	v_cvt_i32_f32_e32 v124, v124
	v_ldexp_f32 v122, v122, v124
	v_cmp_nlt_f32_e32 vcc, s34, v123
	v_cndmask_b32_e32 v122, v121, v122, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v123
	v_cndmask_b32_e32 v122, 0, v122, vcc
	v_cmp_eq_f32_e32 vcc, 0, v84
	v_cmp_class_f32_e64 s[0:1], v84, 4
	v_cmp_u_f32_e64 s[2:3], v84, v84
	s_movk_i32 s51, 0x200
	v_cmp_class_f32_e64 s[4:5], v84, s51
	v_bfi_b32 v123, s90, 0, v84
	v_cmp_gt_f32_e64 s[6:7], 0, v84
	s_brev_b32 s15, 1
	v_mov_b32_e32 v143, s13
	v_cndmask_b32_e64 v124, 0, v143, s[6:7]
	v_bfi_b32 v122, s90, v122, v124
	v_cndmask_b32_e32 v122, v122, v123, vcc
	s_mov_b32 s6, 0xff800000
	v_mov_b32_e32 v144, s6
	v_cndmask_b32_e64 v122, v122, v144, s[0:1]
	v_cndmask_b32_e64 v122, v122, v121, s[4:5]
	v_cndmask_b32_e64 v84, v122, v84, s[2:3]
	v_mul_f32_e32 v122, 0x3fe147ae, v84
	v_mul_f32_e32 v122, v85, v122
	v_mul_f32_e32 v123, v86, v122
	s_mov_b32 s0, 0xc1d5b2df
	v_fma_f32 v122, v132, s0, v93
	v_mul_f32_e32 v123, v122, v123
	v_mul_f32_e32 v84, 0x4163d70a, v84
	v_mul_f32_e32 v84, v85, v84
	v_mul_f32_e32 v84, v86, v84
	v_fma_f32 v86, v161, s0, v93
	v_mul_f32_e32 v124, v86, v84
	v_mul_f64 v[84:85], v[95:96], s[8:9]
	v_readlane_b32 s0, v170, 46
	v_readlane_b32 s1, v170, 47
	v_mul_f64 v[84:85], v[84:85], s[0:1]
	v_mul_f64 v[131:132], v[84:85], s[54:55]
	v_rndne_f64_e32 v[131:132], v[131:132]
	v_fma_f64 v[136:137], v[131:132], s[56:57], v[84:85]
	v_mul_f64 v[145:146], v[131:132], s[58:59]
	v_add_f64 v[147:148], v[136:137], v[145:146]
	v_add_f64 v[136:137], v[136:137], -v[147:148]
	v_add_f64 v[136:137], v[136:137], v[145:146]
	v_fma_f64 v[145:146], v[147:148], s[62:63], v[127:128]
	v_fma_f64 v[145:146], v[147:148], v[145:146], s[64:65]
	v_fma_f64 v[145:146], v[147:148], v[145:146], s[66:67]
	v_fma_f64 v[145:146], v[147:148], v[145:146], s[68:69]
	v_fma_f64 v[145:146], v[147:148], v[145:146], s[70:71]
	v_fma_f64 v[145:146], v[147:148], v[145:146], s[72:73]
	v_fma_f64 v[145:146], v[147:148], v[145:146], s[74:75]
	v_fma_f64 v[145:146], v[147:148], v[145:146], s[76:77]
	v_fma_f64 v[145:146], v[147:148], v[145:146], s[52:53]
	v_mul_f64 v[149:150], v[147:148], v[147:148]
	v_fma_f64 v[151:152], v[147:148], v[147:148], -v[149:150]
	v_add_f64 v[153:154], v[136:137], v[136:137]
	v_fma_f64 v[151:152], v[147:148], v[153:154], v[151:152]
	v_fma_f64 v[151:152], v[136:137], v[136:137], v[151:152]
	v_add_f64 v[153:154], v[149:150], v[151:152]
	v_add_f64 v[149:150], v[153:154], -v[149:150]
	v_add_f64 v[149:150], v[151:152], -v[149:150]
	v_mul_f64 v[151:152], v[153:154], v[145:146]
	v_fma_f64 v[153:154], v[153:154], v[145:146], -v[151:152]
	v_fma_f64 v[145:146], v[149:150], v[145:146], v[153:154]
	v_add_f64 v[149:150], v[151:152], v[145:146]
	v_add_f64 v[151:152], v[149:150], -v[151:152]
	v_add_f64 v[145:146], v[145:146], -v[151:152]
	v_add_f64 v[151:152], v[147:148], v[149:150]
	v_add_f64 v[147:148], v[151:152], -v[147:148]
	v_add_f64 v[147:148], v[149:150], -v[147:148]
	v_add_f64 v[136:137], v[136:137], v[145:146]
	v_add_f64 v[136:137], v[147:148], v[136:137]
	v_add_f64 v[136:137], v[151:152], v[136:137]
	v_add_f64 v[136:137], v[136:137], 1.0
	v_cvt_i32_f64_e32 v131, v[131:132]
	v_ldexp_f64 v[131:132], v[136:137], v131
	v_readlane_b32 s0, v170, 48
	v_readlane_b32 s1, v170, 49
	v_fma_f64 v[131:132], v[131:132], s[0:1], 1.0
	v_cmp_nlt_f64_e32 vcc, s[42:43], v[84:85]
	v_cndmask_b32_e32 v132, v129, v132, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[82:83], v[84:85]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v84, 0, v131, vcc
	v_cndmask_b32_e64 v85, v130, v132, s[0:1]
	v_mul_f32_e32 v131, 0xbd19565e, v93
	v_cmp_gt_f32_e32 vcc, s21, v131
	v_cndmask_b32_e32 v132, 0, v142, vcc
	v_add_f32_e32 v131, v131, v132
	v_mul_f32_e32 v132, s26, v131
	v_cndmask_b32_e32 v136, 1.0, v135, vcc
	v_fma_f32 v137, v131, s26, -v132
	v_fma_f32 v137, v131, s22, v137
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v132, v132
	v_mul_f32_e32 v132, v132, v137
	v_mul_f32_e32 v132, v136, v132
	v_cmp_ngt_f32_e32 vcc, s23, v131
	v_cndmask_b32_e32 v132, 0, v132, vcc
	v_cmp_nlt_f32_e32 vcc, s50, v131
	v_cndmask_b32_e32 v131, v121, v132, vcc
	v_cvt_f64_f32_e32 v[131:132], v131
	v_readlane_b32 s0, v170, 50
	v_readlane_b32 s1, v170, 51
	v_fma_f64 v[84:85], v[131:132], s[0:1], v[84:85]
	v_div_scale_f64 v[131:132], s[0:1], v[84:85], v[84:85], 1.0
	v_rcp_f64_e32 v[136:137], v[131:132]
	v_fma_f64 v[145:146], -v[131:132], v[136:137], 1.0
	v_fma_f64 v[136:137], v[136:137], v[145:146], v[136:137]
	v_fma_f64 v[145:146], -v[131:132], v[136:137], 1.0
	v_fma_f64 v[136:137], v[136:137], v[145:146], v[136:137]
	v_div_scale_f64 v[145:146], vcc, 1.0, v[84:85], 1.0
	v_mul_f64 v[147:148], v[145:146], v[136:137]
	v_fma_f64 v[131:132], -v[131:132], v[147:148], v[145:146]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[131:132], v[131:132], v[136:137], v[147:148]
	v_div_fixup_f64 v[84:85], v[131:132], v[84:85], 1.0
	v_cvt_f32_f64_e32 v85, v[84:85]
	v_mul_f32_e32 v84, 0x3e56d36d, v85
	s_mov_b32 s8, 0x40accccd
	v_mul_f32_e32 v84, s8, v84
	s_mov_b32 s7, 0x41300000
	v_div_scale_f32 v131, s[0:1], v102, v102, s7
	v_rcp_f32_e32 v132, v131
	v_fma_f32 v136, -v131, v132, 1.0
	v_fma_f32 v132, v136, v132, v132
	v_div_scale_f32 v136, vcc, s7, v102, s7
	v_mul_f32_e32 v137, v136, v132
	v_fma_f32 v141, -v131, v137, v136
	v_fma_f32 v137, v141, v132, v137
	v_fma_f32 v131, -v131, v137, v136
	v_div_fmas_f32 v131, v131, v132, v137
	v_div_fixup_f32 v131, v131, v102, s7
	v_frexp_mant_f32_e64 v132, |v131|
	v_cmp_gt_f32_e32 vcc, s12, v132
	v_cndmask_b32_e64 v136, 0, 1, vcc
	v_ldexp_f32 v132, v132, v136
	v_frexp_exp_i32_f32_e64 v136, |v131|
	v_subbrev_u32_e32 v136, vcc, 0, v136, vcc
	v_add_f32_e32 v137, -1.0, v132
	v_add_f32_e32 v141, 1.0, v132
	v_sub_f32_e32 v145, v141, v132
	v_sub_f32_e32 v146, v141, v145
	v_sub_f32_e32 v132, v132, v146
	v_sub_f32_e32 v145, 1.0, v145
	v_add_f32_e32 v132, v145, v132
	v_rcp_f32_e32 v145, v141
	v_mul_f32_e32 v146, v137, v145
	v_mul_f32_e32 v147, v141, v146
	v_fma_f32 v141, v146, v141, -v147
	v_fma_f32 v132, v146, v132, v141
	v_add_f32_e32 v141, v147, v132
	v_sub_f32_e32 v147, v141, v147
	v_sub_f32_e32 v132, v132, v147
	v_sub_f32_e32 v147, v137, v141
	v_sub_f32_e32 v137, v137, v147
	v_sub_f32_e32 v137, v137, v141
	v_sub_f32_e32 v132, v137, v132
	v_add_f32_e32 v132, v147, v132
	v_mul_f32_e32 v132, v145, v132
	v_add_f32_e32 v137, v146, v132
	v_sub_f32_e32 v141, v137, v146
	v_sub_f32_e32 v132, v132, v141
	v_mul_f32_e32 v141, v137, v137
	v_add_f32_e32 v145, v132, v132
	v_fma_f32 v146, v137, v137, -v141
	v_fma_f32 v145, v137, v145, v146
	v_fma_f32 v145, v132, v132, v145
	v_add_f32_e32 v146, v141, v145
	v_sub_f32_e32 v141, v146, v141
	v_sub_f32_e32 v141, v145, v141
	v_fma_f32 v145, v146, s48, v126
	v_fma_f32 v145, v146, v145, s93
	v_cvt_f32_i32_e32 v136, v136
	v_mul_f32_e32 v147, s45, v136
	v_fma_f32 v148, v136, s45, -v147
	v_fma_f32 v136, v136, s44, v148
	v_add_f32_e32 v148, v147, v136
	v_sub_f32_e32 v147, v148, v147
	v_sub_f32_e32 v136, v136, v147
	v_ldexp_f32 v147, v137, 1
	v_mul_f32_e32 v149, v137, v146
	v_fma_f32 v150, v146, v137, -v149
	v_mul_f32_e32 v137, v137, v141
	v_fma_f32 v137, v146, v132, v137
	v_add_f32_e32 v137, v150, v137
	v_add_f32_e32 v150, v149, v137
	v_mul_f32_e32 v151, v146, v145
	v_fma_f32 v146, v146, v145, -v151
	v_fma_f32 v141, v141, v145, v146
	v_add_f32_e32 v145, v151, v141
	v_sub_f32_e32 v146, v145, v151
	v_sub_f32_e32 v141, v141, v146
	v_add_f32_e32 v146, s28, v145
	v_add_f32_e32 v151, s41, v146
	v_sub_f32_e32 v145, v145, v151
	v_add_f32_e32 v141, s49, v141
	v_add_f32_e32 v141, v145, v141
	v_add_f32_e32 v145, v146, v141
	v_mul_f32_e32 v151, v150, v145
	v_fma_f32 v152, v150, v145, -v151
	v_sub_f32_e32 v146, v145, v146
	v_sub_f32_e32 v141, v141, v146
	v_sub_f32_e32 v146, v150, v149
	v_sub_f32_e32 v137, v137, v146
	v_mul_f32_e32 v137, v137, v145
	v_fma_f32 v137, v150, v141, v137
	v_add_f32_e32 v137, v152, v137
	v_ldexp_f32 v132, v132, 1
	v_add_f32_e32 v141, v151, v137
	v_sub_f32_e32 v145, v141, v151
	v_sub_f32_e32 v137, v137, v145
	v_add_f32_e32 v145, v147, v141
	v_sub_f32_e32 v146, v145, v147
	v_sub_f32_e32 v141, v141, v146
	v_add_f32_e32 v132, v132, v137
	v_add_f32_e32 v132, v141, v132
	v_add_f32_e32 v137, v145, v132
	v_sub_f32_e32 v141, v137, v145
	v_sub_f32_e32 v132, v132, v141
	v_add_f32_e32 v141, v148, v137
	v_sub_f32_e32 v145, v141, v148
	v_sub_f32_e32 v146, v141, v145
	v_sub_f32_e32 v146, v148, v146
	v_sub_f32_e32 v137, v137, v145
	v_add_f32_e32 v137, v137, v146
	v_add_f32_e32 v145, v136, v132
	v_sub_f32_e32 v146, v145, v136
	v_sub_f32_e32 v147, v145, v146
	v_sub_f32_e32 v136, v136, v147
	v_sub_f32_e32 v132, v132, v146
	v_add_f32_e32 v132, v132, v136
	v_add_f32_e32 v136, v145, v137
	v_add_f32_e32 v137, v141, v136
	v_sub_f32_e32 v141, v137, v141
	v_sub_f32_e32 v136, v136, v141
	v_add_f32_e32 v132, v132, v136
	v_add_f32_e32 v136, v137, v132
	v_sub_f32_e32 v137, v136, v137
	v_sub_f32_e32 v132, v132, v137
	v_mul_f32_e32 v137, 4.0, v136
	v_fma_f32 v141, v136, 4.0, -v137
	v_mul_f32_e32 v136, 0, v136
	v_fma_f32 v132, v132, 4.0, v136
	v_add_f32_e32 v132, v141, v132
	v_add_f32_e32 v136, v137, v132
	v_sub_f32_e32 v141, v136, v137
	v_sub_f32_e32 v132, v132, v141
	v_cmp_class_f32_e64 vcc, v137, s92
	v_cndmask_b32_e32 v136, v136, v137, vcc
	v_cmp_neq_f32_e64 vcc, |v136|, s94
	v_cndmask_b32_e32 v132, 0, v132, vcc
	v_mul_f32_e32 v137, s26, v136
	v_rndne_f32_e32 v137, v137
	v_mul_f32_e32 v141, s31, v137
	v_sub_f32_e32 v145, v136, v141
	v_sub_f32_e32 v146, v145, v136
	v_sub_f32_e32 v147, v145, v146
	v_sub_f32_e32 v147, v136, v147
	v_add_f32_e32 v141, v141, v146
	v_sub_f32_e32 v141, v147, v141
	v_add_f32_e32 v132, v132, v141
	v_add_f32_e32 v141, v145, v132
	v_sub_f32_e32 v145, v141, v145
	v_sub_f32_e32 v132, v132, v145
	v_mul_f32_e32 v145, s30, v137
	v_sub_f32_e32 v146, v141, v145
	v_sub_f32_e32 v141, v141, v146
	v_sub_f32_e32 v141, v141, v145
	v_add_f32_e32 v132, v132, v141
	v_add_f32_e32 v141, v146, v132
	v_sub_f32_e32 v145, v141, v146
	v_sub_f32_e32 v132, v132, v145
	v_mul_f32_e32 v145, s29, v137
	v_sub_f32_e32 v146, v141, v145
	v_sub_f32_e32 v141, v141, v146
	v_sub_f32_e32 v141, v141, v145
	v_add_f32_e32 v132, v132, v141
	v_add_f32_e32 v141, v146, v132
	v_sub_f32_e32 v145, v141, v146
	v_sub_f32_e32 v132, v132, v145
	v_fma_f32 v145, v141, s27, v125
	v_fma_f32 v145, v141, v145, s40
	v_fma_f32 v145, v141, v145, s35
	v_fma_f32 v145, v141, v145, s91
	v_mul_f32_e32 v146, v141, v141
	v_fma_f32 v147, v141, v141, -v146
	v_add_f32_e32 v148, v132, v132
	v_fma_f32 v147, v141, v148, v147
	v_fma_f32 v147, v132, v132, v147
	v_add_f32_e32 v148, v146, v147
	v_mul_f32_e32 v149, v145, v148
	v_sub_f32_e32 v146, v148, v146
	v_sub_f32_e32 v146, v147, v146
	v_fma_f32 v147, v148, v145, -v149
	v_fma_f32 v145, v146, v145, v147
	v_add_f32_e32 v146, v149, v145
	v_sub_f32_e32 v147, v146, v149
	v_sub_f32_e32 v145, v145, v147
	v_add_f32_e32 v147, v141, v146
	v_sub_f32_e32 v141, v147, v141
	v_sub_f32_e32 v141, v146, v141
	v_add_f32_e32 v132, v132, v145
	v_add_f32_e32 v132, v141, v132
	v_add_f32_e32 v132, v147, v132
	v_add_f32_e32 v132, 1.0, v132
	v_cvt_i32_f32_e32 v137, v137
	v_ldexp_f32 v132, v132, v137
	v_cmp_nlt_f32_e32 vcc, s34, v136
	v_cndmask_b32_e32 v132, v121, v132, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v136
	v_cmp_neq_f32_e64 s[0:1], 0, v131
	v_cmp_u_f32_e64 s[2:3], v131, v131
	v_cmp_class_f32_e64 s[4:5], v131, s92
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v132, 0, v132, vcc
	v_cndmask_b32_e64 v132, v132, v121, s[4:5]
	v_cndmask_b32_e64 v131, |v132|, v131, s[2:3]
	v_add_f32_e32 v131, 1.0, v131
	v_div_scale_f32 v132, s[0:1], v131, v131, v84
	v_rcp_f32_e32 v136, v132
	v_fma_f32 v137, -v132, v136, 1.0
	v_fma_f32 v136, v137, v136, v136
	v_div_scale_f32 v137, vcc, v84, v131, v84
	v_mul_f32_e32 v141, v137, v136
	v_fma_f32 v145, -v132, v141, v137
	v_fma_f32 v141, v145, v136, v141
	v_fma_f32 v132, -v132, v141, v137
	v_div_fmas_f32 v132, v132, v136, v141
	v_div_fixup_f32 v84, v132, v131, v84
	s_mov_b32 s6, 0x40dccccd
	v_div_scale_f32 v131, s[0:1], s6, s6, v84
	v_rcp_f32_e32 v132, v131
	v_fma_f32 v136, -v131, v132, 1.0
	v_fma_f32 v132, v136, v132, v132
	v_div_scale_f32 v136, vcc, v84, s6, v84
	v_mul_f32_e32 v137, v136, v132
	v_fma_f32 v141, -v131, v137, v136
	v_fma_f32 v137, v141, v132, v137
	v_fma_f32 v131, -v131, v137, v136
	v_div_fmas_f32 v131, v131, v132, v137
	v_div_fixup_f32 v84, v131, s6, v84
	v_mul_f32_e32 v85, 0x3fd9445f, v85
	v_mul_f32_e32 v85, s8, v85
	v_div_scale_f32 v131, s[0:1], v103, v103, s7
	v_rcp_f32_e32 v132, v131
	v_fma_f32 v136, -v131, v132, 1.0
	v_fma_f32 v132, v136, v132, v132
	v_div_scale_f32 v136, vcc, s7, v103, s7
	v_mul_f32_e32 v137, v136, v132
	v_fma_f32 v141, -v131, v137, v136
	v_fma_f32 v137, v141, v132, v137
	v_fma_f32 v131, -v131, v137, v136
	v_div_fmas_f32 v131, v131, v132, v137
	v_div_fixup_f32 v131, v131, v103, s7
	v_frexp_mant_f32_e64 v132, |v131|
	v_cmp_gt_f32_e32 vcc, s12, v132
	v_cndmask_b32_e64 v136, 0, 1, vcc
	v_ldexp_f32 v132, v132, v136
	v_frexp_exp_i32_f32_e64 v136, |v131|
	v_subbrev_u32_e32 v136, vcc, 0, v136, vcc
	v_add_f32_e32 v137, -1.0, v132
	v_add_f32_e32 v141, 1.0, v132
	v_sub_f32_e32 v145, v141, v132
	v_sub_f32_e32 v146, v141, v145
	v_sub_f32_e32 v132, v132, v146
	v_sub_f32_e32 v145, 1.0, v145
	v_add_f32_e32 v132, v145, v132
	v_rcp_f32_e32 v145, v141
	v_mul_f32_e32 v146, v137, v145
	v_mul_f32_e32 v147, v141, v146
	v_fma_f32 v141, v146, v141, -v147
	v_fma_f32 v132, v146, v132, v141
	v_add_f32_e32 v141, v147, v132
	v_sub_f32_e32 v147, v141, v147
	v_sub_f32_e32 v132, v132, v147
	v_sub_f32_e32 v147, v137, v141
	v_sub_f32_e32 v137, v137, v147
	v_sub_f32_e32 v137, v137, v141
	v_sub_f32_e32 v132, v137, v132
	v_add_f32_e32 v132, v147, v132
	v_mul_f32_e32 v132, v145, v132
	v_add_f32_e32 v137, v146, v132
	v_sub_f32_e32 v141, v137, v146
	v_sub_f32_e32 v132, v132, v141
	v_mul_f32_e32 v141, v137, v137
	v_add_f32_e32 v145, v132, v132
	v_fma_f32 v146, v137, v137, -v141
	v_fma_f32 v145, v137, v145, v146
	v_fma_f32 v145, v132, v132, v145
	v_add_f32_e32 v146, v141, v145
	v_sub_f32_e32 v141, v146, v141
	v_sub_f32_e32 v141, v145, v141
	v_fma_f32 v145, v146, s48, v126
	v_fma_f32 v145, v146, v145, s93
	v_cvt_f32_i32_e32 v136, v136
	v_mul_f32_e32 v147, s45, v136
	v_fma_f32 v148, v136, s45, -v147
	v_fma_f32 v136, v136, s44, v148
	v_add_f32_e32 v148, v147, v136
	v_sub_f32_e32 v147, v148, v147
	v_sub_f32_e32 v136, v136, v147
	v_ldexp_f32 v147, v137, 1
	v_mul_f32_e32 v149, v137, v146
	v_fma_f32 v150, v146, v137, -v149
	v_mul_f32_e32 v137, v137, v141
	v_fma_f32 v137, v146, v132, v137
	v_add_f32_e32 v137, v150, v137
	v_add_f32_e32 v150, v149, v137
	v_mul_f32_e32 v151, v146, v145
	v_fma_f32 v146, v146, v145, -v151
	v_fma_f32 v141, v141, v145, v146
	v_add_f32_e32 v145, v151, v141
	v_sub_f32_e32 v146, v145, v151
	v_sub_f32_e32 v141, v141, v146
	v_add_f32_e32 v146, s28, v145
	v_add_f32_e32 v151, s41, v146
	v_sub_f32_e32 v145, v145, v151
	v_add_f32_e32 v141, s49, v141
	v_add_f32_e32 v141, v145, v141
	v_add_f32_e32 v145, v146, v141
	v_mul_f32_e32 v151, v150, v145
	v_fma_f32 v152, v150, v145, -v151
	v_sub_f32_e32 v146, v145, v146
	v_sub_f32_e32 v141, v141, v146
	v_sub_f32_e32 v146, v150, v149
	v_sub_f32_e32 v137, v137, v146
	v_mul_f32_e32 v137, v137, v145
	v_fma_f32 v137, v150, v141, v137
	v_add_f32_e32 v137, v152, v137
	v_ldexp_f32 v132, v132, 1
	v_add_f32_e32 v141, v151, v137
	v_sub_f32_e32 v145, v141, v151
	v_sub_f32_e32 v137, v137, v145
	v_add_f32_e32 v145, v147, v141
	v_sub_f32_e32 v146, v145, v147
	v_sub_f32_e32 v141, v141, v146
	v_add_f32_e32 v132, v132, v137
	v_add_f32_e32 v132, v141, v132
	v_add_f32_e32 v137, v145, v132
	v_sub_f32_e32 v141, v137, v145
	v_sub_f32_e32 v132, v132, v141
	v_add_f32_e32 v141, v148, v137
	v_sub_f32_e32 v145, v141, v148
	v_sub_f32_e32 v146, v141, v145
	v_sub_f32_e32 v146, v148, v146
	v_sub_f32_e32 v137, v137, v145
	v_add_f32_e32 v137, v137, v146
	v_add_f32_e32 v145, v136, v132
	v_sub_f32_e32 v146, v145, v136
	v_sub_f32_e32 v147, v145, v146
	v_sub_f32_e32 v136, v136, v147
	v_sub_f32_e32 v132, v132, v146
	v_add_f32_e32 v132, v132, v136
	v_add_f32_e32 v136, v145, v137
	v_add_f32_e32 v137, v141, v136
	v_sub_f32_e32 v141, v137, v141
	v_sub_f32_e32 v136, v136, v141
	v_add_f32_e32 v132, v132, v136
	v_add_f32_e32 v136, v137, v132
	v_sub_f32_e32 v137, v136, v137
	v_sub_f32_e32 v132, v132, v137
	v_mul_f32_e32 v137, 4.0, v136
	v_fma_f32 v141, v136, 4.0, -v137
	v_mul_f32_e32 v136, 0, v136
	v_fma_f32 v132, v132, 4.0, v136
	v_add_f32_e32 v132, v141, v132
	v_add_f32_e32 v136, v137, v132
	v_sub_f32_e32 v141, v136, v137
	v_sub_f32_e32 v132, v132, v141
	v_cmp_class_f32_e64 vcc, v137, s92
	v_cndmask_b32_e32 v136, v136, v137, vcc
	v_cmp_neq_f32_e64 vcc, |v136|, s94
	v_cndmask_b32_e32 v132, 0, v132, vcc
	v_mul_f32_e32 v137, s26, v136
	v_rndne_f32_e32 v137, v137
	v_mul_f32_e32 v141, s31, v137
	v_sub_f32_e32 v145, v136, v141
	v_sub_f32_e32 v146, v145, v136
	v_sub_f32_e32 v147, v145, v146
	v_sub_f32_e32 v147, v136, v147
	v_add_f32_e32 v141, v141, v146
	v_sub_f32_e32 v141, v147, v141
	v_add_f32_e32 v132, v132, v141
	v_add_f32_e32 v141, v145, v132
	v_sub_f32_e32 v145, v141, v145
	v_sub_f32_e32 v132, v132, v145
	v_mul_f32_e32 v145, s30, v137
	v_sub_f32_e32 v146, v141, v145
	v_sub_f32_e32 v141, v141, v146
	v_sub_f32_e32 v141, v141, v145
	v_add_f32_e32 v132, v132, v141
	v_add_f32_e32 v141, v146, v132
	v_sub_f32_e32 v145, v141, v146
	v_sub_f32_e32 v132, v132, v145
	v_mul_f32_e32 v145, s29, v137
	v_sub_f32_e32 v146, v141, v145
	v_sub_f32_e32 v141, v141, v146
	v_sub_f32_e32 v141, v141, v145
	v_add_f32_e32 v132, v132, v141
	v_add_f32_e32 v141, v146, v132
	v_sub_f32_e32 v145, v141, v146
	v_sub_f32_e32 v132, v132, v145
	v_fma_f32 v145, v141, s27, v125
	v_fma_f32 v145, v141, v145, s40
	v_fma_f32 v145, v141, v145, s35
	v_fma_f32 v145, v141, v145, s91
	v_mul_f32_e32 v146, v141, v141
	v_fma_f32 v147, v141, v141, -v146
	v_add_f32_e32 v148, v132, v132
	v_fma_f32 v147, v141, v148, v147
	v_fma_f32 v147, v132, v132, v147
	v_add_f32_e32 v148, v146, v147
	v_mul_f32_e32 v149, v145, v148
	v_sub_f32_e32 v146, v148, v146
	v_sub_f32_e32 v146, v147, v146
	v_fma_f32 v147, v148, v145, -v149
	v_fma_f32 v145, v146, v145, v147
	v_add_f32_e32 v146, v149, v145
	v_sub_f32_e32 v147, v146, v149
	v_sub_f32_e32 v145, v145, v147
	v_add_f32_e32 v147, v141, v146
	v_sub_f32_e32 v141, v147, v141
	v_sub_f32_e32 v141, v146, v141
	v_add_f32_e32 v132, v132, v145
	v_add_f32_e32 v132, v141, v132
	v_add_f32_e32 v132, v147, v132
	v_add_f32_e32 v132, 1.0, v132
	v_cvt_i32_f32_e32 v137, v137
	v_ldexp_f32 v132, v132, v137
	v_cmp_nlt_f32_e32 vcc, s34, v136
	v_cndmask_b32_e32 v132, v121, v132, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v136
	v_cmp_neq_f32_e64 s[0:1], 0, v131
	v_cmp_u_f32_e64 s[2:3], v131, v131
	v_cmp_class_f32_e64 s[4:5], v131, s92
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v132, 0, v132, vcc
	v_cndmask_b32_e64 v132, v132, v121, s[4:5]
	v_cndmask_b32_e64 v131, |v132|, v131, s[2:3]
	v_add_f32_e32 v131, 1.0, v131
	v_div_scale_f32 v132, s[0:1], v131, v131, v85
	v_rcp_f32_e32 v136, v132
	v_fma_f32 v137, -v132, v136, 1.0
	v_fma_f32 v136, v137, v136, v136
	v_div_scale_f32 v137, vcc, v85, v131, v85
	v_mul_f32_e32 v141, v137, v136
	v_fma_f32 v145, -v132, v141, v137
	v_fma_f32 v141, v145, v136, v141
	v_fma_f32 v132, -v132, v141, v137
	v_div_fmas_f32 v132, v132, v136, v141
	v_div_fixup_f32 v85, v132, v131, v85
	v_div_scale_f32 v131, s[0:1], s6, s6, v85
	v_rcp_f32_e32 v132, v131
	v_fma_f32 v136, -v131, v132, 1.0
	v_fma_f32 v132, v136, v132, v132
	v_div_scale_f32 v136, vcc, v85, s6, v85
	v_mul_f32_e32 v137, v136, v132
	v_fma_f32 v141, -v131, v137, v136
	v_fma_f32 v137, v141, v132, v137
	v_fma_f32 v131, -v131, v137, v136
	v_div_fmas_f32 v131, v131, v132, v137
	v_div_fixup_f32 v85, v131, s6, v85
	s_mov_b32 s4, 0x42480000
	v_add_f32_e32 v131, s4, v93
	v_cvt_f64_f32_e32 v[131:132], v131
	v_readlane_b32 s2, v172, 21
	v_readlane_b32 s3, v172, 22
	s_mov_b32 s2, s25
	v_div_scale_f64 v[136:137], s[0:1], s[2:3], s[2:3], v[131:132]
	v_rcp_f64_e32 v[145:146], v[136:137]
	v_fma_f64 v[147:148], -v[136:137], v[145:146], 1.0
	v_fma_f64 v[145:146], v[145:146], v[147:148], v[145:146]
	v_fma_f64 v[147:148], -v[136:137], v[145:146], 1.0
	v_fma_f64 v[145:146], v[145:146], v[147:148], v[145:146]
	v_div_scale_f64 v[147:148], vcc, v[131:132], s[2:3], v[131:132]
	v_mul_f64 v[149:150], v[147:148], v[145:146]
	v_fma_f64 v[136:137], -v[136:137], v[149:150], v[147:148]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[136:137], v[136:137], v[145:146], v[149:150]
	v_writelane_b32 v172, s2, 21
	v_writelane_b32 v172, s3, 22
	v_div_fixup_f64 v[131:132], v[136:137], s[2:3], v[131:132]
	v_mul_f64 v[136:137], v[131:132], s[54:55]
	v_rndne_f64_e32 v[136:137], v[136:137]
	v_fma_f64 v[145:146], v[136:137], s[56:57], v[131:132]
	v_mul_f64 v[147:148], v[136:137], s[58:59]
	v_add_f64 v[149:150], v[145:146], v[147:148]
	v_add_f64 v[145:146], v[145:146], -v[149:150]
	v_add_f64 v[145:146], v[145:146], v[147:148]
	v_fma_f64 v[147:148], v[149:150], s[62:63], v[127:128]
	v_fma_f64 v[147:148], v[149:150], v[147:148], s[64:65]
	v_fma_f64 v[147:148], v[149:150], v[147:148], s[66:67]
	v_fma_f64 v[147:148], v[149:150], v[147:148], s[68:69]
	v_fma_f64 v[147:148], v[149:150], v[147:148], s[70:71]
	v_fma_f64 v[147:148], v[149:150], v[147:148], s[72:73]
	v_fma_f64 v[147:148], v[149:150], v[147:148], s[74:75]
	v_fma_f64 v[147:148], v[149:150], v[147:148], s[76:77]
	v_fma_f64 v[147:148], v[149:150], v[147:148], s[52:53]
	v_mul_f64 v[151:152], v[149:150], v[149:150]
	v_fma_f64 v[153:154], v[149:150], v[149:150], -v[151:152]
	v_add_f64 v[155:156], v[145:146], v[145:146]
	v_fma_f64 v[153:154], v[149:150], v[155:156], v[153:154]
	v_fma_f64 v[153:154], v[145:146], v[145:146], v[153:154]
	v_add_f64 v[155:156], v[151:152], v[153:154]
	v_add_f64 v[151:152], v[155:156], -v[151:152]
	v_add_f64 v[151:152], v[153:154], -v[151:152]
	v_mul_f64 v[153:154], v[155:156], v[147:148]
	v_fma_f64 v[155:156], v[155:156], v[147:148], -v[153:154]
	v_fma_f64 v[147:148], v[151:152], v[147:148], v[155:156]
	v_add_f64 v[151:152], v[153:154], v[147:148]
	v_add_f64 v[153:154], v[151:152], -v[153:154]
	v_add_f64 v[147:148], v[147:148], -v[153:154]
	v_add_f64 v[153:154], v[149:150], v[151:152]
	v_add_f64 v[149:150], v[153:154], -v[149:150]
	v_add_f64 v[149:150], v[151:152], -v[149:150]
	v_add_f64 v[145:146], v[145:146], v[147:148]
	v_add_f64 v[145:146], v[149:150], v[145:146]
	v_add_f64 v[145:146], v[153:154], v[145:146]
	v_add_f64 v[145:146], v[145:146], 1.0
	v_cvt_i32_f64_e32 v136, v[136:137]
	v_ldexp_f64 v[136:137], v[145:146], v136
	v_add_f64 v[136:137], v[136:137], 1.0
	v_div_scale_f64 v[145:146], s[0:1], v[136:137], v[136:137], 1.0
	v_rcp_f64_e32 v[147:148], v[145:146]
	v_fma_f64 v[149:150], -v[145:146], v[147:148], 1.0
	v_fma_f64 v[147:148], v[147:148], v[149:150], v[147:148]
	v_fma_f64 v[149:150], -v[145:146], v[147:148], 1.0
	v_fma_f64 v[147:148], v[147:148], v[149:150], v[147:148]
	v_div_scale_f64 v[149:150], vcc, 1.0, v[136:137], 1.0
	v_mul_f64 v[151:152], v[149:150], v[147:148]
	v_fma_f64 v[145:146], -v[145:146], v[151:152], v[149:150]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[145:146], v[145:146], v[147:148], v[151:152]
	v_div_fixup_f64 v[136:137], v[145:146], v[136:137], 1.0
	v_cmp_nlt_f64_e32 vcc, s[42:43], v[131:132]
	v_cndmask_b32_e32 v137, 0, v137, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[82:83], v[131:132]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v131, 0, v136, vcc
	v_cndmask_b32_e64 v132, v130, v137, s[0:1]
	v_cvt_f32_f64_e32 v141, v[131:132]
	v_add_f32_e32 v131, 0x40e00000, v93
	v_cvt_f64_f32_e32 v[131:132], v131
	v_readlane_b32 s0, v170, 52
	v_readlane_b32 s1, v170, 53
	v_mul_f64 v[136:137], v[131:132], s[0:1]
	v_readlane_b32 s0, v170, 54
	v_readlane_b32 s1, v170, 55
	v_mul_f64 v[131:132], v[131:132], s[0:1]
	v_mul_f64 v[145:146], v[131:132], s[54:55]
	v_rndne_f64_e32 v[145:146], v[145:146]
	v_fma_f64 v[147:148], v[145:146], s[56:57], v[131:132]
	v_mul_f64 v[149:150], v[145:146], s[58:59]
	v_add_f64 v[151:152], v[147:148], v[149:150]
	v_add_f64 v[147:148], v[147:148], -v[151:152]
	v_add_f64 v[147:148], v[147:148], v[149:150]
	v_fma_f64 v[149:150], v[151:152], s[62:63], v[127:128]
	v_fma_f64 v[149:150], v[151:152], v[149:150], s[64:65]
	v_fma_f64 v[149:150], v[151:152], v[149:150], s[66:67]
	v_fma_f64 v[149:150], v[151:152], v[149:150], s[68:69]
	v_fma_f64 v[149:150], v[151:152], v[149:150], s[70:71]
	v_fma_f64 v[149:150], v[151:152], v[149:150], s[72:73]
	v_fma_f64 v[149:150], v[151:152], v[149:150], s[74:75]
	v_fma_f64 v[149:150], v[151:152], v[149:150], s[76:77]
	v_fma_f64 v[149:150], v[151:152], v[149:150], s[52:53]
	v_mul_f64 v[153:154], v[151:152], v[151:152]
	v_fma_f64 v[155:156], v[151:152], v[151:152], -v[153:154]
	v_add_f64 v[157:158], v[147:148], v[147:148]
	v_fma_f64 v[155:156], v[151:152], v[157:158], v[155:156]
	v_fma_f64 v[155:156], v[147:148], v[147:148], v[155:156]
	v_add_f64 v[157:158], v[153:154], v[155:156]
	v_add_f64 v[153:154], v[157:158], -v[153:154]
	v_add_f64 v[153:154], v[155:156], -v[153:154]
	v_mul_f64 v[155:156], v[157:158], v[149:150]
	v_fma_f64 v[157:158], v[157:158], v[149:150], -v[155:156]
	v_fma_f64 v[149:150], v[153:154], v[149:150], v[157:158]
	v_add_f64 v[153:154], v[155:156], v[149:150]
	v_add_f64 v[155:156], v[153:154], -v[155:156]
	v_add_f64 v[149:150], v[149:150], -v[155:156]
	v_add_f64 v[155:156], v[151:152], v[153:154]
	v_add_f64 v[151:152], v[155:156], -v[151:152]
	v_add_f64 v[151:152], v[153:154], -v[151:152]
	v_add_f64 v[147:148], v[147:148], v[149:150]
	v_add_f64 v[147:148], v[151:152], v[147:148]
	v_add_f64 v[147:148], v[155:156], v[147:148]
	v_add_f64 v[147:148], v[147:148], 1.0
	v_cvt_i32_f64_e32 v145, v[145:146]
	v_ldexp_f64 v[145:146], v[147:148], v145
	v_add_f64 v[145:146], -v[145:146], 1.0
	v_cmp_nlt_f64_e32 vcc, s[42:43], v[131:132]
	v_cndmask_b32_e32 v146, v120, v146, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[82:83], v[131:132]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v131, 0, v145, vcc
	v_cndmask_b32_e64 v132, v130, v146, s[0:1]
	v_div_scale_f64 v[145:146], s[0:1], v[131:132], v[131:132], v[136:137]
	v_rcp_f64_e32 v[147:148], v[145:146]
	v_fma_f64 v[149:150], -v[145:146], v[147:148], 1.0
	v_fma_f64 v[147:148], v[147:148], v[149:150], v[147:148]
	v_fma_f64 v[149:150], -v[145:146], v[147:148], 1.0
	v_fma_f64 v[147:148], v[147:148], v[149:150], v[147:148]
	v_div_scale_f64 v[149:150], vcc, v[136:137], v[131:132], v[136:137]
	v_mul_f64 v[151:152], v[149:150], v[147:148]
	v_fma_f64 v[145:146], -v[145:146], v[151:152], v[149:150]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[145:146], v[145:146], v[147:148], v[151:152]
	v_div_fixup_f64 v[131:132], v[145:146], v[131:132], v[136:137]
	s_mov_b32 s24, 0x41200000
	v_add_f32_e32 v136, s24, v93
	v_cvt_f64_f32_e32 v[136:137], v136
	v_readlane_b32 s0, v170, 56
	v_readlane_b32 s1, v170, 57
	v_mul_f64 v[145:146], v[136:137], s[0:1]
	v_readlane_b32 s0, v170, 58
	v_readlane_b32 s1, v170, 59
	v_mul_f64 v[136:137], v[136:137], s[0:1]
	v_mul_f64 v[147:148], v[136:137], s[54:55]
	v_rndne_f64_e32 v[147:148], v[147:148]
	v_fma_f64 v[149:150], v[147:148], s[56:57], v[136:137]
	v_mul_f64 v[151:152], v[147:148], s[58:59]
	v_add_f64 v[153:154], v[149:150], v[151:152]
	v_add_f64 v[149:150], v[149:150], -v[153:154]
	v_add_f64 v[149:150], v[149:150], v[151:152]
	v_fma_f64 v[151:152], v[153:154], s[62:63], v[127:128]
	v_fma_f64 v[151:152], v[153:154], v[151:152], s[64:65]
	v_fma_f64 v[151:152], v[153:154], v[151:152], s[66:67]
	v_fma_f64 v[151:152], v[153:154], v[151:152], s[68:69]
	v_fma_f64 v[151:152], v[153:154], v[151:152], s[70:71]
	v_fma_f64 v[151:152], v[153:154], v[151:152], s[72:73]
	v_fma_f64 v[151:152], v[153:154], v[151:152], s[74:75]
	v_fma_f64 v[151:152], v[153:154], v[151:152], s[76:77]
	v_fma_f64 v[151:152], v[153:154], v[151:152], s[52:53]
	v_mul_f64 v[155:156], v[153:154], v[153:154]
	v_fma_f64 v[157:158], v[153:154], v[153:154], -v[155:156]
	v_add_f64 v[159:160], v[149:150], v[149:150]
	v_fma_f64 v[157:158], v[153:154], v[159:160], v[157:158]
	v_fma_f64 v[157:158], v[149:150], v[149:150], v[157:158]
	v_add_f64 v[159:160], v[155:156], v[157:158]
	v_add_f64 v[155:156], v[159:160], -v[155:156]
	v_add_f64 v[155:156], v[157:158], -v[155:156]
	v_mul_f64 v[157:158], v[159:160], v[151:152]
	v_fma_f64 v[159:160], v[159:160], v[151:152], -v[157:158]
	v_fma_f64 v[151:152], v[155:156], v[151:152], v[159:160]
	v_add_f64 v[155:156], v[157:158], v[151:152]
	v_add_f64 v[157:158], v[155:156], -v[157:158]
	v_add_f64 v[151:152], v[151:152], -v[157:158]
	v_add_f64 v[157:158], v[153:154], v[155:156]
	v_add_f64 v[153:154], v[157:158], -v[153:154]
	v_add_f64 v[153:154], v[155:156], -v[153:154]
	v_add_f64 v[149:150], v[149:150], v[151:152]
	v_add_f64 v[149:150], v[153:154], v[149:150]
	v_add_f64 v[149:150], v[157:158], v[149:150]
	v_add_f64 v[149:150], v[149:150], 1.0
	v_cvt_i32_f64_e32 v147, v[147:148]
	v_ldexp_f64 v[147:148], v[149:150], v147
	v_add_f64 v[147:148], v[147:148], -1.0
	v_cmp_nlt_f64_e32 vcc, s[42:43], v[136:137]
	v_cndmask_b32_e32 v148, v129, v148, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[82:83], v[136:137]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v136, 0, v147, vcc
	v_mov_b32_e32 v163, 0xbff00000
	v_cndmask_b32_e64 v137, v163, v148, s[0:1]
	v_div_scale_f64 v[147:148], s[0:1], v[136:137], v[136:137], v[145:146]
	v_rcp_f64_e32 v[149:150], v[147:148]
	v_fma_f64 v[151:152], -v[147:148], v[149:150], 1.0
	v_fma_f64 v[149:150], v[149:150], v[151:152], v[149:150]
	v_fma_f64 v[151:152], -v[147:148], v[149:150], 1.0
	v_fma_f64 v[149:150], v[149:150], v[151:152], v[149:150]
	v_div_scale_f64 v[151:152], vcc, v[145:146], v[136:137], v[145:146]
	v_mul_f64 v[153:154], v[151:152], v[149:150]
	v_fma_f64 v[147:148], -v[147:148], v[153:154], v[151:152]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[147:148], v[147:148], v[149:150], v[153:154]
	v_div_fixup_f64 v[136:137], v[147:148], v[136:137], v[145:146]
	v_add_f64 v[131:132], v[131:132], v[136:137]
	v_div_scale_f64 v[136:137], s[0:1], v[131:132], v[131:132], 1.0
	v_rcp_f64_e32 v[145:146], v[136:137]
	v_fma_f64 v[147:148], -v[136:137], v[145:146], 1.0
	v_fma_f64 v[145:146], v[145:146], v[147:148], v[145:146]
	v_fma_f64 v[147:148], -v[136:137], v[145:146], 1.0
	v_fma_f64 v[145:146], v[145:146], v[147:148], v[145:146]
	v_div_scale_f64 v[147:148], vcc, 1.0, v[131:132], 1.0
	v_mul_f64 v[149:150], v[147:148], v[145:146]
	v_fma_f64 v[136:137], -v[136:137], v[149:150], v[147:148]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[136:137], v[136:137], v[145:146], v[149:150]
	v_div_fixup_f64 v[131:132], v[136:137], v[131:132], 1.0
	v_cvt_f32_f64_e32 v131, v[131:132]
	v_sub_f32_e32 v132, v141, v91
	v_div_scale_f32 v136, s[0:1], v131, v131, v132
	v_rcp_f32_e32 v137, v136
	v_fma_f32 v141, -v136, v137, 1.0
	v_fma_f32 v137, v141, v137, v137
	v_div_scale_f32 v141, vcc, v132, v131, v132
	v_mul_f32_e32 v145, v141, v137
	v_fma_f32 v146, -v136, v145, v141
	v_fma_f32 v145, v146, v137, v145
	v_fma_f32 v136, -v136, v145, v141
	v_div_fmas_f32 v136, v136, v137, v145
	v_div_fixup_f32 v148, v136, v131, v132
	v_readlane_b32 s0, v172, 51
	v_readlane_b32 s1, v172, 52
	s_mov_b32 s0, s25
	v_writelane_b32 v172, s0, 51
	v_writelane_b32 v172, s1, 52
	v_add_f64 v[131:132], v[95:96], s[0:1]
	v_div_scale_f64 v[136:137], s[0:1], s[84:85], s[84:85], v[131:132]
	v_rcp_f64_e32 v[145:146], v[136:137]
	v_fma_f64 v[149:150], -v[136:137], v[145:146], 1.0
	v_fma_f64 v[145:146], v[145:146], v[149:150], v[145:146]
	v_fma_f64 v[149:150], -v[136:137], v[145:146], 1.0
	v_fma_f64 v[145:146], v[145:146], v[149:150], v[145:146]
	v_div_scale_f64 v[149:150], vcc, v[131:132], s[84:85], v[131:132]
	v_mul_f64 v[151:152], v[149:150], v[145:146]
	v_fma_f64 v[136:137], -v[136:137], v[151:152], v[149:150]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[136:137], v[136:137], v[145:146], v[151:152]
	v_div_fixup_f64 v[131:132], v[136:137], s[84:85], v[131:132]
	v_mul_f64 v[136:137], v[131:132], s[54:55]
	v_rndne_f64_e32 v[136:137], v[136:137]
	v_fma_f64 v[145:146], v[136:137], s[56:57], v[131:132]
	v_mul_f64 v[149:150], v[136:137], s[58:59]
	v_add_f64 v[151:152], v[145:146], v[149:150]
	v_add_f64 v[145:146], v[145:146], -v[151:152]
	v_add_f64 v[145:146], v[145:146], v[149:150]
	v_fma_f64 v[149:150], v[151:152], s[62:63], v[127:128]
	v_fma_f64 v[149:150], v[151:152], v[149:150], s[64:65]
	v_fma_f64 v[149:150], v[151:152], v[149:150], s[66:67]
	v_fma_f64 v[149:150], v[151:152], v[149:150], s[68:69]
	v_fma_f64 v[149:150], v[151:152], v[149:150], s[70:71]
	v_fma_f64 v[149:150], v[151:152], v[149:150], s[72:73]
	v_fma_f64 v[149:150], v[151:152], v[149:150], s[74:75]
	v_fma_f64 v[149:150], v[151:152], v[149:150], s[76:77]
	v_fma_f64 v[149:150], v[151:152], v[149:150], s[52:53]
	v_mul_f64 v[153:154], v[151:152], v[151:152]
	v_fma_f64 v[155:156], v[151:152], v[151:152], -v[153:154]
	v_add_f64 v[157:158], v[145:146], v[145:146]
	v_fma_f64 v[155:156], v[151:152], v[157:158], v[155:156]
	v_fma_f64 v[155:156], v[145:146], v[145:146], v[155:156]
	v_add_f64 v[157:158], v[153:154], v[155:156]
	v_add_f64 v[153:154], v[157:158], -v[153:154]
	v_add_f64 v[153:154], v[155:156], -v[153:154]
	v_mul_f64 v[155:156], v[157:158], v[149:150]
	v_fma_f64 v[157:158], v[157:158], v[149:150], -v[155:156]
	v_fma_f64 v[149:150], v[153:154], v[149:150], v[157:158]
	v_add_f64 v[153:154], v[155:156], v[149:150]
	v_add_f64 v[155:156], v[153:154], -v[155:156]
	v_add_f64 v[149:150], v[149:150], -v[155:156]
	v_add_f64 v[155:156], v[151:152], v[153:154]
	v_add_f64 v[151:152], v[155:156], -v[151:152]
	v_add_f64 v[151:152], v[153:154], -v[151:152]
	v_add_f64 v[145:146], v[145:146], v[149:150]
	v_add_f64 v[145:146], v[151:152], v[145:146]
	v_add_f64 v[145:146], v[155:156], v[145:146]
	v_add_f64 v[145:146], v[145:146], 1.0
	v_cvt_i32_f64_e32 v136, v[136:137]
	v_ldexp_f64 v[136:137], v[145:146], v136
	v_add_f64 v[136:137], v[136:137], 1.0
	v_div_scale_f64 v[145:146], s[0:1], v[136:137], v[136:137], 1.0
	v_rcp_f64_e32 v[149:150], v[145:146]
	v_fma_f64 v[151:152], -v[145:146], v[149:150], 1.0
	v_fma_f64 v[149:150], v[149:150], v[151:152], v[149:150]
	v_fma_f64 v[151:152], -v[145:146], v[149:150], 1.0
	v_fma_f64 v[149:150], v[149:150], v[151:152], v[149:150]
	v_div_scale_f64 v[151:152], vcc, 1.0, v[136:137], 1.0
	v_mul_f64 v[153:154], v[151:152], v[149:150]
	v_fma_f64 v[145:146], -v[145:146], v[153:154], v[151:152]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[145:146], v[145:146], v[149:150], v[153:154]
	v_div_fixup_f64 v[136:137], v[145:146], v[136:137], 1.0
	v_cmp_nlt_f64_e32 vcc, s[42:43], v[131:132]
	v_cndmask_b32_e32 v137, 0, v137, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[82:83], v[131:132]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v131, 0, v136, vcc
	v_cndmask_b32_e64 v132, v130, v137, s[0:1]
	v_cvt_f32_f64_e32 v141, v[131:132]
	s_mov_b32 s2, 0x41f00000
	v_add_f32_e32 v131, s2, v93
	v_cvt_f64_f32_e32 v[131:132], v131
	v_readlane_b32 s0, v170, 60
	v_readlane_b32 s1, v170, 61
	v_mul_f64 v[136:137], v[131:132], s[0:1]
	v_readlane_b32 s0, v170, 62
	v_readlane_b32 s1, v170, 63
	v_mul_f64 v[145:146], v[131:132], s[0:1]
	v_mul_f64 v[149:150], v[145:146], s[54:55]
	v_rndne_f64_e32 v[149:150], v[149:150]
	v_fma_f64 v[151:152], v[149:150], s[56:57], v[145:146]
	v_mul_f64 v[153:154], v[149:150], s[58:59]
	v_add_f64 v[155:156], v[151:152], v[153:154]
	v_add_f64 v[151:152], v[151:152], -v[155:156]
	v_add_f64 v[151:152], v[151:152], v[153:154]
	v_fma_f64 v[153:154], v[155:156], s[62:63], v[127:128]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[64:65]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[66:67]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[68:69]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[70:71]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[72:73]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[74:75]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[76:77]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[52:53]
	v_mul_f64 v[157:158], v[155:156], v[155:156]
	v_fma_f64 v[159:160], v[155:156], v[155:156], -v[157:158]
	v_add_f64 v[161:162], v[151:152], v[151:152]
	v_fma_f64 v[159:160], v[155:156], v[161:162], v[159:160]
	v_fma_f64 v[159:160], v[151:152], v[151:152], v[159:160]
	v_add_f64 v[161:162], v[157:158], v[159:160]
	v_add_f64 v[157:158], v[161:162], -v[157:158]
	v_add_f64 v[157:158], v[159:160], -v[157:158]
	v_mul_f64 v[159:160], v[161:162], v[153:154]
	v_fma_f64 v[161:162], v[161:162], v[153:154], -v[159:160]
	v_fma_f64 v[153:154], v[157:158], v[153:154], v[161:162]
	v_add_f64 v[157:158], v[159:160], v[153:154]
	v_add_f64 v[159:160], v[157:158], -v[159:160]
	v_add_f64 v[153:154], v[153:154], -v[159:160]
	v_add_f64 v[159:160], v[155:156], v[157:158]
	v_add_f64 v[155:156], v[159:160], -v[155:156]
	v_add_f64 v[155:156], v[157:158], -v[155:156]
	v_add_f64 v[151:152], v[151:152], v[153:154]
	v_add_f64 v[151:152], v[155:156], v[151:152]
	v_add_f64 v[151:152], v[159:160], v[151:152]
	v_add_f64 v[151:152], v[151:152], 1.0
	v_cvt_i32_f64_e32 v147, v[149:150]
	v_ldexp_f64 v[149:150], v[151:152], v147
	v_add_f64 v[149:150], -v[149:150], 1.0
	v_cmp_nlt_f64_e32 vcc, s[42:43], v[145:146]
	v_cndmask_b32_e32 v120, v120, v150, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[82:83], v[145:146]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v145, 0, v149, vcc
	v_cndmask_b32_e64 v146, v130, v120, s[0:1]
	v_div_scale_f64 v[149:150], s[0:1], v[145:146], v[145:146], v[136:137]
	v_rcp_f64_e32 v[151:152], v[149:150]
	v_fma_f64 v[153:154], -v[149:150], v[151:152], 1.0
	v_fma_f64 v[151:152], v[151:152], v[153:154], v[151:152]
	v_fma_f64 v[153:154], -v[149:150], v[151:152], 1.0
	v_fma_f64 v[151:152], v[151:152], v[153:154], v[151:152]
	v_div_scale_f64 v[153:154], vcc, v[136:137], v[145:146], v[136:137]
	v_mul_f64 v[155:156], v[153:154], v[151:152]
	v_fma_f64 v[149:150], -v[149:150], v[155:156], v[153:154]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[149:150], v[149:150], v[151:152], v[155:156]
	v_div_fixup_f64 v[136:137], v[149:150], v[145:146], v[136:137]
	v_readlane_b32 s0, v171, 0
	v_readlane_b32 s1, v171, 1
	v_mul_f64 v[145:146], v[131:132], s[0:1]
	v_readlane_b32 s0, v171, 2
	v_readlane_b32 s1, v171, 3
	v_mul_f64 v[131:132], v[131:132], s[0:1]
	v_mul_f64 v[149:150], v[131:132], s[54:55]
	v_rndne_f64_e32 v[149:150], v[149:150]
	v_fma_f64 v[151:152], v[149:150], s[56:57], v[131:132]
	v_mul_f64 v[153:154], v[149:150], s[58:59]
	v_add_f64 v[155:156], v[151:152], v[153:154]
	v_add_f64 v[151:152], v[151:152], -v[155:156]
	v_add_f64 v[151:152], v[151:152], v[153:154]
	v_fma_f64 v[153:154], v[155:156], s[62:63], v[127:128]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[64:65]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[66:67]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[68:69]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[70:71]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[72:73]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[74:75]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[76:77]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[52:53]
	v_mul_f64 v[157:158], v[155:156], v[155:156]
	v_fma_f64 v[159:160], v[155:156], v[155:156], -v[157:158]
	v_add_f64 v[161:162], v[151:152], v[151:152]
	v_fma_f64 v[159:160], v[155:156], v[161:162], v[159:160]
	v_fma_f64 v[159:160], v[151:152], v[151:152], v[159:160]
	v_add_f64 v[161:162], v[157:158], v[159:160]
	v_add_f64 v[157:158], v[161:162], -v[157:158]
	v_add_f64 v[157:158], v[159:160], -v[157:158]
	v_mul_f64 v[159:160], v[161:162], v[153:154]
	v_fma_f64 v[161:162], v[161:162], v[153:154], -v[159:160]
	v_fma_f64 v[153:154], v[157:158], v[153:154], v[161:162]
	v_add_f64 v[157:158], v[159:160], v[153:154]
	v_add_f64 v[159:160], v[157:158], -v[159:160]
	v_add_f64 v[153:154], v[153:154], -v[159:160]
	v_add_f64 v[159:160], v[155:156], v[157:158]
	v_add_f64 v[155:156], v[159:160], -v[155:156]
	v_add_f64 v[155:156], v[157:158], -v[155:156]
	v_add_f64 v[151:152], v[151:152], v[153:154]
	v_add_f64 v[151:152], v[155:156], v[151:152]
	v_add_f64 v[151:152], v[159:160], v[151:152]
	v_add_f64 v[151:152], v[151:152], 1.0
	v_cvt_i32_f64_e32 v120, v[149:150]
	v_ldexp_f64 v[149:150], v[151:152], v120
	v_add_f64 v[149:150], v[149:150], -1.0
	v_cmp_nlt_f64_e32 vcc, s[42:43], v[131:132]
	v_cndmask_b32_e32 v120, v129, v150, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[82:83], v[131:132]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v131, 0, v149, vcc
	v_cndmask_b32_e64 v132, v163, v120, s[0:1]
	v_div_scale_f64 v[149:150], s[0:1], v[131:132], v[131:132], v[145:146]
	v_rcp_f64_e32 v[151:152], v[149:150]
	v_fma_f64 v[153:154], -v[149:150], v[151:152], 1.0
	v_fma_f64 v[151:152], v[151:152], v[153:154], v[151:152]
	v_fma_f64 v[153:154], -v[149:150], v[151:152], 1.0
	v_fma_f64 v[151:152], v[151:152], v[153:154], v[151:152]
	v_div_scale_f64 v[153:154], vcc, v[145:146], v[131:132], v[145:146]
	v_mul_f64 v[155:156], v[153:154], v[151:152]
	v_fma_f64 v[149:150], -v[149:150], v[155:156], v[153:154]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[149:150], v[149:150], v[151:152], v[155:156]
	v_div_fixup_f64 v[131:132], v[149:150], v[131:132], v[145:146]
	v_add_f64 v[131:132], v[136:137], v[131:132]
	v_div_scale_f64 v[136:137], s[0:1], v[131:132], v[131:132], 1.0
	v_rcp_f64_e32 v[145:146], v[136:137]
	v_fma_f64 v[149:150], -v[136:137], v[145:146], 1.0
	v_fma_f64 v[145:146], v[145:146], v[149:150], v[145:146]
	v_fma_f64 v[149:150], -v[136:137], v[145:146], 1.0
	v_fma_f64 v[145:146], v[145:146], v[149:150], v[145:146]
	v_div_scale_f64 v[149:150], vcc, 1.0, v[131:132], 1.0
	v_mul_f64 v[151:152], v[149:150], v[145:146]
	v_fma_f64 v[136:137], -v[136:137], v[151:152], v[149:150]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[136:137], v[136:137], v[145:146], v[151:152]
	v_div_fixup_f64 v[131:132], v[136:137], v[131:132], 1.0
	v_cvt_f32_f64_e32 v120, v[131:132]
	v_sub_f32_e32 v131, v141, v97
	v_div_scale_f32 v132, s[0:1], v120, v120, v131
	v_rcp_f32_e32 v136, v132
	v_fma_f32 v137, -v132, v136, 1.0
	v_fma_f32 v136, v137, v136, v136
	v_div_scale_f32 v137, vcc, v131, v120, v131
	v_mul_f32_e32 v141, v137, v136
	v_fma_f32 v145, -v132, v141, v137
	v_fma_f32 v141, v145, v136, v141
	v_fma_f32 v132, -v132, v141, v137
	v_div_fmas_f32 v132, v132, v136, v141
	v_div_fixup_f32 v132, v132, v120, v131
	v_add_u32_e32 v136, vcc, 48, v74
	v_addc_u32_e32 v137, vcc, 0, v75, vcc
	v_readlane_b32 s0, v172, 53
	v_readlane_b32 s1, v172, 54
	s_mov_b32 s0, s25
	v_writelane_b32 v172, s0, 53
	v_writelane_b32 v172, s1, 54
	v_add_f64 v[145:146], v[95:96], s[0:1]
	v_readlane_b32 s6, v172, 55
	v_readlane_b32 s7, v172, 56
	s_mov_b32 s6, s25
	v_div_scale_f64 v[149:150], s[0:1], s[6:7], s[6:7], v[145:146]
	v_rcp_f64_e32 v[151:152], v[149:150]
	v_fma_f64 v[153:154], -v[149:150], v[151:152], 1.0
	v_fma_f64 v[151:152], v[151:152], v[153:154], v[151:152]
	v_fma_f64 v[153:154], -v[149:150], v[151:152], 1.0
	v_fma_f64 v[151:152], v[151:152], v[153:154], v[151:152]
	v_div_scale_f64 v[153:154], vcc, v[145:146], s[6:7], v[145:146]
	v_mul_f64 v[155:156], v[153:154], v[151:152]
	v_fma_f64 v[149:150], -v[149:150], v[155:156], v[153:154]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[149:150], v[149:150], v[151:152], v[155:156]
	v_writelane_b32 v172, s6, 55
	v_writelane_b32 v172, s7, 56
	v_div_fixup_f64 v[149:150], v[149:150], s[6:7], v[145:146]
	v_mul_f64 v[151:152], v[149:150], s[54:55]
	v_rndne_f64_e32 v[151:152], v[151:152]
	v_fma_f64 v[153:154], v[151:152], s[56:57], v[149:150]
	v_mul_f64 v[155:156], v[151:152], s[58:59]
	v_add_f64 v[157:158], v[153:154], v[155:156]
	v_add_f64 v[153:154], v[153:154], -v[157:158]
	v_add_f64 v[153:154], v[153:154], v[155:156]
	v_fma_f64 v[155:156], v[157:158], s[62:63], v[127:128]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[64:65]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[66:67]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[68:69]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[70:71]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[72:73]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[74:75]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[76:77]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[52:53]
	v_mul_f64 v[159:160], v[157:158], v[157:158]
	v_fma_f64 v[161:162], v[157:158], v[157:158], -v[159:160]
	v_add_f64 v[163:164], v[153:154], v[153:154]
	v_fma_f64 v[161:162], v[157:158], v[163:164], v[161:162]
	v_fma_f64 v[161:162], v[153:154], v[153:154], v[161:162]
	v_add_f64 v[163:164], v[159:160], v[161:162]
	v_add_f64 v[159:160], v[163:164], -v[159:160]
	v_add_f64 v[159:160], v[161:162], -v[159:160]
	v_mul_f64 v[161:162], v[163:164], v[155:156]
	v_fma_f64 v[163:164], v[163:164], v[155:156], -v[161:162]
	v_fma_f64 v[155:156], v[159:160], v[155:156], v[163:164]
	v_add_f64 v[159:160], v[161:162], v[155:156]
	v_add_f64 v[161:162], v[159:160], -v[161:162]
	v_add_f64 v[155:156], v[155:156], -v[161:162]
	v_add_f64 v[161:162], v[157:158], v[159:160]
	v_add_f64 v[157:158], v[161:162], -v[157:158]
	v_add_f64 v[157:158], v[159:160], -v[157:158]
	v_add_f64 v[153:154], v[153:154], v[155:156]
	v_add_f64 v[153:154], v[157:158], v[153:154]
	v_add_f64 v[153:154], v[161:162], v[153:154]
	v_add_f64 v[153:154], v[153:154], 1.0
	v_cvt_i32_f64_e32 v120, v[151:152]
	v_ldexp_f64 v[151:152], v[153:154], v120
	v_add_f64 v[151:152], v[151:152], 1.0
	v_div_scale_f64 v[153:154], s[0:1], v[151:152], v[151:152], 1.0
	v_rcp_f64_e32 v[155:156], v[153:154]
	v_fma_f64 v[157:158], -v[153:154], v[155:156], 1.0
	v_fma_f64 v[155:156], v[155:156], v[157:158], v[155:156]
	v_fma_f64 v[157:158], -v[153:154], v[155:156], 1.0
	v_fma_f64 v[155:156], v[155:156], v[157:158], v[155:156]
	v_div_scale_f64 v[157:158], vcc, 1.0, v[151:152], 1.0
	v_mul_f64 v[159:160], v[157:158], v[155:156]
	v_fma_f64 v[153:154], -v[153:154], v[159:160], v[157:158]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[153:154], v[153:154], v[155:156], v[159:160]
	v_div_fixup_f64 v[151:152], v[153:154], v[151:152], 1.0
	v_cmp_nlt_f64_e32 vcc, s[42:43], v[149:150]
	v_cndmask_b32_e32 v120, 0, v152, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[82:83], v[149:150]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v149, 0, v151, vcc
	v_cndmask_b32_e64 v150, v130, v120, s[0:1]
	v_cvt_f32_f64_e32 v141, v[149:150]
	v_readlane_b32 s0, v172, 57
	v_readlane_b32 s1, v172, 58
	s_mov_b32 s0, s25
	v_writelane_b32 v172, s0, 57
	v_writelane_b32 v172, s1, 58
	v_add_f64 v[149:150], v[95:96], s[0:1]
	v_readlane_b32 s6, v172, 59
	v_readlane_b32 s7, v172, 60
	s_mov_b32 s6, s25
	v_div_scale_f64 v[151:152], s[0:1], s[6:7], s[6:7], v[149:150]
	v_rcp_f64_e32 v[153:154], v[151:152]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_div_scale_f64 v[155:156], vcc, v[149:150], s[6:7], v[149:150]
	v_mul_f64 v[157:158], v[155:156], v[153:154]
	v_fma_f64 v[151:152], -v[151:152], v[157:158], v[155:156]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[151:152], v[151:152], v[153:154], v[157:158]
	v_div_fixup_f64 v[149:150], v[151:152], s[6:7], v[149:150]
	v_mul_f64 v[151:152], v[149:150], s[54:55]
	v_rndne_f64_e32 v[151:152], v[151:152]
	v_fma_f64 v[153:154], v[151:152], s[56:57], v[149:150]
	v_mul_f64 v[155:156], v[151:152], s[58:59]
	v_add_f64 v[157:158], v[153:154], v[155:156]
	v_add_f64 v[153:154], v[153:154], -v[157:158]
	v_add_f64 v[153:154], v[153:154], v[155:156]
	v_fma_f64 v[155:156], v[157:158], s[62:63], v[127:128]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[64:65]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[66:67]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[68:69]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[70:71]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[72:73]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[74:75]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[76:77]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[52:53]
	v_mul_f64 v[159:160], v[157:158], v[157:158]
	v_fma_f64 v[161:162], v[157:158], v[157:158], -v[159:160]
	v_add_f64 v[163:164], v[153:154], v[153:154]
	v_fma_f64 v[161:162], v[157:158], v[163:164], v[161:162]
	v_fma_f64 v[161:162], v[153:154], v[153:154], v[161:162]
	v_add_f64 v[163:164], v[159:160], v[161:162]
	v_add_f64 v[159:160], v[163:164], -v[159:160]
	v_add_f64 v[159:160], v[161:162], -v[159:160]
	v_mul_f64 v[161:162], v[163:164], v[155:156]
	v_fma_f64 v[163:164], v[163:164], v[155:156], -v[161:162]
	v_fma_f64 v[155:156], v[159:160], v[155:156], v[163:164]
	v_add_f64 v[159:160], v[161:162], v[155:156]
	v_add_f64 v[161:162], v[159:160], -v[161:162]
	v_add_f64 v[155:156], v[155:156], -v[161:162]
	v_add_f64 v[161:162], v[157:158], v[159:160]
	v_add_f64 v[157:158], v[161:162], -v[157:158]
	v_add_f64 v[157:158], v[159:160], -v[157:158]
	v_add_f64 v[153:154], v[153:154], v[155:156]
	v_add_f64 v[153:154], v[157:158], v[153:154]
	v_add_f64 v[153:154], v[161:162], v[153:154]
	v_add_f64 v[153:154], v[153:154], 1.0
	v_cvt_i32_f64_e32 v120, v[151:152]
	v_ldexp_f64 v[151:152], v[153:154], v120
	v_add_f64 v[151:152], v[151:152], 1.0
	v_cmp_nlt_f64_e32 vcc, s[42:43], v[149:150]
	v_cndmask_b32_e32 v120, v129, v152, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[82:83], v[149:150]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v149, 0, v151, vcc
	v_cndmask_b32_e64 v150, v130, v120, s[0:1]
	v_div_scale_f64 v[151:152], s[0:1], v[149:150], v[149:150], 1.0
	v_rcp_f64_e32 v[153:154], v[151:152]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_div_scale_f64 v[155:156], vcc, 1.0, v[149:150], 1.0
	v_mul_f64 v[157:158], v[155:156], v[153:154]
	v_fma_f64 v[151:152], -v[151:152], v[157:158], v[155:156]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[151:152], v[151:152], v[153:154], v[157:158]
	v_div_fixup_f64 v[151:152], v[151:152], v[149:150], 1.0
	v_cvt_f32_f64_e32 v165, v[151:152]
	v_readlane_b32 s8, v172, 61
	v_readlane_b32 s9, v172, 62
	s_mov_b32 s8, s25
	v_div_scale_f64 v[151:152], s[0:1], s[8:9], s[8:9], v[145:146]
	v_rcp_f64_e32 v[153:154], v[151:152]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_div_scale_f64 v[155:156], vcc, v[145:146], s[8:9], v[145:146]
	v_mul_f64 v[157:158], v[155:156], v[153:154]
	v_fma_f64 v[151:152], -v[151:152], v[157:158], v[155:156]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[151:152], v[151:152], v[153:154], v[157:158]
	v_writelane_b32 v172, s8, 61
	v_writelane_b32 v172, s9, 62
	v_div_fixup_f64 v[145:146], v[151:152], s[8:9], v[145:146]
	v_mul_f64 v[151:152], v[145:146], s[54:55]
	v_rndne_f64_e32 v[151:152], v[151:152]
	v_fma_f64 v[153:154], v[151:152], s[56:57], v[145:146]
	v_mul_f64 v[155:156], v[151:152], s[58:59]
	v_add_f64 v[157:158], v[153:154], v[155:156]
	v_add_f64 v[153:154], v[153:154], -v[157:158]
	v_add_f64 v[153:154], v[153:154], v[155:156]
	v_fma_f64 v[155:156], v[157:158], s[62:63], v[127:128]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[64:65]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[66:67]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[68:69]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[70:71]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[72:73]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[74:75]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[76:77]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[52:53]
	v_mul_f64 v[159:160], v[157:158], v[157:158]
	v_fma_f64 v[161:162], v[157:158], v[157:158], -v[159:160]
	v_add_f64 v[163:164], v[153:154], v[153:154]
	v_fma_f64 v[161:162], v[157:158], v[163:164], v[161:162]
	v_fma_f64 v[161:162], v[153:154], v[153:154], v[161:162]
	v_add_f64 v[163:164], v[159:160], v[161:162]
	v_add_f64 v[159:160], v[163:164], -v[159:160]
	v_add_f64 v[159:160], v[161:162], -v[159:160]
	v_mul_f64 v[161:162], v[163:164], v[155:156]
	v_fma_f64 v[163:164], v[163:164], v[155:156], -v[161:162]
	v_fma_f64 v[155:156], v[159:160], v[155:156], v[163:164]
	v_add_f64 v[159:160], v[161:162], v[155:156]
	v_add_f64 v[161:162], v[159:160], -v[161:162]
	v_add_f64 v[155:156], v[155:156], -v[161:162]
	v_add_f64 v[161:162], v[157:158], v[159:160]
	v_add_f64 v[157:158], v[161:162], -v[157:158]
	v_add_f64 v[157:158], v[159:160], -v[157:158]
	v_add_f64 v[153:154], v[153:154], v[155:156]
	v_add_f64 v[153:154], v[157:158], v[153:154]
	v_add_f64 v[153:154], v[161:162], v[153:154]
	v_add_f64 v[153:154], v[153:154], 1.0
	v_cvt_i32_f64_e32 v120, v[151:152]
	v_ldexp_f64 v[151:152], v[153:154], v120
	v_add_f64 v[151:152], v[151:152], 1.0
	v_readlane_b32 s8, v172, 63
	v_readlane_b32 s9, v173, 0
	s_mov_b32 s8, s25
	v_div_scale_f64 v[153:154], s[0:1], v[151:152], v[151:152], s[8:9]
	v_rcp_f64_e32 v[155:156], v[153:154]
	v_fma_f64 v[157:158], -v[153:154], v[155:156], 1.0
	v_fma_f64 v[155:156], v[155:156], v[157:158], v[155:156]
	v_fma_f64 v[157:158], -v[153:154], v[155:156], 1.0
	v_fma_f64 v[155:156], v[155:156], v[157:158], v[155:156]
	v_div_scale_f64 v[157:158], vcc, s[8:9], v[151:152], s[8:9]
	v_mul_f64 v[159:160], v[157:158], v[155:156]
	v_fma_f64 v[153:154], -v[153:154], v[159:160], v[157:158]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[153:154], v[153:154], v[155:156], v[159:160]
	v_writelane_b32 v172, s8, 63
	v_writelane_b32 v173, s9, 0
	v_div_fixup_f64 v[151:152], v[153:154], v[151:152], s[8:9]
	v_add_f64 v[151:152], v[151:152], 0.5
	v_cmp_nlt_f64_e32 vcc, s[42:43], v[145:146]
	v_mov_b32_e32 v120, s53
	v_cndmask_b32_e32 v120, v120, v152, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[82:83], v[145:146]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v145, 0, v151, vcc
	v_mov_b32_e32 v131, 0x40230000
	v_cndmask_b32_e64 v146, v131, v120, s[0:1]
	v_cvt_f32_f64_e32 v120, v[145:146]
	v_readlane_b32 s0, v173, 1
	v_readlane_b32 s1, v173, 2
	s_mov_b32 s0, s25
	v_writelane_b32 v173, s0, 1
	v_writelane_b32 v173, s1, 2
	v_add_f64 v[145:146], v[95:96], s[0:1]
	v_div_scale_f64 v[151:152], s[0:1], s[6:7], s[6:7], v[145:146]
	v_rcp_f64_e32 v[153:154], v[151:152]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_div_scale_f64 v[155:156], vcc, v[145:146], s[6:7], v[145:146]
	v_mul_f64 v[157:158], v[155:156], v[153:154]
	v_fma_f64 v[151:152], -v[151:152], v[157:158], v[155:156]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[151:152], v[151:152], v[153:154], v[157:158]
	v_writelane_b32 v172, s6, 59
	v_writelane_b32 v172, s7, 60
	v_div_fixup_f64 v[145:146], v[151:152], s[6:7], v[145:146]
	v_mul_f64 v[151:152], v[145:146], s[54:55]
	v_rndne_f64_e32 v[151:152], v[151:152]
	v_fma_f64 v[153:154], v[151:152], s[56:57], v[145:146]
	v_mul_f64 v[155:156], v[151:152], s[58:59]
	v_add_f64 v[157:158], v[153:154], v[155:156]
	v_add_f64 v[153:154], v[153:154], -v[157:158]
	v_add_f64 v[153:154], v[153:154], v[155:156]
	v_fma_f64 v[155:156], v[157:158], s[62:63], v[127:128]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[64:65]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[66:67]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[68:69]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[70:71]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[72:73]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[74:75]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[76:77]
	v_fma_f64 v[155:156], v[157:158], v[155:156], s[52:53]
	v_mul_f64 v[159:160], v[157:158], v[157:158]
	v_fma_f64 v[161:162], v[157:158], v[157:158], -v[159:160]
	v_add_f64 v[163:164], v[153:154], v[153:154]
	v_fma_f64 v[161:162], v[157:158], v[163:164], v[161:162]
	v_fma_f64 v[161:162], v[153:154], v[153:154], v[161:162]
	v_add_f64 v[163:164], v[159:160], v[161:162]
	v_add_f64 v[159:160], v[163:164], -v[159:160]
	v_add_f64 v[159:160], v[161:162], -v[159:160]
	v_mul_f64 v[161:162], v[163:164], v[155:156]
	v_fma_f64 v[163:164], v[163:164], v[155:156], -v[161:162]
	v_fma_f64 v[155:156], v[159:160], v[155:156], v[163:164]
	v_add_f64 v[159:160], v[161:162], v[155:156]
	v_add_f64 v[161:162], v[159:160], -v[161:162]
	v_add_f64 v[155:156], v[155:156], -v[161:162]
	v_add_f64 v[161:162], v[157:158], v[159:160]
	v_add_f64 v[157:158], v[161:162], -v[157:158]
	v_add_f64 v[157:158], v[159:160], -v[157:158]
	v_add_f64 v[153:154], v[153:154], v[155:156]
	v_add_f64 v[153:154], v[157:158], v[153:154]
	v_add_f64 v[153:154], v[161:162], v[153:154]
	v_add_f64 v[153:154], v[153:154], 1.0
	v_cvt_i32_f64_e32 v131, v[151:152]
	v_ldexp_f64 v[151:152], v[153:154], v131
	v_add_f64 v[151:152], v[151:152], 1.0
	v_cmp_nlt_f64_e32 vcc, s[42:43], v[145:146]
	v_cndmask_b32_e32 v131, v129, v152, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[82:83], v[145:146]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v145, 0, v151, vcc
	v_cndmask_b32_e64 v146, v130, v131, s[0:1]
	v_readlane_b32 s6, v173, 3
	v_readlane_b32 s7, v173, 4
	s_mov_b32 s6, s25
	v_div_scale_f64 v[151:152], s[0:1], v[145:146], v[145:146], s[6:7]
	v_rcp_f64_e32 v[153:154], v[151:152]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_div_scale_f64 v[155:156], vcc, s[6:7], v[145:146], s[6:7]
	v_mul_f64 v[157:158], v[155:156], v[153:154]
	v_fma_f64 v[151:152], -v[151:152], v[157:158], v[155:156]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[151:152], v[151:152], v[153:154], v[157:158]
	v_writelane_b32 v173, s6, 3
	v_writelane_b32 v173, s7, 4
	v_div_fixup_f64 v[151:152], v[151:152], v[145:146], s[6:7]
	v_readlane_b32 s0, v173, 5
	v_readlane_b32 s1, v173, 6
	s_mov_b32 s0, s25
	v_writelane_b32 v173, s0, 5
	v_writelane_b32 v173, s1, 6
	v_add_f64 v[151:152], v[151:152], s[0:1]
	v_cvt_f32_f64_e32 v147, v[151:152]
	v_readlane_b32 s6, v173, 7
	v_readlane_b32 s7, v173, 8
	s_mov_b32 s6, s25
	v_div_scale_f64 v[151:152], s[0:1], v[145:146], v[145:146], s[6:7]
	v_rcp_f64_e32 v[153:154], v[151:152]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_div_scale_f64 v[155:156], vcc, s[6:7], v[145:146], s[6:7]
	v_mul_f64 v[157:158], v[155:156], v[153:154]
	v_fma_f64 v[151:152], -v[151:152], v[157:158], v[155:156]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[151:152], v[151:152], v[153:154], v[157:158]
	v_writelane_b32 v173, s6, 7
	v_writelane_b32 v173, s7, 8
	v_div_fixup_f64 v[145:146], v[151:152], v[145:146], s[6:7]
	v_readlane_b32 s0, v173, 9
	v_readlane_b32 s1, v173, 10
	s_mov_b32 s0, s25
	v_writelane_b32 v173, s0, 9
	v_writelane_b32 v173, s1, 10
	v_add_f64 v[145:146], v[145:146], s[0:1]
	v_cvt_f32_f64_e32 v146, v[145:146]
	v_sub_f32_e32 v131, v141, v83
	v_div_scale_f32 v145, s[0:1], v120, v120, v131
	v_rcp_f32_e32 v151, v145
	v_fma_f32 v152, -v145, v151, 1.0
	v_fma_f32 v151, v152, v151, v151
	v_div_scale_f32 v152, vcc, v131, v120, v131
	v_mul_f32_e32 v153, v152, v151
	v_fma_f32 v154, -v145, v153, v152
	v_fma_f32 v153, v154, v151, v153
	v_fma_f32 v145, -v145, v153, v152
	v_div_fmas_f32 v145, v145, v151, v153
	v_div_fixup_f32 v131, v145, v120, v131
	v_sub_f32_e32 v120, v165, v88
	v_div_scale_f32 v145, s[0:1], v147, v147, v120
	v_rcp_f32_e32 v151, v145
	v_fma_f32 v152, -v145, v151, 1.0
	v_fma_f32 v151, v152, v151, v151
	v_div_scale_f32 v152, vcc, v120, v147, v120
	v_mul_f32_e32 v153, v152, v151
	v_fma_f32 v154, -v145, v153, v152
	v_fma_f32 v153, v154, v151, v153
	v_fma_f32 v145, -v145, v153, v152
	v_div_fmas_f32 v145, v145, v151, v153
	v_div_fixup_f32 v145, v145, v147, v120
	v_add_u32_e32 v151, vcc, 32, v74
	v_addc_u32_e32 v152, vcc, 0, v75, vcc
	v_sub_f32_e32 v120, v165, v94
	v_div_scale_f32 v147, s[0:1], v146, v146, v120
	v_rcp_f32_e32 v153, v147
	v_fma_f32 v154, -v147, v153, 1.0
	v_fma_f32 v153, v154, v153, v153
	v_div_scale_f32 v154, vcc, v120, v146, v120
	v_mul_f32_e32 v155, v154, v153
	v_fma_f32 v156, -v147, v155, v154
	v_fma_f32 v155, v156, v153, v155
	v_fma_f32 v147, -v147, v155, v154
	v_div_fmas_f32 v147, v147, v153, v155
	v_div_fixup_f32 v120, v147, v146, v120
	v_add_u32_e32 v146, vcc, 0x9c, v74
	v_addc_u32_e32 v147, vcc, 0, v75, vcc
	flat_store_dword v[146:147], v120
	v_mul_f32_e64 v120, v93, -v93
	v_div_scale_f32 v146, s[0:1], s2, s2, v120
	v_rcp_f32_e32 v147, v146
	v_fma_f32 v153, -v146, v147, 1.0
	v_fma_f32 v147, v153, v147, v147
	v_div_scale_f32 v153, vcc, v120, s2, v120
	v_mul_f32_e32 v154, v153, v147
	v_fma_f32 v155, -v146, v154, v153
	v_fma_f32 v154, v155, v147, v154
	v_fma_f32 v146, -v146, v154, v153
	v_div_fmas_f32 v146, v146, v147, v154
	v_div_fixup_f32 v120, v146, s2, v120
	v_div_scale_f32 v146, s[0:1], s2, s2, v120
	v_rcp_f32_e32 v147, v146
	v_fma_f32 v153, -v146, v147, 1.0
	v_fma_f32 v147, v153, v147, v147
	v_div_scale_f32 v153, vcc, v120, s2, v120
	v_mul_f32_e32 v154, v153, v147
	v_fma_f32 v155, -v146, v154, v153
	v_fma_f32 v154, v155, v147, v154
	v_fma_f32 v146, -v146, v154, v153
	v_div_fmas_f32 v146, v146, v147, v154
	v_div_fixup_f32 v120, v146, s2, v120
	v_cmp_gt_f32_e32 vcc, s21, v120
	v_cndmask_b32_e32 v146, 0, v142, vcc
	v_add_f32_e32 v120, v120, v146
	v_mul_f32_e32 v146, s26, v120
	v_cndmask_b32_e32 v147, 1.0, v135, vcc
	v_fma_f32 v153, v120, s26, -v146
	v_fma_f32 v153, v120, s22, v153
	v_exp_f32_e32 v153, v153
	v_exp_f32_e32 v146, v146
	v_mul_f32_e32 v146, v146, v153
	v_mul_f32_e32 v146, v147, v146
	v_cmp_ngt_f32_e32 vcc, s23, v120
	v_cndmask_b32_e32 v146, 0, v146, vcc
	v_cmp_nlt_f32_e32 vcc, s50, v120
	v_cndmask_b32_e32 v120, v121, v146, vcc
	v_cvt_f64_f32_e32 v[146:147], v120
	v_mov_b32_e32 v120, 0x3ff80000
	v_readlane_b32 s0, v173, 11
	v_readlane_b32 s1, v173, 12
	s_mov_b32 s0, s25
	v_writelane_b32 v173, s0, 11
	v_writelane_b32 v173, s1, 12
	v_fma_f64 v[146:147], v[146:147], s[0:1], v[119:120]
	v_cvt_f32_f64_e32 v120, v[146:147]
	v_readlane_b32 s2, v173, 13
	v_readlane_b32 s3, v173, 14
	s_mov_b32 s2, s25
	v_div_scale_f64 v[146:147], s[0:1], v[149:150], v[149:150], s[2:3]
	v_rcp_f64_e32 v[153:154], v[146:147]
	v_fma_f64 v[155:156], -v[146:147], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_fma_f64 v[155:156], -v[146:147], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_div_scale_f64 v[155:156], vcc, s[2:3], v[149:150], s[2:3]
	v_mul_f64 v[157:158], v[155:156], v[153:154]
	v_fma_f64 v[146:147], -v[146:147], v[157:158], v[155:156]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[146:147], v[146:147], v[153:154], v[157:158]
	v_div_fixup_f64 v[146:147], v[146:147], v[149:150], s[2:3]
	v_writelane_b32 v173, s2, 13
	v_writelane_b32 v173, s3, 14
	v_add_f64 v[146:147], v[146:147], s[2:3]
	v_cvt_f32_f64_e32 v147, v[146:147]
	v_sub_f32_e32 v141, v141, v89
	v_div_scale_f32 v146, s[0:1], v120, v120, v141
	v_rcp_f32_e32 v149, v146
	v_fma_f32 v150, -v146, v149, 1.0
	v_fma_f32 v149, v150, v149, v149
	v_div_scale_f32 v150, vcc, v141, v120, v141
	v_mul_f32_e32 v153, v150, v149
	v_fma_f32 v154, -v146, v153, v150
	v_fma_f32 v153, v154, v149, v153
	v_fma_f32 v146, -v146, v153, v150
	v_div_fmas_f32 v146, v146, v149, v153
	v_div_fixup_f32 v146, v146, v120, v141
	v_sub_f32_e32 v120, v165, v90
	v_div_scale_f32 v141, s[0:1], v147, v147, v120
	v_rcp_f32_e32 v149, v141
	v_fma_f32 v150, -v141, v149, 1.0
	v_fma_f32 v149, v150, v149, v149
	v_div_scale_f32 v150, vcc, v120, v147, v120
	v_mul_f32_e32 v153, v150, v149
	v_fma_f32 v154, -v141, v153, v150
	v_fma_f32 v153, v154, v149, v153
	v_fma_f32 v141, -v141, v153, v150
	v_div_fmas_f32 v141, v141, v149, v153
	v_div_fixup_f32 v147, v141, v147, v120
	flat_store_dwordx4 v[151:152], v[145:148]
	v_readlane_b32 s0, v173, 15
	v_readlane_b32 s1, v173, 16
	s_mov_b32 s0, s25
	v_writelane_b32 v173, s0, 15
	v_writelane_b32 v173, s1, 16
	v_add_f64 v[145:146], v[95:96], s[0:1]
	v_readlane_b32 s2, v173, 17
	v_readlane_b32 s3, v173, 18
	s_mov_b32 s2, s25
	v_div_scale_f64 v[147:148], s[0:1], s[2:3], s[2:3], v[145:146]
	v_rcp_f64_e32 v[149:150], v[147:148]
	v_fma_f64 v[151:152], -v[147:148], v[149:150], 1.0
	v_fma_f64 v[149:150], v[149:150], v[151:152], v[149:150]
	v_fma_f64 v[151:152], -v[147:148], v[149:150], 1.0
	v_fma_f64 v[149:150], v[149:150], v[151:152], v[149:150]
	v_div_scale_f64 v[151:152], vcc, v[145:146], s[2:3], v[145:146]
	v_mul_f64 v[153:154], v[151:152], v[149:150]
	v_fma_f64 v[147:148], -v[147:148], v[153:154], v[151:152]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[147:148], v[147:148], v[149:150], v[153:154]
	v_writelane_b32 v173, s2, 17
	v_writelane_b32 v173, s3, 18
	v_div_fixup_f64 v[147:148], v[147:148], s[2:3], v[145:146]
	v_mul_f64 v[149:150], v[147:148], s[54:55]
	v_rndne_f64_e32 v[149:150], v[149:150]
	v_fma_f64 v[151:152], v[149:150], s[56:57], v[147:148]
	v_mul_f64 v[153:154], v[149:150], s[58:59]
	v_add_f64 v[155:156], v[151:152], v[153:154]
	v_add_f64 v[151:152], v[151:152], -v[155:156]
	v_add_f64 v[151:152], v[151:152], v[153:154]
	v_fma_f64 v[153:154], v[155:156], s[62:63], v[127:128]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[64:65]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[66:67]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[68:69]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[70:71]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[72:73]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[74:75]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[76:77]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[52:53]
	v_mul_f64 v[157:158], v[155:156], v[155:156]
	v_fma_f64 v[159:160], v[155:156], v[155:156], -v[157:158]
	v_add_f64 v[161:162], v[151:152], v[151:152]
	v_fma_f64 v[159:160], v[155:156], v[161:162], v[159:160]
	v_fma_f64 v[159:160], v[151:152], v[151:152], v[159:160]
	v_add_f64 v[161:162], v[157:158], v[159:160]
	v_add_f64 v[157:158], v[161:162], -v[157:158]
	v_add_f64 v[157:158], v[159:160], -v[157:158]
	v_mul_f64 v[159:160], v[161:162], v[153:154]
	v_fma_f64 v[161:162], v[161:162], v[153:154], -v[159:160]
	v_fma_f64 v[153:154], v[157:158], v[153:154], v[161:162]
	v_add_f64 v[157:158], v[159:160], v[153:154]
	v_add_f64 v[159:160], v[157:158], -v[159:160]
	v_add_f64 v[153:154], v[153:154], -v[159:160]
	v_add_f64 v[159:160], v[155:156], v[157:158]
	v_add_f64 v[155:156], v[159:160], -v[155:156]
	v_add_f64 v[155:156], v[157:158], -v[155:156]
	v_add_f64 v[151:152], v[151:152], v[153:154]
	v_add_f64 v[151:152], v[155:156], v[151:152]
	v_add_f64 v[151:152], v[159:160], v[151:152]
	v_add_f64 v[151:152], v[151:152], 1.0
	v_cvt_i32_f64_e32 v120, v[149:150]
	v_ldexp_f64 v[149:150], v[151:152], v120
	v_cmp_nlt_f64_e32 vcc, s[42:43], v[147:148]
	v_cndmask_b32_e32 v120, v129, v150, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[82:83], v[147:148]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v147, 0, v149, vcc
	v_cndmask_b32_e64 v148, 0, v120, s[0:1]
	v_add_f64 v[149:150], v[147:148], 1.0
	v_div_scale_f64 v[151:152], s[0:1], v[149:150], v[149:150], 1.0
	v_rcp_f64_e32 v[153:154], v[151:152]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_div_scale_f64 v[155:156], vcc, 1.0, v[149:150], 1.0
	v_mul_f64 v[157:158], v[155:156], v[153:154]
	v_fma_f64 v[151:152], -v[151:152], v[157:158], v[155:156]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[151:152], v[151:152], v[153:154], v[157:158]
	v_div_fixup_f64 v[149:150], v[151:152], v[149:150], 1.0
	v_cvt_f32_f64_e32 v120, v[149:150]
	v_cvt_f64_f32_e32 v[149:150], v120
	v_add_f64 v[147:148], -v[147:148], 1.0
	v_mul_f64 v[147:148], v[147:148], v[149:150]
	v_mul_f64 v[149:150], v[145:146], s[86:87]
	v_div_scale_f64 v[151:152], s[0:1], v[149:150], v[149:150], v[147:148]
	v_rcp_f64_e32 v[153:154], v[151:152]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_div_scale_f64 v[155:156], vcc, v[147:148], v[149:150], v[147:148]
	v_mul_f64 v[157:158], v[155:156], v[153:154]
	v_fma_f64 v[151:152], -v[151:152], v[157:158], v[155:156]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[151:152], v[151:152], v[153:154], v[157:158]
	v_div_fixup_f64 v[147:148], v[151:152], v[149:150], v[147:148]
	v_cvt_f32_f64_e32 v141, v[147:148]
	v_readlane_b32 s0, v171, 4
	v_readlane_b32 s1, v171, 5
	v_add_f64 v[147:148], v[95:96], s[0:1]
	v_div_scale_f64 v[149:150], s[0:1], s[16:17], s[16:17], v[147:148]
	v_rcp_f64_e32 v[151:152], v[149:150]
	v_fma_f64 v[153:154], -v[149:150], v[151:152], 1.0
	v_fma_f64 v[151:152], v[151:152], v[153:154], v[151:152]
	v_fma_f64 v[153:154], -v[149:150], v[151:152], 1.0
	v_fma_f64 v[151:152], v[151:152], v[153:154], v[151:152]
	v_div_scale_f64 v[153:154], vcc, v[147:148], s[16:17], v[147:148]
	v_mul_f64 v[155:156], v[153:154], v[151:152]
	v_fma_f64 v[149:150], -v[149:150], v[155:156], v[153:154]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[149:150], v[149:150], v[151:152], v[155:156]
	v_div_fixup_f64 v[147:148], v[149:150], s[16:17], v[147:148]
	v_mul_f64 v[149:150], v[147:148], s[54:55]
	v_rndne_f64_e32 v[149:150], v[149:150]
	v_fma_f64 v[151:152], v[149:150], s[56:57], v[147:148]
	v_mul_f64 v[153:154], v[149:150], s[58:59]
	v_add_f64 v[155:156], v[151:152], v[153:154]
	v_add_f64 v[151:152], v[151:152], -v[155:156]
	v_add_f64 v[151:152], v[151:152], v[153:154]
	v_fma_f64 v[153:154], v[155:156], s[62:63], v[127:128]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[64:65]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[66:67]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[68:69]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[70:71]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[72:73]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[74:75]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[76:77]
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[52:53]
	v_mul_f64 v[157:158], v[155:156], v[155:156]
	v_fma_f64 v[159:160], v[155:156], v[155:156], -v[157:158]
	v_add_f64 v[161:162], v[151:152], v[151:152]
	v_fma_f64 v[159:160], v[155:156], v[161:162], v[159:160]
	v_fma_f64 v[159:160], v[151:152], v[151:152], v[159:160]
	v_add_f64 v[161:162], v[157:158], v[159:160]
	v_add_f64 v[157:158], v[161:162], -v[157:158]
	v_add_f64 v[157:158], v[159:160], -v[157:158]
	v_mul_f64 v[159:160], v[161:162], v[153:154]
	v_fma_f64 v[161:162], v[161:162], v[153:154], -v[159:160]
	v_fma_f64 v[153:154], v[157:158], v[153:154], v[161:162]
	v_add_f64 v[157:158], v[159:160], v[153:154]
	v_add_f64 v[159:160], v[157:158], -v[159:160]
	v_add_f64 v[153:154], v[153:154], -v[159:160]
	v_add_f64 v[159:160], v[155:156], v[157:158]
	v_add_f64 v[155:156], v[159:160], -v[155:156]
	v_add_f64 v[155:156], v[157:158], -v[155:156]
	v_add_f64 v[151:152], v[151:152], v[153:154]
	v_add_f64 v[151:152], v[155:156], v[151:152]
	v_add_f64 v[151:152], v[159:160], v[151:152]
	v_add_f64 v[151:152], v[151:152], 1.0
	v_cvt_i32_f64_e32 v149, v[149:150]
	v_ldexp_f64 v[149:150], v[151:152], v149
	v_add_f64 v[149:150], v[149:150], 1.0
	v_div_scale_f64 v[151:152], s[0:1], v[149:150], v[149:150], 1.0
	v_rcp_f64_e32 v[153:154], v[151:152]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_div_scale_f64 v[155:156], vcc, 1.0, v[149:150], 1.0
	v_mul_f64 v[157:158], v[155:156], v[153:154]
	v_fma_f64 v[151:152], -v[151:152], v[157:158], v[155:156]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[151:152], v[151:152], v[153:154], v[157:158]
	v_div_fixup_f64 v[149:150], v[151:152], v[149:150], 1.0
	v_cmp_nlt_f64_e32 vcc, s[42:43], v[147:148]
	s_mov_b32 s42, 0x3f2aaaab
	v_cndmask_b32_e32 v150, 0, v150, vcc
	v_cmp_ngt_f64_e64 s[0:1], s[82:83], v[147:148]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v147, 0, v149, vcc
	v_cndmask_b32_e64 v148, v130, v150, s[0:1]
	v_sub_f32_e32 v130, s4, v93
	s_mov_b32 s2, 0x41a00000
	v_div_scale_f32 v149, s[0:1], s2, s2, v130
	v_rcp_f32_e32 v150, v149
	v_fma_f32 v151, -v149, v150, 1.0
	v_fma_f32 v150, v151, v150, v150
	v_div_scale_f32 v151, vcc, v130, s2, v130
	v_mul_f32_e32 v152, v151, v150
	v_fma_f32 v153, -v149, v152, v151
	v_fma_f32 v152, v153, v150, v152
	v_fma_f32 v149, -v149, v152, v151
	v_div_fmas_f32 v149, v149, v150, v152
	v_div_fixup_f32 v130, v149, s2, v130
	v_cmp_gt_f32_e32 vcc, s21, v130
	v_cndmask_b32_e32 v149, 0, v142, vcc
	v_add_f32_e32 v130, v130, v149
	v_mul_f32_e32 v149, s26, v130
	v_cndmask_b32_e32 v150, 1.0, v135, vcc
	v_fma_f32 v151, v130, s26, -v149
	v_fma_f32 v151, v130, s22, v151
	v_exp_f32_e32 v151, v151
	v_exp_f32_e32 v149, v149
	v_mul_f32_e32 v149, v149, v151
	v_fma_f32 v149, v150, v149, 1.0
	v_cmp_ngt_f32_e32 vcc, s23, v130
	v_cndmask_b32_e32 v149, 1.0, v149, vcc
	v_cmp_nlt_f32_e32 vcc, s50, v130
	v_cndmask_b32_e32 v130, v121, v149, vcc
	v_cvt_f64_f32_e32 v[149:150], v130
	v_readlane_b32 s2, v173, 19
	v_readlane_b32 s3, v173, 20
	s_mov_b32 s2, s84
	v_div_scale_f64 v[151:152], s[0:1], v[149:150], v[149:150], s[2:3]
	v_rcp_f64_e32 v[153:154], v[151:152]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[153:154], v[155:156], v[153:154]
	v_div_scale_f64 v[155:156], vcc, s[2:3], v[149:150], s[2:3]
	v_mul_f64 v[157:158], v[155:156], v[153:154]
	v_fma_f64 v[151:152], -v[151:152], v[157:158], v[155:156]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[151:152], v[151:152], v[153:154], v[157:158]
	v_writelane_b32 v173, s2, 19
	v_writelane_b32 v173, s3, 20
	v_div_fixup_f64 v[149:150], v[151:152], v[149:150], s[2:3]
	v_add_f64 v[147:148], v[149:150], v[147:148]
	v_cvt_f32_f64_e32 v169, v[147:148]
	v_readlane_b32 s0, v171, 6
	v_readlane_b32 s1, v171, 7
	v_mul_f64 v[145:146], v[145:146], s[0:1]
	v_frexp_mant_f64_e64 v[147:148], |v[145:146]|
	v_readlane_b32 s0, v171, 8
	v_readlane_b32 s1, v171, 9
	v_cmp_gt_f64_e32 vcc, s[0:1], v[147:148]
	v_cndmask_b32_e64 v130, 0, 1, vcc
	v_ldexp_f64 v[147:148], v[147:148], v130
	v_frexp_exp_i32_f64_e64 v130, |v[145:146]|
	v_subbrev_u32_e32 v130, vcc, 0, v130, vcc
	v_add_f64 v[149:150], v[147:148], -1.0
	v_add_f64 v[151:152], v[147:148], 1.0
	v_add_f64 v[153:154], v[151:152], -v[147:148]
	v_add_f64 v[155:156], v[151:152], -v[153:154]
	v_add_f64 v[147:148], v[147:148], -v[155:156]
	v_add_f64 v[153:154], -v[153:154], 1.0
	v_add_f64 v[147:148], v[153:154], v[147:148]
	v_rcp_f64_e32 v[153:154], v[151:152]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[155:156], v[153:154], v[153:154]
	v_fma_f64 v[155:156], -v[151:152], v[153:154], 1.0
	v_fma_f64 v[153:154], v[155:156], v[153:154], v[153:154]
	v_mul_f64 v[155:156], v[149:150], v[153:154]
	v_mul_f64 v[157:158], v[151:152], v[155:156]
	v_fma_f64 v[151:152], v[155:156], v[151:152], -v[157:158]
	v_fma_f64 v[147:148], v[155:156], v[147:148], v[151:152]
	v_add_f64 v[151:152], v[157:158], v[147:148]
	v_add_f64 v[157:158], v[151:152], -v[157:158]
	v_add_f64 v[147:148], v[147:148], -v[157:158]
	v_add_f64 v[157:158], v[149:150], -v[151:152]
	v_add_f64 v[149:150], v[149:150], -v[157:158]
	v_add_f64 v[149:150], v[149:150], -v[151:152]
	v_add_f64 v[147:148], v[149:150], -v[147:148]
	v_add_f64 v[147:148], v[157:158], v[147:148]
	v_mul_f64 v[147:148], v[153:154], v[147:148]
	v_add_f64 v[149:150], v[155:156], v[147:148]
	v_add_f64 v[151:152], v[149:150], -v[155:156]
	v_add_f64 v[147:148], v[147:148], -v[151:152]
	v_mul_f64 v[151:152], v[149:150], v[149:150]
	v_fma_f64 v[153:154], v[149:150], v[149:150], -v[151:152]
	v_add_f64 v[155:156], v[147:148], v[147:148]
	v_fma_f64 v[153:154], v[149:150], v[155:156], v[153:154]
	v_fma_f64 v[153:154], v[147:148], v[147:148], v[153:154]
	v_add_f64 v[155:156], v[151:152], v[153:154]
	v_add_f64 v[151:152], v[155:156], -v[151:152]
	v_add_f64 v[151:152], v[153:154], -v[151:152]
	v_mov_b32_e32 v153, 0x968915a9
	v_mov_b32_e32 v154, 0x3fba6564
	v_readlane_b32 s2, v171, 10
	v_readlane_b32 s3, v171, 11
	v_fma_f64 v[153:154], v[155:156], s[2:3], v[153:154]
	v_readlane_b32 s2, v171, 12
	v_readlane_b32 s3, v171, 13
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[2:3]
	v_readlane_b32 s2, v171, 14
	v_readlane_b32 s3, v171, 15
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[2:3]
	v_readlane_b32 s2, v171, 16
	v_readlane_b32 s3, v171, 17
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[2:3]
	v_readlane_b32 s2, v171, 18
	v_readlane_b32 s3, v171, 19
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[2:3]
	v_readlane_b32 s2, v171, 20
	v_readlane_b32 s3, v171, 21
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[2:3]
	v_readlane_b32 s2, v171, 22
	v_readlane_b32 s3, v171, 23
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[2:3]
	v_readlane_b32 s2, v171, 24
	v_readlane_b32 s3, v171, 25
	v_fma_f64 v[153:154], v[155:156], v[153:154], s[2:3]
	v_cvt_f64_i32_e32 v[157:158], v130
	v_readlane_b32 s2, v171, 26
	v_readlane_b32 s3, v171, 27
	v_mul_f64 v[159:160], v[157:158], s[2:3]
	v_fma_f64 v[161:162], v[157:158], s[2:3], -v[159:160]
	v_readlane_b32 s4, v171, 28
	v_readlane_b32 s5, v171, 29
	v_fma_f64 v[157:158], v[157:158], s[4:5], v[161:162]
	v_add_f64 v[161:162], v[159:160], v[157:158]
	v_add_f64 v[159:160], v[161:162], -v[159:160]
	v_add_f64 v[157:158], v[157:158], -v[159:160]
	v_ldexp_f64 v[159:160], v[149:150], 1
	v_ldexp_f64 v[163:164], v[147:148], 1
	v_mul_f64 v[165:166], v[149:150], v[155:156]
	v_fma_f64 v[167:168], v[155:156], v[149:150], -v[165:166]
	v_mul_f64 v[149:150], v[149:150], v[151:152]
	v_fma_f64 v[147:148], v[155:156], v[147:148], v[149:150]
	v_add_f64 v[147:148], v[167:168], v[147:148]
	v_add_f64 v[149:150], v[165:166], v[147:148]
	v_add_f64 v[165:166], v[149:150], -v[165:166]
	v_add_f64 v[147:148], v[147:148], -v[165:166]
	v_mul_f64 v[165:166], v[155:156], v[153:154]
	v_fma_f64 v[155:156], v[155:156], v[153:154], -v[165:166]
	v_fma_f64 v[151:152], v[151:152], v[153:154], v[155:156]
	v_add_f64 v[153:154], v[165:166], v[151:152]
	v_add_f64 v[155:156], v[153:154], -v[165:166]
	v_add_f64 v[151:152], v[151:152], -v[155:156]
	v_add_f64 v[155:156], v[153:154], s[0:1]
	v_readlane_b32 s4, v173, 21
	v_readlane_b32 s5, v173, 22
	s_mov_b32 s4, s0
	v_writelane_b32 v173, s4, 21
	v_writelane_b32 v173, s5, 22
	v_add_f64 v[165:166], v[155:156], s[4:5]
	v_add_f64 v[153:154], v[153:154], -v[165:166]
	v_readlane_b32 s0, v171, 30
	v_readlane_b32 s1, v171, 31
	v_add_f64 v[151:152], v[151:152], s[0:1]
	v_add_f64 v[151:152], v[153:154], v[151:152]
	v_add_f64 v[153:154], v[155:156], v[151:152]
	v_add_f64 v[155:156], v[153:154], -v[155:156]
	v_add_f64 v[151:152], v[151:152], -v[155:156]
	v_mul_f64 v[155:156], v[149:150], v[153:154]
	v_mul_f64 v[147:148], v[147:148], v[153:154]
	v_fma_f64 v[153:154], v[149:150], v[153:154], -v[155:156]
	v_fma_f64 v[147:148], v[149:150], v[151:152], v[147:148]
	v_add_f64 v[147:148], v[153:154], v[147:148]
	v_add_f64 v[149:150], v[155:156], v[147:148]
	v_add_f64 v[151:152], v[149:150], -v[155:156]
	v_add_f64 v[147:148], v[147:148], -v[151:152]
	v_add_f64 v[151:152], v[159:160], v[149:150]
	v_add_f64 v[153:154], v[151:152], -v[159:160]
	v_add_f64 v[149:150], v[149:150], -v[153:154]
	v_add_f64 v[147:148], v[163:164], v[147:148]
	v_add_f64 v[147:148], v[149:150], v[147:148]
	v_add_f64 v[149:150], v[151:152], v[147:148]
	v_add_f64 v[151:152], v[149:150], -v[151:152]
	v_add_f64 v[147:148], v[147:148], -v[151:152]
	v_add_f64 v[151:152], v[161:162], v[149:150]
	v_add_f64 v[153:154], v[151:152], -v[161:162]
	v_add_f64 v[155:156], v[151:152], -v[153:154]
	v_add_f64 v[155:156], v[161:162], -v[155:156]
	v_add_f64 v[149:150], v[149:150], -v[153:154]
	v_add_f64 v[149:150], v[149:150], v[155:156]
	v_add_f64 v[153:154], v[157:158], v[147:148]
	v_add_f64 v[155:156], v[153:154], -v[157:158]
	v_add_f64 v[159:160], v[153:154], -v[155:156]
	v_add_f64 v[157:158], v[157:158], -v[159:160]
	v_add_f64 v[147:148], v[147:148], -v[155:156]
	v_add_f64 v[147:148], v[147:148], v[157:158]
	v_add_f64 v[149:150], v[153:154], v[149:150]
	v_add_f64 v[153:154], v[151:152], v[149:150]
	v_add_f64 v[151:152], v[153:154], -v[151:152]
	v_add_f64 v[149:150], v[149:150], -v[151:152]
	v_add_f64 v[147:148], v[147:148], v[149:150]
	v_add_f64 v[149:150], v[153:154], v[147:148]
	v_add_f64 v[151:152], v[149:150], -v[153:154]
	v_add_f64 v[147:148], v[147:148], -v[151:152]
	v_add_f64 v[151:152], v[149:150], v[149:150]
	v_fma_f64 v[149:150], v[149:150], 2.0, -v[151:152]
	v_fma_f64 v[147:148], v[147:148], 2.0, v[149:150]
	v_add_f64 v[149:150], v[151:152], v[147:148]
	v_add_f64 v[153:154], v[149:150], -v[151:152]
	v_add_f64 v[147:148], v[147:148], -v[153:154]
	v_cmp_class_f64_e64 vcc, v[151:152], s92
	v_cndmask_b32_e32 v150, v150, v152, vcc
	v_cndmask_b32_e32 v149, v149, v151, vcc
	s_mov_b32 s100, s25
	v_writelane_b32 v172, s100, 43
	v_writelane_b32 v172, s101, 44
	v_cmp_neq_f64_e64 vcc, |v[149:150]|, s[100:101]
	v_cndmask_b32_e32 v148, 0, v148, vcc
	v_cndmask_b32_e32 v147, 0, v147, vcc
	v_mul_f64 v[151:152], v[149:150], s[54:55]
	v_rndne_f64_e32 v[151:152], v[151:152]
	s_mov_b32 s0, s56
	s_mov_b32 s1, s3
	v_mul_f64 v[153:154], v[151:152], s[0:1]
	v_add_f64 v[155:156], v[149:150], -v[153:154]
	v_add_f64 v[157:158], v[155:156], -v[149:150]
	v_add_f64 v[159:160], v[155:156], -v[157:158]
	v_add_f64 v[159:160], v[149:150], -v[159:160]
	v_add_f64 v[153:154], v[153:154], v[157:158]
	v_add_f64 v[153:154], v[159:160], -v[153:154]
	v_add_f64 v[147:148], v[147:148], v[153:154]
	v_add_f64 v[153:154], v[155:156], v[147:148]
	v_add_f64 v[155:156], v[153:154], -v[155:156]
	v_add_f64 v[147:148], v[147:148], -v[155:156]
	v_readlane_b32 s0, v173, 23
	v_readlane_b32 s1, v173, 24
	s_mov_b32 s1, s59
	v_writelane_b32 v173, s0, 23
	v_writelane_b32 v173, s1, 24
	v_mul_f64 v[155:156], v[151:152], s[0:1]
	v_add_f64 v[157:158], v[153:154], v[155:156]
	v_add_f64 v[153:154], v[153:154], -v[157:158]
	v_add_f64 v[153:154], v[153:154], v[155:156]
	v_add_f64 v[147:148], v[147:148], v[153:154]
	v_add_f64 v[153:154], v[157:158], v[147:148]
	v_add_f64 v[155:156], v[153:154], -v[157:158]
	v_add_f64 v[147:148], v[147:148], -v[155:156]
	v_readlane_b32 s0, v171, 32
	v_readlane_b32 s1, v171, 33
	v_mul_f64 v[155:156], v[151:152], s[0:1]
	v_add_f64 v[157:158], v[153:154], v[155:156]
	v_add_f64 v[153:154], v[153:154], -v[157:158]
	v_add_f64 v[153:154], v[153:154], v[155:156]
	v_add_f64 v[147:148], v[147:148], v[153:154]
	v_add_f64 v[153:154], v[157:158], v[147:148]
	v_add_f64 v[155:156], v[153:154], -v[157:158]
	v_add_f64 v[147:148], v[147:148], -v[155:156]
	v_fma_f64 v[155:156], v[153:154], s[62:63], v[127:128]
	v_fma_f64 v[155:156], v[153:154], v[155:156], s[64:65]
	v_fma_f64 v[155:156], v[153:154], v[155:156], s[66:67]
	v_fma_f64 v[155:156], v[153:154], v[155:156], s[68:69]
	v_fma_f64 v[155:156], v[153:154], v[155:156], s[70:71]
	v_fma_f64 v[155:156], v[153:154], v[155:156], s[72:73]
	v_fma_f64 v[155:156], v[153:154], v[155:156], s[74:75]
	v_fma_f64 v[155:156], v[153:154], v[155:156], s[76:77]
	v_fma_f64 v[155:156], v[153:154], v[155:156], s[52:53]
	v_mul_f64 v[157:158], v[153:154], v[153:154]
	v_fma_f64 v[159:160], v[153:154], v[153:154], -v[157:158]
	v_add_f64 v[161:162], v[147:148], v[147:148]
	v_fma_f64 v[159:160], v[153:154], v[161:162], v[159:160]
	v_fma_f64 v[159:160], v[147:148], v[147:148], v[159:160]
	v_add_f64 v[161:162], v[157:158], v[159:160]
	v_add_f64 v[157:158], v[161:162], -v[157:158]
	v_add_f64 v[157:158], v[159:160], -v[157:158]
	v_mul_f64 v[159:160], v[161:162], v[155:156]
	v_fma_f64 v[161:162], v[161:162], v[155:156], -v[159:160]
	v_fma_f64 v[155:156], v[157:158], v[155:156], v[161:162]
	v_add_f64 v[157:158], v[159:160], v[155:156]
	v_add_f64 v[159:160], v[157:158], -v[159:160]
	v_add_f64 v[155:156], v[155:156], -v[159:160]
	v_add_f64 v[159:160], v[153:154], v[157:158]
	v_add_f64 v[153:154], v[159:160], -v[153:154]
	v_add_f64 v[153:154], v[157:158], -v[153:154]
	v_add_f64 v[147:148], v[147:148], v[155:156]
	v_add_f64 v[147:148], v[153:154], v[147:148]
	v_add_f64 v[147:148], v[159:160], v[147:148]
	v_add_f64 v[147:148], v[147:148], 1.0
	v_cvt_i32_f64_e32 v130, v[151:152]
	v_ldexp_f64 v[147:148], v[147:148], v130
	v_readlane_b32 s0, v173, 25
	v_readlane_b32 s1, v173, 26
	s_mov_b32 s0, s25
	v_writelane_b32 v173, s0, 25
	v_writelane_b32 v173, s1, 26
	v_cmp_nlt_f64_e32 vcc, s[0:1], v[149:150]
	v_cndmask_b32_e32 v130, v129, v148, vcc
	v_readlane_b32 s0, v173, 27
	v_readlane_b32 s1, v173, 28
	s_mov_b32 s0, s25
	v_writelane_b32 v173, s0, 27
	v_writelane_b32 v173, s1, 28
	v_cmp_ngt_f64_e64 s[0:1], s[0:1], v[149:150]
	v_cmp_u_f64_e64 s[2:3], v[145:146], v[145:146]
	v_cmp_class_f64_e64 s[4:5], v[145:146], s92
	v_cmp_neq_f64_e64 s[6:7], 0, v[145:146]
	s_and_b64 s[0:1], s[6:7], s[0:1]
	v_cndmask_b32_e64 v130, 0, v130, s[0:1]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v147, 0, v147, vcc
	v_cndmask_b32_e64 v147, v147, 0, s[4:5]
	v_cndmask_b32_e64 v129, v130, v129, s[4:5]
	v_and_b32_e32 v129, 0x7fffffff, v129
	v_cndmask_b32_e64 v130, v129, v146, s[2:3]
	v_cndmask_b32_e64 v129, v147, v145, s[2:3]
	v_readlane_b32 s0, v173, 29
	v_readlane_b32 s1, v173, 30
	s_mov_b32 s0, s54
	v_writelane_b32 v173, s0, 29
	v_writelane_b32 v173, s1, 30
	v_mul_f64 v[145:146], v[129:130], s[0:1]
	v_rndne_f64_e32 v[145:146], v[145:146]
	v_fma_f64 v[147:148], v[145:146], s[56:57], -v[129:130]
	v_mul_f64 v[149:150], v[145:146], s[58:59]
	v_add_f64 v[151:152], v[147:148], v[149:150]
	v_add_f64 v[147:148], v[147:148], -v[151:152]
	v_add_f64 v[147:148], v[147:148], v[149:150]
	v_fma_f64 v[127:128], v[151:152], s[62:63], v[127:128]
	v_fma_f64 v[127:128], v[151:152], v[127:128], s[64:65]
	v_fma_f64 v[127:128], v[151:152], v[127:128], s[66:67]
	v_fma_f64 v[127:128], v[151:152], v[127:128], s[68:69]
	v_fma_f64 v[127:128], v[151:152], v[127:128], s[70:71]
	v_fma_f64 v[127:128], v[151:152], v[127:128], s[72:73]
	v_fma_f64 v[127:128], v[151:152], v[127:128], s[74:75]
	v_fma_f64 v[127:128], v[151:152], v[127:128], s[76:77]
	v_fma_f64 v[127:128], v[151:152], v[127:128], s[52:53]
	v_mul_f64 v[149:150], v[151:152], v[151:152]
	v_fma_f64 v[153:154], v[151:152], v[151:152], -v[149:150]
	v_add_f64 v[155:156], v[147:148], v[147:148]
	v_fma_f64 v[153:154], v[151:152], v[155:156], v[153:154]
	v_fma_f64 v[153:154], v[147:148], v[147:148], v[153:154]
	v_add_f64 v[155:156], v[149:150], v[153:154]
	v_add_f64 v[149:150], v[155:156], -v[149:150]
	v_add_f64 v[149:150], v[153:154], -v[149:150]
	v_mul_f64 v[153:154], v[155:156], v[127:128]
	v_fma_f64 v[155:156], v[155:156], v[127:128], -v[153:154]
	v_fma_f64 v[127:128], v[149:150], v[127:128], v[155:156]
	v_add_f64 v[149:150], v[153:154], v[127:128]
	v_add_f64 v[153:154], v[149:150], -v[153:154]
	v_add_f64 v[127:128], v[127:128], -v[153:154]
	v_add_f64 v[153:154], v[151:152], v[149:150]
	v_add_f64 v[151:152], v[153:154], -v[151:152]
	v_add_f64 v[149:150], v[149:150], -v[151:152]
	v_add_f64 v[127:128], v[147:148], v[127:128]
	v_add_f64 v[127:128], v[149:150], v[127:128]
	v_add_f64 v[127:128], v[153:154], v[127:128]
	v_add_f64 v[127:128], v[127:128], 1.0
	v_cvt_i32_f64_e32 v145, v[145:146]
	v_ldexp_f64 v[127:128], v[127:128], v145
	v_writelane_b32 v170, s10, 44
	v_writelane_b32 v170, s11, 45
	v_mov_b32_e32 v145, s10
	v_mov_b32_e32 v146, 0x3f947ae1
	v_readlane_b32 s0, v171, 34
	v_readlane_b32 s1, v171, 35
	v_fma_f64 v[127:128], v[127:128], s[0:1], v[145:146]
	v_div_scale_f64 v[145:146], s[0:1], v[127:128], v[127:128], 1.0
	v_rcp_f64_e32 v[147:148], v[145:146]
	v_fma_f64 v[149:150], -v[145:146], v[147:148], 1.0
	v_fma_f64 v[147:148], v[147:148], v[149:150], v[147:148]
	v_fma_f64 v[149:150], -v[145:146], v[147:148], 1.0
	v_fma_f64 v[147:148], v[147:148], v[149:150], v[147:148]
	v_div_scale_f64 v[149:150], vcc, 1.0, v[127:128], 1.0
	v_mul_f64 v[151:152], v[149:150], v[147:148]
	v_fma_f64 v[145:146], -v[145:146], v[151:152], v[149:150]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[145:146], v[145:146], v[147:148], v[151:152]
	v_div_fixup_f64 v[127:128], v[145:146], v[127:128], 1.0
	v_readlane_b32 s0, v173, 31
	v_readlane_b32 s1, v173, 32
	s_mov_b32 s0, s25
	v_writelane_b32 v173, s0, 31
	v_writelane_b32 v173, s1, 32
	v_cmp_ngt_f64_e32 vcc, s[0:1], v[129:130]
	v_cndmask_b32_e32 v128, 0, v128, vcc
	v_readlane_b32 s0, v173, 33
	v_readlane_b32 s1, v173, 34
	s_mov_b32 s0, s25
	v_writelane_b32 v173, s0, 33
	v_writelane_b32 v173, s1, 34
	v_cmp_nlt_f64_e64 s[0:1], s[0:1], v[129:130]
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v127, 0, v127, vcc
	v_mov_b32_e32 v129, 0x40490000
	v_cndmask_b32_e64 v128, v129, v128, s[0:1]
	v_cvt_f32_f64_e32 v127, v[127:128]
	v_sub_f32_e32 v120, v120, v87
	v_div_scale_f32 v128, s[0:1], v141, v141, v120
	v_rcp_f32_e32 v129, v128
	v_fma_f32 v130, -v128, v129, 1.0
	v_fma_f32 v129, v130, v129, v129
	v_div_scale_f32 v130, vcc, v120, v141, v120
	v_mul_f32_e32 v145, v130, v129
	v_fma_f32 v146, -v128, v145, v130
	v_fma_f32 v145, v146, v129, v145
	v_fma_f32 v128, -v128, v145, v130
	v_div_fmas_f32 v128, v128, v129, v145
	v_div_fixup_f32 v141, v128, v141, v120
	flat_store_dwordx4 v[74:75], v[138:141]
	v_sub_f32_e32 v120, v169, v80
	v_div_scale_f32 v128, s[0:1], v127, v127, v120
	v_rcp_f32_e32 v129, v128
	v_fma_f32 v130, -v128, v129, 1.0
	v_fma_f32 v129, v130, v129, v129
	v_div_scale_f32 v130, vcc, v120, v127, v120
	v_mul_f32_e32 v138, v130, v129
	v_fma_f32 v139, -v128, v138, v130
	v_fma_f32 v138, v139, v129, v138
	v_fma_f32 v128, -v128, v138, v130
	v_div_fmas_f32 v128, v128, v129, v138
	v_div_fixup_f32 v128, v128, v127, v120
	v_add_u32_e32 v138, vcc, 16, v74
	v_addc_u32_e32 v139, vcc, 0, v75, vcc
	v_cvt_f64_f32_e32 v[140:141], v77
	v_readlane_b32 s2, v173, 35
	v_readlane_b32 s3, v173, 36
	s_mov_b32 s2, s84
	v_mul_f64 v[129:130], v[140:141], s[2:3]
	v_sub_f32_e32 v127, 1.0, v81
	v_cvt_f64_f32_e32 v[145:146], v127
	v_cvt_f64_f32_e32 v[147:148], v81
	v_readlane_b32 s0, v171, 36
	v_readlane_b32 s1, v171, 37
	v_mul_f64 v[147:148], v[147:148], s[0:1]
	v_fma_f64 v[129:130], v[129:130], v[145:146], v[147:148]
	v_cvt_f32_f64_e32 v129, v[129:130]
	v_cvt_f64_f32_e32 v[145:146], v78
	v_writelane_b32 v173, s2, 35
	v_writelane_b32 v173, s3, 36
	v_mul_f64 v[147:148], v[145:146], s[2:3]
	v_sub_f32_e32 v81, 1.0, v82
	v_cvt_f64_f32_e32 v[149:150], v81
	v_cvt_f64_f32_e32 v[151:152], v82
	v_mul_f64 v[151:152], v[151:152], s[0:1]
	v_fma_f64 v[147:148], v[147:148], v[149:150], v[151:152]
	v_cvt_f32_f64_e32 v130, v[147:148]
	flat_store_dwordx4 v[138:139], v[128:131]
	s_mov_b32 s8, 0x47bc7280
	v_mul_f32_e32 v82, s8, v93
	s_mov_b32 s9, 0x3d19565e
	v_mul_f32_e32 v82, s9, v82
	v_mul_f32_e32 v120, 0x3b0d8ec9, v82
	v_cvt_f64_f32_e32 v[128:129], v120
	v_readlane_b32 s2, v171, 38
	v_readlane_b32 s3, v171, 39
	v_mul_f64 v[130:131], v[140:141], s[2:3]
	v_add_f32_e32 v120, v93, v93
	v_mul_f32_e32 v120, s9, v120
	v_cmp_gt_f32_e32 vcc, s21, v120
	v_cndmask_b32_e32 v138, 0, v142, vcc
	v_add_f32_e32 v120, v120, v138
	v_mul_f32_e32 v138, s26, v120
	v_cndmask_b32_e32 v139, 1.0, v135, vcc
	v_fma_f32 v140, v120, s26, -v138
	v_fma_f32 v140, v120, s22, v140
	v_exp_f32_e32 v140, v140
	v_exp_f32_e32 v138, v138
	v_mul_f32_e32 v138, v138, v140
	v_mul_f32_e32 v138, v139, v138
	v_cmp_ngt_f32_e32 vcc, s23, v120
	v_cndmask_b32_e32 v138, 0, v138, vcc
	v_cmp_nlt_f32_e32 vcc, s50, v120
	v_cndmask_b32_e32 v120, v121, v138, vcc
	v_cvt_f64_f32_e32 v[138:139], v120
	v_readlane_b32 s4, v171, 40
	v_readlane_b32 s5, v171, 41
	v_fma_f64 v[130:131], v[130:131], v[138:139], s[4:5]
	v_mul_f64 v[130:131], v[130:131], v[128:129]
	v_add_f32_e32 v120, -1.0, v120
	v_cvt_f64_f32_e32 v[140:141], v120
	v_div_scale_f64 v[147:148], s[0:1], v[140:141], v[140:141], v[130:131]
	v_rcp_f64_e32 v[149:150], v[147:148]
	v_fma_f64 v[151:152], -v[147:148], v[149:150], 1.0
	v_fma_f64 v[149:150], v[149:150], v[151:152], v[149:150]
	v_fma_f64 v[151:152], -v[147:148], v[149:150], 1.0
	v_fma_f64 v[149:150], v[149:150], v[151:152], v[149:150]
	v_div_scale_f64 v[151:152], vcc, v[130:131], v[140:141], v[130:131]
	v_mul_f64 v[153:154], v[151:152], v[149:150]
	v_fma_f64 v[147:148], -v[147:148], v[153:154], v[151:152]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[147:148], v[147:148], v[149:150], v[153:154]
	v_div_fixup_f64 v[130:131], v[147:148], v[140:141], v[130:131]
	v_cvt_f32_f64_e32 v120, v[130:131]
	v_mul_f64 v[130:131], v[145:146], s[2:3]
	v_fma_f64 v[130:131], v[130:131], v[138:139], s[4:5]
	v_mul_f64 v[128:129], v[130:131], v[128:129]
	v_div_scale_f64 v[130:131], s[0:1], v[140:141], v[140:141], v[128:129]
	v_rcp_f64_e32 v[138:139], v[130:131]
	v_fma_f64 v[145:146], -v[130:131], v[138:139], 1.0
	v_fma_f64 v[138:139], v[138:139], v[145:146], v[138:139]
	v_fma_f64 v[145:146], -v[130:131], v[138:139], 1.0
	v_fma_f64 v[138:139], v[138:139], v[145:146], v[138:139]
	v_div_scale_f64 v[145:146], vcc, v[128:129], v[140:141], v[128:129]
	v_mul_f64 v[147:148], v[145:146], v[138:139]
	v_fma_f64 v[130:131], -v[130:131], v[147:148], v[145:146]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[130:131], v[130:131], v[138:139], v[147:148]
	v_div_fixup_f64 v[128:129], v[130:131], v[140:141], v[128:129]
	v_cvt_f32_f64_e32 v153, v[128:129]
	v_mul_f32_e32 v128, s9, v93
	v_cmp_gt_f32_e32 vcc, s21, v128
	v_cndmask_b32_e32 v129, 0, v142, vcc
	v_add_f32_e32 v128, v128, v129
	v_mul_f32_e32 v129, s26, v128
	v_cndmask_b32_e32 v130, 1.0, v135, vcc
	v_fma_f32 v131, v128, s26, -v129
	v_fma_f32 v131, v128, s22, v131
	v_exp_f32_e32 v131, v131
	v_exp_f32_e32 v129, v129
	v_mul_f32_e32 v129, v129, v131
	v_mul_f32_e32 v129, v130, v129
	v_cmp_ngt_f32_e32 vcc, s23, v128
	v_cndmask_b32_e32 v129, 0, v129, vcc
	v_cmp_nlt_f32_e32 vcc, s50, v128
	v_cndmask_b32_e32 v145, v121, v129, vcc
	v_mul_f32_e32 v128, 0x3280d959, v82
	v_cvt_f64_f32_e32 v[138:139], v128
	v_cvt_f64_f32_e32 v[128:129], v102
	v_readlane_b32 s2, v173, 37
	v_readlane_b32 s3, v173, 38
	s_mov_b32 s2, s25
	v_mul_f64 v[128:129], v[128:129], s[2:3]
	v_cvt_f64_f32_e32 v[130:131], v145
	v_readlane_b32 s4, v173, 39
	v_readlane_b32 s5, v173, 40
	s_mov_b32 s4, s25
	v_fma_f64 v[128:129], v[128:129], v[130:131], s[4:5]
	v_mul_f64 v[140:141], v[128:129], v[138:139]
	v_add_f32_e32 v128, -1.0, v145
	v_cvt_f64_f32_e32 v[128:129], v128
	v_div_scale_f64 v[145:146], s[0:1], v[128:129], v[128:129], v[140:141]
	v_rcp_f64_e32 v[147:148], v[145:146]
	v_fma_f64 v[149:150], -v[145:146], v[147:148], 1.0
	v_fma_f64 v[147:148], v[147:148], v[149:150], v[147:148]
	v_fma_f64 v[149:150], -v[145:146], v[147:148], 1.0
	v_fma_f64 v[147:148], v[147:148], v[149:150], v[147:148]
	v_div_scale_f64 v[149:150], vcc, v[140:141], v[128:129], v[140:141]
	v_mul_f64 v[151:152], v[149:150], v[147:148]
	v_fma_f64 v[145:146], -v[145:146], v[151:152], v[149:150]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[145:146], v[145:146], v[147:148], v[151:152]
	v_div_fixup_f64 v[140:141], v[145:146], v[128:129], v[140:141]
	v_cvt_f32_f64_e32 v151, v[140:141]
	v_cvt_f64_f32_e32 v[140:141], v103
	v_writelane_b32 v173, s2, 37
	v_writelane_b32 v173, s3, 38
	v_mul_f64 v[140:141], v[140:141], s[2:3]
	v_writelane_b32 v173, s4, 39
	v_writelane_b32 v173, s5, 40
	v_fma_f64 v[140:141], v[140:141], v[130:131], s[4:5]
	v_mul_f64 v[138:139], v[140:141], v[138:139]
	v_div_scale_f64 v[140:141], s[0:1], v[128:129], v[128:129], v[138:139]
	v_rcp_f64_e32 v[145:146], v[140:141]
	v_fma_f64 v[147:148], -v[140:141], v[145:146], 1.0
	v_fma_f64 v[145:146], v[145:146], v[147:148], v[145:146]
	v_fma_f64 v[147:148], -v[140:141], v[145:146], 1.0
	v_fma_f64 v[145:146], v[145:146], v[147:148], v[145:146]
	v_div_scale_f64 v[147:148], vcc, v[138:139], v[128:129], v[138:139]
	v_mul_f64 v[149:150], v[147:148], v[145:146]
	v_fma_f64 v[140:141], -v[140:141], v[149:150], v[147:148]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[140:141], v[140:141], v[145:146], v[149:150]
	v_div_fixup_f64 v[138:139], v[140:141], v[128:129], v[138:139]
	v_cvt_f32_f64_e32 v145, v[138:139]
	s_mov_b32 s2, 0x3f666666
	v_mul_f32_e32 v120, s2, v120
	v_mul_f32_e32 v120, v87, v120
	v_mul_f32_e32 v120, v80, v120
	v_mul_f32_e32 v120, v127, v120
	v_cvt_f64_f32_e32 v[138:139], v120
	v_readlane_b32 s4, v173, 41
	v_readlane_b32 s5, v173, 42
	s_mov_b32 s4, s16
	v_mul_f64 v[138:139], v[138:139], s[4:5]
	v_cvt_f32_f64_e32 v138, v[138:139]
	s_mov_b32 s3, 0x3dccccd0
	v_mul_f32_e32 v120, s3, v153
	v_mul_f32_e32 v120, v87, v120
	v_mul_f32_e32 v120, v80, v120
	v_mul_f32_e32 v120, v81, v120
	v_cvt_f64_f32_e32 v[139:140], v120
	v_mul_f64 v[139:140], v[139:140], s[4:5]
	v_cvt_f32_f64_e32 v139, v[139:140]
	v_add_f32_e32 v120, v138, v139
	s_mov_b32 s10, 0xaf17d7b2
	v_mul_f32_e32 v120, s10, v120
	s_mov_b32 s11, 0x368aea72
	v_div_scale_f32 v140, s[0:1], s11, s11, v120
	v_rcp_f32_e32 v141, v140
	v_fma_f32 v146, -v140, v141, 1.0
	v_fma_f32 v141, v146, v141, v141
	v_div_scale_f32 v146, vcc, v120, s11, v120
	v_mul_f32_e32 v147, v146, v141
	v_fma_f32 v148, -v140, v147, v146
	v_fma_f32 v147, v148, v141, v147
	v_fma_f32 v140, -v140, v147, v146
	v_div_fmas_f32 v140, v140, v141, v147
	v_div_fixup_f32 v120, v140, s11, v120
	s_mov_b32 s12, 0x447a0000
	v_mul_f32_e32 v148, s12, v120
	s_movk_i32 s0, 0xa8
	v_add_u32_e32 v152, vcc, s0, v74
	v_addc_u32_e32 v153, vcc, 0, v75, vcc
	v_mul_f32_e32 v120, s2, v151
	v_mul_f32_e32 v120, v87, v120
	v_mul_f32_e32 v120, v80, v120
	v_mul_f32_e32 v120, v127, v120
	v_cvt_f64_f32_e32 v[140:141], v120
	v_mul_f64 v[140:141], v[140:141], s[4:5]
	v_cvt_f32_f64_e32 v140, v[140:141]
	v_mul_f32_e32 v120, s3, v145
	v_mul_f32_e32 v120, v87, v120
	v_mul_f32_e32 v120, v80, v120
	v_mul_f32_e32 v120, v81, v120
	v_cvt_f64_f32_e32 v[145:146], v120
	v_writelane_b32 v173, s4, 41
	v_writelane_b32 v173, s5, 42
	v_mul_f64 v[145:146], v[145:146], s[4:5]
	v_cvt_f32_f64_e32 v141, v[145:146]
	s_mov_b32 s13, 0x398637bd
	v_div_scale_f32 v120, s[0:1], v77, v77, s13
	v_rcp_f32_e32 v145, v120
	v_fma_f32 v146, -v120, v145, 1.0
	v_fma_f32 v145, v146, v145, v145
	v_div_scale_f32 v146, vcc, s13, v77, s13
	v_mul_f32_e32 v147, v146, v145
	v_fma_f32 v149, -v120, v147, v146
	v_fma_f32 v147, v149, v145, v147
	v_fma_f32 v120, -v120, v147, v146
	v_div_fmas_f32 v120, v120, v145, v147
	v_div_fixup_f32 v120, v120, v77, s13
	v_frexp_mant_f32_e64 v145, |v120|
	v_cmp_gt_f32_e32 vcc, s42, v145
	v_cndmask_b32_e64 v146, 0, 1, vcc
	v_ldexp_f32 v145, v145, v146
	v_frexp_exp_i32_f32_e64 v146, |v120|
	v_subbrev_u32_e32 v146, vcc, 0, v146, vcc
	v_add_f32_e32 v147, -1.0, v145
	v_add_f32_e32 v149, 1.0, v145
	v_sub_f32_e32 v150, v149, v145
	v_sub_f32_e32 v151, v149, v150
	v_sub_f32_e32 v145, v145, v151
	v_sub_f32_e32 v150, 1.0, v150
	v_add_f32_e32 v145, v150, v145
	v_rcp_f32_e32 v150, v149
	v_mul_f32_e32 v151, v147, v150
	v_mul_f32_e32 v154, v149, v151
	v_fma_f32 v149, v151, v149, -v154
	v_fma_f32 v145, v151, v145, v149
	v_add_f32_e32 v149, v154, v145
	v_sub_f32_e32 v154, v149, v154
	v_sub_f32_e32 v145, v145, v154
	v_sub_f32_e32 v154, v147, v149
	v_sub_f32_e32 v147, v147, v154
	v_sub_f32_e32 v147, v147, v149
	v_sub_f32_e32 v145, v147, v145
	v_add_f32_e32 v145, v154, v145
	v_mul_f32_e32 v145, v150, v145
	v_add_f32_e32 v147, v151, v145
	v_sub_f32_e32 v149, v147, v151
	v_sub_f32_e32 v145, v145, v149
	v_mul_f32_e32 v149, v147, v147
	v_add_f32_e32 v150, v145, v145
	v_fma_f32 v151, v147, v147, -v149
	v_fma_f32 v150, v147, v150, v151
	v_fma_f32 v150, v145, v145, v150
	v_add_f32_e32 v151, v149, v150
	v_sub_f32_e32 v149, v151, v149
	v_sub_f32_e32 v149, v150, v149
	v_fma_f32 v150, v151, s48, v126
	v_fma_f32 v150, v151, v150, s93
	v_cvt_f32_i32_e32 v146, v146
	v_mul_f32_e32 v154, s45, v146
	v_fma_f32 v155, v146, s45, -v154
	v_fma_f32 v146, v146, s44, v155
	v_add_f32_e32 v155, v154, v146
	v_sub_f32_e32 v154, v155, v154
	v_sub_f32_e32 v146, v146, v154
	v_ldexp_f32 v154, v147, 1
	v_mul_f32_e32 v156, v147, v151
	v_fma_f32 v157, v151, v147, -v156
	v_mul_f32_e32 v147, v147, v149
	v_fma_f32 v147, v151, v145, v147
	v_add_f32_e32 v147, v157, v147
	v_add_f32_e32 v157, v156, v147
	v_mul_f32_e32 v158, v151, v150
	v_fma_f32 v151, v151, v150, -v158
	v_fma_f32 v149, v149, v150, v151
	v_add_f32_e32 v150, v158, v149
	v_sub_f32_e32 v151, v150, v158
	v_sub_f32_e32 v149, v149, v151
	v_add_f32_e32 v151, s28, v150
	v_add_f32_e32 v158, s41, v151
	v_sub_f32_e32 v150, v150, v158
	v_add_f32_e32 v149, s49, v149
	v_add_f32_e32 v149, v150, v149
	v_add_f32_e32 v150, v151, v149
	v_mul_f32_e32 v158, v157, v150
	v_fma_f32 v159, v157, v150, -v158
	v_sub_f32_e32 v151, v150, v151
	v_sub_f32_e32 v149, v149, v151
	v_sub_f32_e32 v151, v157, v156
	v_sub_f32_e32 v147, v147, v151
	v_mul_f32_e32 v147, v147, v150
	v_fma_f32 v147, v157, v149, v147
	v_add_f32_e32 v147, v159, v147
	v_ldexp_f32 v145, v145, 1
	v_add_f32_e32 v149, v158, v147
	v_sub_f32_e32 v150, v149, v158
	v_sub_f32_e32 v147, v147, v150
	v_add_f32_e32 v150, v154, v149
	v_sub_f32_e32 v151, v150, v154
	v_sub_f32_e32 v149, v149, v151
	v_add_f32_e32 v145, v145, v147
	v_add_f32_e32 v145, v149, v145
	v_add_f32_e32 v147, v150, v145
	v_sub_f32_e32 v149, v147, v150
	v_sub_f32_e32 v145, v145, v149
	v_add_f32_e32 v149, v155, v147
	v_sub_f32_e32 v150, v149, v155
	v_sub_f32_e32 v151, v149, v150
	v_sub_f32_e32 v151, v155, v151
	v_sub_f32_e32 v147, v147, v150
	v_add_f32_e32 v147, v147, v151
	v_add_f32_e32 v150, v146, v145
	v_sub_f32_e32 v151, v150, v146
	v_sub_f32_e32 v154, v150, v151
	v_sub_f32_e32 v146, v146, v154
	v_sub_f32_e32 v145, v145, v151
	v_add_f32_e32 v145, v145, v146
	v_add_f32_e32 v146, v150, v147
	v_add_f32_e32 v147, v149, v146
	v_sub_f32_e32 v149, v147, v149
	v_sub_f32_e32 v146, v146, v149
	v_add_f32_e32 v145, v145, v146
	v_add_f32_e32 v146, v147, v145
	v_sub_f32_e32 v147, v146, v147
	v_sub_f32_e32 v145, v145, v147
	v_mul_f32_e32 v147, s61, v146
	v_fma_f32 v149, v146, s61, -v147
	v_mul_f32_e32 v146, 0, v146
	v_fma_f32 v145, v145, s61, v146
	v_add_f32_e32 v145, v149, v145
	v_add_f32_e32 v146, v147, v145
	v_sub_f32_e32 v149, v146, v147
	v_sub_f32_e32 v145, v145, v149
	v_cmp_class_f32_e64 vcc, v147, s92
	v_cndmask_b32_e32 v146, v146, v147, vcc
	v_cmp_neq_f32_e64 vcc, |v146|, s94
	v_cndmask_b32_e32 v145, 0, v145, vcc
	v_mul_f32_e32 v147, s26, v146
	v_rndne_f32_e32 v147, v147
	v_mul_f32_e32 v149, s31, v147
	v_sub_f32_e32 v150, v146, v149
	v_sub_f32_e32 v151, v150, v146
	v_sub_f32_e32 v154, v150, v151
	v_sub_f32_e32 v154, v146, v154
	v_add_f32_e32 v149, v149, v151
	v_sub_f32_e32 v149, v154, v149
	v_add_f32_e32 v145, v145, v149
	v_add_f32_e32 v149, v150, v145
	v_sub_f32_e32 v150, v149, v150
	v_sub_f32_e32 v145, v145, v150
	v_mul_f32_e32 v150, s30, v147
	v_sub_f32_e32 v151, v149, v150
	v_sub_f32_e32 v149, v149, v151
	v_sub_f32_e32 v149, v149, v150
	v_add_f32_e32 v145, v145, v149
	v_add_f32_e32 v149, v151, v145
	v_sub_f32_e32 v150, v149, v151
	v_sub_f32_e32 v145, v145, v150
	v_mul_f32_e32 v150, s29, v147
	v_sub_f32_e32 v151, v149, v150
	v_sub_f32_e32 v149, v149, v151
	v_sub_f32_e32 v149, v149, v150
	v_add_f32_e32 v145, v145, v149
	v_add_f32_e32 v149, v151, v145
	v_sub_f32_e32 v150, v149, v151
	v_sub_f32_e32 v145, v145, v150
	v_fma_f32 v150, v149, s27, v125
	v_fma_f32 v150, v149, v150, s40
	v_fma_f32 v150, v149, v150, s35
	v_fma_f32 v150, v149, v150, s91
	v_mul_f32_e32 v151, v149, v149
	v_fma_f32 v154, v149, v149, -v151
	v_add_f32_e32 v155, v145, v145
	v_fma_f32 v154, v149, v155, v154
	v_fma_f32 v154, v145, v145, v154
	v_add_f32_e32 v155, v151, v154
	v_mul_f32_e32 v156, v150, v155
	v_sub_f32_e32 v151, v155, v151
	v_sub_f32_e32 v151, v154, v151
	v_fma_f32 v154, v155, v150, -v156
	v_fma_f32 v150, v151, v150, v154
	v_add_f32_e32 v151, v156, v150
	v_sub_f32_e32 v154, v151, v156
	v_sub_f32_e32 v150, v150, v154
	v_add_f32_e32 v154, v149, v151
	v_sub_f32_e32 v149, v154, v149
	v_sub_f32_e32 v149, v151, v149
	v_add_f32_e32 v145, v145, v150
	v_add_f32_e32 v145, v149, v145
	v_add_f32_e32 v145, v154, v145
	v_add_f32_e32 v145, 1.0, v145
	v_cvt_i32_f32_e32 v147, v147
	v_ldexp_f32 v145, v145, v147
	v_cmp_nlt_f32_e32 vcc, s34, v146
	v_cndmask_b32_e32 v145, v121, v145, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v146
	v_cndmask_b32_e32 v145, 0, v145, vcc
	v_cmp_eq_f32_e32 vcc, 0, v120
	v_cmp_class_f32_e64 s[0:1], v120, 4
	v_cmp_u_f32_e64 s[2:3], v120, v120
	v_cmp_class_f32_e64 s[4:5], v120, s51
	v_bfi_b32 v146, s90, 0, v120
	v_cmp_gt_f32_e64 s[6:7], 0, v120
	v_cndmask_b32_e64 v147, 0, v143, s[6:7]
	v_bfi_b32 v145, s90, v145, v147
	v_cndmask_b32_e32 v145, v145, v146, vcc
	v_cndmask_b32_e64 v145, v145, v144, s[0:1]
	v_cndmask_b32_e64 v145, v145, v121, s[4:5]
	v_cndmask_b32_e64 v120, v145, v120, s[2:3]
	v_add_f32_e32 v120, 1.0, v120
	v_div_scale_f32 v145, s[0:1], v120, v120, 1.0
	v_rcp_f32_e32 v146, v145
	v_fma_f32 v147, -v145, v146, 1.0
	v_fma_f32 v146, v147, v146, v146
	v_div_scale_f32 v147, vcc, 1.0, v120, 1.0
	v_mul_f32_e32 v149, v147, v146
	v_fma_f32 v150, -v145, v149, v147
	v_fma_f32 v149, v150, v146, v149
	v_fma_f32 v145, -v145, v149, v147
	v_div_fmas_f32 v145, v145, v146, v149
	v_div_fixup_f32 v120, v145, v120, 1.0
	v_div_scale_f32 v145, s[0:1], v78, v78, s13
	v_rcp_f32_e32 v146, v145
	v_fma_f32 v147, -v145, v146, 1.0
	v_fma_f32 v146, v147, v146, v146
	v_div_scale_f32 v147, vcc, s13, v78, s13
	v_mul_f32_e32 v149, v147, v146
	v_fma_f32 v150, -v145, v149, v147
	v_fma_f32 v149, v150, v146, v149
	v_fma_f32 v145, -v145, v149, v147
	v_div_fmas_f32 v145, v145, v146, v149
	v_div_fixup_f32 v145, v145, v78, s13
	v_frexp_mant_f32_e64 v146, |v145|
	v_cmp_gt_f32_e32 vcc, s42, v146
	v_cndmask_b32_e64 v147, 0, 1, vcc
	v_ldexp_f32 v146, v146, v147
	v_frexp_exp_i32_f32_e64 v147, |v145|
	v_subbrev_u32_e32 v147, vcc, 0, v147, vcc
	v_add_f32_e32 v149, -1.0, v146
	v_add_f32_e32 v150, 1.0, v146
	v_sub_f32_e32 v151, v150, v146
	v_sub_f32_e32 v154, v150, v151
	v_sub_f32_e32 v146, v146, v154
	v_sub_f32_e32 v151, 1.0, v151
	v_add_f32_e32 v146, v151, v146
	v_rcp_f32_e32 v151, v150
	v_mul_f32_e32 v154, v149, v151
	v_mul_f32_e32 v155, v150, v154
	v_fma_f32 v150, v154, v150, -v155
	v_fma_f32 v146, v154, v146, v150
	v_add_f32_e32 v150, v155, v146
	v_sub_f32_e32 v155, v150, v155
	v_sub_f32_e32 v146, v146, v155
	v_sub_f32_e32 v155, v149, v150
	v_sub_f32_e32 v149, v149, v155
	v_sub_f32_e32 v149, v149, v150
	v_sub_f32_e32 v146, v149, v146
	v_add_f32_e32 v146, v155, v146
	v_mul_f32_e32 v146, v151, v146
	v_add_f32_e32 v149, v154, v146
	v_sub_f32_e32 v150, v149, v154
	v_sub_f32_e32 v146, v146, v150
	v_mul_f32_e32 v150, v149, v149
	v_add_f32_e32 v151, v146, v146
	v_fma_f32 v154, v149, v149, -v150
	v_fma_f32 v151, v149, v151, v154
	v_fma_f32 v151, v146, v146, v151
	v_add_f32_e32 v154, v150, v151
	v_sub_f32_e32 v150, v154, v150
	v_sub_f32_e32 v150, v151, v150
	v_fma_f32 v151, v154, s48, v126
	v_fma_f32 v151, v154, v151, s93
	v_cvt_f32_i32_e32 v147, v147
	v_mul_f32_e32 v155, s45, v147
	v_fma_f32 v156, v147, s45, -v155
	v_fma_f32 v147, v147, s44, v156
	v_add_f32_e32 v156, v155, v147
	v_sub_f32_e32 v155, v156, v155
	v_sub_f32_e32 v147, v147, v155
	v_ldexp_f32 v155, v149, 1
	v_mul_f32_e32 v157, v149, v154
	v_fma_f32 v158, v154, v149, -v157
	v_mul_f32_e32 v149, v149, v150
	v_fma_f32 v149, v154, v146, v149
	v_add_f32_e32 v149, v158, v149
	v_add_f32_e32 v158, v157, v149
	v_mul_f32_e32 v159, v154, v151
	v_fma_f32 v154, v154, v151, -v159
	v_fma_f32 v150, v150, v151, v154
	v_add_f32_e32 v151, v159, v150
	v_sub_f32_e32 v154, v151, v159
	v_sub_f32_e32 v150, v150, v154
	v_add_f32_e32 v154, s28, v151
	v_add_f32_e32 v159, s41, v154
	v_sub_f32_e32 v151, v151, v159
	v_add_f32_e32 v150, s49, v150
	v_add_f32_e32 v150, v151, v150
	v_add_f32_e32 v151, v154, v150
	v_mul_f32_e32 v159, v158, v151
	v_fma_f32 v160, v158, v151, -v159
	v_sub_f32_e32 v154, v151, v154
	v_sub_f32_e32 v150, v150, v154
	v_sub_f32_e32 v154, v158, v157
	v_sub_f32_e32 v149, v149, v154
	v_mul_f32_e32 v149, v149, v151
	v_fma_f32 v149, v158, v150, v149
	v_add_f32_e32 v149, v160, v149
	v_ldexp_f32 v146, v146, 1
	v_add_f32_e32 v150, v159, v149
	v_sub_f32_e32 v151, v150, v159
	v_sub_f32_e32 v149, v149, v151
	v_add_f32_e32 v151, v155, v150
	v_sub_f32_e32 v154, v151, v155
	v_sub_f32_e32 v150, v150, v154
	v_add_f32_e32 v146, v146, v149
	v_add_f32_e32 v146, v150, v146
	v_add_f32_e32 v149, v151, v146
	v_sub_f32_e32 v150, v149, v151
	v_sub_f32_e32 v146, v146, v150
	v_add_f32_e32 v150, v156, v149
	v_sub_f32_e32 v151, v150, v156
	v_sub_f32_e32 v154, v150, v151
	v_sub_f32_e32 v154, v156, v154
	v_sub_f32_e32 v149, v149, v151
	v_add_f32_e32 v149, v149, v154
	v_add_f32_e32 v151, v147, v146
	v_sub_f32_e32 v154, v151, v147
	v_sub_f32_e32 v155, v151, v154
	v_sub_f32_e32 v147, v147, v155
	v_sub_f32_e32 v146, v146, v154
	v_add_f32_e32 v146, v146, v147
	v_add_f32_e32 v147, v151, v149
	v_add_f32_e32 v149, v150, v147
	v_sub_f32_e32 v150, v149, v150
	v_sub_f32_e32 v147, v147, v150
	v_add_f32_e32 v146, v146, v147
	v_add_f32_e32 v147, v149, v146
	v_sub_f32_e32 v149, v147, v149
	v_sub_f32_e32 v146, v146, v149
	v_mul_f32_e32 v149, s61, v147
	v_fma_f32 v150, v147, s61, -v149
	v_mul_f32_e32 v147, 0, v147
	v_fma_f32 v146, v146, s61, v147
	v_add_f32_e32 v146, v150, v146
	v_add_f32_e32 v147, v149, v146
	v_sub_f32_e32 v150, v147, v149
	v_sub_f32_e32 v146, v146, v150
	v_cmp_class_f32_e64 vcc, v149, s92
	v_cndmask_b32_e32 v147, v147, v149, vcc
	v_cmp_neq_f32_e64 vcc, |v147|, s94
	v_cndmask_b32_e32 v146, 0, v146, vcc
	v_mul_f32_e32 v149, s26, v147
	v_rndne_f32_e32 v149, v149
	v_mul_f32_e32 v150, s31, v149
	v_sub_f32_e32 v151, v147, v150
	v_sub_f32_e32 v154, v151, v147
	v_sub_f32_e32 v155, v151, v154
	v_sub_f32_e32 v155, v147, v155
	v_add_f32_e32 v150, v150, v154
	v_sub_f32_e32 v150, v155, v150
	v_add_f32_e32 v146, v146, v150
	v_add_f32_e32 v150, v151, v146
	v_sub_f32_e32 v151, v150, v151
	v_sub_f32_e32 v146, v146, v151
	v_mul_f32_e32 v151, s30, v149
	v_sub_f32_e32 v154, v150, v151
	v_sub_f32_e32 v150, v150, v154
	v_sub_f32_e32 v150, v150, v151
	v_add_f32_e32 v146, v146, v150
	v_add_f32_e32 v150, v154, v146
	v_sub_f32_e32 v151, v150, v154
	v_sub_f32_e32 v146, v146, v151
	v_mul_f32_e32 v151, s29, v149
	v_sub_f32_e32 v154, v150, v151
	v_sub_f32_e32 v150, v150, v154
	v_sub_f32_e32 v150, v150, v151
	v_add_f32_e32 v146, v146, v150
	v_add_f32_e32 v150, v154, v146
	v_sub_f32_e32 v151, v150, v154
	v_sub_f32_e32 v146, v146, v151
	v_fma_f32 v151, v150, s27, v125
	v_fma_f32 v151, v150, v151, s40
	v_fma_f32 v151, v150, v151, s35
	v_fma_f32 v151, v150, v151, s91
	v_mul_f32_e32 v154, v150, v150
	v_fma_f32 v155, v150, v150, -v154
	v_add_f32_e32 v156, v146, v146
	v_fma_f32 v155, v150, v156, v155
	v_fma_f32 v155, v146, v146, v155
	v_add_f32_e32 v156, v154, v155
	v_mul_f32_e32 v157, v151, v156
	v_sub_f32_e32 v154, v156, v154
	v_sub_f32_e32 v154, v155, v154
	v_fma_f32 v155, v156, v151, -v157
	v_fma_f32 v151, v154, v151, v155
	v_add_f32_e32 v154, v157, v151
	v_sub_f32_e32 v155, v154, v157
	v_sub_f32_e32 v151, v151, v155
	v_add_f32_e32 v155, v150, v154
	v_sub_f32_e32 v150, v155, v150
	v_sub_f32_e32 v150, v154, v150
	v_add_f32_e32 v146, v146, v151
	v_add_f32_e32 v146, v150, v146
	v_add_f32_e32 v146, v155, v146
	v_add_f32_e32 v146, 1.0, v146
	v_cvt_i32_f32_e32 v149, v149
	v_ldexp_f32 v146, v146, v149
	v_cmp_nlt_f32_e32 vcc, s34, v147
	v_cndmask_b32_e32 v146, v121, v146, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v147
	v_cndmask_b32_e32 v146, 0, v146, vcc
	v_cmp_eq_f32_e32 vcc, 0, v145
	v_cmp_class_f32_e64 s[0:1], v145, 4
	v_cmp_u_f32_e64 s[2:3], v145, v145
	v_cmp_class_f32_e64 s[4:5], v145, s51
	v_bfi_b32 v147, s90, 0, v145
	v_cmp_gt_f32_e64 s[6:7], 0, v145
	v_cndmask_b32_e64 v149, 0, v143, s[6:7]
	v_bfi_b32 v146, s90, v146, v149
	v_cndmask_b32_e32 v146, v146, v147, vcc
	v_cndmask_b32_e64 v146, v146, v144, s[0:1]
	v_cndmask_b32_e64 v146, v146, v121, s[4:5]
	v_cndmask_b32_e64 v145, v146, v145, s[2:3]
	v_add_f32_e32 v145, 1.0, v145
	v_div_scale_f32 v146, s[0:1], v145, v145, 1.0
	v_rcp_f32_e32 v147, v146
	v_fma_f32 v149, -v146, v147, 1.0
	v_fma_f32 v147, v149, v147, v147
	v_div_scale_f32 v149, vcc, 1.0, v145, 1.0
	v_mul_f32_e32 v150, v149, v147
	v_fma_f32 v151, -v146, v150, v149
	v_fma_f32 v150, v151, v147, v150
	v_fma_f32 v146, -v146, v150, v149
	v_div_fmas_f32 v146, v146, v147, v150
	v_div_fixup_f32 v145, v146, v145, 1.0
	v_mul_f32_e32 v146, 0x3eb33333, v93
	v_mul_f32_e32 v146, s9, v146
	v_cmp_gt_f32_e32 vcc, s21, v146
	v_cndmask_b32_e32 v147, 0, v142, vcc
	v_add_f32_e32 v146, v146, v147
	v_mul_f32_e32 v147, s26, v146
	v_cndmask_b32_e32 v149, 1.0, v135, vcc
	v_fma_f32 v150, v146, s26, -v147
	v_fma_f32 v150, v146, s22, v150
	v_exp_f32_e32 v150, v150
	v_exp_f32_e32 v147, v147
	v_mul_f32_e32 v147, v147, v150
	v_mul_f32_e32 v147, v149, v147
	v_cmp_ngt_f32_e32 vcc, s23, v146
	v_cndmask_b32_e32 v147, 0, v147, vcc
	v_cmp_nlt_f32_e32 vcc, s50, v146
	v_cndmask_b32_e32 v146, v121, v147, vcc
	v_frexp_mant_f32_e64 v147, |v102|
	v_cmp_gt_f32_e32 vcc, s42, v147
	v_cndmask_b32_e64 v149, 0, 1, vcc
	v_ldexp_f32 v147, v147, v149
	v_frexp_exp_i32_f32_e64 v149, |v102|
	v_subbrev_u32_e32 v149, vcc, 0, v149, vcc
	v_add_f32_e32 v150, -1.0, v147
	v_add_f32_e32 v151, 1.0, v147
	v_sub_f32_e32 v154, v151, v147
	v_sub_f32_e32 v155, v151, v154
	v_sub_f32_e32 v147, v147, v155
	v_sub_f32_e32 v154, 1.0, v154
	v_add_f32_e32 v147, v154, v147
	v_rcp_f32_e32 v154, v151
	v_mul_f32_e32 v155, v150, v154
	v_mul_f32_e32 v156, v151, v155
	v_fma_f32 v151, v155, v151, -v156
	v_fma_f32 v147, v155, v147, v151
	v_add_f32_e32 v151, v156, v147
	v_sub_f32_e32 v156, v151, v156
	v_sub_f32_e32 v147, v147, v156
	v_sub_f32_e32 v156, v150, v151
	v_sub_f32_e32 v150, v150, v156
	v_sub_f32_e32 v150, v150, v151
	v_sub_f32_e32 v147, v150, v147
	v_add_f32_e32 v147, v156, v147
	v_mul_f32_e32 v147, v154, v147
	v_add_f32_e32 v150, v155, v147
	v_sub_f32_e32 v151, v150, v155
	v_sub_f32_e32 v147, v147, v151
	v_mul_f32_e32 v151, v150, v150
	v_add_f32_e32 v154, v147, v147
	v_fma_f32 v155, v150, v150, -v151
	v_fma_f32 v154, v150, v154, v155
	v_fma_f32 v154, v147, v147, v154
	v_add_f32_e32 v155, v151, v154
	v_sub_f32_e32 v151, v155, v151
	v_sub_f32_e32 v151, v154, v151
	v_fma_f32 v154, v155, s48, v126
	v_fma_f32 v154, v155, v154, s93
	v_cvt_f32_i32_e32 v149, v149
	v_mul_f32_e32 v156, s45, v149
	v_fma_f32 v157, v149, s45, -v156
	v_fma_f32 v149, v149, s44, v157
	v_add_f32_e32 v157, v156, v149
	v_sub_f32_e32 v156, v157, v156
	v_sub_f32_e32 v149, v149, v156
	v_ldexp_f32 v156, v150, 1
	v_mul_f32_e32 v158, v150, v155
	v_fma_f32 v159, v155, v150, -v158
	v_mul_f32_e32 v150, v150, v151
	v_fma_f32 v150, v155, v147, v150
	v_add_f32_e32 v150, v159, v150
	v_add_f32_e32 v159, v158, v150
	v_mul_f32_e32 v160, v155, v154
	v_fma_f32 v155, v155, v154, -v160
	v_fma_f32 v151, v151, v154, v155
	v_add_f32_e32 v154, v160, v151
	v_sub_f32_e32 v155, v154, v160
	v_sub_f32_e32 v151, v151, v155
	v_add_f32_e32 v155, s28, v154
	v_add_f32_e32 v160, s41, v155
	v_sub_f32_e32 v154, v154, v160
	v_add_f32_e32 v151, s49, v151
	v_add_f32_e32 v151, v154, v151
	v_add_f32_e32 v154, v155, v151
	v_mul_f32_e32 v160, v159, v154
	v_fma_f32 v161, v159, v154, -v160
	v_sub_f32_e32 v155, v154, v155
	v_sub_f32_e32 v151, v151, v155
	v_sub_f32_e32 v155, v159, v158
	v_sub_f32_e32 v150, v150, v155
	v_mul_f32_e32 v150, v150, v154
	v_fma_f32 v150, v159, v151, v150
	v_add_f32_e32 v150, v161, v150
	v_ldexp_f32 v147, v147, 1
	v_add_f32_e32 v151, v160, v150
	v_sub_f32_e32 v154, v151, v160
	v_sub_f32_e32 v150, v150, v154
	v_add_f32_e32 v154, v156, v151
	v_sub_f32_e32 v155, v154, v156
	v_sub_f32_e32 v151, v151, v155
	v_add_f32_e32 v147, v147, v150
	v_add_f32_e32 v147, v151, v147
	v_add_f32_e32 v150, v154, v147
	v_sub_f32_e32 v151, v150, v154
	v_sub_f32_e32 v147, v147, v151
	v_add_f32_e32 v151, v157, v150
	v_sub_f32_e32 v154, v151, v157
	v_sub_f32_e32 v155, v151, v154
	v_sub_f32_e32 v155, v157, v155
	v_sub_f32_e32 v150, v150, v154
	v_add_f32_e32 v150, v150, v155
	v_add_f32_e32 v154, v149, v147
	v_sub_f32_e32 v155, v154, v149
	v_sub_f32_e32 v156, v154, v155
	v_sub_f32_e32 v149, v149, v156
	v_sub_f32_e32 v147, v147, v155
	v_add_f32_e32 v147, v147, v149
	v_add_f32_e32 v149, v154, v150
	v_add_f32_e32 v150, v151, v149
	v_sub_f32_e32 v151, v150, v151
	v_sub_f32_e32 v149, v149, v151
	v_add_f32_e32 v147, v147, v149
	v_add_f32_e32 v149, v150, v147
	v_sub_f32_e32 v150, v149, v150
	v_sub_f32_e32 v147, v147, v150
	v_mul_f32_e32 v150, s61, v149
	v_fma_f32 v151, v149, s61, -v150
	v_mul_f32_e32 v149, 0, v149
	v_fma_f32 v147, v147, s61, v149
	v_add_f32_e32 v147, v151, v147
	v_add_f32_e32 v149, v150, v147
	v_sub_f32_e32 v151, v149, v150
	v_sub_f32_e32 v147, v147, v151
	v_cmp_class_f32_e64 vcc, v150, s92
	v_cndmask_b32_e32 v149, v149, v150, vcc
	v_cmp_neq_f32_e64 vcc, |v149|, s94
	v_cndmask_b32_e32 v147, 0, v147, vcc
	v_mul_f32_e32 v150, s26, v149
	v_rndne_f32_e32 v150, v150
	v_mul_f32_e32 v151, s31, v150
	v_sub_f32_e32 v154, v149, v151
	v_sub_f32_e32 v155, v154, v149
	v_sub_f32_e32 v156, v154, v155
	v_sub_f32_e32 v156, v149, v156
	v_add_f32_e32 v151, v151, v155
	v_sub_f32_e32 v151, v156, v151
	v_add_f32_e32 v147, v147, v151
	v_add_f32_e32 v151, v154, v147
	v_sub_f32_e32 v154, v151, v154
	v_sub_f32_e32 v147, v147, v154
	v_mul_f32_e32 v154, s30, v150
	v_sub_f32_e32 v155, v151, v154
	v_sub_f32_e32 v151, v151, v155
	v_sub_f32_e32 v151, v151, v154
	v_add_f32_e32 v147, v147, v151
	v_add_f32_e32 v151, v155, v147
	v_sub_f32_e32 v154, v151, v155
	v_sub_f32_e32 v147, v147, v154
	v_mul_f32_e32 v154, s29, v150
	v_sub_f32_e32 v155, v151, v154
	v_sub_f32_e32 v151, v151, v155
	v_sub_f32_e32 v151, v151, v154
	v_add_f32_e32 v147, v147, v151
	v_add_f32_e32 v151, v155, v147
	v_sub_f32_e32 v154, v151, v155
	v_sub_f32_e32 v147, v147, v154
	v_fma_f32 v154, v151, s27, v125
	v_fma_f32 v154, v151, v154, s40
	v_fma_f32 v154, v151, v154, s35
	v_fma_f32 v154, v151, v154, s91
	v_mul_f32_e32 v155, v151, v151
	v_fma_f32 v156, v151, v151, -v155
	v_add_f32_e32 v157, v147, v147
	v_fma_f32 v156, v151, v157, v156
	v_fma_f32 v156, v147, v147, v156
	v_add_f32_e32 v157, v155, v156
	v_mul_f32_e32 v158, v154, v157
	v_sub_f32_e32 v155, v157, v155
	v_sub_f32_e32 v155, v156, v155
	v_fma_f32 v156, v157, v154, -v158
	v_fma_f32 v154, v155, v154, v156
	v_add_f32_e32 v155, v158, v154
	v_sub_f32_e32 v156, v155, v158
	v_sub_f32_e32 v154, v154, v156
	v_add_f32_e32 v156, v151, v155
	v_sub_f32_e32 v151, v156, v151
	v_sub_f32_e32 v151, v155, v151
	v_add_f32_e32 v147, v147, v154
	v_add_f32_e32 v147, v151, v147
	v_add_f32_e32 v147, v156, v147
	v_add_f32_e32 v147, 1.0, v147
	v_cvt_i32_f32_e32 v150, v150
	v_ldexp_f32 v147, v147, v150
	v_cmp_nlt_f32_e32 vcc, s34, v149
	v_cndmask_b32_e32 v147, v121, v147, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v149
	v_cndmask_b32_e32 v147, 0, v147, vcc
	v_cmp_eq_f32_e32 vcc, 0, v102
	v_cmp_class_f32_e64 s[0:1], v102, 4
	v_cmp_u_f32_e64 s[2:3], v102, v102
	v_cmp_class_f32_e64 s[4:5], v102, s51
	v_bfi_b32 v149, s90, 0, v102
	v_cmp_gt_f32_e64 s[6:7], 0, v102
	v_cndmask_b32_e64 v150, 0, v143, s[6:7]
	v_bfi_b32 v147, s90, v147, v150
	v_cndmask_b32_e32 v147, v147, v149, vcc
	v_cndmask_b32_e64 v147, v147, v144, s[0:1]
	v_cndmask_b32_e64 v147, v147, v121, s[4:5]
	v_cndmask_b32_e64 v147, v147, v102, s[2:3]
	v_mul_f32_e32 v149, v146, v147
	v_frexp_mant_f32_e64 v150, |v103|
	v_cmp_gt_f32_e32 vcc, s42, v150
	v_cndmask_b32_e64 v151, 0, 1, vcc
	v_ldexp_f32 v150, v150, v151
	v_frexp_exp_i32_f32_e64 v151, |v103|
	v_subbrev_u32_e32 v151, vcc, 0, v151, vcc
	v_add_f32_e32 v154, -1.0, v150
	v_add_f32_e32 v155, 1.0, v150
	v_sub_f32_e32 v156, v155, v150
	v_sub_f32_e32 v157, v155, v156
	v_sub_f32_e32 v150, v150, v157
	v_sub_f32_e32 v156, 1.0, v156
	v_add_f32_e32 v150, v156, v150
	v_rcp_f32_e32 v156, v155
	v_mul_f32_e32 v157, v154, v156
	v_mul_f32_e32 v158, v155, v157
	v_fma_f32 v155, v157, v155, -v158
	v_fma_f32 v150, v157, v150, v155
	v_add_f32_e32 v155, v158, v150
	v_sub_f32_e32 v158, v155, v158
	v_sub_f32_e32 v150, v150, v158
	v_sub_f32_e32 v158, v154, v155
	v_sub_f32_e32 v154, v154, v158
	v_sub_f32_e32 v154, v154, v155
	v_sub_f32_e32 v150, v154, v150
	v_add_f32_e32 v150, v158, v150
	v_mul_f32_e32 v150, v156, v150
	v_add_f32_e32 v154, v157, v150
	v_sub_f32_e32 v155, v154, v157
	v_sub_f32_e32 v150, v150, v155
	v_mul_f32_e32 v155, v154, v154
	v_add_f32_e32 v156, v150, v150
	v_fma_f32 v157, v154, v154, -v155
	v_fma_f32 v156, v154, v156, v157
	v_fma_f32 v156, v150, v150, v156
	v_add_f32_e32 v157, v155, v156
	v_sub_f32_e32 v155, v157, v155
	v_sub_f32_e32 v155, v156, v155
	v_fma_f32 v156, v157, s48, v126
	v_fma_f32 v156, v157, v156, s93
	v_cvt_f32_i32_e32 v151, v151
	v_mul_f32_e32 v158, s45, v151
	v_fma_f32 v159, v151, s45, -v158
	v_fma_f32 v151, v151, s44, v159
	v_add_f32_e32 v159, v158, v151
	v_sub_f32_e32 v158, v159, v158
	v_sub_f32_e32 v151, v151, v158
	v_ldexp_f32 v158, v154, 1
	v_mul_f32_e32 v160, v154, v157
	v_fma_f32 v161, v157, v154, -v160
	v_mul_f32_e32 v154, v154, v155
	v_fma_f32 v154, v157, v150, v154
	v_add_f32_e32 v154, v161, v154
	v_add_f32_e32 v161, v160, v154
	v_mul_f32_e32 v162, v157, v156
	v_fma_f32 v157, v157, v156, -v162
	v_fma_f32 v155, v155, v156, v157
	v_add_f32_e32 v156, v162, v155
	v_sub_f32_e32 v157, v156, v162
	v_sub_f32_e32 v155, v155, v157
	v_add_f32_e32 v157, s28, v156
	v_add_f32_e32 v162, s41, v157
	v_sub_f32_e32 v156, v156, v162
	v_add_f32_e32 v155, s49, v155
	v_add_f32_e32 v155, v156, v155
	v_add_f32_e32 v156, v157, v155
	v_mul_f32_e32 v162, v161, v156
	v_fma_f32 v163, v161, v156, -v162
	v_sub_f32_e32 v157, v156, v157
	v_sub_f32_e32 v155, v155, v157
	v_sub_f32_e32 v157, v161, v160
	v_sub_f32_e32 v154, v154, v157
	v_mul_f32_e32 v154, v154, v156
	v_fma_f32 v154, v161, v155, v154
	v_add_f32_e32 v154, v163, v154
	v_ldexp_f32 v150, v150, 1
	v_add_f32_e32 v155, v162, v154
	v_sub_f32_e32 v156, v155, v162
	v_sub_f32_e32 v154, v154, v156
	v_add_f32_e32 v156, v158, v155
	v_sub_f32_e32 v157, v156, v158
	v_sub_f32_e32 v155, v155, v157
	v_add_f32_e32 v150, v150, v154
	v_add_f32_e32 v150, v155, v150
	v_add_f32_e32 v154, v156, v150
	v_sub_f32_e32 v155, v154, v156
	v_sub_f32_e32 v150, v150, v155
	v_add_f32_e32 v155, v159, v154
	v_sub_f32_e32 v156, v155, v159
	v_sub_f32_e32 v157, v155, v156
	v_sub_f32_e32 v157, v159, v157
	v_sub_f32_e32 v154, v154, v156
	v_add_f32_e32 v154, v154, v157
	v_add_f32_e32 v156, v151, v150
	v_sub_f32_e32 v157, v156, v151
	v_sub_f32_e32 v158, v156, v157
	v_sub_f32_e32 v151, v151, v158
	v_sub_f32_e32 v150, v150, v157
	v_add_f32_e32 v150, v150, v151
	v_add_f32_e32 v151, v156, v154
	v_add_f32_e32 v154, v155, v151
	v_sub_f32_e32 v155, v154, v155
	v_sub_f32_e32 v151, v151, v155
	v_add_f32_e32 v150, v150, v151
	v_add_f32_e32 v151, v154, v150
	v_sub_f32_e32 v154, v151, v154
	v_sub_f32_e32 v150, v150, v154
	v_mul_f32_e32 v154, s61, v151
	v_fma_f32 v155, v151, s61, -v154
	v_mul_f32_e32 v151, 0, v151
	v_fma_f32 v150, v150, s61, v151
	v_add_f32_e32 v150, v155, v150
	v_add_f32_e32 v151, v154, v150
	v_sub_f32_e32 v155, v151, v154
	v_sub_f32_e32 v150, v150, v155
	v_cmp_class_f32_e64 vcc, v154, s92
	v_cndmask_b32_e32 v151, v151, v154, vcc
	v_cmp_neq_f32_e64 vcc, |v151|, s94
	v_cndmask_b32_e32 v150, 0, v150, vcc
	v_mul_f32_e32 v154, s26, v151
	v_rndne_f32_e32 v154, v154
	v_mul_f32_e32 v155, s31, v154
	v_sub_f32_e32 v156, v151, v155
	v_sub_f32_e32 v157, v156, v151
	v_sub_f32_e32 v158, v156, v157
	v_sub_f32_e32 v158, v151, v158
	v_add_f32_e32 v155, v155, v157
	v_sub_f32_e32 v155, v158, v155
	v_add_f32_e32 v150, v150, v155
	v_add_f32_e32 v155, v156, v150
	v_sub_f32_e32 v156, v155, v156
	v_sub_f32_e32 v150, v150, v156
	v_mul_f32_e32 v156, s30, v154
	v_sub_f32_e32 v157, v155, v156
	v_sub_f32_e32 v155, v155, v157
	v_sub_f32_e32 v155, v155, v156
	v_add_f32_e32 v150, v150, v155
	v_add_f32_e32 v155, v157, v150
	v_sub_f32_e32 v156, v155, v157
	v_sub_f32_e32 v150, v150, v156
	v_mul_f32_e32 v156, s29, v154
	v_sub_f32_e32 v157, v155, v156
	v_sub_f32_e32 v155, v155, v157
	v_sub_f32_e32 v155, v155, v156
	v_add_f32_e32 v150, v150, v155
	v_add_f32_e32 v155, v157, v150
	v_sub_f32_e32 v156, v155, v157
	v_sub_f32_e32 v150, v150, v156
	v_fma_f32 v156, v155, s27, v125
	v_fma_f32 v156, v155, v156, s40
	v_fma_f32 v156, v155, v156, s35
	v_fma_f32 v156, v155, v156, s91
	v_mul_f32_e32 v157, v155, v155
	v_fma_f32 v158, v155, v155, -v157
	v_add_f32_e32 v159, v150, v150
	v_fma_f32 v158, v155, v159, v158
	v_fma_f32 v158, v150, v150, v158
	v_add_f32_e32 v159, v157, v158
	v_mul_f32_e32 v160, v156, v159
	v_sub_f32_e32 v157, v159, v157
	v_sub_f32_e32 v157, v158, v157
	v_fma_f32 v158, v159, v156, -v160
	v_fma_f32 v156, v157, v156, v158
	v_add_f32_e32 v157, v160, v156
	v_sub_f32_e32 v158, v157, v160
	v_sub_f32_e32 v156, v156, v158
	v_add_f32_e32 v158, v155, v157
	v_sub_f32_e32 v155, v158, v155
	v_sub_f32_e32 v155, v157, v155
	v_add_f32_e32 v150, v150, v156
	v_add_f32_e32 v150, v155, v150
	v_add_f32_e32 v150, v158, v150
	v_add_f32_e32 v150, 1.0, v150
	v_cvt_i32_f32_e32 v154, v154
	v_ldexp_f32 v150, v150, v154
	v_cmp_nlt_f32_e32 vcc, s34, v151
	v_cndmask_b32_e32 v150, v121, v150, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v151
	v_cndmask_b32_e32 v150, 0, v150, vcc
	v_cmp_eq_f32_e32 vcc, 0, v103
	v_cmp_class_f32_e64 s[0:1], v103, 4
	v_cmp_u_f32_e64 s[2:3], v103, v103
	v_cmp_class_f32_e64 s[4:5], v103, s51
	v_bfi_b32 v151, s90, 0, v103
	v_cmp_gt_f32_e64 s[6:7], 0, v103
	v_cndmask_b32_e64 v154, 0, v143, s[6:7]
	v_bfi_b32 v150, s90, v150, v154
	v_cndmask_b32_e32 v150, v150, v151, vcc
	v_cndmask_b32_e64 v150, v150, v144, s[0:1]
	v_cndmask_b32_e64 v150, v150, v121, s[4:5]
	v_cndmask_b32_e64 v150, v150, v103, s[2:3]
	v_mul_f32_e32 v146, v146, v150
	v_mul_f32_e32 v151, 0xbf266666, v93
	v_mul_f32_e32 v151, s9, v151
	v_cmp_gt_f32_e32 vcc, s21, v151
	v_cndmask_b32_e32 v142, 0, v142, vcc
	v_add_f32_e32 v142, v151, v142
	v_mul_f32_e32 v151, s26, v142
	v_cndmask_b32_e32 v135, 1.0, v135, vcc
	v_fma_f32 v154, v142, s26, -v151
	v_fma_f32 v154, v142, s22, v154
	v_exp_f32_e32 v154, v154
	v_exp_f32_e32 v151, v151
	v_mul_f32_e32 v151, v151, v154
	v_mul_f32_e32 v135, v135, v151
	v_cmp_ngt_f32_e32 vcc, s23, v142
	v_cndmask_b32_e32 v135, 0, v135, vcc
	v_cmp_nlt_f32_e32 vcc, s50, v142
	v_cndmask_b32_e32 v135, v121, v135, vcc
	s_mov_b32 s9, 0x4a277b00
	v_mul_f32_e32 v142, s9, v135
	v_mul_f32_e32 v151, v77, v142
	s_mov_b32 s13, 0x4144a3d7
	v_div_scale_f32 v154, s[0:1], s13, s13, v102
	v_rcp_f32_e32 v155, v154
	v_fma_f32 v156, -v154, v155, 1.0
	v_fma_f32 v155, v156, v155, v155
	v_div_scale_f32 v156, vcc, v102, s13, v102
	v_mul_f32_e32 v157, v156, v155
	v_fma_f32 v158, -v154, v157, v156
	v_fma_f32 v157, v158, v155, v157
	v_fma_f32 v154, -v154, v157, v156
	v_div_fmas_f32 v154, v154, v155, v157
	v_div_fixup_f32 v154, v154, s13, v102
	v_frexp_mant_f32_e64 v155, |v154|
	v_cmp_gt_f32_e32 vcc, s42, v155
	v_cndmask_b32_e64 v156, 0, 1, vcc
	v_ldexp_f32 v155, v155, v156
	v_frexp_exp_i32_f32_e64 v156, |v154|
	v_subbrev_u32_e32 v156, vcc, 0, v156, vcc
	v_add_f32_e32 v157, -1.0, v155
	v_add_f32_e32 v158, 1.0, v155
	v_sub_f32_e32 v159, v158, v155
	v_sub_f32_e32 v160, v158, v159
	v_sub_f32_e32 v155, v155, v160
	v_sub_f32_e32 v159, 1.0, v159
	v_add_f32_e32 v155, v159, v155
	v_rcp_f32_e32 v159, v158
	v_mul_f32_e32 v160, v157, v159
	v_mul_f32_e32 v161, v158, v160
	v_fma_f32 v158, v160, v158, -v161
	v_fma_f32 v155, v160, v155, v158
	v_add_f32_e32 v158, v161, v155
	v_sub_f32_e32 v161, v158, v161
	v_sub_f32_e32 v155, v155, v161
	v_sub_f32_e32 v161, v157, v158
	v_sub_f32_e32 v157, v157, v161
	v_sub_f32_e32 v157, v157, v158
	v_sub_f32_e32 v155, v157, v155
	v_add_f32_e32 v155, v161, v155
	v_mul_f32_e32 v155, v159, v155
	v_add_f32_e32 v157, v160, v155
	v_sub_f32_e32 v158, v157, v160
	v_sub_f32_e32 v155, v155, v158
	v_mul_f32_e32 v158, v157, v157
	v_add_f32_e32 v159, v155, v155
	v_fma_f32 v160, v157, v157, -v158
	v_fma_f32 v159, v157, v159, v160
	v_fma_f32 v159, v155, v155, v159
	v_add_f32_e32 v160, v158, v159
	v_sub_f32_e32 v158, v160, v158
	v_sub_f32_e32 v158, v159, v158
	v_fma_f32 v159, v160, s48, v126
	v_fma_f32 v159, v160, v159, s93
	v_cvt_f32_i32_e32 v156, v156
	v_mul_f32_e32 v161, s45, v156
	v_fma_f32 v162, v156, s45, -v161
	v_fma_f32 v156, v156, s44, v162
	v_add_f32_e32 v162, v161, v156
	v_sub_f32_e32 v161, v162, v161
	v_sub_f32_e32 v156, v156, v161
	v_ldexp_f32 v161, v157, 1
	v_mul_f32_e32 v163, v157, v160
	v_fma_f32 v164, v160, v157, -v163
	v_mul_f32_e32 v157, v157, v158
	v_fma_f32 v157, v160, v155, v157
	v_add_f32_e32 v157, v164, v157
	v_add_f32_e32 v164, v163, v157
	v_mul_f32_e32 v165, v160, v159
	v_fma_f32 v160, v160, v159, -v165
	v_fma_f32 v158, v158, v159, v160
	v_add_f32_e32 v159, v165, v158
	v_sub_f32_e32 v160, v159, v165
	v_sub_f32_e32 v158, v158, v160
	v_add_f32_e32 v160, s28, v159
	v_add_f32_e32 v165, s41, v160
	v_sub_f32_e32 v159, v159, v165
	v_add_f32_e32 v158, s49, v158
	v_add_f32_e32 v158, v159, v158
	v_add_f32_e32 v159, v160, v158
	v_mul_f32_e32 v165, v164, v159
	v_fma_f32 v166, v164, v159, -v165
	v_sub_f32_e32 v160, v159, v160
	v_sub_f32_e32 v158, v158, v160
	v_sub_f32_e32 v160, v164, v163
	v_sub_f32_e32 v157, v157, v160
	v_mul_f32_e32 v157, v157, v159
	v_fma_f32 v157, v164, v158, v157
	v_add_f32_e32 v157, v166, v157
	v_ldexp_f32 v155, v155, 1
	v_add_f32_e32 v158, v165, v157
	v_sub_f32_e32 v159, v158, v165
	v_sub_f32_e32 v157, v157, v159
	v_add_f32_e32 v159, v161, v158
	v_sub_f32_e32 v160, v159, v161
	v_sub_f32_e32 v158, v158, v160
	v_add_f32_e32 v155, v155, v157
	v_add_f32_e32 v155, v158, v155
	v_add_f32_e32 v157, v159, v155
	v_sub_f32_e32 v158, v157, v159
	v_sub_f32_e32 v155, v155, v158
	v_add_f32_e32 v158, v162, v157
	v_sub_f32_e32 v159, v158, v162
	v_sub_f32_e32 v160, v158, v159
	v_sub_f32_e32 v160, v162, v160
	v_sub_f32_e32 v157, v157, v159
	v_add_f32_e32 v157, v157, v160
	v_add_f32_e32 v159, v156, v155
	v_sub_f32_e32 v160, v159, v156
	v_sub_f32_e32 v161, v159, v160
	v_sub_f32_e32 v156, v156, v161
	v_sub_f32_e32 v155, v155, v160
	v_add_f32_e32 v155, v155, v156
	v_add_f32_e32 v156, v159, v157
	v_add_f32_e32 v157, v158, v156
	v_sub_f32_e32 v158, v157, v158
	v_sub_f32_e32 v156, v156, v158
	v_add_f32_e32 v155, v155, v156
	v_add_f32_e32 v156, v157, v155
	v_sub_f32_e32 v157, v156, v157
	v_sub_f32_e32 v155, v155, v157
	v_mul_f32_e32 v157, s61, v156
	v_fma_f32 v158, v156, s61, -v157
	v_mul_f32_e32 v156, 0, v156
	v_fma_f32 v155, v155, s61, v156
	v_add_f32_e32 v155, v158, v155
	v_add_f32_e32 v156, v157, v155
	v_sub_f32_e32 v158, v156, v157
	v_sub_f32_e32 v155, v155, v158
	v_cmp_class_f32_e64 vcc, v157, s92
	v_cndmask_b32_e32 v156, v156, v157, vcc
	v_cmp_neq_f32_e64 vcc, |v156|, s94
	v_cndmask_b32_e32 v155, 0, v155, vcc
	v_mul_f32_e32 v157, s26, v156
	v_rndne_f32_e32 v157, v157
	v_mul_f32_e32 v158, s31, v157
	v_sub_f32_e32 v159, v156, v158
	v_sub_f32_e32 v160, v159, v156
	v_sub_f32_e32 v161, v159, v160
	v_sub_f32_e32 v161, v156, v161
	v_add_f32_e32 v158, v158, v160
	v_sub_f32_e32 v158, v161, v158
	v_add_f32_e32 v155, v155, v158
	v_add_f32_e32 v158, v159, v155
	v_sub_f32_e32 v159, v158, v159
	v_sub_f32_e32 v155, v155, v159
	v_mul_f32_e32 v159, s30, v157
	v_sub_f32_e32 v160, v158, v159
	v_sub_f32_e32 v158, v158, v160
	v_sub_f32_e32 v158, v158, v159
	v_add_f32_e32 v155, v155, v158
	v_add_f32_e32 v158, v160, v155
	v_sub_f32_e32 v159, v158, v160
	v_sub_f32_e32 v155, v155, v159
	v_mul_f32_e32 v159, s29, v157
	v_sub_f32_e32 v160, v158, v159
	v_sub_f32_e32 v158, v158, v160
	v_sub_f32_e32 v158, v158, v159
	v_add_f32_e32 v155, v155, v158
	v_add_f32_e32 v158, v160, v155
	v_sub_f32_e32 v159, v158, v160
	v_sub_f32_e32 v155, v155, v159
	v_fma_f32 v159, v158, s27, v125
	v_fma_f32 v159, v158, v159, s40
	v_fma_f32 v159, v158, v159, s35
	v_fma_f32 v159, v158, v159, s91
	v_mul_f32_e32 v160, v158, v158
	v_fma_f32 v161, v158, v158, -v160
	v_add_f32_e32 v162, v155, v155
	v_fma_f32 v161, v158, v162, v161
	v_fma_f32 v161, v155, v155, v161
	v_add_f32_e32 v162, v160, v161
	v_mul_f32_e32 v163, v159, v162
	v_sub_f32_e32 v160, v162, v160
	v_sub_f32_e32 v160, v161, v160
	v_fma_f32 v161, v162, v159, -v163
	v_fma_f32 v159, v160, v159, v161
	v_add_f32_e32 v160, v163, v159
	v_sub_f32_e32 v161, v160, v163
	v_sub_f32_e32 v159, v159, v161
	v_add_f32_e32 v161, v158, v160
	v_sub_f32_e32 v158, v161, v158
	v_sub_f32_e32 v158, v160, v158
	v_add_f32_e32 v155, v155, v159
	v_add_f32_e32 v155, v158, v155
	v_add_f32_e32 v155, v161, v155
	v_add_f32_e32 v155, 1.0, v155
	v_cvt_i32_f32_e32 v157, v157
	v_ldexp_f32 v155, v155, v157
	v_cmp_nlt_f32_e32 vcc, s34, v156
	v_cndmask_b32_e32 v155, v121, v155, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v156
	v_cndmask_b32_e32 v155, 0, v155, vcc
	v_cmp_eq_f32_e32 vcc, 0, v154
	v_cmp_class_f32_e64 s[0:1], v154, 4
	v_cmp_u_f32_e64 s[2:3], v154, v154
	v_cmp_class_f32_e64 s[4:5], v154, s51
	v_bfi_b32 v156, s90, 0, v154
	v_cmp_gt_f32_e64 s[6:7], 0, v154
	v_cndmask_b32_e64 v157, 0, v143, s[6:7]
	v_bfi_b32 v155, s90, v155, v157
	v_cndmask_b32_e32 v155, v155, v156, vcc
	v_cndmask_b32_e64 v155, v155, v144, s[0:1]
	v_cndmask_b32_e64 v155, v155, v121, s[4:5]
	v_cndmask_b32_e64 v154, v155, v154, s[2:3]
	v_add_f32_e32 v154, 1.0, v154
	s_mov_b32 s21, 0x4619ebd7
	v_mul_f32_e32 v154, s21, v154
	s_mov_b32 s22, 0x49238e1e
	v_fma_f32 v154, v77, s22, v154
	s_mov_b32 s23, 0x3b6b4635
	v_div_scale_f32 v155, s[0:1], s23, s23, v77
	v_rcp_f32_e32 v156, v155
	v_fma_f32 v157, -v155, v156, 1.0
	v_fma_f32 v156, v157, v156, v156
	v_div_scale_f32 v157, vcc, v77, s23, v77
	v_mul_f32_e32 v158, v157, v156
	v_fma_f32 v159, -v155, v158, v157
	v_fma_f32 v158, v159, v156, v158
	v_fma_f32 v155, -v155, v158, v157
	v_div_fmas_f32 v155, v155, v156, v158
	v_div_fixup_f32 v155, v155, s23, v77
	v_add_f32_e32 v155, 1.0, v155
	s_mov_b32 s50, 0x4550d65c
	v_fma_f32 v154, v155, s50, v154
	s_mov_b32 s82, 0x3fa66666
	v_fma_f32 v154, v147, s82, v154
	v_fma_f32 v147, v147, s20, v154
	v_fma_f32 v147, v77, s9, v147
	s_mov_b32 s0, 0x3e8a3d71
	v_fma_f32 v135, v135, s0, 1.0
	v_mul_f32_e32 v147, v135, v147
	v_mul_f32_e32 v154, v78, v142
	v_div_scale_f32 v142, s[0:1], s13, s13, v103
	v_rcp_f32_e32 v155, v142
	v_fma_f32 v156, -v142, v155, 1.0
	v_fma_f32 v155, v156, v155, v155
	v_div_scale_f32 v156, vcc, v103, s13, v103
	v_mul_f32_e32 v157, v156, v155
	v_fma_f32 v158, -v142, v157, v156
	v_fma_f32 v157, v158, v155, v157
	v_fma_f32 v142, -v142, v157, v156
	v_div_fmas_f32 v142, v142, v155, v157
	v_div_fixup_f32 v142, v142, s13, v103
	v_frexp_mant_f32_e64 v155, |v142|
	v_cmp_gt_f32_e32 vcc, s42, v155
	v_cndmask_b32_e64 v156, 0, 1, vcc
	v_ldexp_f32 v155, v155, v156
	v_frexp_exp_i32_f32_e64 v156, |v142|
	v_subbrev_u32_e32 v156, vcc, 0, v156, vcc
	v_add_f32_e32 v157, -1.0, v155
	v_add_f32_e32 v158, 1.0, v155
	v_sub_f32_e32 v159, v158, v155
	v_sub_f32_e32 v160, v158, v159
	v_sub_f32_e32 v155, v155, v160
	v_sub_f32_e32 v159, 1.0, v159
	v_add_f32_e32 v155, v159, v155
	v_rcp_f32_e32 v159, v158
	v_mul_f32_e32 v160, v157, v159
	v_mul_f32_e32 v161, v158, v160
	v_fma_f32 v158, v160, v158, -v161
	v_fma_f32 v155, v160, v155, v158
	v_add_f32_e32 v158, v161, v155
	v_sub_f32_e32 v161, v158, v161
	v_sub_f32_e32 v155, v155, v161
	v_sub_f32_e32 v161, v157, v158
	v_sub_f32_e32 v157, v157, v161
	v_sub_f32_e32 v157, v157, v158
	v_sub_f32_e32 v155, v157, v155
	v_add_f32_e32 v155, v161, v155
	v_mul_f32_e32 v155, v159, v155
	v_add_f32_e32 v157, v160, v155
	v_sub_f32_e32 v158, v157, v160
	v_sub_f32_e32 v155, v155, v158
	v_mul_f32_e32 v158, v157, v157
	v_add_f32_e32 v159, v155, v155
	v_fma_f32 v160, v157, v157, -v158
	v_fma_f32 v159, v157, v159, v160
	v_fma_f32 v159, v155, v155, v159
	v_add_f32_e32 v160, v158, v159
	v_sub_f32_e32 v158, v160, v158
	v_sub_f32_e32 v158, v159, v158
	v_fma_f32 v159, v160, s48, v126
	v_fma_f32 v159, v160, v159, s93
	v_cvt_f32_i32_e32 v156, v156
	v_mul_f32_e32 v161, s45, v156
	v_fma_f32 v162, v156, s45, -v161
	v_fma_f32 v156, v156, s44, v162
	v_add_f32_e32 v162, v161, v156
	v_sub_f32_e32 v161, v162, v161
	v_sub_f32_e32 v156, v156, v161
	v_ldexp_f32 v161, v157, 1
	v_mul_f32_e32 v163, v157, v160
	v_fma_f32 v164, v160, v157, -v163
	v_mul_f32_e32 v157, v157, v158
	v_fma_f32 v157, v160, v155, v157
	v_add_f32_e32 v157, v164, v157
	v_add_f32_e32 v164, v163, v157
	v_mul_f32_e32 v165, v160, v159
	v_fma_f32 v160, v160, v159, -v165
	v_fma_f32 v158, v158, v159, v160
	v_add_f32_e32 v159, v165, v158
	v_sub_f32_e32 v160, v159, v165
	v_sub_f32_e32 v158, v158, v160
	v_add_f32_e32 v160, s28, v159
	v_add_f32_e32 v165, s41, v160
	v_sub_f32_e32 v159, v159, v165
	v_add_f32_e32 v158, s49, v158
	v_add_f32_e32 v158, v159, v158
	v_add_f32_e32 v159, v160, v158
	v_mul_f32_e32 v165, v164, v159
	v_fma_f32 v166, v164, v159, -v165
	v_sub_f32_e32 v160, v159, v160
	v_sub_f32_e32 v158, v158, v160
	v_sub_f32_e32 v160, v164, v163
	v_sub_f32_e32 v157, v157, v160
	v_mul_f32_e32 v157, v157, v159
	v_fma_f32 v157, v164, v158, v157
	v_add_f32_e32 v157, v166, v157
	v_ldexp_f32 v155, v155, 1
	v_add_f32_e32 v158, v165, v157
	v_sub_f32_e32 v159, v158, v165
	v_sub_f32_e32 v157, v157, v159
	v_add_f32_e32 v159, v161, v158
	v_sub_f32_e32 v160, v159, v161
	v_sub_f32_e32 v158, v158, v160
	v_add_f32_e32 v155, v155, v157
	v_add_f32_e32 v155, v158, v155
	v_add_f32_e32 v157, v159, v155
	v_sub_f32_e32 v158, v157, v159
	v_sub_f32_e32 v155, v155, v158
	v_add_f32_e32 v158, v162, v157
	v_sub_f32_e32 v159, v158, v162
	v_sub_f32_e32 v160, v158, v159
	v_sub_f32_e32 v160, v162, v160
	v_sub_f32_e32 v157, v157, v159
	v_add_f32_e32 v157, v157, v160
	v_add_f32_e32 v159, v156, v155
	v_sub_f32_e32 v160, v159, v156
	v_sub_f32_e32 v161, v159, v160
	v_sub_f32_e32 v156, v156, v161
	v_sub_f32_e32 v155, v155, v160
	v_add_f32_e32 v155, v155, v156
	v_add_f32_e32 v156, v159, v157
	v_add_f32_e32 v157, v158, v156
	v_sub_f32_e32 v158, v157, v158
	v_sub_f32_e32 v156, v156, v158
	v_add_f32_e32 v155, v155, v156
	v_add_f32_e32 v156, v157, v155
	v_sub_f32_e32 v157, v156, v157
	v_sub_f32_e32 v155, v155, v157
	v_mul_f32_e32 v157, s61, v156
	v_fma_f32 v158, v156, s61, -v157
	v_mul_f32_e32 v156, 0, v156
	v_fma_f32 v155, v155, s61, v156
	v_add_f32_e32 v155, v158, v155
	v_add_f32_e32 v156, v157, v155
	v_sub_f32_e32 v158, v156, v157
	v_sub_f32_e32 v155, v155, v158
	v_cmp_class_f32_e64 vcc, v157, s92
	v_cndmask_b32_e32 v156, v156, v157, vcc
	v_cmp_neq_f32_e64 vcc, |v156|, s94
	v_cndmask_b32_e32 v155, 0, v155, vcc
	v_mul_f32_e32 v157, s26, v156
	v_rndne_f32_e32 v157, v157
	v_mul_f32_e32 v158, s31, v157
	v_sub_f32_e32 v159, v156, v158
	v_sub_f32_e32 v160, v159, v156
	v_sub_f32_e32 v161, v159, v160
	v_sub_f32_e32 v161, v156, v161
	v_add_f32_e32 v158, v158, v160
	v_sub_f32_e32 v158, v161, v158
	v_add_f32_e32 v155, v155, v158
	v_add_f32_e32 v158, v159, v155
	v_sub_f32_e32 v159, v158, v159
	v_sub_f32_e32 v155, v155, v159
	v_mul_f32_e32 v159, s30, v157
	v_sub_f32_e32 v160, v158, v159
	v_sub_f32_e32 v158, v158, v160
	v_sub_f32_e32 v158, v158, v159
	v_add_f32_e32 v155, v155, v158
	v_add_f32_e32 v158, v160, v155
	v_sub_f32_e32 v159, v158, v160
	v_sub_f32_e32 v155, v155, v159
	v_mul_f32_e32 v159, s29, v157
	v_sub_f32_e32 v160, v158, v159
	v_sub_f32_e32 v158, v158, v160
	v_sub_f32_e32 v158, v158, v159
	v_add_f32_e32 v155, v155, v158
	v_add_f32_e32 v158, v160, v155
	v_sub_f32_e32 v159, v158, v160
	v_sub_f32_e32 v155, v155, v159
	v_fma_f32 v159, v158, s27, v125
	v_fma_f32 v159, v158, v159, s40
	v_fma_f32 v159, v158, v159, s35
	v_fma_f32 v159, v158, v159, s91
	v_mul_f32_e32 v160, v158, v158
	v_fma_f32 v161, v158, v158, -v160
	v_add_f32_e32 v162, v155, v155
	v_fma_f32 v161, v158, v162, v161
	v_fma_f32 v161, v155, v155, v161
	v_add_f32_e32 v162, v160, v161
	v_mul_f32_e32 v163, v159, v162
	v_sub_f32_e32 v160, v162, v160
	v_sub_f32_e32 v160, v161, v160
	v_fma_f32 v161, v162, v159, -v163
	v_fma_f32 v159, v160, v159, v161
	v_add_f32_e32 v160, v163, v159
	v_sub_f32_e32 v161, v160, v163
	v_sub_f32_e32 v159, v159, v161
	v_add_f32_e32 v161, v158, v160
	v_sub_f32_e32 v158, v161, v158
	v_sub_f32_e32 v158, v160, v158
	v_add_f32_e32 v155, v155, v159
	v_add_f32_e32 v155, v158, v155
	v_add_f32_e32 v155, v161, v155
	v_add_f32_e32 v155, 1.0, v155
	v_cvt_i32_f32_e32 v157, v157
	v_ldexp_f32 v155, v155, v157
	v_cmp_nlt_f32_e32 vcc, s34, v156
	v_cndmask_b32_e32 v155, v121, v155, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v156
	v_cndmask_b32_e32 v155, 0, v155, vcc
	v_cmp_eq_f32_e32 vcc, 0, v142
	v_cmp_class_f32_e64 s[0:1], v142, 4
	v_cmp_u_f32_e64 s[2:3], v142, v142
	v_cmp_class_f32_e64 s[4:5], v142, s51
	v_bfi_b32 v156, s90, 0, v142
	v_cmp_gt_f32_e64 s[6:7], 0, v142
	v_cndmask_b32_e64 v143, 0, v143, s[6:7]
	v_bfi_b32 v143, s90, v155, v143
	v_cndmask_b32_e32 v143, v143, v156, vcc
	v_cndmask_b32_e64 v143, v143, v144, s[0:1]
	v_cndmask_b32_e64 v143, v143, v121, s[4:5]
	v_cndmask_b32_e64 v142, v143, v142, s[2:3]
	v_add_f32_e32 v142, 1.0, v142
	v_mul_f32_e32 v142, s21, v142
	v_fma_f32 v142, v78, s22, v142
	v_div_scale_f32 v143, s[0:1], s23, s23, v78
	v_rcp_f32_e32 v144, v143
	v_fma_f32 v155, -v143, v144, 1.0
	v_fma_f32 v144, v155, v144, v144
	v_div_scale_f32 v155, vcc, v78, s23, v78
	v_mul_f32_e32 v156, v155, v144
	v_fma_f32 v157, -v143, v156, v155
	v_fma_f32 v156, v157, v144, v156
	v_fma_f32 v143, -v143, v156, v155
	v_div_fmas_f32 v143, v143, v144, v156
	v_div_fixup_f32 v143, v143, s23, v78
	v_add_f32_e32 v143, 1.0, v143
	v_fma_f32 v142, v143, s50, v142
	v_fma_f32 v142, v150, s82, v142
	v_fma_f32 v142, v150, s20, v142
	v_fma_f32 v142, v78, s9, v142
	v_mul_f32_e32 v135, v135, v142
	v_mul_f32_e32 v120, 0x3f7d70a4, v120
	v_fma_f32 v142, v149, s20, -v151
	v_mul_f32_e32 v120, v142, v120
	v_div_scale_f32 v142, s[0:1], v147, v147, v120
	v_rcp_f32_e32 v143, v142
	v_fma_f32 v144, -v142, v143, 1.0
	v_fma_f32 v143, v144, v143, v143
	v_div_scale_f32 v144, vcc, v120, v147, v120
	v_mul_f32_e32 v149, v144, v143
	v_fma_f32 v150, -v142, v149, v144
	v_fma_f32 v149, v150, v143, v149
	v_fma_f32 v142, -v142, v149, v144
	v_div_fmas_f32 v142, v142, v143, v149
	v_div_fixup_f32 v142, v142, v147, v120
	v_mul_f32_e32 v120, 0x410028f6, v145
	v_fma_f32 v143, v146, s20, -v154
	v_mul_f32_e32 v120, v143, v120
	v_div_scale_f32 v143, s[0:1], v135, v135, v120
	v_rcp_f32_e32 v144, v143
	v_fma_f32 v145, -v143, v144, 1.0
	v_fma_f32 v144, v145, v144, v144
	v_div_scale_f32 v145, vcc, v120, v135, v120
	v_mul_f32_e32 v146, v145, v144
	v_fma_f32 v147, -v143, v146, v145
	v_fma_f32 v146, v147, v144, v146
	v_fma_f32 v143, -v143, v146, v145
	v_div_fmas_f32 v143, v143, v144, v146
	v_div_fixup_f32 v143, v143, v135, v120
	v_add_f32_e32 v120, v142, v143
	v_add_f32_e32 v120, v120, v120
	v_mul_f32_e32 v120, 0x2f17d7b2, v120
	v_div_scale_f32 v135, s[0:1], s11, s11, v120
	v_rcp_f32_e32 v144, v135
	v_fma_f32 v145, -v135, v144, 1.0
	v_fma_f32 v144, v145, v144, v144
	v_div_scale_f32 v145, vcc, v120, s11, v120
	v_mul_f32_e32 v146, v145, v144
	v_fma_f32 v147, -v135, v146, v145
	v_fma_f32 v146, v147, v144, v146
	v_fma_f32 v135, -v135, v146, v145
	v_div_fmas_f32 v135, v135, v144, v146
	v_div_fixup_f32 v120, v135, s11, v120
	v_mul_f32_e32 v150, s12, v120
	v_frexp_mant_f32_e64 v120, |v77|
	v_cmp_gt_f32_e32 vcc, s42, v120
	v_cndmask_b32_e64 v135, 0, 1, vcc
	v_ldexp_f32 v120, v120, v135
	v_frexp_exp_i32_f32_e64 v135, |v77|
	v_subbrev_u32_e32 v135, vcc, 0, v135, vcc
	v_add_f32_e32 v144, -1.0, v120
	v_add_f32_e32 v145, 1.0, v120
	v_sub_f32_e32 v146, v145, v120
	v_sub_f32_e32 v147, v145, v146
	v_sub_f32_e32 v120, v120, v147
	v_sub_f32_e32 v146, 1.0, v146
	v_add_f32_e32 v120, v146, v120
	v_rcp_f32_e32 v146, v145
	v_mul_f32_e32 v147, v144, v146
	v_mul_f32_e32 v149, v145, v147
	v_fma_f32 v145, v147, v145, -v149
	v_fma_f32 v120, v147, v120, v145
	v_add_f32_e32 v145, v149, v120
	v_sub_f32_e32 v149, v145, v149
	v_sub_f32_e32 v120, v120, v149
	v_sub_f32_e32 v149, v144, v145
	v_sub_f32_e32 v144, v144, v149
	v_sub_f32_e32 v144, v144, v145
	v_sub_f32_e32 v120, v144, v120
	v_add_f32_e32 v120, v149, v120
	v_mul_f32_e32 v120, v146, v120
	v_add_f32_e32 v144, v147, v120
	v_sub_f32_e32 v145, v144, v147
	v_sub_f32_e32 v120, v120, v145
	v_mul_f32_e32 v145, v144, v144
	v_add_f32_e32 v146, v120, v120
	v_fma_f32 v147, v144, v144, -v145
	v_fma_f32 v146, v144, v146, v147
	v_fma_f32 v146, v120, v120, v146
	v_add_f32_e32 v147, v145, v146
	v_sub_f32_e32 v145, v147, v145
	v_sub_f32_e32 v145, v146, v145
	v_fma_f32 v146, v147, s48, v126
	v_fma_f32 v146, v147, v146, s93
	v_cvt_f32_i32_e32 v135, v135
	v_mul_f32_e32 v149, s45, v135
	v_fma_f32 v151, v135, s45, -v149
	v_fma_f32 v135, v135, s44, v151
	v_add_f32_e32 v151, v149, v135
	v_sub_f32_e32 v149, v151, v149
	v_sub_f32_e32 v135, v135, v149
	v_ldexp_f32 v149, v144, 1
	v_mul_f32_e32 v154, v144, v147
	v_fma_f32 v155, v147, v144, -v154
	v_mul_f32_e32 v144, v144, v145
	v_fma_f32 v144, v147, v120, v144
	v_add_f32_e32 v144, v155, v144
	v_add_f32_e32 v155, v154, v144
	v_mul_f32_e32 v156, v147, v146
	v_fma_f32 v147, v147, v146, -v156
	v_fma_f32 v145, v145, v146, v147
	v_add_f32_e32 v146, v156, v145
	v_sub_f32_e32 v147, v146, v156
	v_sub_f32_e32 v145, v145, v147
	v_add_f32_e32 v147, s28, v146
	v_add_f32_e32 v156, s41, v147
	v_sub_f32_e32 v146, v146, v156
	v_add_f32_e32 v145, s49, v145
	v_add_f32_e32 v145, v146, v145
	v_add_f32_e32 v146, v147, v145
	v_mul_f32_e32 v156, v155, v146
	v_fma_f32 v157, v155, v146, -v156
	v_sub_f32_e32 v147, v146, v147
	v_sub_f32_e32 v145, v145, v147
	v_sub_f32_e32 v147, v155, v154
	v_sub_f32_e32 v144, v144, v147
	v_mul_f32_e32 v144, v144, v146
	v_fma_f32 v144, v155, v145, v144
	v_add_f32_e32 v144, v157, v144
	v_ldexp_f32 v120, v120, 1
	v_add_f32_e32 v145, v156, v144
	v_sub_f32_e32 v146, v145, v156
	v_sub_f32_e32 v144, v144, v146
	v_add_f32_e32 v146, v149, v145
	v_sub_f32_e32 v147, v146, v149
	v_sub_f32_e32 v145, v145, v147
	v_add_f32_e32 v120, v120, v144
	v_add_f32_e32 v120, v145, v120
	v_add_f32_e32 v144, v146, v120
	v_sub_f32_e32 v145, v144, v146
	v_sub_f32_e32 v120, v120, v145
	v_add_f32_e32 v145, v151, v144
	v_sub_f32_e32 v146, v145, v151
	v_sub_f32_e32 v147, v145, v146
	v_sub_f32_e32 v147, v151, v147
	v_sub_f32_e32 v144, v144, v146
	v_add_f32_e32 v144, v144, v147
	v_add_f32_e32 v146, v135, v120
	v_sub_f32_e32 v147, v146, v135
	v_sub_f32_e32 v149, v146, v147
	v_sub_f32_e32 v135, v135, v149
	v_sub_f32_e32 v120, v120, v147
	v_add_f32_e32 v120, v120, v135
	v_add_f32_e32 v135, v146, v144
	v_add_f32_e32 v144, v145, v135
	v_sub_f32_e32 v145, v144, v145
	v_sub_f32_e32 v135, v135, v145
	v_add_f32_e32 v120, v120, v135
	v_add_f32_e32 v154, v144, v120
	v_sub_f32_e32 v135, v154, v144
	v_sub_f32_e32 v155, v120, v135
	s_mov_b32 s9, 0x3fcccccd
	v_mul_f32_e32 v120, s9, v154
	v_fma_f32 v135, v154, s9, -v120
	v_fma_f32 v135, v155, s9, v135
	v_add_f32_e32 v144, v120, v135
	v_sub_f32_e32 v145, v144, v120
	v_sub_f32_e32 v135, v135, v145
	v_cmp_class_f32_e64 vcc, v120, s92
	v_cndmask_b32_e32 v120, v144, v120, vcc
	v_cmp_neq_f32_e64 vcc, |v120|, s94
	v_cndmask_b32_e32 v135, 0, v135, vcc
	v_mul_f32_e32 v144, s26, v120
	v_rndne_f32_e32 v144, v144
	v_mul_f32_e32 v145, s31, v144
	v_sub_f32_e32 v146, v120, v145
	v_sub_f32_e32 v147, v146, v120
	v_sub_f32_e32 v149, v146, v147
	v_sub_f32_e32 v149, v120, v149
	v_add_f32_e32 v145, v145, v147
	v_sub_f32_e32 v145, v149, v145
	v_add_f32_e32 v135, v135, v145
	v_add_f32_e32 v145, v146, v135
	v_sub_f32_e32 v146, v145, v146
	v_sub_f32_e32 v135, v135, v146
	v_mul_f32_e32 v146, s30, v144
	v_sub_f32_e32 v147, v145, v146
	v_sub_f32_e32 v145, v145, v147
	v_sub_f32_e32 v145, v145, v146
	v_add_f32_e32 v135, v135, v145
	v_add_f32_e32 v145, v147, v135
	v_sub_f32_e32 v146, v145, v147
	v_sub_f32_e32 v135, v135, v146
	v_mul_f32_e32 v146, s29, v144
	v_sub_f32_e32 v147, v145, v146
	v_sub_f32_e32 v145, v145, v147
	v_sub_f32_e32 v145, v145, v146
	v_add_f32_e32 v135, v135, v145
	v_add_f32_e32 v145, v147, v135
	v_sub_f32_e32 v146, v145, v147
	v_sub_f32_e32 v135, v135, v146
	v_fma_f32 v146, v145, s27, v125
	v_fma_f32 v146, v145, v146, s40
	v_fma_f32 v146, v145, v146, s35
	v_fma_f32 v146, v145, v146, s91
	v_mul_f32_e32 v147, v145, v145
	v_fma_f32 v149, v145, v145, -v147
	v_add_f32_e32 v151, v135, v135
	v_fma_f32 v149, v145, v151, v149
	v_fma_f32 v149, v135, v135, v149
	v_add_f32_e32 v151, v147, v149
	v_mul_f32_e32 v156, v146, v151
	v_sub_f32_e32 v147, v151, v147
	v_sub_f32_e32 v147, v149, v147
	v_fma_f32 v149, v151, v146, -v156
	v_fma_f32 v146, v147, v146, v149
	v_add_f32_e32 v147, v156, v146
	v_sub_f32_e32 v149, v147, v156
	v_sub_f32_e32 v146, v146, v149
	v_add_f32_e32 v149, v145, v147
	v_sub_f32_e32 v145, v149, v145
	v_sub_f32_e32 v145, v147, v145
	v_add_f32_e32 v135, v135, v146
	v_add_f32_e32 v135, v145, v135
	v_add_f32_e32 v135, v149, v135
	v_add_f32_e32 v135, 1.0, v135
	v_cvt_i32_f32_e32 v144, v144
	v_ldexp_f32 v135, v135, v144
	v_cmp_nlt_f32_e32 vcc, s34, v120
	v_cndmask_b32_e32 v135, v121, v135, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v120
	v_cndmask_b32_e32 v135, 0, v135, vcc
	v_cmp_eq_f32_e64 s[4:5], 0, v77
	v_cmp_u_f32_e64 s[0:1], v77, v77
	s_movk_i32 s13, 0x3c0
	v_cmp_class_f32_e64 vcc, v77, s13
	s_mov_b32 s2, 0x7fc00000
	v_mov_b32_e32 v120, s2
	v_cndmask_b32_e32 v135, v120, v135, vcc
	v_cndmask_b32_e64 v135, v135, 0, s[4:5]
	v_cmp_class_f32_e64 s[2:3], v77, s92
	v_cndmask_b32_e64 v135, v135, v121, s[2:3]
	v_cndmask_b32_e64 v135, |v135|, v77, s[0:1]
	v_cmp_neq_f32_e32 vcc, 1.0, v77
	v_cndmask_b32_e32 v135, 1.0, v135, vcc
	v_mul_f32_e32 v144, 0x3bf294dd, v135
	s_mov_b32 s20, 0x36af6ddf
	v_add_f32_e32 v135, s20, v135
	v_div_scale_f32 v145, s[6:7], v135, v135, v144
	v_rcp_f32_e32 v146, v145
	v_fma_f32 v147, -v145, v146, 1.0
	v_fma_f32 v146, v147, v146, v146
	v_div_scale_f32 v147, vcc, v144, v135, v144
	v_mul_f32_e32 v149, v147, v146
	v_fma_f32 v151, -v145, v149, v147
	v_fma_f32 v149, v151, v146, v149
	v_fma_f32 v145, -v145, v149, v147
	v_div_fmas_f32 v145, v145, v146, v149
	v_div_fixup_f32 v144, v145, v135, v144
	v_frexp_mant_f32_e64 v135, |v78|
	v_cmp_gt_f32_e32 vcc, s42, v135
	v_cndmask_b32_e64 v145, 0, 1, vcc
	v_ldexp_f32 v135, v135, v145
	v_frexp_exp_i32_f32_e64 v145, |v78|
	v_subbrev_u32_e32 v145, vcc, 0, v145, vcc
	v_add_f32_e32 v146, -1.0, v135
	v_add_f32_e32 v147, 1.0, v135
	v_sub_f32_e32 v149, v147, v135
	v_sub_f32_e32 v151, v147, v149
	v_sub_f32_e32 v135, v135, v151
	v_sub_f32_e32 v149, 1.0, v149
	v_add_f32_e32 v135, v149, v135
	v_rcp_f32_e32 v149, v147
	v_mul_f32_e32 v151, v146, v149
	v_mul_f32_e32 v156, v147, v151
	v_fma_f32 v147, v151, v147, -v156
	v_fma_f32 v135, v151, v135, v147
	v_add_f32_e32 v147, v156, v135
	v_sub_f32_e32 v156, v147, v156
	v_sub_f32_e32 v135, v135, v156
	v_sub_f32_e32 v156, v146, v147
	v_sub_f32_e32 v146, v146, v156
	v_sub_f32_e32 v146, v146, v147
	v_sub_f32_e32 v135, v146, v135
	v_add_f32_e32 v135, v156, v135
	v_mul_f32_e32 v135, v149, v135
	v_add_f32_e32 v146, v151, v135
	v_sub_f32_e32 v147, v146, v151
	v_sub_f32_e32 v135, v135, v147
	v_mul_f32_e32 v147, v146, v146
	v_add_f32_e32 v149, v135, v135
	v_fma_f32 v151, v146, v146, -v147
	v_fma_f32 v149, v146, v149, v151
	v_fma_f32 v149, v135, v135, v149
	v_add_f32_e32 v151, v147, v149
	v_sub_f32_e32 v147, v151, v147
	v_sub_f32_e32 v147, v149, v147
	v_fma_f32 v149, v151, s48, v126
	v_fma_f32 v149, v151, v149, s93
	v_cvt_f32_i32_e32 v145, v145
	v_mul_f32_e32 v156, s45, v145
	v_fma_f32 v157, v145, s45, -v156
	v_fma_f32 v145, v145, s44, v157
	v_add_f32_e32 v157, v156, v145
	v_sub_f32_e32 v156, v157, v156
	v_sub_f32_e32 v145, v145, v156
	v_ldexp_f32 v156, v146, 1
	v_mul_f32_e32 v158, v146, v151
	v_fma_f32 v159, v151, v146, -v158
	v_mul_f32_e32 v146, v146, v147
	v_fma_f32 v146, v151, v135, v146
	v_add_f32_e32 v146, v159, v146
	v_add_f32_e32 v159, v158, v146
	v_mul_f32_e32 v160, v151, v149
	v_fma_f32 v151, v151, v149, -v160
	v_fma_f32 v147, v147, v149, v151
	v_add_f32_e32 v149, v160, v147
	v_sub_f32_e32 v151, v149, v160
	v_sub_f32_e32 v147, v147, v151
	v_add_f32_e32 v151, s28, v149
	v_add_f32_e32 v160, s41, v151
	v_sub_f32_e32 v149, v149, v160
	v_add_f32_e32 v147, s49, v147
	v_add_f32_e32 v147, v149, v147
	v_add_f32_e32 v149, v151, v147
	v_mul_f32_e32 v160, v159, v149
	v_fma_f32 v161, v159, v149, -v160
	v_sub_f32_e32 v151, v149, v151
	v_sub_f32_e32 v147, v147, v151
	v_sub_f32_e32 v151, v159, v158
	v_sub_f32_e32 v146, v146, v151
	v_mul_f32_e32 v146, v146, v149
	v_fma_f32 v146, v159, v147, v146
	v_add_f32_e32 v146, v161, v146
	v_ldexp_f32 v135, v135, 1
	v_add_f32_e32 v147, v160, v146
	v_sub_f32_e32 v149, v147, v160
	v_sub_f32_e32 v146, v146, v149
	v_add_f32_e32 v149, v156, v147
	v_sub_f32_e32 v151, v149, v156
	v_sub_f32_e32 v147, v147, v151
	v_add_f32_e32 v135, v135, v146
	v_add_f32_e32 v135, v147, v135
	v_add_f32_e32 v146, v149, v135
	v_sub_f32_e32 v147, v146, v149
	v_sub_f32_e32 v135, v135, v147
	v_add_f32_e32 v147, v157, v146
	v_sub_f32_e32 v149, v147, v157
	v_sub_f32_e32 v151, v147, v149
	v_sub_f32_e32 v151, v157, v151
	v_sub_f32_e32 v146, v146, v149
	v_add_f32_e32 v146, v146, v151
	v_add_f32_e32 v149, v145, v135
	v_sub_f32_e32 v151, v149, v145
	v_sub_f32_e32 v156, v149, v151
	v_sub_f32_e32 v145, v145, v156
	v_sub_f32_e32 v135, v135, v151
	v_add_f32_e32 v135, v135, v145
	v_add_f32_e32 v145, v149, v146
	v_add_f32_e32 v146, v147, v145
	v_sub_f32_e32 v147, v146, v147
	v_sub_f32_e32 v145, v145, v147
	v_add_f32_e32 v135, v135, v145
	v_add_f32_e32 v145, v146, v135
	v_sub_f32_e32 v146, v145, v146
	v_sub_f32_e32 v135, v135, v146
	v_mul_f32_e32 v146, s9, v145
	v_fma_f32 v145, v145, s9, -v146
	v_fma_f32 v135, v135, s9, v145
	v_add_f32_e32 v145, v146, v135
	v_sub_f32_e32 v147, v145, v146
	v_sub_f32_e32 v135, v135, v147
	v_cmp_class_f32_e64 vcc, v146, s92
	v_cndmask_b32_e32 v145, v145, v146, vcc
	v_cmp_neq_f32_e64 vcc, |v145|, s94
	v_cndmask_b32_e32 v135, 0, v135, vcc
	v_mul_f32_e32 v146, s26, v145
	v_rndne_f32_e32 v146, v146
	v_mul_f32_e32 v147, s31, v146
	v_sub_f32_e32 v149, v145, v147
	v_sub_f32_e32 v151, v149, v145
	v_sub_f32_e32 v156, v149, v151
	v_sub_f32_e32 v156, v145, v156
	v_add_f32_e32 v147, v147, v151
	v_sub_f32_e32 v147, v156, v147
	v_add_f32_e32 v135, v135, v147
	v_add_f32_e32 v147, v149, v135
	v_sub_f32_e32 v149, v147, v149
	v_sub_f32_e32 v135, v135, v149
	v_mul_f32_e32 v149, s30, v146
	v_sub_f32_e32 v151, v147, v149
	v_sub_f32_e32 v147, v147, v151
	v_sub_f32_e32 v147, v147, v149
	v_add_f32_e32 v135, v135, v147
	v_add_f32_e32 v147, v151, v135
	v_sub_f32_e32 v149, v147, v151
	v_sub_f32_e32 v135, v135, v149
	v_mul_f32_e32 v149, s29, v146
	v_sub_f32_e32 v151, v147, v149
	v_sub_f32_e32 v147, v147, v151
	v_sub_f32_e32 v147, v147, v149
	v_add_f32_e32 v135, v135, v147
	v_add_f32_e32 v147, v151, v135
	v_sub_f32_e32 v149, v147, v151
	v_sub_f32_e32 v135, v135, v149
	v_fma_f32 v149, v147, s27, v125
	v_fma_f32 v149, v147, v149, s40
	v_fma_f32 v149, v147, v149, s35
	v_fma_f32 v149, v147, v149, s91
	v_mul_f32_e32 v151, v147, v147
	v_fma_f32 v156, v147, v147, -v151
	v_add_f32_e32 v157, v135, v135
	v_fma_f32 v156, v147, v157, v156
	v_fma_f32 v156, v135, v135, v156
	v_add_f32_e32 v157, v151, v156
	v_mul_f32_e32 v158, v149, v157
	v_sub_f32_e32 v151, v157, v151
	v_sub_f32_e32 v151, v156, v151
	v_fma_f32 v156, v157, v149, -v158
	v_fma_f32 v149, v151, v149, v156
	v_add_f32_e32 v151, v158, v149
	v_sub_f32_e32 v156, v151, v158
	v_sub_f32_e32 v149, v149, v156
	v_add_f32_e32 v156, v147, v151
	v_sub_f32_e32 v147, v156, v147
	v_sub_f32_e32 v147, v151, v147
	v_add_f32_e32 v135, v135, v149
	v_add_f32_e32 v135, v147, v135
	v_add_f32_e32 v135, v156, v135
	v_add_f32_e32 v135, 1.0, v135
	v_cvt_i32_f32_e32 v146, v146
	v_ldexp_f32 v135, v135, v146
	v_cmp_nlt_f32_e32 vcc, s34, v145
	v_cndmask_b32_e32 v135, v121, v135, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v145
	v_cndmask_b32_e32 v135, 0, v135, vcc
	v_cmp_u_f32_e32 vcc, v78, v78
	v_cmp_class_f32_e64 s[6:7], v78, s13
	v_cndmask_b32_e64 v135, v120, v135, s[6:7]
	v_cmp_neq_f32_e64 s[6:7], 0, v78
	v_cndmask_b32_e64 v135, 0, v135, s[6:7]
	v_cmp_class_f32_e64 s[6:7], v78, s92
	v_cndmask_b32_e64 v135, v135, v121, s[6:7]
	v_cndmask_b32_e64 v135, |v135|, v78, vcc
	v_cmp_neq_f32_e32 vcc, 1.0, v78
	v_cndmask_b32_e32 v135, 1.0, v135, vcc
	v_mul_f32_e32 v145, 0x3d75568e, v135
	v_add_f32_e32 v135, s20, v135
	v_div_scale_f32 v146, s[6:7], v135, v135, v145
	v_rcp_f32_e32 v147, v146
	v_fma_f32 v149, -v146, v147, 1.0
	v_fma_f32 v147, v149, v147, v147
	v_div_scale_f32 v149, vcc, v145, v135, v145
	v_mul_f32_e32 v151, v149, v147
	v_fma_f32 v156, -v146, v151, v149
	v_fma_f32 v151, v156, v147, v151
	v_fma_f32 v146, -v146, v151, v149
	v_div_fmas_f32 v146, v146, v147, v151
	v_div_fixup_f32 v145, v146, v135, v145
	v_add_f32_e32 v135, v144, v145
	v_mul_f32_e32 v135, s10, v135
	v_div_scale_f32 v146, s[6:7], s11, s11, v135
	v_rcp_f32_e32 v147, v146
	v_fma_f32 v149, -v146, v147, 1.0
	v_fma_f32 v147, v149, v147, v147
	v_div_scale_f32 v149, vcc, v135, s11, v135
	v_mul_f32_e32 v151, v149, v147
	v_fma_f32 v156, -v146, v151, v149
	v_fma_f32 v151, v156, v147, v151
	v_fma_f32 v146, -v146, v151, v149
	v_div_fmas_f32 v146, v146, v147, v151
	v_div_fixup_f32 v135, v146, s11, v135
	v_mul_f32_e32 v149, s12, v135
	s_mov_b32 s6, 0xc155b2df
	v_fma_f32 v147, v133, s6, v93
	v_fma_f32 v146, v134, s6, v93
	s_mov_b32 s9, 0x396a8577
	v_mul_f32_e32 v133, s9, v146
	s_mov_b32 s20, 0x37e7e2e3
	v_fma_f32 v133, v147, s20, v133
	v_mul_f32_e32 v133, s10, v133
	v_div_scale_f32 v134, s[6:7], s11, s11, v133
	v_rcp_f32_e32 v135, v134
	v_fma_f32 v151, -v134, v135, 1.0
	v_fma_f32 v135, v151, v135, v135
	v_div_scale_f32 v151, vcc, v133, s11, v133
	v_mul_f32_e32 v156, v151, v135
	v_fma_f32 v157, -v134, v156, v151
	v_fma_f32 v156, v157, v135, v156
	v_fma_f32 v134, -v134, v156, v151
	v_div_fmas_f32 v134, v134, v135, v156
	v_div_fixup_f32 v133, v134, s11, v133
	v_mul_f32_e32 v151, s12, v133
	flat_store_dwordx4 v[152:153], v[148:151]
	s_mov_b32 s11, 0x3ee66666
	v_div_scale_f32 v133, s[6:7], v101, v101, s11
	v_rcp_f32_e32 v134, v133
	v_fma_f32 v135, -v133, v134, 1.0
	v_fma_f32 v134, v135, v134, v134
	v_div_scale_f32 v135, vcc, s11, v101, s11
	v_mul_f32_e32 v148, v135, v134
	v_fma_f32 v149, -v133, v148, v135
	v_fma_f32 v148, v149, v134, v148
	v_fma_f32 v133, -v133, v148, v135
	v_div_fmas_f32 v133, v133, v134, v148
	v_div_fixup_f32 v133, v133, v101, s11
	v_frexp_mant_f32_e64 v134, |v133|
	v_cmp_gt_f32_e32 vcc, s42, v134
	v_cndmask_b32_e64 v135, 0, 1, vcc
	v_ldexp_f32 v134, v134, v135
	v_frexp_exp_i32_f32_e64 v135, |v133|
	v_subbrev_u32_e32 v135, vcc, 0, v135, vcc
	v_add_f32_e32 v148, -1.0, v134
	v_add_f32_e32 v149, 1.0, v134
	v_sub_f32_e32 v150, v149, v134
	v_sub_f32_e32 v151, v149, v150
	v_sub_f32_e32 v134, v134, v151
	v_sub_f32_e32 v150, 1.0, v150
	v_add_f32_e32 v134, v150, v134
	v_rcp_f32_e32 v150, v149
	v_mul_f32_e32 v151, v148, v150
	v_mul_f32_e32 v152, v149, v151
	v_fma_f32 v149, v151, v149, -v152
	v_fma_f32 v134, v151, v134, v149
	v_add_f32_e32 v149, v152, v134
	v_sub_f32_e32 v152, v149, v152
	v_sub_f32_e32 v134, v134, v152
	v_sub_f32_e32 v152, v148, v149
	v_sub_f32_e32 v148, v148, v152
	v_sub_f32_e32 v148, v148, v149
	v_sub_f32_e32 v134, v148, v134
	v_add_f32_e32 v134, v152, v134
	v_mul_f32_e32 v134, v150, v134
	v_add_f32_e32 v148, v151, v134
	v_sub_f32_e32 v149, v148, v151
	v_sub_f32_e32 v134, v134, v149
	v_mul_f32_e32 v149, v148, v148
	v_add_f32_e32 v150, v134, v134
	v_fma_f32 v151, v148, v148, -v149
	v_fma_f32 v150, v148, v150, v151
	v_fma_f32 v150, v134, v134, v150
	v_add_f32_e32 v151, v149, v150
	v_sub_f32_e32 v149, v151, v149
	v_sub_f32_e32 v149, v150, v149
	v_fma_f32 v150, v151, s48, v126
	v_fma_f32 v150, v151, v150, s93
	v_cvt_f32_i32_e32 v135, v135
	v_mul_f32_e32 v152, s45, v135
	v_fma_f32 v153, v135, s45, -v152
	v_fma_f32 v135, v135, s44, v153
	v_add_f32_e32 v153, v152, v135
	v_sub_f32_e32 v152, v153, v152
	v_sub_f32_e32 v135, v135, v152
	v_ldexp_f32 v152, v148, 1
	v_mul_f32_e32 v156, v148, v151
	v_fma_f32 v157, v151, v148, -v156
	v_mul_f32_e32 v148, v148, v149
	v_fma_f32 v148, v151, v134, v148
	v_add_f32_e32 v148, v157, v148
	v_add_f32_e32 v157, v156, v148
	v_mul_f32_e32 v158, v151, v150
	v_fma_f32 v151, v151, v150, -v158
	v_fma_f32 v149, v149, v150, v151
	v_add_f32_e32 v150, v158, v149
	v_sub_f32_e32 v151, v150, v158
	v_sub_f32_e32 v149, v149, v151
	v_add_f32_e32 v151, s28, v150
	v_add_f32_e32 v158, s41, v151
	v_sub_f32_e32 v150, v150, v158
	v_add_f32_e32 v149, s49, v149
	v_add_f32_e32 v149, v150, v149
	v_add_f32_e32 v150, v151, v149
	v_mul_f32_e32 v158, v157, v150
	v_fma_f32 v159, v157, v150, -v158
	v_sub_f32_e32 v151, v150, v151
	v_sub_f32_e32 v149, v149, v151
	v_sub_f32_e32 v151, v157, v156
	v_sub_f32_e32 v148, v148, v151
	v_mul_f32_e32 v148, v148, v150
	v_fma_f32 v148, v157, v149, v148
	v_add_f32_e32 v148, v159, v148
	v_ldexp_f32 v134, v134, 1
	v_add_f32_e32 v149, v158, v148
	v_sub_f32_e32 v150, v149, v158
	v_sub_f32_e32 v148, v148, v150
	v_add_f32_e32 v150, v152, v149
	v_sub_f32_e32 v151, v150, v152
	v_sub_f32_e32 v149, v149, v151
	v_add_f32_e32 v134, v134, v148
	v_add_f32_e32 v134, v149, v134
	v_add_f32_e32 v148, v150, v134
	v_sub_f32_e32 v149, v148, v150
	v_sub_f32_e32 v134, v134, v149
	v_add_f32_e32 v149, v153, v148
	v_sub_f32_e32 v150, v149, v153
	v_sub_f32_e32 v151, v149, v150
	v_sub_f32_e32 v151, v153, v151
	v_sub_f32_e32 v148, v148, v150
	v_add_f32_e32 v148, v148, v151
	v_add_f32_e32 v150, v135, v134
	v_sub_f32_e32 v151, v150, v135
	v_sub_f32_e32 v152, v150, v151
	v_sub_f32_e32 v135, v135, v152
	v_sub_f32_e32 v134, v134, v151
	v_add_f32_e32 v134, v134, v135
	v_add_f32_e32 v135, v150, v148
	v_add_f32_e32 v148, v149, v135
	v_sub_f32_e32 v149, v148, v149
	v_sub_f32_e32 v135, v135, v149
	v_add_f32_e32 v134, v134, v135
	v_add_f32_e32 v135, v148, v134
	v_sub_f32_e32 v148, v135, v148
	v_sub_f32_e32 v134, v134, v148
	s_mov_b32 s6, 0x40200000
	v_mul_f32_e32 v148, s6, v135
	v_fma_f32 v135, v135, s6, -v148
	v_fma_f32 v134, v134, s6, v135
	v_add_f32_e32 v135, v148, v134
	v_sub_f32_e32 v149, v135, v148
	v_sub_f32_e32 v134, v134, v149
	v_cmp_class_f32_e64 vcc, v148, s92
	v_cndmask_b32_e32 v135, v135, v148, vcc
	v_cmp_neq_f32_e64 vcc, |v135|, s94
	v_cndmask_b32_e32 v134, 0, v134, vcc
	v_mul_f32_e32 v148, s26, v135
	v_rndne_f32_e32 v148, v148
	v_mul_f32_e32 v149, s31, v148
	v_sub_f32_e32 v150, v135, v149
	v_sub_f32_e32 v151, v150, v135
	v_sub_f32_e32 v152, v150, v151
	v_sub_f32_e32 v152, v135, v152
	v_add_f32_e32 v149, v149, v151
	v_sub_f32_e32 v149, v152, v149
	v_add_f32_e32 v134, v134, v149
	v_add_f32_e32 v149, v150, v134
	v_sub_f32_e32 v150, v149, v150
	v_sub_f32_e32 v134, v134, v150
	v_mul_f32_e32 v150, s30, v148
	v_sub_f32_e32 v151, v149, v150
	v_sub_f32_e32 v149, v149, v151
	v_sub_f32_e32 v149, v149, v150
	v_add_f32_e32 v134, v134, v149
	v_add_f32_e32 v149, v151, v134
	v_sub_f32_e32 v150, v149, v151
	v_sub_f32_e32 v134, v134, v150
	v_mul_f32_e32 v150, s29, v148
	v_sub_f32_e32 v151, v149, v150
	v_sub_f32_e32 v149, v149, v151
	v_sub_f32_e32 v149, v149, v150
	v_add_f32_e32 v134, v134, v149
	v_add_f32_e32 v149, v151, v134
	v_sub_f32_e32 v150, v149, v151
	v_sub_f32_e32 v134, v134, v150
	v_fma_f32 v150, v149, s27, v125
	v_fma_f32 v150, v149, v150, s40
	v_fma_f32 v150, v149, v150, s35
	v_fma_f32 v150, v149, v150, s91
	v_mul_f32_e32 v151, v149, v149
	v_fma_f32 v152, v149, v149, -v151
	v_add_f32_e32 v153, v134, v134
	v_fma_f32 v152, v149, v153, v152
	v_fma_f32 v152, v134, v134, v152
	v_add_f32_e32 v153, v151, v152
	v_mul_f32_e32 v156, v150, v153
	v_sub_f32_e32 v151, v153, v151
	v_sub_f32_e32 v151, v152, v151
	v_fma_f32 v152, v153, v150, -v156
	v_fma_f32 v150, v151, v150, v152
	v_add_f32_e32 v151, v156, v150
	v_sub_f32_e32 v152, v151, v156
	v_sub_f32_e32 v150, v150, v152
	v_add_f32_e32 v152, v149, v151
	v_sub_f32_e32 v149, v152, v149
	v_sub_f32_e32 v149, v151, v149
	v_add_f32_e32 v134, v134, v150
	v_add_f32_e32 v134, v149, v134
	v_add_f32_e32 v134, v152, v134
	v_add_f32_e32 v134, 1.0, v134
	v_cvt_i32_f32_e32 v148, v148
	v_ldexp_f32 v134, v134, v148
	v_cmp_nlt_f32_e32 vcc, s34, v135
	v_cndmask_b32_e32 v134, v121, v134, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v135
	v_cndmask_b32_e32 v134, 0, v134, vcc
	v_cmp_u_f32_e32 vcc, v133, v133
	v_cmp_class_f32_e64 s[6:7], v133, s13
	v_cndmask_b32_e64 v134, v120, v134, s[6:7]
	v_cmp_neq_f32_e64 s[6:7], 0, v133
	v_cndmask_b32_e64 v134, 0, v134, s[6:7]
	v_cmp_class_f32_e64 s[6:7], v133, s92
	v_cndmask_b32_e64 v134, v134, v121, s[6:7]
	v_cndmask_b32_e64 v134, |v134|, v133, vcc
	v_add_f32_e32 v134, 1.0, v134
	s_mov_b32 s11, 0xc1600000
	v_div_scale_f32 v135, s[6:7], v134, v134, s11
	v_rcp_f32_e32 v148, v135
	v_fma_f32 v149, -v135, v148, 1.0
	v_fma_f32 v148, v149, v148, v148
	v_div_scale_f32 v149, vcc, s11, v134, s11
	v_mul_f32_e32 v150, v149, v148
	v_fma_f32 v151, -v135, v150, v149
	v_fma_f32 v150, v151, v148, v150
	v_fma_f32 v135, -v135, v150, v149
	v_div_fmas_f32 v135, v135, v148, v150
	v_div_fixup_f32 v134, v135, v134, s11
	v_add_f32_e32 v134, 0x41700000, v134
	v_cmp_neq_f32_e32 vcc, 1.0, v133
	v_mov_b32_e32 v133, 0x41000000
	v_cndmask_b32_e32 v134, v133, v134, vcc
	v_div_scale_f32 v133, s[6:7], v134, v134, s24
	v_rcp_f32_e32 v135, v133
	v_fma_f32 v148, -v133, v135, 1.0
	v_fma_f32 v135, v148, v135, v135
	v_div_scale_f32 v148, vcc, s24, v134, s24
	v_mul_f32_e32 v149, v148, v135
	v_fma_f32 v150, -v133, v149, v148
	v_fma_f32 v149, v150, v135, v149
	v_fma_f32 v133, -v133, v149, v148
	v_div_fmas_f32 v133, v133, v135, v149
	v_div_fixup_f32 v133, v133, v134, s24
	v_mul_f32_e32 v134, 0.5, v134
	v_sub_f32_e32 v135, 1.0, v98
	v_sub_f32_e32 v135, v135, v99
	v_sub_f32_e32 v135, v135, v100
	v_mul_f32_e32 v134, v77, v134
	v_mul_f32_e32 v148, v98, v134
	s_mov_b32 s6, 0x3ba3d70a
	v_fma_f32 v148, v135, s6, -v148
	v_add_f32_e32 v149, v154, v154
	v_fma_f32 v150, v154, 2.0, -v149
	v_mul_f32_e32 v151, 0, v154
	v_fma_f32 v151, v155, 2.0, v151
	v_add_f32_e32 v150, v150, v151
	v_add_f32_e32 v151, v149, v150
	v_sub_f32_e32 v152, v151, v149
	v_sub_f32_e32 v150, v150, v152
	v_cmp_class_f32_e64 vcc, v149, s92
	v_cndmask_b32_e32 v149, v151, v149, vcc
	v_cmp_neq_f32_e64 vcc, |v149|, s94
	v_cndmask_b32_e32 v150, 0, v150, vcc
	v_mul_f32_e32 v151, s26, v149
	v_rndne_f32_e32 v151, v151
	v_mul_f32_e32 v152, s31, v151
	v_sub_f32_e32 v153, v149, v152
	v_sub_f32_e32 v154, v153, v149
	v_sub_f32_e32 v155, v153, v154
	v_sub_f32_e32 v155, v149, v155
	v_add_f32_e32 v152, v152, v154
	v_sub_f32_e32 v152, v155, v152
	v_add_f32_e32 v150, v150, v152
	v_add_f32_e32 v152, v153, v150
	v_sub_f32_e32 v153, v152, v153
	v_sub_f32_e32 v150, v150, v153
	v_mul_f32_e32 v153, s30, v151
	v_sub_f32_e32 v154, v152, v153
	v_sub_f32_e32 v152, v152, v154
	v_sub_f32_e32 v152, v152, v153
	v_add_f32_e32 v150, v150, v152
	v_add_f32_e32 v152, v154, v150
	v_sub_f32_e32 v153, v152, v154
	v_sub_f32_e32 v150, v150, v153
	v_mul_f32_e32 v153, s29, v151
	v_sub_f32_e32 v154, v152, v153
	v_sub_f32_e32 v152, v152, v154
	v_sub_f32_e32 v152, v152, v153
	v_add_f32_e32 v150, v150, v152
	v_add_f32_e32 v152, v154, v150
	v_sub_f32_e32 v153, v152, v154
	v_sub_f32_e32 v150, v150, v153
	v_fma_f32 v153, v152, s27, v125
	v_fma_f32 v153, v152, v153, s40
	v_fma_f32 v153, v152, v153, s35
	v_fma_f32 v153, v152, v153, s91
	v_mul_f32_e32 v154, v152, v152
	v_fma_f32 v155, v152, v152, -v154
	v_add_f32_e32 v156, v150, v150
	v_fma_f32 v155, v152, v156, v155
	v_fma_f32 v155, v150, v150, v155
	v_add_f32_e32 v156, v154, v155
	v_mul_f32_e32 v157, v153, v156
	v_sub_f32_e32 v154, v156, v154
	v_sub_f32_e32 v154, v155, v154
	v_fma_f32 v155, v156, v153, -v157
	v_fma_f32 v153, v154, v153, v155
	v_add_f32_e32 v154, v157, v153
	v_sub_f32_e32 v155, v154, v157
	v_sub_f32_e32 v153, v153, v155
	v_add_f32_e32 v155, v152, v154
	v_sub_f32_e32 v152, v155, v152
	v_sub_f32_e32 v152, v154, v152
	v_add_f32_e32 v150, v150, v153
	v_add_f32_e32 v150, v152, v150
	v_add_f32_e32 v150, v155, v150
	v_add_f32_e32 v150, 1.0, v150
	v_cvt_i32_f32_e32 v151, v151
	v_ldexp_f32 v150, v150, v151
	v_cmp_nlt_f32_e32 vcc, s34, v149
	v_cndmask_b32_e32 v150, v121, v150, vcc
	v_cmp_gt_f32_e32 vcc, s95, v149
	s_or_b64 s[4:5], s[4:5], vcc
	v_cndmask_b32_e64 v149, v150, 0, s[4:5]
	v_cndmask_b32_e64 v149, v149, v121, s[2:3]
	v_cndmask_b32_e64 v149, |v149|, v77, s[0:1]
	v_mul_f32_e32 v149, v149, v133
	s_mov_b32 s2, 0xbd75c28f
	v_mul_f32_e32 v133, s2, v99
	v_fma_f32 v98, v98, v149, v133
	v_sub_f32_e32 v133, v148, v98
	v_mul_f32_e32 v148, 0xbba3d70a, v100
	v_fma_f32 v148, v99, v134, v148
	v_sub_f32_e32 v134, v98, v148
	v_mul_f32_e32 v98, v135, v149
	s_mov_b32 s0, 0x3d75c28f
	v_fma_f32 v98, v100, s0, -v98
	v_sub_f32_e32 v135, v148, v98
	flat_store_dwordx4 v[136:137], v[132:135]
	v_mul_f32_e32 v99, 0x41c80000, v99
	v_sub_f32_e32 v98, v101, v77
	v_mul_f32_e32 v100, v99, v98
	s_mov_b32 s3, 0x3980f990
	v_div_scale_f32 v99, s[0:1], s3, s3, v79
	v_rcp_f32_e32 v132, v99
	v_fma_f32 v133, -v99, v132, 1.0
	v_fma_f32 v132, v133, v132, v132
	v_div_scale_f32 v133, vcc, v79, s3, v79
	v_mul_f32_e32 v134, v133, v132
	v_fma_f32 v135, -v99, v134, v133
	v_fma_f32 v134, v135, v132, v134
	v_fma_f32 v99, -v99, v134, v133
	v_div_fmas_f32 v99, v99, v132, v134
	v_div_fixup_f32 v99, v99, s3, v79
	v_frexp_mant_f32_e64 v132, |v99|
	v_cmp_gt_f32_e32 vcc, s42, v132
	v_cndmask_b32_e64 v133, 0, 1, vcc
	v_ldexp_f32 v132, v132, v133
	v_frexp_exp_i32_f32_e64 v133, |v99|
	v_subbrev_u32_e32 v133, vcc, 0, v133, vcc
	v_add_f32_e32 v134, -1.0, v132
	v_add_f32_e32 v135, 1.0, v132
	v_sub_f32_e32 v136, v135, v132
	v_sub_f32_e32 v137, v135, v136
	v_sub_f32_e32 v132, v132, v137
	v_sub_f32_e32 v136, 1.0, v136
	v_add_f32_e32 v132, v136, v132
	v_rcp_f32_e32 v136, v135
	v_mul_f32_e32 v137, v134, v136
	v_mul_f32_e32 v148, v135, v137
	v_fma_f32 v135, v137, v135, -v148
	v_fma_f32 v132, v137, v132, v135
	v_add_f32_e32 v135, v148, v132
	v_sub_f32_e32 v148, v135, v148
	v_sub_f32_e32 v132, v132, v148
	v_sub_f32_e32 v148, v134, v135
	v_sub_f32_e32 v134, v134, v148
	v_sub_f32_e32 v134, v134, v135
	v_sub_f32_e32 v132, v134, v132
	v_add_f32_e32 v132, v148, v132
	v_mul_f32_e32 v132, v136, v132
	v_add_f32_e32 v134, v137, v132
	v_sub_f32_e32 v135, v134, v137
	v_sub_f32_e32 v132, v132, v135
	v_mul_f32_e32 v135, v134, v134
	v_add_f32_e32 v136, v132, v132
	v_fma_f32 v137, v134, v134, -v135
	v_fma_f32 v136, v134, v136, v137
	v_fma_f32 v136, v132, v132, v136
	v_add_f32_e32 v137, v135, v136
	v_sub_f32_e32 v135, v137, v135
	v_sub_f32_e32 v135, v136, v135
	v_fma_f32 v136, v137, s48, v126
	v_fma_f32 v136, v137, v136, s93
	v_cvt_f32_i32_e32 v133, v133
	v_mul_f32_e32 v148, s45, v133
	v_fma_f32 v149, v133, s45, -v148
	v_fma_f32 v133, v133, s44, v149
	v_add_f32_e32 v149, v148, v133
	v_sub_f32_e32 v148, v149, v148
	v_sub_f32_e32 v133, v133, v148
	v_ldexp_f32 v148, v134, 1
	v_mul_f32_e32 v150, v134, v137
	v_fma_f32 v151, v137, v134, -v150
	v_mul_f32_e32 v134, v134, v135
	v_fma_f32 v134, v137, v132, v134
	v_add_f32_e32 v134, v151, v134
	v_add_f32_e32 v151, v150, v134
	v_mul_f32_e32 v152, v137, v136
	v_fma_f32 v137, v137, v136, -v152
	v_fma_f32 v135, v135, v136, v137
	v_add_f32_e32 v136, v152, v135
	v_sub_f32_e32 v137, v136, v152
	v_sub_f32_e32 v135, v135, v137
	v_add_f32_e32 v137, s28, v136
	v_add_f32_e32 v152, s41, v137
	v_sub_f32_e32 v136, v136, v152
	v_add_f32_e32 v135, s49, v135
	v_add_f32_e32 v135, v136, v135
	v_add_f32_e32 v136, v137, v135
	v_mul_f32_e32 v152, v151, v136
	v_fma_f32 v153, v151, v136, -v152
	v_sub_f32_e32 v137, v136, v137
	v_sub_f32_e32 v135, v135, v137
	v_sub_f32_e32 v137, v151, v150
	v_sub_f32_e32 v134, v134, v137
	v_mul_f32_e32 v134, v134, v136
	v_fma_f32 v134, v151, v135, v134
	v_add_f32_e32 v134, v153, v134
	v_ldexp_f32 v132, v132, 1
	v_add_f32_e32 v135, v152, v134
	v_sub_f32_e32 v136, v135, v152
	v_sub_f32_e32 v134, v134, v136
	v_add_f32_e32 v136, v148, v135
	v_sub_f32_e32 v137, v136, v148
	v_sub_f32_e32 v135, v135, v137
	v_add_f32_e32 v132, v132, v134
	v_add_f32_e32 v132, v135, v132
	v_add_f32_e32 v134, v136, v132
	v_sub_f32_e32 v135, v134, v136
	v_sub_f32_e32 v132, v132, v135
	v_add_f32_e32 v135, v149, v134
	v_sub_f32_e32 v136, v135, v149
	v_sub_f32_e32 v137, v135, v136
	v_sub_f32_e32 v137, v149, v137
	v_sub_f32_e32 v134, v134, v136
	v_add_f32_e32 v134, v134, v137
	v_add_f32_e32 v136, v133, v132
	v_sub_f32_e32 v137, v136, v133
	v_sub_f32_e32 v148, v136, v137
	v_sub_f32_e32 v133, v133, v148
	v_sub_f32_e32 v132, v132, v137
	v_add_f32_e32 v132, v132, v133
	v_add_f32_e32 v133, v136, v134
	v_add_f32_e32 v134, v135, v133
	v_sub_f32_e32 v135, v134, v135
	v_sub_f32_e32 v133, v133, v135
	v_add_f32_e32 v132, v132, v133
	v_add_f32_e32 v133, v134, v132
	v_sub_f32_e32 v134, v133, v134
	v_sub_f32_e32 v132, v132, v134
	s_mov_b32 s3, 0x3fe4bc6a
	v_mul_f32_e32 v134, s3, v133
	v_fma_f32 v133, v133, s3, -v134
	v_fma_f32 v132, v132, s3, v133
	v_add_f32_e32 v133, v134, v132
	v_sub_f32_e32 v135, v133, v134
	v_sub_f32_e32 v132, v132, v135
	v_cmp_class_f32_e64 vcc, v134, s92
	v_cndmask_b32_e32 v133, v133, v134, vcc
	v_cmp_neq_f32_e64 vcc, |v133|, s94
	v_cndmask_b32_e32 v132, 0, v132, vcc
	v_mul_f32_e32 v134, s26, v133
	v_rndne_f32_e32 v134, v134
	v_mul_f32_e32 v135, s31, v134
	v_sub_f32_e32 v136, v133, v135
	v_sub_f32_e32 v137, v136, v133
	v_sub_f32_e32 v148, v136, v137
	v_sub_f32_e32 v148, v133, v148
	v_add_f32_e32 v135, v135, v137
	v_sub_f32_e32 v135, v148, v135
	v_add_f32_e32 v132, v132, v135
	v_add_f32_e32 v135, v136, v132
	v_sub_f32_e32 v136, v135, v136
	v_sub_f32_e32 v132, v132, v136
	v_mul_f32_e32 v136, s30, v134
	v_sub_f32_e32 v137, v135, v136
	v_sub_f32_e32 v135, v135, v137
	v_sub_f32_e32 v135, v135, v136
	v_add_f32_e32 v132, v132, v135
	v_add_f32_e32 v135, v137, v132
	v_sub_f32_e32 v136, v135, v137
	v_sub_f32_e32 v132, v132, v136
	v_mul_f32_e32 v136, s29, v134
	v_sub_f32_e32 v137, v135, v136
	v_sub_f32_e32 v135, v135, v137
	v_sub_f32_e32 v135, v135, v136
	v_add_f32_e32 v132, v132, v135
	v_add_f32_e32 v135, v137, v132
	v_sub_f32_e32 v136, v135, v137
	v_sub_f32_e32 v132, v132, v136
	v_fma_f32 v136, v135, s27, v125
	v_fma_f32 v136, v135, v136, s40
	v_fma_f32 v136, v135, v136, s35
	v_fma_f32 v136, v135, v136, s91
	v_mul_f32_e32 v137, v135, v135
	v_fma_f32 v148, v135, v135, -v137
	v_add_f32_e32 v149, v132, v132
	v_fma_f32 v148, v135, v149, v148
	v_fma_f32 v148, v132, v132, v148
	v_add_f32_e32 v149, v137, v148
	v_mul_f32_e32 v150, v136, v149
	v_sub_f32_e32 v137, v149, v137
	v_sub_f32_e32 v137, v148, v137
	v_fma_f32 v148, v149, v136, -v150
	v_fma_f32 v136, v137, v136, v148
	v_add_f32_e32 v137, v150, v136
	v_sub_f32_e32 v148, v137, v150
	v_sub_f32_e32 v136, v136, v148
	v_add_f32_e32 v148, v135, v137
	v_sub_f32_e32 v135, v148, v135
	v_sub_f32_e32 v135, v137, v135
	v_add_f32_e32 v132, v132, v136
	v_add_f32_e32 v132, v135, v132
	v_add_f32_e32 v132, v148, v132
	v_add_f32_e32 v132, 1.0, v132
	v_cvt_i32_f32_e32 v134, v134
	v_ldexp_f32 v132, v132, v134
	v_cmp_nlt_f32_e32 vcc, s34, v133
	v_cndmask_b32_e32 v132, v121, v132, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v133
	v_cndmask_b32_e32 v132, 0, v132, vcc
	v_cmp_u_f32_e32 vcc, v99, v99
	v_cmp_class_f32_e64 s[0:1], v99, s13
	v_cndmask_b32_e64 v132, v120, v132, s[0:1]
	v_cmp_neq_f32_e64 s[0:1], 0, v99
	v_cndmask_b32_e64 v132, 0, v132, s[0:1]
	v_cmp_class_f32_e64 s[0:1], v99, s92
	v_cndmask_b32_e64 v132, v132, v121, s[0:1]
	v_cndmask_b32_e64 v132, |v132|, v99, vcc
	v_cmp_neq_f32_e32 vcc, 1.0, v99
	v_cndmask_b32_e32 v99, 1.0, v132, vcc
	s_mov_b32 s4, 0x3fd9999a
	v_div_scale_f32 v132, s[0:1], s4, s4, v101
	v_rcp_f32_e32 v133, v132
	v_fma_f32 v134, -v132, v133, 1.0
	v_fma_f32 v133, v134, v133, v133
	v_div_scale_f32 v134, vcc, v101, s4, v101
	v_mul_f32_e32 v135, v134, v133
	v_fma_f32 v136, -v132, v135, v134
	v_fma_f32 v135, v136, v133, v135
	v_fma_f32 v132, -v132, v135, v134
	v_div_fmas_f32 v132, v132, v133, v135
	v_div_fixup_f32 v132, v132, s4, v101
	v_frexp_mant_f32_e64 v133, |v132|
	v_cmp_gt_f32_e32 vcc, s42, v133
	v_cndmask_b32_e64 v134, 0, 1, vcc
	v_ldexp_f32 v133, v133, v134
	v_frexp_exp_i32_f32_e64 v134, |v132|
	v_subbrev_u32_e32 v134, vcc, 0, v134, vcc
	v_add_f32_e32 v135, -1.0, v133
	v_add_f32_e32 v136, 1.0, v133
	v_sub_f32_e32 v137, v136, v133
	v_sub_f32_e32 v148, v136, v137
	v_sub_f32_e32 v133, v133, v148
	v_sub_f32_e32 v137, 1.0, v137
	v_add_f32_e32 v133, v137, v133
	v_rcp_f32_e32 v137, v136
	v_mul_f32_e32 v148, v135, v137
	v_mul_f32_e32 v149, v136, v148
	v_fma_f32 v136, v148, v136, -v149
	v_fma_f32 v133, v148, v133, v136
	v_add_f32_e32 v136, v149, v133
	v_sub_f32_e32 v149, v136, v149
	v_sub_f32_e32 v133, v133, v149
	v_sub_f32_e32 v149, v135, v136
	v_sub_f32_e32 v135, v135, v149
	v_sub_f32_e32 v135, v135, v136
	v_sub_f32_e32 v133, v135, v133
	v_add_f32_e32 v133, v149, v133
	v_mul_f32_e32 v133, v137, v133
	v_add_f32_e32 v135, v148, v133
	v_sub_f32_e32 v136, v135, v148
	v_sub_f32_e32 v133, v133, v136
	v_mul_f32_e32 v136, v135, v135
	v_add_f32_e32 v137, v133, v133
	v_fma_f32 v148, v135, v135, -v136
	v_fma_f32 v137, v135, v137, v148
	v_fma_f32 v137, v133, v133, v137
	v_add_f32_e32 v148, v136, v137
	v_sub_f32_e32 v136, v148, v136
	v_sub_f32_e32 v136, v137, v136
	v_fma_f32 v126, v148, s48, v126
	v_fma_f32 v126, v148, v126, s93
	v_cvt_f32_i32_e32 v134, v134
	v_mul_f32_e32 v137, s45, v134
	v_fma_f32 v149, v134, s45, -v137
	v_fma_f32 v134, v134, s44, v149
	v_add_f32_e32 v149, v137, v134
	v_sub_f32_e32 v137, v149, v137
	v_sub_f32_e32 v134, v134, v137
	v_ldexp_f32 v137, v135, 1
	v_mul_f32_e32 v150, v135, v148
	v_fma_f32 v151, v148, v135, -v150
	v_mul_f32_e32 v135, v135, v136
	v_fma_f32 v135, v148, v133, v135
	v_add_f32_e32 v135, v151, v135
	v_add_f32_e32 v151, v150, v135
	v_mul_f32_e32 v152, v148, v126
	v_fma_f32 v148, v148, v126, -v152
	v_fma_f32 v126, v136, v126, v148
	v_add_f32_e32 v136, v152, v126
	v_sub_f32_e32 v148, v136, v152
	v_sub_f32_e32 v126, v126, v148
	v_add_f32_e32 v148, s28, v136
	v_add_f32_e32 v152, s41, v148
	v_sub_f32_e32 v136, v136, v152
	v_add_f32_e32 v126, s49, v126
	v_add_f32_e32 v126, v136, v126
	v_add_f32_e32 v136, v148, v126
	v_mul_f32_e32 v152, v151, v136
	v_fma_f32 v153, v151, v136, -v152
	v_sub_f32_e32 v148, v136, v148
	v_sub_f32_e32 v126, v126, v148
	v_sub_f32_e32 v148, v151, v150
	v_sub_f32_e32 v135, v135, v148
	v_mul_f32_e32 v135, v135, v136
	v_fma_f32 v126, v151, v126, v135
	v_add_f32_e32 v126, v153, v126
	v_ldexp_f32 v133, v133, 1
	v_add_f32_e32 v135, v152, v126
	v_sub_f32_e32 v136, v135, v152
	v_sub_f32_e32 v126, v126, v136
	v_add_f32_e32 v136, v137, v135
	v_sub_f32_e32 v137, v136, v137
	v_sub_f32_e32 v135, v135, v137
	v_add_f32_e32 v126, v133, v126
	v_add_f32_e32 v126, v135, v126
	v_add_f32_e32 v133, v136, v126
	v_sub_f32_e32 v135, v133, v136
	v_sub_f32_e32 v126, v126, v135
	v_add_f32_e32 v135, v149, v133
	v_sub_f32_e32 v136, v135, v149
	v_sub_f32_e32 v137, v135, v136
	v_sub_f32_e32 v137, v149, v137
	v_sub_f32_e32 v133, v133, v136
	v_add_f32_e32 v133, v133, v137
	v_add_f32_e32 v136, v134, v126
	v_sub_f32_e32 v137, v136, v134
	v_sub_f32_e32 v148, v136, v137
	v_sub_f32_e32 v134, v134, v148
	v_sub_f32_e32 v126, v126, v137
	v_add_f32_e32 v126, v126, v134
	v_add_f32_e32 v133, v136, v133
	v_add_f32_e32 v134, v135, v133
	v_sub_f32_e32 v135, v134, v135
	v_sub_f32_e32 v133, v133, v135
	v_add_f32_e32 v126, v126, v133
	v_add_f32_e32 v133, v134, v126
	v_sub_f32_e32 v134, v133, v134
	v_sub_f32_e32 v126, v126, v134
	v_mul_f32_e32 v134, s3, v133
	v_fma_f32 v133, v133, s3, -v134
	v_fma_f32 v126, v126, s3, v133
	v_add_f32_e32 v133, v134, v126
	v_sub_f32_e32 v135, v133, v134
	v_sub_f32_e32 v126, v126, v135
	v_cmp_class_f32_e64 vcc, v134, s92
	v_cndmask_b32_e32 v133, v133, v134, vcc
	v_cmp_neq_f32_e64 vcc, |v133|, s94
	v_cndmask_b32_e32 v126, 0, v126, vcc
	v_mul_f32_e32 v134, s26, v133
	v_rndne_f32_e32 v134, v134
	v_mul_f32_e32 v135, s31, v134
	v_sub_f32_e32 v136, v133, v135
	v_sub_f32_e32 v137, v136, v133
	v_sub_f32_e32 v148, v136, v137
	v_sub_f32_e32 v148, v133, v148
	v_add_f32_e32 v135, v135, v137
	v_sub_f32_e32 v135, v148, v135
	v_add_f32_e32 v126, v126, v135
	v_add_f32_e32 v135, v136, v126
	v_sub_f32_e32 v136, v135, v136
	v_sub_f32_e32 v126, v126, v136
	v_mul_f32_e32 v136, s30, v134
	v_sub_f32_e32 v137, v135, v136
	v_sub_f32_e32 v135, v135, v137
	v_sub_f32_e32 v135, v135, v136
	v_add_f32_e32 v126, v126, v135
	v_add_f32_e32 v135, v137, v126
	v_sub_f32_e32 v136, v135, v137
	v_sub_f32_e32 v126, v126, v136
	v_mul_f32_e32 v136, s29, v134
	v_sub_f32_e32 v137, v135, v136
	v_sub_f32_e32 v135, v135, v137
	v_sub_f32_e32 v135, v135, v136
	v_add_f32_e32 v126, v126, v135
	v_add_f32_e32 v135, v137, v126
	v_sub_f32_e32 v136, v135, v137
	v_sub_f32_e32 v126, v126, v136
	v_fma_f32 v125, v135, s27, v125
	v_fma_f32 v125, v135, v125, s40
	v_fma_f32 v125, v135, v125, s35
	v_fma_f32 v125, v135, v125, s91
	v_mul_f32_e32 v136, v135, v135
	v_fma_f32 v137, v135, v135, -v136
	v_add_f32_e32 v148, v126, v126
	v_fma_f32 v137, v135, v148, v137
	v_fma_f32 v137, v126, v126, v137
	v_add_f32_e32 v148, v136, v137
	v_mul_f32_e32 v149, v125, v148
	v_sub_f32_e32 v136, v148, v136
	v_sub_f32_e32 v136, v137, v136
	v_fma_f32 v137, v148, v125, -v149
	v_fma_f32 v125, v136, v125, v137
	v_add_f32_e32 v136, v149, v125
	v_sub_f32_e32 v137, v136, v149
	v_sub_f32_e32 v125, v125, v137
	v_add_f32_e32 v137, v135, v136
	v_sub_f32_e32 v135, v137, v135
	v_sub_f32_e32 v135, v136, v135
	v_add_f32_e32 v125, v126, v125
	v_add_f32_e32 v125, v135, v125
	v_add_f32_e32 v125, v137, v125
	v_add_f32_e32 v125, 1.0, v125
	v_cvt_i32_f32_e32 v126, v134
	v_ldexp_f32 v125, v125, v126
	v_cmp_nlt_f32_e32 vcc, s34, v133
	v_cndmask_b32_e32 v125, v121, v125, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v133
	v_cndmask_b32_e32 v125, 0, v125, vcc
	v_cmp_u_f32_e32 vcc, v132, v132
	v_cmp_class_f32_e64 s[0:1], v132, s13
	v_cndmask_b32_e64 v120, v120, v125, s[0:1]
	v_cmp_neq_f32_e64 s[0:1], 0, v132
	v_cndmask_b32_e64 v120, 0, v120, s[0:1]
	v_cmp_class_f32_e64 s[0:1], v132, s92
	v_cndmask_b32_e64 v120, v120, v121, s[0:1]
	v_cndmask_b32_e64 v120, |v120|, v132, vcc
	v_cmp_neq_f32_e32 vcc, 1.0, v132
	v_cndmask_b32_e32 v120, 1.0, v120, vcc
	v_sub_f32_e32 v121, v99, v120
	v_mul_f32_e32 v121, 0x3995f245, v121
	v_add_f32_e32 v99, 1.0, v99
	v_add_f32_e32 v99, v120, v99
	v_div_scale_f32 v120, s[0:1], v99, v99, v121
	v_rcp_f32_e32 v125, v120
	v_fma_f32 v126, -v120, v125, 1.0
	v_fma_f32 v125, v126, v125, v125
	v_div_scale_f32 v126, vcc, v121, v99, v121
	v_mul_f32_e32 v132, v126, v125
	v_fma_f32 v133, -v120, v132, v126
	v_fma_f32 v132, v133, v125, v132
	v_fma_f32 v120, -v120, v132, v126
	v_div_fmas_f32 v120, v120, v125, v132
	v_div_fixup_f32 v125, v120, v99, v121
	v_cvt_f64_f32_e32 v[98:99], v98
	v_readlane_b32 s0, v171, 42
	v_readlane_b32 s1, v171, 43
	v_mul_f64 v[98:99], v[98:99], s[0:1]
	v_cvt_f32_f64_e32 v126, v[98:99]
	s_mov_b32 s0, 0x38d1b717
	v_mul_f32_e32 v98, s0, v102
	v_sub_f32_e32 v99, 0x40f1f3b6, v115
	s_mov_b32 s1, 0xba83126f
	v_mul_f32_e32 v115, s1, v115
	v_fma_f32 v132, v99, v98, v115
	v_add_u32_e32 v98, vcc, 64, v74
	v_addc_u32_e32 v99, vcc, 0, v75, vcc
	v_mul_f32_e32 v115, s0, v103
	v_readlane_b32 s4, v172, 45
	v_readlane_b32 s5, v172, 46
	v_sub_f32_e32 v120, s5, v116
	v_mul_f32_e32 v116, s1, v116
	v_fma_f32 v133, v120, v115, v116
	v_mul_f32_e32 v115, 0x4202cccd, v79
	v_sub_f32_e32 v116, 0x3d8f5c29, v117
	v_mul_f32_e32 v117, 0xbca0902e, v117
	v_fma_f32 v134, v116, v115, v117
	v_mul_f32_e32 v115, 0x4017ae14, v79
	s_mov_b32 s0, 0x3e0f5c29
	v_sub_f32_e32 v116, s0, v118
	v_sub_f32_e32 v116, v116, v114
	v_mul_f32_e32 v117, 0xb80637bd, v118
	v_fma_f32 v135, v116, v115, v117
	flat_store_dwordx4 v[98:99], v[132:135]
	v_mul_f32_e32 v98, 0xbb5a3c21, v114
	s_mov_b32 s1, 0x3b449ba6
	v_fma_f32 v118, v116, s1, v98
	s_movk_i32 s1, 0x50
	v_add_u32_e32 v98, vcc, s1, v74
	v_addc_u32_e32 v99, vcc, 0, v75, vcc
	v_mul_f32_e32 v114, 0x415ccccd, v79
	v_sub_f32_e32 v115, s0, v110
	v_sub_f32_e32 v115, v115, v111
	v_mul_f32_e32 v110, 0xb9f12c28, v110
	v_fma_f32 v120, v115, v114, v110
	v_mul_f32_e32 v110, 0xb86f1349, v111
	s_mov_b32 s0, 0x3c809d49
	v_fma_f32 v121, v115, s0, v110
	flat_store_dwordx4 v[98:99], v[118:121]
	s_mov_b32 s0, 0x42c80000
	v_mul_f32_e32 v98, s0, v79
	v_sub_f32_e32 v99, 0x3c8c154d, v112
	v_mul_f32_e32 v110, s2, v112
	v_fma_f32 v110, v99, v98, v110
	s_movk_i32 s1, 0x60
	v_add_u32_e32 v98, vcc, s1, v74
	v_addc_u32_e32 v99, vcc, 0, v75, vcc
	v_add_f32_e32 v111, v134, v135
	v_add_f32_e32 v111, v118, v111
	v_add_f32_e32 v111, 0, v111
	v_add_f32_e32 v111, v120, v111
	v_add_f32_e32 v111, v121, v111
	v_add_f32_e32 v115, v110, v111
	v_mul_f32_e32 v114, s0, v77
	v_sub_f32_e32 v111, 0x3f0ea0ea, v113
	s_mov_b32 s1, 0xbfa66666
	v_mul_f32_e32 v112, s1, v113
	v_fma_f32 v111, v111, v114, v112
	v_mul_f32_e32 v116, s0, v78
	v_sub_f32_e32 v112, 0x3f9b8034, v106
	v_mul_f32_e32 v106, s1, v106
	v_fma_f32 v112, v112, v116, v106
	v_sub_f32_e32 v106, 0x3e4bc14e, v107
	s_mov_b32 s1, 0xbcf5c28f
	v_mul_f32_e32 v107, s1, v107
	v_fma_f32 v113, v106, v114, v107
	flat_store_dwordx4 v[98:99], v[110:113]
	v_sub_f32_e32 v98, 0x3ede24dd, v108
	v_mul_f32_e32 v99, s1, v108
	v_fma_f32 v106, v98, v116, v99
	s_movk_i32 s1, 0x70
	v_add_u32_e32 v98, vcc, s1, v74
	v_addc_u32_e32 v99, vcc, 0, v75, vcc
	v_add_f32_e32 v110, v111, v113
	v_add_f32_e32 v111, v112, v106
	v_mul_f32_e32 v101, s0, v101
	v_sub_f32_e32 v107, 0x402ccccd, v109
	v_mul_f32_e32 v108, 0xc2820000, v109
	v_fma_f32 v107, v107, v101, v108
	v_mul_f32_e32 v101, 0x2dbcb686, v126
	s_mov_b32 s0, 0x41949249
	v_fma_f32 v108, v126, s0, v100
	v_fma_f32 v108, v125, s0, -v108
	v_sub_f32_e32 v108, v108, v107
	s_mov_b32 s0, 0x38090725
	v_fma_f32 v109, v122, s0, v123
	v_fma_f32 v109, v142, s61, v109
	v_fma_f32 v109, v84, s61, v109
	v_add_f32_e32 v112, v109, v140
	s_mov_b32 s0, 0x398a95c5
	v_fma_f32 v86, v86, s0, v124
	v_fma_f32 v86, v143, s61, v86
	v_fma_f32 v86, v85, s61, v86
	v_add_f32_e32 v86, v86, v141
	v_mul_f32_e32 v109, s10, v112
	s_mov_b32 s2, 0x30ebea72
	v_div_scale_f32 v113, s[0:1], s2, s2, v109
	v_rcp_f32_e32 v114, v113
	v_fma_f32 v116, -v113, v114, 1.0
	v_fma_f32 v114, v116, v114, v114
	v_div_scale_f32 v116, vcc, v109, s2, v109
	v_mul_f32_e32 v117, v116, v114
	v_fma_f32 v118, -v113, v117, v116
	v_fma_f32 v117, v118, v114, v117
	v_fma_f32 v113, -v113, v117, v116
	v_div_fmas_f32 v113, v113, v114, v117
	v_div_fixup_f32 v109, v113, s2, v109
	v_sub_f32_e32 v113, v103, v102
	s_mov_b32 s0, 0x3f83c20b
	v_fma_f32 v109, v113, s0, v109
	v_sub_f32_e32 v109, v109, v132
	flat_store_dwordx4 v[98:99], v[106:109]
	v_mul_f32_e32 v98, s10, v86
	v_mul_f32_e32 v98, 0x53b05a3b, v98
	v_div_scale_f32 v99, s[0:1], s8, s8, v98
	v_rcp_f32_e32 v106, v99
	v_fma_f32 v107, -v99, v106, 1.0
	v_fma_f32 v106, v107, v106, v106
	v_div_scale_f32 v107, vcc, v98, s8, v98
	v_mul_f32_e32 v108, v107, v106
	v_fma_f32 v109, -v99, v108, v107
	v_fma_f32 v108, v109, v106, v108
	v_fma_f32 v99, -v99, v108, v107
	v_div_fmas_f32 v99, v99, v106, v108
	v_div_fixup_f32 v98, v99, s8, v98
	v_sub_f32_e32 v99, v102, v103
	s_mov_b32 s0, 0x3ce34194
	v_fma_f32 v98, v99, s0, v98
	v_sub_f32_e32 v99, v104, v103
	s_mov_b32 s0, 0x401eddc4
	v_fma_f32 v98, v99, s0, v98
	v_sub_f32_e32 v98, v98, v133
	s_movk_i32 s0, 0x80
	v_add_u32_e32 v106, vcc, s0, v74
	v_addc_u32_e32 v107, vcc, 0, v75, vcc
	v_sub_f32_e32 v99, v103, v104
	v_mul_f32_e32 v99, 0x3d9c6c14, v99
	v_fma_f32 v102, v147, s20, v138
	v_add_f32_e32 v102, v102, v144
	v_fma_f32 v113, v142, -2.0, v102
	v_fma_f32 v102, v146, s9, v139
	v_add_f32_e32 v102, v102, v145
	v_fma_f32 v114, v143, -2.0, v102
	v_mul_f32_e32 v102, s10, v113
	s_mov_b32 s2, 0x316bea72
	v_div_scale_f32 v103, s[0:1], s2, s2, v102
	v_rcp_f32_e32 v108, v103
	v_fma_f32 v109, -v103, v108, 1.0
	v_fma_f32 v108, v109, v108, v108
	v_div_scale_f32 v109, vcc, v102, s2, v102
	v_mul_f32_e32 v116, v109, v108
	v_fma_f32 v117, -v103, v116, v109
	v_fma_f32 v116, v117, v108, v116
	v_fma_f32 v103, -v103, v116, v109
	v_div_fmas_f32 v103, v103, v108, v116
	v_div_fixup_f32 v102, v103, s2, v102
	v_sub_f32_e32 v103, v78, v77
	s_mov_b32 s0, 0x42394c0e
	v_fma_f32 v102, v103, s0, v102
	v_sub_f32_e32 v102, v102, v110
	v_mul_f32_e32 v100, 0x2ba29560, v100
	s_mov_b32 s2, 0x28a03e07
	v_div_scale_f32 v103, s[0:1], s2, s2, v100
	v_rcp_f32_e32 v108, v103
	v_fma_f32 v109, -v103, v108, 1.0
	v_fma_f32 v108, v109, v108, v108
	v_div_scale_f32 v109, vcc, v100, s2, v100
	v_mul_f32_e32 v110, v109, v108
	v_fma_f32 v116, -v103, v110, v109
	v_fma_f32 v110, v116, v108, v110
	v_fma_f32 v103, -v103, v110, v109
	v_div_fmas_f32 v103, v103, v108, v110
	v_div_fixup_f32 v100, v103, s2, v100
	v_add_f32_e32 v100, v100, v102
	v_div_scale_f32 v102, s[0:1], s2, s2, v101
	v_rcp_f32_e32 v103, v102
	v_fma_f32 v108, -v102, v103, 1.0
	v_fma_f32 v103, v108, v103, v103
	v_div_scale_f32 v108, vcc, v101, s2, v101
	v_mul_f32_e32 v109, v108, v103
	v_fma_f32 v110, -v102, v109, v108
	v_fma_f32 v109, v110, v103, v109
	v_fma_f32 v102, -v102, v109, v108
	v_div_fmas_f32 v102, v102, v103, v109
	v_div_fixup_f32 v101, v102, s2, v101
	v_add_f32_e32 v101, v101, v100
	v_mov_b32_e32 v100, v119
	flat_store_dwordx4 v[106:107], v[98:101]
	s_nop 0
	v_mul_f32_e32 v98, s10, v114
	s_mov_b32 s2, 0x3408c755
	v_div_scale_f32 v99, s[0:1], s2, s2, v98
	v_rcp_f32_e32 v100, v99
	v_fma_f32 v102, -v99, v100, 1.0
	v_fma_f32 v100, v102, v100, v100
	v_div_scale_f32 v102, vcc, v98, s2, v98
	v_mul_f32_e32 v103, v102, v100
	v_fma_f32 v106, -v99, v103, v102
	v_fma_f32 v103, v106, v100, v103
	v_fma_f32 v99, -v99, v103, v102
	v_div_fmas_f32 v99, v99, v100, v103
	v_div_fixup_f32 v98, v99, s2, v98
	v_sub_f32_e32 v99, v77, v78
	s_mov_b32 s0, 0x3f9fccdb
	v_fma_f32 v98, v99, s0, v98
	v_sub_f32_e32 v99, v79, v78
	s_mov_b32 s0, 0x40b488e8
	v_fma_f32 v98, v99, s0, v98
	v_sub_f32_e32 v98, v98, v111
	v_add_u32_e32 v102, vcc, s14, v74
	v_addc_u32_e32 v103, vcc, 0, v75, vcc
	v_sub_f32_e64 v99, -v125, v115
	v_sub_f32_e32 v79, v78, v79
	s_mov_b32 s0, 0x3e31c1e1
	v_fma_f32 v99, v79, s0, v99
	flat_store_dwordx2 v[102:103], v[98:99]
	v_and_b32_e32 v106, s90, v105
	v_and_b32_e32 v79, s90, v92
	v_cmp_ngt_f32_e64 s[0:1], |v105|, |v92|
                                        ; implicit-def: $vgpr100
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_xor_b64 s[0:1], exec, s[2:3]
; %bb.88:                               ;   in Loop: Header=BB1_9 Depth=3
	v_cmp_eq_f32_e32 vcc, v106, v79
	v_bfi_b32 v100, s90, 0, v105
	v_cndmask_b32_e32 v100, v105, v100, vcc
; %bb.89:                               ; %Flow840
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_mov_b64 s[100:101], s[80:81]
	v_writelane_b32 v174, s18, 22
	v_writelane_b32 v174, s19, 23
	s_movk_i32 s82, 0x5b
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB1_95
; %bb.90:                               ;   in Loop: Header=BB1_9 Depth=3
	v_frexp_exp_i32_f32_e32 v107, v106
	v_frexp_mant_f32_e32 v100, v106
	v_ldexp_f32 v108, v100, 12
	v_frexp_exp_i32_f32_e32 v100, v79
	v_frexp_mant_f32_e32 v79, v79
	v_ldexp_f32 v79, v79, 1
	v_sub_u32_e32 v107, vcc, v107, v100
	v_rcp_f32_e32 v106, v79
	v_cmp_lt_i32_e32 vcc, 12, v107
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz BB1_94
; %bb.91:                               ; %.preheader.preheader
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_mov_b64 s[4:5], 0
BB1_92:                                 ; %.preheader
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ;       Parent Loop BB1_9 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	v_mul_f32_e32 v109, v106, v108
	v_rndne_f32_e32 v109, v109
	v_fma_f32 v108, -v109, v79, v108
	v_cmp_gt_f32_e32 vcc, 0, v108
	v_add_f32_e32 v109, v79, v108
	v_cndmask_b32_e32 v108, v108, v109, vcc
	v_ldexp_f32 v108, v108, 12
	v_mov_b32_e32 v109, v107
	v_add_u32_e32 v107, vcc, -12, v109
	v_cmp_gt_i32_e32 vcc, 25, v109
	s_or_b64 s[4:5], vcc, s[4:5]
	s_andn2_b64 exec, exec, s[4:5]
	s_cbranch_execnz BB1_92
; %bb.93:                               ; %Flow837
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_or_b64 exec, exec, s[4:5]
BB1_94:                                 ; %Flow838
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_or_b64 exec, exec, s[2:3]
	v_add_u32_e32 v100, vcc, -1, v100
	v_add_u32_e32 v107, vcc, -11, v107
	v_ldexp_f32 v107, v108, v107
	v_mul_f32_e32 v106, v106, v107
	v_rndne_f32_e32 v106, v106
	v_fma_f32 v106, -v106, v79, v107
	v_cmp_gt_f32_e32 vcc, 0, v106
	v_add_f32_e32 v79, v79, v106
	v_cndmask_b32_e32 v79, v106, v79, vcc
	v_ldexp_f32 v79, v79, v100
	v_and_b32_e32 v100, s15, v105
	v_xor_b32_e32 v100, v100, v79
BB1_95:                                 ; %Flow841
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s2, 0x40accccd
	v_div_scale_f32 v79, s[0:1], v76, v76, s2
	v_rcp_f32_e32 v106, v79
	v_fma_f32 v107, -v79, v106, 1.0
	v_fma_f32 v106, v107, v106, v106
	v_div_scale_f32 v107, vcc, s2, v76, s2
	v_mul_f32_e32 v108, v107, v106
	v_fma_f32 v109, -v79, v108, v107
	v_fma_f32 v108, v109, v106, v108
	v_fma_f32 v79, -v79, v108, v107
	v_div_fmas_f32 v79, v79, v106, v108
	v_div_fixup_f32 v79, v79, v76, s2
	v_cmp_class_f32_e64 vcc, v79, s14
	v_mov_b32_e32 v121, s38
	v_cndmask_b32_e32 v106, 1.0, v121, vcc
	v_mul_f32_e32 v79, v79, v106
	v_log_f32_e32 v79, v79
	s_mov_b32 s15, 0x3f317217
	v_mul_f32_e32 v106, s15, v79
	s_movk_i32 s22, 0x207
	v_cmp_class_f32_e64 s[0:1], v79, s22
	v_fma_f32 v107, v79, s15, -v106
	s_mov_b32 s23, 0x3377d1cf
	v_fma_f32 v107, v79, s23, v107
	v_add_f32_e32 v106, v106, v107
	v_cndmask_b32_e64 v79, v106, v79, s[0:1]
	v_mov_b32_e32 v142, s39
	v_cndmask_b32_e32 v106, 0, v142, vcc
	v_sub_f32_e32 v79, v79, v106
	s_mov_b32 s80, 0xc1d5b2df
	v_mul_f32_e32 v122, s80, v79
	v_add_u32_e32 v110, vcc, 4, v74
	v_addc_u32_e32 v111, vcc, 0, v75, vcc
	v_add_u32_e32 v106, vcc, 8, v74
	v_addc_u32_e32 v107, vcc, 0, v75, vcc
	v_add_f32_e32 v108, 0x42040000, v93
	v_cvt_f64_f32_e32 v[108:109], v108
	v_readlane_b32 s2, v171, 44
	v_readlane_b32 s3, v171, 45
	v_div_scale_f64 v[115:116], s[0:1], s[2:3], s[2:3], v[108:109]
	v_rcp_f64_e32 v[117:118], v[115:116]
	v_fma_f64 v[119:120], -v[115:116], v[117:118], 1.0
	v_fma_f64 v[117:118], v[117:118], v[119:120], v[117:118]
	v_fma_f64 v[119:120], -v[115:116], v[117:118], 1.0
	v_fma_f64 v[117:118], v[117:118], v[119:120], v[117:118]
	v_div_scale_f64 v[119:120], vcc, v[108:109], s[2:3], v[108:109]
	v_mul_f64 v[123:124], v[119:120], v[117:118]
	v_fma_f64 v[115:116], -v[115:116], v[123:124], v[119:120]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[115:116], v[115:116], v[117:118], v[123:124]
	v_div_fixup_f64 v[117:118], v[115:116], s[2:3], v[108:109]
	v_mul_f64 v[108:109], v[117:118], s[54:55]
	v_rndne_f64_e32 v[115:116], v[108:109]
	v_fma_f64 v[108:109], v[115:116], s[56:57], v[117:118]
	v_mul_f64 v[119:120], v[115:116], s[58:59]
	v_add_f64 v[123:124], v[108:109], v[119:120]
	v_add_f64 v[108:109], v[108:109], -v[123:124]
	v_add_f64 v[119:120], v[108:109], v[119:120]
	v_mov_b32_e32 v109, s79
	v_mov_b32_e32 v108, s78
	v_fma_f64 v[125:126], v[123:124], s[62:63], v[108:109]
	v_fma_f64 v[125:126], v[123:124], v[125:126], s[64:65]
	v_fma_f64 v[125:126], v[123:124], v[125:126], s[66:67]
	v_fma_f64 v[125:126], v[123:124], v[125:126], s[68:69]
	v_fma_f64 v[125:126], v[123:124], v[125:126], s[70:71]
	v_fma_f64 v[125:126], v[123:124], v[125:126], s[72:73]
	v_fma_f64 v[125:126], v[123:124], v[125:126], s[74:75]
	v_fma_f64 v[125:126], v[123:124], v[125:126], s[76:77]
	v_fma_f64 v[125:126], v[123:124], v[125:126], s[52:53]
	v_mul_f64 v[132:133], v[123:124], v[123:124]
	v_fma_f64 v[134:135], v[123:124], v[123:124], -v[132:133]
	v_add_f64 v[136:137], v[119:120], v[119:120]
	v_fma_f64 v[134:135], v[123:124], v[136:137], v[134:135]
	v_fma_f64 v[134:135], v[119:120], v[119:120], v[134:135]
	v_add_f64 v[136:137], v[132:133], v[134:135]
	v_add_f64 v[132:133], v[136:137], -v[132:133]
	v_add_f64 v[132:133], v[134:135], -v[132:133]
	v_mul_f64 v[134:135], v[136:137], v[125:126]
	v_fma_f64 v[136:137], v[136:137], v[125:126], -v[134:135]
	v_fma_f64 v[125:126], v[132:133], v[125:126], v[136:137]
	v_add_f64 v[132:133], v[134:135], v[125:126]
	v_add_f64 v[134:135], v[132:133], -v[134:135]
	v_add_f64 v[125:126], v[125:126], -v[134:135]
	v_add_f64 v[134:135], v[123:124], v[132:133]
	v_add_f64 v[123:124], v[134:135], -v[123:124]
	v_add_f64 v[123:124], v[132:133], -v[123:124]
	v_add_f64 v[119:120], v[119:120], v[125:126]
	v_add_f64 v[119:120], v[123:124], v[119:120]
	v_add_f64 v[119:120], v[134:135], v[119:120]
	v_add_f64 v[119:120], v[119:120], 1.0
	v_cvt_i32_f64_e32 v115, v[115:116]
	v_ldexp_f64 v[115:116], v[119:120], v115
	s_mov_b32 s18, s25
	s_mov_b32 s19, s43
	v_cmp_lt_f64_e64 s[0:1], s[18:19], v[117:118]
	s_mov_b32 s20, s25
	s_mov_b32 s21, s83
	v_cmp_gt_f64_e64 s[2:3], s[20:21], v[117:118]
	v_fma_f32 v79, v79, s80, v93
	v_cmp_class_f32_e64 vcc, v77, s14
	v_cndmask_b32_e32 v117, 1.0, v121, vcc
	v_mul_f32_e32 v117, v77, v117
	v_log_f32_e32 v117, v117
	s_mov_b32 s6, 0x3e9a209a
	v_mul_f32_e32 v118, s6, v117
	v_cmp_class_f32_e64 s[4:5], v117, s22
	v_fma_f32 v119, v117, s6, -v118
	s_mov_b32 s7, 0x3284fbcf
	v_fma_f32 v119, v117, s7, v119
	v_add_f32_e32 v118, v118, v119
	v_cndmask_b32_e64 v117, v118, v117, s[4:5]
	v_mov_b32_e32 v118, 0x411a209b
	v_cndmask_b32_e32 v119, 0, v118, vcc
	v_sub_f32_e32 v117, v119, v117
	v_add_f32_e32 v117, s61, v117
	v_cmp_class_f32_e64 vcc, v78, s14
	v_cndmask_b32_e32 v119, 1.0, v121, vcc
	v_mul_f32_e32 v119, v78, v119
	v_log_f32_e32 v119, v119
	v_mul_f32_e32 v120, s6, v119
	v_cmp_class_f32_e64 s[4:5], v119, s22
	v_fma_f32 v123, v119, s6, -v120
	v_fma_f32 v123, v119, s7, v123
	v_add_f32_e32 v120, v120, v123
	v_cndmask_b32_e64 v119, v120, v119, s[4:5]
	v_cndmask_b32_e32 v118, 0, v118, vcc
	v_sub_f32_e32 v118, v118, v119
	v_add_f32_e32 v140, s61, v118
	v_cvt_f64_f32_e32 v[117:118], v117
	v_readlane_b32 s10, v173, 43
	v_readlane_b32 s11, v173, 44
	s_mov_b32 s10, s16
	v_add_f64 v[117:118], v[117:118], s[10:11]
	s_mov_b64 s[38:39], s[84:85]
	s_mov_b32 s8, s84
	v_readlane_b32 s4, v173, 19
	v_readlane_b32 s5, v173, 20
	s_mov_b32 s9, s5
	v_div_scale_f64 v[119:120], s[4:5], s[8:9], s[8:9], v[117:118]
	v_rcp_f64_e32 v[123:124], v[119:120]
	v_fma_f64 v[125:126], -v[119:120], v[123:124], 1.0
	v_fma_f64 v[123:124], v[123:124], v[125:126], v[123:124]
	v_fma_f64 v[125:126], -v[119:120], v[123:124], 1.0
	v_fma_f64 v[123:124], v[123:124], v[125:126], v[123:124]
	v_div_scale_f64 v[125:126], vcc, v[117:118], s[8:9], v[117:118]
	v_mul_f64 v[132:133], v[125:126], v[123:124]
	v_fma_f64 v[119:120], -v[119:120], v[132:133], v[125:126]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[119:120], v[119:120], v[123:124], v[132:133]
	v_div_fixup_f64 v[119:120], v[119:120], s[8:9], v[117:118]
	v_mul_f64 v[117:118], v[119:120], s[54:55]
	v_rndne_f64_e32 v[117:118], v[117:118]
	v_fma_f64 v[123:124], v[117:118], s[56:57], v[119:120]
	v_mul_f64 v[125:126], v[117:118], s[58:59]
	v_add_f64 v[132:133], v[123:124], v[125:126]
	v_add_f64 v[123:124], v[123:124], -v[132:133]
	v_add_f64 v[123:124], v[123:124], v[125:126]
	v_fma_f64 v[125:126], v[132:133], s[62:63], v[108:109]
	v_fma_f64 v[125:126], v[132:133], v[125:126], s[64:65]
	v_fma_f64 v[125:126], v[132:133], v[125:126], s[66:67]
	v_fma_f64 v[125:126], v[132:133], v[125:126], s[68:69]
	v_fma_f64 v[125:126], v[132:133], v[125:126], s[70:71]
	v_fma_f64 v[125:126], v[132:133], v[125:126], s[72:73]
	v_fma_f64 v[125:126], v[132:133], v[125:126], s[74:75]
	v_fma_f64 v[125:126], v[132:133], v[125:126], s[76:77]
	v_fma_f64 v[125:126], v[132:133], v[125:126], s[52:53]
	v_mul_f64 v[134:135], v[132:133], v[132:133]
	v_fma_f64 v[136:137], v[132:133], v[132:133], -v[134:135]
	v_add_f64 v[138:139], v[123:124], v[123:124]
	v_fma_f64 v[136:137], v[132:133], v[138:139], v[136:137]
	v_fma_f64 v[136:137], v[123:124], v[123:124], v[136:137]
	v_add_f64 v[138:139], v[134:135], v[136:137]
	v_add_f64 v[134:135], v[138:139], -v[134:135]
	v_add_f64 v[134:135], v[136:137], -v[134:135]
	v_mul_f64 v[136:137], v[138:139], v[125:126]
	v_fma_f64 v[138:139], v[138:139], v[125:126], -v[136:137]
	v_fma_f64 v[125:126], v[134:135], v[125:126], v[138:139]
	v_add_f64 v[134:135], v[136:137], v[125:126]
	v_add_f64 v[136:137], v[134:135], -v[136:137]
	v_add_f64 v[125:126], v[125:126], -v[136:137]
	v_add_f64 v[136:137], v[132:133], v[134:135]
	v_add_f64 v[132:133], v[136:137], -v[132:133]
	v_add_f64 v[132:133], v[134:135], -v[132:133]
	v_add_f64 v[123:124], v[123:124], v[125:126]
	v_add_f64 v[123:124], v[132:133], v[123:124]
	v_add_f64 v[123:124], v[136:137], v[123:124]
	v_add_f64 v[123:124], v[123:124], 1.0
	v_cvt_i32_f64_e32 v117, v[117:118]
	v_ldexp_f64 v[117:118], v[123:124], v117
	v_cmp_lt_f64_e64 s[6:7], s[18:19], v[119:120]
	v_cmp_gt_f64_e64 s[4:5], s[20:21], v[119:120]
	v_cvt_f64_f32_e32 v[119:120], v140
	v_writelane_b32 v173, s10, 43
	v_writelane_b32 v173, s11, 44
	v_add_f64 v[119:120], v[119:120], s[10:11]
	v_div_scale_f64 v[123:124], s[10:11], s[8:9], s[8:9], v[119:120]
	v_rcp_f64_e32 v[125:126], v[123:124]
	v_fma_f64 v[132:133], -v[123:124], v[125:126], 1.0
	v_fma_f64 v[125:126], v[125:126], v[132:133], v[125:126]
	v_fma_f64 v[132:133], -v[123:124], v[125:126], 1.0
	v_fma_f64 v[125:126], v[125:126], v[132:133], v[125:126]
	v_div_scale_f64 v[132:133], vcc, v[119:120], s[8:9], v[119:120]
	v_mul_f64 v[134:135], v[132:133], v[125:126]
	v_fma_f64 v[123:124], -v[123:124], v[134:135], v[132:133]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[123:124], v[123:124], v[125:126], v[134:135]
	v_div_fixup_f64 v[123:124], v[123:124], s[8:9], v[119:120]
	v_mul_f64 v[119:120], v[123:124], s[54:55]
	v_rndne_f64_e32 v[119:120], v[119:120]
	v_fma_f64 v[125:126], v[119:120], s[56:57], v[123:124]
	v_mul_f64 v[132:133], v[119:120], s[58:59]
	v_add_f64 v[134:135], v[125:126], v[132:133]
	v_add_f64 v[125:126], v[125:126], -v[134:135]
	v_add_f64 v[125:126], v[125:126], v[132:133]
	v_fma_f64 v[132:133], v[134:135], s[62:63], v[108:109]
	v_fma_f64 v[132:133], v[134:135], v[132:133], s[64:65]
	v_fma_f64 v[132:133], v[134:135], v[132:133], s[66:67]
	v_fma_f64 v[132:133], v[134:135], v[132:133], s[68:69]
	v_fma_f64 v[132:133], v[134:135], v[132:133], s[70:71]
	v_fma_f64 v[132:133], v[134:135], v[132:133], s[72:73]
	v_fma_f64 v[132:133], v[134:135], v[132:133], s[74:75]
	v_fma_f64 v[132:133], v[134:135], v[132:133], s[76:77]
	v_fma_f64 v[132:133], v[134:135], v[132:133], s[52:53]
	v_mul_f64 v[136:137], v[134:135], v[134:135]
	v_fma_f64 v[138:139], v[134:135], v[134:135], -v[136:137]
	v_add_f64 v[140:141], v[125:126], v[125:126]
	v_fma_f64 v[138:139], v[134:135], v[140:141], v[138:139]
	v_fma_f64 v[138:139], v[125:126], v[125:126], v[138:139]
	v_add_f64 v[140:141], v[136:137], v[138:139]
	v_add_f64 v[136:137], v[140:141], -v[136:137]
	v_add_f64 v[136:137], v[138:139], -v[136:137]
	v_mul_f64 v[138:139], v[140:141], v[132:133]
	v_fma_f64 v[140:141], v[140:141], v[132:133], -v[138:139]
	v_fma_f64 v[132:133], v[136:137], v[132:133], v[140:141]
	v_add_f64 v[136:137], v[138:139], v[132:133]
	v_add_f64 v[138:139], v[136:137], -v[138:139]
	v_add_f64 v[132:133], v[132:133], -v[138:139]
	v_add_f64 v[138:139], v[134:135], v[136:137]
	v_add_f64 v[134:135], v[138:139], -v[134:135]
	v_add_f64 v[134:135], v[136:137], -v[134:135]
	v_add_f64 v[125:126], v[125:126], v[132:133]
	v_add_f64 v[125:126], v[134:135], v[125:126]
	v_add_f64 v[125:126], v[138:139], v[125:126]
	v_add_f64 v[125:126], v[125:126], 1.0
	v_cvt_i32_f64_e32 v119, v[119:120]
	v_ldexp_f64 v[119:120], v[125:126], v119
	v_cmp_lt_f64_e64 s[10:11], s[18:19], v[123:124]
	v_cmp_gt_f64_e64 s[48:49], s[20:21], v[123:124]
	s_mov_b32 s8, 0x3c9628cc
	v_fma_f32 v104, v104, s8, v76
	s_mov_b32 s8, 0x40feeb1c
	v_div_scale_f32 v123, s[12:13], v104, v104, s8
	v_rcp_f32_e32 v124, v123
	v_fma_f32 v125, -v123, v124, 1.0
	v_fma_f32 v124, v125, v124, v124
	v_div_scale_f32 v125, vcc, s8, v104, s8
	v_mul_f32_e32 v126, v125, v124
	v_fma_f32 v132, -v123, v126, v125
	v_fma_f32 v126, v132, v124, v126
	v_fma_f32 v123, -v123, v126, v125
	v_div_fmas_f32 v123, v123, v124, v126
	v_div_fixup_f32 v104, v123, v104, s8
	v_cmp_class_f32_e64 vcc, v104, s14
	v_cndmask_b32_e32 v121, 1.0, v121, vcc
	v_mul_f32_e32 v104, v104, v121
	v_log_f32_e32 v104, v104
	v_mul_f32_e32 v121, s15, v104
	v_cmp_class_f32_e64 s[12:13], v104, s22
	v_fma_f32 v123, v104, s15, -v121
	v_fma_f32 v123, v104, s23, v123
	v_add_f32_e32 v121, v121, v123
	v_cndmask_b32_e64 v104, v121, v104, s[12:13]
	v_cndmask_b32_e32 v121, 0, v142, vcc
	v_sub_f32_e32 v104, v104, v121
	v_frexp_mant_f32_e64 v121, |v91|
	v_cmp_gt_f32_e32 vcc, s42, v121
	v_cndmask_b32_e64 v123, 0, 1, vcc
	v_ldexp_f32 v121, v121, v123
	v_frexp_exp_i32_f32_e64 v123, |v91|
	v_subbrev_u32_e32 v123, vcc, 0, v123, vcc
	v_add_f32_e32 v124, -1.0, v121
	v_add_f32_e32 v125, 1.0, v121
	v_sub_f32_e32 v126, v125, v121
	v_sub_f32_e32 v132, v125, v126
	v_sub_f32_e32 v121, v121, v132
	v_sub_f32_e32 v126, 1.0, v126
	v_add_f32_e32 v121, v126, v121
	v_rcp_f32_e32 v126, v125
	v_mul_f32_e32 v132, v124, v126
	v_mul_f32_e32 v133, v125, v132
	v_fma_f32 v125, v132, v125, -v133
	v_fma_f32 v121, v132, v121, v125
	v_add_f32_e32 v125, v133, v121
	v_sub_f32_e32 v133, v125, v133
	v_sub_f32_e32 v121, v121, v133
	v_sub_f32_e32 v133, v124, v125
	v_sub_f32_e32 v124, v124, v133
	v_sub_f32_e32 v124, v124, v125
	v_sub_f32_e32 v121, v124, v121
	v_add_f32_e32 v121, v133, v121
	v_mul_f32_e32 v121, v126, v121
	v_add_f32_e32 v124, v132, v121
	v_sub_f32_e32 v125, v124, v132
	v_sub_f32_e32 v121, v121, v125
	v_mul_f32_e32 v125, v124, v124
	v_add_f32_e32 v126, v121, v121
	v_fma_f32 v132, v124, v124, -v125
	v_fma_f32 v126, v124, v126, v132
	v_fma_f32 v126, v121, v121, v126
	v_add_f32_e32 v132, v125, v126
	v_sub_f32_e32 v125, v132, v125
	v_sub_f32_e32 v125, v126, v125
	s_mov_b32 s12, 0x3e91f4c4
	v_mov_b32_e32 v126, s12
	s_mov_b32 s8, 0x3e76c4e1
	v_fma_f32 v133, v132, s8, v126
	v_fma_f32 v133, v132, v133, s93
	v_cvt_f32_i32_e32 v123, v123
	v_mul_f32_e32 v134, s45, v123
	v_fma_f32 v135, v123, s45, -v134
	v_fma_f32 v123, v123, s44, v135
	v_add_f32_e32 v135, v134, v123
	v_sub_f32_e32 v134, v135, v134
	v_sub_f32_e32 v123, v123, v134
	v_ldexp_f32 v134, v124, 1
	v_mul_f32_e32 v136, v124, v132
	v_fma_f32 v137, v132, v124, -v136
	v_mul_f32_e32 v124, v124, v125
	v_fma_f32 v124, v132, v121, v124
	v_add_f32_e32 v124, v137, v124
	v_add_f32_e32 v137, v136, v124
	v_mul_f32_e32 v138, v132, v133
	v_fma_f32 v132, v132, v133, -v138
	v_fma_f32 v125, v125, v133, v132
	v_add_f32_e32 v132, v138, v125
	v_sub_f32_e32 v133, v132, v138
	v_sub_f32_e32 v125, v125, v133
	v_add_f32_e32 v133, s28, v132
	v_add_f32_e32 v138, s41, v133
	v_sub_f32_e32 v132, v132, v138
	s_mov_b32 s9, 0x31739010
	v_add_f32_e32 v125, s9, v125
	v_add_f32_e32 v125, v132, v125
	v_add_f32_e32 v132, v133, v125
	v_mul_f32_e32 v138, v137, v132
	v_fma_f32 v139, v137, v132, -v138
	v_sub_f32_e32 v133, v132, v133
	v_sub_f32_e32 v125, v125, v133
	v_sub_f32_e32 v133, v137, v136
	v_sub_f32_e32 v124, v124, v133
	v_mul_f32_e32 v124, v124, v132
	v_fma_f32 v124, v137, v125, v124
	v_add_f32_e32 v124, v139, v124
	v_ldexp_f32 v121, v121, 1
	v_add_f32_e32 v125, v138, v124
	v_sub_f32_e32 v132, v125, v138
	v_sub_f32_e32 v124, v124, v132
	v_add_f32_e32 v132, v134, v125
	v_sub_f32_e32 v133, v132, v134
	v_sub_f32_e32 v125, v125, v133
	v_add_f32_e32 v121, v121, v124
	v_add_f32_e32 v121, v125, v121
	v_add_f32_e32 v124, v132, v121
	v_sub_f32_e32 v125, v124, v132
	v_sub_f32_e32 v121, v121, v125
	v_add_f32_e32 v125, v135, v124
	v_sub_f32_e32 v132, v125, v135
	v_sub_f32_e32 v133, v125, v132
	v_sub_f32_e32 v133, v135, v133
	v_sub_f32_e32 v124, v124, v132
	v_add_f32_e32 v124, v124, v133
	v_add_f32_e32 v132, v123, v121
	v_sub_f32_e32 v133, v132, v123
	v_sub_f32_e32 v134, v132, v133
	v_sub_f32_e32 v123, v123, v134
	v_sub_f32_e32 v121, v121, v133
	v_add_f32_e32 v121, v121, v123
	v_add_f32_e32 v123, v132, v124
	v_add_f32_e32 v124, v125, v123
	v_sub_f32_e32 v125, v124, v125
	v_sub_f32_e32 v123, v123, v125
	v_add_f32_e32 v121, v121, v123
	v_add_f32_e32 v123, v124, v121
	v_sub_f32_e32 v124, v123, v124
	v_sub_f32_e32 v121, v121, v124
	v_add_f32_e32 v124, v123, v123
	v_fma_f32 v125, v123, 2.0, -v124
	v_mul_f32_e32 v123, 0, v123
	v_fma_f32 v121, v121, 2.0, v123
	v_add_f32_e32 v121, v125, v121
	v_add_f32_e32 v123, v124, v121
	v_sub_f32_e32 v125, v123, v124
	v_sub_f32_e32 v121, v121, v125
	v_cmp_class_f32_e64 vcc, v124, s92
	v_cndmask_b32_e32 v123, v123, v124, vcc
	v_cmp_neq_f32_e64 vcc, |v123|, s94
	v_cndmask_b32_e32 v121, 0, v121, vcc
	v_mul_f32_e32 v124, s26, v123
	v_rndne_f32_e32 v124, v124
	v_mul_f32_e32 v125, s31, v124
	v_sub_f32_e32 v132, v123, v125
	v_sub_f32_e32 v133, v132, v123
	v_sub_f32_e32 v134, v132, v133
	v_sub_f32_e32 v134, v123, v134
	v_add_f32_e32 v125, v125, v133
	v_sub_f32_e32 v125, v134, v125
	v_add_f32_e32 v121, v121, v125
	v_add_f32_e32 v125, v132, v121
	v_sub_f32_e32 v132, v125, v132
	v_sub_f32_e32 v121, v121, v132
	v_mul_f32_e32 v132, s30, v124
	v_sub_f32_e32 v133, v125, v132
	v_sub_f32_e32 v125, v125, v133
	v_sub_f32_e32 v125, v125, v132
	v_add_f32_e32 v121, v121, v125
	v_add_f32_e32 v125, v133, v121
	v_sub_f32_e32 v132, v125, v133
	v_sub_f32_e32 v121, v121, v132
	v_mul_f32_e32 v132, s29, v124
	v_sub_f32_e32 v133, v125, v132
	v_sub_f32_e32 v125, v125, v133
	v_sub_f32_e32 v125, v125, v132
	v_add_f32_e32 v121, v121, v125
	v_add_f32_e32 v125, v133, v121
	v_sub_f32_e32 v132, v125, v133
	v_sub_f32_e32 v121, v121, v132
	s_mov_b32 s12, 0x3c091de6
	v_mov_b32_e32 v132, s12
	v_fma_f32 v133, v125, s27, v132
	v_fma_f32 v133, v125, v133, s40
	v_fma_f32 v133, v125, v133, s35
	v_fma_f32 v133, v125, v133, s91
	v_mul_f32_e32 v134, v125, v125
	v_fma_f32 v135, v125, v125, -v134
	v_add_f32_e32 v136, v121, v121
	v_fma_f32 v135, v125, v136, v135
	v_fma_f32 v135, v121, v121, v135
	v_add_f32_e32 v136, v134, v135
	v_mul_f32_e32 v137, v133, v136
	v_sub_f32_e32 v134, v136, v134
	v_sub_f32_e32 v134, v135, v134
	v_fma_f32 v135, v136, v133, -v137
	v_fma_f32 v133, v134, v133, v135
	v_add_f32_e32 v134, v137, v133
	v_sub_f32_e32 v135, v134, v137
	v_sub_f32_e32 v133, v133, v135
	v_add_f32_e32 v135, v125, v134
	v_sub_f32_e32 v125, v135, v125
	v_sub_f32_e32 v125, v134, v125
	v_add_f32_e32 v121, v121, v133
	v_add_f32_e32 v121, v125, v121
	v_add_f32_e32 v121, v135, v121
	v_add_f32_e32 v121, 1.0, v121
	v_cvt_i32_f32_e32 v124, v124
	v_ldexp_f32 v121, v121, v124
	v_cmp_nlt_f32_e32 vcc, s34, v123
	v_mov_b32_e32 v124, s94
	v_cndmask_b32_e32 v121, v124, v121, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v123
	v_cmp_neq_f32_e64 s[12:13], 0, v91
	v_cmp_u_f32_e64 s[14:15], v91, v91
	s_mov_b64 s[22:23], s[16:17]
	v_cmp_class_f32_e64 s[16:17], v91, s92
	s_and_b64 vcc, s[12:13], vcc
	v_cndmask_b32_e32 v121, 0, v121, vcc
	v_cndmask_b32_e64 v121, v121, v124, s[16:17]
	v_cndmask_b32_e64 v121, |v121|, v91, s[14:15]
	v_fma_f32 v104, v104, s80, v93
	v_frexp_mant_f32_e64 v123, |v97|
	v_cmp_gt_f32_e32 vcc, s42, v123
	v_cndmask_b32_e64 v125, 0, 1, vcc
	v_ldexp_f32 v123, v123, v125
	v_frexp_exp_i32_f32_e64 v125, |v97|
	v_subbrev_u32_e32 v125, vcc, 0, v125, vcc
	v_add_f32_e32 v133, -1.0, v123
	v_add_f32_e32 v134, 1.0, v123
	v_sub_f32_e32 v135, v134, v123
	v_sub_f32_e32 v136, v134, v135
	v_sub_f32_e32 v123, v123, v136
	v_sub_f32_e32 v135, 1.0, v135
	v_add_f32_e32 v123, v135, v123
	v_rcp_f32_e32 v135, v134
	v_mul_f32_e32 v136, v133, v135
	v_mul_f32_e32 v137, v134, v136
	v_fma_f32 v134, v136, v134, -v137
	v_fma_f32 v123, v136, v123, v134
	v_add_f32_e32 v134, v137, v123
	v_sub_f32_e32 v137, v134, v137
	v_sub_f32_e32 v123, v123, v137
	v_sub_f32_e32 v137, v133, v134
	v_sub_f32_e32 v133, v133, v137
	v_sub_f32_e32 v133, v133, v134
	v_sub_f32_e32 v123, v133, v123
	v_add_f32_e32 v123, v137, v123
	v_mul_f32_e32 v123, v135, v123
	v_add_f32_e32 v133, v136, v123
	v_sub_f32_e32 v134, v133, v136
	v_sub_f32_e32 v123, v123, v134
	v_mul_f32_e32 v134, v133, v133
	v_add_f32_e32 v135, v123, v123
	v_fma_f32 v136, v133, v133, -v134
	v_fma_f32 v135, v133, v135, v136
	v_fma_f32 v135, v123, v123, v135
	v_add_f32_e32 v136, v134, v135
	v_sub_f32_e32 v134, v136, v134
	v_sub_f32_e32 v134, v135, v134
	v_fma_f32 v126, v136, s8, v126
	v_fma_f32 v126, v136, v126, s93
	v_cvt_f32_i32_e32 v125, v125
	v_mul_f32_e32 v135, s45, v125
	v_fma_f32 v137, v125, s45, -v135
	v_fma_f32 v125, v125, s44, v137
	v_add_f32_e32 v137, v135, v125
	v_sub_f32_e32 v135, v137, v135
	v_sub_f32_e32 v125, v125, v135
	v_ldexp_f32 v135, v133, 1
	v_mul_f32_e32 v138, v133, v136
	v_fma_f32 v139, v136, v133, -v138
	v_mul_f32_e32 v133, v133, v134
	v_fma_f32 v133, v136, v123, v133
	v_add_f32_e32 v133, v139, v133
	v_add_f32_e32 v139, v138, v133
	v_mul_f32_e32 v140, v136, v126
	v_fma_f32 v136, v136, v126, -v140
	v_fma_f32 v126, v134, v126, v136
	v_add_f32_e32 v134, v140, v126
	v_sub_f32_e32 v136, v134, v140
	v_sub_f32_e32 v126, v126, v136
	v_add_f32_e32 v136, s28, v134
	v_add_f32_e32 v140, s41, v136
	v_sub_f32_e32 v134, v134, v140
	v_add_f32_e32 v126, s9, v126
	v_add_f32_e32 v126, v134, v126
	v_add_f32_e32 v134, v136, v126
	v_mul_f32_e32 v140, v139, v134
	v_fma_f32 v141, v139, v134, -v140
	v_sub_f32_e32 v136, v134, v136
	v_sub_f32_e32 v126, v126, v136
	v_sub_f32_e32 v136, v139, v138
	v_sub_f32_e32 v133, v133, v136
	v_mul_f32_e32 v133, v133, v134
	v_fma_f32 v126, v139, v126, v133
	v_add_f32_e32 v126, v141, v126
	v_ldexp_f32 v123, v123, 1
	v_add_f32_e32 v133, v140, v126
	v_sub_f32_e32 v134, v133, v140
	v_sub_f32_e32 v126, v126, v134
	v_add_f32_e32 v134, v135, v133
	v_sub_f32_e32 v135, v134, v135
	v_sub_f32_e32 v133, v133, v135
	v_add_f32_e32 v123, v123, v126
	v_add_f32_e32 v123, v133, v123
	v_add_f32_e32 v126, v134, v123
	v_sub_f32_e32 v133, v126, v134
	v_sub_f32_e32 v123, v123, v133
	v_add_f32_e32 v133, v137, v126
	v_sub_f32_e32 v134, v133, v137
	v_sub_f32_e32 v135, v133, v134
	v_sub_f32_e32 v135, v137, v135
	v_sub_f32_e32 v126, v126, v134
	v_add_f32_e32 v126, v126, v135
	v_add_f32_e32 v134, v125, v123
	v_sub_f32_e32 v135, v134, v125
	v_sub_f32_e32 v136, v134, v135
	v_sub_f32_e32 v125, v125, v136
	v_sub_f32_e32 v123, v123, v135
	v_add_f32_e32 v123, v123, v125
	v_add_f32_e32 v125, v134, v126
	v_add_f32_e32 v126, v133, v125
	v_sub_f32_e32 v133, v126, v133
	v_sub_f32_e32 v125, v125, v133
	v_add_f32_e32 v123, v123, v125
	v_add_f32_e32 v125, v126, v123
	v_sub_f32_e32 v126, v125, v126
	v_sub_f32_e32 v123, v123, v126
	v_add_f32_e32 v126, v125, v125
	v_fma_f32 v133, v125, 2.0, -v126
	v_mul_f32_e32 v125, 0, v125
	v_fma_f32 v123, v123, 2.0, v125
	v_add_f32_e32 v123, v133, v123
	v_add_f32_e32 v125, v126, v123
	v_sub_f32_e32 v133, v125, v126
	v_sub_f32_e32 v123, v123, v133
	v_cmp_class_f32_e64 vcc, v126, s92
	v_cndmask_b32_e32 v125, v125, v126, vcc
	v_cmp_neq_f32_e64 vcc, |v125|, s94
	v_cndmask_b32_e32 v123, 0, v123, vcc
	v_mul_f32_e32 v126, s26, v125
	v_rndne_f32_e32 v126, v126
	v_mul_f32_e32 v133, s31, v126
	v_sub_f32_e32 v134, v125, v133
	v_sub_f32_e32 v135, v134, v125
	v_sub_f32_e32 v136, v134, v135
	v_sub_f32_e32 v136, v125, v136
	v_add_f32_e32 v133, v133, v135
	v_sub_f32_e32 v133, v136, v133
	v_add_f32_e32 v123, v123, v133
	v_add_f32_e32 v133, v134, v123
	v_sub_f32_e32 v134, v133, v134
	v_sub_f32_e32 v123, v123, v134
	v_mul_f32_e32 v134, s30, v126
	v_sub_f32_e32 v135, v133, v134
	v_sub_f32_e32 v133, v133, v135
	v_sub_f32_e32 v133, v133, v134
	v_add_f32_e32 v123, v123, v133
	v_add_f32_e32 v133, v135, v123
	v_sub_f32_e32 v134, v133, v135
	v_sub_f32_e32 v123, v123, v134
	v_mul_f32_e32 v134, s29, v126
	v_sub_f32_e32 v135, v133, v134
	v_sub_f32_e32 v133, v133, v135
	v_sub_f32_e32 v133, v133, v134
	v_add_f32_e32 v123, v123, v133
	v_add_f32_e32 v133, v135, v123
	v_sub_f32_e32 v134, v133, v135
	v_sub_f32_e32 v123, v123, v134
	v_fma_f32 v132, v133, s27, v132
	v_fma_f32 v132, v133, v132, s40
	v_fma_f32 v132, v133, v132, s35
	v_fma_f32 v132, v133, v132, s91
	v_mul_f32_e32 v134, v133, v133
	v_fma_f32 v135, v133, v133, -v134
	v_add_f32_e32 v136, v123, v123
	v_fma_f32 v135, v133, v136, v135
	v_fma_f32 v135, v123, v123, v135
	v_add_f32_e32 v136, v134, v135
	v_mul_f32_e32 v137, v132, v136
	v_sub_f32_e32 v134, v136, v134
	v_sub_f32_e32 v134, v135, v134
	v_fma_f32 v135, v136, v132, -v137
	v_fma_f32 v132, v134, v132, v135
	v_add_f32_e32 v134, v137, v132
	v_sub_f32_e32 v135, v134, v137
	v_sub_f32_e32 v132, v132, v135
	v_add_f32_e32 v135, v133, v134
	v_sub_f32_e32 v133, v135, v133
	v_sub_f32_e32 v133, v134, v133
	v_add_f32_e32 v123, v123, v132
	v_add_f32_e32 v123, v133, v123
	v_add_f32_e32 v123, v135, v123
	v_add_f32_e32 v123, 1.0, v123
	v_cvt_i32_f32_e32 v126, v126
	v_ldexp_f32 v123, v123, v126
	v_cmp_nlt_f32_e32 vcc, s34, v125
	v_cndmask_b32_e32 v123, v124, v123, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v125
	v_cmp_neq_f32_e64 s[12:13], 0, v97
	v_cmp_u_f32_e64 s[14:15], v97, v97
	v_cmp_class_f32_e64 s[16:17], v97, s92
	s_and_b64 vcc, s[12:13], vcc
	v_cndmask_b32_e32 v123, 0, v123, vcc
	v_cndmask_b32_e64 v123, v123, v124, s[16:17]
	v_cndmask_b32_e64 v97, |v123|, v97, s[14:15]
	v_readlane_b32 s8, v173, 45
	v_readlane_b32 s9, v173, 46
	s_mov_b32 s8, s86
	v_div_scale_f64 v[123:124], s[12:13], s[8:9], s[8:9], v[95:96]
	v_rcp_f64_e32 v[125:126], v[123:124]
	v_fma_f64 v[132:133], -v[123:124], v[125:126], 1.0
	v_fma_f64 v[125:126], v[125:126], v[132:133], v[125:126]
	v_fma_f64 v[132:133], -v[123:124], v[125:126], 1.0
	v_fma_f64 v[125:126], v[125:126], v[132:133], v[125:126]
	v_div_scale_f64 v[132:133], vcc, v[95:96], s[8:9], v[95:96]
	v_mul_f64 v[134:135], v[132:133], v[125:126]
	v_fma_f64 v[123:124], -v[123:124], v[134:135], v[132:133]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[123:124], v[123:124], v[125:126], v[134:135]
	v_writelane_b32 v173, s8, 45
	v_writelane_b32 v173, s9, 46
	v_div_fixup_f64 v[123:124], v[123:124], s[8:9], v[95:96]
	v_readlane_b32 s12, v171, 46
	v_readlane_b32 s13, v171, 47
	v_add_f64 v[123:124], v[123:124], s[12:13]
	v_mul_f64 v[125:126], v[123:124], s[54:55]
	v_rndne_f64_e32 v[125:126], v[125:126]
	v_fma_f64 v[132:133], v[125:126], s[56:57], v[123:124]
	v_mul_f64 v[134:135], v[125:126], s[58:59]
	v_add_f64 v[136:137], v[132:133], v[134:135]
	v_add_f64 v[132:133], v[132:133], -v[136:137]
	v_add_f64 v[132:133], v[132:133], v[134:135]
	v_fma_f64 v[134:135], v[136:137], s[62:63], v[108:109]
	v_fma_f64 v[134:135], v[136:137], v[134:135], s[64:65]
	v_fma_f64 v[134:135], v[136:137], v[134:135], s[66:67]
	v_fma_f64 v[134:135], v[136:137], v[134:135], s[68:69]
	v_fma_f64 v[134:135], v[136:137], v[134:135], s[70:71]
	v_fma_f64 v[134:135], v[136:137], v[134:135], s[72:73]
	v_fma_f64 v[134:135], v[136:137], v[134:135], s[74:75]
	v_fma_f64 v[134:135], v[136:137], v[134:135], s[76:77]
	v_fma_f64 v[134:135], v[136:137], v[134:135], s[52:53]
	v_mul_f64 v[138:139], v[136:137], v[136:137]
	v_fma_f64 v[140:141], v[136:137], v[136:137], -v[138:139]
	v_add_f64 v[142:143], v[132:133], v[132:133]
	v_fma_f64 v[140:141], v[136:137], v[142:143], v[140:141]
	v_fma_f64 v[140:141], v[132:133], v[132:133], v[140:141]
	v_add_f64 v[142:143], v[138:139], v[140:141]
	v_add_f64 v[138:139], v[142:143], -v[138:139]
	v_add_f64 v[138:139], v[140:141], -v[138:139]
	v_mul_f64 v[140:141], v[142:143], v[134:135]
	v_fma_f64 v[142:143], v[142:143], v[134:135], -v[140:141]
	v_fma_f64 v[134:135], v[138:139], v[134:135], v[142:143]
	v_add_f64 v[138:139], v[140:141], v[134:135]
	v_add_f64 v[140:141], v[138:139], -v[140:141]
	v_add_f64 v[134:135], v[134:135], -v[140:141]
	v_add_f64 v[140:141], v[136:137], v[138:139]
	v_add_f64 v[136:137], v[140:141], -v[136:137]
	v_add_f64 v[136:137], v[138:139], -v[136:137]
	v_add_f64 v[132:133], v[132:133], v[134:135]
	v_add_f64 v[132:133], v[136:137], v[132:133]
	v_add_f64 v[132:133], v[140:141], v[132:133]
	v_add_f64 v[132:133], v[132:133], 1.0
	v_cvt_i32_f64_e32 v125, v[125:126]
	v_ldexp_f64 v[125:126], v[132:133], v125
	v_add_f64 v[125:126], v[125:126], 1.0
	v_div_scale_f64 v[132:133], s[12:13], v[125:126], v[125:126], 1.0
	v_rcp_f64_e32 v[134:135], v[132:133]
	v_fma_f64 v[136:137], -v[132:133], v[134:135], 1.0
	v_fma_f64 v[134:135], v[134:135], v[136:137], v[134:135]
	v_fma_f64 v[136:137], -v[132:133], v[134:135], 1.0
	v_fma_f64 v[134:135], v[134:135], v[136:137], v[134:135]
	v_div_scale_f64 v[136:137], vcc, 1.0, v[125:126], 1.0
	v_mul_f64 v[138:139], v[136:137], v[134:135]
	v_fma_f64 v[132:133], -v[132:133], v[138:139], v[136:137]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[132:133], v[132:133], v[134:135], v[138:139]
	v_div_fixup_f64 v[125:126], v[132:133], v[125:126], 1.0
	v_cmp_nlt_f64_e32 vcc, s[18:19], v[123:124]
	v_cndmask_b32_e32 v126, 0, v126, vcc
	v_cmp_ngt_f64_e64 s[12:13], s[20:21], v[123:124]
	s_and_b64 vcc, s[12:13], vcc
	v_cndmask_b32_e32 v123, 0, v125, vcc
	v_mov_b32_e32 v124, s89
	v_cndmask_b32_e64 v124, v124, v126, s[12:13]
	v_cvt_f32_f64_e32 v123, v[123:124]
	v_cvt_f64_f32_e32 v[124:125], v79
	v_readlane_b32 s8, v173, 47
	v_readlane_b32 s9, v173, 48
	s_mov_b32 s8, s86
	v_writelane_b32 v173, s8, 47
	v_writelane_b32 v173, s9, 48
	v_add_f64 v[132:133], v[124:125], s[8:9]
	s_mov_b64 s[84:85], s[46:47]
	v_mul_f64 v[132:133], v[132:133], s[46:47]
	v_mul_f64 v[134:135], v[132:133], s[54:55]
	v_rndne_f64_e32 v[134:135], v[134:135]
	v_fma_f64 v[136:137], v[134:135], s[56:57], v[132:133]
	v_mul_f64 v[138:139], v[134:135], s[58:59]
	v_add_f64 v[140:141], v[136:137], v[138:139]
	v_add_f64 v[136:137], v[136:137], -v[140:141]
	v_add_f64 v[136:137], v[136:137], v[138:139]
	v_fma_f64 v[138:139], v[140:141], s[62:63], v[108:109]
	v_fma_f64 v[138:139], v[140:141], v[138:139], s[64:65]
	v_fma_f64 v[138:139], v[140:141], v[138:139], s[66:67]
	v_fma_f64 v[138:139], v[140:141], v[138:139], s[68:69]
	v_fma_f64 v[138:139], v[140:141], v[138:139], s[70:71]
	v_fma_f64 v[138:139], v[140:141], v[138:139], s[72:73]
	v_fma_f64 v[138:139], v[140:141], v[138:139], s[74:75]
	v_fma_f64 v[138:139], v[140:141], v[138:139], s[76:77]
	v_fma_f64 v[138:139], v[140:141], v[138:139], s[52:53]
	v_mul_f64 v[142:143], v[140:141], v[140:141]
	v_fma_f64 v[144:145], v[140:141], v[140:141], -v[142:143]
	v_add_f64 v[146:147], v[136:137], v[136:137]
	v_fma_f64 v[144:145], v[140:141], v[146:147], v[144:145]
	v_fma_f64 v[144:145], v[136:137], v[136:137], v[144:145]
	v_add_f64 v[146:147], v[142:143], v[144:145]
	v_add_f64 v[142:143], v[146:147], -v[142:143]
	v_add_f64 v[142:143], v[144:145], -v[142:143]
	v_mul_f64 v[144:145], v[146:147], v[138:139]
	v_fma_f64 v[146:147], v[146:147], v[138:139], -v[144:145]
	v_fma_f64 v[138:139], v[142:143], v[138:139], v[146:147]
	v_add_f64 v[142:143], v[144:145], v[138:139]
	v_add_f64 v[144:145], v[142:143], -v[144:145]
	v_add_f64 v[138:139], v[138:139], -v[144:145]
	v_add_f64 v[144:145], v[140:141], v[142:143]
	v_add_f64 v[140:141], v[144:145], -v[140:141]
	v_add_f64 v[140:141], v[142:143], -v[140:141]
	v_add_f64 v[136:137], v[136:137], v[138:139]
	v_add_f64 v[136:137], v[140:141], v[136:137]
	v_add_f64 v[136:137], v[144:145], v[136:137]
	v_add_f64 v[136:137], v[136:137], 1.0
	v_cvt_i32_f64_e32 v126, v[134:135]
	v_ldexp_f64 v[134:135], v[136:137], v126
	v_add_f64 v[134:135], v[134:135], 1.0
	s_mov_b64 s[80:81], s[100:101]
	v_div_scale_f64 v[136:137], s[12:13], v[134:135], v[134:135], s[80:81]
	v_rcp_f64_e32 v[138:139], v[136:137]
	v_fma_f64 v[140:141], -v[136:137], v[138:139], 1.0
	v_fma_f64 v[138:139], v[138:139], v[140:141], v[138:139]
	v_fma_f64 v[140:141], -v[136:137], v[138:139], 1.0
	v_fma_f64 v[138:139], v[138:139], v[140:141], v[138:139]
	v_div_scale_f64 v[140:141], vcc, s[80:81], v[134:135], s[80:81]
	v_mul_f64 v[142:143], v[140:141], v[138:139]
	v_fma_f64 v[136:137], -v[136:137], v[142:143], v[140:141]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[136:137], v[136:137], v[138:139], v[142:143]
	v_div_fixup_f64 v[134:135], v[136:137], v[134:135], s[80:81]
	v_cmp_nlt_f64_e32 vcc, s[18:19], v[132:133]
	v_cndmask_b32_e32 v126, 0, v134, vcc
	v_cndmask_b32_e32 v134, 0, v135, vcc
	v_cmp_ngt_f64_e32 vcc, s[20:21], v[132:133]
	v_mov_b32_e32 v132, s81
	v_cndmask_b32_e32 v133, v132, v134, vcc
	v_mov_b32_e32 v132, s80
	v_cndmask_b32_e32 v132, v132, v126, vcc
	v_cvt_f32_f64_e32 v126, v[132:133]
	v_readlane_b32 s12, v171, 48
	v_readlane_b32 s13, v171, 49
	v_add_f64 v[95:96], v[95:96], s[12:13]
	v_cvt_f64_f32_e32 v[132:133], v122
	v_add_f64 v[95:96], v[95:96], v[132:133]
	v_readlane_b32 s12, v171, 50
	v_readlane_b32 s13, v171, 51
	v_mul_f64 v[95:96], v[95:96], s[12:13]
	v_mul_f64 v[132:133], v[95:96], s[54:55]
	v_rndne_f64_e32 v[132:133], v[132:133]
	v_fma_f64 v[134:135], v[132:133], s[56:57], v[95:96]
	v_mul_f64 v[136:137], v[132:133], s[58:59]
	v_add_f64 v[138:139], v[134:135], v[136:137]
	v_add_f64 v[134:135], v[134:135], -v[138:139]
	v_add_f64 v[134:135], v[134:135], v[136:137]
	v_fma_f64 v[136:137], v[138:139], s[62:63], v[108:109]
	v_fma_f64 v[136:137], v[138:139], v[136:137], s[64:65]
	v_fma_f64 v[136:137], v[138:139], v[136:137], s[66:67]
	v_fma_f64 v[136:137], v[138:139], v[136:137], s[68:69]
	v_fma_f64 v[136:137], v[138:139], v[136:137], s[70:71]
	v_fma_f64 v[136:137], v[138:139], v[136:137], s[72:73]
	v_fma_f64 v[136:137], v[138:139], v[136:137], s[74:75]
	v_fma_f64 v[136:137], v[138:139], v[136:137], s[76:77]
	v_fma_f64 v[136:137], v[138:139], v[136:137], s[52:53]
	v_mul_f64 v[140:141], v[138:139], v[138:139]
	v_fma_f64 v[142:143], v[138:139], v[138:139], -v[140:141]
	v_add_f64 v[144:145], v[134:135], v[134:135]
	v_fma_f64 v[142:143], v[138:139], v[144:145], v[142:143]
	v_fma_f64 v[142:143], v[134:135], v[134:135], v[142:143]
	v_add_f64 v[144:145], v[140:141], v[142:143]
	v_add_f64 v[140:141], v[144:145], -v[140:141]
	v_add_f64 v[140:141], v[142:143], -v[140:141]
	v_mul_f64 v[142:143], v[144:145], v[136:137]
	v_fma_f64 v[144:145], v[144:145], v[136:137], -v[142:143]
	v_fma_f64 v[136:137], v[140:141], v[136:137], v[144:145]
	v_add_f64 v[140:141], v[142:143], v[136:137]
	v_add_f64 v[142:143], v[140:141], -v[142:143]
	v_add_f64 v[136:137], v[136:137], -v[142:143]
	v_add_f64 v[142:143], v[138:139], v[140:141]
	v_add_f64 v[138:139], v[142:143], -v[138:139]
	v_add_f64 v[138:139], v[140:141], -v[138:139]
	v_add_f64 v[134:135], v[134:135], v[136:137]
	v_add_f64 v[134:135], v[138:139], v[134:135]
	v_add_f64 v[134:135], v[142:143], v[134:135]
	v_add_f64 v[134:135], v[134:135], 1.0
	v_cvt_i32_f64_e32 v122, v[132:133]
	v_ldexp_f64 v[132:133], v[134:135], v122
	v_cmp_lt_f64_e64 s[14:15], s[18:19], v[95:96]
	v_cmp_gt_f64_e64 s[12:13], s[20:21], v[95:96]
	s_mov_b64 s[46:47], s[86:87]
	v_readlane_b32 s86, v174, 22
	v_readlane_b32 s87, v174, 23
	v_readlane_b32 s8, v173, 49
	v_readlane_b32 s9, v173, 50
	s_mov_b32 s8, s86
	v_writelane_b32 v173, s8, 49
	v_writelane_b32 v173, s9, 50
	v_add_f64 v[95:96], v[124:125], s[8:9]
	v_readlane_b32 s16, v171, 52
	v_readlane_b32 s17, v171, 53
	v_mul_f64 v[95:96], v[95:96], s[16:17]
	v_mul_f64 v[134:135], v[95:96], s[54:55]
	v_rndne_f64_e32 v[134:135], v[134:135]
	v_fma_f64 v[136:137], v[134:135], s[56:57], v[95:96]
	v_mul_f64 v[138:139], v[134:135], s[58:59]
	v_add_f64 v[140:141], v[136:137], v[138:139]
	v_add_f64 v[136:137], v[136:137], -v[140:141]
	v_add_f64 v[136:137], v[136:137], v[138:139]
	v_fma_f64 v[138:139], v[140:141], s[62:63], v[108:109]
	v_fma_f64 v[138:139], v[140:141], v[138:139], s[64:65]
	v_fma_f64 v[138:139], v[140:141], v[138:139], s[66:67]
	v_fma_f64 v[138:139], v[140:141], v[138:139], s[68:69]
	v_fma_f64 v[138:139], v[140:141], v[138:139], s[70:71]
	v_fma_f64 v[138:139], v[140:141], v[138:139], s[72:73]
	v_fma_f64 v[138:139], v[140:141], v[138:139], s[74:75]
	v_fma_f64 v[138:139], v[140:141], v[138:139], s[76:77]
	v_fma_f64 v[138:139], v[140:141], v[138:139], s[52:53]
	v_mul_f64 v[142:143], v[140:141], v[140:141]
	v_fma_f64 v[144:145], v[140:141], v[140:141], -v[142:143]
	v_add_f64 v[146:147], v[136:137], v[136:137]
	v_fma_f64 v[144:145], v[140:141], v[146:147], v[144:145]
	v_fma_f64 v[144:145], v[136:137], v[136:137], v[144:145]
	v_add_f64 v[146:147], v[142:143], v[144:145]
	v_add_f64 v[142:143], v[146:147], -v[142:143]
	v_add_f64 v[142:143], v[144:145], -v[142:143]
	v_mul_f64 v[144:145], v[146:147], v[138:139]
	v_fma_f64 v[146:147], v[146:147], v[138:139], -v[144:145]
	v_fma_f64 v[138:139], v[142:143], v[138:139], v[146:147]
	v_add_f64 v[142:143], v[144:145], v[138:139]
	v_add_f64 v[144:145], v[142:143], -v[144:145]
	v_add_f64 v[138:139], v[138:139], -v[144:145]
	v_add_f64 v[144:145], v[140:141], v[142:143]
	v_add_f64 v[140:141], v[144:145], -v[140:141]
	v_add_f64 v[140:141], v[142:143], -v[140:141]
	v_add_f64 v[136:137], v[136:137], v[138:139]
	v_add_f64 v[136:137], v[140:141], v[136:137]
	v_add_f64 v[136:137], v[144:145], v[136:137]
	v_add_f64 v[136:137], v[136:137], 1.0
	v_cvt_i32_f64_e32 v122, v[134:135]
	v_ldexp_f64 v[134:135], v[136:137], v122
	v_cmp_nlt_f64_e32 vcc, s[18:19], v[95:96]
	v_readlane_b32 s8, v172, 43
	v_readlane_b32 s9, v172, 44
	v_mov_b32_e32 v122, s9
	v_cndmask_b32_e32 v122, v122, v135, vcc
	v_cmp_ngt_f64_e64 s[16:17], s[20:21], v[95:96]
	s_and_b64 vcc, s[16:17], vcc
	v_cndmask_b32_e32 v134, 0, v134, vcc
	v_cndmask_b32_e64 v135, 0, v122, s[16:17]
	v_readlane_b32 s16, v171, 54
	v_readlane_b32 s17, v171, 55
	v_add_f64 v[95:96], v[124:125], s[16:17]
	v_readlane_b32 s16, v171, 56
	v_readlane_b32 s17, v171, 57
	v_mul_f64 v[95:96], v[95:96], s[16:17]
	v_mul_f64 v[136:137], v[95:96], s[54:55]
	v_rndne_f64_e32 v[136:137], v[136:137]
	v_fma_f64 v[138:139], v[136:137], s[56:57], v[95:96]
	v_mul_f64 v[140:141], v[136:137], s[58:59]
	v_add_f64 v[142:143], v[138:139], v[140:141]
	v_add_f64 v[138:139], v[138:139], -v[142:143]
	v_add_f64 v[138:139], v[138:139], v[140:141]
	v_fma_f64 v[108:109], v[142:143], s[62:63], v[108:109]
	v_fma_f64 v[108:109], v[142:143], v[108:109], s[64:65]
	v_fma_f64 v[108:109], v[142:143], v[108:109], s[66:67]
	v_fma_f64 v[108:109], v[142:143], v[108:109], s[68:69]
	v_fma_f64 v[108:109], v[142:143], v[108:109], s[70:71]
	v_fma_f64 v[108:109], v[142:143], v[108:109], s[72:73]
	v_fma_f64 v[108:109], v[142:143], v[108:109], s[74:75]
	v_fma_f64 v[108:109], v[142:143], v[108:109], s[76:77]
	v_fma_f64 v[108:109], v[142:143], v[108:109], s[52:53]
	v_mul_f64 v[140:141], v[142:143], v[142:143]
	v_fma_f64 v[144:145], v[142:143], v[142:143], -v[140:141]
	v_add_f64 v[146:147], v[138:139], v[138:139]
	v_fma_f64 v[144:145], v[142:143], v[146:147], v[144:145]
	v_fma_f64 v[144:145], v[138:139], v[138:139], v[144:145]
	v_add_f64 v[146:147], v[140:141], v[144:145]
	v_add_f64 v[140:141], v[146:147], -v[140:141]
	v_add_f64 v[140:141], v[144:145], -v[140:141]
	v_mul_f64 v[144:145], v[146:147], v[108:109]
	v_fma_f64 v[146:147], v[146:147], v[108:109], -v[144:145]
	v_fma_f64 v[108:109], v[140:141], v[108:109], v[146:147]
	v_add_f64 v[140:141], v[144:145], v[108:109]
	v_add_f64 v[144:145], v[140:141], -v[144:145]
	v_add_f64 v[108:109], v[108:109], -v[144:145]
	v_add_f64 v[144:145], v[142:143], v[140:141]
	v_add_f64 v[142:143], v[144:145], -v[142:143]
	v_add_f64 v[140:141], v[140:141], -v[142:143]
	v_add_f64 v[108:109], v[138:139], v[108:109]
	v_add_f64 v[108:109], v[140:141], v[108:109]
	v_add_f64 v[108:109], v[144:145], v[108:109]
	v_add_f64 v[108:109], v[108:109], 1.0
	v_cvt_i32_f64_e32 v122, v[136:137]
	v_ldexp_f64 v[136:137], v[108:109], v122
	v_cmp_lt_f64_e64 s[18:19], s[18:19], v[95:96]
	v_cmp_gt_f64_e64 s[16:17], s[20:21], v[95:96]
	v_add_f32_e32 v93, 0x4276079d, v93
	s_movk_i32 s20, 0x8c
	v_add_u32_e32 v108, vcc, s20, v74
	v_addc_u32_e32 v109, vcc, 0, v75, vcc
	s_movk_i32 s20, 0x94
	v_add_u32_e32 v95, vcc, s20, v74
	v_addc_u32_e32 v96, vcc, 0, v75, vcc
	s_mov_b64 s[50:51], s[78:79]
	s_mov_b64 s[78:79], s[88:89]
	v_cmp_neq_f32_e32 vcc, 0, v92
	v_cmp_o_f32_e64 s[20:21], v92, v92
	s_movk_i32 s81, 0x1f8
	v_cmp_class_f32_e64 s[88:89], v105, s81
	s_and_b64 s[20:21], s[20:21], s[88:89]
	s_and_b64 vcc, s[20:21], vcc
	s_mov_b32 s20, 0x7fc00000
	v_mov_b32_e32 v92, s20
	v_cndmask_b32_e32 v92, v92, v100, vcc
	s_mov_b32 s20, 0x40a00000
	v_cmp_nge_f32_e32 vcc, s20, v92
	v_mov_b32_e32 v100, 0x41180000
	v_mov_b32_e32 v92, 0
	v_cndmask_b32_e64 v100, v100, 0, vcc
	v_mul_f32_e32 v89, 0x3ca3d70a, v89
	v_mul_f32_e32 v105, v89, v90
	v_cvt_f64_f32_e32 v[89:90], v94
	v_cvt_f64_f32_e32 v[138:139], v88
	v_fma_f64 v[88:89], v[89:90], 0.5, v[138:139]
	s_mov_b32 s20, 0x3d75c28f
	v_mul_f32_e32 v83, s20, v83
	v_cvt_f64_f32_e32 v[138:139], v83
	v_mul_f64 v[88:89], v[88:89], v[138:139]
	v_mul_f64 v[88:89], v[88:89], v[124:125]
	v_cvt_f32_f64_e32 v83, v[88:89]
	v_fma_f32 v83, v105, v79, v83
	v_mul_f32_e32 v94, v91, v10
	v_add_f64 v[88:89], v[115:116], 1.0
	v_div_scale_f64 v[90:91], s[20:21], v[88:89], v[88:89], 1.0
	v_rcp_f64_e32 v[115:116], v[90:91]
	v_fma_f64 v[138:139], -v[90:91], v[115:116], 1.0
	v_fma_f64 v[115:116], v[115:116], v[138:139], v[115:116]
	v_fma_f64 v[138:139], -v[90:91], v[115:116], 1.0
	v_fma_f64 v[115:116], v[115:116], v[138:139], v[115:116]
	v_div_scale_f64 v[138:139], vcc, 1.0, v[88:89], 1.0
	v_mul_f64 v[140:141], v[138:139], v[115:116]
	v_fma_f64 v[90:91], -v[90:91], v[140:141], v[138:139]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[90:91], v[90:91], v[115:116], v[140:141]
	v_div_fixup_f64 v[88:89], v[90:91], v[88:89], 1.0
	v_cndmask_b32_e64 v89, v89, 0, s[0:1]
	s_or_b64 s[0:1], s[2:3], s[0:1]
	v_cndmask_b32_e64 v88, v88, 0, s[0:1]
	v_mov_b32_e32 v105, s79
	v_cndmask_b32_e64 v89, v89, v105, s[2:3]
	v_cvt_f32_f64_e32 v88, v[88:89]
	v_mul_f32_e32 v88, v94, v88
	v_fma_f32 v83, v79, v88, v83
	v_add_f64 v[88:89], v[117:118], 1.0
	v_readlane_b32 s88, v173, 51
	v_readlane_b32 s89, v173, 52
	s_mov_b32 s88, s80
	v_div_scale_f64 v[90:91], s[0:1], v[88:89], v[88:89], s[88:89]
	v_rcp_f64_e32 v[115:116], v[90:91]
	v_fma_f64 v[117:118], -v[90:91], v[115:116], 1.0
	v_fma_f64 v[115:116], v[115:116], v[117:118], v[115:116]
	v_fma_f64 v[117:118], -v[90:91], v[115:116], 1.0
	v_fma_f64 v[115:116], v[115:116], v[117:118], v[115:116]
	v_div_scale_f64 v[117:118], vcc, s[88:89], v[88:89], s[88:89]
	v_mul_f64 v[138:139], v[117:118], v[115:116]
	v_fma_f64 v[90:91], -v[90:91], v[138:139], v[117:118]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[90:91], v[90:91], v[115:116], v[138:139]
	v_div_fixup_f64 v[88:89], v[90:91], v[88:89], s[88:89]
	v_readlane_b32 s2, v171, 58
	v_readlane_b32 s3, v171, 59
	v_add_f64 v[88:89], v[88:89], s[2:3]
	s_mov_b64 s[20:21], s[46:47]
	v_readlane_b32 s80, v173, 53
	v_readlane_b32 s81, v173, 54
	s_mov_b32 s80, s46
	v_mul_f64 v[88:89], v[88:89], s[80:81]
	v_mov_b32_e32 v94, 0x782d3848
	v_cndmask_b32_e64 v88, v88, v94, s[6:7]
	v_mov_b32_e32 v122, 0x3f7057d1
	v_cndmask_b32_e64 v89, v89, v122, s[6:7]
	v_mov_b32_e32 v138, 0x3f91b478
	v_cndmask_b32_e64 v89, v89, v138, s[4:5]
	v_mov_b32_e32 v139, 0x4230fcf8
	v_cndmask_b32_e64 v88, v88, v139, s[4:5]
	v_cvt_f32_f64_e32 v88, v[88:89]
	v_mul_f32_e32 v88, 0x3de147ae, v88
	v_mul_f32_e32 v121, v88, v121
	v_add_f64 v[88:89], v[119:120], 1.0
	v_div_scale_f64 v[90:91], s[0:1], v[88:89], v[88:89], s[88:89]
	v_rcp_f64_e32 v[115:116], v[90:91]
	v_fma_f64 v[117:118], -v[90:91], v[115:116], 1.0
	v_fma_f64 v[115:116], v[115:116], v[117:118], v[115:116]
	v_fma_f64 v[117:118], -v[90:91], v[115:116], 1.0
	v_fma_f64 v[115:116], v[115:116], v[117:118], v[115:116]
	v_div_scale_f64 v[117:118], vcc, s[88:89], v[88:89], s[88:89]
	v_mul_f64 v[119:120], v[117:118], v[115:116]
	v_fma_f64 v[90:91], -v[90:91], v[119:120], v[117:118]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[90:91], v[90:91], v[115:116], v[119:120]
	v_writelane_b32 v173, s88, 51
	v_writelane_b32 v173, s89, 52
	v_div_fixup_f64 v[88:89], v[90:91], v[88:89], s[88:89]
	v_add_f64 v[88:89], v[88:89], s[2:3]
	v_writelane_b32 v173, s80, 53
	v_writelane_b32 v173, s81, 54
	v_mul_f64 v[88:89], v[88:89], s[80:81]
	v_cndmask_b32_e64 v88, v88, v94, s[10:11]
	v_cndmask_b32_e64 v89, v89, v122, s[10:11]
	v_cndmask_b32_e64 v89, v89, v138, s[48:49]
	v_cndmask_b32_e64 v88, v88, v139, s[48:49]
	v_cvt_f32_f64_e32 v88, v[88:89]
	v_mul_f32_e32 v88, 0x3f63d70a, v88
	v_mul_f32_e32 v88, v88, v97
	v_mul_f32_e32 v88, v104, v88
	v_fma_f32 v88, v104, v121, v88
	v_add_f32_e32 v83, v83, v88
	v_readlane_b32 s0, v171, 60
	v_readlane_b32 s1, v171, 61
	v_mul_f64 v[88:89], v[132:133], s[0:1]
	v_mov_b32_e32 v94, s9
	v_cndmask_b32_e64 v89, v89, v94, s[14:15]
	s_or_b64 s[0:1], s[12:13], s[14:15]
	v_cndmask_b32_e64 v88, v88, 0, s[0:1]
	v_cndmask_b32_e64 v89, v89, 0, s[12:13]
	v_add_f64 v[88:89], v[88:89], v[134:135]
	v_add_f64 v[90:91], v[136:137], 1.0
	v_cndmask_b32_e64 v91, v91, v94, s[18:19]
	s_or_b64 s[0:1], s[16:17], s[18:19]
	v_cndmask_b32_e64 v90, v90, 0, s[0:1]
	v_cndmask_b32_e64 v91, v91, v105, s[16:17]
	v_div_scale_f64 v[104:105], s[0:1], v[90:91], v[90:91], v[88:89]
	v_rcp_f64_e32 v[115:116], v[104:105]
	v_fma_f64 v[117:118], -v[104:105], v[115:116], 1.0
	v_fma_f64 v[115:116], v[115:116], v[117:118], v[115:116]
	v_fma_f64 v[117:118], -v[104:105], v[115:116], 1.0
	v_fma_f64 v[115:116], v[115:116], v[117:118], v[115:116]
	v_div_scale_f64 v[117:118], vcc, v[88:89], v[90:91], v[88:89]
	v_mul_f64 v[119:120], v[117:118], v[115:116]
	v_fma_f64 v[104:105], -v[104:105], v[119:120], v[117:118]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[104:105], v[104:105], v[115:116], v[119:120]
	v_div_fixup_f64 v[88:89], v[104:105], v[90:91], v[88:89]
	v_cvt_f32_f64_e32 v88, v[88:89]
	v_add_f32_e32 v88, v126, v88
	v_div_scale_f32 v89, s[0:1], v88, v88, v126
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v91, -v89, v90, 1.0
	v_fma_f32 v90, v91, v90, v90
	v_div_scale_f32 v91, vcc, v126, v88, v126
	v_mul_f32_e32 v94, v91, v90
	v_fma_f32 v97, -v89, v94, v91
	v_fma_f32 v94, v97, v90, v94
	v_fma_f32 v89, -v89, v94, v91
	v_div_fmas_f32 v89, v89, v90, v94
	v_div_fixup_f32 v88, v89, v88, v126
	v_cvt_f64_f32_e32 v[88:89], v88
	v_mul_f64 v[88:89], v[35:36], v[88:89]
	v_mul_f64 v[88:89], v[88:89], v[124:125]
	v_cvt_f32_f64_e32 v88, v[88:89]
	v_add_f32_e32 v83, v83, v88
	v_add_f32_e32 v84, v84, v85
	v_fma_f32 v94, v84, -2.0, v83
	v_cvt_f64_f32_e32 v[83:84], v76
	s_mov_b32 s0, s25
	v_readlane_b32 s2, v173, 37
	v_readlane_b32 s3, v173, 38
	s_mov_b32 s1, s3
	v_mul_f64 v[83:84], v[83:84], s[0:1]
	v_readlane_b32 s0, v171, 62
	v_readlane_b32 s1, v171, 63
	v_fma_f64 v[83:84], v[83:84], v[130:131], s[0:1]
	v_mul_f32_e32 v76, 0x3490f484, v82
	v_cvt_f64_f32_e32 v[88:89], v76
	v_mul_f64 v[82:83], v[83:84], v[88:89]
	v_div_scale_f64 v[84:85], s[0:1], v[128:129], v[128:129], v[82:83]
	v_rcp_f64_e32 v[88:89], v[84:85]
	v_fma_f64 v[90:91], -v[84:85], v[88:89], 1.0
	v_fma_f64 v[88:89], v[88:89], v[90:91], v[88:89]
	v_fma_f64 v[90:91], -v[84:85], v[88:89], 1.0
	v_fma_f64 v[88:89], v[88:89], v[90:91], v[88:89]
	v_div_scale_f64 v[90:91], vcc, v[82:83], v[128:129], v[82:83]
	v_mul_f64 v[104:105], v[90:91], v[88:89]
	v_fma_f64 v[84:85], -v[84:85], v[104:105], v[90:91]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[84:85], v[84:85], v[88:89], v[104:105]
	v_div_fixup_f64 v[82:83], v[84:85], v[128:129], v[82:83]
	v_cvt_f32_f64_e32 v76, v[82:83]
	v_mul_f32_e32 v76, v87, v76
	v_mul_f32_e32 v76, v80, v76
	s_mov_b32 s0, 0x3dccccd0
	v_mul_f32_e32 v80, s0, v81
	s_mov_b32 s0, 0x3f666666
	v_fma_f32 v80, v127, s0, v80
	v_mul_f32_e32 v76, v80, v76
	v_cvt_f64_f32_e32 v[80:81], v76
	s_mov_b32 s0, s22
	v_readlane_b32 s2, v173, 41
	v_readlane_b32 s3, v173, 42
	s_mov_b32 s1, s3
	v_mul_f64 v[80:81], v[80:81], s[0:1]
	v_cvt_f32_f64_e32 v76, v[80:81]
	v_add_f32_e32 v76, v94, v76
	v_mul_f32_e32 v80, 0x38e6afce, v123
	v_mul_f32_e32 v81, 0x3a694ee4, v123
	v_mul_f32_e32 v81, v79, v81
	v_fma_f32 v79, v79, v80, v81
	v_add_f32_e32 v76, v79, v76
	s_mov_b32 s2, 0x3dcccccd
	v_div_scale_f32 v79, s[0:1], v77, v77, s2
	v_rcp_f32_e32 v80, v79
	v_fma_f32 v81, -v79, v80, 1.0
	v_fma_f32 v80, v81, v80, v80
	v_div_scale_f32 v81, vcc, s2, v77, s2
	v_mul_f32_e32 v82, v81, v80
	v_fma_f32 v83, -v79, v82, v81
	v_fma_f32 v82, v83, v80, v82
	v_fma_f32 v79, -v79, v82, v81
	v_div_fmas_f32 v79, v79, v80, v82
	v_div_fixup_f32 v77, v79, v77, s2
	v_add_f32_e32 v77, 1.0, v77
	s_mov_b32 s3, 0x3c459210
	v_div_scale_f32 v79, s[0:1], v77, v77, s3
	v_rcp_f32_e32 v80, v79
	v_fma_f32 v81, -v79, v80, 1.0
	v_fma_f32 v80, v81, v80, v80
	v_div_scale_f32 v81, vcc, s3, v77, s3
	v_mul_f32_e32 v82, v81, v80
	v_fma_f32 v83, -v79, v82, v81
	v_fma_f32 v82, v83, v80, v82
	v_fma_f32 v79, -v79, v82, v81
	v_div_fmas_f32 v79, v79, v80, v82
	v_div_fixup_f32 v77, v79, v77, s3
	v_div_scale_f32 v79, s[0:1], v78, v78, s2
	v_rcp_f32_e32 v80, v79
	v_fma_f32 v81, -v79, v80, 1.0
	v_fma_f32 v80, v81, v80, v80
	v_div_scale_f32 v81, vcc, s2, v78, s2
	v_mul_f32_e32 v82, v81, v80
	v_fma_f32 v83, -v79, v82, v81
	v_fma_f32 v82, v83, v80, v82
	v_fma_f32 v79, -v79, v82, v81
	v_div_fmas_f32 v79, v79, v80, v82
	v_div_fixup_f32 v78, v79, v78, s2
	v_add_f32_e32 v78, 1.0, v78
	s_mov_b32 s2, 0x3dc7d0d0
	v_div_scale_f32 v79, s[0:1], v78, v78, s2
	v_rcp_f32_e32 v80, v79
	v_fma_f32 v81, -v79, v80, 1.0
	v_fma_f32 v80, v81, v80, v80
	v_div_scale_f32 v81, vcc, s2, v78, s2
	v_mul_f32_e32 v82, v81, v80
	v_fma_f32 v83, -v79, v82, v81
	v_fma_f32 v82, v83, v80, v82
	v_fma_f32 v79, -v79, v82, v81
	v_div_fmas_f32 v79, v79, v80, v82
	v_div_fixup_f32 v78, v79, v78, s2
	v_mul_f32_e32 v78, v78, v93
	v_fma_f32 v77, v77, v93, v78
	v_add_f32_e32 v78, v112, v86
	s_mov_b32 s0, 0x3c1374bc
	v_fma_f32 v77, v93, s0, v77
	v_add_f32_e32 v79, v113, v114
	v_add_f32_e32 v77, v77, v78
	v_add_f32_e32 v77, v79, v77
	v_add_f32_e32 v76, v76, v77
	v_sub_f32_e32 v76, v76, v100
	s_brev_b32 s14, 1
	v_xor_b32_e32 v78, s14, v76
	s_movk_i32 s0, 0x98
	v_add_u32_e32 v76, vcc, s0, v74
	v_addc_u32_e32 v77, vcc, 0, v75, vcc
	flat_store_dword v[76:77], v78
	s_movk_i32 s0, 0xa0
	v_add_u32_e32 v76, vcc, s0, v74
	v_addc_u32_e32 v77, vcc, 0, v75, vcc
	v_mov_b32_e32 v93, v92
	flat_store_dwordx2 v[76:77], v[92:93]
	flat_load_dword v80, v[27:28]
	flat_load_dwordx4 v[81:84], v[13:14]
	s_nop 0
	flat_load_dwordx2 v[93:94], v[15:16]
	v_add_u32_e32 v76, vcc, 56, v37
	v_addc_u32_e32 v77, vcc, 0, v38, vcc
	flat_load_dword v85, v[76:77]
	v_add_u32_e32 v76, vcc, 48, v37
	v_addc_u32_e32 v77, vcc, 0, v38, vcc
	flat_load_dwordx2 v[86:87], v[76:77]
	v_add_u32_e32 v76, vcc, 32, v37
	v_addc_u32_e32 v77, vcc, 0, v38, vcc
	flat_load_dwordx4 v[88:91], v[76:77]
	v_add_u32_e32 v76, vcc, 16, v37
	v_addc_u32_e32 v77, vcc, 0, v38, vcc
	flat_load_dwordx4 v[76:79], v[76:77]
	s_nop 0
	flat_load_dwordx4 v[112:115], v[37:38]
	s_waitcnt vmcnt(5) lgkmcnt(5)
	v_cmp_ge_f32_e64 s[0:1], 1.0, v94
	v_cvt_f64_f32_e32 v[92:93], v93
	v_div_scale_f64 v[104:105], s[2:3], s[86:87], s[86:87], v[92:93]
	v_rcp_f64_e32 v[116:117], v[104:105]
	v_fma_f64 v[118:119], -v[104:105], v[116:117], 1.0
	v_fma_f64 v[116:117], v[116:117], v[118:119], v[116:117]
	v_fma_f64 v[118:119], -v[104:105], v[116:117], 1.0
	v_fma_f64 v[116:117], v[116:117], v[118:119], v[116:117]
	v_div_scale_f64 v[118:119], vcc, v[92:93], s[86:87], v[92:93]
	v_mul_f64 v[120:121], v[118:119], v[116:117]
	v_fma_f64 v[104:105], -v[104:105], v[120:121], v[118:119]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[104:105], v[104:105], v[116:117], v[120:121]
	v_div_fixup_f64 v[104:105], v[104:105], s[86:87], v[92:93]
	v_add_f64 v[116:117], v[104:105], 1.0
                                        ; implicit-def: $vgpr104_vgpr105
                                        ; implicit-def: $vgpr118_vgpr119
	s_mov_b64 s[2:3], exec
	s_and_b64 s[4:5], s[2:3], s[0:1]
	s_xor_b64 s[0:1], s[4:5], s[2:3]
	s_mov_b64 s[88:89], s[78:79]
	s_mov_b64 s[16:17], s[22:23]
	s_mov_b64 s[18:19], s[86:87]
	v_readlane_b32 s10, v170, 44
	v_readlane_b32 s11, v170, 45
	s_mov_b64 s[46:47], s[84:85]
	s_mov_b64 s[84:85], s[38:39]
	s_mov_b64 exec, s[4:5]
	s_cbranch_execz BB1_97
; %bb.96:                               ;   in Loop: Header=BB1_9 Depth=3
	v_cvt_f64_f32_e32 v[118:119], v94
	v_readlane_b32 s4, v172, 0
	v_readlane_b32 s5, v172, 1
	v_div_scale_f64 v[104:105], s[2:3], s[4:5], s[4:5], v[118:119]
	v_rcp_f64_e32 v[120:121], v[104:105]
	v_fma_f64 v[122:123], -v[104:105], v[120:121], 1.0
	v_fma_f64 v[120:121], v[120:121], v[122:123], v[120:121]
	v_fma_f64 v[122:123], -v[104:105], v[120:121], 1.0
	v_fma_f64 v[120:121], v[120:121], v[122:123], v[120:121]
	v_div_scale_f64 v[122:123], vcc, v[118:119], s[4:5], v[118:119]
	v_mul_f64 v[124:125], v[122:123], v[120:121]
	v_fma_f64 v[104:105], -v[104:105], v[124:125], v[122:123]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[104:105], v[104:105], v[120:121], v[124:125]
	v_div_fixup_f64 v[104:105], v[104:105], s[4:5], v[118:119]
	v_add_f64 v[104:105], v[116:117], v[104:105]
	v_readlane_b32 s2, v173, 55
	v_readlane_b32 s3, v173, 56
	s_mov_b32 s2, s10
	v_writelane_b32 v173, s2, 55
	v_writelane_b32 v173, s3, 56
	v_mul_f64 v[104:105], v[104:105], s[2:3]
	v_readlane_b32 s4, v173, 57
	v_readlane_b32 s5, v173, 58
	s_mov_b32 s4, s84
	v_div_scale_f64 v[120:121], s[2:3], s[4:5], s[4:5], v[92:93]
	v_rcp_f64_e32 v[122:123], v[120:121]
	v_fma_f64 v[124:125], -v[120:121], v[122:123], 1.0
	v_fma_f64 v[122:123], v[122:123], v[124:125], v[122:123]
	v_fma_f64 v[124:125], -v[120:121], v[122:123], 1.0
	v_fma_f64 v[122:123], v[122:123], v[124:125], v[122:123]
	v_div_scale_f64 v[124:125], vcc, v[92:93], s[4:5], v[92:93]
	v_mul_f64 v[126:127], v[124:125], v[122:123]
	v_fma_f64 v[120:121], -v[120:121], v[126:127], v[124:125]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[120:121], v[120:121], v[122:123], v[126:127]
	v_writelane_b32 v173, s4, 57
	v_writelane_b32 v173, s5, 58
	v_div_fixup_f64 v[120:121], v[120:121], s[4:5], v[92:93]
	v_add_f64 v[120:121], v[120:121], 1.0
	v_readlane_b32 s4, v173, 59
	v_readlane_b32 s5, v173, 60
	s_mov_b32 s4, s46
	v_div_scale_f64 v[122:123], s[2:3], s[4:5], s[4:5], v[118:119]
	v_rcp_f64_e32 v[124:125], v[122:123]
	v_fma_f64 v[126:127], -v[122:123], v[124:125], 1.0
	v_fma_f64 v[124:125], v[124:125], v[126:127], v[124:125]
	v_fma_f64 v[126:127], -v[122:123], v[124:125], 1.0
	v_fma_f64 v[124:125], v[124:125], v[126:127], v[124:125]
	v_div_scale_f64 v[126:127], vcc, v[118:119], s[4:5], v[118:119]
	v_mul_f64 v[128:129], v[126:127], v[124:125]
	v_fma_f64 v[122:123], -v[122:123], v[128:129], v[126:127]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[122:123], v[122:123], v[124:125], v[128:129]
	v_writelane_b32 v173, s4, 59
	v_writelane_b32 v173, s5, 60
	v_div_fixup_f64 v[122:123], v[122:123], s[4:5], v[118:119]
	v_add_f64 v[120:121], v[120:121], v[122:123]
	v_mul_f64 v[104:105], v[120:121], v[104:105]
	v_readlane_b32 s4, v173, 61
	v_readlane_b32 s5, v173, 62
	s_mov_b32 s4, s10
	v_div_scale_f64 v[120:121], s[2:3], s[4:5], s[4:5], v[92:93]
	v_rcp_f64_e32 v[122:123], v[120:121]
	v_fma_f64 v[124:125], -v[120:121], v[122:123], 1.0
	v_fma_f64 v[122:123], v[122:123], v[124:125], v[122:123]
	v_fma_f64 v[124:125], -v[120:121], v[122:123], 1.0
	v_fma_f64 v[122:123], v[122:123], v[124:125], v[122:123]
	v_div_scale_f64 v[124:125], vcc, v[92:93], s[4:5], v[92:93]
	v_mul_f64 v[126:127], v[124:125], v[122:123]
	v_fma_f64 v[120:121], -v[120:121], v[126:127], v[124:125]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[120:121], v[120:121], v[122:123], v[126:127]
	v_writelane_b32 v173, s4, 61
	v_writelane_b32 v173, s5, 62
	v_div_fixup_f64 v[120:121], v[120:121], s[4:5], v[92:93]
	v_add_f64 v[120:121], v[120:121], 1.0
	v_readlane_b32 s4, v172, 2
	v_readlane_b32 s5, v172, 3
	v_div_scale_f64 v[122:123], s[2:3], s[4:5], s[4:5], v[118:119]
	v_rcp_f64_e32 v[124:125], v[122:123]
	v_fma_f64 v[126:127], -v[122:123], v[124:125], 1.0
	v_fma_f64 v[124:125], v[124:125], v[126:127], v[124:125]
	v_fma_f64 v[126:127], -v[122:123], v[124:125], 1.0
	v_fma_f64 v[124:125], v[124:125], v[126:127], v[124:125]
	v_div_scale_f64 v[126:127], vcc, v[118:119], s[4:5], v[118:119]
	v_mul_f64 v[128:129], v[126:127], v[124:125]
	v_fma_f64 v[122:123], -v[122:123], v[128:129], v[126:127]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[122:123], v[122:123], v[124:125], v[128:129]
	v_div_fixup_f64 v[122:123], v[122:123], s[4:5], v[118:119]
	v_add_f64 v[120:121], v[120:121], v[122:123]
	v_readlane_b32 s2, v173, 63
	v_readlane_b32 s3, v174, 0
	s_mov_b32 s2, s36
	v_writelane_b32 v173, s2, 63
	v_writelane_b32 v174, s3, 0
	v_mul_f64 v[120:121], v[120:121], s[2:3]
	v_readlane_b32 s4, v174, 1
	v_readlane_b32 s5, v174, 2
	s_mov_b32 s4, s25
	v_div_scale_f64 v[122:123], s[2:3], s[4:5], s[4:5], v[92:93]
	v_rcp_f64_e32 v[124:125], v[122:123]
	v_fma_f64 v[126:127], -v[122:123], v[124:125], 1.0
	v_fma_f64 v[124:125], v[124:125], v[126:127], v[124:125]
	v_fma_f64 v[126:127], -v[122:123], v[124:125], 1.0
	v_fma_f64 v[124:125], v[124:125], v[126:127], v[124:125]
	v_div_scale_f64 v[126:127], vcc, v[92:93], s[4:5], v[92:93]
	v_mul_f64 v[128:129], v[126:127], v[124:125]
	v_fma_f64 v[122:123], -v[122:123], v[128:129], v[126:127]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[122:123], v[122:123], v[124:125], v[128:129]
	v_writelane_b32 v174, s4, 1
	v_writelane_b32 v174, s5, 2
	v_div_fixup_f64 v[122:123], v[122:123], s[4:5], v[92:93]
	v_add_f64 v[122:123], v[122:123], 1.0
	v_readlane_b32 s4, v172, 4
	v_readlane_b32 s5, v172, 5
	v_div_scale_f64 v[124:125], s[2:3], s[4:5], s[4:5], v[118:119]
	v_rcp_f64_e32 v[126:127], v[124:125]
	v_fma_f64 v[128:129], -v[124:125], v[126:127], 1.0
	v_fma_f64 v[126:127], v[126:127], v[128:129], v[126:127]
	v_fma_f64 v[128:129], -v[124:125], v[126:127], 1.0
	v_fma_f64 v[126:127], v[126:127], v[128:129], v[126:127]
	v_div_scale_f64 v[128:129], vcc, v[118:119], s[4:5], v[118:119]
	v_mul_f64 v[130:131], v[128:129], v[126:127]
	v_fma_f64 v[124:125], -v[124:125], v[130:131], v[128:129]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[124:125], v[124:125], v[126:127], v[130:131]
	v_div_fixup_f64 v[118:119], v[124:125], s[4:5], v[118:119]
	v_add_f64 v[118:119], v[122:123], v[118:119]
	v_mul_f64 v[118:119], v[118:119], v[120:121]
BB1_97:                                 ; %Flow835
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_mov_b64 s[78:79], s[50:51]
	s_mov_b32 s38, 0x4f800000
	s_mov_b32 s39, 0x41b17218
	s_mov_b32 s15, 0x3e91f4c4
	s_mov_b32 s6, 0x3c091de6
	s_mov_b32 s48, 0x3e76c4e1
	s_mov_b32 s49, 0x31739010
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB1_99
; %bb.98:                               ;   in Loop: Header=BB1_9 Depth=3
	v_readlane_b32 s2, v171, 8
	v_readlane_b32 s3, v171, 9
	v_readlane_b32 s4, v174, 3
	v_readlane_b32 s5, v174, 4
	s_mov_b32 s4, s2
	v_writelane_b32 v174, s4, 3
	v_writelane_b32 v174, s5, 4
	v_add_f64 v[104:105], v[116:117], s[4:5]
	v_add_f32_e32 v94, -1.0, v94
	v_cvt_f64_f32_e32 v[116:117], v94
	v_readlane_b32 s2, v172, 18
	v_readlane_b32 s3, v172, 19
	v_readlane_b32 s4, v174, 5
	v_readlane_b32 s5, v174, 6
	s_mov_b32 s4, s2
	v_div_scale_f64 v[118:119], s[2:3], s[4:5], s[4:5], v[116:117]
	v_rcp_f64_e32 v[120:121], v[118:119]
	v_fma_f64 v[122:123], -v[118:119], v[120:121], 1.0
	v_fma_f64 v[120:121], v[120:121], v[122:123], v[120:121]
	v_fma_f64 v[122:123], -v[118:119], v[120:121], 1.0
	v_fma_f64 v[120:121], v[120:121], v[122:123], v[120:121]
	v_div_scale_f64 v[122:123], vcc, v[116:117], s[4:5], v[116:117]
	v_mul_f64 v[124:125], v[122:123], v[120:121]
	v_fma_f64 v[118:119], -v[118:119], v[124:125], v[122:123]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[118:119], v[118:119], v[120:121], v[124:125]
	v_writelane_b32 v174, s4, 5
	v_writelane_b32 v174, s5, 6
	v_div_fixup_f64 v[118:119], v[118:119], s[4:5], v[116:117]
	v_add_f64 v[104:105], v[104:105], v[118:119]
	s_mov_b32 s2, s10
	v_readlane_b32 s4, v173, 55
	v_readlane_b32 s5, v173, 56
	s_mov_b32 s3, s5
	v_mul_f64 v[104:105], v[104:105], s[2:3]
	s_mov_b32 s2, s84
	v_readlane_b32 s4, v173, 57
	v_readlane_b32 s5, v173, 58
	s_mov_b32 s3, s5
	v_div_scale_f64 v[118:119], s[4:5], s[2:3], s[2:3], v[92:93]
	v_rcp_f64_e32 v[120:121], v[118:119]
	v_fma_f64 v[122:123], -v[118:119], v[120:121], 1.0
	v_fma_f64 v[120:121], v[120:121], v[122:123], v[120:121]
	v_fma_f64 v[122:123], -v[118:119], v[120:121], 1.0
	v_fma_f64 v[120:121], v[120:121], v[122:123], v[120:121]
	v_div_scale_f64 v[122:123], vcc, v[92:93], s[2:3], v[92:93]
	v_mul_f64 v[124:125], v[122:123], v[120:121]
	v_fma_f64 v[118:119], -v[118:119], v[124:125], v[122:123]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[118:119], v[118:119], v[120:121], v[124:125]
	v_div_fixup_f64 v[118:119], v[118:119], s[2:3], v[92:93]
	v_add_f64 v[118:119], v[118:119], 1.0
	v_readlane_b32 s2, v172, 6
	v_readlane_b32 s3, v172, 7
	v_add_f64 v[118:119], v[118:119], s[2:3]
	v_readlane_b32 s4, v172, 8
	v_readlane_b32 s5, v172, 9
	v_div_scale_f64 v[120:121], s[2:3], s[4:5], s[4:5], v[116:117]
	v_rcp_f64_e32 v[122:123], v[120:121]
	v_fma_f64 v[124:125], -v[120:121], v[122:123], 1.0
	v_fma_f64 v[122:123], v[122:123], v[124:125], v[122:123]
	v_fma_f64 v[124:125], -v[120:121], v[122:123], 1.0
	v_fma_f64 v[122:123], v[122:123], v[124:125], v[122:123]
	v_div_scale_f64 v[124:125], vcc, v[116:117], s[4:5], v[116:117]
	v_mul_f64 v[126:127], v[124:125], v[122:123]
	v_fma_f64 v[120:121], -v[120:121], v[126:127], v[124:125]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[120:121], v[120:121], v[122:123], v[126:127]
	v_div_fixup_f64 v[120:121], v[120:121], s[4:5], v[116:117]
	v_add_f64 v[118:119], v[118:119], v[120:121]
	v_mul_f64 v[104:105], v[118:119], v[104:105]
	s_mov_b32 s2, s10
	v_readlane_b32 s4, v173, 61
	v_readlane_b32 s5, v173, 62
	s_mov_b32 s3, s5
	v_div_scale_f64 v[118:119], s[4:5], s[2:3], s[2:3], v[92:93]
	v_rcp_f64_e32 v[120:121], v[118:119]
	v_fma_f64 v[122:123], -v[118:119], v[120:121], 1.0
	v_fma_f64 v[120:121], v[120:121], v[122:123], v[120:121]
	v_fma_f64 v[122:123], -v[118:119], v[120:121], 1.0
	v_fma_f64 v[120:121], v[120:121], v[122:123], v[120:121]
	v_div_scale_f64 v[122:123], vcc, v[92:93], s[2:3], v[92:93]
	v_mul_f64 v[124:125], v[122:123], v[120:121]
	v_fma_f64 v[118:119], -v[118:119], v[124:125], v[122:123]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[118:119], v[118:119], v[120:121], v[124:125]
	v_div_fixup_f64 v[118:119], v[118:119], s[2:3], v[92:93]
	v_add_f64 v[118:119], v[118:119], 1.0
	v_readlane_b32 s2, v172, 10
	v_readlane_b32 s3, v172, 11
	v_add_f64 v[118:119], v[118:119], s[2:3]
	v_readlane_b32 s4, v174, 7
	v_readlane_b32 s5, v174, 8
	s_mov_b32 s4, s10
	v_div_scale_f64 v[120:121], s[2:3], s[4:5], s[4:5], v[116:117]
	v_rcp_f64_e32 v[122:123], v[120:121]
	v_fma_f64 v[124:125], -v[120:121], v[122:123], 1.0
	v_fma_f64 v[122:123], v[122:123], v[124:125], v[122:123]
	v_fma_f64 v[124:125], -v[120:121], v[122:123], 1.0
	v_fma_f64 v[122:123], v[122:123], v[124:125], v[122:123]
	v_div_scale_f64 v[124:125], vcc, v[116:117], s[4:5], v[116:117]
	v_mul_f64 v[126:127], v[124:125], v[122:123]
	v_fma_f64 v[120:121], -v[120:121], v[126:127], v[124:125]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[120:121], v[120:121], v[122:123], v[126:127]
	v_writelane_b32 v174, s4, 7
	v_writelane_b32 v174, s5, 8
	v_div_fixup_f64 v[120:121], v[120:121], s[4:5], v[116:117]
	v_add_f64 v[118:119], v[118:119], v[120:121]
	s_mov_b32 s2, s36
	v_readlane_b32 s4, v173, 63
	v_readlane_b32 s5, v174, 0
	s_mov_b32 s3, s5
	v_mul_f64 v[118:119], v[118:119], s[2:3]
	s_mov_b32 s2, s25
	v_readlane_b32 s4, v174, 1
	v_readlane_b32 s5, v174, 2
	s_mov_b32 s3, s5
	v_div_scale_f64 v[120:121], s[4:5], s[2:3], s[2:3], v[92:93]
	v_rcp_f64_e32 v[122:123], v[120:121]
	v_fma_f64 v[124:125], -v[120:121], v[122:123], 1.0
	v_fma_f64 v[122:123], v[122:123], v[124:125], v[122:123]
	v_fma_f64 v[124:125], -v[120:121], v[122:123], 1.0
	v_fma_f64 v[122:123], v[122:123], v[124:125], v[122:123]
	v_div_scale_f64 v[124:125], vcc, v[92:93], s[2:3], v[92:93]
	v_mul_f64 v[126:127], v[124:125], v[122:123]
	v_fma_f64 v[120:121], -v[120:121], v[126:127], v[124:125]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[120:121], v[120:121], v[122:123], v[126:127]
	v_div_fixup_f64 v[92:93], v[120:121], s[2:3], v[92:93]
	v_add_f64 v[92:93], v[92:93], 1.0
	v_readlane_b32 s2, v172, 12
	v_readlane_b32 s3, v172, 13
	v_add_f64 v[92:93], v[92:93], s[2:3]
	v_readlane_b32 s4, v174, 9
	v_readlane_b32 s5, v174, 10
	s_mov_b32 s4, s84
	v_div_scale_f64 v[120:121], s[2:3], s[4:5], s[4:5], v[116:117]
	v_rcp_f64_e32 v[122:123], v[120:121]
	v_fma_f64 v[124:125], -v[120:121], v[122:123], 1.0
	v_fma_f64 v[122:123], v[122:123], v[124:125], v[122:123]
	v_fma_f64 v[124:125], -v[120:121], v[122:123], 1.0
	v_fma_f64 v[122:123], v[122:123], v[124:125], v[122:123]
	v_div_scale_f64 v[124:125], vcc, v[116:117], s[4:5], v[116:117]
	v_mul_f64 v[126:127], v[124:125], v[122:123]
	v_fma_f64 v[120:121], -v[120:121], v[126:127], v[124:125]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[120:121], v[120:121], v[122:123], v[126:127]
	v_writelane_b32 v174, s4, 9
	v_writelane_b32 v174, s5, 10
	v_div_fixup_f64 v[116:117], v[120:121], s[4:5], v[116:117]
	v_add_f64 v[92:93], v[92:93], v[116:117]
	v_mul_f64 v[118:119], v[92:93], v[118:119]
BB1_99:                                 ; %_Z12kernel_cam_2fPfS_iS_iS_if.exit90.i.i
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_or_b64 exec, exec, s[0:1]
	v_cvt_f32_f64_e32 v92, v[104:105]
	v_cvt_f32_f64_e32 v93, v[118:119]
	v_div_scale_f32 v94, s[0:1], v92, v92, s24
	s_mov_b32 s4, 0x43fa0000
	v_div_scale_f32 v97, s[0:1], v93, v93, s4
	v_div_scale_f32 v100, vcc, s24, v92, s24
	v_div_scale_f32 v104, s[0:1], s4, v93, s4
	s_mov_b32 s2, 0x447a0000
	v_mul_f32_e32 v80, s2, v80
	v_frexp_mant_f32_e64 v105, |v80|
	v_rcp_f32_e32 v116, v94
	v_rcp_f32_e32 v117, v97
	v_cmp_gt_f32_e64 s[2:3], s42, v105
	v_cndmask_b32_e64 v118, 0, 1, s[2:3]
	v_fma_f32 v119, -v94, v116, 1.0
	v_fma_f32 v120, -v97, v117, 1.0
	v_fma_f32 v116, v119, v116, v116
	v_fma_f32 v117, v120, v117, v117
	v_mul_f32_e32 v119, v100, v116
	v_mul_f32_e32 v120, v104, v117
	v_fma_f32 v121, -v94, v119, v100
	v_fma_f32 v122, -v97, v120, v104
	v_fma_f32 v119, v121, v116, v119
	v_fma_f32 v120, v122, v117, v120
	v_fma_f32 v94, -v94, v119, v100
	v_fma_f32 v97, -v97, v120, v104
	v_div_fmas_f32 v94, v94, v116, v119
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v97, v97, v117, v120
	v_ldexp_f32 v100, v105, v118
	v_add_f32_e32 v104, 1.0, v100
	v_sub_f32_e32 v105, v104, v100
	v_sub_f32_e32 v116, v104, v105
	v_sub_f32_e32 v116, v100, v116
	v_rcp_f32_e32 v117, v104
	v_sub_f32_e32 v105, 1.0, v105
	v_add_f32_e32 v105, v105, v116
	v_add_f32_e32 v100, -1.0, v100
	v_mul_f32_e32 v116, v100, v117
	v_mul_f32_e32 v118, v104, v116
	v_fma_f32 v104, v116, v104, -v118
	v_fma_f32 v104, v116, v105, v104
	v_add_f32_e32 v105, v118, v104
	v_sub_f32_e32 v118, v105, v118
	v_sub_f32_e32 v104, v104, v118
	v_sub_f32_e32 v118, v100, v105
	v_sub_f32_e32 v100, v100, v118
	v_sub_f32_e32 v100, v100, v105
	v_sub_f32_e32 v100, v100, v104
	v_add_f32_e32 v100, v118, v100
	v_mul_f32_e32 v100, v117, v100
	v_add_f32_e32 v104, v116, v100
	v_sub_f32_e32 v105, v104, v116
	v_sub_f32_e32 v100, v100, v105
	v_mul_f32_e32 v105, v104, v104
	v_add_f32_e32 v116, v100, v100
	v_fma_f32 v117, v104, v104, -v105
	v_fma_f32 v116, v104, v116, v117
	v_fma_f32 v116, v100, v100, v116
	v_frexp_exp_i32_f32_e64 v117, |v80|
	v_subbrev_u32_e64 v117, vcc, 0, v117, s[2:3]
	v_cvt_f32_i32_e32 v117, v117
	v_add_f32_e32 v118, v105, v116
	v_sub_f32_e32 v105, v118, v105
	v_sub_f32_e32 v105, v116, v105
	v_mul_f32_e32 v116, s45, v117
	v_fma_f32 v119, v117, s45, -v116
	v_fma_f32 v117, v117, s44, v119
	v_add_f32_e32 v119, v116, v117
	v_sub_f32_e32 v116, v119, v116
	v_sub_f32_e32 v116, v117, v116
	v_mov_b32_e32 v117, s15
	v_fma_f32 v120, v118, s48, v117
	v_fma_f32 v120, v118, v120, s93
	v_mul_f32_e32 v121, v118, v120
	v_fma_f32 v122, v118, v120, -v121
	v_fma_f32 v120, v105, v120, v122
	v_mul_f32_e32 v105, v104, v105
	v_fma_f32 v105, v118, v100, v105
	v_mul_f32_e32 v122, v104, v118
	v_fma_f32 v118, v118, v104, -v122
	v_add_f32_e32 v105, v118, v105
	v_add_f32_e32 v118, v121, v120
	v_sub_f32_e32 v121, v118, v121
	v_sub_f32_e32 v120, v120, v121
	v_add_f32_e32 v121, s28, v118
	v_add_f32_e32 v123, s41, v121
	v_sub_f32_e32 v118, v118, v123
	v_add_f32_e32 v120, s49, v120
	v_add_f32_e32 v118, v118, v120
	v_add_f32_e32 v120, v121, v118
	v_sub_f32_e32 v121, v120, v121
	v_sub_f32_e32 v118, v118, v121
	v_add_f32_e32 v121, v122, v105
	v_sub_f32_e32 v122, v121, v122
	v_sub_f32_e32 v105, v105, v122
	v_mul_f32_e32 v105, v105, v120
	v_fma_f32 v105, v121, v118, v105
	v_mul_f32_e32 v118, v121, v120
	v_fma_f32 v120, v121, v120, -v118
	v_add_f32_e32 v105, v120, v105
	v_add_f32_e32 v120, v118, v105
	v_sub_f32_e32 v118, v120, v118
	v_sub_f32_e32 v105, v105, v118
	v_ldexp_f32 v104, v104, 1
	v_add_f32_e32 v118, v104, v120
	v_sub_f32_e32 v104, v118, v104
	v_sub_f32_e32 v104, v120, v104
	v_ldexp_f32 v100, v100, 1
	v_add_f32_e32 v100, v100, v105
	v_add_f32_e32 v100, v104, v100
	v_add_f32_e32 v104, v118, v100
	v_sub_f32_e32 v105, v104, v118
	v_sub_f32_e32 v100, v100, v105
	v_add_f32_e32 v105, v119, v104
	v_sub_f32_e32 v118, v105, v119
	v_sub_f32_e32 v120, v105, v118
	v_sub_f32_e32 v119, v119, v120
	v_sub_f32_e32 v104, v104, v118
	v_add_f32_e32 v104, v104, v119
	v_add_f32_e32 v118, v116, v100
	v_sub_f32_e32 v119, v118, v116
	v_sub_f32_e32 v120, v118, v119
	v_sub_f32_e32 v116, v116, v120
	v_sub_f32_e32 v100, v100, v119
	v_add_f32_e32 v100, v100, v116
	v_add_f32_e32 v104, v118, v104
	v_add_f32_e32 v116, v105, v104
	v_sub_f32_e32 v105, v116, v105
	v_sub_f32_e32 v104, v104, v105
	v_add_f32_e32 v100, v100, v104
	v_add_f32_e32 v104, v116, v100
	v_sub_f32_e32 v105, v104, v116
	v_sub_f32_e32 v100, v100, v105
	v_mul_f32_e32 v105, 0, v104
	v_fma_f32 v100, v100, 2.0, v105
	v_add_f32_e32 v105, v104, v104
	v_fma_f32 v104, v104, 2.0, -v105
	v_add_f32_e32 v100, v104, v100
	v_add_f32_e32 v104, v105, v100
	v_sub_f32_e32 v116, v104, v105
	v_sub_f32_e32 v100, v100, v116
	v_cmp_class_f32_e64 vcc, v105, s92
	v_cndmask_b32_e32 v104, v104, v105, vcc
	v_mul_f32_e32 v105, s26, v104
	v_rndne_f32_e32 v105, v105
	v_mul_f32_e32 v116, s31, v105
	v_sub_f32_e32 v118, v104, v116
	v_sub_f32_e32 v119, v118, v104
	v_add_f32_e32 v116, v116, v119
	v_sub_f32_e32 v119, v118, v119
	v_sub_f32_e32 v119, v104, v119
	v_sub_f32_e32 v116, v119, v116
	v_cmp_neq_f32_e64 vcc, |v104|, s94
	v_cndmask_b32_e32 v100, 0, v100, vcc
	v_add_f32_e32 v100, v100, v116
	v_add_f32_e32 v116, v118, v100
	v_sub_f32_e32 v118, v116, v118
	v_sub_f32_e32 v100, v100, v118
	v_mul_f32_e32 v118, s30, v105
	v_sub_f32_e32 v119, v116, v118
	v_sub_f32_e32 v116, v116, v119
	v_sub_f32_e32 v116, v116, v118
	v_add_f32_e32 v100, v100, v116
	v_add_f32_e32 v116, v119, v100
	v_sub_f32_e32 v118, v116, v119
	v_sub_f32_e32 v100, v100, v118
	v_mul_f32_e32 v118, s29, v105
	v_sub_f32_e32 v119, v116, v118
	v_sub_f32_e32 v116, v116, v119
	v_sub_f32_e32 v116, v116, v118
	v_add_f32_e32 v100, v100, v116
	v_add_f32_e32 v116, v119, v100
	v_sub_f32_e32 v118, v116, v119
	v_sub_f32_e32 v100, v100, v118
	v_mul_f32_e32 v118, v116, v116
	v_fma_f32 v119, v116, v116, -v118
	v_add_f32_e32 v120, v100, v100
	v_fma_f32 v119, v116, v120, v119
	v_fma_f32 v119, v100, v100, v119
	v_add_f32_e32 v120, v118, v119
	v_sub_f32_e32 v118, v120, v118
	v_sub_f32_e32 v118, v119, v118
	v_mov_b32_e32 v119, s6
	v_fma_f32 v121, v116, s27, v119
	v_fma_f32 v121, v116, v121, s40
	v_fma_f32 v121, v116, v121, s35
	v_fma_f32 v121, v116, v121, s91
	v_mul_f32_e32 v122, v121, v120
	v_fma_f32 v120, v120, v121, -v122
	v_fma_f32 v118, v118, v121, v120
	v_div_fixup_f32 v92, v94, v92, s24
	v_div_fixup_f32 v94, v97, v93, s4
	v_add_f32_e32 v93, v122, v118
	v_sub_f32_e32 v97, v93, v122
	v_sub_f32_e32 v97, v118, v97
	v_add_f32_e32 v118, v116, v93
	v_sub_f32_e32 v116, v118, v116
	v_sub_f32_e32 v93, v93, v116
	v_add_f32_e32 v97, v100, v97
	v_cvt_i32_f32_e32 v100, v105
	v_add_f32_e32 v93, v93, v97
	v_add_f32_e32 v93, v118, v93
	v_add_f32_e32 v93, 1.0, v93
	v_ldexp_f32 v93, v93, v100
	v_cmp_ngt_f32_e32 vcc, s95, v104
	v_mov_b32_e32 v97, s94
	v_cmp_nlt_f32_e64 s[0:1], s34, v104
	v_cndmask_b32_e64 v93, v97, v93, s[0:1]
	v_cmp_neq_f32_e64 s[0:1], 0, v80
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v93, 0, v93, vcc
	v_cmp_class_f32_e64 vcc, v80, s92
	v_cndmask_b32_e32 v93, v93, v97, vcc
	v_cmp_u_f32_e32 vcc, v80, v80
	v_cndmask_b32_e64 v100, |v93|, v80, vcc
	v_mul_f32_e32 v116, v100, v92
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_f32_e32 v80, v79, v88
	v_add_f32_e32 v80, v80, v89
	v_add_f32_e32 v118, v80, v90
	v_frexp_mant_f32_e64 v80, |v118|
	v_cmp_gt_f32_e32 vcc, s42, v80
	v_cndmask_b32_e64 v92, 0, 1, vcc
	v_ldexp_f32 v80, v80, v92
	v_add_f32_e32 v92, 1.0, v80
	v_sub_f32_e32 v93, v92, v80
	v_sub_f32_e32 v104, v92, v93
	v_sub_f32_e32 v104, v80, v104
	v_rcp_f32_e32 v105, v92
	v_sub_f32_e32 v93, 1.0, v93
	v_add_f32_e32 v93, v93, v104
	v_add_f32_e32 v80, -1.0, v80
	v_mul_f32_e32 v104, v80, v105
	v_mul_f32_e32 v120, v92, v104
	v_fma_f32 v92, v104, v92, -v120
	v_fma_f32 v92, v104, v93, v92
	v_add_f32_e32 v93, v120, v92
	v_sub_f32_e32 v120, v93, v120
	v_sub_f32_e32 v92, v92, v120
	v_sub_f32_e32 v120, v80, v93
	v_sub_f32_e32 v80, v80, v120
	v_sub_f32_e32 v80, v80, v93
	v_sub_f32_e32 v80, v80, v92
	v_add_f32_e32 v80, v120, v80
	v_mul_f32_e32 v80, v105, v80
	v_add_f32_e32 v92, v104, v80
	v_sub_f32_e32 v93, v92, v104
	v_sub_f32_e32 v80, v80, v93
	v_mul_f32_e32 v93, v92, v92
	v_add_f32_e32 v104, v80, v80
	v_fma_f32 v105, v92, v92, -v93
	v_fma_f32 v104, v92, v104, v105
	v_fma_f32 v104, v80, v80, v104
	v_frexp_exp_i32_f32_e64 v105, |v118|
	v_subbrev_u32_e32 v105, vcc, 0, v105, vcc
	v_cvt_f32_i32_e32 v105, v105
	v_add_f32_e32 v120, v93, v104
	v_sub_f32_e32 v93, v120, v93
	v_sub_f32_e32 v93, v104, v93
	v_mul_f32_e32 v104, s45, v105
	v_fma_f32 v121, v105, s45, -v104
	v_fma_f32 v105, v105, s44, v121
	v_add_f32_e32 v121, v104, v105
	v_sub_f32_e32 v104, v121, v104
	v_sub_f32_e32 v104, v105, v104
	v_fma_f32 v105, v120, s48, v117
	v_fma_f32 v105, v120, v105, s93
	v_mul_f32_e32 v117, v120, v105
	v_fma_f32 v122, v120, v105, -v117
	v_fma_f32 v105, v93, v105, v122
	v_mul_f32_e32 v93, v92, v93
	v_fma_f32 v93, v120, v80, v93
	v_mul_f32_e32 v122, v92, v120
	v_fma_f32 v120, v120, v92, -v122
	v_add_f32_e32 v93, v120, v93
	v_add_f32_e32 v120, v117, v105
	v_sub_f32_e32 v117, v120, v117
	v_sub_f32_e32 v105, v105, v117
	v_add_f32_e32 v117, s28, v120
	v_add_f32_e32 v123, s41, v117
	v_sub_f32_e32 v120, v120, v123
	v_add_f32_e32 v105, s49, v105
	v_add_f32_e32 v105, v120, v105
	v_add_f32_e32 v120, v117, v105
	v_sub_f32_e32 v117, v120, v117
	v_sub_f32_e32 v105, v105, v117
	v_add_f32_e32 v117, v122, v93
	v_sub_f32_e32 v122, v117, v122
	v_sub_f32_e32 v93, v93, v122
	v_mul_f32_e32 v93, v93, v120
	v_fma_f32 v93, v117, v105, v93
	v_mul_f32_e32 v105, v117, v120
	v_fma_f32 v117, v117, v120, -v105
	v_add_f32_e32 v93, v117, v93
	v_add_f32_e32 v117, v105, v93
	v_sub_f32_e32 v105, v117, v105
	v_sub_f32_e32 v93, v93, v105
	v_ldexp_f32 v92, v92, 1
	v_add_f32_e32 v105, v92, v117
	v_sub_f32_e32 v92, v105, v92
	v_sub_f32_e32 v92, v117, v92
	v_ldexp_f32 v80, v80, 1
	v_add_f32_e32 v80, v80, v93
	v_add_f32_e32 v80, v92, v80
	v_add_f32_e32 v92, v105, v80
	v_sub_f32_e32 v93, v92, v105
	v_sub_f32_e32 v80, v80, v93
	v_add_f32_e32 v93, v121, v92
	v_sub_f32_e32 v105, v93, v121
	v_sub_f32_e32 v117, v93, v105
	v_sub_f32_e32 v117, v121, v117
	v_sub_f32_e32 v92, v92, v105
	v_add_f32_e32 v92, v92, v117
	v_add_f32_e32 v105, v104, v80
	v_sub_f32_e32 v117, v105, v104
	v_sub_f32_e32 v120, v105, v117
	v_sub_f32_e32 v104, v104, v120
	v_sub_f32_e32 v80, v80, v117
	v_add_f32_e32 v80, v80, v104
	v_add_f32_e32 v92, v105, v92
	v_add_f32_e32 v104, v93, v92
	v_sub_f32_e32 v93, v104, v93
	v_sub_f32_e32 v92, v92, v93
	v_add_f32_e32 v80, v80, v92
	v_add_f32_e32 v92, v104, v80
	v_sub_f32_e32 v93, v92, v104
	v_sub_f32_e32 v80, v80, v93
	v_add_f32_e32 v93, v92, v92
	v_fma_f32 v104, v92, 2.0, -v93
	v_mul_f32_e32 v105, 0, v92
	v_fma_f32 v117, v80, 2.0, v105
	v_add_f32_e32 v104, v104, v117
	v_add_f32_e32 v117, v93, v104
	v_sub_f32_e32 v120, v117, v93
	v_sub_f32_e32 v104, v104, v120
	v_cmp_class_f32_e64 vcc, v93, s92
	v_cndmask_b32_e32 v93, v117, v93, vcc
	v_mul_f32_e32 v117, s26, v93
	v_rndne_f32_e32 v117, v117
	v_mul_f32_e32 v120, s31, v117
	v_sub_f32_e32 v121, v93, v120
	v_sub_f32_e32 v122, v121, v93
	v_add_f32_e32 v120, v120, v122
	v_sub_f32_e32 v122, v121, v122
	v_sub_f32_e32 v122, v93, v122
	v_sub_f32_e32 v120, v122, v120
	v_cmp_neq_f32_e64 vcc, |v93|, s94
	v_cndmask_b32_e32 v104, 0, v104, vcc
	v_add_f32_e32 v104, v104, v120
	v_add_f32_e32 v120, v121, v104
	v_sub_f32_e32 v121, v120, v121
	v_sub_f32_e32 v104, v104, v121
	v_mul_f32_e32 v121, s30, v117
	v_sub_f32_e32 v122, v120, v121
	v_sub_f32_e32 v120, v120, v122
	v_sub_f32_e32 v120, v120, v121
	v_add_f32_e32 v104, v104, v120
	v_add_f32_e32 v120, v122, v104
	v_sub_f32_e32 v121, v120, v122
	v_sub_f32_e32 v104, v104, v121
	v_mul_f32_e32 v121, s29, v117
	v_sub_f32_e32 v122, v120, v121
	v_sub_f32_e32 v120, v120, v122
	v_sub_f32_e32 v120, v120, v121
	v_add_f32_e32 v104, v104, v120
	v_add_f32_e32 v120, v122, v104
	v_sub_f32_e32 v121, v120, v122
	v_sub_f32_e32 v104, v104, v121
	v_mul_f32_e32 v121, v120, v120
	v_fma_f32 v122, v120, v120, -v121
	v_add_f32_e32 v123, v104, v104
	v_fma_f32 v122, v120, v123, v122
	v_fma_f32 v122, v104, v104, v122
	v_add_f32_e32 v123, v121, v122
	v_sub_f32_e32 v121, v123, v121
	v_sub_f32_e32 v121, v122, v121
	v_fma_f32 v122, v120, s27, v119
	v_fma_f32 v122, v120, v122, s40
	v_fma_f32 v122, v120, v122, s35
	v_fma_f32 v122, v120, v122, s91
	v_mul_f32_e32 v124, v122, v123
	v_fma_f32 v123, v123, v122, -v124
	v_fma_f32 v121, v121, v122, v123
	v_fma_f32 v80, v80, s61, v105
	v_mul_f32_e32 v105, s61, v92
	v_fma_f32 v92, v92, s61, -v105
	v_add_f32_e32 v80, v92, v80
	v_add_f32_e32 v92, v105, v80
	v_sub_f32_e32 v122, v92, v105
	v_sub_f32_e32 v80, v80, v122
	v_cmp_class_f32_e64 vcc, v105, s92
	v_cndmask_b32_e32 v92, v92, v105, vcc
	v_mul_f32_e32 v105, s26, v92
	v_rndne_f32_e32 v105, v105
	v_mul_f32_e32 v122, s31, v105
	v_sub_f32_e32 v123, v92, v122
	v_sub_f32_e32 v125, v123, v92
	v_add_f32_e32 v122, v122, v125
	v_sub_f32_e32 v125, v123, v125
	v_sub_f32_e32 v125, v92, v125
	v_sub_f32_e32 v122, v125, v122
	v_cmp_neq_f32_e64 vcc, |v92|, s94
	v_cndmask_b32_e32 v80, 0, v80, vcc
	v_add_f32_e32 v80, v80, v122
	v_add_f32_e32 v122, v123, v80
	v_sub_f32_e32 v123, v122, v123
	v_sub_f32_e32 v80, v80, v123
	v_mul_f32_e32 v123, s30, v105
	v_sub_f32_e32 v125, v122, v123
	v_sub_f32_e32 v122, v122, v125
	v_sub_f32_e32 v122, v122, v123
	v_add_f32_e32 v80, v80, v122
	v_add_f32_e32 v122, v125, v80
	v_sub_f32_e32 v123, v122, v125
	v_sub_f32_e32 v80, v80, v123
	v_mul_f32_e32 v123, s29, v105
	v_sub_f32_e32 v125, v122, v123
	v_sub_f32_e32 v122, v122, v125
	v_sub_f32_e32 v122, v122, v123
	v_add_f32_e32 v80, v80, v122
	v_add_f32_e32 v122, v125, v80
	v_sub_f32_e32 v123, v122, v125
	v_sub_f32_e32 v80, v80, v123
	v_mul_f32_e32 v123, v122, v122
	v_fma_f32 v125, v122, v122, -v123
	v_add_f32_e32 v126, v80, v80
	v_fma_f32 v125, v122, v126, v125
	v_fma_f32 v125, v80, v80, v125
	v_add_f32_e32 v126, v123, v125
	v_sub_f32_e32 v123, v126, v123
	v_sub_f32_e32 v123, v125, v123
	v_fma_f32 v119, v122, s27, v119
	v_fma_f32 v119, v122, v119, s40
	v_fma_f32 v119, v122, v119, s35
	v_fma_f32 v119, v122, v119, s91
	v_mul_f32_e32 v125, v119, v126
	v_fma_f32 v126, v126, v119, -v125
	v_fma_f32 v119, v123, v119, v126
	v_add_f32_e32 v123, v124, v121
	v_sub_f32_e32 v124, v123, v124
	v_sub_f32_e32 v121, v121, v124
	v_add_f32_e32 v124, v120, v123
	v_sub_f32_e32 v120, v124, v120
	v_sub_f32_e32 v120, v123, v120
	v_add_f32_e32 v104, v104, v121
	v_cvt_i32_f32_e32 v117, v117
	v_add_f32_e32 v104, v120, v104
	v_add_f32_e32 v104, v124, v104
	v_add_f32_e32 v104, 1.0, v104
	v_ldexp_f32 v104, v104, v117
	v_add_f32_e32 v117, v125, v119
	v_sub_f32_e32 v120, v117, v125
	v_sub_f32_e32 v119, v119, v120
	v_add_f32_e32 v120, v122, v117
	v_sub_f32_e32 v121, v120, v122
	v_sub_f32_e32 v117, v117, v121
	v_add_f32_e32 v80, v80, v119
	v_cvt_i32_f32_e32 v105, v105
	v_add_f32_e32 v80, v117, v80
	v_add_f32_e32 v80, v120, v80
	v_add_f32_e32 v80, 1.0, v80
	v_ldexp_f32 v80, v80, v105
	v_cmp_nlt_f32_e32 vcc, s34, v92
	v_cndmask_b32_e32 v80, v97, v80, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v92
	v_cndmask_b32_e32 v80, 0, v80, vcc
	v_mov_b32_e32 v92, s14
	v_cmp_gt_f32_e32 vcc, 0, v118
	v_cndmask_b32_e32 v92, 0, v92, vcc
	v_bfi_b32 v80, s90, v80, v92
	v_bfi_b32 v92, s90, 0, v118
	v_cmp_eq_f32_e32 vcc, 0, v118
	v_cndmask_b32_e32 v117, v80, v92, vcc
	v_cmp_gt_f32_e64 s[0:1], s95, v93
	v_cmp_nlt_f32_e64 s[2:3], s34, v93
	v_cndmask_b32_e64 v80, v97, v104, s[2:3]
	s_or_b64 s[0:1], vcc, s[0:1]
	v_cndmask_b32_e64 v80, v80, 0, s[0:1]
	s_mov_b32 s0, 0x3fdc28f6
	v_mul_f32_e32 v84, s0, v84
	v_mul_f32_e32 v119, v84, v88
	s_mov_b32 s5, 0x41380000
	v_fma_f32 v120, v82, v88, s5
	v_div_scale_f32 v121, s[0:1], v120, v120, v119
	v_cmp_class_f32_e64 vcc, v118, s92
	v_cndmask_b32_e32 v80, v80, v97, vcc
	v_cmp_u_f32_e32 vcc, v118, v118
	v_cndmask_b32_e64 v80, |v80|, v118, vcc
	v_div_scale_f32 v122, s[0:1], v119, v120, v119
	v_cvt_f64_f32_e32 v[92:93], v80
	s_mov_b32 s2, 0xc1200000
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v80, s2, v113
	v_fma_f32 v123, v112, v116, v80
	v_mul_f32_e32 v94, v100, v94
	v_readlane_b32 s2, v172, 14
	v_readlane_b32 s3, v172, 15
	v_mul_f64 v[92:93], v[92:93], s[2:3]
	s_mov_b32 s4, 0xc3fa0000
	v_mul_f32_e32 v80, s4, v114
	v_fma_f32 v124, v113, v94, v80
	s_mov_b32 s2, 0xbdcccccd
	v_mul_f32_e32 v80, s2, v76
	v_cvt_f64_f32_e32 v[104:105], v118
	v_rcp_f32_e32 v125, v121
	v_fma_f32 v126, v115, v116, v80
	v_sub_f32_e32 v127, v81, v115
	v_readlane_b32 s2, v172, 16
	v_readlane_b32 s3, v172, 17
	v_fma_f64 v[80:81], v[104:105], s[2:3], v[92:93]
	v_fma_f32 v92, -v121, v125, 1.0
	v_fma_f32 v104, v92, v125, v125
	v_mul_f32_e32 v92, v122, v104
	v_fma_f32 v93, -v121, v92, v122
	v_fma_f32 v105, v93, v104, v92
	s_mov_b32 s2, 0xff800000
	v_mov_b32_e32 v92, s2
	v_cmp_class_f32_e64 s[2:3], v118, 4
	v_cndmask_b32_e64 v92, v117, v92, s[2:3]
	s_movk_i32 s2, 0x200
	v_cmp_class_f32_e64 s[2:3], v118, s2
	v_cndmask_b32_e64 v92, v92, v97, s[2:3]
	v_cndmask_b32_e32 v92, v92, v118, vcc
	v_cvt_f64_f32_e32 v[92:93], v92
	v_fma_f32 v97, -v121, v105, v122
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v97, v97, v104, v105
	v_readlane_b32 s0, v172, 18
	v_readlane_b32 s1, v172, 19
	v_fma_f64 v[80:81], v[92:93], s[0:1], v[80:81]
	s_mov_b32 s0, 0x3be56041
	v_mul_f32_e32 v92, s0, v112
	s_mov_b32 s1, 0xbab78034
	v_mul_f32_e32 v93, s1, v115
	v_mul_f32_e32 v104, s0, v113
	v_mul_f32_e32 v105, s0, v114
	s_mov_b32 s0, 0x42380000
	v_mul_f32_e32 v112, s0, v112
	v_mul_f32_e32 v115, s0, v113
	v_mul_f32_e32 v117, s0, v114
	v_cvt_f32_f64_e32 v80, v[80:81]
	v_mul_f32_e32 v81, v84, v89
	v_fma_f32 v118, v82, v89, s5
	v_div_scale_f32 v121, s[0:1], v118, v118, v81
	s_mov_b32 s0, 0x428357e2
	v_mul_f32_e32 v113, s0, v113
	v_mul_f32_e32 v114, s0, v114
	v_div_fixup_f32 v97, v97, v120, v119
	v_fma_f32 v97, v79, v80, -v97
	v_div_scale_f32 v80, vcc, v81, v118, v81
	v_sub_f32_e32 v119, v127, v76
	v_sub_f32_e32 v119, v119, v77
	v_mul_f32_e32 v120, s4, v77
	v_fma_f32 v120, v76, v94, v120
	v_sub_f32_e32 v122, 1.0, v78
	v_sub_f32_e32 v122, v122, v79
	s_mov_b32 s0, 0xc0566666
	v_mul_f32_e32 v125, s0, v79
	v_fma_f32 v125, v78, v94, v125
	s_mov_b32 s0, 0xb76ae18a
	v_mul_f32_e32 v76, s0, v76
	v_rcp_f32_e32 v127, v121
	v_mul_f32_e32 v128, s0, v77
	s_mov_b32 s0, 0xc3a42dda
	v_mul_f32_e32 v77, s0, v78
	s_mov_b32 s0, 0xc00ccccd
	v_mul_f32_e32 v129, s0, v79
	v_fma_f32 v78, -v121, v127, 1.0
	v_fma_f32 v78, v78, v127, v127
	v_mul_f32_e32 v79, v80, v78
	v_fma_f32 v127, -v121, v79, v80
	v_fma_f32 v79, v127, v78, v79
	v_fma_f32 v80, -v121, v79, v80
	v_div_fmas_f32 v80, v80, v78, v79
	v_fma_f32 v92, v92, v119, v93
	v_fma_f32 v104, v104, v119, v76
	s_mov_b32 s0, 0xc4067dd3
	v_mul_f32_e32 v76, s0, v86
	v_fma_f32 v121, v112, v91, v76
	s_mov_b32 s0, 0xc050aa65
	v_mul_f32_e32 v76, s0, v87
	v_fma_f32 v127, v115, v91, v76
	v_sub_f32_e32 v76, v122, v88
	v_sub_f32_e32 v76, v76, v89
	v_sub_f32_e32 v93, v76, v90
	v_fma_f32 v115, v113, v93, v77
	v_mul_f32_e32 v76, v113, v90
	s_mov_b32 s0, 0x43a42dda
	v_fma_f32 v122, v89, s0, -v76
	v_sub_f32_e32 v76, v123, v124
	v_sub_f32_e32 v76, v76, v104
	v_sub_f32_e32 v76, v76, v127
	v_sub_f32_e32 v77, v122, v115
	v_fma_f32 v78, v82, v77, v76
	v_sub_f32_e64 v76, -v123, v92
	v_sub_f32_e32 v76, v76, v121
	v_cvt_f64_f32_e32 v[76:77], v76
	v_cvt_f64_f32_e32 v[78:79], v78
	v_fma_f32 v105, v105, v119, v128
	v_div_fixup_f32 v118, v80, v118, v81
	v_mul_f64 v[76:77], v[76:77], s[36:37]
	v_mul_f64 v[78:79], v[78:79], s[36:37]
	s_mov_b32 s0, 0xbaaa64c3
	v_mul_f32_e32 v80, s0, v85
	v_fma_f32 v117, v117, v91, v80
	v_fma_f32 v113, v114, v93, v129
	v_mul_f32_e32 v80, v114, v90
	s_mov_b32 s0, 0x3b102de0
	v_fma_f32 v119, v88, s0, -v80
	v_sub_f32_e32 v80, v124, v105
	v_sub_f32_e32 v80, v80, v117
	v_sub_f32_e32 v81, v119, v113
	v_fma_f32 v80, v82, v81, v80
	v_cvt_f64_f32_e32 v[80:81], v80
	v_sub_f32_e32 v92, v92, v126
	v_cvt_f64_f32_e32 v[92:93], v92
	v_cvt_f32_f64_e32 v76, v[76:77]
	v_cvt_f32_f64_e32 v77, v[78:79]
	v_mul_f64 v[78:79], v[80:81], s[36:37]
	v_mul_f64 v[80:81], v[92:93], s[36:37]
	v_add_f32_e32 v92, v104, v126
	v_sub_f32_e32 v92, v92, v120
	v_cvt_f64_f32_e32 v[92:93], v92
	v_mul_f32_e32 v84, v84, v90
	v_fma_f32 v90, v82, v90, s5
	v_div_scale_f32 v114, s[0:1], v90, v90, v84
	v_mul_f64 v[92:93], v[92:93], s[36:37]
	v_cvt_f32_f64_e32 v78, v[78:79]
	v_add_f32_e32 v79, v105, v120
	v_cvt_f64_f32_e32 v[104:105], v79
	v_div_scale_f32 v128, vcc, v84, v90, v84
	v_cvt_f32_f64_e32 v79, v[80:81]
	v_mul_f64 v[80:81], v[104:105], s[36:37]
	v_cvt_f32_f64_e32 v112, v[92:93]
	v_sub_f32_e32 v92, v115, v125
	v_add_f32_e32 v92, v118, v92
	v_cvt_f64_f32_e32 v[92:93], v92
	v_add_f32_e32 v104, v113, v125
	v_sub_f32_e32 v104, v104, v97
	v_cvt_f64_f32_e32 v[104:105], v104
	v_rcp_f32_e32 v115, v114
	v_cvt_f32_f64_e32 v113, v[80:81]
	v_mul_f64 v[80:81], v[92:93], s[36:37]
	v_mul_f64 v[92:93], v[104:105], s[36:37]
	v_fma_f32 v104, -v114, v115, 1.0
	v_fma_f32 v104, v104, v115, v115
	v_mul_f32_e32 v105, v128, v104
	v_fma_f32 v115, -v114, v105, v128
	v_fma_f32 v105, v115, v104, v105
	v_fma_f32 v114, -v114, v105, v128
	v_div_fmas_f32 v104, v114, v104, v105
	v_cvt_f32_f64_e32 v114, v[80:81]
	v_cvt_f32_f64_e32 v115, v[92:93]
	s_movk_i32 s0, 0xb8
	v_add_u32_e32 v80, vcc, s0, v74
	v_addc_u32_e32 v81, vcc, 0, v75, vcc
	flat_store_dwordx4 v[80:81], v[76:79]
	s_nop 0
	v_sub_f32_e32 v79, v83, v91
	v_sub_f32_e32 v79, v79, v86
	v_sub_f32_e32 v79, v79, v87
	v_sub_f32_e32 v79, v79, v85
	v_add_f32_e32 v83, v100, v100
	v_fma_f32 v79, v79, v83, -v91
	v_mul_f32_e32 v83, v89, v94
	s_mov_b32 s0, 0x3b5b8bac
	v_fma_f32 v100, v88, s0, -v83
	v_div_fixup_f32 v90, v104, v90, v84
	v_sub_f32_e32 v83, v100, v122
	v_sub_f32_e32 v88, v83, v118
	v_sub_f32_e32 v83, v97, v119
	v_sub_f32_e32 v83, v83, v100
	v_cvt_f64_f32_e32 v[83:84], v83
	v_cvt_f64_f32_e32 v[88:89], v88
	v_add_f32_e32 v91, v119, v122
	v_sub_f32_e32 v90, v91, v90
	v_cvt_f64_f32_e32 v[90:91], v90
	v_sub_f32_e32 v92, v79, v121
	v_sub_f32_e32 v92, v92, v127
	v_sub_f32_e32 v92, v92, v117
	v_cvt_f64_f32_e32 v[92:93], v92
	v_mul_f64 v[83:84], v[83:84], s[36:37]
	v_mul_f64 v[104:105], v[88:89], s[36:37]
	v_mul_f64 v[90:91], v[90:91], s[36:37]
	v_mul_f64 v[92:93], v[92:93], s[36:37]
	s_movk_i32 s0, 0xc8
	v_add_u32_e32 v88, vcc, s0, v74
	v_addc_u32_e32 v89, vcc, 0, v75, vcc
	flat_store_dwordx4 v[88:89], v[112:115]
	v_cvt_f32_f64_e32 v88, v[83:84]
	v_cvt_f32_f64_e32 v89, v[104:105]
	v_cvt_f32_f64_e32 v90, v[90:91]
	v_cvt_f32_f64_e32 v91, v[92:93]
	s_mov_b32 s0, 0xbd783e10
	v_mul_f32_e32 v83, s0, v87
	v_fma_f32 v86, v86, v116, v83
	s_mov_b32 s0, 0xbb82a766
	v_mul_f32_e32 v83, s0, v85
	v_fma_f32 v87, v87, v94, v83
	v_add_f32_e32 v92, v82, v82
	v_sub_f32_e32 v82, v121, v86
	v_cvt_f64_f32_e32 v[82:83], v82
	v_add_f32_e32 v84, v127, v86
	v_sub_f32_e32 v84, v84, v87
	v_cvt_f64_f32_e32 v[84:85], v84
	v_sub_f32_e32 v93, v100, v125
	v_add_f32_e32 v94, v124, v123
	v_add_f32_e32 v94, v126, v94
	v_add_f32_e32 v94, v120, v94
	v_add_f32_e32 v79, v79, v94
	v_add_f32_e32 v79, v86, v79
	v_add_f32_e32 v79, v87, v79
	v_add_f32_e32 v79, v79, v79
	v_fma_f32 v79, v92, v93, -v79
	v_add_f32_e32 v86, v117, v87
	v_cvt_f64_f32_e32 v[86:87], v86
	v_cvt_f64_f32_e32 v[92:93], v79
	v_mul_f64 v[82:83], v[82:83], s[36:37]
	v_mul_f64 v[84:85], v[84:85], s[36:37]
	v_mul_f64 v[86:87], v[86:87], s[36:37]
	v_mul_f64 v[92:93], v[92:93], s[36:37]
	s_movk_i32 s0, 0xd8
	v_add_u32_e32 v104, vcc, s0, v74
	v_addc_u32_e32 v105, vcc, 0, v75, vcc
	flat_store_dwordx4 v[104:105], v[88:91]
	v_cvt_f32_f64_e32 v82, v[82:83]
	v_cvt_f32_f64_e32 v83, v[84:85]
	v_cvt_f32_f64_e32 v84, v[86:87]
	v_cvt_f32_f64_e32 v79, v[92:93]
	s_movk_i32 s0, 0xe8
	v_add_u32_e32 v85, vcc, s0, v74
	v_addc_u32_e32 v86, vcc, 0, v75, vcc
	flat_store_dwordx3 v[85:86], v[82:84]
	flat_store_dword v[74:75], v79
	flat_load_dwordx2 v[119:120], v[15:16]
	flat_load_dwordx4 v[87:90], v[17:18]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_cvt_f64_f32_e32 v[93:94], v119
	v_div_scale_f64 v[82:83], s[0:1], s[18:19], s[18:19], v[93:94]
	v_rcp_f64_e32 v[84:85], v[82:83]
	v_fma_f64 v[91:92], -v[82:83], v[84:85], 1.0
	v_fma_f64 v[84:85], v[84:85], v[91:92], v[84:85]
	v_fma_f64 v[91:92], -v[82:83], v[84:85], 1.0
	v_div_scale_f64 v[104:105], vcc, v[93:94], s[18:19], v[93:94]
	v_fma_f64 v[84:85], v[84:85], v[91:92], v[84:85]
	v_mul_f64 v[91:92], v[104:105], v[84:85]
	v_fma_f64 v[82:83], -v[82:83], v[91:92], v[104:105]
	s_nop 0
	v_div_fmas_f64 v[82:83], v[82:83], v[84:85], v[91:92]
	v_add_u32_e32 v116, vcc, 56, v41
	v_addc_u32_e32 v117, vcc, 0, v42, vcc
	v_add_u32_e32 v84, vcc, 48, v41
	v_addc_u32_e32 v85, vcc, 0, v42, vcc
	v_div_fixup_f64 v[82:83], v[82:83], s[18:19], v[93:94]
	v_add_u32_e32 v104, vcc, 32, v41
	v_addc_u32_e32 v105, vcc, 0, v42, vcc
	v_add_u32_e32 v118, vcc, 16, v41
	v_addc_u32_e32 v119, vcc, 0, v42, vcc
	v_cmp_ge_f32_e32 vcc, 1.0, v120
	v_add_f64 v[121:122], v[82:83], 1.0
	flat_load_dword v86, v[29:30]
	flat_load_dwordx2 v[91:92], v[84:85]
	flat_load_dwordx4 v[112:115], v[104:105]
	s_nop 0
	flat_load_dwordx4 v[82:85], v[118:119]
                                        ; implicit-def: $vgpr104_vgpr105
                                        ; implicit-def: $vgpr123_vgpr124
	flat_load_dword v79, v[116:117]
	s_nop 0
	flat_load_dwordx4 v[116:119], v[41:42]
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_mov_b64 s[86:87], s[20:21]
	s_mov_b64 s[80:81], s[100:101]
	s_cbranch_execz BB1_101
; %bb.100:                              ;   in Loop: Header=BB1_9 Depth=3
	v_cvt_f64_f32_e32 v[123:124], v120
	v_readlane_b32 s4, v172, 0
	v_readlane_b32 s5, v172, 1
	v_div_scale_f64 v[104:105], s[2:3], s[4:5], s[4:5], v[123:124]
	v_rcp_f64_e32 v[125:126], v[104:105]
	v_fma_f64 v[127:128], -v[104:105], v[125:126], 1.0
	v_fma_f64 v[125:126], v[125:126], v[127:128], v[125:126]
	v_fma_f64 v[127:128], -v[104:105], v[125:126], 1.0
	v_fma_f64 v[125:126], v[125:126], v[127:128], v[125:126]
	v_div_scale_f64 v[127:128], vcc, v[123:124], s[4:5], v[123:124]
	v_mul_f64 v[129:130], v[127:128], v[125:126]
	v_fma_f64 v[104:105], -v[104:105], v[129:130], v[127:128]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[104:105], v[104:105], v[125:126], v[129:130]
	v_div_fixup_f64 v[104:105], v[104:105], s[4:5], v[123:124]
	v_add_f64 v[104:105], v[121:122], v[104:105]
	s_mov_b32 s2, s10
	v_readlane_b32 s4, v173, 55
	v_readlane_b32 s5, v173, 56
	s_mov_b32 s3, s5
	v_mul_f64 v[104:105], v[104:105], s[2:3]
	s_mov_b32 s2, s84
	v_readlane_b32 s4, v173, 57
	v_readlane_b32 s5, v173, 58
	s_mov_b32 s3, s5
	v_div_scale_f64 v[125:126], s[4:5], s[2:3], s[2:3], v[93:94]
	v_rcp_f64_e32 v[127:128], v[125:126]
	v_fma_f64 v[129:130], -v[125:126], v[127:128], 1.0
	v_fma_f64 v[127:128], v[127:128], v[129:130], v[127:128]
	v_fma_f64 v[129:130], -v[125:126], v[127:128], 1.0
	v_fma_f64 v[127:128], v[127:128], v[129:130], v[127:128]
	v_div_scale_f64 v[129:130], vcc, v[93:94], s[2:3], v[93:94]
	v_mul_f64 v[131:132], v[129:130], v[127:128]
	v_fma_f64 v[125:126], -v[125:126], v[131:132], v[129:130]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[125:126], v[125:126], v[127:128], v[131:132]
	v_div_fixup_f64 v[125:126], v[125:126], s[2:3], v[93:94]
	v_add_f64 v[125:126], v[125:126], 1.0
	s_mov_b32 s2, s46
	v_readlane_b32 s4, v173, 59
	v_readlane_b32 s5, v173, 60
	s_mov_b32 s3, s5
	v_div_scale_f64 v[127:128], s[4:5], s[2:3], s[2:3], v[123:124]
	v_rcp_f64_e32 v[129:130], v[127:128]
	v_fma_f64 v[131:132], -v[127:128], v[129:130], 1.0
	v_fma_f64 v[129:130], v[129:130], v[131:132], v[129:130]
	v_fma_f64 v[131:132], -v[127:128], v[129:130], 1.0
	v_fma_f64 v[129:130], v[129:130], v[131:132], v[129:130]
	v_div_scale_f64 v[131:132], vcc, v[123:124], s[2:3], v[123:124]
	v_mul_f64 v[133:134], v[131:132], v[129:130]
	v_fma_f64 v[127:128], -v[127:128], v[133:134], v[131:132]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[127:128], v[127:128], v[129:130], v[133:134]
	v_div_fixup_f64 v[127:128], v[127:128], s[2:3], v[123:124]
	v_add_f64 v[125:126], v[125:126], v[127:128]
	v_mul_f64 v[104:105], v[125:126], v[104:105]
	s_mov_b32 s2, s10
	v_readlane_b32 s4, v173, 61
	v_readlane_b32 s5, v173, 62
	s_mov_b32 s3, s5
	v_div_scale_f64 v[125:126], s[4:5], s[2:3], s[2:3], v[93:94]
	v_rcp_f64_e32 v[127:128], v[125:126]
	v_fma_f64 v[129:130], -v[125:126], v[127:128], 1.0
	v_fma_f64 v[127:128], v[127:128], v[129:130], v[127:128]
	v_fma_f64 v[129:130], -v[125:126], v[127:128], 1.0
	v_fma_f64 v[127:128], v[127:128], v[129:130], v[127:128]
	v_div_scale_f64 v[129:130], vcc, v[93:94], s[2:3], v[93:94]
	v_mul_f64 v[131:132], v[129:130], v[127:128]
	v_fma_f64 v[125:126], -v[125:126], v[131:132], v[129:130]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[125:126], v[125:126], v[127:128], v[131:132]
	v_div_fixup_f64 v[125:126], v[125:126], s[2:3], v[93:94]
	v_add_f64 v[125:126], v[125:126], 1.0
	v_readlane_b32 s4, v172, 2
	v_readlane_b32 s5, v172, 3
	v_div_scale_f64 v[127:128], s[2:3], s[4:5], s[4:5], v[123:124]
	v_rcp_f64_e32 v[129:130], v[127:128]
	v_fma_f64 v[131:132], -v[127:128], v[129:130], 1.0
	v_fma_f64 v[129:130], v[129:130], v[131:132], v[129:130]
	v_fma_f64 v[131:132], -v[127:128], v[129:130], 1.0
	v_fma_f64 v[129:130], v[129:130], v[131:132], v[129:130]
	v_div_scale_f64 v[131:132], vcc, v[123:124], s[4:5], v[123:124]
	v_mul_f64 v[133:134], v[131:132], v[129:130]
	v_fma_f64 v[127:128], -v[127:128], v[133:134], v[131:132]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[127:128], v[127:128], v[129:130], v[133:134]
	v_div_fixup_f64 v[127:128], v[127:128], s[4:5], v[123:124]
	v_add_f64 v[125:126], v[125:126], v[127:128]
	s_mov_b32 s2, s36
	v_readlane_b32 s4, v173, 63
	v_readlane_b32 s5, v174, 0
	s_mov_b32 s3, s5
	v_mul_f64 v[125:126], v[125:126], s[2:3]
	s_mov_b32 s2, s25
	v_readlane_b32 s4, v174, 1
	v_readlane_b32 s5, v174, 2
	s_mov_b32 s3, s5
	v_div_scale_f64 v[127:128], s[4:5], s[2:3], s[2:3], v[93:94]
	v_rcp_f64_e32 v[129:130], v[127:128]
	v_fma_f64 v[131:132], -v[127:128], v[129:130], 1.0
	v_fma_f64 v[129:130], v[129:130], v[131:132], v[129:130]
	v_fma_f64 v[131:132], -v[127:128], v[129:130], 1.0
	v_fma_f64 v[129:130], v[129:130], v[131:132], v[129:130]
	v_div_scale_f64 v[131:132], vcc, v[93:94], s[2:3], v[93:94]
	v_mul_f64 v[133:134], v[131:132], v[129:130]
	v_fma_f64 v[127:128], -v[127:128], v[133:134], v[131:132]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[127:128], v[127:128], v[129:130], v[133:134]
	v_div_fixup_f64 v[127:128], v[127:128], s[2:3], v[93:94]
	v_add_f64 v[127:128], v[127:128], 1.0
	v_readlane_b32 s4, v172, 4
	v_readlane_b32 s5, v172, 5
	v_div_scale_f64 v[129:130], s[2:3], s[4:5], s[4:5], v[123:124]
	v_rcp_f64_e32 v[131:132], v[129:130]
	v_fma_f64 v[133:134], -v[129:130], v[131:132], 1.0
	v_fma_f64 v[131:132], v[131:132], v[133:134], v[131:132]
	v_fma_f64 v[133:134], -v[129:130], v[131:132], 1.0
	v_fma_f64 v[131:132], v[131:132], v[133:134], v[131:132]
	v_div_scale_f64 v[133:134], vcc, v[123:124], s[4:5], v[123:124]
	v_mul_f64 v[135:136], v[133:134], v[131:132]
	v_fma_f64 v[129:130], -v[129:130], v[135:136], v[133:134]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[129:130], v[129:130], v[131:132], v[135:136]
	v_div_fixup_f64 v[123:124], v[129:130], s[4:5], v[123:124]
	v_add_f64 v[123:124], v[127:128], v[123:124]
	v_mul_f64 v[123:124], v[123:124], v[125:126]
BB1_101:                                ; %Flow833
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB1_103
; %bb.102:                              ;   in Loop: Header=BB1_9 Depth=3
	v_readlane_b32 s2, v171, 8
	v_readlane_b32 s3, v171, 9
	v_readlane_b32 s4, v174, 3
	v_readlane_b32 s5, v174, 4
	s_mov_b32 s3, s5
	v_add_f64 v[104:105], v[121:122], s[2:3]
	v_add_f32_e32 v97, -1.0, v120
	v_cvt_f64_f32_e32 v[120:121], v97
	v_readlane_b32 s2, v172, 18
	v_readlane_b32 s3, v172, 19
	v_readlane_b32 s4, v174, 5
	v_readlane_b32 s5, v174, 6
	s_mov_b32 s3, s5
	v_div_scale_f64 v[122:123], s[4:5], s[2:3], s[2:3], v[120:121]
	v_rcp_f64_e32 v[124:125], v[122:123]
	v_fma_f64 v[126:127], -v[122:123], v[124:125], 1.0
	v_fma_f64 v[124:125], v[124:125], v[126:127], v[124:125]
	v_fma_f64 v[126:127], -v[122:123], v[124:125], 1.0
	v_fma_f64 v[124:125], v[124:125], v[126:127], v[124:125]
	v_div_scale_f64 v[126:127], vcc, v[120:121], s[2:3], v[120:121]
	v_mul_f64 v[128:129], v[126:127], v[124:125]
	v_fma_f64 v[122:123], -v[122:123], v[128:129], v[126:127]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[122:123], v[122:123], v[124:125], v[128:129]
	v_div_fixup_f64 v[122:123], v[122:123], s[2:3], v[120:121]
	v_add_f64 v[104:105], v[104:105], v[122:123]
	s_mov_b32 s2, s10
	v_readlane_b32 s4, v173, 55
	v_readlane_b32 s5, v173, 56
	s_mov_b32 s3, s5
	v_mul_f64 v[104:105], v[104:105], s[2:3]
	s_mov_b32 s2, s84
	v_readlane_b32 s4, v173, 57
	v_readlane_b32 s5, v173, 58
	s_mov_b32 s3, s5
	v_div_scale_f64 v[122:123], s[4:5], s[2:3], s[2:3], v[93:94]
	v_rcp_f64_e32 v[124:125], v[122:123]
	v_fma_f64 v[126:127], -v[122:123], v[124:125], 1.0
	v_fma_f64 v[124:125], v[124:125], v[126:127], v[124:125]
	v_fma_f64 v[126:127], -v[122:123], v[124:125], 1.0
	v_fma_f64 v[124:125], v[124:125], v[126:127], v[124:125]
	v_div_scale_f64 v[126:127], vcc, v[93:94], s[2:3], v[93:94]
	v_mul_f64 v[128:129], v[126:127], v[124:125]
	v_fma_f64 v[122:123], -v[122:123], v[128:129], v[126:127]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[122:123], v[122:123], v[124:125], v[128:129]
	v_div_fixup_f64 v[122:123], v[122:123], s[2:3], v[93:94]
	v_add_f64 v[122:123], v[122:123], 1.0
	v_readlane_b32 s2, v172, 6
	v_readlane_b32 s3, v172, 7
	v_add_f64 v[122:123], v[122:123], s[2:3]
	v_readlane_b32 s4, v172, 8
	v_readlane_b32 s5, v172, 9
	v_div_scale_f64 v[124:125], s[2:3], s[4:5], s[4:5], v[120:121]
	v_rcp_f64_e32 v[126:127], v[124:125]
	v_fma_f64 v[128:129], -v[124:125], v[126:127], 1.0
	v_fma_f64 v[126:127], v[126:127], v[128:129], v[126:127]
	v_fma_f64 v[128:129], -v[124:125], v[126:127], 1.0
	v_fma_f64 v[126:127], v[126:127], v[128:129], v[126:127]
	v_div_scale_f64 v[128:129], vcc, v[120:121], s[4:5], v[120:121]
	v_mul_f64 v[130:131], v[128:129], v[126:127]
	v_fma_f64 v[124:125], -v[124:125], v[130:131], v[128:129]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[124:125], v[124:125], v[126:127], v[130:131]
	v_div_fixup_f64 v[124:125], v[124:125], s[4:5], v[120:121]
	v_add_f64 v[122:123], v[122:123], v[124:125]
	v_mul_f64 v[104:105], v[122:123], v[104:105]
	s_mov_b32 s2, s10
	v_readlane_b32 s4, v173, 61
	v_readlane_b32 s5, v173, 62
	s_mov_b32 s3, s5
	v_div_scale_f64 v[122:123], s[4:5], s[2:3], s[2:3], v[93:94]
	v_rcp_f64_e32 v[124:125], v[122:123]
	v_fma_f64 v[126:127], -v[122:123], v[124:125], 1.0
	v_fma_f64 v[124:125], v[124:125], v[126:127], v[124:125]
	v_fma_f64 v[126:127], -v[122:123], v[124:125], 1.0
	v_fma_f64 v[124:125], v[124:125], v[126:127], v[124:125]
	v_div_scale_f64 v[126:127], vcc, v[93:94], s[2:3], v[93:94]
	v_mul_f64 v[128:129], v[126:127], v[124:125]
	v_fma_f64 v[122:123], -v[122:123], v[128:129], v[126:127]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[122:123], v[122:123], v[124:125], v[128:129]
	v_div_fixup_f64 v[122:123], v[122:123], s[2:3], v[93:94]
	v_add_f64 v[122:123], v[122:123], 1.0
	v_readlane_b32 s2, v172, 10
	v_readlane_b32 s3, v172, 11
	v_add_f64 v[122:123], v[122:123], s[2:3]
	s_mov_b32 s2, s10
	v_readlane_b32 s4, v174, 7
	v_readlane_b32 s5, v174, 8
	s_mov_b32 s3, s5
	v_div_scale_f64 v[124:125], s[4:5], s[2:3], s[2:3], v[120:121]
	v_rcp_f64_e32 v[126:127], v[124:125]
	v_fma_f64 v[128:129], -v[124:125], v[126:127], 1.0
	v_fma_f64 v[126:127], v[126:127], v[128:129], v[126:127]
	v_fma_f64 v[128:129], -v[124:125], v[126:127], 1.0
	v_fma_f64 v[126:127], v[126:127], v[128:129], v[126:127]
	v_div_scale_f64 v[128:129], vcc, v[120:121], s[2:3], v[120:121]
	v_mul_f64 v[130:131], v[128:129], v[126:127]
	v_fma_f64 v[124:125], -v[124:125], v[130:131], v[128:129]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[124:125], v[124:125], v[126:127], v[130:131]
	v_div_fixup_f64 v[124:125], v[124:125], s[2:3], v[120:121]
	v_add_f64 v[122:123], v[122:123], v[124:125]
	s_mov_b32 s2, s36
	v_readlane_b32 s4, v173, 63
	v_readlane_b32 s5, v174, 0
	s_mov_b32 s3, s5
	v_mul_f64 v[122:123], v[122:123], s[2:3]
	s_mov_b32 s2, s25
	v_readlane_b32 s4, v174, 1
	v_readlane_b32 s5, v174, 2
	s_mov_b32 s3, s5
	v_div_scale_f64 v[124:125], s[4:5], s[2:3], s[2:3], v[93:94]
	v_rcp_f64_e32 v[126:127], v[124:125]
	v_fma_f64 v[128:129], -v[124:125], v[126:127], 1.0
	v_fma_f64 v[126:127], v[126:127], v[128:129], v[126:127]
	v_fma_f64 v[128:129], -v[124:125], v[126:127], 1.0
	v_fma_f64 v[126:127], v[126:127], v[128:129], v[126:127]
	v_div_scale_f64 v[128:129], vcc, v[93:94], s[2:3], v[93:94]
	v_mul_f64 v[130:131], v[128:129], v[126:127]
	v_fma_f64 v[124:125], -v[124:125], v[130:131], v[128:129]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[124:125], v[124:125], v[126:127], v[130:131]
	v_div_fixup_f64 v[93:94], v[124:125], s[2:3], v[93:94]
	v_add_f64 v[93:94], v[93:94], 1.0
	v_readlane_b32 s2, v172, 12
	v_readlane_b32 s3, v172, 13
	v_add_f64 v[93:94], v[93:94], s[2:3]
	s_mov_b32 s2, s84
	v_readlane_b32 s4, v174, 9
	v_readlane_b32 s5, v174, 10
	s_mov_b32 s3, s5
	v_div_scale_f64 v[124:125], s[4:5], s[2:3], s[2:3], v[120:121]
	v_rcp_f64_e32 v[126:127], v[124:125]
	v_fma_f64 v[128:129], -v[124:125], v[126:127], 1.0
	v_fma_f64 v[126:127], v[126:127], v[128:129], v[126:127]
	v_fma_f64 v[128:129], -v[124:125], v[126:127], 1.0
	v_fma_f64 v[126:127], v[126:127], v[128:129], v[126:127]
	v_div_scale_f64 v[128:129], vcc, v[120:121], s[2:3], v[120:121]
	v_mul_f64 v[130:131], v[128:129], v[126:127]
	v_fma_f64 v[124:125], -v[124:125], v[130:131], v[128:129]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[124:125], v[124:125], v[126:127], v[130:131]
	v_div_fixup_f64 v[120:121], v[124:125], s[2:3], v[120:121]
	v_add_f64 v[93:94], v[93:94], v[120:121]
	v_mul_f64 v[123:124], v[93:94], v[122:123]
BB1_103:                                ; %_Z12kernel_cam_2fPfS_iS_iS_if.exit85.i.i
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_or_b64 exec, exec, s[0:1]
	v_cvt_f32_f64_e32 v93, v[104:105]
	v_cvt_f32_f64_e32 v94, v[123:124]
	v_div_scale_f32 v97, s[0:1], v93, v93, s24
	s_mov_b32 s4, 0x43fa0000
	v_div_scale_f32 v100, s[0:1], v94, v94, s4
	v_div_scale_f32 v104, vcc, s24, v93, s24
	v_div_scale_f32 v105, s[0:1], s4, v94, s4
	s_mov_b32 s2, 0x447a0000
	s_waitcnt vmcnt(5) lgkmcnt(5)
	v_mul_f32_e32 v86, s2, v86
	v_frexp_mant_f32_e64 v120, |v86|
	v_rcp_f32_e32 v121, v97
	v_rcp_f32_e32 v122, v100
	v_cmp_gt_f32_e64 s[2:3], s42, v120
	v_cndmask_b32_e64 v123, 0, 1, s[2:3]
	v_fma_f32 v124, -v97, v121, 1.0
	v_fma_f32 v125, -v100, v122, 1.0
	v_fma_f32 v121, v124, v121, v121
	v_fma_f32 v122, v125, v122, v122
	v_mul_f32_e32 v124, v104, v121
	v_mul_f32_e32 v125, v105, v122
	v_fma_f32 v126, -v97, v124, v104
	v_fma_f32 v127, -v100, v125, v105
	v_fma_f32 v124, v126, v121, v124
	v_fma_f32 v125, v127, v122, v125
	v_fma_f32 v97, -v97, v124, v104
	v_fma_f32 v100, -v100, v125, v105
	v_div_fmas_f32 v97, v97, v121, v124
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v100, v100, v122, v125
	v_ldexp_f32 v104, v120, v123
	v_add_f32_e32 v105, 1.0, v104
	v_sub_f32_e32 v120, v105, v104
	v_sub_f32_e32 v121, v105, v120
	v_sub_f32_e32 v121, v104, v121
	v_rcp_f32_e32 v122, v105
	v_sub_f32_e32 v120, 1.0, v120
	v_add_f32_e32 v120, v120, v121
	v_add_f32_e32 v104, -1.0, v104
	v_mul_f32_e32 v121, v104, v122
	v_mul_f32_e32 v123, v105, v121
	v_fma_f32 v105, v121, v105, -v123
	v_fma_f32 v105, v121, v120, v105
	v_add_f32_e32 v120, v123, v105
	v_sub_f32_e32 v123, v120, v123
	v_sub_f32_e32 v105, v105, v123
	v_sub_f32_e32 v123, v104, v120
	v_sub_f32_e32 v104, v104, v123
	v_sub_f32_e32 v104, v104, v120
	v_sub_f32_e32 v104, v104, v105
	v_add_f32_e32 v104, v123, v104
	v_mul_f32_e32 v104, v122, v104
	v_add_f32_e32 v105, v121, v104
	v_sub_f32_e32 v120, v105, v121
	v_sub_f32_e32 v104, v104, v120
	v_mul_f32_e32 v120, v105, v105
	v_add_f32_e32 v121, v104, v104
	v_fma_f32 v122, v105, v105, -v120
	v_fma_f32 v121, v105, v121, v122
	v_fma_f32 v121, v104, v104, v121
	v_frexp_exp_i32_f32_e64 v122, |v86|
	v_subbrev_u32_e64 v122, vcc, 0, v122, s[2:3]
	v_cvt_f32_i32_e32 v122, v122
	v_add_f32_e32 v123, v120, v121
	v_sub_f32_e32 v120, v123, v120
	v_sub_f32_e32 v120, v121, v120
	v_mul_f32_e32 v121, s45, v122
	v_fma_f32 v124, v122, s45, -v121
	v_fma_f32 v122, v122, s44, v124
	v_add_f32_e32 v124, v121, v122
	v_sub_f32_e32 v121, v124, v121
	v_sub_f32_e32 v121, v122, v121
	v_mov_b32_e32 v122, s15
	v_fma_f32 v125, v123, s48, v122
	v_fma_f32 v125, v123, v125, s93
	v_mul_f32_e32 v126, v123, v125
	v_fma_f32 v127, v123, v125, -v126
	v_fma_f32 v125, v120, v125, v127
	v_mul_f32_e32 v120, v105, v120
	v_fma_f32 v120, v123, v104, v120
	v_mul_f32_e32 v127, v105, v123
	v_fma_f32 v123, v123, v105, -v127
	v_add_f32_e32 v120, v123, v120
	v_add_f32_e32 v123, v126, v125
	v_sub_f32_e32 v126, v123, v126
	v_sub_f32_e32 v125, v125, v126
	v_add_f32_e32 v126, s28, v123
	v_add_f32_e32 v128, s41, v126
	v_sub_f32_e32 v123, v123, v128
	v_add_f32_e32 v125, s49, v125
	v_add_f32_e32 v123, v123, v125
	v_add_f32_e32 v125, v126, v123
	v_sub_f32_e32 v126, v125, v126
	v_sub_f32_e32 v123, v123, v126
	v_add_f32_e32 v126, v127, v120
	v_sub_f32_e32 v127, v126, v127
	v_sub_f32_e32 v120, v120, v127
	v_mul_f32_e32 v120, v120, v125
	v_fma_f32 v120, v126, v123, v120
	v_mul_f32_e32 v123, v126, v125
	v_fma_f32 v125, v126, v125, -v123
	v_add_f32_e32 v120, v125, v120
	v_add_f32_e32 v125, v123, v120
	v_sub_f32_e32 v123, v125, v123
	v_sub_f32_e32 v120, v120, v123
	v_ldexp_f32 v105, v105, 1
	v_add_f32_e32 v123, v105, v125
	v_sub_f32_e32 v105, v123, v105
	v_sub_f32_e32 v105, v125, v105
	v_ldexp_f32 v104, v104, 1
	v_add_f32_e32 v104, v104, v120
	v_add_f32_e32 v104, v105, v104
	v_add_f32_e32 v105, v123, v104
	v_sub_f32_e32 v120, v105, v123
	v_sub_f32_e32 v104, v104, v120
	v_add_f32_e32 v120, v124, v105
	v_sub_f32_e32 v123, v120, v124
	v_sub_f32_e32 v125, v120, v123
	v_sub_f32_e32 v124, v124, v125
	v_sub_f32_e32 v105, v105, v123
	v_add_f32_e32 v105, v105, v124
	v_add_f32_e32 v123, v121, v104
	v_sub_f32_e32 v124, v123, v121
	v_sub_f32_e32 v125, v123, v124
	v_sub_f32_e32 v121, v121, v125
	v_sub_f32_e32 v104, v104, v124
	v_add_f32_e32 v104, v104, v121
	v_add_f32_e32 v105, v123, v105
	v_add_f32_e32 v121, v120, v105
	v_sub_f32_e32 v120, v121, v120
	v_sub_f32_e32 v105, v105, v120
	v_add_f32_e32 v104, v104, v105
	v_add_f32_e32 v105, v121, v104
	v_sub_f32_e32 v120, v105, v121
	v_sub_f32_e32 v104, v104, v120
	v_mul_f32_e32 v120, 0, v105
	v_fma_f32 v104, v104, 2.0, v120
	v_add_f32_e32 v120, v105, v105
	v_fma_f32 v105, v105, 2.0, -v120
	v_add_f32_e32 v104, v105, v104
	v_add_f32_e32 v105, v120, v104
	v_sub_f32_e32 v121, v105, v120
	v_sub_f32_e32 v104, v104, v121
	v_cmp_class_f32_e64 vcc, v120, s92
	v_cndmask_b32_e32 v105, v105, v120, vcc
	v_mul_f32_e32 v120, s26, v105
	v_rndne_f32_e32 v120, v120
	v_mul_f32_e32 v121, s31, v120
	v_sub_f32_e32 v123, v105, v121
	v_sub_f32_e32 v124, v123, v105
	v_add_f32_e32 v121, v121, v124
	v_sub_f32_e32 v124, v123, v124
	v_sub_f32_e32 v124, v105, v124
	v_sub_f32_e32 v121, v124, v121
	v_cmp_neq_f32_e64 vcc, |v105|, s94
	v_cndmask_b32_e32 v104, 0, v104, vcc
	v_add_f32_e32 v104, v104, v121
	v_add_f32_e32 v121, v123, v104
	v_sub_f32_e32 v123, v121, v123
	v_sub_f32_e32 v104, v104, v123
	v_mul_f32_e32 v123, s30, v120
	v_sub_f32_e32 v124, v121, v123
	v_sub_f32_e32 v121, v121, v124
	v_sub_f32_e32 v121, v121, v123
	v_add_f32_e32 v104, v104, v121
	v_add_f32_e32 v121, v124, v104
	v_sub_f32_e32 v123, v121, v124
	v_sub_f32_e32 v104, v104, v123
	v_mul_f32_e32 v123, s29, v120
	v_sub_f32_e32 v124, v121, v123
	v_sub_f32_e32 v121, v121, v124
	v_sub_f32_e32 v121, v121, v123
	v_add_f32_e32 v104, v104, v121
	v_add_f32_e32 v121, v124, v104
	v_sub_f32_e32 v123, v121, v124
	v_sub_f32_e32 v104, v104, v123
	v_mul_f32_e32 v123, v121, v121
	v_fma_f32 v124, v121, v121, -v123
	v_add_f32_e32 v125, v104, v104
	v_fma_f32 v124, v121, v125, v124
	v_fma_f32 v124, v104, v104, v124
	v_add_f32_e32 v125, v123, v124
	v_sub_f32_e32 v123, v125, v123
	v_sub_f32_e32 v123, v124, v123
	v_mov_b32_e32 v124, s6
	v_fma_f32 v126, v121, s27, v124
	v_fma_f32 v126, v121, v126, s40
	v_fma_f32 v126, v121, v126, s35
	v_fma_f32 v126, v121, v126, s91
	v_mul_f32_e32 v127, v126, v125
	v_fma_f32 v125, v125, v126, -v127
	v_fma_f32 v123, v123, v126, v125
	v_div_fixup_f32 v93, v97, v93, s24
	v_div_fixup_f32 v97, v100, v94, s4
	v_add_f32_e32 v94, v127, v123
	v_sub_f32_e32 v100, v94, v127
	v_sub_f32_e32 v100, v123, v100
	v_add_f32_e32 v123, v121, v94
	v_sub_f32_e32 v121, v123, v121
	v_sub_f32_e32 v94, v94, v121
	v_add_f32_e32 v100, v104, v100
	v_cvt_i32_f32_e32 v104, v120
	v_add_f32_e32 v94, v94, v100
	v_add_f32_e32 v94, v123, v94
	v_add_f32_e32 v94, 1.0, v94
	v_ldexp_f32 v94, v94, v104
	v_cmp_ngt_f32_e32 vcc, s95, v105
	v_mov_b32_e32 v100, s94
	v_cmp_nlt_f32_e64 s[0:1], s34, v105
	v_cndmask_b32_e64 v94, v100, v94, s[0:1]
	v_cmp_neq_f32_e64 s[0:1], 0, v86
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v94, 0, v94, vcc
	v_cmp_class_f32_e64 vcc, v86, s92
	v_cndmask_b32_e32 v94, v94, v100, vcc
	v_cmp_u_f32_e32 vcc, v86, v86
	v_cndmask_b32_e64 v120, |v94|, v86, vcc
	v_mul_f32_e32 v123, v120, v93
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_add_f32_e32 v86, v85, v112
	v_add_f32_e32 v86, v86, v113
	v_add_f32_e32 v121, v86, v114
	v_frexp_mant_f32_e64 v86, |v121|
	v_cmp_gt_f32_e32 vcc, s42, v86
	v_cndmask_b32_e64 v93, 0, 1, vcc
	v_ldexp_f32 v86, v86, v93
	v_add_f32_e32 v93, 1.0, v86
	v_sub_f32_e32 v94, v93, v86
	v_sub_f32_e32 v104, v93, v94
	v_sub_f32_e32 v104, v86, v104
	v_rcp_f32_e32 v105, v93
	v_sub_f32_e32 v94, 1.0, v94
	v_add_f32_e32 v94, v94, v104
	v_add_f32_e32 v86, -1.0, v86
	v_mul_f32_e32 v104, v86, v105
	v_mul_f32_e32 v125, v93, v104
	v_fma_f32 v93, v104, v93, -v125
	v_fma_f32 v93, v104, v94, v93
	v_add_f32_e32 v94, v125, v93
	v_sub_f32_e32 v125, v94, v125
	v_sub_f32_e32 v93, v93, v125
	v_sub_f32_e32 v125, v86, v94
	v_sub_f32_e32 v86, v86, v125
	v_sub_f32_e32 v86, v86, v94
	v_sub_f32_e32 v86, v86, v93
	v_add_f32_e32 v86, v125, v86
	v_mul_f32_e32 v86, v105, v86
	v_add_f32_e32 v93, v104, v86
	v_sub_f32_e32 v94, v93, v104
	v_sub_f32_e32 v86, v86, v94
	v_mul_f32_e32 v94, v93, v93
	v_add_f32_e32 v104, v86, v86
	v_fma_f32 v105, v93, v93, -v94
	v_fma_f32 v104, v93, v104, v105
	v_fma_f32 v104, v86, v86, v104
	v_frexp_exp_i32_f32_e64 v105, |v121|
	v_subbrev_u32_e32 v105, vcc, 0, v105, vcc
	v_cvt_f32_i32_e32 v105, v105
	v_add_f32_e32 v125, v94, v104
	v_sub_f32_e32 v94, v125, v94
	v_sub_f32_e32 v94, v104, v94
	v_mul_f32_e32 v104, s45, v105
	v_fma_f32 v126, v105, s45, -v104
	v_fma_f32 v105, v105, s44, v126
	v_add_f32_e32 v126, v104, v105
	v_sub_f32_e32 v104, v126, v104
	v_sub_f32_e32 v104, v105, v104
	v_fma_f32 v105, v125, s48, v122
	v_fma_f32 v105, v125, v105, s93
	v_mul_f32_e32 v122, v125, v105
	v_fma_f32 v127, v125, v105, -v122
	v_fma_f32 v105, v94, v105, v127
	v_mul_f32_e32 v94, v93, v94
	v_fma_f32 v94, v125, v86, v94
	v_mul_f32_e32 v127, v93, v125
	v_fma_f32 v125, v125, v93, -v127
	v_add_f32_e32 v94, v125, v94
	v_add_f32_e32 v125, v122, v105
	v_sub_f32_e32 v122, v125, v122
	v_sub_f32_e32 v105, v105, v122
	v_add_f32_e32 v122, s28, v125
	v_add_f32_e32 v128, s41, v122
	v_sub_f32_e32 v125, v125, v128
	v_add_f32_e32 v105, s49, v105
	v_add_f32_e32 v105, v125, v105
	v_add_f32_e32 v125, v122, v105
	v_sub_f32_e32 v122, v125, v122
	v_sub_f32_e32 v105, v105, v122
	v_add_f32_e32 v122, v127, v94
	v_sub_f32_e32 v127, v122, v127
	v_sub_f32_e32 v94, v94, v127
	v_mul_f32_e32 v94, v94, v125
	v_fma_f32 v94, v122, v105, v94
	v_mul_f32_e32 v105, v122, v125
	v_fma_f32 v122, v122, v125, -v105
	v_add_f32_e32 v94, v122, v94
	v_add_f32_e32 v122, v105, v94
	v_sub_f32_e32 v105, v122, v105
	v_sub_f32_e32 v94, v94, v105
	v_ldexp_f32 v93, v93, 1
	v_add_f32_e32 v105, v93, v122
	v_sub_f32_e32 v93, v105, v93
	v_sub_f32_e32 v93, v122, v93
	v_ldexp_f32 v86, v86, 1
	v_add_f32_e32 v86, v86, v94
	v_add_f32_e32 v86, v93, v86
	v_add_f32_e32 v93, v105, v86
	v_sub_f32_e32 v94, v93, v105
	v_sub_f32_e32 v86, v86, v94
	v_add_f32_e32 v94, v126, v93
	v_sub_f32_e32 v105, v94, v126
	v_sub_f32_e32 v122, v94, v105
	v_sub_f32_e32 v122, v126, v122
	v_sub_f32_e32 v93, v93, v105
	v_add_f32_e32 v93, v93, v122
	v_add_f32_e32 v105, v104, v86
	v_sub_f32_e32 v122, v105, v104
	v_sub_f32_e32 v125, v105, v122
	v_sub_f32_e32 v104, v104, v125
	v_sub_f32_e32 v86, v86, v122
	v_add_f32_e32 v86, v86, v104
	v_add_f32_e32 v93, v105, v93
	v_add_f32_e32 v104, v94, v93
	v_sub_f32_e32 v94, v104, v94
	v_sub_f32_e32 v93, v93, v94
	v_add_f32_e32 v86, v86, v93
	v_add_f32_e32 v93, v104, v86
	v_sub_f32_e32 v94, v93, v104
	v_sub_f32_e32 v86, v86, v94
	v_add_f32_e32 v94, v93, v93
	v_fma_f32 v104, v93, 2.0, -v94
	v_mul_f32_e32 v105, 0, v93
	v_fma_f32 v122, v86, 2.0, v105
	v_add_f32_e32 v104, v104, v122
	v_add_f32_e32 v122, v94, v104
	v_sub_f32_e32 v125, v122, v94
	v_sub_f32_e32 v104, v104, v125
	v_cmp_class_f32_e64 vcc, v94, s92
	v_cndmask_b32_e32 v94, v122, v94, vcc
	v_mul_f32_e32 v122, s26, v94
	v_rndne_f32_e32 v122, v122
	v_mul_f32_e32 v125, s31, v122
	v_sub_f32_e32 v126, v94, v125
	v_sub_f32_e32 v127, v126, v94
	v_add_f32_e32 v125, v125, v127
	v_sub_f32_e32 v127, v126, v127
	v_sub_f32_e32 v127, v94, v127
	v_sub_f32_e32 v125, v127, v125
	v_cmp_neq_f32_e64 vcc, |v94|, s94
	v_cndmask_b32_e32 v104, 0, v104, vcc
	v_add_f32_e32 v104, v104, v125
	v_add_f32_e32 v125, v126, v104
	v_sub_f32_e32 v126, v125, v126
	v_sub_f32_e32 v104, v104, v126
	v_mul_f32_e32 v126, s30, v122
	v_sub_f32_e32 v127, v125, v126
	v_sub_f32_e32 v125, v125, v127
	v_sub_f32_e32 v125, v125, v126
	v_add_f32_e32 v104, v104, v125
	v_add_f32_e32 v125, v127, v104
	v_sub_f32_e32 v126, v125, v127
	v_sub_f32_e32 v104, v104, v126
	v_mul_f32_e32 v126, s29, v122
	v_sub_f32_e32 v127, v125, v126
	v_sub_f32_e32 v125, v125, v127
	v_sub_f32_e32 v125, v125, v126
	v_add_f32_e32 v104, v104, v125
	v_add_f32_e32 v125, v127, v104
	v_sub_f32_e32 v126, v125, v127
	v_sub_f32_e32 v104, v104, v126
	v_mul_f32_e32 v126, v125, v125
	v_fma_f32 v127, v125, v125, -v126
	v_add_f32_e32 v128, v104, v104
	v_fma_f32 v127, v125, v128, v127
	v_fma_f32 v127, v104, v104, v127
	v_add_f32_e32 v128, v126, v127
	v_sub_f32_e32 v126, v128, v126
	v_sub_f32_e32 v126, v127, v126
	v_fma_f32 v127, v125, s27, v124
	v_fma_f32 v127, v125, v127, s40
	v_fma_f32 v127, v125, v127, s35
	v_fma_f32 v127, v125, v127, s91
	v_mul_f32_e32 v129, v127, v128
	v_fma_f32 v128, v128, v127, -v129
	v_fma_f32 v126, v126, v127, v128
	v_fma_f32 v86, v86, s61, v105
	v_mul_f32_e32 v105, s61, v93
	v_fma_f32 v93, v93, s61, -v105
	v_add_f32_e32 v86, v93, v86
	v_add_f32_e32 v93, v105, v86
	v_sub_f32_e32 v127, v93, v105
	v_sub_f32_e32 v86, v86, v127
	v_cmp_class_f32_e64 vcc, v105, s92
	v_cndmask_b32_e32 v93, v93, v105, vcc
	v_mul_f32_e32 v105, s26, v93
	v_rndne_f32_e32 v105, v105
	v_mul_f32_e32 v127, s31, v105
	v_sub_f32_e32 v128, v93, v127
	v_sub_f32_e32 v130, v128, v93
	v_add_f32_e32 v127, v127, v130
	v_sub_f32_e32 v130, v128, v130
	v_sub_f32_e32 v130, v93, v130
	v_sub_f32_e32 v127, v130, v127
	v_cmp_neq_f32_e64 vcc, |v93|, s94
	v_cndmask_b32_e32 v86, 0, v86, vcc
	v_add_f32_e32 v86, v86, v127
	v_add_f32_e32 v127, v128, v86
	v_sub_f32_e32 v128, v127, v128
	v_sub_f32_e32 v86, v86, v128
	v_mul_f32_e32 v128, s30, v105
	v_sub_f32_e32 v130, v127, v128
	v_sub_f32_e32 v127, v127, v130
	v_sub_f32_e32 v127, v127, v128
	v_add_f32_e32 v86, v86, v127
	v_add_f32_e32 v127, v130, v86
	v_sub_f32_e32 v128, v127, v130
	v_sub_f32_e32 v86, v86, v128
	v_mul_f32_e32 v128, s29, v105
	v_sub_f32_e32 v130, v127, v128
	v_sub_f32_e32 v127, v127, v130
	v_sub_f32_e32 v127, v127, v128
	v_add_f32_e32 v86, v86, v127
	v_add_f32_e32 v127, v130, v86
	v_sub_f32_e32 v128, v127, v130
	v_sub_f32_e32 v86, v86, v128
	v_mul_f32_e32 v128, v127, v127
	v_fma_f32 v130, v127, v127, -v128
	v_add_f32_e32 v131, v86, v86
	v_fma_f32 v130, v127, v131, v130
	v_fma_f32 v130, v86, v86, v130
	v_add_f32_e32 v131, v128, v130
	v_sub_f32_e32 v128, v131, v128
	v_sub_f32_e32 v128, v130, v128
	v_fma_f32 v124, v127, s27, v124
	v_fma_f32 v124, v127, v124, s40
	v_fma_f32 v124, v127, v124, s35
	v_fma_f32 v124, v127, v124, s91
	v_mul_f32_e32 v130, v124, v131
	v_fma_f32 v131, v131, v124, -v130
	v_fma_f32 v124, v128, v124, v131
	v_add_f32_e32 v128, v129, v126
	v_sub_f32_e32 v129, v128, v129
	v_sub_f32_e32 v126, v126, v129
	v_add_f32_e32 v129, v125, v128
	v_sub_f32_e32 v125, v129, v125
	v_sub_f32_e32 v125, v128, v125
	v_add_f32_e32 v104, v104, v126
	v_cvt_i32_f32_e32 v122, v122
	v_add_f32_e32 v104, v125, v104
	v_add_f32_e32 v104, v129, v104
	v_add_f32_e32 v104, 1.0, v104
	v_ldexp_f32 v104, v104, v122
	v_add_f32_e32 v122, v130, v124
	v_sub_f32_e32 v125, v122, v130
	v_sub_f32_e32 v124, v124, v125
	v_add_f32_e32 v125, v127, v122
	v_sub_f32_e32 v126, v125, v127
	v_sub_f32_e32 v122, v122, v126
	v_add_f32_e32 v86, v86, v124
	v_cvt_i32_f32_e32 v105, v105
	v_add_f32_e32 v86, v122, v86
	v_add_f32_e32 v86, v125, v86
	v_add_f32_e32 v86, 1.0, v86
	v_ldexp_f32 v86, v86, v105
	v_cmp_nlt_f32_e32 vcc, s34, v93
	v_cndmask_b32_e32 v86, v100, v86, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v93
	v_cndmask_b32_e32 v86, 0, v86, vcc
	v_mov_b32_e32 v93, s14
	v_cmp_gt_f32_e32 vcc, 0, v121
	v_cndmask_b32_e32 v93, 0, v93, vcc
	v_bfi_b32 v86, s90, v86, v93
	v_bfi_b32 v93, s90, 0, v121
	v_cmp_eq_f32_e32 vcc, 0, v121
	v_cndmask_b32_e32 v122, v86, v93, vcc
	v_cmp_gt_f32_e64 s[0:1], s95, v94
	v_cmp_nlt_f32_e64 s[2:3], s34, v94
	v_cndmask_b32_e64 v86, v100, v104, s[2:3]
	s_or_b64 s[0:1], vcc, s[0:1]
	v_cndmask_b32_e64 v86, v86, 0, s[0:1]
	s_mov_b32 s0, 0x3fdc28f6
	v_mul_f32_e32 v90, s0, v90
	v_mul_f32_e32 v124, v90, v112
	s_mov_b32 s5, 0x41380000
	v_fma_f32 v125, v88, v112, s5
	v_div_scale_f32 v126, s[0:1], v125, v125, v124
	v_cmp_class_f32_e64 vcc, v121, s92
	v_cndmask_b32_e32 v86, v86, v100, vcc
	v_cmp_u_f32_e32 vcc, v121, v121
	v_cndmask_b32_e64 v86, |v86|, v121, vcc
	v_div_scale_f32 v127, s[0:1], v124, v125, v124
	v_cvt_f64_f32_e32 v[93:94], v86
	s_mov_b32 s2, 0xc1200000
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v86, s2, v117
	v_fma_f32 v128, v116, v123, v86
	v_mul_f32_e32 v97, v120, v97
	v_readlane_b32 s2, v172, 14
	v_readlane_b32 s3, v172, 15
	v_mul_f64 v[93:94], v[93:94], s[2:3]
	s_mov_b32 s4, 0xc3fa0000
	v_mul_f32_e32 v86, s4, v118
	v_fma_f32 v129, v117, v97, v86
	s_mov_b32 s2, 0xbdcccccd
	v_mul_f32_e32 v86, s2, v82
	v_cvt_f64_f32_e32 v[104:105], v121
	v_rcp_f32_e32 v130, v126
	v_fma_f32 v131, v119, v123, v86
	v_sub_f32_e32 v132, v87, v119
	v_readlane_b32 s2, v172, 16
	v_readlane_b32 s3, v172, 17
	v_fma_f64 v[86:87], v[104:105], s[2:3], v[93:94]
	v_fma_f32 v93, -v126, v130, 1.0
	v_fma_f32 v104, v93, v130, v130
	v_mul_f32_e32 v93, v127, v104
	v_fma_f32 v94, -v126, v93, v127
	v_fma_f32 v105, v94, v104, v93
	s_mov_b32 s2, 0xff800000
	v_mov_b32_e32 v93, s2
	v_cmp_class_f32_e64 s[2:3], v121, 4
	v_cndmask_b32_e64 v93, v122, v93, s[2:3]
	s_movk_i32 s2, 0x200
	v_cmp_class_f32_e64 s[2:3], v121, s2
	v_cndmask_b32_e64 v93, v93, v100, s[2:3]
	v_cndmask_b32_e32 v93, v93, v121, vcc
	v_cvt_f64_f32_e32 v[93:94], v93
	v_fma_f32 v100, -v126, v105, v127
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v100, v100, v104, v105
	v_readlane_b32 s0, v172, 18
	v_readlane_b32 s1, v172, 19
	v_fma_f64 v[86:87], v[93:94], s[0:1], v[86:87]
	s_mov_b32 s0, 0x3be56041
	v_mul_f32_e32 v93, s0, v116
	s_mov_b32 s1, 0xbab78034
	v_mul_f32_e32 v94, s1, v119
	v_mul_f32_e32 v104, s0, v117
	v_mul_f32_e32 v105, s0, v118
	s_mov_b32 s0, 0x42380000
	v_mul_f32_e32 v116, s0, v116
	v_mul_f32_e32 v119, s0, v117
	v_mul_f32_e32 v121, s0, v118
	v_cvt_f32_f64_e32 v86, v[86:87]
	v_mul_f32_e32 v87, v90, v113
	v_fma_f32 v122, v88, v113, s5
	v_div_scale_f32 v126, s[0:1], v122, v122, v87
	s_mov_b32 s0, 0x428357e2
	v_mul_f32_e32 v117, s0, v117
	v_mul_f32_e32 v118, s0, v118
	v_div_fixup_f32 v100, v100, v125, v124
	v_fma_f32 v100, v85, v86, -v100
	v_div_scale_f32 v86, vcc, v87, v122, v87
	v_sub_f32_e32 v124, v132, v82
	v_sub_f32_e32 v124, v124, v83
	v_mul_f32_e32 v125, s4, v83
	v_fma_f32 v125, v82, v97, v125
	v_sub_f32_e32 v127, 1.0, v84
	v_sub_f32_e32 v127, v127, v85
	s_mov_b32 s0, 0xc0566666
	v_mul_f32_e32 v130, s0, v85
	v_fma_f32 v130, v84, v97, v130
	s_mov_b32 s0, 0xb76ae18a
	v_mul_f32_e32 v82, s0, v82
	v_rcp_f32_e32 v132, v126
	v_mul_f32_e32 v133, s0, v83
	s_mov_b32 s0, 0xc3a42dda
	v_mul_f32_e32 v83, s0, v84
	s_mov_b32 s0, 0xc00ccccd
	v_mul_f32_e32 v134, s0, v85
	v_fma_f32 v84, -v126, v132, 1.0
	v_fma_f32 v84, v84, v132, v132
	v_mul_f32_e32 v85, v86, v84
	v_fma_f32 v132, -v126, v85, v86
	v_fma_f32 v85, v132, v84, v85
	v_fma_f32 v86, -v126, v85, v86
	v_div_fmas_f32 v86, v86, v84, v85
	v_fma_f32 v126, v93, v124, v94
	v_fma_f32 v132, v104, v124, v82
	s_mov_b32 s0, 0xc4067dd3
	v_mul_f32_e32 v82, s0, v91
	v_fma_f32 v135, v116, v115, v82
	s_mov_b32 s0, 0xc050aa65
	v_mul_f32_e32 v82, s0, v92
	v_fma_f32 v136, v119, v115, v82
	v_sub_f32_e32 v82, v127, v112
	v_sub_f32_e32 v82, v82, v113
	v_sub_f32_e32 v93, v82, v114
	v_fma_f32 v119, v117, v93, v83
	v_mul_f32_e32 v82, v117, v114
	s_mov_b32 s0, 0x43a42dda
	v_fma_f32 v127, v113, s0, -v82
	v_sub_f32_e32 v82, v128, v129
	v_sub_f32_e32 v82, v82, v132
	v_sub_f32_e32 v82, v82, v136
	v_sub_f32_e32 v83, v127, v119
	v_fma_f32 v84, v88, v83, v82
	v_sub_f32_e64 v82, -v128, v126
	v_sub_f32_e32 v82, v82, v135
	v_cvt_f64_f32_e32 v[82:83], v82
	v_cvt_f64_f32_e32 v[84:85], v84
	v_fma_f32 v116, v105, v124, v133
	v_div_fixup_f32 v122, v86, v122, v87
	v_mul_f64 v[82:83], v[82:83], s[36:37]
	v_mul_f64 v[85:86], v[84:85], s[36:37]
	s_mov_b32 s0, 0xbaaa64c3
	v_mul_f32_e32 v84, s0, v79
	v_fma_f32 v124, v121, v115, v84
	v_fma_f32 v117, v118, v93, v134
	v_mul_f32_e32 v84, v118, v114
	s_mov_b32 s0, 0x3b102de0
	v_fma_f32 v121, v112, s0, -v84
	v_sub_f32_e32 v84, v129, v116
	v_sub_f32_e32 v84, v84, v124
	v_sub_f32_e32 v87, v121, v117
	v_fma_f32 v84, v88, v87, v84
	v_cvt_f64_f32_e32 v[93:94], v84
	v_sub_f32_e32 v84, v126, v131
	v_cvt_f64_f32_e32 v[104:105], v84
	v_cvt_f32_f64_e32 v84, v[82:83]
	v_cvt_f32_f64_e32 v85, v[85:86]
	v_mul_f64 v[82:83], v[93:94], s[36:37]
	v_mul_f64 v[93:94], v[104:105], s[36:37]
	v_add_f32_e32 v86, v132, v131
	v_sub_f32_e32 v86, v86, v125
	v_cvt_f64_f32_e32 v[86:87], v86
	v_mul_f32_e32 v90, v90, v114
	v_fma_f32 v114, v88, v114, s5
	v_div_scale_f32 v118, s[0:1], v114, v114, v90
	v_mul_f64 v[104:105], v[86:87], s[36:37]
	v_cvt_f32_f64_e32 v86, v[82:83]
	v_add_f32_e32 v82, v116, v125
	v_cvt_f64_f32_e32 v[82:83], v82
	v_div_scale_f32 v126, vcc, v90, v114, v90
	v_cvt_f32_f64_e32 v87, v[93:94]
	v_mul_f64 v[82:83], v[82:83], s[36:37]
	v_cvt_f32_f64_e32 v116, v[104:105]
	v_sub_f32_e32 v93, v119, v130
	v_add_f32_e32 v93, v122, v93
	v_cvt_f64_f32_e32 v[93:94], v93
	v_add_f32_e32 v104, v117, v130
	v_sub_f32_e32 v104, v104, v100
	v_cvt_f64_f32_e32 v[104:105], v104
	v_rcp_f32_e32 v119, v118
	v_cvt_f32_f64_e32 v117, v[82:83]
	v_mul_f64 v[82:83], v[93:94], s[36:37]
	v_mul_f64 v[93:94], v[104:105], s[36:37]
	v_fma_f32 v104, -v118, v119, 1.0
	v_fma_f32 v104, v104, v119, v119
	v_mul_f32_e32 v105, v126, v104
	v_fma_f32 v119, -v118, v105, v126
	v_fma_f32 v105, v119, v104, v105
	v_fma_f32 v118, -v118, v105, v126
	v_div_fmas_f32 v104, v118, v104, v105
	v_cvt_f32_f64_e32 v118, v[82:83]
	v_cvt_f32_f64_e32 v119, v[93:94]
	s_movk_i32 s0, 0xf4
	v_add_u32_e32 v82, vcc, s0, v74
	v_addc_u32_e32 v83, vcc, 0, v75, vcc
	flat_store_dwordx4 v[82:83], v[84:87]
	s_nop 0
	v_sub_f32_e32 v87, v89, v115
	v_sub_f32_e32 v87, v87, v91
	v_sub_f32_e32 v87, v87, v92
	v_sub_f32_e32 v87, v87, v79
	v_add_f32_e32 v89, v120, v120
	v_fma_f32 v126, v87, v89, -v115
	v_mul_f32_e32 v87, v113, v97
	s_mov_b32 s0, 0x3b5b8bac
	v_fma_f32 v132, v112, s0, -v87
	v_div_fixup_f32 v87, v104, v114, v90
	v_sub_f32_e32 v89, v132, v127
	v_sub_f32_e32 v93, v89, v122
	v_sub_f32_e32 v89, v100, v121
	v_sub_f32_e32 v89, v89, v132
	v_cvt_f64_f32_e32 v[89:90], v89
	v_cvt_f64_f32_e32 v[93:94], v93
	v_add_f32_e32 v100, v121, v127
	v_sub_f32_e32 v87, v100, v87
	v_cvt_f64_f32_e32 v[104:105], v87
	v_sub_f32_e32 v87, v126, v135
	v_sub_f32_e32 v87, v87, v136
	v_sub_f32_e32 v87, v87, v124
	v_cvt_f64_f32_e32 v[112:113], v87
	v_mul_f64 v[89:90], v[89:90], s[36:37]
	v_mul_f64 v[93:94], v[93:94], s[36:37]
	v_mul_f64 v[104:105], v[104:105], s[36:37]
	v_mul_f64 v[120:121], v[112:113], s[36:37]
	s_movk_i32 s0, 0x104
	v_add_u32_e32 v112, vcc, s0, v74
	v_addc_u32_e32 v113, vcc, 0, v75, vcc
	flat_store_dwordx4 v[112:113], v[116:119]
	v_cvt_f32_f64_e32 v112, v[89:90]
	v_cvt_f32_f64_e32 v113, v[93:94]
	v_cvt_f32_f64_e32 v114, v[104:105]
	v_cvt_f32_f64_e32 v115, v[120:121]
	s_mov_b32 s0, 0xbd783e10
	v_mul_f32_e32 v87, s0, v92
	v_fma_f32 v91, v91, v123, v87
	s_mov_b32 s0, 0xbb82a766
	v_mul_f32_e32 v79, s0, v79
	v_fma_f32 v79, v92, v97, v79
	v_add_f32_e32 v92, v88, v88
	v_sub_f32_e32 v87, v135, v91
	v_cvt_f64_f32_e32 v[87:88], v87
	v_add_f32_e32 v89, v136, v91
	v_sub_f32_e32 v89, v89, v79
	v_cvt_f64_f32_e32 v[89:90], v89
	v_sub_f32_e32 v93, v132, v130
	v_add_f32_e32 v94, v129, v128
	v_add_f32_e32 v94, v131, v94
	v_add_f32_e32 v94, v125, v94
	v_add_f32_e32 v94, v126, v94
	v_add_f32_e32 v91, v91, v94
	v_add_f32_e32 v91, v79, v91
	v_add_f32_e32 v91, v91, v91
	v_fma_f32 v93, v92, v93, -v91
	v_add_f32_e32 v79, v124, v79
	v_cvt_f64_f32_e32 v[91:92], v79
	v_cvt_f64_f32_e32 v[93:94], v93
	v_mul_f64 v[87:88], v[87:88], s[36:37]
	v_mul_f64 v[89:90], v[89:90], s[36:37]
	v_mul_f64 v[91:92], v[91:92], s[36:37]
	v_mul_f64 v[93:94], v[93:94], s[36:37]
	s_movk_i32 s0, 0x114
	v_add_u32_e32 v104, vcc, s0, v74
	v_addc_u32_e32 v105, vcc, 0, v75, vcc
	flat_store_dwordx4 v[104:105], v[112:115]
	v_cvt_f32_f64_e32 v87, v[87:88]
	v_cvt_f32_f64_e32 v88, v[89:90]
	v_cvt_f32_f64_e32 v89, v[91:92]
	v_cvt_f32_f64_e32 v79, v[93:94]
	s_movk_i32 s0, 0x124
	v_add_u32_e32 v90, vcc, s0, v74
	v_addc_u32_e32 v91, vcc, 0, v75, vcc
	flat_store_dwordx3 v[90:91], v[87:89]
	flat_store_dword v[110:111], v79
	flat_load_dwordx2 v[93:94], v[15:16]
	s_nop 0
	flat_load_dwordx4 v[87:90], v[19:20]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_cvt_f64_f32_e32 v[104:105], v93
	v_div_scale_f64 v[91:92], s[0:1], s[18:19], s[18:19], v[104:105]
	v_rcp_f64_e32 v[110:111], v[91:92]
	v_fma_f64 v[112:113], -v[91:92], v[110:111], 1.0
	v_fma_f64 v[110:111], v[110:111], v[112:113], v[110:111]
	v_fma_f64 v[112:113], -v[91:92], v[110:111], 1.0
	v_div_scale_f64 v[114:115], vcc, v[104:105], s[18:19], v[104:105]
	v_fma_f64 v[110:111], v[110:111], v[112:113], v[110:111]
	v_mul_f64 v[112:113], v[114:115], v[110:111]
	v_fma_f64 v[91:92], -v[91:92], v[112:113], v[114:115]
	s_nop 0
	v_div_fmas_f64 v[91:92], v[91:92], v[110:111], v[112:113]
	v_add_u32_e32 v118, vcc, 56, v43
	v_addc_u32_e32 v119, vcc, 0, v44, vcc
	v_add_u32_e32 v110, vcc, 48, v43
	v_addc_u32_e32 v111, vcc, 0, v44, vcc
	v_div_fixup_f64 v[91:92], v[91:92], s[18:19], v[104:105]
	v_add_u32_e32 v112, vcc, 32, v43
	v_addc_u32_e32 v113, vcc, 0, v44, vcc
	v_add_u32_e32 v114, vcc, 16, v43
	v_addc_u32_e32 v115, vcc, 0, v44, vcc
	v_cmp_ge_f32_e32 vcc, 1.0, v94
	v_add_f64 v[124:125], v[91:92], 1.0
	flat_load_dword v93, v[31:32]
	flat_load_dwordx2 v[91:92], v[110:111]
	s_nop 0
	flat_load_dwordx4 v[110:113], v[112:113]
	s_nop 0
	flat_load_dwordx4 v[114:117], v[114:115]
                                        ; implicit-def: $vgpr122_vgpr123
                                        ; implicit-def: $vgpr126_vgpr127
	s_nop 0
	flat_load_dword v79, v[118:119]
	s_nop 0
	flat_load_dwordx4 v[118:121], v[43:44]
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB1_105
; %bb.104:                              ;   in Loop: Header=BB1_9 Depth=3
	v_cvt_f64_f32_e32 v[126:127], v94
	v_readlane_b32 s4, v172, 0
	v_readlane_b32 s5, v172, 1
	v_div_scale_f64 v[122:123], s[2:3], s[4:5], s[4:5], v[126:127]
	v_rcp_f64_e32 v[128:129], v[122:123]
	v_fma_f64 v[130:131], -v[122:123], v[128:129], 1.0
	v_fma_f64 v[128:129], v[128:129], v[130:131], v[128:129]
	v_fma_f64 v[130:131], -v[122:123], v[128:129], 1.0
	v_fma_f64 v[128:129], v[128:129], v[130:131], v[128:129]
	v_div_scale_f64 v[130:131], vcc, v[126:127], s[4:5], v[126:127]
	v_mul_f64 v[132:133], v[130:131], v[128:129]
	v_fma_f64 v[122:123], -v[122:123], v[132:133], v[130:131]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[122:123], v[122:123], v[128:129], v[132:133]
	v_div_fixup_f64 v[122:123], v[122:123], s[4:5], v[126:127]
	v_add_f64 v[122:123], v[124:125], v[122:123]
	s_mov_b32 s2, s10
	v_readlane_b32 s4, v173, 55
	v_readlane_b32 s5, v173, 56
	s_mov_b32 s3, s5
	v_mul_f64 v[122:123], v[122:123], s[2:3]
	s_mov_b32 s2, s84
	v_readlane_b32 s4, v173, 57
	v_readlane_b32 s5, v173, 58
	s_mov_b32 s3, s5
	v_div_scale_f64 v[128:129], s[4:5], s[2:3], s[2:3], v[104:105]
	v_rcp_f64_e32 v[130:131], v[128:129]
	v_fma_f64 v[132:133], -v[128:129], v[130:131], 1.0
	v_fma_f64 v[130:131], v[130:131], v[132:133], v[130:131]
	v_fma_f64 v[132:133], -v[128:129], v[130:131], 1.0
	v_fma_f64 v[130:131], v[130:131], v[132:133], v[130:131]
	v_div_scale_f64 v[132:133], vcc, v[104:105], s[2:3], v[104:105]
	v_mul_f64 v[134:135], v[132:133], v[130:131]
	v_fma_f64 v[128:129], -v[128:129], v[134:135], v[132:133]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[128:129], v[128:129], v[130:131], v[134:135]
	v_div_fixup_f64 v[128:129], v[128:129], s[2:3], v[104:105]
	v_add_f64 v[128:129], v[128:129], 1.0
	s_mov_b32 s2, s46
	v_readlane_b32 s4, v173, 59
	v_readlane_b32 s5, v173, 60
	s_mov_b32 s3, s5
	v_div_scale_f64 v[130:131], s[4:5], s[2:3], s[2:3], v[126:127]
	v_rcp_f64_e32 v[132:133], v[130:131]
	v_fma_f64 v[134:135], -v[130:131], v[132:133], 1.0
	v_fma_f64 v[132:133], v[132:133], v[134:135], v[132:133]
	v_fma_f64 v[134:135], -v[130:131], v[132:133], 1.0
	v_fma_f64 v[132:133], v[132:133], v[134:135], v[132:133]
	v_div_scale_f64 v[134:135], vcc, v[126:127], s[2:3], v[126:127]
	v_mul_f64 v[136:137], v[134:135], v[132:133]
	v_fma_f64 v[130:131], -v[130:131], v[136:137], v[134:135]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[130:131], v[130:131], v[132:133], v[136:137]
	v_div_fixup_f64 v[130:131], v[130:131], s[2:3], v[126:127]
	v_add_f64 v[128:129], v[128:129], v[130:131]
	v_mul_f64 v[122:123], v[128:129], v[122:123]
	s_mov_b32 s2, s10
	v_readlane_b32 s4, v173, 61
	v_readlane_b32 s5, v173, 62
	s_mov_b32 s3, s5
	v_div_scale_f64 v[128:129], s[4:5], s[2:3], s[2:3], v[104:105]
	v_rcp_f64_e32 v[130:131], v[128:129]
	v_fma_f64 v[132:133], -v[128:129], v[130:131], 1.0
	v_fma_f64 v[130:131], v[130:131], v[132:133], v[130:131]
	v_fma_f64 v[132:133], -v[128:129], v[130:131], 1.0
	v_fma_f64 v[130:131], v[130:131], v[132:133], v[130:131]
	v_div_scale_f64 v[132:133], vcc, v[104:105], s[2:3], v[104:105]
	v_mul_f64 v[134:135], v[132:133], v[130:131]
	v_fma_f64 v[128:129], -v[128:129], v[134:135], v[132:133]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[128:129], v[128:129], v[130:131], v[134:135]
	v_div_fixup_f64 v[128:129], v[128:129], s[2:3], v[104:105]
	v_add_f64 v[128:129], v[128:129], 1.0
	v_readlane_b32 s4, v172, 2
	v_readlane_b32 s5, v172, 3
	v_div_scale_f64 v[130:131], s[2:3], s[4:5], s[4:5], v[126:127]
	v_rcp_f64_e32 v[132:133], v[130:131]
	v_fma_f64 v[134:135], -v[130:131], v[132:133], 1.0
	v_fma_f64 v[132:133], v[132:133], v[134:135], v[132:133]
	v_fma_f64 v[134:135], -v[130:131], v[132:133], 1.0
	v_fma_f64 v[132:133], v[132:133], v[134:135], v[132:133]
	v_div_scale_f64 v[134:135], vcc, v[126:127], s[4:5], v[126:127]
	v_mul_f64 v[136:137], v[134:135], v[132:133]
	v_fma_f64 v[130:131], -v[130:131], v[136:137], v[134:135]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[130:131], v[130:131], v[132:133], v[136:137]
	v_div_fixup_f64 v[130:131], v[130:131], s[4:5], v[126:127]
	v_add_f64 v[128:129], v[128:129], v[130:131]
	s_mov_b32 s2, s36
	v_readlane_b32 s4, v173, 63
	v_readlane_b32 s5, v174, 0
	s_mov_b32 s3, s5
	v_mul_f64 v[128:129], v[128:129], s[2:3]
	s_mov_b32 s2, s25
	v_readlane_b32 s4, v174, 1
	v_readlane_b32 s5, v174, 2
	s_mov_b32 s3, s5
	v_div_scale_f64 v[130:131], s[4:5], s[2:3], s[2:3], v[104:105]
	v_rcp_f64_e32 v[132:133], v[130:131]
	v_fma_f64 v[134:135], -v[130:131], v[132:133], 1.0
	v_fma_f64 v[132:133], v[132:133], v[134:135], v[132:133]
	v_fma_f64 v[134:135], -v[130:131], v[132:133], 1.0
	v_fma_f64 v[132:133], v[132:133], v[134:135], v[132:133]
	v_div_scale_f64 v[134:135], vcc, v[104:105], s[2:3], v[104:105]
	v_mul_f64 v[136:137], v[134:135], v[132:133]
	v_fma_f64 v[130:131], -v[130:131], v[136:137], v[134:135]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[130:131], v[130:131], v[132:133], v[136:137]
	v_div_fixup_f64 v[130:131], v[130:131], s[2:3], v[104:105]
	v_add_f64 v[130:131], v[130:131], 1.0
	v_readlane_b32 s4, v172, 4
	v_readlane_b32 s5, v172, 5
	v_div_scale_f64 v[132:133], s[2:3], s[4:5], s[4:5], v[126:127]
	v_rcp_f64_e32 v[134:135], v[132:133]
	v_fma_f64 v[136:137], -v[132:133], v[134:135], 1.0
	v_fma_f64 v[134:135], v[134:135], v[136:137], v[134:135]
	v_fma_f64 v[136:137], -v[132:133], v[134:135], 1.0
	v_fma_f64 v[134:135], v[134:135], v[136:137], v[134:135]
	v_div_scale_f64 v[136:137], vcc, v[126:127], s[4:5], v[126:127]
	v_mul_f64 v[138:139], v[136:137], v[134:135]
	v_fma_f64 v[132:133], -v[132:133], v[138:139], v[136:137]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[132:133], v[132:133], v[134:135], v[138:139]
	v_div_fixup_f64 v[126:127], v[132:133], s[4:5], v[126:127]
	v_add_f64 v[126:127], v[130:131], v[126:127]
	v_mul_f64 v[126:127], v[126:127], v[128:129]
BB1_105:                                ; %Flow831
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB1_107
; %bb.106:                              ;   in Loop: Header=BB1_9 Depth=3
	v_readlane_b32 s2, v171, 8
	v_readlane_b32 s3, v171, 9
	v_readlane_b32 s4, v174, 3
	v_readlane_b32 s5, v174, 4
	s_mov_b32 s3, s5
	v_add_f64 v[122:123], v[124:125], s[2:3]
	v_add_f32_e32 v94, -1.0, v94
	v_cvt_f64_f32_e32 v[124:125], v94
	v_readlane_b32 s2, v172, 18
	v_readlane_b32 s3, v172, 19
	v_readlane_b32 s4, v174, 5
	v_readlane_b32 s5, v174, 6
	s_mov_b32 s3, s5
	v_div_scale_f64 v[126:127], s[4:5], s[2:3], s[2:3], v[124:125]
	v_rcp_f64_e32 v[128:129], v[126:127]
	v_fma_f64 v[130:131], -v[126:127], v[128:129], 1.0
	v_fma_f64 v[128:129], v[128:129], v[130:131], v[128:129]
	v_fma_f64 v[130:131], -v[126:127], v[128:129], 1.0
	v_fma_f64 v[128:129], v[128:129], v[130:131], v[128:129]
	v_div_scale_f64 v[130:131], vcc, v[124:125], s[2:3], v[124:125]
	v_mul_f64 v[132:133], v[130:131], v[128:129]
	v_fma_f64 v[126:127], -v[126:127], v[132:133], v[130:131]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[126:127], v[126:127], v[128:129], v[132:133]
	v_div_fixup_f64 v[126:127], v[126:127], s[2:3], v[124:125]
	v_add_f64 v[122:123], v[122:123], v[126:127]
	s_mov_b32 s2, s10
	v_readlane_b32 s4, v173, 55
	v_readlane_b32 s5, v173, 56
	s_mov_b32 s3, s5
	v_mul_f64 v[122:123], v[122:123], s[2:3]
	s_mov_b32 s2, s84
	v_readlane_b32 s4, v173, 57
	v_readlane_b32 s5, v173, 58
	s_mov_b32 s3, s5
	v_div_scale_f64 v[126:127], s[4:5], s[2:3], s[2:3], v[104:105]
	v_rcp_f64_e32 v[128:129], v[126:127]
	v_fma_f64 v[130:131], -v[126:127], v[128:129], 1.0
	v_fma_f64 v[128:129], v[128:129], v[130:131], v[128:129]
	v_fma_f64 v[130:131], -v[126:127], v[128:129], 1.0
	v_fma_f64 v[128:129], v[128:129], v[130:131], v[128:129]
	v_div_scale_f64 v[130:131], vcc, v[104:105], s[2:3], v[104:105]
	v_mul_f64 v[132:133], v[130:131], v[128:129]
	v_fma_f64 v[126:127], -v[126:127], v[132:133], v[130:131]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[126:127], v[126:127], v[128:129], v[132:133]
	v_div_fixup_f64 v[126:127], v[126:127], s[2:3], v[104:105]
	v_add_f64 v[126:127], v[126:127], 1.0
	v_readlane_b32 s2, v172, 6
	v_readlane_b32 s3, v172, 7
	v_add_f64 v[126:127], v[126:127], s[2:3]
	v_readlane_b32 s4, v172, 8
	v_readlane_b32 s5, v172, 9
	v_div_scale_f64 v[128:129], s[2:3], s[4:5], s[4:5], v[124:125]
	v_rcp_f64_e32 v[130:131], v[128:129]
	v_fma_f64 v[132:133], -v[128:129], v[130:131], 1.0
	v_fma_f64 v[130:131], v[130:131], v[132:133], v[130:131]
	v_fma_f64 v[132:133], -v[128:129], v[130:131], 1.0
	v_fma_f64 v[130:131], v[130:131], v[132:133], v[130:131]
	v_div_scale_f64 v[132:133], vcc, v[124:125], s[4:5], v[124:125]
	v_mul_f64 v[134:135], v[132:133], v[130:131]
	v_fma_f64 v[128:129], -v[128:129], v[134:135], v[132:133]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[128:129], v[128:129], v[130:131], v[134:135]
	v_div_fixup_f64 v[128:129], v[128:129], s[4:5], v[124:125]
	v_add_f64 v[126:127], v[126:127], v[128:129]
	v_mul_f64 v[122:123], v[126:127], v[122:123]
	s_mov_b32 s2, s10
	v_readlane_b32 s4, v173, 61
	v_readlane_b32 s5, v173, 62
	s_mov_b32 s3, s5
	v_div_scale_f64 v[126:127], s[4:5], s[2:3], s[2:3], v[104:105]
	v_rcp_f64_e32 v[128:129], v[126:127]
	v_fma_f64 v[130:131], -v[126:127], v[128:129], 1.0
	v_fma_f64 v[128:129], v[128:129], v[130:131], v[128:129]
	v_fma_f64 v[130:131], -v[126:127], v[128:129], 1.0
	v_fma_f64 v[128:129], v[128:129], v[130:131], v[128:129]
	v_div_scale_f64 v[130:131], vcc, v[104:105], s[2:3], v[104:105]
	v_mul_f64 v[132:133], v[130:131], v[128:129]
	v_fma_f64 v[126:127], -v[126:127], v[132:133], v[130:131]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[126:127], v[126:127], v[128:129], v[132:133]
	v_div_fixup_f64 v[126:127], v[126:127], s[2:3], v[104:105]
	v_add_f64 v[126:127], v[126:127], 1.0
	v_readlane_b32 s2, v172, 10
	v_readlane_b32 s3, v172, 11
	v_add_f64 v[126:127], v[126:127], s[2:3]
	s_mov_b32 s2, s10
	v_readlane_b32 s4, v174, 7
	v_readlane_b32 s5, v174, 8
	s_mov_b32 s3, s5
	v_div_scale_f64 v[128:129], s[4:5], s[2:3], s[2:3], v[124:125]
	v_rcp_f64_e32 v[130:131], v[128:129]
	v_fma_f64 v[132:133], -v[128:129], v[130:131], 1.0
	v_fma_f64 v[130:131], v[130:131], v[132:133], v[130:131]
	v_fma_f64 v[132:133], -v[128:129], v[130:131], 1.0
	v_fma_f64 v[130:131], v[130:131], v[132:133], v[130:131]
	v_div_scale_f64 v[132:133], vcc, v[124:125], s[2:3], v[124:125]
	v_mul_f64 v[134:135], v[132:133], v[130:131]
	v_fma_f64 v[128:129], -v[128:129], v[134:135], v[132:133]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[128:129], v[128:129], v[130:131], v[134:135]
	v_div_fixup_f64 v[128:129], v[128:129], s[2:3], v[124:125]
	v_add_f64 v[126:127], v[126:127], v[128:129]
	s_mov_b32 s2, s36
	v_readlane_b32 s4, v173, 63
	v_readlane_b32 s5, v174, 0
	s_mov_b32 s3, s5
	v_mul_f64 v[126:127], v[126:127], s[2:3]
	s_mov_b32 s2, s25
	v_readlane_b32 s4, v174, 1
	v_readlane_b32 s5, v174, 2
	s_mov_b32 s3, s5
	v_div_scale_f64 v[128:129], s[4:5], s[2:3], s[2:3], v[104:105]
	v_rcp_f64_e32 v[130:131], v[128:129]
	v_fma_f64 v[132:133], -v[128:129], v[130:131], 1.0
	v_fma_f64 v[130:131], v[130:131], v[132:133], v[130:131]
	v_fma_f64 v[132:133], -v[128:129], v[130:131], 1.0
	v_fma_f64 v[130:131], v[130:131], v[132:133], v[130:131]
	v_div_scale_f64 v[132:133], vcc, v[104:105], s[2:3], v[104:105]
	v_mul_f64 v[134:135], v[132:133], v[130:131]
	v_fma_f64 v[128:129], -v[128:129], v[134:135], v[132:133]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[128:129], v[128:129], v[130:131], v[134:135]
	v_div_fixup_f64 v[104:105], v[128:129], s[2:3], v[104:105]
	v_add_f64 v[104:105], v[104:105], 1.0
	v_readlane_b32 s2, v172, 12
	v_readlane_b32 s3, v172, 13
	v_add_f64 v[104:105], v[104:105], s[2:3]
	s_mov_b32 s2, s84
	v_readlane_b32 s4, v174, 9
	v_readlane_b32 s5, v174, 10
	s_mov_b32 s3, s5
	v_div_scale_f64 v[128:129], s[4:5], s[2:3], s[2:3], v[124:125]
	v_rcp_f64_e32 v[130:131], v[128:129]
	v_fma_f64 v[132:133], -v[128:129], v[130:131], 1.0
	v_fma_f64 v[130:131], v[130:131], v[132:133], v[130:131]
	v_fma_f64 v[132:133], -v[128:129], v[130:131], 1.0
	v_fma_f64 v[130:131], v[130:131], v[132:133], v[130:131]
	v_div_scale_f64 v[132:133], vcc, v[124:125], s[2:3], v[124:125]
	v_mul_f64 v[134:135], v[132:133], v[130:131]
	v_fma_f64 v[128:129], -v[128:129], v[134:135], v[132:133]
	s_nop 0
	s_nop 0
	v_div_fmas_f64 v[128:129], v[128:129], v[130:131], v[134:135]
	v_div_fixup_f64 v[124:125], v[128:129], s[2:3], v[124:125]
	v_add_f64 v[104:105], v[104:105], v[124:125]
	v_mul_f64 v[126:127], v[104:105], v[126:127]
BB1_107:                                ; %_Z12kernel_cam_2fPfS_iS_iS_if.exit.i.i
                                        ;   in Loop: Header=BB1_9 Depth=3
	s_or_b64 exec, exec, s[0:1]
	v_cvt_f32_f64_e32 v94, v[122:123]
	v_div_scale_f32 v97, s[0:1], v94, v94, s24
	v_rcp_f32_e32 v100, v97
	v_fma_f32 v104, -v97, v100, 1.0
	v_fma_f32 v100, v104, v100, v100
	v_div_scale_f32 v104, vcc, s24, v94, s24
	v_mul_f32_e32 v105, v104, v100
	v_fma_f32 v122, -v97, v105, v104
	v_fma_f32 v105, v122, v100, v105
	v_fma_f32 v97, -v97, v105, v104
	v_div_fmas_f32 v97, v97, v100, v105
	v_cvt_f32_f64_e32 v100, v[126:127]
	s_mov_b32 s2, 0x43fa0000
	v_div_scale_f32 v104, s[0:1], v100, v100, s2
	v_rcp_f32_e32 v105, v104
	v_fma_f32 v122, -v104, v105, 1.0
	v_fma_f32 v105, v122, v105, v105
	v_div_scale_f32 v122, vcc, s2, v100, s2
	v_mul_f32_e32 v123, v122, v105
	v_fma_f32 v124, -v104, v123, v122
	v_fma_f32 v123, v124, v105, v123
	v_fma_f32 v104, -v104, v123, v122
	v_div_fmas_f32 v104, v104, v105, v123
	s_mov_b32 s0, 0x447a0000
	s_waitcnt vmcnt(5) lgkmcnt(5)
	v_mul_f32_e32 v93, s0, v93
	v_frexp_mant_f32_e64 v105, |v93|
	v_cmp_gt_f32_e32 vcc, s42, v105
	v_cndmask_b32_e64 v122, 0, 1, vcc
	v_ldexp_f32 v105, v105, v122
	v_add_f32_e32 v122, 1.0, v105
	v_sub_f32_e32 v123, v122, v105
	v_sub_f32_e32 v124, v122, v123
	v_sub_f32_e32 v124, v105, v124
	v_sub_f32_e32 v123, 1.0, v123
	v_add_f32_e32 v123, v123, v124
	v_add_f32_e32 v105, -1.0, v105
	v_rcp_f32_e32 v124, v122
	v_mul_f32_e32 v125, v105, v124
	v_mul_f32_e32 v126, v122, v125
	v_fma_f32 v122, v125, v122, -v126
	v_fma_f32 v122, v125, v123, v122
	v_add_f32_e32 v123, v126, v122
	v_sub_f32_e32 v126, v123, v126
	v_sub_f32_e32 v122, v122, v126
	v_sub_f32_e32 v126, v105, v123
	v_sub_f32_e32 v105, v105, v126
	v_sub_f32_e32 v105, v105, v123
	v_sub_f32_e32 v105, v105, v122
	v_add_f32_e32 v105, v126, v105
	v_mul_f32_e32 v105, v124, v105
	v_add_f32_e32 v122, v125, v105
	v_sub_f32_e32 v123, v122, v125
	v_sub_f32_e32 v105, v105, v123
	v_mul_f32_e32 v123, v122, v122
	v_add_f32_e32 v124, v105, v105
	v_fma_f32 v125, v122, v122, -v123
	v_fma_f32 v124, v122, v124, v125
	v_fma_f32 v124, v105, v105, v124
	v_add_f32_e32 v125, v123, v124
	v_sub_f32_e32 v123, v125, v123
	v_sub_f32_e32 v123, v124, v123
	v_frexp_exp_i32_f32_e64 v124, |v93|
	v_subbrev_u32_e32 v124, vcc, 0, v124, vcc
	v_cvt_f32_i32_e32 v124, v124
	v_mul_f32_e32 v126, s45, v124
	v_fma_f32 v127, v124, s45, -v126
	v_fma_f32 v124, v124, s44, v127
	v_add_f32_e32 v127, v126, v124
	v_sub_f32_e32 v126, v127, v126
	v_sub_f32_e32 v124, v124, v126
	v_mov_b32_e32 v126, s15
	v_fma_f32 v128, v125, s48, v126
	v_fma_f32 v128, v125, v128, s93
	v_mul_f32_e32 v129, v125, v128
	v_fma_f32 v130, v125, v128, -v129
	v_fma_f32 v128, v123, v128, v130
	v_mul_f32_e32 v123, v122, v123
	v_fma_f32 v123, v125, v105, v123
	v_mul_f32_e32 v130, v122, v125
	v_fma_f32 v125, v125, v122, -v130
	v_add_f32_e32 v123, v125, v123
	v_add_f32_e32 v125, v129, v128
	v_sub_f32_e32 v129, v125, v129
	v_sub_f32_e32 v128, v128, v129
	v_add_f32_e32 v129, s28, v125
	v_add_f32_e32 v131, s41, v129
	v_sub_f32_e32 v125, v125, v131
	v_add_f32_e32 v128, s49, v128
	v_add_f32_e32 v125, v125, v128
	v_add_f32_e32 v128, v129, v125
	v_sub_f32_e32 v129, v128, v129
	v_sub_f32_e32 v125, v125, v129
	v_add_f32_e32 v129, v130, v123
	v_sub_f32_e32 v130, v129, v130
	v_sub_f32_e32 v123, v123, v130
	v_mul_f32_e32 v123, v123, v128
	v_fma_f32 v123, v129, v125, v123
	v_mul_f32_e32 v125, v129, v128
	v_fma_f32 v128, v129, v128, -v125
	v_add_f32_e32 v123, v128, v123
	v_add_f32_e32 v128, v125, v123
	v_sub_f32_e32 v125, v128, v125
	v_sub_f32_e32 v123, v123, v125
	v_ldexp_f32 v122, v122, 1
	v_add_f32_e32 v125, v122, v128
	v_sub_f32_e32 v122, v125, v122
	v_sub_f32_e32 v122, v128, v122
	v_ldexp_f32 v105, v105, 1
	v_add_f32_e32 v105, v105, v123
	v_add_f32_e32 v105, v122, v105
	v_add_f32_e32 v122, v125, v105
	v_sub_f32_e32 v123, v122, v125
	v_sub_f32_e32 v105, v105, v123
	v_add_f32_e32 v123, v127, v122
	v_sub_f32_e32 v125, v123, v127
	v_sub_f32_e32 v128, v123, v125
	v_sub_f32_e32 v127, v127, v128
	v_sub_f32_e32 v122, v122, v125
	v_add_f32_e32 v122, v122, v127
	v_add_f32_e32 v125, v124, v105
	v_sub_f32_e32 v127, v125, v124
	v_sub_f32_e32 v128, v125, v127
	v_sub_f32_e32 v124, v124, v128
	v_sub_f32_e32 v105, v105, v127
	v_add_f32_e32 v105, v105, v124
	v_add_f32_e32 v122, v125, v122
	v_add_f32_e32 v124, v123, v122
	v_sub_f32_e32 v123, v124, v123
	v_sub_f32_e32 v122, v122, v123
	v_add_f32_e32 v105, v105, v122
	v_add_f32_e32 v122, v124, v105
	v_sub_f32_e32 v123, v122, v124
	v_sub_f32_e32 v105, v105, v123
	v_mul_f32_e32 v123, 0, v122
	v_fma_f32 v105, v105, 2.0, v123
	v_add_f32_e32 v123, v122, v122
	v_fma_f32 v122, v122, 2.0, -v123
	v_add_f32_e32 v105, v122, v105
	v_add_f32_e32 v122, v123, v105
	v_sub_f32_e32 v124, v122, v123
	v_sub_f32_e32 v105, v105, v124
	v_cmp_class_f32_e64 vcc, v123, s92
	v_cndmask_b32_e32 v122, v122, v123, vcc
	v_mul_f32_e32 v123, s26, v122
	v_rndne_f32_e32 v123, v123
	v_mul_f32_e32 v124, s31, v123
	v_sub_f32_e32 v125, v122, v124
	v_sub_f32_e32 v127, v125, v122
	v_add_f32_e32 v124, v124, v127
	v_sub_f32_e32 v127, v125, v127
	v_sub_f32_e32 v127, v122, v127
	v_sub_f32_e32 v124, v127, v124
	v_cmp_neq_f32_e64 vcc, |v122|, s94
	v_cndmask_b32_e32 v105, 0, v105, vcc
	v_add_f32_e32 v105, v105, v124
	v_add_f32_e32 v124, v125, v105
	v_sub_f32_e32 v125, v124, v125
	v_sub_f32_e32 v105, v105, v125
	v_mul_f32_e32 v125, s30, v123
	v_sub_f32_e32 v127, v124, v125
	v_sub_f32_e32 v124, v124, v127
	v_sub_f32_e32 v124, v124, v125
	v_add_f32_e32 v105, v105, v124
	v_add_f32_e32 v124, v127, v105
	v_sub_f32_e32 v125, v124, v127
	v_sub_f32_e32 v105, v105, v125
	v_mul_f32_e32 v125, s29, v123
	v_sub_f32_e32 v127, v124, v125
	v_sub_f32_e32 v124, v124, v127
	v_sub_f32_e32 v124, v124, v125
	v_add_f32_e32 v105, v105, v124
	v_add_f32_e32 v124, v127, v105
	v_sub_f32_e32 v125, v124, v127
	v_sub_f32_e32 v105, v105, v125
	v_mul_f32_e32 v125, v124, v124
	v_fma_f32 v127, v124, v124, -v125
	v_add_f32_e32 v128, v105, v105
	v_fma_f32 v127, v124, v128, v127
	v_fma_f32 v127, v105, v105, v127
	v_add_f32_e32 v128, v125, v127
	v_sub_f32_e32 v125, v128, v125
	v_sub_f32_e32 v125, v127, v125
	v_mov_b32_e32 v127, s6
	v_fma_f32 v129, v124, s27, v127
	v_fma_f32 v129, v124, v129, s40
	v_fma_f32 v129, v124, v129, s35
	v_fma_f32 v129, v124, v129, s91
	v_mul_f32_e32 v130, v129, v128
	v_fma_f32 v128, v128, v129, -v130
	v_fma_f32 v125, v125, v129, v128
	v_div_fixup_f32 v94, v97, v94, s24
	v_div_fixup_f32 v97, v104, v100, s2
	v_add_f32_e32 v100, v130, v125
	v_sub_f32_e32 v104, v100, v130
	v_sub_f32_e32 v104, v125, v104
	v_add_f32_e32 v125, v124, v100
	v_sub_f32_e32 v124, v125, v124
	v_sub_f32_e32 v100, v100, v124
	v_add_f32_e32 v104, v105, v104
	v_add_f32_e32 v100, v100, v104
	v_add_f32_e32 v100, v125, v100
	v_cvt_i32_f32_e32 v104, v123
	v_add_f32_e32 v100, 1.0, v100
	v_ldexp_f32 v100, v100, v104
	v_cmp_ngt_f32_e32 vcc, s95, v122
	v_mov_b32_e32 v123, s94
	v_cmp_nlt_f32_e64 s[0:1], s34, v122
	v_cndmask_b32_e64 v100, v123, v100, s[0:1]
	v_cmp_neq_f32_e64 s[0:1], 0, v93
	s_and_b64 vcc, s[0:1], vcc
	v_cndmask_b32_e32 v100, 0, v100, vcc
	v_cmp_class_f32_e64 vcc, v93, s92
	v_cndmask_b32_e32 v100, v100, v123, vcc
	v_cmp_u_f32_e32 vcc, v93, v93
	v_cndmask_b32_e64 v100, |v100|, v93, vcc
	v_mul_f32_e32 v122, v100, v94
	s_mov_b32 s0, 0xc1200000
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v93, s0, v119
	v_fma_f32 v124, v118, v122, v93
	v_mul_f32_e32 v97, v100, v97
	s_mov_b32 s4, 0xc3fa0000
	v_mul_f32_e32 v93, s4, v120
	v_fma_f32 v125, v119, v97, v93
	s_mov_b32 s0, 0xbdcccccd
	v_mul_f32_e32 v93, s0, v114
	v_fma_f32 v128, v121, v122, v93
	v_sub_f32_e32 v87, v87, v121
	s_mov_b32 s5, 0x3be56041
	v_mul_f32_e32 v129, s5, v118
	s_mov_b32 s0, 0xbab78034
	v_mul_f32_e32 v121, s0, v121
	v_mul_f32_e32 v130, s5, v119
	v_mul_f32_e32 v131, s5, v120
	s_mov_b32 s0, 0x42380000
	v_mul_f32_e32 v118, s0, v118
	v_mul_f32_e32 v132, s0, v119
	v_mul_f32_e32 v133, s0, v120
	s_mov_b32 s0, 0x428357e2
	v_mul_f32_e32 v119, s0, v119
	v_mul_f32_e32 v120, s0, v120
	v_add_f32_e32 v93, v117, v110
	v_add_f32_e32 v93, v93, v111
	v_add_f32_e32 v134, v93, v112
	v_frexp_mant_f32_e64 v93, |v134|
	v_cmp_gt_f32_e32 vcc, s42, v93
	v_cndmask_b32_e64 v94, 0, 1, vcc
	v_ldexp_f32 v93, v93, v94
	v_add_f32_e32 v94, 1.0, v93
	v_sub_f32_e32 v104, v94, v93
	v_sub_f32_e32 v105, v94, v104
	v_sub_f32_e32 v105, v93, v105
	v_sub_f32_e32 v104, 1.0, v104
	v_add_f32_e32 v104, v104, v105
	v_add_f32_e32 v93, -1.0, v93
	v_rcp_f32_e32 v105, v94
	v_mul_f32_e32 v135, v93, v105
	v_mul_f32_e32 v136, v94, v135
	v_fma_f32 v94, v135, v94, -v136
	v_fma_f32 v94, v135, v104, v94
	v_add_f32_e32 v104, v136, v94
	v_sub_f32_e32 v136, v104, v136
	v_sub_f32_e32 v94, v94, v136
	v_sub_f32_e32 v136, v93, v104
	v_sub_f32_e32 v93, v93, v136
	v_sub_f32_e32 v93, v93, v104
	v_sub_f32_e32 v93, v93, v94
	v_add_f32_e32 v93, v136, v93
	v_mul_f32_e32 v93, v105, v93
	v_add_f32_e32 v94, v135, v93
	v_sub_f32_e32 v104, v94, v135
	v_sub_f32_e32 v93, v93, v104
	v_mul_f32_e32 v104, v94, v94
	v_add_f32_e32 v105, v93, v93
	v_fma_f32 v135, v94, v94, -v104
	v_fma_f32 v105, v94, v105, v135
	v_fma_f32 v105, v93, v93, v105
	v_add_f32_e32 v135, v104, v105
	v_sub_f32_e32 v104, v135, v104
	v_sub_f32_e32 v104, v105, v104
	v_frexp_exp_i32_f32_e64 v105, |v134|
	v_subbrev_u32_e32 v105, vcc, 0, v105, vcc
	v_cvt_f32_i32_e32 v105, v105
	v_mul_f32_e32 v136, s45, v105
	v_fma_f32 v137, v105, s45, -v136
	v_fma_f32 v105, v105, s44, v137
	v_add_f32_e32 v137, v136, v105
	v_sub_f32_e32 v136, v137, v136
	v_sub_f32_e32 v105, v105, v136
	v_fma_f32 v126, v135, s48, v126
	v_fma_f32 v126, v135, v126, s93
	v_mul_f32_e32 v136, v135, v126
	v_fma_f32 v138, v135, v126, -v136
	v_fma_f32 v126, v104, v126, v138
	v_mul_f32_e32 v104, v94, v104
	v_fma_f32 v104, v135, v93, v104
	v_mul_f32_e32 v138, v94, v135
	v_fma_f32 v135, v135, v94, -v138
	v_add_f32_e32 v104, v135, v104
	v_add_f32_e32 v135, v136, v126
	v_sub_f32_e32 v136, v135, v136
	v_sub_f32_e32 v126, v126, v136
	v_add_f32_e32 v136, s28, v135
	v_add_f32_e32 v139, s41, v136
	v_sub_f32_e32 v135, v135, v139
	v_add_f32_e32 v126, s49, v126
	v_add_f32_e32 v126, v135, v126
	v_add_f32_e32 v135, v136, v126
	v_sub_f32_e32 v136, v135, v136
	v_sub_f32_e32 v126, v126, v136
	v_add_f32_e32 v136, v138, v104
	v_sub_f32_e32 v138, v136, v138
	v_sub_f32_e32 v104, v104, v138
	v_mul_f32_e32 v104, v104, v135
	v_fma_f32 v104, v136, v126, v104
	v_mul_f32_e32 v126, v136, v135
	v_fma_f32 v135, v136, v135, -v126
	v_add_f32_e32 v104, v135, v104
	v_add_f32_e32 v135, v126, v104
	v_sub_f32_e32 v126, v135, v126
	v_sub_f32_e32 v104, v104, v126
	v_ldexp_f32 v94, v94, 1
	v_add_f32_e32 v126, v94, v135
	v_sub_f32_e32 v94, v126, v94
	v_sub_f32_e32 v94, v135, v94
	v_ldexp_f32 v93, v93, 1
	v_add_f32_e32 v93, v93, v104
	v_add_f32_e32 v93, v94, v93
	v_add_f32_e32 v94, v126, v93
	v_sub_f32_e32 v104, v94, v126
	v_sub_f32_e32 v93, v93, v104
	v_add_f32_e32 v104, v137, v94
	v_sub_f32_e32 v126, v104, v137
	v_sub_f32_e32 v135, v104, v126
	v_sub_f32_e32 v135, v137, v135
	v_sub_f32_e32 v94, v94, v126
	v_add_f32_e32 v94, v94, v135
	v_add_f32_e32 v126, v105, v93
	v_sub_f32_e32 v135, v126, v105
	v_sub_f32_e32 v136, v126, v135
	v_sub_f32_e32 v105, v105, v136
	v_sub_f32_e32 v93, v93, v135
	v_add_f32_e32 v93, v93, v105
	v_add_f32_e32 v94, v126, v94
	v_add_f32_e32 v105, v104, v94
	v_sub_f32_e32 v104, v105, v104
	v_sub_f32_e32 v94, v94, v104
	v_add_f32_e32 v93, v93, v94
	v_add_f32_e32 v94, v105, v93
	v_sub_f32_e32 v104, v94, v105
	v_sub_f32_e32 v93, v93, v104
	v_add_f32_e32 v104, v94, v94
	v_fma_f32 v105, v94, 2.0, -v104
	v_mul_f32_e32 v126, 0, v94
	v_fma_f32 v135, v93, 2.0, v126
	v_add_f32_e32 v105, v105, v135
	v_add_f32_e32 v135, v104, v105
	v_sub_f32_e32 v136, v135, v104
	v_sub_f32_e32 v105, v105, v136
	v_cmp_class_f32_e64 vcc, v104, s92
	v_cndmask_b32_e32 v104, v135, v104, vcc
	v_mul_f32_e32 v135, s26, v104
	v_rndne_f32_e32 v135, v135
	v_mul_f32_e32 v136, s31, v135
	v_sub_f32_e32 v137, v104, v136
	v_sub_f32_e32 v138, v137, v104
	v_add_f32_e32 v136, v136, v138
	v_sub_f32_e32 v138, v137, v138
	v_sub_f32_e32 v138, v104, v138
	v_sub_f32_e32 v136, v138, v136
	v_cmp_neq_f32_e64 vcc, |v104|, s94
	v_cndmask_b32_e32 v105, 0, v105, vcc
	v_add_f32_e32 v105, v105, v136
	v_add_f32_e32 v136, v137, v105
	v_sub_f32_e32 v137, v136, v137
	v_sub_f32_e32 v105, v105, v137
	v_mul_f32_e32 v137, s30, v135
	v_sub_f32_e32 v138, v136, v137
	v_sub_f32_e32 v136, v136, v138
	v_sub_f32_e32 v136, v136, v137
	v_add_f32_e32 v105, v105, v136
	v_add_f32_e32 v136, v138, v105
	v_sub_f32_e32 v137, v136, v138
	v_sub_f32_e32 v105, v105, v137
	v_mul_f32_e32 v137, s29, v135
	v_sub_f32_e32 v138, v136, v137
	v_sub_f32_e32 v136, v136, v138
	v_sub_f32_e32 v136, v136, v137
	v_add_f32_e32 v105, v105, v136
	v_add_f32_e32 v136, v138, v105
	v_sub_f32_e32 v137, v136, v138
	v_sub_f32_e32 v105, v105, v137
	v_mul_f32_e32 v137, v136, v136
	v_fma_f32 v138, v136, v136, -v137
	v_add_f32_e32 v139, v105, v105
	v_fma_f32 v138, v136, v139, v138
	v_fma_f32 v138, v105, v105, v138
	v_add_f32_e32 v139, v137, v138
	v_sub_f32_e32 v137, v139, v137
	v_sub_f32_e32 v137, v138, v137
	v_fma_f32 v138, v136, s27, v127
	v_fma_f32 v138, v136, v138, s40
	v_fma_f32 v138, v136, v138, s35
	v_fma_f32 v138, v136, v138, s91
	v_mul_f32_e32 v140, v138, v139
	v_fma_f32 v139, v139, v138, -v140
	v_fma_f32 v137, v137, v138, v139
	v_fma_f32 v93, v93, s61, v126
	v_mul_f32_e32 v126, s61, v94
	v_fma_f32 v94, v94, s61, -v126
	v_add_f32_e32 v93, v94, v93
	v_add_f32_e32 v94, v126, v93
	v_sub_f32_e32 v138, v94, v126
	v_sub_f32_e32 v93, v93, v138
	v_cmp_class_f32_e64 vcc, v126, s92
	v_cndmask_b32_e32 v94, v94, v126, vcc
	v_mul_f32_e32 v126, s26, v94
	v_rndne_f32_e32 v126, v126
	v_mul_f32_e32 v138, s31, v126
	v_sub_f32_e32 v139, v94, v138
	v_sub_f32_e32 v141, v139, v94
	v_add_f32_e32 v138, v138, v141
	v_sub_f32_e32 v141, v139, v141
	v_sub_f32_e32 v141, v94, v141
	v_sub_f32_e32 v138, v141, v138
	v_cmp_neq_f32_e64 vcc, |v94|, s94
	v_cndmask_b32_e32 v93, 0, v93, vcc
	v_add_f32_e32 v93, v93, v138
	v_add_f32_e32 v138, v139, v93
	v_sub_f32_e32 v139, v138, v139
	v_sub_f32_e32 v93, v93, v139
	v_mul_f32_e32 v139, s30, v126
	v_sub_f32_e32 v141, v138, v139
	v_sub_f32_e32 v138, v138, v141
	v_sub_f32_e32 v138, v138, v139
	v_add_f32_e32 v93, v93, v138
	v_add_f32_e32 v138, v141, v93
	v_sub_f32_e32 v139, v138, v141
	v_sub_f32_e32 v93, v93, v139
	v_mul_f32_e32 v139, s29, v126
	v_sub_f32_e32 v141, v138, v139
	v_sub_f32_e32 v138, v138, v141
	v_sub_f32_e32 v138, v138, v139
	v_add_f32_e32 v93, v93, v138
	v_add_f32_e32 v138, v141, v93
	v_sub_f32_e32 v139, v138, v141
	v_sub_f32_e32 v93, v93, v139
	v_mul_f32_e32 v139, v138, v138
	v_fma_f32 v141, v138, v138, -v139
	v_add_f32_e32 v142, v93, v93
	v_fma_f32 v141, v138, v142, v141
	v_fma_f32 v141, v93, v93, v141
	v_add_f32_e32 v142, v139, v141
	v_sub_f32_e32 v139, v142, v139
	v_sub_f32_e32 v139, v141, v139
	v_fma_f32 v127, v138, s27, v127
	v_fma_f32 v127, v138, v127, s40
	v_fma_f32 v127, v138, v127, s35
	v_fma_f32 v127, v138, v127, s91
	v_mul_f32_e32 v141, v127, v142
	v_fma_f32 v142, v142, v127, -v141
	v_fma_f32 v127, v139, v127, v142
	v_add_f32_e32 v139, v140, v137
	v_sub_f32_e32 v140, v139, v140
	v_sub_f32_e32 v137, v137, v140
	v_add_f32_e32 v140, v136, v139
	v_sub_f32_e32 v136, v140, v136
	v_sub_f32_e32 v136, v139, v136
	v_add_f32_e32 v105, v105, v137
	v_add_f32_e32 v105, v136, v105
	v_add_f32_e32 v105, v140, v105
	v_cvt_i32_f32_e32 v135, v135
	v_add_f32_e32 v105, 1.0, v105
	v_ldexp_f32 v105, v105, v135
	v_add_f32_e32 v135, v141, v127
	v_sub_f32_e32 v136, v135, v141
	v_sub_f32_e32 v127, v127, v136
	v_add_f32_e32 v136, v138, v135
	v_sub_f32_e32 v137, v136, v138
	v_sub_f32_e32 v135, v135, v137
	v_add_f32_e32 v93, v93, v127
	v_add_f32_e32 v93, v135, v93
	v_add_f32_e32 v93, v136, v93
	v_cvt_i32_f32_e32 v126, v126
	v_add_f32_e32 v93, 1.0, v93
	v_ldexp_f32 v93, v93, v126
	v_cmp_nlt_f32_e32 vcc, s34, v94
	v_cndmask_b32_e32 v93, v123, v93, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v94
	v_cndmask_b32_e32 v93, 0, v93, vcc
	v_mov_b32_e32 v94, s14
	v_cmp_gt_f32_e32 vcc, 0, v134
	v_cndmask_b32_e32 v94, 0, v94, vcc
	v_bfi_b32 v93, s90, v93, v94
	v_bfi_b32 v94, s90, 0, v134
	v_cmp_eq_f32_e32 vcc, 0, v134
	v_cndmask_b32_e32 v126, v93, v94, vcc
	v_cmp_gt_f32_e64 s[0:1], s95, v104
	v_cmp_nlt_f32_e64 s[2:3], s34, v104
	v_cndmask_b32_e64 v93, v123, v105, s[2:3]
	s_or_b64 s[0:1], vcc, s[0:1]
	v_cndmask_b32_e64 v93, v93, 0, s[0:1]
	v_cmp_class_f32_e64 vcc, v134, s92
	v_cndmask_b32_e32 v93, v93, v123, vcc
	v_cmp_u_f32_e64 s[0:1], v134, v134
	v_cndmask_b32_e64 v93, |v93|, v134, s[0:1]
	v_cvt_f64_f32_e32 v[93:94], v93
	v_readlane_b32 s2, v172, 14
	v_readlane_b32 s3, v172, 15
	v_mul_f64 v[93:94], v[93:94], s[2:3]
	v_cvt_f64_f32_e32 v[104:105], v134
	v_readlane_b32 s2, v172, 16
	v_readlane_b32 s3, v172, 17
	v_fma_f64 v[93:94], v[104:105], s[2:3], v[93:94]
	s_mov_b32 s2, 0x3fdc28f6
	v_mul_f32_e32 v90, s2, v90
	v_mul_f32_e32 v127, v90, v110
	s_mov_b32 s6, 0x41380000
	v_fma_f32 v135, v88, v110, s6
	v_div_scale_f32 v104, s[2:3], v135, v135, v127
	v_rcp_f32_e32 v105, v104
	v_fma_f32 v136, -v104, v105, 1.0
	v_fma_f32 v105, v136, v105, v105
	v_div_scale_f32 v136, vcc, v127, v135, v127
	v_mul_f32_e32 v137, v136, v105
	v_fma_f32 v138, -v104, v137, v136
	v_fma_f32 v137, v138, v105, v137
	v_fma_f32 v104, -v104, v137, v136
	v_div_fmas_f32 v136, v104, v105, v137
	s_mov_b32 s2, 0xff800000
	v_mov_b32_e32 v104, s2
	v_cmp_class_f32_e64 vcc, v134, 4
	v_cndmask_b32_e32 v104, v126, v104, vcc
	s_movk_i32 s2, 0x200
	v_cmp_class_f32_e64 vcc, v134, s2
	v_cndmask_b32_e32 v104, v104, v123, vcc
	v_cndmask_b32_e64 v104, v104, v134, s[0:1]
	v_cvt_f64_f32_e32 v[104:105], v104
	v_readlane_b32 s0, v172, 18
	v_readlane_b32 s1, v172, 19
	v_fma_f64 v[93:94], v[104:105], s[0:1], v[93:94]
	v_div_fixup_f32 v104, v136, v135, v127
	v_cvt_f32_f64_e32 v93, v[93:94]
	v_fma_f32 v123, v117, v93, -v104
	v_sub_f32_e32 v87, v87, v114
	v_sub_f32_e32 v87, v87, v115
	v_mul_f32_e32 v93, s4, v115
	v_fma_f32 v126, v114, v97, v93
	v_sub_f32_e32 v93, 1.0, v116
	v_sub_f32_e32 v93, v93, v117
	s_mov_b32 s0, 0xc0566666
	v_mul_f32_e32 v94, s0, v117
	v_fma_f32 v127, v116, v97, v94
	s_mov_b32 s0, 0xb76ae18a
	v_mul_f32_e32 v94, s0, v114
	v_mul_f32_e32 v104, s0, v115
	s_mov_b32 s0, 0xc3a42dda
	v_mul_f32_e32 v105, s0, v116
	s_mov_b32 s0, 0xc00ccccd
	v_mul_f32_e32 v116, s0, v117
	v_mul_f32_e32 v114, v90, v111
	v_fma_f32 v115, v88, v111, s6
	v_div_scale_f32 v117, s[0:1], v115, v115, v114
	v_rcp_f32_e32 v134, v117
	v_fma_f32 v135, -v117, v134, 1.0
	v_fma_f32 v134, v135, v134, v134
	v_div_scale_f32 v135, vcc, v114, v115, v114
	v_mul_f32_e32 v136, v135, v134
	v_fma_f32 v137, -v117, v136, v135
	v_fma_f32 v136, v137, v134, v136
	v_fma_f32 v117, -v117, v136, v135
	v_div_fmas_f32 v117, v117, v134, v136
	v_fma_f32 v121, v129, v87, v121
	v_fma_f32 v129, v130, v87, v94
	v_fma_f32 v87, v131, v87, v104
	v_div_fixup_f32 v130, v117, v115, v114
	s_mov_b32 s0, 0xc4067dd3
	v_mul_f32_e32 v94, s0, v91
	v_fma_f32 v131, v118, v113, v94
	s_mov_b32 s0, 0xc050aa65
	v_mul_f32_e32 v94, s0, v92
	v_fma_f32 v132, v132, v113, v94
	v_sub_f32_e32 v93, v93, v110
	v_sub_f32_e32 v93, v93, v111
	v_sub_f32_e32 v117, v93, v112
	v_fma_f32 v134, v119, v117, v105
	v_mul_f32_e32 v93, v119, v112
	s_mov_b32 s0, 0x43a42dda
	v_fma_f32 v135, v111, s0, -v93
	v_sub_f32_e32 v93, v124, v125
	v_sub_f32_e32 v93, v93, v129
	v_sub_f32_e32 v93, v93, v132
	v_sub_f32_e32 v94, v135, v134
	v_fma_f32 v104, v88, v94, v93
	v_sub_f32_e64 v93, -v124, v121
	v_sub_f32_e32 v93, v93, v131
	v_cvt_f64_f32_e32 v[93:94], v93
	v_mul_f64 v[93:94], v[93:94], s[36:37]
	v_cvt_f64_f32_e32 v[104:105], v104
	v_mul_f64 v[104:105], v[104:105], s[36:37]
	v_cvt_f32_f64_e32 v114, v[93:94]
	v_cvt_f32_f64_e32 v115, v[104:105]
	s_mov_b32 s0, 0xbaaa64c3
	v_mul_f32_e32 v93, s0, v79
	v_fma_f32 v133, v133, v113, v93
	v_fma_f32 v136, v120, v117, v116
	v_mul_f32_e32 v93, v120, v112
	s_mov_b32 s0, 0x3b102de0
	v_fma_f32 v137, v110, s0, -v93
	v_sub_f32_e32 v93, v125, v87
	v_sub_f32_e32 v93, v93, v133
	v_sub_f32_e32 v94, v137, v136
	v_fma_f32 v93, v88, v94, v93
	v_cvt_f64_f32_e32 v[93:94], v93
	v_mul_f64 v[93:94], v[93:94], s[36:37]
	v_cvt_f32_f64_e32 v116, v[93:94]
	v_sub_f32_e32 v93, v121, v128
	v_cvt_f64_f32_e32 v[93:94], v93
	v_mul_f64 v[93:94], v[93:94], s[36:37]
	v_cvt_f32_f64_e32 v117, v[93:94]
	v_add_f32_e32 v93, v129, v128
	v_sub_f32_e32 v93, v93, v126
	v_cvt_f64_f32_e32 v[93:94], v93
	v_mul_f64 v[93:94], v[93:94], s[36:37]
	v_add_f32_e32 v87, v87, v126
	v_cvt_f64_f32_e32 v[104:105], v87
	v_mul_f64 v[104:105], v[104:105], s[36:37]
	v_cvt_f32_f64_e32 v118, v[93:94]
	v_cvt_f32_f64_e32 v119, v[104:105]
	v_sub_f32_e32 v87, v134, v127
	v_add_f32_e32 v87, v130, v87
	v_cvt_f64_f32_e32 v[93:94], v87
	v_mul_f64 v[93:94], v[93:94], s[36:37]
	v_cvt_f32_f64_e32 v120, v[93:94]
	v_add_f32_e32 v87, v136, v127
	v_sub_f32_e32 v87, v87, v123
	v_cvt_f64_f32_e32 v[93:94], v87
	v_mul_f64 v[93:94], v[93:94], s[36:37]
	v_cvt_f32_f64_e32 v121, v[93:94]
	s_movk_i32 s0, 0x130
	v_add_u32_e32 v104, vcc, s0, v74
	v_addc_u32_e32 v105, vcc, 0, v75, vcc
	flat_store_dwordx4 v[104:105], v[114:117]
	s_movk_i32 s0, 0x140
	v_add_u32_e32 v93, vcc, s0, v74
	v_addc_u32_e32 v94, vcc, 0, v75, vcc
	flat_store_dwordx4 v[93:94], v[118:121]
	v_sub_f32_e32 v87, v89, v113
	v_sub_f32_e32 v87, v87, v91
	v_sub_f32_e32 v87, v87, v92
	v_sub_f32_e32 v87, v87, v79
	v_add_f32_e32 v89, v100, v100
	v_fma_f32 v87, v87, v89, -v113
	v_mul_f32_e32 v89, v111, v97
	s_mov_b32 s0, 0x3b5b8bac
	v_fma_f32 v100, v110, s0, -v89
	v_mul_f32_e32 v89, v90, v112
	v_fma_f32 v90, v88, v112, s6
	v_div_scale_f32 v93, s[0:1], v90, v90, v89
	v_rcp_f32_e32 v94, v93
	v_fma_f32 v110, -v93, v94, 1.0
	v_fma_f32 v94, v110, v94, v94
	v_div_scale_f32 v110, vcc, v89, v90, v89
	v_mul_f32_e32 v111, v110, v94
	v_fma_f32 v112, -v93, v111, v110
	v_fma_f32 v111, v112, v94, v111
	v_fma_f32 v93, -v93, v111, v110
	v_div_fmas_f32 v93, v93, v94, v111
	v_div_fixup_f32 v112, v93, v90, v89
	v_sub_f32_e32 v89, v100, v135
	v_sub_f32_e32 v93, v89, v130
	v_sub_f32_e32 v89, v123, v137
	v_sub_f32_e32 v89, v89, v100
	v_cvt_f64_f32_e32 v[89:90], v89
	v_mul_f64 v[89:90], v[89:90], s[36:37]
	v_cvt_f64_f32_e32 v[93:94], v93
	v_mul_f64 v[93:94], v[93:94], s[36:37]
	v_cvt_f32_f64_e32 v110, v[89:90]
	v_cvt_f32_f64_e32 v111, v[93:94]
	v_add_f32_e32 v89, v137, v135
	v_sub_f32_e32 v89, v89, v112
	v_cvt_f64_f32_e32 v[89:90], v89
	v_mul_f64 v[89:90], v[89:90], s[36:37]
	v_cvt_f32_f64_e32 v112, v[89:90]
	v_sub_f32_e32 v89, v87, v131
	v_sub_f32_e32 v89, v89, v132
	v_sub_f32_e32 v89, v89, v133
	v_cvt_f64_f32_e32 v[89:90], v89
	v_mul_f64 v[89:90], v[89:90], s[36:37]
	v_cvt_f32_f64_e32 v113, v[89:90]
	s_movk_i32 s0, 0x150
	v_add_u32_e32 v89, vcc, s0, v74
	v_addc_u32_e32 v90, vcc, 0, v75, vcc
	flat_store_dwordx4 v[89:90], v[110:113]
	s_mov_b32 s0, 0xbd783e10
	v_mul_f32_e32 v89, s0, v92
	v_fma_f32 v93, v91, v122, v89
	s_mov_b32 s0, 0xbb82a766
	v_mul_f32_e32 v79, s0, v79
	v_fma_f32 v79, v92, v97, v79
	v_sub_f32_e32 v89, v131, v93
	v_cvt_f64_f32_e32 v[89:90], v89
	v_mul_f64 v[89:90], v[89:90], s[36:37]
	v_add_f32_e32 v91, v132, v93
	v_sub_f32_e32 v91, v91, v79
	v_cvt_f64_f32_e32 v[91:92], v91
	v_mul_f64 v[91:92], v[91:92], s[36:37]
	v_cvt_f32_f64_e32 v89, v[89:90]
	v_cvt_f32_f64_e32 v90, v[91:92]
	v_add_f32_e32 v91, v133, v79
	v_cvt_f64_f32_e32 v[91:92], v91
	v_mul_f64 v[91:92], v[91:92], s[36:37]
	v_cvt_f32_f64_e32 v91, v[91:92]
	s_movk_i32 s0, 0x160
	v_add_u32_e32 v74, vcc, s0, v74
	v_addc_u32_e32 v75, vcc, 0, v75, vcc
	flat_store_dwordx3 v[74:75], v[89:91]
	v_add_f32_e32 v74, v88, v88
	v_sub_f32_e32 v75, v100, v127
	v_add_f32_e32 v88, v125, v124
	v_add_f32_e32 v88, v128, v88
	v_add_f32_e32 v88, v126, v88
	v_add_f32_e32 v87, v87, v88
	v_add_f32_e32 v87, v93, v87
	v_add_f32_e32 v79, v79, v87
	v_add_f32_e32 v79, v79, v79
	v_fma_f32 v74, v74, v75, -v79
	v_cvt_f64_f32_e32 v[74:75], v74
	v_mul_f64 v[74:75], v[74:75], s[36:37]
	v_cvt_f32_f64_e32 v74, v[74:75]
	flat_store_dword v[106:107], v74
	v_cvt_f64_f32_e32 v[74:75], v101
	flat_load_dword v79, v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[87:88], v79
	v_fma_f64 v[74:75], v[87:88], s[36:37], v[74:75]
	v_cvt_f32_f64_e32 v79, v[74:75]
	flat_load_dwordx2 v[74:75], v[13:14]
	s_nop 0
	flat_store_dword v[108:109], v79
	flat_load_dword v79, v[45:46]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[87:88], v79
	v_cvt_f64_f32_e32 v[89:90], v98
	v_fma_f64 v[87:88], v[87:88], s[36:37], v[89:90]
	v_cvt_f32_f64_e32 v79, v[87:88]
	flat_store_dword v[102:103], v79
	v_cvt_f64_f32_e32 v[87:88], v99
	flat_load_dword v79, v[47:48]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[89:90], v79
	v_fma_f64 v[87:88], v[89:90], s[36:37], v[87:88]
	v_cvt_f32_f64_e32 v79, v[87:88]
	flat_store_dword v[95:96], v79
	v_add_u32_e32 v95, vcc, 16, v37
	v_addc_u32_e32 v96, vcc, 0, v38, vcc
	flat_load_dwordx4 v[87:90], v[37:38]
	flat_load_dwordx4 v[91:94], v[39:40]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_f32_e32 v79, v87, v88
	v_add_f32_e32 v79, v79, v89
	v_add_f32_e32 v79, v79, v90
	v_add_u32_e32 v97, vcc, 16, v39
	v_addc_u32_e32 v98, vcc, 0, v40, vcc
	flat_load_dwordx2 v[99:100], v[97:98]
	s_nop 0
	flat_load_dwordx4 v[95:98], v[95:96]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v79, v79, v95
	v_add_f32_e32 v79, v79, v96
	v_add_f32_e32 v90, v97, v98
	v_add_u32_e32 v95, vcc, 32, v37
	v_addc_u32_e32 v96, vcc, 0, v38, vcc
	flat_load_dwordx2 v[101:102], v[95:96]
	s_nop 0
	flat_load_dwordx3 v[95:97], v[43:44]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_f32_e32 v90, v90, v101
	v_add_f32_e32 v90, v90, v102
	v_fma_f32 v75, v75, v90, v79
	v_add_f32_e32 v75, v91, v75
	v_add_f32_e32 v75, v92, v75
	v_add_f32_e32 v75, v93, v75
	v_sub_f32_e32 v74, v74, v75
	v_mul_f32_e32 v74, s5, v74
	v_mul_f32_e32 v75, v94, v74
	s_mov_b32 s0, 0x3ab78034
	v_fma_f32 v75, v87, s0, -v75
	v_mul_f32_e32 v79, v99, v74
	s_mov_b32 s0, 0x376ae18a
	v_fma_f32 v79, v88, s0, -v79
	v_mul_f32_e32 v74, v100, v74
	v_fma_f32 v87, v89, s0, -v74
	v_cvt_f64_f32_e32 v[74:75], v75
	v_mul_f64 v[74:75], v[74:75], s[36:37]
	v_cvt_f32_f64_e32 v88, v[74:75]
	v_cvt_f64_f32_e32 v[74:75], v79
	v_mul_f64 v[74:75], v[74:75], s[36:37]
	v_cvt_f32_f64_e32 v79, v[74:75]
	v_cvt_f64_f32_e32 v[74:75], v87
	v_mul_f64 v[74:75], v[74:75], s[36:37]
	v_cvt_f32_f64_e32 v87, v[74:75]
	v_sub_f32_e32 v74, v76, v88
	v_sub_f32_e32 v75, v77, v79
	v_sub_f32_e32 v76, v78, v87
	flat_store_dwordx3 v[80:81], v[74:76]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_sub_f32_e32 v74, v94, v95
	v_sub_f32_e32 v75, v99, v96
	v_sub_f32_e32 v76, v100, v97
	s_mov_b32 s4, 0x28a03cf2
	v_mul_f32_e32 v77, s4, v88
	s_mov_b32 s2, 0x2b39cf61
	v_div_scale_f32 v78, s[0:1], s2, s2, v77
	v_rcp_f32_e32 v80, v78
	v_fma_f32 v81, -v78, v80, 1.0
	v_fma_f32 v80, v81, v80, v80
	v_div_scale_f32 v81, vcc, v77, s2, v77
	v_mul_f32_e32 v88, v81, v80
	v_fma_f32 v89, -v78, v88, v81
	v_fma_f32 v88, v89, v80, v88
	v_fma_f32 v78, -v78, v88, v81
	v_div_fmas_f32 v78, v78, v80, v88
	s_mov_b32 s3, 0x281ab08c
	v_mul_f32_e32 v80, s3, v74
	v_div_scale_f32 v74, s[0:1], s2, s2, v80
	v_rcp_f32_e32 v81, v74
	v_fma_f32 v88, -v74, v81, 1.0
	v_fma_f32 v81, v88, v81, v81
	v_div_scale_f32 v88, vcc, v80, s2, v80
	v_mul_f32_e32 v89, v88, v81
	v_fma_f32 v90, -v74, v89, v88
	v_fma_f32 v89, v90, v81, v89
	v_fma_f32 v74, -v74, v89, v88
	v_div_fmas_f32 v74, v74, v81, v89
	v_mul_f32_e32 v79, s4, v79
	v_div_scale_f32 v81, s[0:1], s2, s2, v79
	v_rcp_f32_e32 v88, v81
	v_fma_f32 v89, -v81, v88, 1.0
	v_fma_f32 v88, v89, v88, v88
	v_div_scale_f32 v89, vcc, v79, s2, v79
	v_mul_f32_e32 v90, v89, v88
	v_fma_f32 v91, -v81, v90, v89
	v_fma_f32 v90, v91, v88, v90
	v_fma_f32 v81, -v81, v90, v89
	v_div_fmas_f32 v81, v81, v88, v90
	v_mul_f32_e32 v88, s3, v75
	v_div_scale_f32 v75, s[0:1], s2, s2, v88
	v_rcp_f32_e32 v89, v75
	v_fma_f32 v90, -v75, v89, 1.0
	v_fma_f32 v89, v90, v89, v89
	v_div_scale_f32 v90, vcc, v88, s2, v88
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v75, v91, v90
	v_fma_f32 v91, v92, v89, v91
	v_fma_f32 v75, -v75, v91, v90
	v_div_fmas_f32 v75, v75, v89, v91
	v_mul_f32_e32 v87, s4, v87
	v_div_scale_f32 v89, s[0:1], s2, s2, v87
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v91, -v89, v90, 1.0
	v_fma_f32 v90, v91, v90, v90
	v_div_scale_f32 v91, vcc, v87, s2, v87
	v_mul_f32_e32 v92, v91, v90
	v_fma_f32 v93, -v89, v92, v91
	v_fma_f32 v92, v93, v90, v92
	v_fma_f32 v89, -v89, v92, v91
	v_div_fmas_f32 v89, v89, v90, v92
	v_div_fixup_f32 v77, v78, s2, v77
	v_div_fixup_f32 v78, v81, s2, v79
	v_div_fixup_f32 v79, v89, s2, v87
	v_add_f32_e32 v77, v77, v84
	v_add_f32_e32 v78, v78, v85
	v_add_f32_e32 v79, v79, v86
	v_mul_f32_e32 v81, s3, v76
	v_div_scale_f32 v76, s[0:1], s2, s2, v81
	v_rcp_f32_e32 v84, v76
	v_fma_f32 v85, -v76, v84, 1.0
	v_fma_f32 v84, v85, v84, v84
	v_div_scale_f32 v85, vcc, v81, s2, v81
	v_mul_f32_e32 v86, v85, v84
	v_fma_f32 v87, -v76, v86, v85
	v_fma_f32 v86, v87, v84, v86
	v_fma_f32 v76, -v76, v86, v85
	v_div_fmas_f32 v76, v76, v84, v86
	s_mov_b32 s3, 0x2dbcb61d
	v_div_scale_f32 v84, s[0:1], s3, s3, v80
	v_rcp_f32_e32 v85, v84
	v_fma_f32 v86, -v84, v85, 1.0
	v_fma_f32 v85, v86, v85, v85
	v_div_scale_f32 v86, vcc, v80, s3, v80
	v_mul_f32_e32 v87, v86, v85
	v_fma_f32 v89, -v84, v87, v86
	v_fma_f32 v87, v89, v85, v87
	v_fma_f32 v84, -v84, v87, v86
	v_div_fmas_f32 v84, v84, v85, v87
	v_div_scale_f32 v85, s[0:1], s3, s3, v88
	v_rcp_f32_e32 v86, v85
	v_fma_f32 v87, -v85, v86, 1.0
	v_fma_f32 v86, v87, v86, v86
	v_div_scale_f32 v87, vcc, v88, s3, v88
	v_mul_f32_e32 v89, v87, v86
	v_fma_f32 v90, -v85, v89, v87
	v_fma_f32 v89, v90, v86, v89
	v_fma_f32 v85, -v85, v89, v87
	v_div_fmas_f32 v85, v85, v86, v89
	v_div_scale_f32 v86, s[0:1], s3, s3, v81
	v_rcp_f32_e32 v87, v86
	v_fma_f32 v89, -v86, v87, 1.0
	v_fma_f32 v87, v89, v87, v87
	v_div_scale_f32 v89, vcc, v81, s3, v81
	v_mul_f32_e32 v90, v89, v87
	v_fma_f32 v91, -v86, v90, v89
	v_fma_f32 v90, v91, v87, v90
	v_fma_f32 v86, -v86, v90, v89
	v_div_fmas_f32 v86, v86, v87, v90
	v_div_fixup_f32 v74, v74, s2, v80
	v_div_fixup_f32 v75, v75, s2, v88
	v_sub_f32_e32 v74, v77, v74
	v_sub_f32_e32 v75, v78, v75
	v_div_fixup_f32 v76, v76, s2, v81
	v_sub_f32_e32 v76, v79, v76
	v_div_fixup_f32 v77, v84, s3, v80
	v_div_fixup_f32 v78, v85, s3, v88
	v_add_f32_e32 v77, v77, v114
	v_add_f32_e32 v78, v78, v115
	v_div_fixup_f32 v79, v86, s3, v81
	flat_store_dwordx3 v[82:83], v[74:76]
	v_add_f32_e32 v79, v79, v116
	flat_store_dwordx3 v[104:105], v[77:79]
	s_mov_b64 s[0:1], 0
	s_branch BB1_109
BB1_108:                                ;   in Loop: Header=BB1_109 Depth=4
	s_or_b64 exec, exec, s[2:3]
	s_add_u32 s0, s0, 4
	s_addc_u32 s1, s1, 0
	s_cmp_lg_u32 s0, s60
	s_cbranch_scc0 BB1_8
BB1_109:                                ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ;       Parent Loop BB1_9 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	v_add_u32_e32 v74, vcc, s0, v62
	v_mov_b32_e32 v75, s1
	v_addc_u32_e32 v75, vcc, v63, v75, vcc
	flat_load_dword v76, v[74:75]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_u_f32_e32 vcc, v76, v76
	v_cmp_class_f32_e64 s[2:3], v76, s92
	s_or_b64 s[4:5], vcc, s[2:3]
	s_and_saveexec_b64 s[2:3], s[4:5]
	s_cbranch_execz BB1_108
; %bb.110:                              ; %.sink.split
                                        ;   in Loop: Header=BB1_109 Depth=4
	v_mov_b32_e32 v76, 0x38d1b717
	flat_store_dword v[74:75], v76
	s_branch BB1_108
BB1_111:                                ; %.preheader295.preheader
                                        ;   in Loop: Header=BB1_7 Depth=2
	s_mov_b64 s[0:1], 0
	s_movk_i32 s2, 0x71c
	s_movk_i32 s3, 0x888
	s_movk_i32 s4, 0x9f4
	s_movk_i32 s5, 0xb60
	s_movk_i32 s6, 0xccc
	s_movk_i32 s7, 0xfa4
	s_movk_i32 s12, 0xe38
	s_mov_b32 s13, 0x3d47ec7f
	s_mov_b32 s15, 0x3e83a83b
	s_mov_b32 s20, 0x3d03a83b
	s_movk_i32 s21, 0x1110
BB1_112:                                ; %.preheader295
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	v_add_u32_e32 v60, vcc, s0, v50
	v_mov_b32_e32 v61, s1
	v_addc_u32_e32 v61, vcc, v55, v61, vcc
	flat_load_dword v64, v[60:61]
	v_add_u32_e32 v60, vcc, s0, v8
	v_mov_b32_e32 v61, s1
	v_addc_u32_e32 v61, vcc, v9, v61, vcc
	flat_load_dword v65, v[60:61]
	v_add_u32_e32 v62, vcc, s12, v60
	v_addc_u32_e32 v63, vcc, 0, v61, vcc
	flat_load_dword v62, v[62:63]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v65, v65, v62
	v_add_u32_e32 v62, vcc, s2, v60
	v_addc_u32_e32 v63, vcc, 0, v61, vcc
	flat_load_dword v62, v[62:63]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v62, 0x3ea5ca5d, v62
	v_fma_f32 v65, v65, s13, v62
	v_add_u32_e32 v62, vcc, s3, v60
	v_addc_u32_e32 v63, vcc, 0, v61, vcc
	flat_load_dword v66, v[62:63]
	v_add_u32_e32 v62, vcc, s4, v60
	v_addc_u32_e32 v63, vcc, 0, v61, vcc
	flat_load_dword v62, v[62:63]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v62, v66, v62
	v_fma_f32 v65, v62, s15, v65
	v_add_u32_e32 v62, vcc, s5, v60
	v_addc_u32_e32 v63, vcc, 0, v61, vcc
	flat_load_dword v62, v[62:63]
	v_add_u32_e32 v60, vcc, s6, v60
	v_addc_u32_e32 v61, vcc, 0, v61, vcc
	flat_load_dword v60, v[60:61]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v60, v62, v60
	v_fma_f32 v60, v60, s20, v65
	v_fma_f32 v62, v59, v60, v64
	v_add_u32_e32 v60, vcc, s0, v54
	v_mov_b32_e32 v61, s1
	v_addc_u32_e32 v61, vcc, v56, v61, vcc
	flat_store_dword v[60:61], v62
	s_add_u32 s0, s0, 4
	s_addc_u32 s1, s1, 0
	s_cmp_lg_u32 s0, s60
	s_cbranch_scc1 BB1_112
; %bb.113:                              ; %.preheader294.preheader
                                        ;   in Loop: Header=BB1_7 Depth=2
	s_mov_b64 s[0:1], 0
	s_mov_b32 s24, 0x3ed55555
	v_readlane_b32 s33, v174, 19
BB1_114:                                ; %.preheader294
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	v_add_u32_e32 v60, vcc, s0, v8
	v_mov_b32_e32 v61, s1
	v_addc_u32_e32 v61, vcc, v9, v61, vcc
	flat_load_dword v64, v[60:61]
	v_add_u32_e32 v62, vcc, s12, v60
	v_addc_u32_e32 v63, vcc, 0, v61, vcc
	flat_load_dword v62, v[62:63]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v64, v64, v62
	v_add_u32_e32 v62, vcc, s7, v60
	v_addc_u32_e32 v63, vcc, 0, v61, vcc
	flat_load_dword v62, v[62:63]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_f32_e32 v62, v64, v62
	v_add_u32_e32 v60, vcc, s21, v60
	v_addc_u32_e32 v61, vcc, 0, v61, vcc
	flat_load_dword v60, v[60:61]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_f32_e32 v60, v62, v60
	v_mul_f32_e32 v60, 0xbd47ec7f, v60
	v_and_b32_e32 v62, s90, v60
	v_add_u32_e32 v60, vcc, s0, v4
	v_mov_b32_e32 v61, s1
	v_addc_u32_e32 v61, vcc, v5, v61, vcc
	flat_store_dword v[60:61], v62
	s_add_u32 s0, s0, 4
	s_addc_u32 s1, s1, 0
	s_cmp_lg_u32 s0, s60
	s_cbranch_scc1 BB1_114
; %bb.115:                              ; %_Z23embedded_fehlberg_7_8_2ffPfS_S_S_S_S_S_.exit.preheader
                                        ;   in Loop: Header=BB1_7 Depth=2
	s_mov_b64 s[0:1], 0
	v_mov_b32_e32 v60, 0
BB1_116:                                ; %_Z23embedded_fehlberg_7_8_2ffPfS_S_S_S_S_S_.exit
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	v_add_u32_e32 v61, vcc, s0, v4
	v_mov_b32_e32 v62, s1
	v_addc_u32_e32 v62, vcc, v5, v62, vcc
	flat_load_dword v61, v[61:62]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_nlt_f32_e32 vcc, 0, v61
	v_cndmask_b32_e32 v60, 1, v60, vcc
	s_add_u32 s0, s0, 4
	s_addc_u32 s1, s1, 0
	s_cmp_lg_u32 s0, s60
	s_cbranch_scc1 BB1_116
; %bb.117:                              ;   in Loop: Header=BB1_7 Depth=2
	v_cmp_eq_u32_e32 vcc, 1, v60
	s_mov_b64 s[0:1], -1
	v_mov_b32_e32 v62, s33
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz BB1_6
; %bb.118:                              ; %.preheader293.preheader
                                        ;   in Loop: Header=BB1_7 Depth=2
	s_mov_b64 s[6:7], s[16:17]
	s_mov_b64 s[4:5], 0
	v_mov_b32_e32 v60, 4.0
	v_mov_b32_e32 v61, v1
	v_readlane_b32 s8, v170, 0
	v_readlane_b32 s9, v170, 1
	v_readlane_b32 s10, v170, 2
	v_readlane_b32 s11, v170, 3
	v_readlane_b32 s12, v170, 4
	v_readlane_b32 s13, v170, 5
	v_readlane_b32 s14, v170, 6
	v_readlane_b32 s15, v170, 7
	v_readlane_b32 s16, v170, 8
	v_readlane_b32 s17, v170, 9
	v_readlane_b32 s18, v170, 10
	v_readlane_b32 s19, v170, 11
	v_readlane_b32 s20, v170, 12
	v_readlane_b32 s21, v170, 13
	v_readlane_b32 s22, v170, 14
	v_readlane_b32 s23, v170, 15
	s_mov_b32 s10, 0x3c091de6
	v_readlane_b32 s8, v170, 24
	v_readlane_b32 s9, v170, 25
	s_mov_b32 s9, 0x3e91f4c4
	s_movk_i32 s11, 0x3c0
	s_mov_b32 s12, 0x7fc00000
	s_mov_b32 s13, 0x3e124925
	v_readlane_b32 s14, v174, 11
	v_readlane_b32 s15, v174, 12
BB1_119:                                ; %.preheader293
                                        ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	v_add_u32_e32 v62, vcc, s4, v50
	v_mov_b32_e32 v63, s5
	v_addc_u32_e32 v63, vcc, v55, v63, vcc
	flat_load_dword v62, v[62:63]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_eq_f32_e32 vcc, 0, v62
	v_cndmask_b32_e64 v66, |v62|, v21, vcc
	v_ashrrev_i32_e32 v62, 31, v61
	v_lshlrev_b64 v[62:63], 2, v[61:62]
	v_add_u32_e32 v64, vcc, s20, v62
	v_mov_b32_e32 v65, s21
	v_addc_u32_e32 v65, vcc, v65, v63, vcc
	flat_store_dword v[64:65], v66
	v_mul_f32_e32 v66, v21, v66
	v_add_u32_e32 v64, vcc, s4, v4
	v_mov_b32_e32 v65, s5
	v_addc_u32_e32 v65, vcc, v5, v65, vcc
	flat_load_dword v64, v[64:65]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_div_scale_f32 v65, s[0:1], v64, v64, v66
	v_rcp_f32_e32 v67, v65
	v_fma_f32 v68, -v65, v67, 1.0
	v_fma_f32 v67, v68, v67, v67
	v_div_scale_f32 v68, vcc, v66, v64, v66
	v_mul_f32_e32 v69, v68, v67
	v_fma_f32 v70, -v65, v69, v68
	v_fma_f32 v69, v70, v67, v69
	v_fma_f32 v65, -v65, v69, v68
	v_div_fmas_f32 v65, v65, v67, v69
	v_div_fixup_f32 v64, v65, v64, v66
	v_frexp_mant_f32_e64 v65, |v64|
	v_cmp_gt_f32_e32 vcc, s42, v65
	v_cndmask_b32_e64 v66, 0, 1, vcc
	v_ldexp_f32 v65, v65, v66
	v_frexp_exp_i32_f32_e64 v66, |v64|
	v_subbrev_u32_e32 v66, vcc, 0, v66, vcc
	v_add_f32_e32 v67, -1.0, v65
	v_add_f32_e32 v68, 1.0, v65
	v_sub_f32_e32 v69, v68, v65
	v_sub_f32_e32 v70, v68, v69
	v_sub_f32_e32 v65, v65, v70
	v_sub_f32_e32 v69, 1.0, v69
	v_add_f32_e32 v65, v69, v65
	v_rcp_f32_e32 v69, v68
	v_mul_f32_e32 v70, v67, v69
	v_mul_f32_e32 v71, v68, v70
	v_fma_f32 v68, v70, v68, -v71
	v_fma_f32 v65, v70, v65, v68
	v_add_f32_e32 v68, v71, v65
	v_sub_f32_e32 v71, v68, v71
	v_sub_f32_e32 v65, v65, v71
	v_sub_f32_e32 v71, v67, v68
	v_sub_f32_e32 v67, v67, v71
	v_sub_f32_e32 v67, v67, v68
	v_sub_f32_e32 v65, v67, v65
	v_add_f32_e32 v65, v71, v65
	v_mul_f32_e32 v65, v69, v65
	v_add_f32_e32 v67, v70, v65
	v_sub_f32_e32 v68, v67, v70
	v_sub_f32_e32 v65, v65, v68
	v_mul_f32_e32 v68, v67, v67
	v_add_f32_e32 v69, v65, v65
	v_fma_f32 v70, v67, v67, -v68
	v_fma_f32 v69, v67, v69, v70
	v_fma_f32 v69, v65, v65, v69
	v_add_f32_e32 v70, v68, v69
	v_sub_f32_e32 v68, v70, v68
	v_sub_f32_e32 v68, v69, v68
	v_mov_b32_e32 v69, s9
	v_fma_f32 v69, v70, s48, v69
	v_fma_f32 v69, v70, v69, s93
	v_cvt_f32_i32_e32 v66, v66
	v_mul_f32_e32 v71, s45, v66
	v_fma_f32 v72, v66, s45, -v71
	v_fma_f32 v66, v66, s44, v72
	v_add_f32_e32 v72, v71, v66
	v_sub_f32_e32 v71, v72, v71
	v_sub_f32_e32 v66, v66, v71
	v_ldexp_f32 v71, v67, 1
	v_mul_f32_e32 v73, v67, v70
	v_fma_f32 v74, v70, v67, -v73
	v_mul_f32_e32 v67, v67, v68
	v_fma_f32 v67, v70, v65, v67
	v_add_f32_e32 v67, v74, v67
	v_add_f32_e32 v74, v73, v67
	v_mul_f32_e32 v75, v70, v69
	v_fma_f32 v70, v70, v69, -v75
	v_fma_f32 v68, v68, v69, v70
	v_add_f32_e32 v69, v75, v68
	v_sub_f32_e32 v70, v69, v75
	v_sub_f32_e32 v68, v68, v70
	v_add_f32_e32 v70, s28, v69
	v_add_f32_e32 v75, s41, v70
	v_sub_f32_e32 v69, v69, v75
	v_add_f32_e32 v68, s49, v68
	v_add_f32_e32 v68, v69, v68
	v_add_f32_e32 v69, v70, v68
	v_mul_f32_e32 v75, v74, v69
	v_fma_f32 v76, v74, v69, -v75
	v_sub_f32_e32 v70, v69, v70
	v_sub_f32_e32 v68, v68, v70
	v_sub_f32_e32 v70, v74, v73
	v_sub_f32_e32 v67, v67, v70
	v_mul_f32_e32 v67, v67, v69
	v_fma_f32 v67, v74, v68, v67
	v_add_f32_e32 v67, v76, v67
	v_ldexp_f32 v65, v65, 1
	v_add_f32_e32 v68, v75, v67
	v_sub_f32_e32 v69, v68, v75
	v_sub_f32_e32 v67, v67, v69
	v_add_f32_e32 v69, v71, v68
	v_sub_f32_e32 v70, v69, v71
	v_sub_f32_e32 v68, v68, v70
	v_add_f32_e32 v65, v65, v67
	v_add_f32_e32 v65, v68, v65
	v_add_f32_e32 v67, v69, v65
	v_sub_f32_e32 v68, v67, v69
	v_sub_f32_e32 v65, v65, v68
	v_add_f32_e32 v68, v72, v67
	v_sub_f32_e32 v69, v68, v72
	v_sub_f32_e32 v70, v68, v69
	v_sub_f32_e32 v70, v72, v70
	v_sub_f32_e32 v67, v67, v69
	v_add_f32_e32 v67, v67, v70
	v_add_f32_e32 v69, v66, v65
	v_sub_f32_e32 v70, v69, v66
	v_sub_f32_e32 v71, v69, v70
	v_sub_f32_e32 v66, v66, v71
	v_sub_f32_e32 v65, v65, v70
	v_add_f32_e32 v65, v65, v66
	v_add_f32_e32 v66, v69, v67
	v_add_f32_e32 v67, v68, v66
	v_sub_f32_e32 v68, v67, v68
	v_sub_f32_e32 v66, v66, v68
	v_add_f32_e32 v65, v65, v66
	v_add_f32_e32 v66, v67, v65
	v_sub_f32_e32 v67, v66, v67
	v_sub_f32_e32 v65, v65, v67
	v_mul_f32_e32 v67, s13, v66
	v_fma_f32 v66, v66, s13, -v67
	v_fma_f32 v65, v65, s13, v66
	v_add_f32_e32 v66, v67, v65
	v_sub_f32_e32 v68, v66, v67
	v_sub_f32_e32 v65, v65, v68
	v_cmp_class_f32_e64 vcc, v67, s92
	v_cndmask_b32_e32 v66, v66, v67, vcc
	v_cmp_neq_f32_e64 vcc, |v66|, s94
	v_cndmask_b32_e32 v65, 0, v65, vcc
	v_mul_f32_e32 v67, s26, v66
	v_rndne_f32_e32 v67, v67
	v_mul_f32_e32 v68, s31, v67
	v_sub_f32_e32 v69, v66, v68
	v_sub_f32_e32 v70, v69, v66
	v_sub_f32_e32 v71, v69, v70
	v_sub_f32_e32 v71, v66, v71
	v_add_f32_e32 v68, v68, v70
	v_sub_f32_e32 v68, v71, v68
	v_add_f32_e32 v65, v65, v68
	v_add_f32_e32 v68, v69, v65
	v_sub_f32_e32 v69, v68, v69
	v_sub_f32_e32 v65, v65, v69
	v_mul_f32_e32 v69, s30, v67
	v_sub_f32_e32 v70, v68, v69
	v_sub_f32_e32 v68, v68, v70
	v_sub_f32_e32 v68, v68, v69
	v_add_f32_e32 v65, v65, v68
	v_add_f32_e32 v68, v70, v65
	v_sub_f32_e32 v69, v68, v70
	v_sub_f32_e32 v65, v65, v69
	v_mul_f32_e32 v69, s29, v67
	v_sub_f32_e32 v70, v68, v69
	v_sub_f32_e32 v68, v68, v70
	v_sub_f32_e32 v68, v68, v69
	v_add_f32_e32 v65, v65, v68
	v_add_f32_e32 v68, v70, v65
	v_sub_f32_e32 v69, v68, v70
	v_sub_f32_e32 v65, v65, v69
	v_mov_b32_e32 v69, s10
	v_fma_f32 v69, v68, s27, v69
	v_fma_f32 v69, v68, v69, s40
	v_fma_f32 v69, v68, v69, s35
	v_fma_f32 v69, v68, v69, s91
	v_mul_f32_e32 v70, v68, v68
	v_fma_f32 v71, v68, v68, -v70
	v_add_f32_e32 v72, v65, v65
	v_fma_f32 v71, v68, v72, v71
	v_fma_f32 v71, v65, v65, v71
	v_add_f32_e32 v72, v70, v71
	v_mul_f32_e32 v73, v69, v72
	v_sub_f32_e32 v70, v72, v70
	v_sub_f32_e32 v70, v71, v70
	v_fma_f32 v71, v72, v69, -v73
	v_fma_f32 v69, v70, v69, v71
	v_add_f32_e32 v70, v73, v69
	v_sub_f32_e32 v71, v70, v73
	v_sub_f32_e32 v69, v69, v71
	v_add_f32_e32 v71, v68, v70
	v_sub_f32_e32 v68, v71, v68
	v_sub_f32_e32 v68, v70, v68
	v_add_f32_e32 v65, v65, v69
	v_add_f32_e32 v65, v68, v65
	v_add_f32_e32 v65, v71, v65
	v_add_f32_e32 v65, 1.0, v65
	v_cvt_i32_f32_e32 v67, v67
	v_ldexp_f32 v65, v65, v67
	v_cmp_nlt_f32_e32 vcc, s34, v66
	v_mov_b32_e32 v67, s94
	v_cndmask_b32_e32 v65, v67, v65, vcc
	v_cmp_ngt_f32_e32 vcc, s95, v66
	v_cndmask_b32_e32 v65, 0, v65, vcc
	v_cmp_u_f32_e32 vcc, v64, v64
	v_cmp_class_f32_e64 s[0:1], v64, s11
	v_mov_b32_e32 v66, s12
	v_cndmask_b32_e64 v65, v66, v65, s[0:1]
	v_cmp_neq_f32_e64 s[0:1], 0, v64
	v_cndmask_b32_e64 v65, 0, v65, s[0:1]
	v_cmp_class_f32_e64 s[0:1], v64, s92
	v_cndmask_b32_e64 v65, v65, v67, s[0:1]
	v_cndmask_b32_e64 v65, |v65|, v64, vcc
	v_cmp_neq_f32_e32 vcc, 1.0, v64
	v_cndmask_b32_e32 v64, 1.0, v65, vcc
	v_cvt_f64_f32_e32 v[64:65], v64
	s_mov_b32 s14, s8
	v_mul_f64 v[64:65], v[64:65], s[14:15]
	v_cvt_f32_f64_e32 v64, v[64:65]
	v_add_u32_e32 v62, vcc, s18, v62
	v_mov_b32_e32 v65, s19
	v_addc_u32_e32 v63, vcc, v65, v63, vcc
	flat_store_dword v[62:63], v64
	v_cmp_gt_f32_e32 vcc, v60, v64
	v_cndmask_b32_e32 v60, v60, v64, vcc
	s_add_u32 s4, s4, 4
	s_addc_u32 s5, s5, 0
	v_add_u32_e32 v61, vcc, 1, v61
	s_cmp_lg_u32 s4, s60
	s_cbranch_scc1 BB1_119
; %bb.120:                              ;   in Loop: Header=BB1_7 Depth=2
	v_writelane_b32 v174, s14, 11
	v_writelane_b32 v174, s15, 12
	v_cvt_f64_f32_e32 v[60:61], v60
	v_readlane_b32 s0, v174, 13
	v_readlane_b32 s1, v174, 14
	s_mov_b32 s0, 0
	v_cmp_ngt_f64_e32 vcc, s[0:1], v[60:61]
	v_mov_b32_e32 v62, s1
	v_cndmask_b32_e32 v61, v62, v61, vcc
	v_mov_b32_e32 v62, 0
	v_cndmask_b32_e32 v60, 0, v60, vcc
	v_min_f64 v[60:61], v[60:61], 4.0
	v_mov_b32_e32 v64, v5
	v_mov_b32_e32 v63, v4
	v_writelane_b32 v174, s0, 13
	v_writelane_b32 v174, s1, 14
	s_movk_i32 s82, 0x5b
	s_mov_b64 s[16:17], s[6:7]
BB1_121:                                ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	v_add_u32_e32 v65, vcc, s0, v1
	v_ashrrev_i32_e32 v66, 31, v65
	flat_load_dword v67, v[63:64]
	v_lshlrev_b64 v[65:66], 2, v[65:66]
	v_add_u32_e32 v65, vcc, s20, v65
	v_mov_b32_e32 v68, s21
	v_addc_u32_e32 v66, vcc, v68, v66, vcc
	flat_load_dword v65, v[65:66]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v65, v21, v65
	v_cmp_ngt_f32_e32 vcc, v67, v65
	v_cndmask_b32_e32 v62, 1, v62, vcc
	s_add_i32 s0, s0, 1
	v_add_u32_e32 v63, vcc, 4, v63
	v_addc_u32_e32 v64, vcc, 0, v64, vcc
	s_cmp_lg_u32 s0, s82
	s_cbranch_scc1 BB1_121
; %bb.122:                              ;   in Loop: Header=BB1_7 Depth=2
	v_cmp_ne_u32_e32 vcc, 0, v62
	s_mov_b64 s[4:5], -1
	v_mov_b32_e32 v62, s33
	s_mov_b64 s[0:1], exec
	s_and_b64 s[6:7], s[0:1], vcc
	v_readlane_b32 s18, v174, 22
	v_readlane_b32 s19, v174, 23
	v_readlane_b32 s10, v170, 44
	v_readlane_b32 s11, v170, 45
	s_brev_b32 s14, 1
	v_readlane_b32 s8, v172, 43
	v_readlane_b32 s9, v172, 44
	s_mov_b64 exec, s[6:7]
	s_cbranch_execz BB1_5
; %bb.123:                              ;   in Loop: Header=BB1_7 Depth=2
	v_cvt_f32_f64_e32 v60, v[60:61]
	v_mul_f32_e32 v61, v59, v60
	v_cvt_f64_f32_e32 v[59:60], v61
	v_readlane_b32 s4, v170, 18
	v_readlane_b32 s5, v170, 19
	s_mov_b32 s4, s16
	v_writelane_b32 v170, s4, 18
	v_writelane_b32 v170, s5, 19
	v_cmp_nle_f64_e32 vcc, s[4:5], v[59:60]
	s_mov_b32 s4, 0x3f666666
	v_mov_b32_e32 v59, s4
	v_cndmask_b32_e32 v59, v59, v61, vcc
	flat_load_dword v60, v[57:58]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v61, v59, v60
	v_cmp_ngt_f32_e32 vcc, v61, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB1_127
; %bb.124:                              ;   in Loop: Header=BB1_7 Depth=2
	v_cvt_f64_f32_e32 v[61:62], v61
	v_cvt_f64_f32_e32 v[63:64], v59
	v_fma_f64 v[65:66], v[63:64], 0.5, v[61:62]
	v_mul_f64 v[61:62], v[63:64], 0.5
	v_cmp_gt_f64_e32 vcc, v[65:66], v[51:52]
	s_and_saveexec_b64 s[6:7], vcc
; %bb.125:                              ;   in Loop: Header=BB1_7 Depth=2
	v_cvt_f32_f64_e32 v59, v[61:62]
; %bb.126:                              ; %Flow
                                        ;   in Loop: Header=BB1_7 Depth=2
	s_or_b64 exec, exec, s[6:7]
	v_readlane_b32 s8, v172, 43
	v_readlane_b32 s9, v172, 44
BB1_127:                                ; %Flow829
                                        ;   in Loop: Header=BB1_7 Depth=2
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB1_4
; %bb.128:                              ;   in Loop: Header=BB1_7 Depth=2
	v_sub_f32_e32 v59, v0, v60
	s_branch BB1_4
BB1_129:                                ;   in Loop: Header=BB1_3 Depth=1
	s_or_b64 exec, exec, s[0:1]
	flat_load_dword v50, v[57:58]
	v_cmp_gt_u32_e32 vcc, 12, v62
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v50, v59, v50
	flat_store_dword v[57:58], v50
	s_mov_b64 s[0:1], -1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz BB1_2
; %bb.130:                              ;   in Loop: Header=BB1_3 Depth=1
	v_readlane_b32 s5, v172, 20
	s_add_i32 s4, s5, 1
	v_add_u32_e32 v49, vcc, s82, v49
	v_add_u32_e32 v53, vcc, s82, v53
	v_readlane_b32 s0, v170, 16
	v_readlane_b32 s1, v170, 17
	v_mov_b32_e32 v50, s1
	v_cmp_eq_u32_e32 vcc, s5, v50
	s_orn2_b64 s[0:1], vcc, exec
	v_writelane_b32 v172, s4, 20
	s_branch BB1_2
BB1_131:                                ; %.loopexit297
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z8solver_2iiPfS_S_S_S_S_S_S_S_
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 175
		.amdhsa_next_free_sgpr 102
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end1:
	.size	_Z8solver_2iiPfS_S_S_S_S_S_S_S_, .Lfunc_end1-_Z8solver_2iiPfS_S_S_S_S_S_S_S_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 77828
; NumSgprs: 106
; NumVgprs: 175
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 13
; VGPRBlocks: 43
; NumSGPRsForWavesPerEU: 106
; NumVGPRsForWavesPerEU: 175
; Occupancy: 1
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.ident	"clang version 12.0.0 (/src/external/llvm-project/clang 1100ebe275a9dcc79a9abbda902b6f10738f2f5d)"
	.section	".note.GNU-stack"
	.addrsig
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .offset:         0
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .offset:         40
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         48
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         56
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 96
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z6kerneliPfS_S_S_
    .private_segment_fixed_size: 0
    .sgpr_count:     84
    .sgpr_spill_count: 0
    .symbol:         _Z6kerneliPfS_S_S_.kd
    .vgpr_count:     124
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .offset:         0
        .size:           4
        .value_kind:     by_value
      - .offset:         4
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         88
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         96
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         120
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         128
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 136
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z8solver_2iiPfS_S_S_S_S_S_S_S_
    .private_segment_fixed_size: 0
    .sgpr_count:     106
    .sgpr_spill_count: 409
    .symbol:         _Z8solver_2iiPfS_S_S_S_S_S_S_S_.kd
    .vgpr_count:     175
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
