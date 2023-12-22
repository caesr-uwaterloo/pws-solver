	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z25cuda_initialize_variablesiPfS_ ; -- Begin function _Z25cuda_initialize_variablesiPfS_
	.globl	_Z25cuda_initialize_variablesiPfS_
	.p2align	8
	.type	_Z25cuda_initialize_variablesiPfS_,@function
_Z25cuda_initialize_variablesiPfS_:     ; @_Z25cuda_initialize_variablesiPfS_
_Z25cuda_initialize_variablesiPfS_$local:
; %bb.0:
	s_load_dword s4, s[4:5], 0x4
	s_nop 0
	s_load_dword s10, s[6:7], 0x0
	s_load_dwordx4 s[0:3], s[6:7], 0x8
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, s4, 0xffff
	s_mul_i32 s8, s8, s4
	v_add_u32_e32 v0, vcc, s8, v0
	s_load_dword s4, s[2:3], 0x0
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[1:2], 2, v[0:1]
	s_ashr_i32 s11, s10, 31
	v_mov_b32_e32 v3, s1
	v_add_u32_e32 v1, vcc, s0, v1
	v_addc_u32_e32 v2, vcc, v3, v2, vcc
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, s4
	s_add_u32 s4, s2, 4
	flat_store_dword v[1:2], v3
	s_addc_u32 s5, s3, 0
	v_mov_b32_e32 v3, s4
	v_mov_b32_e32 v4, s5
	flat_load_dword v5, v[3:4]
	s_lshl_b64 s[4:5], s[10:11], 2
	s_add_u32 s6, s2, 8
	v_mov_b32_e32 v6, s5
	v_add_u32_e32 v1, vcc, s4, v1
	s_addc_u32 s7, s3, 0
	v_addc_u32_e32 v2, vcc, v2, v6, vcc
	v_mov_b32_e32 v3, s6
	v_mov_b32_e32 v4, s7
	s_add_i32 s4, s10, s10
	v_add_u32_e32 v0, vcc, s4, v0
	s_add_u32 s4, s2, 12
	v_mov_b32_e32 v6, s1
	s_addc_u32 s5, s3, 0
	s_add_u32 s2, s2, 16
	s_addc_u32 s3, s3, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[1:2], v5
	flat_load_dword v5, v[3:4]
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[1:2], 2, v[0:1]
	v_mov_b32_e32 v3, s4
	v_add_u32_e32 v1, vcc, s0, v1
	v_addc_u32_e32 v2, vcc, v6, v2, vcc
	v_mov_b32_e32 v4, s5
	v_add_u32_e32 v0, vcc, s10, v0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[1:2], v5
	flat_load_dword v3, v[3:4]
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[1:2], 2, v[0:1]
	v_mov_b32_e32 v4, s1
	v_add_u32_e32 v1, vcc, s0, v1
	v_addc_u32_e32 v2, vcc, v4, v2, vcc
	v_add_u32_e32 v0, vcc, s10, v0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[1:2], v3
	v_mov_b32_e32 v1, s2
	v_mov_b32_e32 v2, s3
	flat_load_dword v2, v[1:2]
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_mov_b32_e32 v3, s1
	v_add_u32_e32 v0, vcc, s0, v0
	v_addc_u32_e32 v1, vcc, v3, v1, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[0:1], v2
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z25cuda_initialize_variablesiPfS_
		.amdhsa_group_segment_fixed_size 0
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
		.amdhsa_next_free_sgpr 12
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
	.size	_Z25cuda_initialize_variablesiPfS_, .Lfunc_end0-_Z25cuda_initialize_variablesiPfS_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 352
; NumSgprs: 16
; NumVgprs: 7
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 16
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
	.protected	_Z24cuda_compute_step_factoriPfS_S_ ; -- Begin function _Z24cuda_compute_step_factoriPfS_S_
	.globl	_Z24cuda_compute_step_factoriPfS_S_
	.p2align	8
	.type	_Z24cuda_compute_step_factoriPfS_S_,@function
_Z24cuda_compute_step_factoriPfS_S_:    ; @_Z24cuda_compute_step_factoriPfS_S_
_Z24cuda_compute_step_factoriPfS_S_$local:
; %bb.0:
	s_load_dword s0, s[4:5], 0x4
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, s8
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	v_mad_u64_u32 v[2:3], s[0:1], s0, v2, v[0:1]
	s_load_dword s4, s[6:7], 0x0
	s_load_dwordx4 s[0:3], s[6:7], 0x8
	v_mov_b32_e32 v0, v1
	v_mov_b32_e32 v1, v2
	v_ashrrev_i64 v[0:1], 30, v[0:1]
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s5, s4, 31
	v_mov_b32_e32 v4, s1
	v_add_u32_e32 v3, vcc, s0, v0
	s_lshl_b64 s[8:9], s[4:5], 2
	v_addc_u32_e32 v4, vcc, v4, v1, vcc
	v_mov_b32_e32 v6, s9
	v_add_u32_e32 v5, vcc, s8, v3
	s_add_i32 s5, s4, s4
	v_addc_u32_e32 v6, vcc, v4, v6, vcc
	v_add_u32_e32 v7, vcc, s5, v2
	v_ashrrev_i32_e32 v8, 31, v7
	v_lshlrev_b64 v[8:9], 2, v[7:8]
	v_mov_b32_e32 v2, s1
	v_add_u32_e32 v8, vcc, s0, v8
	v_addc_u32_e32 v9, vcc, v2, v9, vcc
	v_add_u32_e32 v10, vcc, s4, v7
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[11:12], 2, v[10:11]
	v_add_u32_e32 v11, vcc, s0, v11
	v_addc_u32_e32 v12, vcc, v2, v12, vcc
	v_add_u32_e32 v13, vcc, s4, v10
	v_ashrrev_i32_e32 v14, 31, v13
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_u32_e32 v13, vcc, s0, v13
	v_addc_u32_e32 v14, vcc, v2, v14, vcc
	flat_load_dword v7, v[3:4]
	flat_load_dword v10, v[5:6]
	flat_load_dword v15, v[8:9]
	flat_load_dword v16, v[11:12]
	flat_load_dword v17, v[13:14]
	v_mov_b32_e32 v3, s3
	v_add_u32_e64 v2, s[2:3], s2, v0
	v_addc_u32_e64 v3, s[2:3], v3, v1, s[2:3]
	flat_load_dword v2, v[2:3]
	v_mov_b32_e32 v3, 0x4f800000
	s_waitcnt vmcnt(4) lgkmcnt(4)
	v_div_scale_f32 v4, s[0:1], v7, v7, v10
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_div_scale_f32 v5, s[0:1], v7, v7, v15
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_div_scale_f32 v6, s[0:1], v7, v7, v16
	v_div_scale_f32 v8, vcc, v10, v7, v10
	v_div_scale_f32 v9, s[0:1], v15, v7, v15
	v_rcp_f32_e32 v11, v4
	v_rcp_f32_e32 v12, v5
	v_rcp_f32_e32 v13, v6
	v_fma_f32 v14, -v4, v11, 1.0
	v_fma_f32 v18, -v5, v12, 1.0
	v_fma_f32 v11, v14, v11, v11
	v_fma_f32 v12, v18, v12, v12
	v_fma_f32 v14, -v6, v13, 1.0
	v_mul_f32_e32 v18, v8, v11
	v_fma_f32 v13, v14, v13, v13
	v_fma_f32 v14, -v4, v18, v8
	v_mul_f32_e32 v19, v9, v12
	v_fma_f32 v14, v14, v11, v18
	v_fma_f32 v18, -v5, v19, v9
	v_fma_f32 v18, v18, v12, v19
	v_div_scale_f32 v19, s[2:3], v16, v7, v16
	v_fma_f32 v4, -v4, v14, v8
	v_div_fmas_f32 v4, v4, v11, v14
	v_fma_f32 v5, -v5, v18, v9
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v5, v5, v12, v18
	s_mov_b64 vcc, s[2:3]
	s_mov_b32 s3, 0xf800000
	s_movk_i32 s2, 0x260
	v_mul_f32_e32 v8, v19, v13
	v_fma_f32 v9, -v6, v8, v19
	v_fma_f32 v8, v9, v13, v8
	v_fma_f32 v6, -v6, v8, v19
	v_div_fmas_f32 v6, v6, v13, v8
	v_div_fixup_f32 v5, v5, v7, v15
	v_div_fixup_f32 v4, v4, v7, v10
	v_mul_f32_e32 v5, v5, v5
	v_fma_f32 v4, v4, v4, v5
	v_mul_f32_e32 v8, -0.5, v7
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_gt_f32_e32 vcc, s3, v2
	v_cndmask_b32_e32 v9, 1.0, v3, vcc
	v_mul_f32_e32 v2, v2, v9
	v_sqrt_f32_e32 v9, v2
	v_add_u32_e64 v13, s[0:1], 1, v9
	v_fma_f32 v14, -v13, v9, v2
	v_div_fixup_f32 v6, v6, v7, v16
	v_fma_f32 v4, v6, v6, v4
	v_fma_f32 v5, v8, v4, v17
	v_mul_f32_e32 v5, 0x3ecccccc, v5
	v_mul_f32_e32 v5, 0x3fb33333, v5
	v_div_scale_f32 v6, s[0:1], v7, v7, v5
	v_mov_b32_e32 v8, 0x37800000
	v_cndmask_b32_e32 v10, 1.0, v8, vcc
	v_add_u32_e32 v11, vcc, -1, v9
	v_div_scale_f32 v12, vcc, v5, v7, v5
	v_fma_f32 v15, -v11, v9, v2
	v_cmp_ge_f32_e64 s[0:1], 0, v15
	v_cndmask_b32_e64 v9, v9, v11, s[0:1]
	v_cmp_lt_f32_e64 s[0:1], 0, v14
	v_cndmask_b32_e64 v9, v9, v13, s[0:1]
	v_mul_f32_e32 v9, v10, v9
	v_cmp_gt_f32_e64 s[0:1], s3, v4
	v_cndmask_b32_e64 v11, 1.0, v3, s[0:1]
	v_mul_f32_e32 v4, v4, v11
	v_rcp_f32_e32 v10, v6
	v_fma_f32 v11, -v6, v10, 1.0
	v_fma_f32 v10, v11, v10, v10
	v_mul_f32_e32 v11, v12, v10
	v_fma_f32 v13, -v6, v11, v12
	v_fma_f32 v11, v13, v10, v11
	v_fma_f32 v6, -v6, v11, v12
	v_div_fmas_f32 v6, v6, v10, v11
	v_sqrt_f32_e32 v10, v4
	v_cmp_class_f32_e64 vcc, v2, s2
	v_cndmask_b32_e32 v2, v9, v2, vcc
	v_cndmask_b32_e64 v9, 1.0, v8, s[0:1]
	v_add_u32_e32 v11, vcc, -1, v10
	v_add_u32_e32 v12, vcc, 1, v10
	v_fma_f32 v14, -v11, v10, v4
	v_fma_f32 v13, -v12, v10, v4
	v_cmp_ge_f32_e32 vcc, 0, v14
	v_cndmask_b32_e32 v10, v10, v11, vcc
	v_cmp_lt_f32_e32 vcc, 0, v13
	v_cndmask_b32_e32 v10, v10, v12, vcc
	v_mul_f32_e32 v9, v9, v10
	v_cmp_class_f32_e64 s[0:1], v4, s2
	v_cndmask_b32_e64 v4, v9, v4, s[0:1]
	v_div_fixup_f32 v5, v6, v7, v5
	v_cmp_gt_f32_e32 vcc, s3, v5
	v_cndmask_b32_e32 v3, 1.0, v3, vcc
	v_mul_f32_e32 v3, v5, v3
	v_sqrt_f32_e32 v5, v3
	v_cndmask_b32_e32 v6, 1.0, v8, vcc
	v_add_u32_e32 v7, vcc, -1, v5
	v_add_u32_e32 v8, vcc, 1, v5
	v_fma_f32 v10, -v7, v5, v3
	v_fma_f32 v9, -v8, v5, v3
	v_cmp_ge_f32_e32 vcc, 0, v10
	v_cndmask_b32_e32 v5, v5, v7, vcc
	v_cmp_lt_f32_e32 vcc, 0, v9
	v_cndmask_b32_e32 v5, v5, v8, vcc
	v_mul_f32_e32 v5, v6, v5
	v_cmp_class_f32_e64 vcc, v3, s2
	v_cndmask_b32_e32 v3, v5, v3, vcc
	v_add_f32_e32 v3, v4, v3
	v_mul_f32_e32 v2, v2, v3
	v_div_scale_f32 v3, s[0:1], v2, v2, 0.5
	v_div_scale_f32 v4, vcc, 0.5, v2, 0.5
	s_load_dwordx2 s[0:1], s[6:7], 0x18
	v_rcp_f32_e32 v5, v3
	v_fma_f32 v6, -v3, v5, 1.0
	v_fma_f32 v5, v6, v5, v5
	v_mul_f32_e32 v6, v4, v5
	v_fma_f32 v7, -v3, v6, v4
	v_fma_f32 v6, v7, v5, v6
	v_fma_f32 v3, -v3, v6, v4
	v_div_fmas_f32 v3, v3, v5, v6
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, s1
	v_add_u32_e32 v0, vcc, s0, v0
	v_addc_u32_e32 v1, vcc, v4, v1, vcc
	v_div_fixup_f32 v2, v3, v2, 0.5
	flat_store_dword v[0:1], v2
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z24cuda_compute_step_factoriPfS_S_
		.amdhsa_group_segment_fixed_size 0
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
		.amdhsa_next_free_vgpr 20
		.amdhsa_next_free_sgpr 10
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
	.size	_Z24cuda_compute_step_factoriPfS_S_, .Lfunc_end1-_Z24cuda_compute_step_factoriPfS_S_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 1060
