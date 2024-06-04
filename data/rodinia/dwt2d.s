	.text
	.protected	_Z21c_CopySrcToComponentsIiEvPT_S1_S1_Phi ; -- Begin function _Z21c_CopySrcToComponentsIiEvPT_S1_S1_Phi
	.globl	_Z21c_CopySrcToComponentsIiEvPT_S1_S1_Phi
	.p2align	8
	.type	_Z21c_CopySrcToComponentsIiEvPT_S1_S1_Phi,@function
_Z21c_CopySrcToComponentsIiEvPT_S1_S1_Phi: ; @_Z21c_CopySrcToComponentsIiEvPT_S1_S1_Phi
_Z21c_CopySrcToComponentsIiEvPT_S1_S1_Phi$local:
; %bb.0:
	s_load_dwordx8 s[12:19], s[6:7], 0x0
	s_load_dword s0, s[6:7], 0x20
	s_load_dword s1, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s1, s1, 0xffff
	s_mul_i32 s1, s8, s1
	s_movk_i32 s2, 0xc0
	v_cmp_gt_u32_e32 vcc, s2, v0
	s_mov_b32 m0, -1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz BB1_2
; %bb.1:
	s_mul_i32 s4, s1, 3
	s_ashr_i32 s4, s4, 2
	v_add_u32_e32 v1, vcc, s4, v0
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_mov_b32_e32 v3, s19
	v_add_u32_e32 v1, vcc, s18, v1
	v_addc_u32_e32 v2, vcc, v3, v2, vcc
	flat_load_dword v1, v[1:2]
	v_lshlrev_b32_e32 v2, 2, v0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v2, v1
BB1_2:
	s_or_b64 exec, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_add_u32_e32 v1, vcc, s1, v0
	v_cmp_gt_i32_e32 vcc, s0, v1
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB1_4
; %bb.3:
	v_mul_u32_u24_e32 v0, 3, v0
	s_movk_i32 s0, 0xff80
	ds_read_u8 v4, v0 offset:2
	s_mov_b32 m0, -1
	ds_read_u8 v5, v0 offset:1
	ds_read_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_add_u32_e32 v6, vcc, s0, v0
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[0:1], 2, v[1:2]
	v_mov_b32_e32 v3, s13
	v_add_u32_e32 v2, vcc, s12, v0
	v_addc_u32_e32 v3, vcc, v3, v1, vcc
	flat_store_dword v[2:3], v6
	v_add_u32_e32 v5, vcc, s0, v5
	v_mov_b32_e32 v3, s15
	v_add_u32_e32 v2, vcc, s14, v0
	v_addc_u32_e32 v3, vcc, v3, v1, vcc
	flat_store_dword v[2:3], v5
	v_add_u32_e32 v2, vcc, s0, v4
	v_mov_b32_e32 v3, s17
	v_add_u32_e32 v0, vcc, s16, v0
	v_addc_u32_e32 v1, vcc, v3, v1, vcc
	flat_store_dword v[0:1], v2
BB1_4:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z21c_CopySrcToComponentsIiEvPT_S1_S1_Phi
		.amdhsa_group_segment_fixed_size 768
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
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
		.amdhsa_next_free_vgpr 7
		.amdhsa_next_free_sgpr 20
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
	.size	_Z21c_CopySrcToComponentsIiEvPT_S1_S1_Phi, .Lfunc_end1-_Z21c_CopySrcToComponentsIiEvPT_S1_S1_Phi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 280
; NumSgprs: 24
; NumVgprs: 7
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 768 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 24
; NumVGPRsForWavesPerEU: 7
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_ZN8dwt_cuda12fdwt53KernelILi64ELi8EEEvPKiPiiii ; -- Begin function _ZN8dwt_cuda12fdwt53KernelILi64ELi8EEEvPKiPiiii
	.globl	_ZN8dwt_cuda12fdwt53KernelILi64ELi8EEEvPKiPiiii
	.p2align	8
	.type	_ZN8dwt_cuda12fdwt53KernelILi64ELi8EEEvPKiPiiii,@function
_ZN8dwt_cuda12fdwt53KernelILi64ELi8EEEvPKiPiiii: ; @_ZN8dwt_cuda12fdwt53KernelILi64ELi8EEEvPKiPiiii
_ZN8dwt_cuda12fdwt53KernelILi64ELi8EEEvPKiPiiii$local:
; %bb.0:
	s_load_dwordx4 s[8:11], s[4:5], 0x0
	s_load_dwordx4 s[12:15], s[4:5], 0x10
	s_lshl_b32 s4, s7, 3
	s_add_i32 s0, s4, 8
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s0, s0, s14
	s_or_b32 s0, s0, 1
	s_cmp_lt_i32 s0, s13
	s_mov_b64 s[0:1], -1
	s_mul_i32 s4, s4, s14
	s_mov_b32 m0, -1
	s_cbranch_scc1 BB2_72
; %bb.1:
	s_sub_i32 s15, 0, s12
	s_lshl_b32 s5, s6, 6
	v_or_b32_e32 v8, s5, v0
	v_cmp_ne_u32_e64 s[2:3], s7, 0
	s_and_b64 vcc, exec, s[2:3]
	s_cbranch_vccz BB2_7
; %bb.2:
	v_cmp_le_i32_e32 vcc, s12, v8
                                        ; implicit-def: $vgpr2
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.3:
	s_lshl_b32 s16, s12, 1
	v_sub_u32_e32 v1, vcc, s16, v8
	v_add_u32_e32 v2, vcc, -2, v1
; %bb.4:                                ; %Flow1044
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
; %bb.5:
	v_ashrrev_i32_e32 v1, 31, v8
	v_add_u32_e32 v2, vcc, v8, v1
	v_xor_b32_e32 v2, v2, v1
; %bb.6:                                ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb1EE4initEiiii.5.35.exit.i25.i.i
	s_or_b64 exec, exec, s[0:1]
	s_add_i32 s0, s4, -2
	s_mul_i32 s1, s13, s12
	v_add_u32_e32 v1, vcc, s1, v2
	s_mul_i32 s0, s0, s12
	v_mov_b32_e32 v3, s1
	s_lshl_b32 s1, s12, 1
	v_mov_b32_e32 v4, s12
	v_mov_b32_e32 v5, s15
	v_cmp_eq_u32_e32 vcc, s0, v3
	v_cndmask_b32_e32 v5, v4, v5, vcc
	v_mov_b32_e32 v3, s1
	v_cndmask_b32_e32 v3, 0, v3, vcc
	v_sub_u32_e32 v3, vcc, s0, v3
	v_add_u32_e32 v2, vcc, v3, v2
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[3:4], 2, v[2:3]
	v_mov_b32_e32 v6, s9
	v_add_u32_e32 v9, vcc, s8, v3
	v_addc_u32_e32 v10, vcc, v6, v4, vcc
	v_add_u32_e32 v2, vcc, v2, v5
	v_lshlrev_b32_e32 v3, 1, v5
	v_sub_u32_e32 v4, vcc, 0, v5
	v_cmp_eq_u32_e32 vcc, v2, v1
	v_cndmask_b32_e32 v5, v5, v4, vcc
	v_cndmask_b32_e32 v3, 0, v3, vcc
	v_sub_u32_e32 v2, vcc, v2, v3
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[3:4], 2, v[2:3]
	v_add_u32_e32 v11, vcc, s8, v3
	v_addc_u32_e32 v12, vcc, v6, v4, vcc
	v_add_u32_e32 v3, vcc, v2, v5
	v_lshlrev_b32_e32 v4, 1, v5
	v_sub_u32_e32 v2, vcc, 0, v5
	v_cmp_eq_u32_e32 vcc, v3, v1
	v_cndmask_b32_e32 v2, v5, v2, vcc
	v_cndmask_b32_e32 v4, 0, v4, vcc
	v_sub_u32_e32 v6, vcc, v3, v4
	v_ashrrev_i32_e32 v7, 31, v6
	v_lshlrev_b64 v[3:4], 2, v[6:7]
	v_mov_b32_e32 v5, s9
	v_add_u32_e32 v13, vcc, s8, v3
	v_addc_u32_e32 v14, vcc, v5, v4, vcc
	flat_load_dword v3, v[9:10]
	flat_load_dword v4, v[11:12]
	flat_load_dword v5, v[13:14]
	s_mov_b64 vcc, 0
	s_branch BB2_17
BB2_7:
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr1
	s_mov_b64 vcc, exec
	s_cbranch_execz BB2_17
; %bb.8:
	v_cmp_le_i32_e64 s[0:1], s12, v8
                                        ; implicit-def: $vgpr1
	s_and_saveexec_b64 s[16:17], s[0:1]
	s_xor_b64 s[16:17], exec, s[16:17]
; %bb.9:
	s_lshl_b32 s18, s12, 1
	v_sub_u32_e32 v1, vcc, s18, v8
	v_add_u32_e32 v1, vcc, -2, v1
; %bb.10:                               ; %Flow1046
	s_or_saveexec_b64 s[16:17], s[16:17]
	s_xor_b64 exec, exec, s[16:17]
; %bb.11:
	v_ashrrev_i32_e32 v1, 31, v8
	v_add_u32_e32 v2, vcc, v8, v1
	v_xor_b32_e32 v1, v2, v1
; %bb.12:                               ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb1EE4initEiiii.5.35.exit9.i18.i.i
	s_or_b64 exec, exec, s[16:17]
	s_mul_i32 s16, s13, s12
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_u32_e32 v4, vcc, s16, v1
	s_mul_i32 s17, s4, s12
	v_mov_b32_e32 v2, s16
	s_lshl_b32 s18, s12, 1
	v_mov_b32_e32 v3, s12
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v5, s15
	v_cmp_eq_u32_e32 vcc, s17, v2
	v_cndmask_b32_e32 v5, v3, v5, vcc
	v_mov_b32_e32 v2, s18
	v_cndmask_b32_e32 v2, 0, v2, vcc
	v_sub_u32_e32 v2, vcc, s17, v2
	v_add_u32_e32 v1, vcc, v2, v1
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	v_mov_b32_e32 v7, s9
	v_add_u32_e32 v6, vcc, s8, v2
	v_addc_u32_e32 v7, vcc, v7, v3, vcc
	v_add_u32_e32 v1, vcc, v1, v5
	v_lshlrev_b32_e32 v2, 1, v5
	v_sub_u32_e32 v3, vcc, 0, v5
	v_cmp_eq_u32_e32 vcc, v1, v4
	v_cndmask_b32_e32 v5, v5, v3, vcc
	v_cndmask_b32_e32 v2, 0, v2, vcc
	v_sub_u32_e32 v1, vcc, v1, v2
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	v_mov_b32_e32 v10, s9
	v_add_u32_e32 v9, vcc, s8, v2
	v_addc_u32_e32 v10, vcc, v10, v3, vcc
	v_add_u32_e32 v1, vcc, v1, v5
	v_lshlrev_b32_e32 v2, 1, v5
	v_cmp_eq_u32_e32 vcc, v1, v4
	v_cndmask_b32_e32 v2, 0, v2, vcc
	v_sub_u32_e32 v1, vcc, v1, v2
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_mov_b32_e32 v3, s9
	v_add_u32_e32 v1, vcc, s8, v1
	v_addc_u32_e32 v2, vcc, v3, v2, vcc
	flat_load_dword v5, v[6:7]
	flat_load_dword v4, v[9:10]
	flat_load_dword v3, v[1:2]
                                        ; implicit-def: $vgpr2
	s_and_saveexec_b64 s[20:21], s[0:1]
	s_xor_b64 s[0:1], exec, s[20:21]
; %bb.13:
	v_sub_u32_e32 v1, vcc, s18, v8
	v_add_u32_e32 v2, vcc, -2, v1
; %bb.14:                               ; %Flow1045
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
; %bb.15:
	v_ashrrev_i32_e32 v1, 31, v8
	v_add_u32_e32 v2, vcc, v8, v1
	v_xor_b32_e32 v2, v2, v1
; %bb.16:                               ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb1EE4initEiiii.5.35.exit4.i23.i.i
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v1, vcc, s16, v2
	v_add_u32_e32 v6, vcc, s17, v2
	v_mov_b32_e32 v2, s12
BB2_17:                                 ; %Flow1048
	v_add_u32_e32 v7, vcc, 2, v0
	v_lshrrev_b32_e32 v8, 1, v7
	v_and_b32_e32 v7, 1, v7
	s_movk_i32 s0, 0x178
	v_mad_u32_u24 v7, v7, s0, v8
	v_cmp_gt_u32_e64 s[0:1], 3, v0
	v_mov_b32_e32 v8, 0
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v13, v8
	s_and_saveexec_b64 s[16:17], s[0:1]
	s_cbranch_execz BB2_35
; %bb.18:
	v_cmp_eq_u32_e32 vcc, 0, v0
	v_cndmask_b32_e64 v8, -3, 64, vcc
	v_add_u32_e32 v14, vcc, v8, v0
	v_add_u32_e32 v15, vcc, s5, v14
	s_and_b64 vcc, exec, s[2:3]
	s_cbranch_vccz BB2_24
