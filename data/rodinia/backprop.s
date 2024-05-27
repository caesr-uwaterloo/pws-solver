	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z22bpnn_layerforward_CUDAPfS_S_S_ii ; -- Begin function _Z22bpnn_layerforward_CUDAPfS_S_S_ii
	.globl	_Z22bpnn_layerforward_CUDAPfS_S_S_ii
	.p2align	8
	.type	_Z22bpnn_layerforward_CUDAPfS_S_S_ii,@function
_Z22bpnn_layerforward_CUDAPfS_S_S_ii:   ; @_Z22bpnn_layerforward_CUDAPfS_S_S_ii
_Z22bpnn_layerforward_CUDAPfS_S_S_ii$local:
; %bb.0:
	s_load_dwordx4 s[8:11], s[4:5], 0x10
	s_load_dword s2, s[4:5], 0x24
	s_lshl_b32 s0, s7, 4
	v_add_u32_e32 v2, vcc, s0, v1
	v_cmp_eq_u32_e64 s[0:1], 0, v0
	v_lshlrev_b32_e32 v5, 2, v1
	s_mov_b32 m0, -1
	s_and_saveexec_b64 s[12:13], s[0:1]
	s_cbranch_execz BB0_2
; %bb.1:
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_add_u32_e32 v3, vcc, 1, v2
	v_ashrrev_i32_e32 v4, 31, v3
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v6, s5
	v_add_u32_e32 v3, vcc, s4, v3
	v_addc_u32_e32 v4, vcc, v6, v4, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v5, v3
BB0_2:
	s_or_b64 exec, exec, s[12:13]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s2, 1
	v_mul_lo_u32 v2, v2, s3
	v_add_u32_e32 v3, vcc, s3, v0
	v_add_u32_e32 v2, vcc, v3, v2
	v_add_u32_e32 v2, vcc, 1, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_mov_b32_e32 v4, s9
	v_add_u32_e32 v2, vcc, s8, v2
	v_addc_u32_e32 v3, vcc, v4, v3, vcc
	flat_load_dword v6, v[2:3]
	s_mov_b32 s3, 1
	v_lshlrev_b32_e32 v4, 2, v0
	v_lshlrev_b32_e32 v7, 6, v1
	s_mov_b32 s4, 0x3f317218
	s_mov_b32 s5, 0xb102e308
	s_movk_i32 s6, 0x204
	s_mov_b32 s8, 0x7f800000
	s_mov_b32 s9, 0x3ab42872
	s_mov_b32 s12, 0x3d2aadcc
	s_mov_b32 s13, 0x3e2aaa47
	s_mov_b32 s14, 0x3efffffc
	s_mov_b32 s15, 0x42b20000
	v_add_u32_e32 v7, vcc, v7, v4
	v_add_u32_e32 v4, vcc, 64, v7
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v7, v6 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_mov_b32 m0, -1
	ds_read_b32 v6, v7 offset:64
	ds_read_b32 v5, v5
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v5, v6, v5
	ds_write_b32 v7, v5 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s16, 0xc2d00000
	s_branch BB0_4