; NumSgprs: 14
; NumVgprs: 20
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 14
; NumVGPRsForWavesPerEU: 20
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_ ; -- Begin function _Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_
	.globl	_Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_
	.p2align	8
	.type	_Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_,@function
_Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_: ; @_Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_
_Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_$local:
; %bb.0:
	s_load_dword s16, s[6:7], 0x0
	s_load_dword s0, s[4:5], 0x4
	v_mov_b32_e32 v2, s8
	v_mov_b32_e32 v1, 0
	s_load_dwordx8 s[8:15], s[6:7], 0x8
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s17, s16, 31
	s_and_b32 s0, s0, 0xffff
	v_mad_u64_u32 v[2:3], s[0:1], s0, v2, v[0:1]
	v_mov_b32_e32 v0, v1
	s_add_i32 s0, s16, s16
	v_mov_b32_e32 v5, s13
	v_mov_b32_e32 v1, v2
	v_ashrrev_i64 v[10:11], 30, v[0:1]
	v_mov_b32_e32 v0, s13
	v_add_u32_e32 v14, vcc, s12, v10
	v_addc_u32_e32 v15, vcc, v0, v11, vcc
	v_add_u32_e32 v0, vcc, s0, v2
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[3:4], 2, v[0:1]
	v_mov_b32_e32 v8, s13
	v_add_u32_e32 v19, vcc, s12, v3
	v_addc_u32_e32 v20, vcc, v5, v4, vcc
	v_add_u32_e32 v4, vcc, s16, v0
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b64 v[6:7], 2, v[4:5]
	v_mov_b32_e32 v3, s13
	v_add_u32_e32 v21, vcc, s12, v6
	v_addc_u32_e32 v22, vcc, v3, v7, vcc
	v_mov_b32_e32 v3, s9
	v_add_u32_e32 v30, vcc, s8, v10
	v_addc_u32_e32 v31, vcc, v3, v11, vcc
	v_add_u32_e32 v6, vcc, s16, v4
	v_ashrrev_i32_e32 v7, 31, v6
	v_lshlrev_b64 v[23:24], 2, v[6:7]
	s_load_dwordx4 s[20:23], s[6:7], 0x28
	s_load_dwordx2 s[18:19], s[6:7], 0x38
	v_add_u32_e32 v25, vcc, s12, v23
	s_lshl_b64 s[6:7], s[16:17], 2
	v_addc_u32_e32 v26, vcc, v8, v24, vcc
	v_mov_b32_e32 v8, s7
	v_add_u32_e32 v27, vcc, s6, v14
	v_addc_u32_e32 v28, vcc, v15, v8, vcc
	flat_load_dword v18, v[14:15]
	flat_load_dword v17, v[27:28]
	flat_load_dword v9, v[19:20]
	flat_load_dword v8, v[21:22]
	flat_load_dword v13, v[25:26]
	v_mov_b32_e32 v3, s11
	v_add_u32_e32 v34, vcc, s10, v10
	v_addc_u32_e32 v35, vcc, v3, v11, vcc
	s_waitcnt lgkmcnt(0)
	s_add_u32 s20, s20, 4
	s_addc_u32 s21, s21, 0
	s_lshl_b32 s17, s16, 2
	v_add_u32_e64 v32, s[2:3], s17, v6
	v_ashrrev_i32_e32 v33, 31, v32
	v_lshlrev_b64 v[10:11], 2, v[32:33]
	v_mov_b32_e32 v12, s11
	v_mov_b32_e32 v16, s11
	s_mov_b32 s4, 0x3ecccccc
	s_waitcnt vmcnt(3)
	v_div_scale_f32 v14, s[0:1], v18, v18, v17
	s_waitcnt vmcnt(2)
	v_div_scale_f32 v15, s[0:1], v18, v18, v9
	s_waitcnt vmcnt(1)
	v_div_scale_f32 v19, s[0:1], v18, v18, v8
	v_div_scale_f32 v3, vcc, v17, v18, v17
	v_div_scale_f32 v20, s[0:1], v9, v18, v9
	v_div_scale_f32 v21, s[2:3], v8, v18, v8
	v_rcp_f32_e32 v22, v14
	v_rcp_f32_e32 v25, v15
	v_rcp_f32_e32 v26, v19
	v_fma_f32 v27, -v14, v22, 1.0
	v_fma_f32 v28, -v15, v25, 1.0
	v_fma_f32 v22, v27, v22, v22
	v_fma_f32 v25, v28, v25, v25
	v_fma_f32 v27, -v19, v26, 1.0
	v_mul_f32_e32 v28, v3, v22
	v_fma_f32 v26, v27, v26, v26
	v_fma_f32 v27, -v14, v28, v3
	v_mul_f32_e32 v29, v20, v25
	v_fma_f32 v27, v27, v22, v28
	v_fma_f32 v33, -v15, v29, v20
	v_mul_f32_e32 v36, v21, v26
	v_fma_f32 v3, -v14, v27, v3
	v_fma_f32 v28, v33, v25, v29
	v_fma_f32 v29, -v19, v36, v21
	v_div_fmas_f32 v3, v3, v22, v27
	v_fma_f32 v14, -v15, v28, v20
	v_fma_f32 v15, v29, v26, v36
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v20, v14, v25, v28
	v_fma_f32 v14, -v19, v15, v21
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f32 v19, v14, v26, v15
	v_add_u32_e32 v14, vcc, s10, v23
	v_addc_u32_e32 v15, vcc, v12, v24, vcc
	v_add_u32_e32 v10, vcc, s10, v10
	v_addc_u32_e32 v11, vcc, v16, v11, vcc
	flat_load_dword v36, v[14:15]
	flat_load_dword v33, v[10:11]
	flat_load_dword v38, v[30:31]
	flat_load_dword v37, v[34:35]
	v_mul_f32_e32 v10, -0.5, v18
	v_div_fixup_f32 v3, v3, v18, v17
	v_mul_f32_e32 v16, v3, v9
	v_mul_f32_e32 v15, v3, v8
                                        ; implicit-def: $vgpr27
	v_div_fixup_f32 v11, v20, v18, v9
	v_mul_f32_e32 v12, v11, v11
	v_fma_f32 v12, v3, v3, v12
	v_div_fixup_f32 v23, v19, v18, v8
	v_fma_f32 v22, v23, v23, v12
	s_waitcnt vmcnt(4)
	v_fma_f32 v10, v10, v22, v13
	v_mul_f32_e32 v24, s4, v10
	v_fma_f32 v10, v10, s4, v13
	v_fma_f32 v20, v17, v3, v24
	v_mul_f32_e32 v21, v3, v10
	v_fma_f32 v14, v9, v11, v24
	v_mul_f32_e32 v12, v11, v8
	v_mul_f32_e32 v19, v11, v10
	v_mul_f32_e32 v11, v23, v10
	v_fma_f32 v10, v8, v23, v24
	v_ashrrev_i32_e32 v3, 31, v2
                                        ; implicit-def: $vgpr25
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr28
                                        ; implicit-def: $vgpr29
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_cmp_gt_i32_e32 vcc, 0, v38
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB2_8
; %bb.1:                                ; %NodeBlock
	v_cmp_lt_i32_e32 vcc, -2, v38
                                        ; implicit-def: $vgpr25
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr28
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB2_3
; %bb.2:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v25, v24, v37, 0
	v_fma_f32 v26, v24, v36, 0
	v_fma_f32 v28, v24, v33, 0
BB2_3:                                  ; %Flow429
	s_or_saveexec_b64 s[2:3], s[2:3]
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v29, v27
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB2_7
; %bb.4:                                ; %LeafBlock
	v_cmp_ne_u32_e32 vcc, -2, v38
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_or_saveexec_b64 s[4:5], s[4:5]
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v25, v27
	v_mov_b32_e32 v26, v27
	v_mov_b32_e32 v28, v27
	v_mov_b32_e32 v29, v27
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB2_6
; %bb.5:
	s_load_dwordx2 s[34:35], s[20:21], 0x0
	s_load_dword s33, s[20:21], 0x8
	s_load_dwordx2 s[36:37], s[18:19], 0x0
	s_load_dword s38, s[18:19], 0x8
	s_load_dwordx8 s[24:31], s[22:23], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v23, 0.5, v37
	v_add_f32_e32 v25, s34, v17
	v_add_f32_e32 v26, s36, v21
	v_fma_f32 v25, v23, v25, 0
	v_add_f32_e32 v27, s24, v20
	v_add_f32_e32 v28, s27, v16
	v_add_f32_e32 v29, s30, v15
	v_fma_f32 v26, v23, v26, 0
	v_fma_f32 v27, v23, v27, 0
	v_fma_f32 v28, v23, v28, 0
	v_fma_f32 v23, v23, v29, 0
	v_mul_f32_e32 v29, 0.5, v36
	v_add_f32_e32 v39, s35, v9
	v_fma_f32 v25, v29, v39, v25
	v_add_f32_e32 v39, s37, v19
	v_fma_f32 v26, v29, v39, v26
	v_add_f32_e32 v39, s25, v16
	v_fma_f32 v39, v29, v39, v27
	v_add_f32_e32 v27, s28, v14
	s_load_dword s24, s[22:23], 0x20
	v_fma_f32 v28, v29, v27, v28
	v_add_f32_e32 v27, s31, v12
	v_fma_f32 v23, v29, v27, v23
	v_mul_f32_e32 v40, 0.5, v33
	v_add_f32_e32 v27, s33, v8
	v_fma_f32 v29, v40, v27, v25
	v_add_f32_e32 v25, s38, v11
	v_fma_f32 v27, v40, v25, v26
	v_add_f32_e32 v26, s29, v12
	v_add_f32_e32 v25, s26, v15
	v_fma_f32 v26, v40, v26, v28
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v28, s24, v10
	v_fma_f32 v25, v40, v25, v39
	v_fma_f32 v28, v40, v28, v23
BB2_6:                                  ; %Flow428
	s_or_b64 exec, exec, s[4:5]
BB2_7:                                  ; %Flow430
	s_or_b64 exec, exec, s[2:3]