; %bb.19:
	v_cmp_le_i32_e32 vcc, s12, v15
                                        ; implicit-def: $vgpr9
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
; %bb.20:
	s_lshl_b32 s18, s12, 1
	v_sub_u32_e32 v8, vcc, s18, v15
	v_add_u32_e32 v9, vcc, -2, v8
; %bb.21:                               ; %Flow1038
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
; %bb.22:
	v_ashrrev_i32_e32 v8, 31, v15
	v_add_u32_e32 v9, vcc, v15, v8
	v_xor_b32_e32 v9, v9, v8
; %bb.23:                               ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb1EE4initEiiii.5.35.exit.i.i.i
	s_or_b64 exec, exec, s[2:3]
	s_add_i32 s2, s4, -2
	s_mul_i32 s3, s13, s12
	v_add_u32_e32 v8, vcc, s3, v9
	s_mul_i32 s2, s2, s12
	v_mov_b32_e32 v10, s3
	s_lshl_b32 s3, s12, 1
	v_mov_b32_e32 v11, s12
	v_mov_b32_e32 v12, s15
	v_cmp_eq_u32_e32 vcc, s2, v10
	v_cndmask_b32_e32 v12, v11, v12, vcc
	v_mov_b32_e32 v10, s3
	v_cndmask_b32_e32 v10, 0, v10, vcc
	v_sub_u32_e32 v10, vcc, s2, v10
	v_add_u32_e32 v9, vcc, v10, v9
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b64 v[10:11], 2, v[9:10]
	v_mov_b32_e32 v13, s9
	v_add_u32_e32 v16, vcc, s8, v10
	v_addc_u32_e32 v17, vcc, v13, v11, vcc
	v_add_u32_e32 v9, vcc, v9, v12
	v_lshlrev_b32_e32 v10, 1, v12
	v_sub_u32_e32 v11, vcc, 0, v12
	v_cmp_eq_u32_e32 vcc, v9, v8
	v_cndmask_b32_e32 v12, v12, v11, vcc
	v_cndmask_b32_e32 v10, 0, v10, vcc
	v_sub_u32_e32 v9, vcc, v9, v10
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b64 v[10:11], 2, v[9:10]
	v_add_u32_e32 v18, vcc, s8, v10
	v_addc_u32_e32 v19, vcc, v13, v11, vcc
	v_add_u32_e32 v10, vcc, v9, v12
	v_lshlrev_b32_e32 v11, 1, v12
	v_sub_u32_e32 v9, vcc, 0, v12
	v_cmp_eq_u32_e32 vcc, v10, v8
	v_cndmask_b32_e32 v9, v12, v9, vcc
	v_cndmask_b32_e32 v11, 0, v11, vcc
	v_sub_u32_e32 v10, vcc, v10, v11
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[11:12], 2, v[10:11]
	v_add_u32_e32 v20, vcc, s8, v11
	v_addc_u32_e32 v21, vcc, v13, v12, vcc
	flat_load_dword v11, v[16:17]
	flat_load_dword v12, v[18:19]
	flat_load_dword v13, v[20:21]
	s_mov_b64 vcc, 0
	s_branch BB2_34
BB2_24:
                                        ; implicit-def: $vgpr13
                                        ; implicit-def: $vgpr12
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr8
	s_mov_b64 vcc, exec
	s_cbranch_execz BB2_34
; %bb.25:
	v_cmp_le_i32_e64 s[2:3], s12, v15
                                        ; implicit-def: $vgpr8
	s_and_saveexec_b64 s[18:19], s[2:3]
	s_xor_b64 s[18:19], exec, s[18:19]
; %bb.26:
	s_lshl_b32 s20, s12, 1
	v_sub_u32_e32 v8, vcc, s20, v15
	v_add_u32_e32 v8, vcc, -2, v8
; %bb.27:                               ; %Flow1040
	s_or_saveexec_b64 s[18:19], s[18:19]
	s_xor_b64 exec, exec, s[18:19]
; %bb.28:
	v_ashrrev_i32_e32 v8, 31, v15
	v_add_u32_e32 v9, vcc, v15, v8
	v_xor_b32_e32 v8, v9, v8
; %bb.29:                               ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb1EE4initEiiii.5.35.exit9.i.i.i
	s_or_b64 exec, exec, s[18:19]
	s_mul_i32 s18, s13, s12
	v_add_u32_e32 v18, vcc, s18, v8
	s_mul_i32 s19, s4, s12
	v_mov_b32_e32 v9, s18
	s_lshl_b32 s20, s12, 1
	v_mov_b32_e32 v10, s12
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_mov_b32_e32 v11, s15
	v_cmp_eq_u32_e32 vcc, s19, v9
	v_cndmask_b32_e32 v11, v10, v11, vcc
	v_mov_b32_e32 v9, s20
	v_cndmask_b32_e32 v9, 0, v9, vcc
	v_sub_u32_e32 v9, vcc, s19, v9
	v_add_u32_e32 v8, vcc, v9, v8
	v_ashrrev_i32_e32 v9, 31, v8
	v_lshlrev_b64 v[9:10], 2, v[8:9]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_mov_b32_e32 v12, s9
	v_add_u32_e32 v9, vcc, s8, v9
	v_addc_u32_e32 v10, vcc, v12, v10, vcc
	v_add_u32_e32 v8, vcc, v8, v11
	v_lshlrev_b32_e32 v12, 1, v11
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_u32_e32 v13, vcc, 0, v11
	v_cmp_eq_u32_e32 vcc, v8, v18
	v_cndmask_b32_e32 v19, v11, v13, vcc
	v_cndmask_b32_e32 v11, 0, v12, vcc
	v_sub_u32_e32 v11, vcc, v8, v11
	v_ashrrev_i32_e32 v12, 31, v11
	v_lshlrev_b64 v[12:13], 2, v[11:12]
	v_mov_b32_e32 v8, s9
	v_add_u32_e32 v16, vcc, s8, v12
	v_addc_u32_e32 v17, vcc, v8, v13, vcc
	v_add_u32_e32 v8, vcc, v11, v19
	v_lshlrev_b32_e32 v11, 1, v19
	v_cmp_eq_u32_e32 vcc, v8, v18
	v_cndmask_b32_e32 v11, 0, v11, vcc
	v_sub_u32_e32 v11, vcc, v8, v11
	v_ashrrev_i32_e32 v12, 31, v11
	v_lshlrev_b64 v[11:12], 2, v[11:12]
	v_mov_b32_e32 v8, s9
	v_add_u32_e32 v18, vcc, s8, v11
	v_addc_u32_e32 v19, vcc, v8, v12, vcc
	flat_load_dword v13, v[9:10]
	flat_load_dword v12, v[16:17]
	flat_load_dword v11, v[18:19]
                                        ; implicit-def: $vgpr9
	s_and_saveexec_b64 s[22:23], s[2:3]
	s_xor_b64 s[2:3], exec, s[22:23]
; %bb.30:
	v_sub_u32_e32 v8, vcc, s20, v15
	v_add_u32_e32 v9, vcc, -2, v8
; %bb.31:                               ; %Flow1039
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
; %bb.32:
	v_ashrrev_i32_e32 v8, 31, v15
	v_add_u32_e32 v9, vcc, v15, v8
	v_xor_b32_e32 v9, v9, v8
; %bb.33:                               ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb1EE4initEiiii.5.35.exit4.i.i.i
	s_or_b64 exec, exec, s[2:3]
	v_add_u32_e32 v8, vcc, s18, v9
	v_add_u32_e32 v10, vcc, s19, v9
	v_mov_b32_e32 v9, s12
BB2_34:                                 ; %Flow1043
	v_add_u32_e32 v14, vcc, 2, v14
	v_lshrrev_b32_e32 v15, 31, v14
	v_add_u32_e32 v15, vcc, v14, v15
	v_ashrrev_i32_e32 v15, 1, v15
	v_and_b32_e32 v14, 1, v14
	s_movk_i32 s2, 0x178
	v_mad_u32_u24 v17, v14, s2, v15
BB2_35:                                 ; %_ZN8dwt_cuda6FDWT53ILi64ELi8EE10initColumnILb1EEEvRNS1_12FDWT53ColumnIXT_EEEPKiiiii.exit.i.i
	s_or_b64 exec, exec, s[16:17]
	v_lshlrev_b32_e32 v14, 1, v0
	v_lshrrev_b32_e32 v15, 5, v0
	s_movk_i32 s2, 0xffc1
	v_mad_i32_i24 v19, v15, s2, v14
	v_add_u32_e32 v20, vcc, s5, v19
	v_cmp_gt_i32_e32 vcc, s12, v20
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v14, v16
	v_mov_b32_e32 v15, v16
	v_mov_b32_e32 v18, v16
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz BB2_41
; %bb.36:
	v_lshrrev_b32_e32 v14, 31, v20
	v_add_u32_e32 v14, vcc, v20, v14
	v_ashrrev_i32_e32 v15, 1, v14
	v_and_b32_e32 v14, 1, v20
	v_cmp_eq_u32_e32 vcc, 1, v14
	s_lshr_b32 s5, s12, 31
	s_add_i32 s5, s12, s5
	s_ashr_i32 s18, s5, 1
	s_and_b32 s5, s12, 1
	s_add_i32 s16, s18, s5
	s_lshr_b32 s5, s13, 31
	s_add_i32 s5, s13, s5
	s_ashr_i32 s5, s5, 1
	s_and_b32 s15, s13, 1
	s_add_i32 s17, s5, s15
                                        ; implicit-def: $vgpr16
                                        ; implicit-def: $sgpr19
	s_and_saveexec_b64 s[20:21], vcc
	s_xor_b64 s[20:21], exec, s[20:21]
; %bb.37:
	s_mul_i32 s19, s17, s16
	v_add_u32_e32 v16, vcc, s19, v15
	s_mul_i32 s19, s13, s12
	s_lshr_b32 s22, s19, 31
	s_add_i32 s19, s19, s22
	s_ashr_i32 s19, s19, 1
; %bb.38:                               ; %Flow1036
	s_or_saveexec_b64 s[20:21], s[20:21]
	v_mov_b32_e32 v14, s19
	v_mov_b32_e32 v18, s18
	s_xor_b64 exec, exec, s[20:21]
; %bb.39:
	s_mul_i32 s17, s17, s12
	v_mov_b32_e32 v14, s17
	v_mov_b32_e32 v18, s16
	v_mov_b32_e32 v16, v15
; %bb.40:                               ; %_ZN8dwt_cuda17VerticalDWTBandIOIiLb1EE10initializeEiiii.10.40.exit.i.i54.i
	s_or_b64 exec, exec, s[20:21]
	v_mul_lo_u32 v20, v14, s15
	v_sub_u32_e32 v15, vcc, v18, v14
	v_mul_lo_u32 v21, v18, s5
	v_add_u32_e32 v20, vcc, v20, v16
	s_lshr_b32 s5, s4, 31
	s_add_i32 s5, s4, s5
	s_ashr_i32 s5, s5, 1
	v_mul_lo_u32 v22, v18, s5
	v_add_u32_e32 v18, vcc, v20, v21
	v_add_u32_e32 v16, vcc, v22, v16
BB2_41:                                 ; %Flow1037
	s_or_b64 exec, exec, s[2:3]
	v_add_u32_e32 v19, vcc, 2, v19
	v_lshrrev_b32_e32 v20, 31, v19
	v_add_u32_e32 v20, vcc, v19, v20
	v_ashrrev_i32_e32 v22, 1, v20
	v_and_b32_e32 v19, 1, v19
	v_mul_u32_u24_e32 v23, 0x178, v19
	s_cmp_lt_i32 s14, 1
	s_cbranch_scc1 BB2_71
; %bb.42:                               ; %.lr.ph618
	v_lshlrev_b32_e32 v19, 2, v7
	v_lshlrev_b32_e32 v20, 2, v17
	v_cmp_gt_u32_e32 vcc, 15, v0
	v_lshlrev_b32_e32 v21, 2, v0
	v_add_u32_e64 v7, s[2:3], v23, v22
	v_lshlrev_b32_e32 v22, 2, v7
	s_mov_b32 s5, 0
	s_movk_i32 s15, 0x88
	s_movk_i32 s16, 0x110
	s_movk_i32 s17, 0x550
	s_movk_i32 s18, 0x510
	s_movk_i32 s19, 0x100
	s_movk_i32 s20, 0xaf0
	s_movk_i32 s21, 0x440
	s_movk_i32 s22, 0x4c8
	s_branch BB2_44
BB2_43:                                 ;   in Loop: Header=BB2_44 Depth=1
	s_waitcnt lgkmcnt(0)
	; wave barrier
	s_add_i32 s5, s5, 1
	s_cmp_eq_u32 s5, s14
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc1 BB2_71
BB2_44:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_45 Depth 2
                                        ;     Child Loop BB2_47 Depth 2
                                        ;     Child Loop BB2_49 Depth 2
                                        ;     Child Loop BB2_52 Depth 2
                                        ;     Child Loop BB2_54 Depth 2
                                        ;     Child Loop BB2_56 Depth 2
                                        ;     Child Loop BB2_58 Depth 2
                                        ;     Child Loop BB2_62 Depth 2
                                        ;     Child Loop BB2_67 Depth 2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write2_b32 v19, v3, v4 offset1:34
	ds_write_b32 v19, v5 offset:272
	s_movk_i32 s23, 0xfbc0