BB0_3:                                  ;   in Loop: Header=BB0_4 Depth=1
	s_or_b64 exec, exec, s[18:19]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_add_i32 s3, s3, 1
	s_cmp_eq_u32 s3, 5
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc1 BB0_6
BB0_4:                                  ; =>This Inner Loop Header: Depth=1
	v_cvt_f32_i32_e32 v5, s3
	v_mul_f32_e32 v6, s4, v5
	v_fma_f32 v7, v5, s4, -v6
	v_fma_f32 v5, v5, s5, v7
	v_add_f32_e32 v7, v6, v5
	v_sub_f32_e32 v8, v7, v6
	v_cmp_class_f32_e64 vcc, v6, s6
	v_cndmask_b32_e32 v6, v7, v6, vcc
	v_sub_f32_e32 v5, v5, v8
	v_cmp_neq_f32_e64 vcc, |v6|, s8
	v_cndmask_b32_e32 v5, 0, v5, vcc
	v_mul_f32_e32 v7, 0x3fb8aa3b, v6
	v_rndne_f32_e32 v7, v7
	v_mul_f32_e32 v8, 0x3f317200, v7
	v_sub_f32_e32 v9, v6, v8
	v_sub_f32_e32 v10, v9, v6
	v_sub_f32_e32 v11, v9, v10
	v_sub_f32_e32 v11, v6, v11
	v_add_f32_e32 v8, v8, v10
	v_sub_f32_e32 v8, v11, v8
	v_add_f32_e32 v5, v5, v8
	v_add_f32_e32 v8, v9, v5
	v_sub_f32_e32 v9, v8, v9
	v_sub_f32_e32 v5, v5, v9
	v_mul_f32_e32 v9, 0x35bfbc00, v7
	v_sub_f32_e32 v10, v8, v9
	v_sub_f32_e32 v8, v8, v10
	v_sub_f32_e32 v8, v8, v9
	v_add_f32_e32 v5, v5, v8
	v_add_f32_e32 v8, v10, v5
	v_sub_f32_e32 v9, v8, v10
	v_sub_f32_e32 v5, v5, v9
	v_mul_f32_e32 v9, 0x2ea39ef3, v7
	v_sub_f32_e32 v10, v8, v9
	v_sub_f32_e32 v8, v8, v10
	v_sub_f32_e32 v8, v8, v9
	v_add_f32_e32 v5, v5, v8
	v_add_f32_e32 v8, v10, v5
	v_sub_f32_e32 v9, v8, v10
	v_sub_f32_e32 v5, v5, v9
	v_mov_b32_e32 v9, 0x3c091de6
	v_fma_f32 v9, v8, s9, v9
	v_fma_f32 v9, v8, v9, s12
	v_fma_f32 v9, v8, v9, s13
	v_fma_f32 v9, v8, v9, s14
	v_mul_f32_e32 v10, v8, v8
	v_fma_f32 v11, v8, v8, -v10
	v_add_f32_e32 v12, v5, v5
	v_fma_f32 v11, v8, v12, v11
	v_fma_f32 v11, v5, v5, v11
	v_add_f32_e32 v12, v10, v11
	v_mul_f32_e32 v13, v9, v12
	v_sub_f32_e32 v10, v12, v10
	v_sub_f32_e32 v10, v11, v10
	v_fma_f32 v11, v12, v9, -v13
	v_fma_f32 v9, v10, v9, v11
	v_add_f32_e32 v10, v13, v9
	v_sub_f32_e32 v11, v10, v13
	v_sub_f32_e32 v9, v9, v11
	v_add_f32_e32 v11, v8, v10
	v_sub_f32_e32 v8, v11, v8
	v_sub_f32_e32 v8, v10, v8
	v_add_f32_e32 v5, v5, v9
	v_cvt_i32_f32_e32 v7, v7
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v5, v11, v5
	v_add_f32_e32 v5, 1.0, v5
	v_ldexp_f32 v5, v5, v7
	v_mov_b32_e32 v7, s8
	v_cmp_nlt_f32_e32 vcc, s15, v6
	v_cndmask_b32_e32 v5, v7, v5, vcc
	v_cmp_ngt_f32_e32 vcc, s16, v6
	v_cndmask_b32_e32 v5, 0, v5, vcc
	v_cvt_i32_f32_e64 v5, |v5|
	v_ashrrev_i32_e32 v6, 31, v5
	v_add_u32_e32 v7, vcc, v5, v6
	v_xor_b32_e32 v6, v7, v6
	v_cvt_f32_u32_e32 v7, v6
	v_rcp_iflag_f32_e32 v7, v7
	v_mul_f32_e32 v7, 0x4f7ffffe, v7
	v_cvt_u32_f32_e32 v7, v7
	v_sub_u32_e32 v8, vcc, 0, v6
	v_mul_lo_u32 v8, v8, v7
	v_mul_hi_u32 v8, v7, v8
	v_add_u32_e32 v7, vcc, v8, v7
	v_mul_hi_u32 v7, v1, v7
	v_mul_lo_u32 v7, v7, v6
	v_sub_u32_e32 v7, vcc, v1, v7
	v_sub_u32_e32 v8, vcc, v7, v6
	v_cmp_ge_u32_e32 vcc, v7, v6
	v_cndmask_b32_e32 v7, v7, v8, vcc
	v_sub_u32_e32 v8, vcc, v7, v6
	v_cmp_ge_u32_e32 vcc, v7, v6
	v_cndmask_b32_e32 v6, v7, v8, vcc
	v_cmp_eq_u32_e32 vcc, 0, v6
	s_and_saveexec_b64 s[18:19], vcc
	s_cbranch_execz BB0_3
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	v_lshrrev_b32_e32 v6, 31, v5
	v_add_u32_e32 v5, vcc, v6, v5
	v_lshlrev_b32_e32 v5, 5, v5
	v_and_b32_e32 v5, 0xffffffc0, v5
	v_add_u32_e32 v5, vcc, v4, v5
	ds_read_b32 v6, v4
	ds_read_b32 v5, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v6, v5
	ds_write_b32 v4, v5
	s_branch BB0_3