BB2_8:                                  ; %Flow432
	s_or_saveexec_b64 s[24:25], s[0:1]
	s_mov_b32 s28, 0x3fb33333
	v_mul_f32_e32 v23, s28, v24
	v_div_scale_f32 v39, s[0:1], v18, v18, v23
	v_div_scale_f32 v40, vcc, v23, v18, v23
	s_mov_b32 s27, 0xf800000
	v_mov_b32_e32 v41, 0x4f800000
	v_cmp_gt_f32_e64 s[0:1], s27, v22
	v_cndmask_b32_e64 v43, 1.0, v41, s[0:1]
	v_mul_f32_e32 v22, v22, v43
	s_movk_i32 s26, 0x260
	v_rcp_f32_e32 v42, v39
	v_fma_f32 v44, -v39, v42, 1.0
	v_fma_f32 v42, v44, v42, v42
	v_mul_f32_e32 v44, v40, v42
	v_fma_f32 v45, -v39, v44, v40
	v_fma_f32 v44, v45, v42, v44
	v_fma_f32 v39, -v39, v44, v40
	v_div_fmas_f32 v39, v39, v42, v44
	v_sqrt_f32_e32 v40, v22
	v_mov_b32_e32 v42, 0x37800000
	v_cndmask_b32_e64 v43, 1.0, v42, s[0:1]
	v_cmp_class_f32_e64 s[0:1], v22, s26
	v_add_u32_e32 v44, vcc, -1, v40
	v_add_u32_e32 v45, vcc, 1, v40
	v_fma_f32 v47, -v44, v40, v22
	v_fma_f32 v46, -v45, v40, v22
	v_cmp_ge_f32_e32 vcc, 0, v47
	v_cndmask_b32_e32 v40, v40, v44, vcc
	v_cmp_lt_f32_e32 vcc, 0, v46
	v_cndmask_b32_e32 v40, v40, v45, vcc
	v_mul_f32_e32 v40, v43, v40
	v_cndmask_b32_e64 v22, v40, v22, s[0:1]
	v_div_fixup_f32 v23, v39, v18, v23
	v_cmp_gt_f32_e32 vcc, s27, v23
	v_cndmask_b32_e32 v39, 1.0, v41, vcc
	v_mul_f32_e32 v23, v23, v39
	v_sqrt_f32_e32 v39, v23
	v_cndmask_b32_e32 v40, 1.0, v42, vcc
	v_add_u32_e32 v41, vcc, -1, v39
	v_add_u32_e32 v42, vcc, 1, v39
	v_fma_f32 v44, -v41, v39, v23
	v_fma_f32 v43, -v42, v39, v23
	v_cmp_ge_f32_e32 vcc, 0, v44
	v_cndmask_b32_e32 v39, v39, v41, vcc
	v_cmp_lt_f32_e32 vcc, 0, v43
	v_cndmask_b32_e32 v39, v39, v42, vcc
	v_mul_f32_e32 v39, v40, v39
	v_cmp_class_f32_e64 vcc, v23, s26
	v_cndmask_b32_e32 v23, v39, v23, vcc
	s_xor_b64 exec, exec, s[24:25]
	s_cbranch_execz BB2_10
; %bb.9:
	v_mov_b32_e32 v39, 0
	v_lshlrev_b64 v[25:26], 2, v[38:39]
	v_mov_b32_e32 v27, s13
	v_add_u32_e32 v25, vcc, s12, v25
	v_addc_u32_e32 v26, vcc, v27, v26, vcc
	v_add_u32_e32 v27, vcc, s16, v38
	v_ashrrev_i32_e32 v28, 31, v27
	v_lshlrev_b64 v[28:29], 2, v[27:28]
	v_mov_b32_e32 v38, s13
	v_add_u32_e32 v28, vcc, s12, v28
	v_addc_u32_e32 v29, vcc, v38, v29, vcc
	v_add_u32_e32 v38, vcc, s16, v27
	v_ashrrev_i32_e32 v39, 31, v38
	v_lshlrev_b64 v[39:40], 2, v[38:39]
	v_mov_b32_e32 v27, s13
	v_add_u32_e32 v39, vcc, s12, v39
	v_addc_u32_e32 v40, vcc, v27, v40, vcc
	v_add_u32_e32 v41, vcc, s16, v38
	v_ashrrev_i32_e32 v42, 31, v41
	v_lshlrev_b64 v[42:43], 2, v[41:42]
	v_mov_b32_e32 v38, 0x4f800000
	v_add_u32_e32 v42, vcc, s12, v42
	v_addc_u32_e32 v43, vcc, v27, v43, vcc
	v_add_u32_e32 v44, vcc, s16, v41
	v_ashrrev_i32_e32 v45, 31, v44
	v_lshlrev_b64 v[44:45], 2, v[44:45]
	v_mov_b32_e32 v41, 0x37800000
	v_add_u32_e32 v44, vcc, s12, v44
	v_addc_u32_e32 v45, vcc, v27, v45, vcc
	flat_load_dword v46, v[25:26]
	flat_load_dword v47, v[28:29]
	flat_load_dword v48, v[39:40]
	flat_load_dword v49, v[42:43]
	flat_load_dword v50, v[44:45]
	v_mul_f32_e32 v27, v36, v36
	s_waitcnt vmcnt(5) lgkmcnt(5)
	v_fma_f32 v27, v37, v37, v27
	v_fma_f32 v27, v33, v33, v27
	v_mul_f32_e32 v29, 0.5, v37
	v_cmp_gt_f32_e64 s[2:3], s27, v27
	v_cndmask_b32_e64 v40, 1.0, v38, s[2:3]
	v_mul_f32_e32 v27, v27, v40
	v_sqrt_f32_e32 v43, v27
	s_mov_b32 s29, 0x3ecccccc
	v_mul_f32_e32 v33, 0.5, v33
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_div_scale_f32 v25, s[0:1], v46, v46, v47
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_div_scale_f32 v26, s[0:1], v46, v46, v48
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_div_scale_f32 v28, s[0:1], v46, v46, v49
	v_div_scale_f32 v37, vcc, v47, v46, v47
	v_div_scale_f32 v39, s[0:1], v48, v46, v48
	v_div_scale_f32 v40, s[4:5], v49, v46, v49
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_f32_e32 v55, v13, v50
	v_rcp_f32_e32 v42, v25
	v_rcp_f32_e32 v44, v26
	v_rcp_f32_e32 v45, v28
	v_fma_f32 v51, -v25, v42, 1.0
	v_fma_f32 v42, v51, v42, v42
	v_fma_f32 v51, -v26, v44, 1.0
	v_fma_f32 v44, v51, v44, v44
	v_mul_f32_e32 v52, v37, v42
	v_fma_f32 v51, -v28, v45, 1.0
	v_fma_f32 v53, -v25, v52, v37
	v_mul_f32_e32 v54, v39, v44
	v_fma_f32 v45, v51, v45, v45
	v_fma_f32 v51, v53, v42, v52
	v_fma_f32 v52, -v26, v54, v39
	v_fma_f32 v25, -v25, v51, v37
	v_fma_f32 v37, v52, v44, v54
	v_mul_f32_e32 v53, v40, v45
	v_div_fmas_f32 v25, v25, v42, v51
	v_fma_f32 v52, -v28, v53, v40
	v_fma_f32 v26, -v26, v37, v39
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v26, v26, v44, v37
	v_fma_f32 v39, v52, v45, v53
	v_fma_f32 v28, -v28, v39, v40
	s_mov_b64 vcc, s[4:5]
	v_div_fmas_f32 v28, v28, v45, v39
	v_add_u32_e32 v39, vcc, -1, v43
	v_add_u32_e32 v40, vcc, 1, v43
	v_fma_f32 v42, -v39, v43, v27
	v_cmp_ge_f32_e32 vcc, 0, v42
	v_fma_f32 v44, -v40, v43, v27
	v_cndmask_b32_e32 v39, v43, v39, vcc
	v_cmp_lt_f32_e32 vcc, 0, v44
	v_cndmask_b32_e32 v39, v39, v40, vcc
	v_div_fixup_f32 v25, v25, v46, v47
	v_cndmask_b32_e64 v37, 1.0, v41, s[2:3]
	v_mul_f32_e32 v37, v37, v39
	v_div_fixup_f32 v26, v26, v46, v48
	v_mul_f32_e32 v40, v26, v26
	v_fma_f32 v40, v25, v25, v40
	v_mul_f32_e32 v39, -0.5, v46
	v_div_fixup_f32 v28, v28, v46, v49
	v_fma_f32 v40, v28, v28, v40
	v_fma_f32 v39, v39, v40, v50
	v_mul_f32_e32 v42, s29, v39
	v_mul_f32_e32 v43, s28, v42
	v_div_scale_f32 v44, s[0:1], v46, v46, v43
	v_cmp_class_f32_e64 vcc, v27, s26
	v_cndmask_b32_e32 v27, v37, v27, vcc
	v_div_scale_f32 v45, vcc, v43, v46, v43
	v_cmp_gt_f32_e64 s[0:1], s27, v40
	v_cndmask_b32_e64 v56, 1.0, v38, s[0:1]
	v_mul_f32_e32 v40, v40, v56
	v_fma_f32 v39, v39, s29, v50
	v_sqrt_f32_e32 v50, v40
	v_sub_f32_e32 v51, v17, v47
	v_add_f32_e32 v52, v17, v47
	v_cndmask_b32_e64 v56, 1.0, v41, s[0:1]
	v_sub_f32_e32 v37, v18, v46
	v_mul_f32_e32 v27, 0xbe4ccccd, v27
	v_mul_f32_e32 v27, 0.5, v27
	v_sub_f32_e32 v53, v9, v48
	v_rcp_f32_e32 v57, v44
	v_sub_f32_e32 v54, v8, v49
	v_fma_f32 v58, v25, v39, v21
	v_fma_f32 v59, -v44, v57, 1.0
	v_fma_f32 v57, v59, v57, v57
	v_mul_f32_e32 v59, v45, v57
	v_fma_f32 v60, -v44, v59, v45
	v_fma_f32 v59, v60, v57, v59
	v_fma_f32 v44, -v44, v59, v45
	v_div_fmas_f32 v44, v44, v57, v59
	v_fma_f32 v45, v47, v25, v42
	v_add_u32_e32 v47, vcc, -1, v50
	v_add_u32_e32 v57, vcc, 1, v50
	v_fma_f32 v59, -v47, v50, v40
	v_cmp_ge_f32_e32 vcc, 0, v59
	v_fma_f32 v60, -v57, v50, v40
	v_cndmask_b32_e32 v47, v50, v47, vcc
	v_cmp_lt_f32_e32 vcc, 0, v60
	v_cndmask_b32_e32 v47, v47, v57, vcc
	v_mul_f32_e32 v47, v56, v47
	v_cmp_class_f32_e64 vcc, v40, s26
	v_cndmask_b32_e32 v40, v47, v40, vcc
	v_add_f32_e32 v40, v22, v40
	v_add_f32_e32 v40, v23, v40
	v_div_fixup_f32 v43, v44, v46, v43
	v_cmp_gt_f32_e32 vcc, s27, v43
	v_cndmask_b32_e32 v38, 1.0, v38, vcc
	v_mul_f32_e32 v38, v43, v38
	v_sqrt_f32_e32 v43, v38
	v_cndmask_b32_e32 v41, 1.0, v41, vcc
	v_add_u32_e32 v44, vcc, -1, v43
	v_add_u32_e32 v46, vcc, 1, v43
	v_fma_f32 v47, -v44, v43, v38
	v_fma_f32 v50, -v46, v43, v38
	v_cmp_ge_f32_e32 vcc, 0, v47
	v_cndmask_b32_e32 v43, v43, v44, vcc
	v_cmp_lt_f32_e32 vcc, 0, v50
	v_cndmask_b32_e32 v43, v43, v46, vcc
	v_mul_f32_e32 v41, v41, v43
	v_cmp_class_f32_e64 vcc, v38, s26
	v_cndmask_b32_e32 v38, v41, v38, vcc
	v_add_f32_e32 v38, v40, v38
	v_mul_f32_e32 v27, v27, v38
	v_fma_f32 v40, v51, v27, 0
	v_add_f32_e32 v43, v20, v45
	v_fma_f32 v37, v37, v27, 0
	v_fma_f32 v38, v55, v27, 0
	v_fma_f32 v41, v53, v27, 0
	v_fma_f32 v40, v29, v43, v40
	v_fma_f32 v43, v25, v48, v16
	v_fma_f32 v27, v54, v27, 0
	v_fma_f32 v25, v25, v49, v15
	v_fma_f32 v37, v29, v52, v37
	v_fma_f32 v38, v29, v58, v38
	v_fma_f32 v41, v29, v43, v41
	v_fma_f32 v27, v29, v25, v27
	v_mul_f32_e32 v29, 0.5, v36
	v_add_f32_e32 v36, v9, v48
	v_fma_f32 v36, v29, v36, v37
	v_fma_f32 v37, v26, v39, v19
	v_fma_f32 v37, v29, v37, v38
	v_fma_f32 v38, v29, v43, v40
	v_fma_f32 v40, v48, v26, v42
	v_add_f32_e32 v40, v14, v40
	v_fma_f32 v26, v26, v49, v12
	v_fma_f32 v40, v29, v40, v41
	v_fma_f32 v41, v29, v26, v27
	v_add_f32_e32 v27, v8, v49
	v_fma_f32 v42, v49, v28, v42
	v_fma_f32 v29, v33, v27, v36
	v_fma_f32 v27, v28, v39, v11
	v_add_f32_e32 v28, v10, v42
	v_fma_f32 v27, v33, v27, v37
	v_fma_f32 v25, v33, v25, v38
	v_fma_f32 v26, v33, v26, v40
	v_fma_f32 v28, v33, v28, v41
