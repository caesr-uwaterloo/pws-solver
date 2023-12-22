	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z20needle_cuda_shared_1PiS_iiii ; -- Begin function _Z20needle_cuda_shared_1PiS_iiii
	.globl	_Z20needle_cuda_shared_1PiS_iiii
	.p2align	8
	.type	_Z20needle_cuda_shared_1PiS_iiii,@function
_Z20needle_cuda_shared_1PiS_iiii:       ; @_Z20needle_cuda_shared_1PiS_iiii
_Z20needle_cuda_shared_1PiS_iiii$local:
; %bb.0:
	s_load_dwordx4 s[0:3], s[4:5], 0x0
	s_load_dwordx4 s[8:11], s[4:5], 0x10
	s_not_b32 s4, s6
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s4, s10
	s_mul_i32 s4, s8, s4
	s_lshl_b32 s4, s4, 4
	s_lshl_b32 s5, s6, 4
	s_add_i32 s4, s4, s5
	s_mov_b32 s6, 0
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_mov_b32 m0, -1
	s_and_saveexec_b64 s[10:11], vcc
	s_cbranch_execz BB0_2
; %bb.1:
	s_ashr_i32 s5, s4, 31
	s_lshl_b64 s[12:13], s[4:5], 2
	s_add_u32 s12, s2, s12
	s_addc_u32 s13, s3, s13
	s_load_dword s5, s[12:13], 0x0
	v_mov_b32_e32 v1, 0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v2, s5
	ds_write_b32 v1, v2
BB0_2:                                  ; %.preheader138
	s_or_b64 exec, exec, s[10:11]
	v_add_u32_e32 v1, vcc, s4, v0
	v_add_u32_e32 v2, vcc, 1, v1
	v_add_u32_e32 v1, vcc, s8, v2
	v_lshlrev_b32_e32 v3, 2, v0
	v_add_u32_e32 v3, vcc, 0x490, v3
	v_mov_b32_e32 v4, v1
BB0_3:                                  ; =>This Inner Loop Header: Depth=1
	v_ashrrev_i32_e32 v5, 31, v4
	v_mov_b32_e32 v7, s1
	v_lshlrev_b64 v[5:6], 2, v[4:5]
	v_add_u32_e32 v5, vcc, s0, v5
	v_addc_u32_e32 v6, vcc, v7, v6, vcc
	flat_load_dword v5, v[5:6]
	v_add_u32_e32 v6, vcc, s6, v3
	s_add_i32 s6, s6, 64
	v_add_u32_e32 v4, vcc, s8, v4
	s_cmpk_eq_i32 s6, 0x400
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v6, v5
	s_cbranch_scc0 BB0_3
; %bb.4:
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_lo_u32 v3, v0, s8
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s4, s8
	v_add_u32_e32 v3, vcc, s0, v3
	v_ashrrev_i32_e32 v4, 31, v3
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	v_mov_b32_e32 v5, s3
	v_add_u32_e32 v3, vcc, s2, v3
	v_addc_u32_e32 v4, vcc, v5, v4, vcc
	flat_load_dword v4, v[3:4]
	s_movk_i32 s0, 0x44
	v_ashrrev_i32_e32 v3, 31, v2
	v_mul_u32_u24_e32 v6, s0, v0
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_u32_e32 v2, vcc, s2, v2
	v_addc_u32_e32 v3, vcc, v5, v3, vcc
	s_mov_b32 m0, -1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v6, v4 offset:68
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	flat_load_dword v3, v[2:3]
	v_lshlrev_b32_e32 v4, 6, v0
	s_movk_i32 s4, 0xffc4
	v_mov_b32_e32 v2, 0x490
	s_mov_b32 s1, 0
	v_mad_i32_i24 v2, v0, s4, v2
	v_sub_u32_e32 v5, vcc, v6, v4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v5, v3 offset:4
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_sub_u32_e32 v3, vcc, 0, v4
	s_branch BB0_6
BB0_5:                                  ;   in Loop: Header=BB0_6 Depth=1
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_add_i32 s1, s1, 1
	v_add_u32_e32 v2, vcc, 64, v2
	s_cmp_eq_u32 s1, 16
	v_add_u32_e32 v3, vcc, s0, v3
	s_cbranch_scc1 BB0_8