BB0_6:
	ds_read_b32 v4, v4
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[2:3], v4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB0_8
; %bb.7:
	v_lshlrev_b32_e32 v2, 2, v1
	v_lshlrev_b32_e32 v0, 6, v0
	v_add_u32_e32 v2, vcc, v0, v2
	s_mul_i32 s7, s7, s2
	v_add_u32_e32 v0, vcc, s7, v1
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_mov_b32_e32 v3, s11
	v_add_u32_e32 v0, vcc, s10, v0
	v_addc_u32_e32 v1, vcc, v3, v1, vcc
	ds_read_b32 v2, v2 offset:64
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[0:1], v2
BB0_8:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z22bpnn_layerforward_CUDAPfS_S_S_ii
		.amdhsa_group_segment_fixed_size 1088
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
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 14
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
.Lfunc_end0:
	.size	_Z22bpnn_layerforward_CUDAPfS_S_S_ii, .Lfunc_end0-_Z22bpnn_layerforward_CUDAPfS_S_S_ii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 1040
; NumSgprs: 24
; NumVgprs: 14
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 1088 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 24
; NumVGPRsForWavesPerEU: 14
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
	.text
	.protected	_Z24bpnn_adjust_weights_cudaPfiS_iS_S_ ; -- Begin function _Z24bpnn_adjust_weights_cudaPfiS_iS_S_
	.globl	_Z24bpnn_adjust_weights_cudaPfiS_iS_S_
	.p2align	8
	.type	_Z24bpnn_adjust_weights_cudaPfiS_iS_S_,@function
_Z24bpnn_adjust_weights_cudaPfiS_iS_S_: ; @_Z24bpnn_adjust_weights_cudaPfiS_iS_S_
_Z24bpnn_adjust_weights_cudaPfiS_iS_S_$local:
; %bb.0:
	s_load_dwordx2 s[8:9], s[4:5], 0x0
	s_load_dword s6, s[4:5], 0x8
	s_load_dwordx2 s[10:11], s[4:5], 0x10
	s_load_dwordx4 s[0:3], s[4:5], 0x20
	s_waitcnt lgkmcnt(0)
	s_add_i32 s6, s6, 1
	s_lshl_b32 s4, s7, 4
	v_add_u32_e32 v2, vcc, s4, v1
	v_mul_lo_u32 v3, v2, s6
	v_add_u32_e32 v4, vcc, 1, v0
	v_add_u32_e32 v0, vcc, s6, v4
	v_add_u32_e32 v5, vcc, v0, v3
	v_add_u32_e32 v6, vcc, 1, v2
	v_lshlrev_b32_e32 v0, 2, v4
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v7, s9
	v_add_u32_e32 v2, vcc, s8, v0
	v_addc_u32_e32 v3, vcc, v7, v3, vcc
	flat_load_dword v0, v[2:3]
	s_mov_b32 s5, 0x3fd33333
	s_mov_b32 s4, 0x33333333
	v_ashrrev_i32_e32 v7, 31, v6
	v_lshlrev_b64 v[7:8], 2, v[6:7]
	v_mov_b32_e32 v15, s11
	v_ashrrev_i32_e32 v6, 31, v5
	v_lshlrev_b64 v[5:6], 2, v[5:6]
	v_mov_b32_e32 v10, s3
	v_add_u32_e32 v9, vcc, s2, v5
	v_addc_u32_e32 v10, vcc, v10, v6, vcc
	v_mov_b32_e32 v17, s1
	flat_load_dword v13, v[9:10]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_cvt_f64_f32_e32 v[11:12], v0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[13:14], v13
	v_add_u32_e32 v7, vcc, s10, v7
	v_addc_u32_e32 v8, vcc, v15, v8, vcc
	v_mul_f64 v[11:12], v[11:12], s[4:5]
	v_mul_f64 v[13:14], v[13:14], s[4:5]
	flat_load_dword v0, v[7:8]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[15:16], v0
	v_add_u32_e32 v5, vcc, s0, v5
	v_addc_u32_e32 v6, vcc, v17, v6, vcc
	v_fma_f64 v[11:12], v[11:12], v[15:16], v[13:14]
	flat_load_dword v0, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[13:14], v0
	v_add_f64 v[11:12], v[11:12], v[13:14]
	v_cvt_f32_f64_e32 v0, v[11:12]
	flat_store_dword v[5:6], v0
	flat_load_dword v0, v[2:3]
	s_nop 0
	flat_load_dword v11, v[9:10]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_cvt_f64_f32_e32 v[5:6], v0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[11:12], v11
	v_mul_f64 v[5:6], v[5:6], s[4:5]
	v_mul_f64 v[11:12], v[11:12], s[4:5]
	flat_load_dword v0, v[7:8]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[7:8], v0
	v_fma_f64 v[5:6], v[5:6], v[7:8], v[11:12]
	v_cvt_f32_f64_e32 v0, v[5:6]
	v_mov_b32_e32 v5, 0
	v_or_b32_e32 v1, s7, v1
	flat_store_dword v[9:10], v0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz BB1_2