BB2_10:
	s_or_b64 exec, exec, s[24:25]
	v_mov_b32_e32 v33, s7
	v_add_u32_e32 v30, vcc, s6, v30
	v_addc_u32_e32 v31, vcc, v31, v33, vcc
	flat_load_dword v39, v[30:31]
	v_mov_b32_e32 v31, s7
	v_add_u32_e32 v30, vcc, s6, v34
	s_mul_i32 s24, s16, -3
	v_addc_u32_e32 v31, vcc, v35, v31, vcc
	v_add_u32_e32 v32, vcc, s24, v32
	v_ashrrev_i32_e32 v33, 31, v32
	v_lshlrev_b64 v[33:34], 2, v[32:33]
	v_mov_b32_e32 v35, s11
	v_add_u32_e32 v33, vcc, s10, v33
	v_addc_u32_e32 v34, vcc, v35, v34, vcc
	v_add_u32_e32 v35, vcc, s17, v32
	v_ashrrev_i32_e32 v36, 31, v35
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_lshlrev_b64 v[36:37], 2, v[35:36]
	v_mov_b32_e32 v32, s11
	v_add_u32_e32 v40, vcc, s10, v36
	v_addc_u32_e32 v41, vcc, v32, v37, vcc
	flat_load_dword v38, v[30:31]
	flat_load_dword v37, v[33:34]
	flat_load_dword v36, v[40:41]
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr34
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_cmp_gt_i32_e32 vcc, 0, v39
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB2_18
; %bb.11:                               ; %NodeBlock399
	v_cmp_lt_i32_e32 vcc, -2, v39
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr32
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB2_13
; %bb.12:
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_fma_f32 v30, v24, v38, v25
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_fma_f32 v31, v24, v37, v26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v32, v24, v36, v28
BB2_13:                                 ; %Flow423
	s_or_saveexec_b64 s[2:3], s[2:3]
	v_mov_b32_e32 v33, v27
	v_mov_b32_e32 v34, v29
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB2_17
; %bb.14:                               ; %LeafBlock397
	v_cmp_ne_u32_e32 vcc, -2, v39
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_or_saveexec_b64 s[4:5], s[4:5]
	v_mov_b32_e32 v33, v27
	v_mov_b32_e32 v30, v25
	v_mov_b32_e32 v31, v26
	v_mov_b32_e32 v32, v28
	v_mov_b32_e32 v34, v29
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB2_16
; %bb.15:
	s_add_u32 s26, s22, 32
	v_mov_b32_e32 v31, s23
	s_addc_u32 s27, s23, 0
	v_mov_b32_e32 v30, s22
	flat_load_dwordx4 v[30:33], v[30:31]
	s_add_u32 s28, s22, 16
	s_addc_u32 s29, s23, 0
	v_mov_b32_e32 v41, s21
	v_mov_b32_e32 v43, s19
	v_mov_b32_e32 v53, s29
	v_mov_b32_e32 v40, s20
	v_mov_b32_e32 v42, s18
	flat_load_dwordx3 v[44:46], v[40:41]
	flat_load_dwordx3 v[47:49], v[42:43]
	v_mov_b32_e32 v51, s27
	v_mov_b32_e32 v52, s28
	v_mov_b32_e32 v50, s26
	flat_load_dwordx4 v[40:43], v[52:53]
	flat_load_dword v54, v[50:51]
	s_waitcnt vmcnt(7) lgkmcnt(7)
	v_mul_f32_e32 v50, 0.5, v38
	s_waitcnt vmcnt(6) lgkmcnt(6)
	v_mul_f32_e32 v51, 0.5, v37
	s_waitcnt vmcnt(5) lgkmcnt(5)
	v_mul_f32_e32 v52, 0.5, v36
	s_waitcnt vmcnt(4) lgkmcnt(4)
	v_add_f32_e32 v30, v20, v30
	v_add_f32_e32 v31, v16, v31
	v_fma_f32 v30, v50, v30, v25
	v_fma_f32 v30, v51, v31, v30
	v_add_f32_e32 v32, v15, v32
	v_add_f32_e32 v33, v16, v33
	v_fma_f32 v30, v52, v32, v30
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_add_f32_e32 v34, v17, v44
	v_add_f32_e32 v44, v9, v45
	v_add_f32_e32 v45, v8, v46
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_add_f32_e32 v46, v21, v47
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_f32_e32 v31, v15, v42
	v_add_f32_e32 v47, v19, v48
	v_add_f32_e32 v48, v11, v49
	v_add_f32_e32 v32, v14, v40
	v_fma_f32 v49, v50, v33, v26
	v_fma_f32 v34, v50, v34, v29
	v_fma_f32 v46, v50, v46, v27
	v_add_f32_e32 v40, v12, v43
	v_fma_f32 v31, v50, v31, v28
	v_add_f32_e32 v41, v12, v41
	v_fma_f32 v32, v51, v32, v49
	v_fma_f32 v33, v51, v44, v34
	v_fma_f32 v40, v51, v40, v31
	v_fma_f32 v31, v52, v41, v32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v32, v10, v54
	v_fma_f32 v44, v51, v47, v46
	v_fma_f32 v34, v52, v45, v33
	v_fma_f32 v33, v52, v48, v44
	v_fma_f32 v32, v52, v32, v40
BB2_16:                                 ; %Flow422
	s_or_b64 exec, exec, s[4:5]
BB2_17:                                 ; %Flow424
	s_or_b64 exec, exec, s[2:3]
BB2_18:                                 ; %Flow426
	s_or_saveexec_b64 s[26:27], s[0:1]
	s_xor_b64 exec, exec, s[26:27]
	s_cbranch_execz BB2_20