BB2_45:                                 ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb1EE8loadFromEPKi.6.36.exit.i11.i.i
                                        ;   Parent Loop BB2_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v3, s[2:3], v6, v2
	v_lshlrev_b32_e32 v4, 1, v2
	v_sub_u32_e64 v5, s[2:3], 0, v2
	v_mov_b32_e32 v17, s9
	v_cmp_eq_u32_e64 s[2:3], v3, v1
	v_cndmask_b32_e64 v2, v2, v5, s[2:3]
	v_cndmask_b32_e64 v4, 0, v4, s[2:3]
	v_sub_u32_e64 v6, s[2:3], v3, v4
	v_ashrrev_i32_e32 v7, 31, v6
	v_lshlrev_b64 v[3:4], 2, v[6:7]
	v_add_u32_e64 v3, s[2:3], s8, v3
	v_addc_u32_e64 v4, s[2:3], v17, v4, s[2:3]
	flat_load_dword v3, v[3:4]
	v_add_u32_e64 v4, s[2:3], s23, v19
	s_add_i32 s23, s23, s15
	s_cmp_eq_u32 s23, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v4, v3 offset:1496
	s_cbranch_scc0 BB2_45
; %bb.46:                               ;   in Loop: Header=BB2_44 Depth=1
	v_add_u32_e64 v3, s[2:3], s21, v19
	ds_read2_b32 v[3:4], v3 offset1:34
	ds_read_b32 v5, v19 offset:1360
	s_mov_b32 s23, 0
BB2_47:                                 ;   Parent Loop BB2_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v7, s[2:3], s23, v19
	s_add_i32 s23, s23, s16
	ds_read_b32 v17, v7 offset:272
	ds_read2_b32 v[23:24], v7 offset1:34
	s_cmp_lg_u32 s23, s17
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v17, s[2:3], v17, v23
	v_lshrrev_b32_e32 v23, 31, v17
	v_add_u32_e64 v17, s[2:3], v17, v23
	v_ashrrev_i32_e32 v17, 1, v17
	v_sub_u32_e64 v17, s[2:3], v24, v17
	ds_write_b32 v7, v17 offset:136
	s_cbranch_scc1 BB2_47
; %bb.48:                               ; %_ZN8dwt_cuda15TransformBufferIiLi64ELi11ELi2EE18forEachVerticalOddINS_6FDWT53ILi64ELi8EE16Forward53PredictEEEviRKT_.exit.i9.i60.i.preheader
                                        ;   in Loop: Header=BB2_44 Depth=1
	s_movk_i32 s23, 0xfbc0
BB2_49:                                 ; %_ZN8dwt_cuda15TransformBufferIiLi64ELi11ELi2EE18forEachVerticalOddINS_6FDWT53ILi64ELi8EE16Forward53PredictEEEviRKT_.exit.i9.i60.i
                                        ;   Parent Loop BB2_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v7, s[2:3], s23, v19
	s_add_i32 s23, s23, s16
	ds_read_b32 v17, v7 offset:1496
	v_add_u32_e64 v23, s[2:3], s22, v7
	s_cmp_eq_u32 s23, 0
	ds_read2_b32 v[23:24], v23 offset1:34
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v17, s[2:3], v23, v17
	v_add_u32_e64 v17, s[2:3], 2, v17
	v_ashrrev_i32_e32 v23, 31, v17
	v_lshrrev_b32_e32 v23, 30, v23
	v_add_u32_e64 v17, s[2:3], v17, v23
	v_ashrrev_i32_e32 v17, 2, v17
	v_add_u32_e64 v17, s[2:3], v17, v24
	ds_write_b32 v7, v17 offset:1360
	s_cbranch_scc0 BB2_49
; %bb.50:                               ; %_ZN8dwt_cuda6FDWT53ILi64ELi8EE26loadAndVerticallyTransformILb1EEEvRNS1_12FDWT53ColumnIXT_EEEPKi.exit12.i.i
                                        ;   in Loop: Header=BB2_44 Depth=1
	s_and_saveexec_b64 s[24:25], s[0:1]
	s_cbranch_execz BB2_57
; %bb.51:                               ;   in Loop: Header=BB2_44 Depth=1
	ds_write2_b32 v20, v11, v12 offset1:34
	ds_write_b32 v20, v13 offset:272
	s_movk_i32 s23, 0xfbc0
BB2_52:                                 ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb1EE8loadFromEPKi.6.36.exit.i.i.i
                                        ;   Parent Loop BB2_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v7, s[2:3], v10, v9
	v_lshlrev_b32_e32 v10, 1, v9
	v_sub_u32_e64 v11, s[2:3], 0, v9
	v_mov_b32_e32 v13, s9
	v_cmp_eq_u32_e64 s[2:3], v7, v8
	v_cndmask_b32_e64 v9, v9, v11, s[2:3]
	v_cndmask_b32_e64 v10, 0, v10, s[2:3]
	v_sub_u32_e64 v10, s[2:3], v7, v10
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[11:12], 2, v[10:11]
	v_add_u32_e64 v11, s[2:3], s8, v11
	v_addc_u32_e64 v12, s[2:3], v13, v12, s[2:3]
	flat_load_dword v7, v[11:12]
	v_add_u32_e64 v11, s[2:3], s23, v20
	s_add_i32 s23, s23, s15
	s_cmp_eq_u32 s23, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v11, v7 offset:1496
	s_cbranch_scc0 BB2_52
; %bb.53:                               ;   in Loop: Header=BB2_44 Depth=1
	v_add_u32_e64 v7, s[2:3], s21, v20
	ds_read2_b32 v[11:12], v7 offset1:34
	ds_read_b32 v13, v20 offset:1360
	s_mov_b32 s23, 0
BB2_54:                                 ;   Parent Loop BB2_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v7, s[2:3], s23, v20
	s_add_i32 s23, s23, s16
	ds_read_b32 v17, v7 offset:272
	ds_read2_b32 v[23:24], v7 offset1:34
	s_cmp_lg_u32 s23, s17
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v17, s[2:3], v17, v23
	v_lshrrev_b32_e32 v23, 31, v17
	v_add_u32_e64 v17, s[2:3], v17, v23
	v_ashrrev_i32_e32 v17, 1, v17
	v_sub_u32_e64 v17, s[2:3], v24, v17
	ds_write_b32 v7, v17 offset:136
	s_cbranch_scc1 BB2_54
; %bb.55:                               ; %_ZN8dwt_cuda15TransformBufferIiLi64ELi11ELi2EE18forEachVerticalOddINS_6FDWT53ILi64ELi8EE16Forward53PredictEEEviRKT_.exit.i.i65.i.preheader
                                        ;   in Loop: Header=BB2_44 Depth=1
	s_movk_i32 s23, 0xfbc0
BB2_56:                                 ; %_ZN8dwt_cuda15TransformBufferIiLi64ELi11ELi2EE18forEachVerticalOddINS_6FDWT53ILi64ELi8EE16Forward53PredictEEEviRKT_.exit.i.i65.i
                                        ;   Parent Loop BB2_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v7, s[2:3], s23, v20
	s_add_i32 s23, s23, s16
	ds_read_b32 v17, v7 offset:1496
	v_add_u32_e64 v23, s[2:3], s22, v7
	s_cmp_eq_u32 s23, 0
	ds_read2_b32 v[23:24], v23 offset1:34
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v17, s[2:3], v23, v17
	v_add_u32_e64 v17, s[2:3], 2, v17
	v_ashrrev_i32_e32 v23, 31, v17
	v_lshrrev_b32_e32 v23, 30, v23
	v_add_u32_e64 v17, s[2:3], v17, v23
	v_ashrrev_i32_e32 v17, 2, v17
	v_add_u32_e64 v17, s[2:3], v17, v24
	ds_write_b32 v7, v17 offset:1360
	s_cbranch_scc0 BB2_56
BB2_57:                                 ; %Flow1033
                                        ;   in Loop: Header=BB2_44 Depth=1
	s_or_b64 exec, exec, s[24:25]
	s_waitcnt lgkmcnt(0)
	; wave barrier
	s_waitcnt lgkmcnt(0)
	s_movk_i32 s23, 0xfc00
BB2_58:                                 ;   Parent Loop BB2_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v7, s[2:3], s23, v21
	s_add_i32 s23, s23, s19
	v_add_u32_e64 v17, s[2:3], s18, v7
	s_cmp_eq_u32 s23, 0
	ds_read2_b32 v[23:24], v17 offset1:1
	ds_read_b32 v17, v7 offset:2800
	s_waitcnt lgkmcnt(1)
	v_add_u32_e64 v23, s[2:3], v24, v23
	v_lshrrev_b32_e32 v24, 31, v23
	v_add_u32_e64 v23, s[2:3], v23, v24
	v_ashrrev_i32_e32 v23, 1, v23
	s_waitcnt lgkmcnt(0)
	v_sub_u32_e64 v17, s[2:3], v17, v23
	ds_write_b32 v7, v17 offset:2800
	s_cbranch_scc0 BB2_58
; %bb.59:                               ;   in Loop: Header=BB2_44 Depth=1
	s_and_saveexec_b64 s[24:25], vcc
	s_cbranch_execz BB2_61
; %bb.60:                               ;   in Loop: Header=BB2_44 Depth=1
	v_add_u32_e64 v7, s[2:3], s18, v21
	ds_read2_b32 v[23:24], v7 offset1:1
	ds_read_b32 v7, v21 offset:2800
	s_waitcnt lgkmcnt(1)
	v_add_u32_e64 v17, s[2:3], v24, v23
	v_lshrrev_b32_e32 v23, 31, v17
	v_add_u32_e64 v17, s[2:3], v17, v23
	v_ashrrev_i32_e32 v17, 1, v17
	s_waitcnt lgkmcnt(0)
	v_sub_u32_e64 v7, s[2:3], v7, v17
	ds_write_b32 v21, v7 offset:2800
BB2_61:                                 ; %_ZN8dwt_cuda15TransformBufferIiLi64ELi11ELi2EE20forEachHorizontalOddINS_6FDWT53ILi64ELi8EE16Forward53PredictEEEviiRKT_.exit.i70.i
                                        ;   in Loop: Header=BB2_44 Depth=1
	s_or_b64 exec, exec, s[24:25]
	s_waitcnt lgkmcnt(0)
	; wave barrier
	s_waitcnt lgkmcnt(0)
	s_movk_i32 s23, 0xfc00
BB2_62:                                 ;   Parent Loop BB2_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v7, s[2:3], s23, v21
	s_add_i32 s23, s23, s19
	v_add_u32_e64 v17, s[2:3], s20, v7
	s_cmp_eq_u32 s23, 0
	ds_read2_b32 v[23:24], v17 offset1:1
	ds_read_b32 v17, v7 offset:1300
	s_waitcnt lgkmcnt(1)
	v_add_u32_e64 v23, s[2:3], v23, v24
	v_add_u32_e64 v23, s[2:3], 2, v23
	v_ashrrev_i32_e32 v24, 31, v23
	v_lshrrev_b32_e32 v24, 30, v24
	v_add_u32_e64 v23, s[2:3], v23, v24
	v_ashrrev_i32_e32 v23, 2, v23
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v17, s[2:3], v23, v17
	ds_write_b32 v7, v17 offset:1300
	s_cbranch_scc0 BB2_62
; %bb.63:                               ;   in Loop: Header=BB2_44 Depth=1
	s_and_saveexec_b64 s[24:25], vcc
	s_cbranch_execz BB2_65
; %bb.64:                               ;   in Loop: Header=BB2_44 Depth=1
	v_add_u32_e64 v7, s[2:3], s20, v21
	ds_read2_b32 v[23:24], v7 offset1:1
	ds_read_b32 v7, v21 offset:1300
	s_waitcnt lgkmcnt(1)
	v_add_u32_e64 v17, s[2:3], v23, v24
	v_add_u32_e64 v17, s[2:3], 2, v17
	v_ashrrev_i32_e32 v23, 31, v17
	v_lshrrev_b32_e32 v23, 30, v23
	v_add_u32_e64 v17, s[2:3], v17, v23
	v_ashrrev_i32_e32 v17, 2, v17
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v7, s[2:3], v17, v7
	ds_write_b32 v21, v7 offset:1300
BB2_65:                                 ; %_ZN8dwt_cuda15TransformBufferIiLi64ELi11ELi2EE21forEachHorizontalEvenINS_6FDWT53ILi64ELi8EE15Forward53UpdateEEEviiRKT_.exit.i72.i
                                        ;   in Loop: Header=BB2_44 Depth=1
	s_or_b64 exec, exec, s[24:25]
	s_waitcnt lgkmcnt(0)
	; wave barrier
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s23, 0
	v_mov_b32_e32 v7, v22
	s_branch BB2_67
BB2_66:                                 ; %_ZN8dwt_cuda21VerticalDWTBandWriterIiLb1EE13writeHighIntoEPiRKi.4.34.exit.i77.i
                                        ;   in Loop: Header=BB2_67 Depth=2
	s_or_b64 exec, exec, s[24:25]
	s_add_i32 s23, s23, 2
	s_cmp_gt_u32 s23, 7
	v_add_u32_e64 v7, s[2:3], s16, v7
	s_cbranch_scc1 BB2_43