BB0_6:                                  ; =>This Inner Loop Header: Depth=1
	v_cmp_ge_u32_e32 vcc, s1, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz BB0_5
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	ds_read_b32 v6, v2
	ds_read2_b32 v[4:5], v3 offset1:1
	ds_read_b32 v7, v3 offset:68
	s_waitcnt lgkmcnt(1)
	v_add_u32_e32 v4, vcc, v6, v4
	s_waitcnt lgkmcnt(0)
	v_subrev_u32_e32 v6, vcc, s9, v7
	v_subrev_u32_e32 v5, vcc, s9, v5
	v_max3_i32 v4, v4, v6, v5
	ds_write_b32 v3, v4 offset:72
	s_branch BB0_5
BB0_8:                                  ; %.preheader128
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, 0
	v_sub_u32_e32 v3, vcc, 0, v3
	v_subb_u32_e64 v4, s[0:1], 15, v2, vcc
	v_subb_u32_e32 v2, vcc, 16, v2, vcc
	v_lshlrev_b32_e32 v5, 2, v0
	s_movk_i32 s0, 0x44
	v_mad_i32_i24 v2, v2, s0, v5
	v_mad_i32_i24 v3, v4, s0, v5
	v_lshlrev_b32_e32 v4, 6, v4
	v_add_u32_e32 v4, vcc, v4, v5
	v_add_u32_e32 v4, vcc, 0x490, v4
	s_mov_b32 s0, 14
	s_branch BB0_10
BB0_9:                                  ;   in Loop: Header=BB0_10 Depth=1
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s0, -1
	v_add_u32_e32 v2, vcc, 4, v2
	v_add_u32_e32 v3, vcc, 4, v3
	s_cmp_lg_u32 s0, -1
	v_add_u32_e32 v4, vcc, 4, v4
	s_cbranch_scc0 BB0_12
BB0_10:                                 ; =>This Inner Loop Header: Depth=1
	v_cmp_ge_u32_e32 vcc, s0, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz BB0_9
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	ds_read2_b32 v[5:6], v3 offset0:1 offset1:2
	ds_read_b32 v7, v4 offset:4
	ds_read_b32 v8, v2 offset:4
	s_waitcnt lgkmcnt(1)
	v_add_u32_e32 v5, vcc, v7, v5
	s_waitcnt lgkmcnt(0)
	v_subrev_u32_e32 v7, vcc, s9, v8
	v_subrev_u32_e32 v6, vcc, s9, v6
	v_max3_i32 v5, v5, v7, v6
	ds_write_b32 v2, v5 offset:8
	s_branch BB0_9
BB0_12:                                 ; %.preheader.preheader
	v_lshlrev_b32_e32 v0, 2, v0
	s_movk_i32 s0, 0xfbc0
BB0_13:                                 ; %.preheader
                                        ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v3, vcc, s0, v0
	v_ashrrev_i32_e32 v2, 31, v1
	v_mov_b32_e32 v4, s3
	s_addk_i32 s0, 0x44
	ds_read_b32 v5, v3 offset:1160
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	v_add_u32_e32 v1, vcc, s8, v1
	s_cmp_eq_u32 s0, 0
	v_add_u32_e32 v2, vcc, s2, v2
	v_addc_u32_e32 v3, vcc, v4, v3, vcc
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[2:3], v5
	s_cbranch_scc0 BB0_13
; %bb.14:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z20needle_cuda_shared_1PiS_iiii
		.amdhsa_group_segment_fixed_size 2192
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
		.amdhsa_next_free_vgpr 9
		.amdhsa_next_free_sgpr 14
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
	.size	_Z20needle_cuda_shared_1PiS_iiii, .Lfunc_end0-_Z20needle_cuda_shared_1PiS_iiii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 768
; NumSgprs: 18
; NumVgprs: 9
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 2192 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 18
; NumVGPRsForWavesPerEU: 9
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z20needle_cuda_shared_2PiS_iiii ; -- Begin function _Z20needle_cuda_shared_2PiS_iiii
	.globl	_Z20needle_cuda_shared_2PiS_iiii
	.p2align	8
	.type	_Z20needle_cuda_shared_2PiS_iiii,@function