; %bb.19:
	v_mov_b32_e32 v40, 0
	v_lshlrev_b64 v[30:31], 2, v[39:40]
	v_mov_b32_e32 v32, s13
	v_add_u32_e32 v30, vcc, s12, v30
	v_addc_u32_e32 v31, vcc, v32, v31, vcc
	v_add_u32_e32 v32, vcc, s16, v39
	v_ashrrev_i32_e32 v33, 31, v32
	v_lshlrev_b64 v[33:34], 2, v[32:33]
	v_mov_b32_e32 v39, s13
	v_add_u32_e32 v33, vcc, s12, v33
	v_addc_u32_e32 v34, vcc, v39, v34, vcc
	v_add_u32_e32 v39, vcc, s16, v32
	v_ashrrev_i32_e32 v40, 31, v39
	v_lshlrev_b64 v[40:41], 2, v[39:40]
	v_mov_b32_e32 v32, s13
	v_add_u32_e32 v40, vcc, s12, v40
	v_addc_u32_e32 v41, vcc, v32, v41, vcc
	v_add_u32_e32 v42, vcc, s16, v39
	v_ashrrev_i32_e32 v43, 31, v42
	v_lshlrev_b64 v[43:44], 2, v[42:43]
	s_mov_b32 s29, 0xf800000
	v_add_u32_e32 v43, vcc, s12, v43
	v_addc_u32_e32 v44, vcc, v32, v44, vcc
	v_add_u32_e32 v45, vcc, s16, v42
	v_ashrrev_i32_e32 v46, 31, v45
	v_lshlrev_b64 v[45:46], 2, v[45:46]
	v_mov_b32_e32 v39, 0x4f800000
	v_add_u32_e32 v45, vcc, s12, v45
	v_addc_u32_e32 v46, vcc, v32, v46, vcc
	flat_load_dword v47, v[30:31]
	flat_load_dword v48, v[33:34]
	flat_load_dword v49, v[40:41]
	flat_load_dword v50, v[43:44]
	flat_load_dword v51, v[45:46]
	s_waitcnt vmcnt(6) lgkmcnt(6)
	v_mul_f32_e32 v32, v37, v37
	v_fma_f32 v32, v38, v38, v32
	s_waitcnt vmcnt(5) lgkmcnt(5)
	v_fma_f32 v32, v36, v36, v32
	v_mul_f32_e32 v34, 0.5, v38
	v_cmp_gt_f32_e64 s[2:3], s29, v32
	v_cndmask_b32_e64 v41, 1.0, v39, s[2:3]
	v_mul_f32_e32 v32, v32, v41
	v_sqrt_f32_e32 v44, v32
	v_mov_b32_e32 v42, 0x37800000
	s_mov_b32 s28, 0x3ecccccc
	s_movk_i32 s25, 0x260
	v_mul_f32_e32 v36, 0.5, v36
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_div_scale_f32 v30, s[0:1], v47, v47, v48
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_div_scale_f32 v31, s[0:1], v47, v47, v49
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_div_scale_f32 v33, s[0:1], v47, v47, v50
	v_div_scale_f32 v38, vcc, v48, v47, v48
	v_div_scale_f32 v40, s[0:1], v49, v47, v49
	v_div_scale_f32 v41, s[4:5], v50, v47, v50
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_f32_e32 v56, v13, v51
	v_rcp_f32_e32 v43, v30
	v_rcp_f32_e32 v45, v31
	v_rcp_f32_e32 v46, v33
	v_fma_f32 v52, -v30, v43, 1.0
	v_fma_f32 v43, v52, v43, v43
	v_fma_f32 v52, -v31, v45, 1.0
	v_fma_f32 v45, v52, v45, v45
	v_mul_f32_e32 v53, v38, v43
	v_fma_f32 v52, -v33, v46, 1.0
	v_fma_f32 v54, -v30, v53, v38
	v_mul_f32_e32 v55, v40, v45
	v_fma_f32 v46, v52, v46, v46
	v_fma_f32 v52, v54, v43, v53
	v_fma_f32 v53, -v31, v55, v40
	v_fma_f32 v30, -v30, v52, v38
	v_fma_f32 v38, v53, v45, v55
	v_mul_f32_e32 v54, v41, v46
	v_div_fmas_f32 v30, v30, v43, v52
	v_fma_f32 v53, -v33, v54, v41
	v_fma_f32 v31, -v31, v38, v40
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v31, v31, v45, v38
	v_fma_f32 v40, v53, v46, v54
	v_fma_f32 v33, -v33, v40, v41
	s_mov_b64 vcc, s[4:5]
	v_div_fmas_f32 v33, v33, v46, v40
	v_add_u32_e32 v40, vcc, -1, v44
	v_add_u32_e32 v41, vcc, 1, v44
	v_fma_f32 v43, -v40, v44, v32
	v_cmp_ge_f32_e32 vcc, 0, v43
	v_fma_f32 v45, -v41, v44, v32
	v_cndmask_b32_e32 v40, v44, v40, vcc
	v_cmp_lt_f32_e32 vcc, 0, v45
	v_cndmask_b32_e32 v40, v40, v41, vcc
	v_div_fixup_f32 v30, v30, v47, v48
	v_cndmask_b32_e64 v38, 1.0, v42, s[2:3]
	v_mul_f32_e32 v38, v38, v40
	v_div_fixup_f32 v31, v31, v47, v49
	v_mul_f32_e32 v41, v31, v31
	v_fma_f32 v41, v30, v30, v41
	v_mul_f32_e32 v40, -0.5, v47
	v_div_fixup_f32 v33, v33, v47, v50
	v_fma_f32 v41, v33, v33, v41
	v_fma_f32 v40, v40, v41, v51
	v_mul_f32_e32 v43, s28, v40
	v_mul_f32_e32 v44, 0x3fb33333, v43
	v_div_scale_f32 v45, s[0:1], v47, v47, v44
	v_cmp_class_f32_e64 vcc, v32, s25
	v_cndmask_b32_e32 v32, v38, v32, vcc
	v_div_scale_f32 v38, vcc, v44, v47, v44
	v_cmp_gt_f32_e64 s[0:1], s29, v41
	v_cndmask_b32_e64 v57, 1.0, v39, s[0:1]
	v_mul_f32_e32 v41, v41, v57
	v_fma_f32 v40, v40, s28, v51
	v_sqrt_f32_e32 v51, v41
	v_cndmask_b32_e64 v58, 1.0, v42, s[0:1]
	v_sub_f32_e32 v46, v18, v47
	v_mul_f32_e32 v32, 0xbe4ccccd, v32
	v_mul_f32_e32 v32, 0.5, v32
	v_sub_f32_e32 v52, v17, v48
	v_sub_f32_e32 v54, v9, v49
	v_sub_f32_e32 v55, v8, v50
	v_rcp_f32_e32 v57, v45
	v_add_f32_e32 v53, v17, v48
	v_fma_f32 v59, -v45, v57, 1.0
	v_fma_f32 v57, v59, v57, v57
	v_mul_f32_e32 v59, v38, v57
	v_fma_f32 v60, -v45, v59, v38
	v_fma_f32 v59, v60, v57, v59
	v_fma_f32 v38, -v45, v59, v38
	v_div_fmas_f32 v38, v38, v57, v59
	v_add_u32_e32 v57, vcc, -1, v51
	v_add_u32_e32 v59, vcc, 1, v51
	v_fma_f32 v60, -v57, v51, v41
	v_fma_f32 v61, -v59, v51, v41
	v_cmp_ge_f32_e32 vcc, 0, v60
	v_cndmask_b32_e32 v51, v51, v57, vcc
	v_cmp_lt_f32_e32 vcc, 0, v61
	v_cndmask_b32_e32 v51, v51, v59, vcc
	v_mul_f32_e32 v51, v58, v51
	v_cmp_class_f32_e64 vcc, v41, s25
	v_cndmask_b32_e32 v41, v51, v41, vcc
	v_add_f32_e32 v41, v22, v41
	v_add_f32_e32 v41, v23, v41
	v_fma_f32 v45, v30, v40, v21
	v_div_fixup_f32 v38, v38, v47, v44
	v_cmp_gt_f32_e32 vcc, s29, v38
	v_cndmask_b32_e32 v39, 1.0, v39, vcc
	v_mul_f32_e32 v38, v38, v39
	v_sqrt_f32_e32 v39, v38
	v_cndmask_b32_e32 v42, 1.0, v42, vcc
	v_add_u32_e32 v44, vcc, -1, v39
	v_add_u32_e32 v47, vcc, 1, v39
	v_fma_f32 v51, -v44, v39, v38
	v_fma_f32 v57, -v47, v39, v38
	v_cmp_ge_f32_e32 vcc, 0, v51
	v_cndmask_b32_e32 v39, v39, v44, vcc
	v_cmp_lt_f32_e32 vcc, 0, v57
	v_cndmask_b32_e32 v39, v39, v47, vcc
	v_mul_f32_e32 v39, v42, v39
	v_cmp_class_f32_e64 vcc, v38, s25
	v_cndmask_b32_e32 v38, v39, v38, vcc
	v_add_f32_e32 v38, v41, v38
	v_mul_f32_e32 v32, v32, v38
	v_fma_f32 v29, v46, v32, v29
	v_fma_f32 v27, v56, v32, v27
	v_fma_f32 v25, v52, v32, v25
	v_fma_f32 v26, v54, v32, v26
	v_fma_f32 v28, v55, v32, v28
	v_fma_f32 v32, v48, v30, v43
	v_add_f32_e32 v32, v20, v32
	v_fma_f32 v25, v34, v32, v25
	v_fma_f32 v32, v30, v49, v16
	v_fma_f32 v30, v30, v50, v15
	v_fma_f32 v29, v34, v53, v29
	v_fma_f32 v27, v34, v45, v27
	v_fma_f32 v26, v34, v32, v26
	v_fma_f32 v28, v34, v30, v28
	v_mul_f32_e32 v34, 0.5, v37
	v_fma_f32 v25, v34, v32, v25
	v_fma_f32 v32, v49, v31, v43
	v_add_f32_e32 v37, v9, v49
	v_fma_f32 v29, v34, v37, v29
	v_fma_f32 v37, v31, v40, v19
	v_add_f32_e32 v32, v14, v32
	v_fma_f32 v31, v31, v50, v12
	v_fma_f32 v26, v34, v32, v26
	v_fma_f32 v28, v34, v31, v28
	v_fma_f32 v27, v34, v37, v27
	v_add_f32_e32 v34, v8, v50
	v_fma_f32 v32, v50, v33, v43
	v_fma_f32 v34, v36, v34, v29
	v_fma_f32 v29, v33, v40, v11
	v_fma_f32 v30, v36, v30, v25
	v_add_f32_e32 v25, v10, v32
	v_fma_f32 v33, v36, v29, v27
	v_fma_f32 v31, v36, v31, v26
	v_fma_f32 v32, v36, v25, v28
BB2_20:
	s_or_b64 exec, exec, s[26:27]
	s_mul_i32 s0, s16, -7
	v_add_u32_e32 v25, vcc, s0, v35
	v_ashrrev_i32_e32 v26, 31, v25
	v_lshlrev_b64 v[26:27], 2, v[25:26]
	v_mov_b32_e32 v29, s9
	v_add_u32_e32 v28, vcc, s8, v26
	v_addc_u32_e32 v29, vcc, v29, v27, vcc
	flat_load_dword v39, v[28:29]
	v_mov_b32_e32 v28, s11
	v_add_u32_e32 v26, vcc, s10, v26
	v_addc_u32_e32 v27, vcc, v28, v27, vcc
	v_add_u32_e32 v28, vcc, s17, v25
	v_ashrrev_i32_e32 v29, 31, v28
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_lshlrev_b64 v[35:36], 2, v[28:29]
	v_mov_b32_e32 v25, s11
	v_add_u32_e32 v40, vcc, s10, v35
	v_addc_u32_e32 v41, vcc, v25, v36, vcc
	v_add_u32_e32 v35, vcc, s17, v28
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[28:29], 2, v[35:36]
	v_add_u32_e32 v28, vcc, s10, v28
	v_addc_u32_e32 v29, vcc, v25, v29, vcc
	flat_load_dword v38, v[26:27]
	flat_load_dword v37, v[40:41]
	flat_load_dword v36, v[28:29]
                                        ; implicit-def: $vgpr28
                                        ; implicit-def: $vgpr25
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr27
                                        ; implicit-def: $vgpr29
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_cmp_gt_i32_e32 vcc, 0, v39
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB2_28
; %bb.21:                               ; %NodeBlock404
	v_cmp_lt_i32_e32 vcc, -2, v39
                                        ; implicit-def: $vgpr25
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr27
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB2_23
; %bb.22:
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_fma_f32 v25, v24, v38, v30
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_fma_f32 v26, v24, v37, v31
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v27, v24, v36, v32
BB2_23:                                 ; %Flow417
	s_or_saveexec_b64 s[2:3], s[2:3]
	v_mov_b32_e32 v28, v33
	v_mov_b32_e32 v29, v34
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB2_27
; %bb.24:                               ; %LeafBlock402
	v_cmp_ne_u32_e32 vcc, -2, v39
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_or_saveexec_b64 s[4:5], s[4:5]
	v_mov_b32_e32 v28, v33
	v_mov_b32_e32 v25, v30
	v_mov_b32_e32 v26, v31
	v_mov_b32_e32 v27, v32
	v_mov_b32_e32 v29, v34
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB2_26
; %bb.25:
	s_add_u32 s26, s22, 32
	v_mov_b32_e32 v26, s23
	s_addc_u32 s27, s23, 0
	v_mov_b32_e32 v25, s22
	flat_load_dwordx4 v[25:28], v[25:26]
	s_add_u32 s28, s22, 16
	s_addc_u32 s29, s23, 0
	v_mov_b32_e32 v41, s21
	v_mov_b32_e32 v43, s19
	v_mov_b32_e32 v53, s29
	v_mov_b32_e32 v40, s20
	v_mov_b32_e32 v42, s18
	flat_load_dwordx3 v[44:46], v[40:41]
	flat_load_dwordx3 v[47:49], v[42:43]
	v_mov_b32_e32 v51, s27
	v_mov_b32_e32 v52, s28
	v_mov_b32_e32 v50, s26
	flat_load_dwordx4 v[40:43], v[52:53]
	flat_load_dword v54, v[50:51]
	s_waitcnt vmcnt(7) lgkmcnt(7)
	v_mul_f32_e32 v50, 0.5, v38
	s_waitcnt vmcnt(6) lgkmcnt(6)
	v_mul_f32_e32 v51, 0.5, v37
	s_waitcnt vmcnt(5) lgkmcnt(5)
	v_mul_f32_e32 v52, 0.5, v36
	s_waitcnt vmcnt(4) lgkmcnt(4)
	v_add_f32_e32 v25, v20, v25
	v_add_f32_e32 v26, v16, v26
	v_fma_f32 v25, v50, v25, v30
	v_fma_f32 v25, v51, v26, v25
	v_add_f32_e32 v27, v15, v27
	v_add_f32_e32 v28, v16, v28
	v_fma_f32 v25, v52, v27, v25
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_add_f32_e32 v29, v17, v44
	v_add_f32_e32 v44, v9, v45
	v_add_f32_e32 v45, v8, v46
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_add_f32_e32 v46, v21, v47
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_f32_e32 v26, v15, v42
	v_add_f32_e32 v47, v19, v48
	v_add_f32_e32 v48, v11, v49
	v_add_f32_e32 v27, v14, v40
	v_fma_f32 v49, v50, v28, v31
	v_fma_f32 v29, v50, v29, v34
	v_fma_f32 v46, v50, v46, v33
	v_add_f32_e32 v40, v12, v43
	v_fma_f32 v26, v50, v26, v32
	v_add_f32_e32 v41, v12, v41
	v_fma_f32 v27, v51, v27, v49
	v_fma_f32 v28, v51, v44, v29
	v_fma_f32 v40, v51, v40, v26
	v_fma_f32 v26, v52, v41, v27
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v27, v10, v54
	v_fma_f32 v44, v51, v47, v46
	v_fma_f32 v29, v52, v45, v28
	v_fma_f32 v28, v52, v48, v44
	v_fma_f32 v27, v52, v27, v40
BB2_26:                                 ; %Flow416
	s_or_b64 exec, exec, s[4:5]
BB2_27:                                 ; %Flow418
	s_or_b64 exec, exec, s[2:3]
BB2_28:                                 ; %Flow420
	s_or_saveexec_b64 s[26:27], s[0:1]
	s_xor_b64 exec, exec, s[26:27]
	s_cbranch_execz BB2_30