BB2_67:                                 ;   Parent Loop BB2_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_cmp_ne_u32_e64 s[2:3], v16, v18
	s_and_saveexec_b64 s[24:25], s[2:3]
	s_cbranch_execz BB2_69
; %bb.68:                               ;   in Loop: Header=BB2_67 Depth=2
	ds_read_b32 v25, v7 offset:272
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshlrev_b64 v[23:24], 2, v[16:17]
	v_mov_b32_e32 v17, s11
	v_add_u32_e64 v23, s[2:3], s10, v23
	v_addc_u32_e64 v24, s[2:3], v17, v24, s[2:3]
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[23:24], v25
	v_add_u32_e64 v16, s[2:3], v16, v14
BB2_69:                                 ; %_ZN8dwt_cuda21VerticalDWTBandWriterIiLb1EE12writeLowIntoEPiRKi.3.33.exit.i76.i
                                        ;   in Loop: Header=BB2_67 Depth=2
	s_or_b64 exec, exec, s[24:25]
	v_cmp_ne_u32_e64 s[2:3], v16, v18
	s_and_saveexec_b64 s[24:25], s[2:3]
	s_cbranch_execz BB2_66
; %bb.70:                               ;   in Loop: Header=BB2_67 Depth=2
	ds_read_b32 v25, v7 offset:408
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshlrev_b64 v[23:24], 2, v[16:17]
	v_mov_b32_e32 v17, s11
	v_add_u32_e64 v23, s[2:3], s10, v23
	v_addc_u32_e64 v24, s[2:3], v17, v24, s[2:3]
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[23:24], v25
	v_add_u32_e64 v16, s[2:3], v16, v15
	s_branch BB2_66
BB2_71:                                 ; %Flow1035
	s_mov_b64 s[0:1], 0
BB2_72:                                 ; %Flow1086
	s_and_b64 vcc, exec, s[0:1]
	s_cbranch_vccz BB2_212
; %bb.73:
	s_lshl_b32 s5, s6, 6
	s_add_i32 s0, s5, 0x41
	s_cmp_lt_i32 s0, s12
	v_add_u32_e32 v1, vcc, 2, v0
	v_lshrrev_b32_e32 v2, 1, v1
	v_and_b32_e32 v1, 1, v1
	s_movk_i32 s0, 0x178
	v_mad_u32_u24 v1, v1, s0, v2
	v_or_b32_e32 v2, s5, v0
	v_cmp_ne_u32_e64 s[6:7], s7, 0
	s_mov_b64 s[0:1], -1
	s_cbranch_scc1 BB2_145
; %bb.74:
	s_and_b64 vcc, exec, s[6:7]
	s_cbranch_vccz BB2_80
; %bb.75:
	v_cmp_le_i32_e32 vcc, s12, v2
	s_waitcnt vmcnt(0) lgkmcnt(0)
                                        ; implicit-def: $vgpr3
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.76:
	s_lshl_b32 s2, s12, 1
	v_sub_u32_e32 v3, vcc, s2, v2
	v_add_u32_e32 v3, vcc, -2, v3
; %bb.77:                               ; %Flow1062
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
; %bb.78:
	v_ashrrev_i32_e32 v3, 31, v2
	v_add_u32_e32 v4, vcc, v2, v3
	v_xor_b32_e32 v3, v4, v3
; %bb.79:                               ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb0EE4initEiiii.16.46.exit.i20.i.i
	s_or_b64 exec, exec, s[0:1]
	s_add_i32 s0, s4, -2
	s_mul_i32 s0, s0, s12
	v_add_u32_e32 v3, vcc, s0, v3
	v_ashrrev_i32_e32 v4, 31, v3
	v_lshlrev_b64 v[4:5], 2, v[3:4]
	v_mov_b32_e32 v6, s9
	v_add_u32_e32 v7, vcc, s8, v4
	v_addc_u32_e32 v8, vcc, v6, v5, vcc
	s_ashr_i32 s1, s12, 31
	s_mov_b32 s0, s12
	s_lshl_b64 s[0:1], s[0:1], 2
	v_mov_b32_e32 v4, s1
	v_add_u32_e32 v9, vcc, s0, v7
	v_addc_u32_e32 v10, vcc, v8, v4, vcc
	s_add_i32 s2, s12, s12
	v_add_u32_e32 v3, vcc, s2, v3
	v_add_u32_e32 v11, vcc, s0, v9
	v_addc_u32_e32 v12, vcc, v10, v4, vcc
	flat_load_dword v4, v[7:8]
	flat_load_dword v5, v[9:10]
	flat_load_dword v6, v[11:12]
	s_mov_b64 vcc, 0
	s_branch BB2_90
BB2_80:
	s_waitcnt vmcnt(0) lgkmcnt(0)
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr6
	s_mov_b64 vcc, exec
	s_cbranch_execz BB2_90
; %bb.81:
	v_cmp_le_i32_e32 vcc, s12, v2
                                        ; implicit-def: $vgpr3
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[2:3], exec, s[0:1]
; %bb.82:
	s_lshl_b32 s0, s12, 1
	v_sub_u32_e64 v3, s[0:1], s0, v2
	v_add_u32_e64 v3, s[0:1], -2, v3
; %bb.83:                               ; %Flow1064
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB2_85
; %bb.84:
	v_ashrrev_i32_e32 v3, 31, v2
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_add_u32_e64 v4, s[0:1], v2, v3
	v_xor_b32_e32 v3, v4, v3