_Z20needle_cuda_shared_2PiS_iiii:       ; @_Z20needle_cuda_shared_2PiS_iiii
_Z20needle_cuda_shared_2PiS_iiii$local:
; %bb.0:
	s_load_dwordx4 s[0:3], s[4:5], 0x0
	s_load_dwordx4 s[8:11], s[4:5], 0x10
	s_not_b32 s4, s6
	s_waitcnt lgkmcnt(0)
	s_sub_i32 s5, s6, s10
	s_add_i32 s5, s5, s11
	s_add_i32 s4, s4, s11
	s_mul_i32 s4, s8, s4
	s_lshl_b32 s4, s4, 4
	s_lshl_b32 s5, s5, 4
	s_add_i32 s4, s4, s5
	v_add_u32_e32 v1, vcc, s4, v0
	v_add_u32_e32 v2, vcc, 1, v1
	v_add_u32_e32 v1, vcc, s8, v2
	v_lshlrev_b32_e32 v3, 2, v0
	s_mov_b32 s5, 0
	v_mov_b32_e32 v4, v1
	s_mov_b32 m0, -1
BB1_1:                                  ; =>This Inner Loop Header: Depth=1
	v_ashrrev_i32_e32 v5, 31, v4
	v_mov_b32_e32 v7, s1
	v_lshlrev_b64 v[5:6], 2, v[4:5]
	v_add_u32_e32 v5, vcc, s0, v5
	v_addc_u32_e32 v6, vcc, v7, v6, vcc
	flat_load_dword v5, v[5:6]
	v_add_u32_e32 v6, vcc, s5, v3
	s_add_i32 s5, s5, 64
	v_add_u32_e32 v4, vcc, s8, v4
	s_cmpk_eq_i32 s5, 0x400
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v6, v5
	s_cbranch_scc0 BB1_1
; %bb.2:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s0, 0
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz BB1_4
; %bb.3:
	s_ashr_i32 s5, s4, 31
	s_lshl_b64 s[10:11], s[4:5], 2
	s_add_u32 s10, s2, s10
	s_addc_u32 s11, s3, s11
	v_mov_b32_e32 v3, s10
	v_mov_b32_e32 v4, s11
	flat_load_dword v3, v[3:4]
	v_mov_b32_e32 v4, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v4, v3 offset:1024
BB1_4:
	s_or_b64 exec, exec, s[6:7]
	v_mul_lo_u32 v3, v0, s8
	s_add_i32 s1, s4, s8
	v_mov_b32_e32 v5, s3
	v_add_u32_e32 v3, vcc, s1, v3
	v_ashrrev_i32_e32 v4, 31, v3
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	v_add_u32_e32 v3, vcc, s2, v3
	v_addc_u32_e32 v4, vcc, v5, v4, vcc
	flat_load_dword v4, v[3:4]
	s_movk_i32 s1, 0x44
	v_ashrrev_i32_e32 v3, 31, v2
	v_mul_u32_u24_e32 v6, s1, v0
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_u32_e32 v2, vcc, s2, v2
	v_addc_u32_e32 v3, vcc, v5, v3, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v6, v4 offset:1092
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	flat_load_dword v3, v[2:3]
	s_movk_i32 s4, 0x400
	v_lshlrev_b32_e32 v4, 6, v0
	v_mul_i32_i24_e32 v2, 0xffffffc4, v0
	v_mov_b32_e32 v5, s4
	v_mad_u32_u24 v5, v0, s1, v5
	v_sub_u32_e32 v5, vcc, v5, v4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v5, v3 offset:4
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_sub_u32_e32 v3, vcc, s4, v4
	s_branch BB1_6
BB1_5:                                  ;   in Loop: Header=BB1_6 Depth=1
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s0, 1
	v_add_u32_e32 v2, vcc, 64, v2
	s_cmp_eq_u32 s0, 16
	v_add_u32_e32 v3, vcc, s1, v3
	s_cbranch_scc1 BB1_8
BB1_6:                                  ; =>This Inner Loop Header: Depth=1
	v_cmp_ge_u32_e32 vcc, s0, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz BB1_5
; %bb.7:                                ;   in Loop: Header=BB1_6 Depth=1
	ds_read_b32 v6, v2
	ds_read2_b32 v[4:5], v3 offset1:1
	ds_read_b32 v7, v3 offset:68
	s_waitcnt lgkmcnt(1)
	v_add_u32_e32 v4, vcc, v6, v4
	s_waitcnt lgkmcnt(0)
	v_subrev_u32_e32 v6, vcc, s9, v7
	v_subrev_u32_e32 v5, vcc, s9, v5
	v_max3_i32 v4, v4, v6, v5
	ds_write_b32 v3, v4 offset:72
	s_branch BB1_5