; %bb.29:
	v_mov_b32_e32 v40, 0
	v_lshlrev_b64 v[25:26], 2, v[39:40]
	v_mov_b32_e32 v27, s13
	v_add_u32_e32 v25, vcc, s12, v25
	v_addc_u32_e32 v26, vcc, v27, v26, vcc
	v_add_u32_e32 v27, vcc, s16, v39
	v_ashrrev_i32_e32 v28, 31, v27
	v_lshlrev_b64 v[28:29], 2, v[27:28]
	v_mov_b32_e32 v39, s13
	v_add_u32_e32 v28, vcc, s12, v28
	v_addc_u32_e32 v29, vcc, v39, v29, vcc
	v_add_u32_e32 v39, vcc, s16, v27
	v_ashrrev_i32_e32 v40, 31, v39
	v_lshlrev_b64 v[40:41], 2, v[39:40]
	v_mov_b32_e32 v27, s13
	v_add_u32_e32 v40, vcc, s12, v40
	v_addc_u32_e32 v41, vcc, v27, v41, vcc
	v_add_u32_e32 v42, vcc, s16, v39
	v_ashrrev_i32_e32 v43, 31, v42
	v_lshlrev_b64 v[43:44], 2, v[42:43]
	s_mov_b32 s29, 0xf800000
	v_add_u32_e32 v43, vcc, s12, v43
	v_addc_u32_e32 v44, vcc, v27, v44, vcc
	v_add_u32_e32 v45, vcc, s16, v42
	v_ashrrev_i32_e32 v46, 31, v45
	v_lshlrev_b64 v[45:46], 2, v[45:46]
	v_mov_b32_e32 v39, 0x4f800000
	v_add_u32_e32 v45, vcc, s12, v45
	v_addc_u32_e32 v46, vcc, v27, v46, vcc
	flat_load_dword v47, v[25:26]
	flat_load_dword v48, v[28:29]
	flat_load_dword v49, v[40:41]
	flat_load_dword v50, v[43:44]
	flat_load_dword v51, v[45:46]
	s_waitcnt vmcnt(6) lgkmcnt(6)
	v_mul_f32_e32 v27, v37, v37
	v_fma_f32 v27, v38, v38, v27
	s_waitcnt vmcnt(5) lgkmcnt(5)
	v_fma_f32 v27, v36, v36, v27
	v_mul_f32_e32 v29, 0.5, v38
	v_cmp_gt_f32_e64 s[2:3], s29, v27
	v_cndmask_b32_e64 v41, 1.0, v39, s[2:3]
	v_mul_f32_e32 v27, v27, v41
	v_sqrt_f32_e32 v44, v27
	v_mov_b32_e32 v42, 0x37800000
	s_mov_b32 s28, 0x3ecccccc
	s_movk_i32 s25, 0x260
	v_mul_f32_e32 v36, 0.5, v36
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_div_scale_f32 v25, s[0:1], v47, v47, v48
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_div_scale_f32 v26, s[0:1], v47, v47, v49
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_div_scale_f32 v28, s[0:1], v47, v47, v50
	v_div_scale_f32 v38, vcc, v48, v47, v48
	v_div_scale_f32 v40, s[0:1], v49, v47, v49
	v_div_scale_f32 v41, s[4:5], v50, v47, v50
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_f32_e32 v56, v13, v51
	v_rcp_f32_e32 v43, v25
	v_rcp_f32_e32 v45, v26
	v_rcp_f32_e32 v46, v28
	v_fma_f32 v52, -v25, v43, 1.0
	v_fma_f32 v43, v52, v43, v43
	v_fma_f32 v52, -v26, v45, 1.0
	v_fma_f32 v45, v52, v45, v45
	v_mul_f32_e32 v53, v38, v43
	v_fma_f32 v52, -v28, v46, 1.0
	v_fma_f32 v54, -v25, v53, v38
	v_mul_f32_e32 v55, v40, v45
	v_fma_f32 v46, v52, v46, v46
	v_fma_f32 v52, v54, v43, v53
	v_fma_f32 v53, -v26, v55, v40
	v_fma_f32 v25, -v25, v52, v38
	v_fma_f32 v38, v53, v45, v55
	v_mul_f32_e32 v54, v41, v46
	v_div_fmas_f32 v25, v25, v43, v52
	v_fma_f32 v53, -v28, v54, v41
	v_fma_f32 v26, -v26, v38, v40
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v26, v26, v45, v38
	v_fma_f32 v40, v53, v46, v54
	v_fma_f32 v28, -v28, v40, v41
	s_mov_b64 vcc, s[4:5]
	v_div_fmas_f32 v28, v28, v46, v40
	v_add_u32_e32 v40, vcc, -1, v44
	v_add_u32_e32 v41, vcc, 1, v44
	v_fma_f32 v43, -v40, v44, v27
	v_cmp_ge_f32_e32 vcc, 0, v43
	v_fma_f32 v45, -v41, v44, v27
	v_cndmask_b32_e32 v40, v44, v40, vcc
	v_cmp_lt_f32_e32 vcc, 0, v45
	v_cndmask_b32_e32 v40, v40, v41, vcc
	v_div_fixup_f32 v25, v25, v47, v48
	v_cndmask_b32_e64 v38, 1.0, v42, s[2:3]
	v_mul_f32_e32 v38, v38, v40
	v_div_fixup_f32 v26, v26, v47, v49
	v_mul_f32_e32 v41, v26, v26
	v_fma_f32 v41, v25, v25, v41
	v_mul_f32_e32 v40, -0.5, v47
	v_div_fixup_f32 v28, v28, v47, v50
	v_fma_f32 v41, v28, v28, v41
	v_fma_f32 v40, v40, v41, v51
	v_mul_f32_e32 v43, s28, v40
	v_mul_f32_e32 v44, 0x3fb33333, v43
	v_div_scale_f32 v45, s[0:1], v47, v47, v44
	v_cmp_class_f32_e64 vcc, v27, s25
	v_cndmask_b32_e32 v27, v38, v27, vcc
	v_div_scale_f32 v38, vcc, v44, v47, v44
	v_cmp_gt_f32_e64 s[0:1], s29, v41
	v_cndmask_b32_e64 v57, 1.0, v39, s[0:1]
	v_mul_f32_e32 v41, v41, v57
	v_fma_f32 v40, v40, s28, v51
	v_sqrt_f32_e32 v51, v41
	v_cndmask_b32_e64 v58, 1.0, v42, s[0:1]
	v_sub_f32_e32 v46, v18, v47
	v_mul_f32_e32 v27, 0xbe4ccccd, v27
	v_mul_f32_e32 v27, 0.5, v27
	v_sub_f32_e32 v52, v17, v48
	v_add_f32_e32 v53, v17, v48
	v_sub_f32_e32 v54, v9, v49
	v_rcp_f32_e32 v57, v45
	v_sub_f32_e32 v55, v8, v50
	v_fma_f32 v59, -v45, v57, 1.0
	v_fma_f32 v57, v59, v57, v57
	v_mul_f32_e32 v59, v38, v57
	v_fma_f32 v60, -v45, v59, v38
	v_fma_f32 v59, v60, v57, v59
	v_fma_f32 v38, -v45, v59, v38
	v_div_fmas_f32 v38, v38, v57, v59
	v_add_u32_e32 v57, vcc, -1, v51
	v_add_u32_e32 v59, vcc, 1, v51
	v_fma_f32 v60, -v57, v51, v41
	v_fma_f32 v61, -v59, v51, v41
	v_cmp_ge_f32_e32 vcc, 0, v60
	v_cndmask_b32_e32 v51, v51, v57, vcc
	v_cmp_lt_f32_e32 vcc, 0, v61
	v_cndmask_b32_e32 v51, v51, v59, vcc
	v_mul_f32_e32 v51, v58, v51
	v_cmp_class_f32_e64 vcc, v41, s25
	v_cndmask_b32_e32 v41, v51, v41, vcc
	v_add_f32_e32 v41, v22, v41
	v_add_f32_e32 v41, v23, v41
	v_fma_f32 v45, v25, v40, v21
	v_div_fixup_f32 v38, v38, v47, v44
	v_cmp_gt_f32_e32 vcc, s29, v38
	v_cndmask_b32_e32 v39, 1.0, v39, vcc
	v_mul_f32_e32 v38, v38, v39
	v_sqrt_f32_e32 v39, v38
	v_cndmask_b32_e32 v42, 1.0, v42, vcc
	v_add_u32_e32 v44, vcc, -1, v39
	v_add_u32_e32 v47, vcc, 1, v39
	v_fma_f32 v51, -v44, v39, v38
	v_fma_f32 v57, -v47, v39, v38
	v_cmp_ge_f32_e32 vcc, 0, v51
	v_cndmask_b32_e32 v39, v39, v44, vcc
	v_cmp_lt_f32_e32 vcc, 0, v57
	v_cndmask_b32_e32 v39, v39, v47, vcc
	v_mul_f32_e32 v39, v42, v39
	v_cmp_class_f32_e64 vcc, v38, s25
	v_cndmask_b32_e32 v38, v39, v38, vcc
	v_add_f32_e32 v38, v41, v38
	v_mul_f32_e32 v27, v27, v38
	v_fma_f32 v34, v46, v27, v34
	v_fma_f32 v33, v56, v27, v33
	v_fma_f32 v30, v52, v27, v30
	v_fma_f32 v31, v54, v27, v31
	v_fma_f32 v27, v55, v27, v32
	v_fma_f32 v32, v29, v53, v34
	v_fma_f32 v34, v48, v25, v43
	v_add_f32_e32 v34, v20, v34
	v_fma_f32 v30, v29, v34, v30
	v_fma_f32 v34, v25, v49, v16
	v_fma_f32 v25, v25, v50, v15
	v_fma_f32 v33, v29, v45, v33
	v_fma_f32 v31, v29, v34, v31
	v_fma_f32 v27, v29, v25, v27
	v_mul_f32_e32 v29, 0.5, v37
	v_fma_f32 v30, v29, v34, v30
	v_fma_f32 v34, v49, v26, v43
	v_add_f32_e32 v37, v9, v49
	v_add_f32_e32 v34, v14, v34
	v_fma_f32 v32, v29, v37, v32
	v_fma_f32 v37, v26, v40, v19
	v_fma_f32 v31, v29, v34, v31
	v_fma_f32 v26, v26, v50, v12
	v_fma_f32 v34, v50, v28, v43
	v_fma_f32 v27, v29, v26, v27
	v_fma_f32 v33, v29, v37, v33
	v_add_f32_e32 v29, v8, v50
	v_fma_f32 v28, v28, v40, v11
	v_fma_f32 v25, v36, v25, v30
	v_add_f32_e32 v30, v10, v34
	v_fma_f32 v29, v36, v29, v32
	v_fma_f32 v28, v36, v28, v33
	v_fma_f32 v26, v36, v26, v31
	v_fma_f32 v27, v36, v30, v27