BB2_85:                                 ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb0EE4initEiiii.16.46.exit4.i17.i.i
	s_or_b64 exec, exec, s[2:3]
	s_mul_i32 s2, s4, s12
	v_add_u32_e64 v3, s[0:1], s2, v3
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_ashrrev_i32_e32 v4, 31, v3
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_mov_b32_e32 v5, s9
	v_add_u32_e64 v7, s[0:1], s8, v3
	v_addc_u32_e64 v8, s[0:1], v5, v4, s[0:1]
	s_ashr_i32 s1, s12, 31
	s_mov_b32 s0, s12
	s_lshl_b64 s[16:17], s[0:1], 2
	v_mov_b32_e32 v3, s17
	v_add_u32_e64 v9, s[0:1], s16, v7
	v_addc_u32_e64 v10, s[0:1], v8, v3, s[0:1]
	v_add_u32_e64 v11, s[0:1], s16, v9
	v_addc_u32_e64 v12, s[0:1], v10, v3, s[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v6, v[7:8]
	flat_load_dword v5, v[9:10]
	flat_load_dword v4, v[11:12]
                                        ; implicit-def: $vgpr3
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.86:
	s_lshl_b32 s3, s12, 1
	v_sub_u32_e32 v3, vcc, s3, v2
	v_add_u32_e32 v3, vcc, -2, v3
; %bb.87:                               ; %Flow1063
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
; %bb.88:
	v_ashrrev_i32_e32 v3, 31, v2
	v_add_u32_e32 v7, vcc, v2, v3
	v_xor_b32_e32 v3, v7, v3
; %bb.89:                               ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb0EE4initEiiii.16.46.exit2.i18.i.i
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v3, vcc, s2, v3
BB2_90:                                 ; %_ZN8dwt_cuda6FDWT53ILi64ELi8EE10initColumnILb0EEEvRNS1_12FDWT53ColumnIXT_EEEPKiiiii.exit21.i.i
	v_cmp_gt_u32_e64 s[0:1], 3, v0
	v_mov_b32_e32 v10, 0
	v_mov_b32_e32 v9, v10
	v_mov_b32_e32 v8, v10
	v_mov_b32_e32 v12, v10
	v_mov_b32_e32 v7, v10
	v_mov_b32_e32 v11, v10
	s_and_saveexec_b64 s[16:17], s[0:1]
	s_cbranch_execz BB2_108
; %bb.91:
	v_cmp_eq_u32_e32 vcc, 0, v0
	v_cndmask_b32_e64 v7, -3, 64, vcc
	v_add_u32_e32 v11, vcc, v7, v0
	v_add_u32_e32 v12, vcc, s5, v11
	s_and_b64 vcc, exec, s[6:7]
	s_cbranch_vccz BB2_97
; %bb.92:
	v_cmp_le_i32_e32 vcc, s12, v12
                                        ; implicit-def: $vgpr7
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
; %bb.93:
	s_lshl_b32 s15, s12, 1
	v_sub_u32_e32 v7, vcc, s15, v12
	v_add_u32_e32 v7, vcc, -2, v7
; %bb.94:                               ; %Flow1056
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
; %bb.95:
	v_ashrrev_i32_e32 v7, 31, v12
	v_add_u32_e32 v8, vcc, v12, v7
	v_xor_b32_e32 v7, v8, v7
; %bb.96:                               ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb0EE4initEiiii.16.46.exit.i.i32.i
	s_or_b64 exec, exec, s[2:3]
	s_add_i32 s2, s4, -2
	s_mul_i32 s2, s2, s12
	v_add_u32_e32 v7, vcc, s2, v7
	v_ashrrev_i32_e32 v8, 31, v7
	v_lshlrev_b64 v[8:9], 2, v[7:8]
	v_mov_b32_e32 v10, s9
	v_add_u32_e32 v13, vcc, s8, v8
	v_addc_u32_e32 v14, vcc, v10, v9, vcc
	s_ashr_i32 s3, s12, 31
	s_mov_b32 s2, s12
	s_lshl_b64 s[2:3], s[2:3], 2
	v_mov_b32_e32 v8, s3
	v_add_u32_e32 v15, vcc, s2, v13
	v_addc_u32_e32 v16, vcc, v14, v8, vcc
	s_add_i32 s15, s12, s12
	v_add_u32_e32 v7, vcc, s15, v7
	v_add_u32_e32 v17, vcc, s2, v15
	v_addc_u32_e32 v18, vcc, v16, v8, vcc
	flat_load_dword v8, v[13:14]
	flat_load_dword v9, v[15:16]
	flat_load_dword v10, v[17:18]
	s_mov_b64 vcc, 0
	s_branch BB2_107
BB2_97:
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr10
	s_mov_b64 vcc, exec
	s_cbranch_execz BB2_107
; %bb.98:
	v_cmp_le_i32_e32 vcc, s12, v12
                                        ; implicit-def: $vgpr7
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[18:19], exec, s[2:3]
; %bb.99:
	s_lshl_b32 s2, s12, 1
	v_sub_u32_e64 v7, s[2:3], s2, v12
	v_add_u32_e64 v7, s[2:3], -2, v7
; %bb.100:                              ; %Flow1058
	s_or_saveexec_b64 s[18:19], s[18:19]
	s_xor_b64 exec, exec, s[18:19]
	s_cbranch_execz BB2_102
; %bb.101:
	v_ashrrev_i32_e32 v7, 31, v12
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_add_u32_e64 v8, s[2:3], v12, v7
	v_xor_b32_e32 v7, v8, v7
BB2_102:                                ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb0EE4initEiiii.16.46.exit4.i.i30.i
	s_or_b64 exec, exec, s[18:19]
	s_mul_i32 s15, s4, s12
	v_add_u32_e64 v7, s[2:3], s15, v7
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_ashrrev_i32_e32 v8, 31, v7
	v_lshlrev_b64 v[7:8], 2, v[7:8]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_mov_b32_e32 v9, s9
	v_add_u32_e64 v13, s[2:3], s8, v7
	v_addc_u32_e64 v14, s[2:3], v9, v8, s[2:3]
	s_ashr_i32 s3, s12, 31
	s_mov_b32 s2, s12
	s_lshl_b64 s[18:19], s[2:3], 2
	v_mov_b32_e32 v7, s19
	v_add_u32_e64 v15, s[2:3], s18, v13
	v_addc_u32_e64 v16, s[2:3], v14, v7, s[2:3]
	v_add_u32_e64 v17, s[2:3], s18, v15
	v_addc_u32_e64 v18, s[2:3], v16, v7, s[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v10, v[13:14]
	flat_load_dword v9, v[15:16]
	flat_load_dword v8, v[17:18]
                                        ; implicit-def: $vgpr7
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
; %bb.103:
	s_lshl_b32 s18, s12, 1
	v_sub_u32_e32 v7, vcc, s18, v12
	v_add_u32_e32 v7, vcc, -2, v7
; %bb.104:                              ; %Flow1057
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
; %bb.105:
	v_ashrrev_i32_e32 v7, 31, v12
	v_add_u32_e32 v12, vcc, v12, v7
	v_xor_b32_e32 v7, v12, v7
; %bb.106:                              ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb0EE4initEiiii.16.46.exit2.i.i31.i
	s_or_b64 exec, exec, s[2:3]
	v_add_u32_e32 v7, vcc, s15, v7
BB2_107:                                ; %Flow1061
	v_add_u32_e32 v11, vcc, 2, v11
	v_lshrrev_b32_e32 v12, 31, v11
	v_add_u32_e32 v12, vcc, v11, v12
	v_ashrrev_i32_e32 v12, 1, v12
	v_and_b32_e32 v11, 1, v11
	s_movk_i32 s2, 0x178
	v_mad_u32_u24 v12, v11, s2, v12
	v_mov_b32_e32 v11, s12
BB2_108:                                ; %_ZN8dwt_cuda6FDWT53ILi64ELi8EE10initColumnILb0EEEvRNS1_12FDWT53ColumnIXT_EEEPKiiiii.exit.i33.i
	s_or_b64 exec, exec, s[16:17]
	v_lshlrev_b32_e32 v13, 1, v0
	v_lshrrev_b32_e32 v14, 5, v0
	s_movk_i32 s2, 0xffc1
	v_mad_i32_i24 v17, v14, s2, v13
	v_add_u32_e32 v18, vcc, s5, v17
	v_cmp_gt_i32_e32 vcc, s12, v18
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v14, v15
	v_mov_b32_e32 v13, v15
	v_mov_b32_e32 v16, v15
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz BB2_114
; %bb.109:
	v_lshrrev_b32_e32 v13, 31, v18
	v_add_u32_e32 v13, vcc, v18, v13
	v_ashrrev_i32_e32 v14, 1, v13
	v_and_b32_e32 v13, 1, v18
	v_cmp_eq_u32_e32 vcc, 1, v13
	s_lshr_b32 s15, s12, 31
	s_add_i32 s15, s12, s15
	s_ashr_i32 s19, s15, 1
	s_and_b32 s15, s12, 1
	s_add_i32 s17, s19, s15
	s_lshr_b32 s15, s13, 31
	s_add_i32 s15, s13, s15
	s_ashr_i32 s15, s15, 1
	s_and_b32 s16, s13, 1
	s_add_i32 s18, s15, s16
                                        ; implicit-def: $vgpr16
                                        ; implicit-def: $sgpr22
	s_and_saveexec_b64 s[20:21], vcc
	s_xor_b64 s[20:21], exec, s[20:21]
; %bb.110:
	s_mul_i32 s22, s18, s17
	v_add_u32_e32 v16, vcc, s22, v14
	s_mul_i32 s22, s13, s12
	s_lshr_b32 s23, s22, 31
	s_add_i32 s22, s22, s23
	s_ashr_i32 s22, s22, 1
; %bb.111:                              ; %Flow1054
	s_or_saveexec_b64 s[20:21], s[20:21]
	v_mov_b32_e32 v13, s22
	v_mov_b32_e32 v15, s19
	s_xor_b64 exec, exec, s[20:21]
; %bb.112:
	s_mul_i32 s18, s18, s12
	v_mov_b32_e32 v13, s18
	v_mov_b32_e32 v15, s17
	v_mov_b32_e32 v16, v14
; %bb.113:                              ; %_ZN8dwt_cuda17VerticalDWTBandIOIiLb1EE10initializeEiiii.10.40.exit.i.i.i
	s_or_b64 exec, exec, s[20:21]
	v_mul_lo_u32 v18, v13, s16
	v_sub_u32_e32 v14, vcc, v15, v13
	v_mul_lo_u32 v19, v15, s15
	v_add_u32_e32 v18, vcc, v18, v16
	s_lshr_b32 s15, s4, 31
	s_add_i32 s15, s4, s15
	s_ashr_i32 s15, s15, 1
	v_mul_lo_u32 v20, v15, s15
	v_add_u32_e32 v15, vcc, v18, v19
	v_add_u32_e32 v16, vcc, v20, v16
BB2_114:                                ; %Flow1055
	s_or_b64 exec, exec, s[2:3]
	v_add_u32_e32 v18, vcc, 2, v17
	v_lshrrev_b32_e32 v17, 31, v18
	v_add_u32_e32 v17, vcc, v18, v17
	v_ashrrev_i32_e32 v17, 1, v17
	v_and_b32_e32 v18, 1, v18
	v_mul_u32_u24_e32 v23, 0x178, v18
	s_cmp_lt_i32 s14, 1
	s_cbranch_scc1 BB2_144
; %bb.115:                              ; %.lr.ph591
	v_lshlrev_b32_e32 v18, 2, v1
	v_lshlrev_b32_e32 v19, 2, v12
	v_cmp_gt_u32_e32 vcc, 15, v0
	v_lshlrev_b32_e32 v20, 2, v0
	s_ashr_i32 s17, s12, 31
	s_mov_b32 s16, s12
	s_lshl_b64 s[18:19], s[16:17], 2
	v_ashrrev_i32_e32 v12, 31, v11
	v_lshlrev_b64 v[21:22], 2, v[11:12]
	v_add_u32_e64 v17, s[2:3], v23, v17
	v_lshlrev_b32_e32 v23, 2, v17
	s_mov_b32 s15, 0
	s_movk_i32 s20, 0x88
	s_movk_i32 s21, 0x110
	s_movk_i32 s22, 0x550
	s_movk_i32 s23, 0x510
	s_movk_i32 s24, 0x100
	s_movk_i32 s25, 0xaf0
	s_movk_i32 s26, 0x440
	s_movk_i32 s27, 0x4c8
	s_branch BB2_117
BB2_116:                                ;   in Loop: Header=BB2_117 Depth=1
	s_waitcnt lgkmcnt(0)
	; wave barrier
	s_add_i32 s15, s15, 1
	s_cmp_eq_u32 s15, s14
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc1 BB2_144
BB2_117:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_118 Depth 2
                                        ;     Child Loop BB2_120 Depth 2
                                        ;     Child Loop BB2_122 Depth 2
                                        ;     Child Loop BB2_125 Depth 2
                                        ;     Child Loop BB2_127 Depth 2
                                        ;     Child Loop BB2_129 Depth 2
                                        ;     Child Loop BB2_131 Depth 2
                                        ;     Child Loop BB2_135 Depth 2
                                        ;     Child Loop BB2_140 Depth 2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write2_b32 v18, v4, v5 offset1:34
	ds_write_b32 v18, v6 offset:272
	v_ashrrev_i32_e32 v5, 31, v3
	v_mov_b32_e32 v6, s17
	v_add_u32_e64 v4, s[2:3], s16, v3
	v_addc_u32_e64 v5, s[2:3], v6, v5, s[2:3]
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_mov_b32_e32 v6, s9
	v_add_u32_e64 v4, s[2:3], s8, v4
	v_addc_u32_e64 v5, s[2:3], v6, v5, s[2:3]
	s_movk_i32 s28, 0xfbc0
BB2_118:                                ;   Parent Loop BB2_117 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	flat_load_dword v6, v[4:5]
	v_add_u32_e64 v3, s[2:3], s12, v3
	v_add_u32_e64 v17, s[2:3], s28, v18
	s_add_i32 s28, s28, s20
	v_mov_b32_e32 v24, s19
	v_add_u32_e64 v4, s[2:3], s18, v4
	v_addc_u32_e64 v5, s[2:3], v5, v24, s[2:3]
	s_cmp_eq_u32 s28, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v17, v6 offset:1496
	s_cbranch_scc0 BB2_118
; %bb.119:                              ;   in Loop: Header=BB2_117 Depth=1
	v_add_u32_e64 v4, s[2:3], s26, v18
	ds_read2_b32 v[4:5], v4 offset1:34
	ds_read_b32 v6, v18 offset:1360
	s_mov_b32 s28, 0
BB2_120:                                ;   Parent Loop BB2_117 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v17, s[2:3], s28, v18
	s_add_i32 s28, s28, s21
	ds_read_b32 v26, v17 offset:272
	ds_read2_b32 v[24:25], v17 offset1:34
	s_cmp_lg_u32 s28, s22
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v24, s[2:3], v26, v24
	v_lshrrev_b32_e32 v26, 31, v24
	v_add_u32_e64 v24, s[2:3], v24, v26
	v_ashrrev_i32_e32 v24, 1, v24
	v_sub_u32_e64 v24, s[2:3], v25, v24
	ds_write_b32 v17, v24 offset:136
	s_cbranch_scc1 BB2_120
; %bb.121:                              ; %_ZN8dwt_cuda15TransformBufferIiLi64ELi11ELi2EE18forEachVerticalOddINS_6FDWT53ILi64ELi8EE16Forward53PredictEEEviRKT_.exit.i9.i.i.preheader
                                        ;   in Loop: Header=BB2_117 Depth=1
	s_movk_i32 s28, 0xfbc0
BB2_122:                                ; %_ZN8dwt_cuda15TransformBufferIiLi64ELi11ELi2EE18forEachVerticalOddINS_6FDWT53ILi64ELi8EE16Forward53PredictEEEviRKT_.exit.i9.i.i
                                        ;   Parent Loop BB2_117 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v17, s[2:3], s28, v18
	s_add_i32 s28, s28, s21
	ds_read_b32 v26, v17 offset:1496
	v_add_u32_e64 v24, s[2:3], s27, v17
	s_cmp_eq_u32 s28, 0
	ds_read2_b32 v[24:25], v24 offset1:34
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v24, s[2:3], v24, v26
	v_add_u32_e64 v24, s[2:3], 2, v24
	v_ashrrev_i32_e32 v26, 31, v24
	v_lshrrev_b32_e32 v26, 30, v26
	v_add_u32_e64 v24, s[2:3], v24, v26
	v_ashrrev_i32_e32 v24, 2, v24
	v_add_u32_e64 v24, s[2:3], v24, v25
	ds_write_b32 v17, v24 offset:1360
	s_cbranch_scc0 BB2_122
; %bb.123:                              ; %_ZN8dwt_cuda6FDWT53ILi64ELi8EE26loadAndVerticallyTransformILb0EEEvRNS1_12FDWT53ColumnIXT_EEEPKi.exit11.i.i
                                        ;   in Loop: Header=BB2_117 Depth=1
	s_and_saveexec_b64 s[28:29], s[0:1]
	s_cbranch_execz BB2_130
; %bb.124:                              ;   in Loop: Header=BB2_117 Depth=1
	ds_write2_b32 v19, v8, v9 offset1:34
	ds_write_b32 v19, v10 offset:272
	v_ashrrev_i32_e32 v9, 31, v7
	v_add_u32_e64 v8, s[2:3], v11, v7
	v_addc_u32_e64 v9, s[2:3], v12, v9, s[2:3]
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_mov_b32_e32 v10, s9
	v_add_u32_e64 v8, s[2:3], s8, v8
	v_addc_u32_e64 v9, s[2:3], v10, v9, s[2:3]
	s_movk_i32 s30, 0xfbc0
BB2_125:                                ;   Parent Loop BB2_117 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	flat_load_dword v10, v[8:9]
	v_add_u32_e64 v7, s[2:3], v7, v11
	v_add_u32_e64 v17, s[2:3], s30, v19
	s_add_i32 s30, s30, s20
	v_add_u32_e64 v8, s[2:3], v8, v21
	v_addc_u32_e64 v9, s[2:3], v9, v22, s[2:3]
	s_cmp_eq_u32 s30, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v17, v10 offset:1496
	s_cbranch_scc0 BB2_125
; %bb.126:                              ;   in Loop: Header=BB2_117 Depth=1
	v_add_u32_e64 v8, s[2:3], s26, v19
	ds_read2_b32 v[8:9], v8 offset1:34
	ds_read_b32 v10, v19 offset:1360
	s_mov_b32 s30, 0
BB2_127:                                ;   Parent Loop BB2_117 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v17, s[2:3], s30, v19
	s_add_i32 s30, s30, s21
	ds_read_b32 v26, v17 offset:272
	ds_read2_b32 v[24:25], v17 offset1:34
	s_cmp_lg_u32 s30, s22
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v24, s[2:3], v26, v24
	v_lshrrev_b32_e32 v26, 31, v24
	v_add_u32_e64 v24, s[2:3], v24, v26
	v_ashrrev_i32_e32 v24, 1, v24
	v_sub_u32_e64 v24, s[2:3], v25, v24
	ds_write_b32 v17, v24 offset:136
	s_cbranch_scc1 BB2_127
; %bb.128:                              ; %_ZN8dwt_cuda15TransformBufferIiLi64ELi11ELi2EE18forEachVerticalOddINS_6FDWT53ILi64ELi8EE16Forward53PredictEEEviRKT_.exit.i.i39.i.preheader
                                        ;   in Loop: Header=BB2_117 Depth=1
	s_movk_i32 s30, 0xfbc0
BB2_129:                                ; %_ZN8dwt_cuda15TransformBufferIiLi64ELi11ELi2EE18forEachVerticalOddINS_6FDWT53ILi64ELi8EE16Forward53PredictEEEviRKT_.exit.i.i39.i
                                        ;   Parent Loop BB2_117 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v17, s[2:3], s30, v19
	s_add_i32 s30, s30, s21
	ds_read_b32 v26, v17 offset:1496
	v_add_u32_e64 v24, s[2:3], s27, v17
	s_cmp_eq_u32 s30, 0
	ds_read2_b32 v[24:25], v24 offset1:34
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v24, s[2:3], v24, v26
	v_add_u32_e64 v24, s[2:3], 2, v24
	v_ashrrev_i32_e32 v26, 31, v24
	v_lshrrev_b32_e32 v26, 30, v26
	v_add_u32_e64 v24, s[2:3], v24, v26
	v_ashrrev_i32_e32 v24, 2, v24
	v_add_u32_e64 v24, s[2:3], v24, v25
	ds_write_b32 v17, v24 offset:1360
	s_cbranch_scc0 BB2_129
BB2_130:                                ; %Flow1051
                                        ;   in Loop: Header=BB2_117 Depth=1
	s_or_b64 exec, exec, s[28:29]
	s_waitcnt lgkmcnt(0)
	; wave barrier
	s_waitcnt lgkmcnt(0)
	s_movk_i32 s28, 0xfc00
BB2_131:                                ;   Parent Loop BB2_117 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v17, s[2:3], s28, v20
	s_add_i32 s28, s28, s24
	v_add_u32_e64 v24, s[2:3], s23, v17
	s_cmp_eq_u32 s28, 0
	ds_read2_b32 v[24:25], v24 offset1:1
	ds_read_b32 v26, v17 offset:2800
	s_waitcnt lgkmcnt(1)
	v_add_u32_e64 v24, s[2:3], v25, v24
	v_lshrrev_b32_e32 v25, 31, v24
	v_add_u32_e64 v24, s[2:3], v24, v25
	v_ashrrev_i32_e32 v24, 1, v24
	s_waitcnt lgkmcnt(0)
	v_sub_u32_e64 v24, s[2:3], v26, v24
	ds_write_b32 v17, v24 offset:2800
	s_cbranch_scc0 BB2_131
; %bb.132:                              ;   in Loop: Header=BB2_117 Depth=1
	s_and_saveexec_b64 s[28:29], vcc
	s_cbranch_execz BB2_134
; %bb.133:                              ;   in Loop: Header=BB2_117 Depth=1
	v_add_u32_e64 v17, s[2:3], s23, v20
	ds_read2_b32 v[24:25], v17 offset1:1
	ds_read_b32 v17, v20 offset:2800
	s_waitcnt lgkmcnt(1)
	v_add_u32_e64 v24, s[2:3], v25, v24
	v_lshrrev_b32_e32 v25, 31, v24
	v_add_u32_e64 v24, s[2:3], v24, v25
	v_ashrrev_i32_e32 v24, 1, v24
	s_waitcnt lgkmcnt(0)
	v_sub_u32_e64 v17, s[2:3], v17, v24
	ds_write_b32 v20, v17 offset:2800
BB2_134:                                ; %_ZN8dwt_cuda15TransformBufferIiLi64ELi11ELi2EE20forEachHorizontalOddINS_6FDWT53ILi64ELi8EE16Forward53PredictEEEviiRKT_.exit.i43.i
                                        ;   in Loop: Header=BB2_117 Depth=1
	s_or_b64 exec, exec, s[28:29]
	s_waitcnt lgkmcnt(0)
	; wave barrier
	s_waitcnt lgkmcnt(0)
	s_movk_i32 s28, 0xfc00
BB2_135:                                ;   Parent Loop BB2_117 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v17, s[2:3], s28, v20
	s_add_i32 s28, s28, s24
	v_add_u32_e64 v24, s[2:3], s25, v17
	s_cmp_eq_u32 s28, 0
	ds_read2_b32 v[24:25], v24 offset1:1
	ds_read_b32 v26, v17 offset:1300
	s_waitcnt lgkmcnt(1)
	v_add_u32_e64 v24, s[2:3], v24, v25
	v_add_u32_e64 v24, s[2:3], 2, v24
	v_ashrrev_i32_e32 v25, 31, v24
	v_lshrrev_b32_e32 v25, 30, v25
	v_add_u32_e64 v24, s[2:3], v24, v25
	v_ashrrev_i32_e32 v24, 2, v24
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v24, s[2:3], v24, v26
	ds_write_b32 v17, v24 offset:1300
	s_cbranch_scc0 BB2_135
; %bb.136:                              ;   in Loop: Header=BB2_117 Depth=1
	s_and_saveexec_b64 s[28:29], vcc
	s_cbranch_execz BB2_138
; %bb.137:                              ;   in Loop: Header=BB2_117 Depth=1
	v_add_u32_e64 v17, s[2:3], s25, v20
	ds_read2_b32 v[24:25], v17 offset1:1
	ds_read_b32 v17, v20 offset:1300
	s_waitcnt lgkmcnt(1)
	v_add_u32_e64 v24, s[2:3], v24, v25
	v_add_u32_e64 v24, s[2:3], 2, v24
	v_ashrrev_i32_e32 v25, 31, v24
	v_lshrrev_b32_e32 v25, 30, v25
	v_add_u32_e64 v24, s[2:3], v24, v25
	v_ashrrev_i32_e32 v24, 2, v24
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v17, s[2:3], v24, v17
	ds_write_b32 v20, v17 offset:1300
BB2_138:                                ; %_ZN8dwt_cuda15TransformBufferIiLi64ELi11ELi2EE21forEachHorizontalEvenINS_6FDWT53ILi64ELi8EE15Forward53UpdateEEEviiRKT_.exit.i45.i
                                        ;   in Loop: Header=BB2_117 Depth=1
	s_or_b64 exec, exec, s[28:29]
	s_waitcnt lgkmcnt(0)
	; wave barrier
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s28, 0
	v_mov_b32_e32 v24, v23
	s_branch BB2_140
BB2_139:                                ; %_ZN8dwt_cuda21VerticalDWTBandWriterIiLb1EE13writeHighIntoEPiRKi.4.34.exit.i.i
                                        ;   in Loop: Header=BB2_140 Depth=2
	s_or_b64 exec, exec, s[30:31]
	s_add_i32 s28, s28, 2
	s_cmp_gt_u32 s28, 7
	v_add_u32_e64 v24, s[2:3], s21, v24
	s_cbranch_scc1 BB2_116
BB2_140:                                ;   Parent Loop BB2_117 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_cmp_ne_u32_e64 s[2:3], v16, v15
	s_and_saveexec_b64 s[30:31], s[2:3]
	s_cbranch_execz BB2_142
; %bb.141:                              ;   in Loop: Header=BB2_140 Depth=2
	ds_read_b32 v27, v24 offset:272
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshlrev_b64 v[25:26], 2, v[16:17]
	v_mov_b32_e32 v17, s11
	v_add_u32_e64 v25, s[2:3], s10, v25
	v_addc_u32_e64 v26, s[2:3], v17, v26, s[2:3]
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[25:26], v27
	v_add_u32_e64 v16, s[2:3], v16, v13
BB2_142:                                ; %_ZN8dwt_cuda21VerticalDWTBandWriterIiLb1EE12writeLowIntoEPiRKi.3.33.exit.i.i
                                        ;   in Loop: Header=BB2_140 Depth=2
	s_or_b64 exec, exec, s[30:31]
	v_cmp_ne_u32_e64 s[2:3], v16, v15
	s_and_saveexec_b64 s[30:31], s[2:3]
	s_cbranch_execz BB2_139
; %bb.143:                              ;   in Loop: Header=BB2_140 Depth=2
	ds_read_b32 v27, v24 offset:408
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshlrev_b64 v[25:26], 2, v[16:17]
	v_mov_b32_e32 v17, s11
	v_add_u32_e64 v25, s[2:3], s10, v25
	v_addc_u32_e64 v26, s[2:3], v17, v26, s[2:3]
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[25:26], v27
	v_add_u32_e64 v16, s[2:3], v16, v14
	s_branch BB2_139
BB2_144:                                ; %Flow1053
	s_mov_b64 s[0:1], 0
BB2_145:                                ; %Flow1084
	s_and_b64 vcc, exec, s[0:1]
	s_cbranch_vccz BB2_212
; %bb.146:
	s_and_b64 vcc, exec, s[6:7]
	s_cbranch_vccz BB2_152
; %bb.147:
	v_cmp_le_i32_e32 vcc, s12, v2
	s_waitcnt vmcnt(0) lgkmcnt(0)
                                        ; implicit-def: $vgpr3
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.148:
	s_lshl_b32 s2, s12, 1
	v_sub_u32_e32 v3, vcc, s2, v2
	v_add_u32_e32 v3, vcc, -2, v3
; %bb.149:                              ; %Flow1079
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
; %bb.150:
	v_ashrrev_i32_e32 v3, 31, v2
	v_add_u32_e32 v4, vcc, v2, v3
	v_xor_b32_e32 v3, v4, v3
; %bb.151:                              ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb0EE4initEiiii.16.46.exit.i18.i.i
	s_or_b64 exec, exec, s[0:1]
	s_add_i32 s0, s4, -2
	s_mul_i32 s0, s0, s12
	v_add_u32_e32 v3, vcc, s0, v3
	v_ashrrev_i32_e32 v4, 31, v3
	v_lshlrev_b64 v[4:5], 2, v[3:4]
	v_mov_b32_e32 v6, s9
	v_add_u32_e32 v7, vcc, s8, v4
	v_addc_u32_e32 v8, vcc, v6, v5, vcc
	s_ashr_i32 s1, s12, 31
	s_mov_b32 s0, s12
	s_lshl_b64 s[0:1], s[0:1], 2
	v_mov_b32_e32 v4, s1
	v_add_u32_e32 v9, vcc, s0, v7
	v_addc_u32_e32 v10, vcc, v8, v4, vcc
	s_add_i32 s2, s12, s12
	v_add_u32_e32 v3, vcc, s2, v3
	v_add_u32_e32 v11, vcc, s0, v9
	v_addc_u32_e32 v12, vcc, v10, v4, vcc
	flat_load_dword v4, v[7:8]
	flat_load_dword v5, v[9:10]
	flat_load_dword v6, v[11:12]
	s_mov_b64 vcc, 0
	s_branch BB2_162
BB2_152:
	s_waitcnt vmcnt(0) lgkmcnt(0)
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr6
	s_mov_b64 vcc, exec
	s_cbranch_execz BB2_162
; %bb.153:
	v_cmp_le_i32_e32 vcc, s12, v2
                                        ; implicit-def: $vgpr3
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[2:3], exec, s[0:1]
; %bb.154:
	s_lshl_b32 s0, s12, 1
	v_sub_u32_e64 v3, s[0:1], s0, v2
	v_add_u32_e64 v3, s[0:1], -2, v3
; %bb.155:                              ; %Flow1081
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB2_157
; %bb.156:
	v_ashrrev_i32_e32 v3, 31, v2
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_add_u32_e64 v4, s[0:1], v2, v3
	v_xor_b32_e32 v3, v4, v3
BB2_157:                                ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb0EE4initEiiii.16.46.exit4.i15.i.i
	s_or_b64 exec, exec, s[2:3]
	s_mul_i32 s2, s4, s12
	v_add_u32_e64 v3, s[0:1], s2, v3
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_ashrrev_i32_e32 v4, 31, v3
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_mov_b32_e32 v5, s9
	v_add_u32_e64 v7, s[0:1], s8, v3
	v_addc_u32_e64 v8, s[0:1], v5, v4, s[0:1]
	s_ashr_i32 s1, s12, 31
	s_mov_b32 s0, s12
	s_lshl_b64 s[16:17], s[0:1], 2
	v_mov_b32_e32 v3, s17
	v_add_u32_e64 v9, s[0:1], s16, v7
	v_addc_u32_e64 v10, s[0:1], v8, v3, s[0:1]
	v_add_u32_e64 v11, s[0:1], s16, v9
	v_addc_u32_e64 v12, s[0:1], v10, v3, s[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v6, v[7:8]
	flat_load_dword v5, v[9:10]
	flat_load_dword v4, v[11:12]
                                        ; implicit-def: $vgpr3
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.158:
	s_lshl_b32 s3, s12, 1
	v_sub_u32_e32 v3, vcc, s3, v2
	v_add_u32_e32 v3, vcc, -2, v3
; %bb.159:                              ; %Flow1080
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
; %bb.160:
	v_ashrrev_i32_e32 v3, 31, v2
	v_add_u32_e32 v2, vcc, v2, v3
	v_xor_b32_e32 v3, v2, v3
; %bb.161:                              ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb0EE4initEiiii.16.46.exit2.i16.i.i
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v3, vcc, s2, v3
BB2_162:                                ; %_ZN8dwt_cuda6FDWT53ILi64ELi8EE10initColumnILb0EEEvRNS1_12FDWT53ColumnIXT_EEEPKiiiii.exit19.i.i
	v_cmp_gt_u32_e64 s[0:1], 3, v0
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v8, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v10, v9
	s_and_saveexec_b64 s[16:17], s[0:1]
	s_cbranch_execz BB2_180
; %bb.163:
	v_cmp_eq_u32_e32 vcc, 0, v0
	v_cndmask_b32_e64 v2, -3, 64, vcc
	v_add_u32_e32 v10, vcc, v2, v0
	v_add_u32_e32 v11, vcc, s5, v10
	s_and_b64 vcc, exec, s[6:7]
	s_cbranch_vccz BB2_169
; %bb.164:
	v_cmp_le_i32_e32 vcc, s12, v11
                                        ; implicit-def: $vgpr2
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
; %bb.165:
	s_lshl_b32 s6, s12, 1
	v_sub_u32_e32 v2, vcc, s6, v11
	v_add_u32_e32 v2, vcc, -2, v2
; %bb.166:                              ; %Flow1074
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
; %bb.167:
	v_ashrrev_i32_e32 v2, 31, v11
	v_add_u32_e32 v7, vcc, v11, v2
	v_xor_b32_e32 v2, v7, v2
; %bb.168:                              ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb0EE4initEiiii.16.46.exit.i.i.i
	s_or_b64 exec, exec, s[2:3]
	s_add_i32 s2, s4, -2
	s_mul_i32 s2, s2, s12
	v_add_u32_e32 v7, vcc, s2, v2
	v_ashrrev_i32_e32 v8, 31, v7
	v_lshlrev_b64 v[8:9], 2, v[7:8]
	v_mov_b32_e32 v2, s9
	v_add_u32_e32 v12, vcc, s8, v8
	v_addc_u32_e32 v13, vcc, v2, v9, vcc
	s_ashr_i32 s3, s12, 31
	s_mov_b32 s2, s12
	s_lshl_b64 s[2:3], s[2:3], 2
	v_mov_b32_e32 v2, s3
	v_add_u32_e32 v14, vcc, s2, v12
	v_addc_u32_e32 v15, vcc, v13, v2, vcc
	s_add_i32 s6, s12, s12
	v_add_u32_e32 v2, vcc, s6, v7
	v_mov_b32_e32 v7, s3
	v_add_u32_e32 v16, vcc, s2, v14
	v_addc_u32_e32 v17, vcc, v15, v7, vcc
	flat_load_dword v7, v[12:13]
	flat_load_dword v8, v[14:15]
	flat_load_dword v9, v[16:17]
	s_mov_b64 vcc, 0
	s_branch BB2_179
BB2_169:
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr9
	s_mov_b64 vcc, exec
	s_cbranch_execz BB2_179
; %bb.170:
	v_cmp_le_i32_e32 vcc, s12, v11
                                        ; implicit-def: $vgpr2
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[6:7], exec, s[2:3]
; %bb.171:
	s_lshl_b32 s2, s12, 1
	v_sub_u32_e64 v2, s[2:3], s2, v11
	v_add_u32_e64 v2, s[2:3], -2, v2
; %bb.172:                              ; %Flow1076
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB2_174
; %bb.173:
	v_ashrrev_i32_e32 v2, 31, v11
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_add_u32_e64 v7, s[2:3], v11, v2
	v_xor_b32_e32 v2, v7, v2
BB2_174:                                ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb0EE4initEiiii.16.46.exit4.i.i.i
	s_or_b64 exec, exec, s[6:7]
	s_mul_i32 s6, s4, s12
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_add_u32_e64 v7, s[2:3], s6, v2
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_ashrrev_i32_e32 v8, 31, v7
	v_lshlrev_b64 v[7:8], 2, v[7:8]
	v_mov_b32_e32 v2, s9
	v_add_u32_e64 v12, s[2:3], s8, v7
	v_addc_u32_e64 v13, s[2:3], v2, v8, s[2:3]
	s_ashr_i32 s3, s12, 31
	s_mov_b32 s2, s12
	s_lshl_b64 s[18:19], s[2:3], 2
	v_mov_b32_e32 v2, s19
	v_add_u32_e64 v14, s[2:3], s18, v12
	v_addc_u32_e64 v15, s[2:3], v13, v2, s[2:3]
	v_add_u32_e64 v16, s[2:3], s18, v14
	v_addc_u32_e64 v17, s[2:3], v15, v2, s[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v9, v[12:13]
	flat_load_dword v8, v[14:15]
	flat_load_dword v7, v[16:17]
                                        ; implicit-def: $vgpr2
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
; %bb.175:
	s_lshl_b32 s7, s12, 1
	v_sub_u32_e32 v2, vcc, s7, v11
	v_add_u32_e32 v2, vcc, -2, v2
; %bb.176:                              ; %Flow1075
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
; %bb.177:
	v_ashrrev_i32_e32 v2, 31, v11
	v_add_u32_e32 v11, vcc, v11, v2
	v_xor_b32_e32 v2, v11, v2
; %bb.178:                              ; %_ZN8dwt_cuda22VerticalDWTPixelLoaderIiLb0EE4initEiiii.16.46.exit2.i.i.i
	s_or_b64 exec, exec, s[2:3]
	v_add_u32_e32 v2, vcc, s6, v2
BB2_179:                                ; %Flow1078
	v_add_u32_e32 v10, vcc, 2, v10
	v_lshrrev_b32_e32 v11, 31, v10
	v_add_u32_e32 v11, vcc, v10, v11
	v_ashrrev_i32_e32 v11, 1, v11
	v_and_b32_e32 v10, 1, v10
	s_movk_i32 s2, 0x178
	v_mad_u32_u24 v11, v10, s2, v11
	v_mov_b32_e32 v10, s12
BB2_180:                                ; %_ZN8dwt_cuda6FDWT53ILi64ELi8EE10initColumnILb0EEEvRNS1_12FDWT53ColumnIXT_EEEPKiiiii.exit.i.i
	s_or_b64 exec, exec, s[16:17]
	v_lshlrev_b32_e32 v12, 1, v0
	v_lshrrev_b32_e32 v13, 5, v0
	s_movk_i32 s2, 0xffc1
	v_mad_i32_i24 v13, v13, s2, v12
	v_add_u32_e32 v16, vcc, s5, v13
	v_cmp_gt_i32_e32 vcc, s12, v16
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v12, v14
	v_mov_b32_e32 v15, v14
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz BB2_186
; %bb.181:
	v_lshrrev_b32_e32 v12, 31, v16
	v_add_u32_e32 v12, vcc, v16, v12
	v_ashrrev_i32_e32 v14, 1, v12
	v_and_b32_e32 v12, 1, v16
	v_cmp_eq_u32_e32 vcc, 1, v12
	s_lshr_b32 s5, s12, 31
	s_add_i32 s5, s12, s5
	s_ashr_i32 s7, s5, 1
	s_and_b32 s5, s12, 1
	s_add_i32 s5, s7, s5
	s_lshr_b32 s6, s13, 31
	s_add_i32 s6, s13, s6
	s_ashr_i32 s6, s6, 1
	s_and_b32 s15, s13, 1
	s_add_i32 s6, s6, s15
                                        ; implicit-def: $vgpr15
                                        ; implicit-def: $sgpr15
	s_and_saveexec_b64 s[16:17], vcc
	s_xor_b64 s[16:17], exec, s[16:17]
; %bb.182:
	s_mul_i32 s15, s6, s5
	v_add_u32_e32 v15, vcc, s15, v14
	s_mul_i32 s13, s13, s12
	s_lshr_b32 s15, s13, 31
	s_add_i32 s13, s13, s15
	s_ashr_i32 s15, s13, 1
; %bb.183:                              ; %Flow1072
	s_or_saveexec_b64 s[16:17], s[16:17]
	v_mov_b32_e32 v12, s15
	v_mov_b32_e32 v16, s7
	s_xor_b64 exec, exec, s[16:17]
; %bb.184:
	s_mul_i32 s6, s6, s12
	v_mov_b32_e32 v12, s6
	v_mov_b32_e32 v16, s5
	v_mov_b32_e32 v15, v14
; %bb.185:                              ; %_ZN8dwt_cuda17VerticalDWTBandIOIiLb0EE10initializeEiiii.23.53.exit.i.i.i
	s_or_b64 exec, exec, s[16:17]
	s_lshr_b32 s5, s4, 31
	s_add_i32 s4, s4, s5
	s_ashr_i32 s4, s4, 1
	v_mul_lo_u32 v17, v16, s4
	v_sub_u32_e32 v14, vcc, v16, v12
	v_add_u32_e32 v15, vcc, v17, v15
BB2_186:                                ; %Flow1073
	s_or_b64 exec, exec, s[2:3]
	v_add_u32_e32 v16, vcc, 2, v13
	v_lshrrev_b32_e32 v13, 31, v16
	v_add_u32_e32 v13, vcc, v16, v13
	v_ashrrev_i32_e32 v13, 1, v13
	v_and_b32_e32 v16, 1, v16
	v_mul_u32_u24_e32 v16, 0x178, v16
	s_cmp_lt_i32 s14, 1
	s_cbranch_scc1 BB2_212
; %bb.187:                              ; %.lr.ph
	v_lshlrev_b32_e32 v1, 2, v1
	v_lshlrev_b32_e32 v17, 2, v11
	v_cmp_gt_u32_e32 vcc, 15, v0
	v_lshlrev_b32_e32 v0, 2, v0
	s_ashr_i32 s5, s12, 31
	s_mov_b32 s4, s12
	s_lshl_b64 s[6:7], s[4:5], 2
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[18:19], 2, v[10:11]
	v_add_u32_e64 v13, s[2:3], v16, v13
	v_lshlrev_b32_e32 v20, 2, v13
	s_mov_b32 s13, 0
	s_movk_i32 s15, 0x88
	s_movk_i32 s16, 0x110
	s_movk_i32 s17, 0x550
	s_movk_i32 s18, 0x510
	s_movk_i32 s19, 0x100
	s_movk_i32 s20, 0xaf0
	s_movk_i32 s21, 0x440
	s_movk_i32 s22, 0x4c8
BB2_188:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_189 Depth 2
                                        ;     Child Loop BB2_191 Depth 2
                                        ;     Child Loop BB2_193 Depth 2
                                        ;     Child Loop BB2_196 Depth 2
                                        ;     Child Loop BB2_198 Depth 2
                                        ;     Child Loop BB2_200 Depth 2
                                        ;     Child Loop BB2_202 Depth 2
                                        ;     Child Loop BB2_206 Depth 2
                                        ;     Child Loop BB2_210 Depth 2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write2_b32 v1, v4, v5 offset1:34
	ds_write_b32 v1, v6 offset:272
	v_ashrrev_i32_e32 v5, 31, v3
	v_mov_b32_e32 v6, s5
	v_add_u32_e64 v4, s[2:3], s4, v3
	v_addc_u32_e64 v5, s[2:3], v6, v5, s[2:3]
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_mov_b32_e32 v6, s9
	v_add_u32_e64 v4, s[2:3], s8, v4
	v_addc_u32_e64 v5, s[2:3], v6, v5, s[2:3]
	s_movk_i32 s23, 0xfbc0
BB2_189:                                ;   Parent Loop BB2_188 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	flat_load_dword v6, v[4:5]
	v_add_u32_e64 v3, s[2:3], s12, v3
	v_add_u32_e64 v13, s[2:3], s23, v1
	s_add_i32 s23, s23, s15
	v_mov_b32_e32 v16, s7
	v_add_u32_e64 v4, s[2:3], s6, v4
	v_addc_u32_e64 v5, s[2:3], v5, v16, s[2:3]
	s_cmp_eq_u32 s23, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v13, v6 offset:1496
	s_cbranch_scc0 BB2_189
; %bb.190:                              ;   in Loop: Header=BB2_188 Depth=1
	v_add_u32_e64 v4, s[2:3], s21, v1
	ds_read2_b32 v[4:5], v4 offset1:34
	ds_read_b32 v6, v1 offset:1360
	s_mov_b32 s23, 0
BB2_191:                                ;   Parent Loop BB2_188 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v13, s[2:3], s23, v1
	s_add_i32 s23, s23, s16
	ds_read_b32 v16, v13 offset:272
	ds_read2_b32 v[21:22], v13 offset1:34
	s_cmp_lg_u32 s23, s17
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v16, s[2:3], v16, v21
	v_lshrrev_b32_e32 v21, 31, v16
	v_add_u32_e64 v16, s[2:3], v16, v21
	v_ashrrev_i32_e32 v16, 1, v16
	v_sub_u32_e64 v16, s[2:3], v22, v16
	ds_write_b32 v13, v16 offset:136
	s_cbranch_scc1 BB2_191
; %bb.192:                              ; %_ZN8dwt_cuda15TransformBufferIiLi64ELi11ELi2EE18forEachVerticalOddINS_6FDWT53ILi64ELi8EE16Forward53PredictEEEviRKT_.exit.i8.i.i.preheader
                                        ;   in Loop: Header=BB2_188 Depth=1
	s_movk_i32 s23, 0xfbc0
BB2_193:                                ; %_ZN8dwt_cuda15TransformBufferIiLi64ELi11ELi2EE18forEachVerticalOddINS_6FDWT53ILi64ELi8EE16Forward53PredictEEEviRKT_.exit.i8.i.i
                                        ;   Parent Loop BB2_188 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v13, s[2:3], s23, v1
	s_add_i32 s23, s23, s16
	ds_read_b32 v16, v13 offset:1496
	v_add_u32_e64 v21, s[2:3], s22, v13
	s_cmp_eq_u32 s23, 0
	ds_read2_b32 v[21:22], v21 offset1:34
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v16, s[2:3], v21, v16
	v_add_u32_e64 v16, s[2:3], 2, v16
	v_ashrrev_i32_e32 v21, 31, v16
	v_lshrrev_b32_e32 v21, 30, v21
	v_add_u32_e64 v16, s[2:3], v16, v21
	v_ashrrev_i32_e32 v16, 2, v16
	v_add_u32_e64 v16, s[2:3], v16, v22
	ds_write_b32 v13, v16 offset:1360
	s_cbranch_scc0 BB2_193
; %bb.194:                              ; %_ZN8dwt_cuda6FDWT53ILi64ELi8EE26loadAndVerticallyTransformILb0EEEvRNS1_12FDWT53ColumnIXT_EEEPKi.exit10.i.i
                                        ;   in Loop: Header=BB2_188 Depth=1
	s_and_saveexec_b64 s[24:25], s[0:1]
	s_cbranch_execz BB2_201
; %bb.195:                              ;   in Loop: Header=BB2_188 Depth=1
	ds_write2_b32 v17, v7, v8 offset1:34
	ds_write_b32 v17, v9 offset:272
	v_ashrrev_i32_e32 v8, 31, v2
	v_add_u32_e64 v7, s[2:3], v10, v2
	v_addc_u32_e64 v8, s[2:3], v11, v8, s[2:3]
	v_lshlrev_b64 v[7:8], 2, v[7:8]
	v_mov_b32_e32 v9, s9
	v_add_u32_e64 v7, s[2:3], s8, v7
	v_addc_u32_e64 v8, s[2:3], v9, v8, s[2:3]
	s_movk_i32 s23, 0xfbc0
BB2_196:                                ;   Parent Loop BB2_188 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	flat_load_dword v9, v[7:8]
	v_add_u32_e64 v2, s[2:3], v2, v10
	v_add_u32_e64 v13, s[2:3], s23, v17
	s_add_i32 s23, s23, s15
	v_add_u32_e64 v7, s[2:3], v7, v18
	v_addc_u32_e64 v8, s[2:3], v8, v19, s[2:3]
	s_cmp_eq_u32 s23, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v13, v9 offset:1496
	s_cbranch_scc0 BB2_196
; %bb.197:                              ;   in Loop: Header=BB2_188 Depth=1
	v_add_u32_e64 v7, s[2:3], s21, v17
	ds_read2_b32 v[7:8], v7 offset1:34
	ds_read_b32 v9, v17 offset:1360
	s_mov_b32 s23, 0
BB2_198:                                ;   Parent Loop BB2_188 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v13, s[2:3], s23, v17
	s_add_i32 s23, s23, s16
	ds_read_b32 v16, v13 offset:272
	ds_read2_b32 v[21:22], v13 offset1:34
	s_cmp_lg_u32 s23, s17
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v16, s[2:3], v16, v21
	v_lshrrev_b32_e32 v21, 31, v16
	v_add_u32_e64 v16, s[2:3], v16, v21
	v_ashrrev_i32_e32 v16, 1, v16
	v_sub_u32_e64 v16, s[2:3], v22, v16
	ds_write_b32 v13, v16 offset:136
	s_cbranch_scc1 BB2_198
; %bb.199:                              ; %_ZN8dwt_cuda15TransformBufferIiLi64ELi11ELi2EE18forEachVerticalOddINS_6FDWT53ILi64ELi8EE16Forward53PredictEEEviRKT_.exit.i.i.i.preheader
                                        ;   in Loop: Header=BB2_188 Depth=1
	s_movk_i32 s23, 0xfbc0
BB2_200:                                ; %_ZN8dwt_cuda15TransformBufferIiLi64ELi11ELi2EE18forEachVerticalOddINS_6FDWT53ILi64ELi8EE16Forward53PredictEEEviRKT_.exit.i.i.i
                                        ;   Parent Loop BB2_188 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v13, s[2:3], s23, v17
	s_add_i32 s23, s23, s16
	ds_read_b32 v16, v13 offset:1496
	v_add_u32_e64 v21, s[2:3], s22, v13
	s_cmp_eq_u32 s23, 0
	ds_read2_b32 v[21:22], v21 offset1:34
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v16, s[2:3], v21, v16
	v_add_u32_e64 v16, s[2:3], 2, v16
	v_ashrrev_i32_e32 v21, 31, v16
	v_lshrrev_b32_e32 v21, 30, v21
	v_add_u32_e64 v16, s[2:3], v16, v21
	v_ashrrev_i32_e32 v16, 2, v16
	v_add_u32_e64 v16, s[2:3], v16, v22
	ds_write_b32 v13, v16 offset:1360
	s_cbranch_scc0 BB2_200
BB2_201:                                ; %Flow1069
                                        ;   in Loop: Header=BB2_188 Depth=1
	s_or_b64 exec, exec, s[24:25]
	s_waitcnt lgkmcnt(0)
	; wave barrier
	s_waitcnt lgkmcnt(0)
	s_movk_i32 s23, 0xfc00
BB2_202:                                ;   Parent Loop BB2_188 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v13, s[2:3], s23, v0
	s_add_i32 s23, s23, s19
	v_add_u32_e64 v16, s[2:3], s18, v13
	s_cmp_eq_u32 s23, 0
	ds_read2_b32 v[21:22], v16 offset1:1
	ds_read_b32 v16, v13 offset:2800
	s_waitcnt lgkmcnt(1)
	v_add_u32_e64 v21, s[2:3], v22, v21
	v_lshrrev_b32_e32 v22, 31, v21
	v_add_u32_e64 v21, s[2:3], v21, v22
	v_ashrrev_i32_e32 v21, 1, v21
	s_waitcnt lgkmcnt(0)
	v_sub_u32_e64 v16, s[2:3], v16, v21
	ds_write_b32 v13, v16 offset:2800
	s_cbranch_scc0 BB2_202
; %bb.203:                              ;   in Loop: Header=BB2_188 Depth=1
	s_and_saveexec_b64 s[24:25], vcc
	s_cbranch_execz BB2_205
; %bb.204:                              ;   in Loop: Header=BB2_188 Depth=1
	v_add_u32_e64 v13, s[2:3], s18, v0
	ds_read2_b32 v[21:22], v13 offset1:1
	ds_read_b32 v13, v0 offset:2800
	s_waitcnt lgkmcnt(1)
	v_add_u32_e64 v16, s[2:3], v22, v21
	v_lshrrev_b32_e32 v21, 31, v16
	v_add_u32_e64 v16, s[2:3], v16, v21
	v_ashrrev_i32_e32 v16, 1, v16
	s_waitcnt lgkmcnt(0)
	v_sub_u32_e64 v13, s[2:3], v13, v16
	ds_write_b32 v0, v13 offset:2800
BB2_205:                                ; %_ZN8dwt_cuda15TransformBufferIiLi64ELi11ELi2EE20forEachHorizontalOddINS_6FDWT53ILi64ELi8EE16Forward53PredictEEEviiRKT_.exit.i.i
                                        ;   in Loop: Header=BB2_188 Depth=1
	s_or_b64 exec, exec, s[24:25]
	s_waitcnt lgkmcnt(0)
	; wave barrier
	s_waitcnt lgkmcnt(0)
	s_movk_i32 s23, 0xfc00
BB2_206:                                ;   Parent Loop BB2_188 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v13, s[2:3], s23, v0
	s_add_i32 s23, s23, s19
	v_add_u32_e64 v16, s[2:3], s20, v13
	s_cmp_eq_u32 s23, 0
	ds_read2_b32 v[21:22], v16 offset1:1
	ds_read_b32 v16, v13 offset:1300
	s_waitcnt lgkmcnt(1)
	v_add_u32_e64 v21, s[2:3], v21, v22
	v_add_u32_e64 v21, s[2:3], 2, v21
	v_ashrrev_i32_e32 v22, 31, v21
	v_lshrrev_b32_e32 v22, 30, v22
	v_add_u32_e64 v21, s[2:3], v21, v22
	v_ashrrev_i32_e32 v21, 2, v21
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v16, s[2:3], v21, v16
	ds_write_b32 v13, v16 offset:1300
	s_cbranch_scc0 BB2_206
; %bb.207:                              ;   in Loop: Header=BB2_188 Depth=1
	s_and_saveexec_b64 s[24:25], vcc
	s_cbranch_execz BB2_209
; %bb.208:                              ;   in Loop: Header=BB2_188 Depth=1
	v_add_u32_e64 v13, s[2:3], s20, v0
	ds_read2_b32 v[21:22], v13 offset1:1
	ds_read_b32 v13, v0 offset:1300
	s_waitcnt lgkmcnt(1)
	v_add_u32_e64 v16, s[2:3], v21, v22
	v_add_u32_e64 v16, s[2:3], 2, v16
	v_ashrrev_i32_e32 v21, 31, v16
	v_lshrrev_b32_e32 v21, 30, v21
	v_add_u32_e64 v16, s[2:3], v16, v21
	v_ashrrev_i32_e32 v16, 2, v16
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v13, s[2:3], v16, v13
	ds_write_b32 v0, v13 offset:1300
BB2_209:                                ; %_ZN8dwt_cuda15TransformBufferIiLi64ELi11ELi2EE21forEachHorizontalEvenINS_6FDWT53ILi64ELi8EE15Forward53UpdateEEEviiRKT_.exit.i.i
                                        ;   in Loop: Header=BB2_188 Depth=1
	s_or_b64 exec, exec, s[24:25]
	s_waitcnt lgkmcnt(0)
	; wave barrier
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s23, 0
	v_mov_b32_e32 v13, v20
BB2_210:                                ;   Parent Loop BB2_188 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e64 v27, s[2:3], s16, v13
	v_ashrrev_i32_e32 v16, 31, v15
	v_mov_b32_e32 v28, s11
	v_add_u32_e64 v29, s[2:3], v15, v12
	ds_read2_b32 v[21:22], v13 offset0:68 offset1:102
	v_ashrrev_i32_e32 v13, 31, v12
	s_add_i32 s23, s23, 2
	v_lshlrev_b64 v[23:24], 2, v[15:16]
	v_lshlrev_b64 v[25:26], 2, v[12:13]
	v_add_u32_e64 v15, s[2:3], v29, v14
	s_cmp_gt_u32 s23, 7
	v_mov_b32_e32 v13, v27
	v_add_u32_e64 v23, s[2:3], s10, v23
	v_addc_u32_e64 v24, s[2:3], v28, v24, s[2:3]
	v_add_u32_e64 v25, s[2:3], v23, v25
	v_addc_u32_e64 v26, s[2:3], v24, v26, s[2:3]
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[23:24], v21
	flat_store_dword v[25:26], v22
	s_cbranch_scc0 BB2_210
; %bb.211:                              ;   in Loop: Header=BB2_188 Depth=1
	s_waitcnt lgkmcnt(0)
	; wave barrier
	s_add_i32 s13, s13, 1
	s_cmp_eq_u32 s13, s14
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 BB2_188
	s_nop                               ; adding s_nop to align PC of s_endpgm with simulation
BB2_212:                                ; %_ZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiii.exit
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _ZN8dwt_cuda12fdwt53KernelILi64ELi8EEEvPKiPiiii
		.amdhsa_group_segment_fixed_size 3000
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 30
		.amdhsa_next_free_sgpr 32
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
.Lfunc_end2:
	.size	_ZN8dwt_cuda12fdwt53KernelILi64ELi8EEEvPKiPiiii, .Lfunc_end2-_ZN8dwt_cuda12fdwt53KernelILi64ELi8EEEvPKiPiiii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 8340
; NumSgprs: 36
; NumVgprs: 30
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 3000 bytes/workgroup (compile time only)
; SGPRBlocks: 4
; VGPRBlocks: 7
; NumSGPRsForWavesPerEU: 36
; NumVGPRsForWavesPerEU: 30
; Occupancy: 8
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.ident	"clang version 12.0.0 (/src/external/llvm-project/clang 1100ebe275a9dcc79a9abbda902b6f10738f2f5d)"
	.section	".note.GNU-stack"
	.addrsig
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .offset:         16
        .size:           4
        .value_kind:     by_value
      - .offset:         20
        .size:           4
        .value_kind:     by_value
      - .offset:         24
        .size:           4
        .value_kind:     by_value
      - .offset:         32
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         40
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         48
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     hidden_none
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
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 8632
    .kernarg_segment_align: 8
    .kernarg_segment_size: 88
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 192
    .name:           _ZN8dwt_cuda12fdwt53KernelILi192ELi8EEEvPKiPiiii
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         _ZN8dwt_cuda12fdwt53KernelILi192ELi8EEEvPKiPiiii.kd
    .vgpr_count:     28
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .offset:         16
        .size:           4
        .value_kind:     by_value
      - .offset:         20
        .size:           4
        .value_kind:     by_value
      - .offset:         24
        .size:           4
        .value_kind:     by_value
      - .offset:         32
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         40
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         48
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     hidden_none
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
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 5816
    .kernarg_segment_align: 8
    .kernarg_segment_size: 88
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 128
    .name:           _ZN8dwt_cuda12fdwt53KernelILi128ELi8EEEvPKiPiiii
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         _ZN8dwt_cuda12fdwt53KernelILi128ELi8EEEvPKiPiiii.kd
    .vgpr_count:     30
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .offset:         16
        .size:           4
        .value_kind:     by_value
      - .offset:         20
        .size:           4
        .value_kind:     by_value
      - .offset:         24
        .size:           4
        .value_kind:     by_value
      - .offset:         32
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         40
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         48
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     hidden_none
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
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 3000
    .kernarg_segment_align: 8
    .kernarg_segment_size: 88
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 64
    .name:           _ZN8dwt_cuda12fdwt53KernelILi64ELi8EEEvPKiPiiii
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         _ZN8dwt_cuda12fdwt53KernelILi64ELi8EEEvPKiPiiii.kd
    .vgpr_count:     30
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