BB1_8:                                  ; %.preheader130
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, 0
	v_sub_u32_e32 v3, vcc, 0, v3
	v_subb_u32_e64 v4, s[0:1], 15, v2, vcc
	v_subb_u32_e32 v2, vcc, 16, v2, vcc
	v_lshlrev_b32_e32 v5, 2, v0
	s_movk_i32 s0, 0x44
	v_mad_i32_i24 v2, v2, s0, v5
	s_movk_i32 s1, 0x400
	v_add_u32_e32 v2, vcc, s1, v2
	v_mad_i32_i24 v3, v4, s0, v5
	v_add_u32_e32 v3, vcc, s1, v3
	v_lshlrev_b32_e32 v4, 6, v4
	v_add_u32_e32 v4, vcc, v4, v5
	s_mov_b32 s0, 14
	s_branch BB1_10
BB1_9:                                  ;   in Loop: Header=BB1_10 Depth=1
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s0, -1
	v_add_u32_e32 v2, vcc, 4, v2
	v_add_u32_e32 v3, vcc, 4, v3
	s_cmp_lg_u32 s0, -1
	v_add_u32_e32 v4, vcc, 4, v4
	s_cbranch_scc0 BB1_12
BB1_10:                                 ; =>This Inner Loop Header: Depth=1
	v_cmp_ge_u32_e32 vcc, s0, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz BB1_9
; %bb.11:                               ;   in Loop: Header=BB1_10 Depth=1
	ds_read2_b32 v[5:6], v3 offset0:1 offset1:2
	ds_read_b32 v7, v4 offset:4
	ds_read_b32 v8, v2 offset:4
	s_waitcnt lgkmcnt(1)
	v_add_u32_e32 v5, vcc, v7, v5
	s_waitcnt lgkmcnt(0)
	v_subrev_u32_e32 v7, vcc, s9, v8
	v_subrev_u32_e32 v6, vcc, s9, v6
	v_max3_i32 v5, v5, v7, v6
	ds_write_b32 v2, v5 offset:8
	s_branch BB1_9
BB1_12:                                 ; %.preheader.preheader
	v_lshlrev_b32_e32 v0, 2, v0
	v_or_b32_e32 v0, 0x400, v0
	s_movk_i32 s0, 0xfbc0
BB1_13:                                 ; %.preheader
                                        ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v3, vcc, s0, v0
	v_ashrrev_i32_e32 v2, 31, v1
	v_mov_b32_e32 v4, s3
	s_addk_i32 s0, 0x44
	ds_read_b32 v5, v3 offset:1160
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	v_add_u32_e32 v1, vcc, s8, v1
	s_cmp_eq_u32 s0, 0
	v_add_u32_e32 v2, vcc, s2, v2
	v_addc_u32_e32 v3, vcc, v4, v3, vcc
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[2:3], v5
	s_cbranch_scc0 BB1_13
; %bb.14:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z20needle_cuda_shared_2PiS_iiii
		.amdhsa_group_segment_fixed_size 2180
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
		.amdhsa_next_free_vgpr 9
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
	.size	_Z20needle_cuda_shared_2PiS_iiii, .Lfunc_end1-_Z20needle_cuda_shared_2PiS_iiii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 784
; NumSgprs: 16
; NumVgprs: 9
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 2180 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 16
; NumVGPRsForWavesPerEU: 9
; Occupancy: 10
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
      - .offset:         28
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
    .group_segment_fixed_size: 2192
    .kernarg_segment_align: 8
    .kernarg_segment_size: 88
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z20needle_cuda_shared_1PiS_iiii
    .private_segment_fixed_size: 0
    .sgpr_count:     18
    .sgpr_spill_count: 0
    .symbol:         _Z20needle_cuda_shared_1PiS_iiii.kd
    .vgpr_count:     9
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
      - .offset:         28
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
    .group_segment_fixed_size: 2180
    .kernarg_segment_align: 8
    .kernarg_segment_size: 88
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z20needle_cuda_shared_2PiS_iiii
    .private_segment_fixed_size: 0
    .sgpr_count:     16
    .sgpr_spill_count: 0
    .symbol:         _Z20needle_cuda_shared_2PiS_iiii.kd
    .vgpr_count:     9
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