BB2_30:
	s_or_b64 exec, exec, s[26:27]
	v_lshlrev_b64 v[30:31], 2, v[4:5]
	v_mov_b32_e32 v33, s9
	v_add_u32_e32 v32, vcc, s8, v30
	v_addc_u32_e32 v33, vcc, v33, v31, vcc
	flat_load_dword v33, v[32:33]
	v_mov_b32_e32 v32, s11
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_u32_e32 v36, vcc, s10, v30
	v_addc_u32_e32 v37, vcc, v32, v31, vcc
	v_add_u32_e32 v30, vcc, s24, v35
	v_ashrrev_i32_e32 v31, 31, v30
	v_lshlrev_b64 v[31:32], 2, v[30:31]
	v_mov_b32_e32 v35, s11
	v_add_u32_e32 v34, vcc, s10, v31
	v_addc_u32_e32 v35, vcc, v35, v32, vcc
	v_add_u32_e32 v30, vcc, s17, v30
	v_ashrrev_i32_e32 v31, 31, v30
	v_lshlrev_b64 v[30:31], 2, v[30:31]
	v_mov_b32_e32 v32, s11
	v_add_u32_e32 v38, vcc, s10, v30
	v_addc_u32_e32 v39, vcc, v32, v31, vcc
	flat_load_dword v32, v[36:37]
	flat_load_dword v31, v[34:35]
	flat_load_dword v30, v[38:39]
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr38
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_cmp_gt_i32_e32 vcc, 0, v33
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB2_38
; %bb.31:                               ; %NodeBlock409
	v_cmp_lt_i32_e32 vcc, -2, v33
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr37
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB2_33
; %bb.32:
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_fma_f32 v34, v24, v32, v25
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_fma_f32 v35, v24, v31, v26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v37, v24, v30, v27
BB2_33:                                 ; %Flow412
	s_or_saveexec_b64 s[2:3], s[2:3]
	v_mov_b32_e32 v36, v28
	v_mov_b32_e32 v38, v29
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB2_37
; %bb.34:                               ; %LeafBlock407
	v_cmp_ne_u32_e32 vcc, -2, v33
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_or_saveexec_b64 s[4:5], s[4:5]
	v_mov_b32_e32 v36, v28
	v_mov_b32_e32 v34, v25
	v_mov_b32_e32 v35, v26
	v_mov_b32_e32 v37, v27
	v_mov_b32_e32 v38, v29
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB2_36
; %bb.35:
	s_add_u32 s8, s22, 32
	s_addc_u32 s9, s23, 0
	v_mov_b32_e32 v35, s23
	v_mov_b32_e32 v34, s22
	s_add_u32 s10, s22, 16
	flat_load_dwordx4 v[34:37], v[34:35]
	s_addc_u32 s11, s23, 0
	v_mov_b32_e32 v39, s21
	v_mov_b32_e32 v41, s19
	v_mov_b32_e32 v52, s11
	v_mov_b32_e32 v38, s20
	v_mov_b32_e32 v40, s18
	flat_load_dwordx3 v[43:45], v[38:39]
	flat_load_dwordx3 v[46:48], v[40:41]
	v_mov_b32_e32 v50, s9
	v_mov_b32_e32 v51, s10
	v_mov_b32_e32 v49, s8
	flat_load_dwordx4 v[39:42], v[51:52]
	flat_load_dword v24, v[49:50]
	s_waitcnt vmcnt(7) lgkmcnt(7)
	v_mul_f32_e32 v49, 0.5, v32
	s_waitcnt vmcnt(6) lgkmcnt(6)
	v_mul_f32_e32 v50, 0.5, v31
	s_waitcnt vmcnt(5) lgkmcnt(5)
	v_mul_f32_e32 v51, 0.5, v30
	s_waitcnt vmcnt(4) lgkmcnt(4)
	v_add_f32_e32 v34, v20, v34
	v_add_f32_e32 v35, v16, v35
	v_fma_f32 v34, v49, v34, v25
	v_add_f32_e32 v37, v16, v37
	v_add_f32_e32 v52, v15, v36
	v_fma_f32 v34, v50, v35, v34
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_add_f32_e32 v36, v17, v43
	v_add_f32_e32 v38, v9, v44
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_add_f32_e32 v44, v21, v46
	v_fma_f32 v36, v49, v36, v29
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_f32_e32 v35, v15, v41
	v_add_f32_e32 v43, v8, v45
	v_add_f32_e32 v45, v19, v47
	v_fma_f32 v44, v49, v44, v28
	v_fma_f32 v37, v49, v37, v26
	v_add_f32_e32 v39, v14, v39
	v_add_f32_e32 v41, v12, v42
	v_fma_f32 v35, v49, v35, v27
	v_fma_f32 v36, v50, v38, v36
	v_fma_f32 v37, v50, v39, v37
	v_add_f32_e32 v46, v11, v48
	v_fma_f32 v44, v50, v45, v44
	v_add_f32_e32 v40, v12, v40
	v_fma_f32 v39, v50, v41, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v24, v10, v24
	v_fma_f32 v38, v51, v43, v36
	v_fma_f32 v35, v51, v40, v37
	v_fma_f32 v36, v51, v46, v44
	v_fma_f32 v34, v51, v52, v34
	v_fma_f32 v37, v51, v24, v39
BB2_36:                                 ; %Flow411
	s_or_b64 exec, exec, s[4:5]
BB2_37:                                 ; %Flow413
	s_or_b64 exec, exec, s[2:3]
BB2_38:                                 ; %Flow414
	s_or_saveexec_b64 s[8:9], s[0:1]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB2_40
; %bb.39:
	v_mov_b32_e32 v34, 0
	v_lshlrev_b64 v[34:35], 2, v[33:34]
	v_mov_b32_e32 v24, s13
	v_add_u32_e32 v34, vcc, s12, v34
	v_addc_u32_e32 v35, vcc, v24, v35, vcc
	v_add_u32_e32 v36, vcc, s16, v33
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[37:38], 2, v[36:37]
	v_mov_b32_e32 v33, 0x4f800000
	v_add_u32_e32 v37, vcc, s12, v37
	v_addc_u32_e32 v38, vcc, v24, v38, vcc
	v_add_u32_e32 v39, vcc, s16, v36
	v_ashrrev_i32_e32 v40, 31, v39
	v_lshlrev_b64 v[40:41], 2, v[39:40]
	v_mov_b32_e32 v36, 0x37800000
	v_add_u32_e32 v40, vcc, s12, v40
	v_addc_u32_e32 v41, vcc, v24, v41, vcc
	v_add_u32_e32 v42, vcc, s16, v39
	v_ashrrev_i32_e32 v43, 31, v42
	v_lshlrev_b64 v[43:44], 2, v[42:43]
	s_mov_b32 s11, 0x3ecccccc
	v_add_u32_e32 v43, vcc, s12, v43
	v_addc_u32_e32 v44, vcc, v24, v44, vcc
	v_add_u32_e32 v45, vcc, s16, v42
	v_ashrrev_i32_e32 v46, 31, v45
	v_lshlrev_b64 v[45:46], 2, v[45:46]
	s_movk_i32 s10, 0x260
	v_add_u32_e32 v45, vcc, s12, v45
	v_addc_u32_e32 v46, vcc, v24, v46, vcc
	flat_load_dword v39, v[34:35]
	flat_load_dword v42, v[37:38]
	flat_load_dword v47, v[40:41]
	flat_load_dword v48, v[43:44]
	flat_load_dword v49, v[45:46]
	s_waitcnt vmcnt(6) lgkmcnt(6)
	v_mul_f32_e32 v24, v31, v31
	v_fma_f32 v24, v32, v32, v24
	v_mul_f32_e32 v38, 0.5, v32
	s_mov_b32 s12, 0xf800000
	s_waitcnt vmcnt(5) lgkmcnt(5)
	v_fma_f32 v24, v30, v30, v24
	v_cmp_gt_f32_e64 s[2:3], s12, v24
	v_cndmask_b32_e64 v41, 1.0, v33, s[2:3]
	v_mul_f32_e32 v24, v24, v41
	v_sqrt_f32_e32 v44, v24
	s_waitcnt vmcnt(4) lgkmcnt(4)
	v_sub_f32_e32 v18, v18, v39
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_div_scale_f32 v34, s[0:1], v39, v39, v42
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_div_scale_f32 v35, s[0:1], v39, v39, v47
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_div_scale_f32 v37, s[0:1], v39, v39, v48
	v_div_scale_f32 v32, vcc, v42, v39, v42
	v_div_scale_f32 v40, s[0:1], v47, v39, v47
	v_div_scale_f32 v41, s[4:5], v48, v39, v48
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_f32_e32 v13, v13, v49
	v_rcp_f32_e32 v43, v34
	v_rcp_f32_e32 v45, v35
	v_rcp_f32_e32 v46, v37
	v_fma_f32 v50, -v34, v43, 1.0
	v_fma_f32 v43, v50, v43, v43
	v_fma_f32 v50, -v35, v45, 1.0
	v_fma_f32 v45, v50, v45, v45
	v_mul_f32_e32 v51, v32, v43
	v_fma_f32 v50, -v37, v46, 1.0
	v_fma_f32 v52, -v34, v51, v32
	v_mul_f32_e32 v53, v40, v45
	v_fma_f32 v46, v50, v46, v46
	v_fma_f32 v50, v52, v43, v51
	v_fma_f32 v51, -v35, v53, v40
	v_fma_f32 v32, -v34, v50, v32
	v_fma_f32 v34, v51, v45, v53
	v_mul_f32_e32 v52, v41, v46
	v_div_fmas_f32 v32, v32, v43, v50
	v_fma_f32 v51, -v37, v52, v41
	v_fma_f32 v35, -v35, v34, v40
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v34, v35, v45, v34
	v_fma_f32 v40, v51, v46, v52
	v_fma_f32 v35, -v37, v40, v41
	s_mov_b64 vcc, s[4:5]
	v_div_fmas_f32 v35, v35, v46, v40
	v_add_u32_e32 v40, vcc, -1, v44
	v_add_u32_e32 v41, vcc, 1, v44
	v_fma_f32 v43, -v40, v44, v24
	v_cmp_ge_f32_e32 vcc, 0, v43
	v_fma_f32 v45, -v41, v44, v24
	v_cndmask_b32_e32 v40, v44, v40, vcc
	v_cmp_lt_f32_e32 vcc, 0, v45
	v_div_fixup_f32 v32, v32, v39, v42
	v_cndmask_b32_e32 v40, v40, v41, vcc
	v_cndmask_b32_e64 v37, 1.0, v36, s[2:3]
	v_mul_f32_e32 v37, v37, v40
	v_div_fixup_f32 v34, v34, v39, v47
	v_mul_f32_e32 v41, v34, v34
	v_fma_f32 v41, v32, v32, v41
	v_mul_f32_e32 v40, -0.5, v39
	v_div_fixup_f32 v35, v35, v39, v48
	v_fma_f32 v41, v35, v35, v41
	v_fma_f32 v40, v40, v41, v49
	v_mul_f32_e32 v43, s11, v40
	v_mul_f32_e32 v44, 0x3fb33333, v43
	v_div_scale_f32 v45, s[0:1], v39, v39, v44
	v_cmp_class_f32_e64 vcc, v24, s10
	v_cndmask_b32_e32 v24, v37, v24, vcc
	v_div_scale_f32 v37, vcc, v44, v39, v44
	v_cmp_gt_f32_e64 s[0:1], s12, v41
	v_cndmask_b32_e64 v52, 1.0, v33, s[0:1]
	v_mul_f32_e32 v41, v41, v52
	v_fma_f32 v40, v40, s11, v49
	v_sqrt_f32_e32 v49, v41
	v_cndmask_b32_e64 v53, 1.0, v36, s[0:1]
	v_mul_f32_e32 v24, 0xbe4ccccd, v24
	v_mul_f32_e32 v24, 0.5, v24
	v_sub_f32_e32 v46, v17, v42
	v_sub_f32_e32 v50, v9, v47
	v_sub_f32_e32 v51, v8, v48
	v_add_f32_e32 v17, v17, v42
	v_rcp_f32_e32 v52, v45
	v_fma_f32 v21, v32, v40, v21
	v_fma_f32 v15, v32, v48, v15
	v_add_f32_e32 v9, v9, v47
	v_fma_f32 v54, -v45, v52, 1.0
	v_fma_f32 v52, v54, v52, v52
	v_mul_f32_e32 v54, v37, v52
	v_fma_f32 v55, -v45, v54, v37
	v_fma_f32 v54, v55, v52, v54
	v_fma_f32 v37, -v45, v54, v37
	v_div_fmas_f32 v37, v37, v52, v54
	v_add_u32_e32 v45, vcc, -1, v49
	v_add_u32_e32 v52, vcc, 1, v49
	v_fma_f32 v54, -v45, v49, v41
	v_cmp_ge_f32_e32 vcc, 0, v54
	v_fma_f32 v55, -v52, v49, v41
	v_cndmask_b32_e32 v45, v49, v45, vcc
	v_cmp_lt_f32_e32 vcc, 0, v55
	v_cndmask_b32_e32 v45, v45, v52, vcc
	v_mul_f32_e32 v45, v53, v45
	v_cmp_class_f32_e64 vcc, v41, s10
	v_cndmask_b32_e32 v41, v45, v41, vcc
	v_add_f32_e32 v22, v22, v41
	v_add_f32_e32 v22, v23, v22
	v_fma_f32 v16, v32, v47, v16
	v_add_f32_e32 v8, v8, v48
	v_div_fixup_f32 v37, v37, v39, v44
	v_cmp_gt_f32_e32 vcc, s12, v37
	v_cndmask_b32_e32 v33, 1.0, v33, vcc
	v_mul_f32_e32 v33, v37, v33
	v_sqrt_f32_e32 v37, v33
	v_cndmask_b32_e32 v23, 1.0, v36, vcc
	v_fma_f32 v12, v34, v48, v12
	v_add_u32_e32 v36, vcc, -1, v37
	v_add_u32_e32 v39, vcc, 1, v37
	v_fma_f32 v41, -v36, v37, v33
	v_cmp_ge_f32_e32 vcc, 0, v41
	v_fma_f32 v44, -v39, v37, v33
	v_cndmask_b32_e32 v36, v37, v36, vcc
	v_cmp_lt_f32_e32 vcc, 0, v44
	v_cndmask_b32_e32 v36, v36, v39, vcc
	v_mul_f32_e32 v23, v23, v36
	v_cmp_class_f32_e64 vcc, v33, s10
	v_cndmask_b32_e32 v23, v23, v33, vcc
	v_add_f32_e32 v22, v22, v23
	v_mul_f32_e32 v22, v24, v22
	v_fma_f32 v18, v18, v22, v29
	v_fma_f32 v13, v13, v22, v28
	v_fma_f32 v17, v38, v17, v18
	v_fma_f32 v18, v42, v32, v43
	v_fma_f32 v23, v46, v22, v25
	v_fma_f32 v24, v50, v22, v26
	v_fma_f32 v22, v51, v22, v27
	v_add_f32_e32 v18, v20, v18
	v_fma_f32 v13, v38, v21, v13
	v_fma_f32 v21, v38, v15, v22
	v_mul_f32_e32 v22, 0.5, v31
	v_fma_f32 v9, v22, v9, v17
	v_fma_f32 v17, v34, v40, v19
	v_fma_f32 v18, v38, v18, v23
	v_fma_f32 v20, v38, v16, v24
	v_fma_f32 v13, v22, v17, v13
	v_fma_f32 v17, v47, v34, v43
	v_fma_f32 v16, v22, v16, v18
	v_mul_f32_e32 v18, 0.5, v30
	v_add_f32_e32 v14, v14, v17
	v_fma_f32 v38, v18, v8, v9
	v_fma_f32 v8, v35, v40, v11
	v_fma_f32 v19, v48, v35, v43
	v_fma_f32 v14, v22, v14, v20
	v_fma_f32 v36, v18, v8, v13
	v_fma_f32 v17, v22, v12, v21
	v_add_f32_e32 v8, v10, v19
	v_fma_f32 v34, v18, v15, v16
	v_fma_f32 v35, v18, v12, v14
	v_fma_f32 v37, v18, v8, v17