; %bb.1:
	v_lshlrev_b64 v[0:1], 2, v[4:5]
	v_mov_b32_e32 v5, s3
	v_add_u32_e32 v4, vcc, s2, v0
	v_addc_u32_e32 v5, vcc, v5, v1, vcc
	flat_load_dword v6, v[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[6:7], v6
	v_mul_f64 v[6:7], v[6:7], s[4:5]
	flat_load_dword v8, v[2:3]
	v_mov_b32_e32 v10, s1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[8:9], v8
	v_add_u32_e32 v0, vcc, s0, v0
	v_addc_u32_e32 v1, vcc, v10, v1, vcc
	v_fma_f64 v[6:7], v[8:9], s[4:5], v[6:7]
	flat_load_dword v8, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[8:9], v8
	v_add_f64 v[6:7], v[6:7], v[8:9]
	v_cvt_f32_f64_e32 v6, v[6:7]
	flat_store_dword v[0:1], v6
	flat_load_dword v0, v[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[0:1], v0
	v_mul_f64 v[0:1], v[0:1], s[4:5]
	flat_load_dword v2, v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[2:3], v2
	v_fma_f64 v[0:1], v[2:3], s[4:5], v[0:1]
	v_cvt_f32_f64_e32 v0, v[0:1]
	flat_store_dword v[4:5], v0
BB1_2:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z24bpnn_adjust_weights_cudaPfiS_iS_S_
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 18
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
.Lfunc_end1:
	.size	_Z24bpnn_adjust_weights_cudaPfiS_iS_S_, .Lfunc_end1-_Z24bpnn_adjust_weights_cudaPfiS_iS_S_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 576
; NumSgprs: 16
; NumVgprs: 18
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 16
; NumVGPRsForWavesPerEU: 18
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
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
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .offset:         32
        .size:           4
        .value_kind:     by_value
      - .offset:         36
        .size:           4
        .value_kind:     by_value
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
    .group_segment_fixed_size: 1088
    .kernarg_segment_align: 8
    .kernarg_segment_size: 96
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z22bpnn_layerforward_CUDAPfS_S_S_ii
    .private_segment_fixed_size: 0
    .sgpr_count:     24
    .sgpr_spill_count: 0
    .symbol:         _Z22bpnn_layerforward_CUDAPfS_S_S_ii.kd
    .vgpr_count:     14
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .offset:         8
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .offset:         24
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         56
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         64
        .size:           8
        .value_kind:     hidden_global_offset_z
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
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 104
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z24bpnn_adjust_weights_cudaPfiS_iS_S_
    .private_segment_fixed_size: 0
    .sgpr_count:     16
    .sgpr_spill_count: 0
    .symbol:         _Z24bpnn_adjust_weights_cudaPfiS_iS_S_.kd
    .vgpr_count:     18
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