BB2_40:
	s_or_b64 exec, exec, s[8:9]
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_mov_b32_e32 v8, s15
	v_add_u32_e32 v2, vcc, s14, v2
	v_addc_u32_e32 v3, vcc, v8, v3, vcc
	flat_store_dword v[2:3], v38
	v_mov_b32_e32 v8, s7
	v_add_u32_e32 v2, vcc, s6, v2
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_addc_u32_e32 v3, vcc, v3, v8, vcc
	flat_store_dword v[2:3], v34
	v_mov_b32_e32 v2, s15
	v_add_u32_e32 v0, vcc, s14, v0
	v_addc_u32_e32 v1, vcc, v2, v1, vcc
	flat_store_dword v[0:1], v35
	v_lshlrev_b64 v[0:1], 2, v[4:5]
	v_add_u32_e32 v0, vcc, s14, v0
	v_addc_u32_e32 v1, vcc, v2, v1, vcc
	flat_store_dword v[0:1], v37
	v_lshlrev_b64 v[0:1], 2, v[6:7]
	v_add_u32_e32 v0, vcc, s14, v0
	v_addc_u32_e32 v1, vcc, v2, v1, vcc
	flat_store_dword v[0:1], v36
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_
		.amdhsa_group_segment_fixed_size 0
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
		.amdhsa_next_free_vgpr 62
		.amdhsa_next_free_sgpr 39
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
	.size	_Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_, .Lfunc_end2-_Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 8120
; NumSgprs: 43
; NumVgprs: 62
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 5
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 62
; Occupancy: 4
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z14cuda_time_stepiiPfS_S_S_ ; -- Begin function _Z14cuda_time_stepiiPfS_S_S_
	.globl	_Z14cuda_time_stepiiPfS_S_S_
	.p2align	8
	.type	_Z14cuda_time_stepiiPfS_S_S_,@function
_Z14cuda_time_stepiiPfS_S_S_:           ; @_Z14cuda_time_stepiiPfS_S_S_
_Z14cuda_time_stepiiPfS_S_S_$local:
; %bb.0:
	s_load_dword s0, s[4:5], 0x4
	v_mov_b32_e32 v2, s8
	v_mov_b32_e32 v1, 0
	s_load_dwordx8 s[8:15], s[6:7], 0x8
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	v_mad_u64_u32 v[2:3], s[0:1], s0, v2, v[0:1]
	v_mov_b32_e32 v0, v1
	v_mov_b32_e32 v4, s13
	v_mov_b32_e32 v6, s15
	v_mov_b32_e32 v1, v2
	v_ashrrev_i64 v[0:1], 30, v[0:1]
	s_load_dwordx2 s[0:1], s[6:7], 0x0
	v_add_u32_e32 v3, vcc, s12, v0
	v_addc_u32_e32 v4, vcc, v4, v1, vcc
	s_waitcnt lgkmcnt(0)
	flat_load_dword v11, v[3:4]
	v_mov_b32_e32 v4, s9
	v_add_u32_e32 v3, vcc, s8, v0
	v_addc_u32_e32 v4, vcc, v4, v1, vcc
	v_add_u32_e32 v5, vcc, s14, v0
	v_addc_u32_e32 v6, vcc, v6, v1, vcc
	flat_load_dword v13, v[3:4]
	flat_load_dword v14, v[5:6]
	s_sub_i32 s0, 4, s0
	v_cvt_f32_i32_e32 v12, s0
	v_mov_b32_e32 v10, s11
	s_ashr_i32 s5, s1, 31
	s_mov_b32 s4, s1
	s_lshl_b64 s[4:5], s[4:5], 2
	s_add_i32 s0, s1, s1
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_div_scale_f32 v7, s[2:3], v12, v12, v11
	v_div_scale_f32 v8, vcc, v11, v12, v11
	s_lshl_b32 s2, s1, 2
	s_ashr_i32 s3, s2, 31
	s_lshl_b64 s[2:3], s[2:3], 2
	v_rcp_f32_e32 v9, v7
	v_fma_f32 v15, -v7, v9, 1.0
	v_fma_f32 v9, v15, v9, v9
	v_mul_f32_e32 v15, v8, v9
	v_fma_f32 v16, -v7, v15, v8
	v_fma_f32 v15, v16, v9, v15
	v_fma_f32 v7, -v7, v15, v8
	v_div_fmas_f32 v15, v7, v9, v15
	v_add_u32_e32 v0, vcc, s10, v0
	v_addc_u32_e32 v1, vcc, v10, v1, vcc
	v_mov_b32_e32 v8, s3
	v_add_u32_e32 v7, vcc, s2, v3
	v_addc_u32_e32 v8, vcc, v4, v8, vcc
	v_mov_b32_e32 v16, s3
	v_add_u32_e32 v9, vcc, s2, v5
	v_addc_u32_e32 v10, vcc, v6, v16, vcc
	v_div_fixup_f32 v11, v15, v12, v11
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v12, v11, v14, v13
	flat_store_dword v[0:1], v12
	flat_load_dword v12, v[7:8]
	s_nop 0
	flat_load_dword v13, v[9:10]
	v_mov_b32_e32 v8, s3
	v_add_u32_e32 v7, vcc, s2, v0
	v_addc_u32_e32 v8, vcc, v1, v8, vcc
	v_mov_b32_e32 v9, s5
	v_add_u32_e32 v3, vcc, s4, v3
	v_addc_u32_e32 v4, vcc, v4, v9, vcc
	v_mov_b32_e32 v10, s5
	v_add_u32_e32 v5, vcc, s4, v5
	v_addc_u32_e32 v6, vcc, v6, v10, vcc
	v_add_u32_e32 v2, vcc, s0, v2
	v_add_u32_e32 v0, vcc, s4, v0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v9, v11, v13, v12
	flat_store_dword v[7:8], v9
	flat_load_dword v9, v[3:4]
	s_nop 0
	flat_load_dword v10, v[5:6]
	v_ashrrev_i32_e32 v3, 31, v2
	v_mov_b32_e32 v5, s5
	v_lshlrev_b64 v[3:4], 2, v[2:3]
	v_addc_u32_e32 v1, vcc, v1, v5, vcc
	v_mov_b32_e32 v6, s9
	v_add_u32_e32 v5, vcc, s8, v3
	v_addc_u32_e32 v6, vcc, v6, v4, vcc
	v_mov_b32_e32 v8, s15
	v_add_u32_e32 v7, vcc, s14, v3
	v_addc_u32_e32 v8, vcc, v8, v4, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v9, v11, v10, v9
	flat_store_dword v[0:1], v9
	flat_load_dword v9, v[5:6]
	s_nop 0
	flat_load_dword v10, v[7:8]
	v_add_u32_e32 v0, vcc, s1, v2
	v_ashrrev_i32_e32 v1, 31, v0
	v_mov_b32_e32 v5, s11
	v_add_u32_e32 v2, vcc, s10, v3
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_addc_u32_e32 v3, vcc, v5, v4, vcc
	v_mov_b32_e32 v6, s9
	v_add_u32_e32 v4, vcc, s8, v0
	v_addc_u32_e32 v5, vcc, v6, v1, vcc
	v_mov_b32_e32 v7, s15
	v_add_u32_e32 v6, vcc, s14, v0
	v_addc_u32_e32 v7, vcc, v7, v1, vcc
	v_add_u32_e32 v0, vcc, s10, v0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v8, v11, v10, v9
	flat_store_dword v[2:3], v8
	flat_load_dword v2, v[4:5]
	s_nop 0
	flat_load_dword v3, v[6:7]
	v_mov_b32_e32 v4, s11
	v_addc_u32_e32 v1, vcc, v4, v1, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v2, v11, v3, v2
	flat_store_dword v[0:1], v2
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z14cuda_time_stepiiPfS_S_S_
		.amdhsa_group_segment_fixed_size 0
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
		.amdhsa_next_free_vgpr 17
		.amdhsa_next_free_sgpr 16
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
.Lfunc_end3:
	.size	_Z14cuda_time_stepiiPfS_S_S_, .Lfunc_end3-_Z14cuda_time_stepiiPfS_S_S_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 624
; NumSgprs: 20
; NumVgprs: 17
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 20
; NumVGPRsForWavesPerEU: 17
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
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
      - .offset:         24
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         32
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         40
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     hidden_none
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
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z25cuda_initialize_variablesiPfS_
    .private_segment_fixed_size: 0
    .sgpr_count:     16
    .sgpr_spill_count: 0
    .symbol:         _Z25cuda_initialize_variablesiPfS_.kd
    .vgpr_count:     7
    .vgpr_spill_count: 0
    .wavefront_size: 64
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
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 88
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z24cuda_compute_step_factoriPfS_S_
    .private_segment_fixed_size: 0
    .sgpr_count:     14
    .sgpr_spill_count: 0
    .symbol:         _Z24cuda_compute_step_factoriPfS_S_.kd
    .vgpr_count:     20
    .vgpr_spill_count: 0
    .wavefront_size: 64
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
      - .offset:         64
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         72
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         80
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         _Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_.kd
    .vgpr_count:     62
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
    .name:           _Z14cuda_time_stepiiPfS_S_S_
    .private_segment_fixed_size: 0
    .sgpr_count:     20
    .sgpr_spill_count: 0
    .symbol:         _Z14cuda_time_stepiiPfS_S_S_.kd
    .vgpr_count:     17
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
