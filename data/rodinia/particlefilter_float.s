	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z17find_index_kernelPdS_S_S_S_S_S_i ; -- Begin function _Z17find_index_kernelPdS_S_S_S_S_S_i
	.globl	_Z17find_index_kernelPdS_S_S_S_S_S_i
	.p2align	8
	.type	_Z17find_index_kernelPdS_S_S_S_S_S_i,@function
_Z17find_index_kernelPdS_S_S_S_S_S_i:   ; @_Z17find_index_kernelPdS_S_S_S_S_S_i
_Z17find_index_kernelPdS_S_S_S_S_S_i$local:
; %bb.0:
	v_mov_b32_e32 v1, 0
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	v_mov_b32_e32 v2, s8
	v_mad_u64_u32 v[0:1], s[0:1], s0, v2, v[0:1]
	s_load_dword s2, s[6:7], 0x38
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s2, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB0_8
; %bb.1:                                ; %.preheader
	s_load_dwordx8 s[12:19], s[6:7], 0x0
	s_load_dwordx4 s[8:11], s[6:7], 0x20
	s_cmp_lt_i32 s2, 1
	v_mov_b32_e32 v1, -1
	s_cbranch_scc1 BB0_7
; %bb.2:                                ; %.lr.ph
	s_mov_b32 s3, 0
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, v0
	v_ashrrev_i64 v[1:2], 29, v[1:2]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, s19
	v_add_u32_e32 v1, vcc, s18, v1
	v_addc_u32_e32 v2, vcc, v3, v2, vcc
	flat_load_dwordx2 v[2:3], v[1:2]
	s_mov_b64 s[4:5], 0
                                        ; implicit-def: $sgpr6_sgpr7
	s_branch BB0_4
BB0_3:                                  ; %Flow
                                        ;   in Loop: Header=BB0_4 Depth=1
	s_or_b64 exec, exec, s[18:19]
	s_and_b64 s[18:19], exec, s[6:7]
	s_or_b64 s[4:5], s[18:19], s[4:5]
	s_andn2_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_6
BB0_4:                                  ; =>This Inner Loop Header: Depth=1
	s_load_dwordx2 s[18:19], s[16:17], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_nge_f64_e32 vcc, s[18:19], v[2:3]
	v_mov_b32_e32 v1, s3
	s_or_b64 s[6:7], s[6:7], exec
	s_and_saveexec_b64 s[18:19], vcc
	s_cbranch_execz BB0_3
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	s_add_i32 s3, s3, 1
	s_add_u32 s16, s16, 8
	s_addc_u32 s17, s17, 0
	v_mov_b32_e32 v1, s3
	v_cmp_eq_u32_e32 vcc, s2, v1
	v_mov_b32_e32 v1, -1
	s_andn2_b64 s[6:7], s[6:7], exec
	s_and_b64 s[20:21], vcc, exec
	s_or_b64 s[6:7], s[6:7], s[20:21]
	s_branch BB0_3
BB0_6:                                  ; %Flow61
	s_or_b64 exec, exec, s[4:5]
BB0_7:                                  ; %._crit_edge
	s_add_i32 s2, s2, -1
	v_mov_b32_e32 v2, s2
	v_cmp_eq_u32_e32 vcc, -1, v1
	v_cndmask_b32_e32 v1, v1, v2, vcc
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 3, v[1:2]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, s13
	v_add_u32_e32 v3, vcc, s12, v1
	v_addc_u32_e32 v4, vcc, v4, v2, vcc
	flat_load_dwordx2 v[3:4], v[3:4]
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v6, v0
	v_mov_b32_e32 v0, s9
	v_mov_b32_e32 v9, s15
	v_ashrrev_i64 v[5:6], 29, v[5:6]
	v_add_u32_e32 v7, vcc, s8, v5
	v_addc_u32_e32 v8, vcc, v0, v6, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[7:8], v[3:4]
	v_add_u32_e32 v0, vcc, s14, v1
	v_addc_u32_e32 v1, vcc, v9, v2, vcc
	flat_load_dwordx2 v[0:1], v[0:1]
	v_mov_b32_e32 v3, s11
	v_add_u32_e32 v2, vcc, s10, v5
	v_addc_u32_e32 v3, vcc, v3, v6, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[2:3], v[0:1]
BB0_8:                                  ; %Flow63
	s_or_b64 exec, exec, s[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z17find_index_kernelPdS_S_S_S_S_S_i
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
		.amdhsa_next_free_vgpr 10
		.amdhsa_next_free_sgpr 22
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
	.size	_Z17find_index_kernelPdS_S_S_S_S_S_i, .Lfunc_end0-_Z17find_index_kernelPdS_S_S_S_S_S_i
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 392
; NumSgprs: 26
; NumVgprs: 10
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 26
; NumVGPRsForWavesPerEU: 10
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z24normalize_weights_kernelPdiS_S_S_Pi ; -- Begin function _Z24normalize_weights_kernelPdiS_S_S_Pi
	.globl	_Z24normalize_weights_kernelPdiS_S_S_Pi
	.p2align	8
	.type	_Z24normalize_weights_kernelPdiS_S_S_Pi,@function
_Z24normalize_weights_kernelPdiS_S_S_Pi: ; @_Z24normalize_weights_kernelPdiS_S_S_Pi
_Z24normalize_weights_kernelPdiS_S_S_Pi$local:
; %bb.0:
	s_load_dwordx2 s[10:11], s[6:7], 0x0
	s_load_dword s9, s[6:7], 0x8
	s_load_dwordx8 s[12:19], s[6:7], 0x10
	s_load_dword s2, s[4:5], 0x4
	v_cmp_eq_u32_e64 s[0:1], 0, v0
	s_mov_b32 m0, -1
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB1_2
; %bb.1:
	s_waitcnt lgkmcnt(0)
	s_load_dwordx2 s[6:7], s[12:13], 0x0
	v_mov_b32_e32 v3, 0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, s6
	v_mov_b32_e32 v2, s7
	ds_write_b64 v3, v[1:2]
BB1_2:
	s_or_b64 exec, exec, s[4:5]
	v_mov_b32_e32 v1, 0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s2, 0xffff, s2
	v_mov_b32_e32 v2, s8
	v_mad_u64_u32 v[2:3], s[2:3], s2, v2, v[0:1]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s[2:3], s9, v2
	v_ashrrev_i32_e32 v1, 31, v2
	v_mov_b32_e32 v0, v2
	s_and_saveexec_b64 s[4:5], s[2:3]
	s_cbranch_execz BB1_4
; %bb.3:
	v_lshlrev_b64 v[3:4], 3, v[0:1]
	v_mov_b32_e32 v5, s11
	v_add_u32_e32 v3, vcc, s10, v3
	v_addc_u32_e32 v4, vcc, v5, v4, vcc
	flat_load_dwordx2 v[5:6], v[3:4]
	v_mov_b32_e32 v7, 0
	ds_read_b64 v[7:8], v7
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_div_scale_f64 v[9:10], s[6:7], v[7:8], v[7:8], v[5:6]
	v_rcp_f64_e32 v[11:12], v[9:10]
	v_fma_f64 v[13:14], -v[9:10], v[11:12], 1.0
	v_fma_f64 v[11:12], v[11:12], v[13:14], v[11:12]
	v_fma_f64 v[13:14], -v[9:10], v[11:12], 1.0
	v_div_scale_f64 v[15:16], vcc, v[5:6], v[7:8], v[5:6]
	v_fma_f64 v[11:12], v[11:12], v[13:14], v[11:12]
	v_mul_f64 v[13:14], v[15:16], v[11:12]
	v_fma_f64 v[9:10], -v[9:10], v[13:14], v[15:16]
	s_nop 0
	v_div_fmas_f64 v[9:10], v[9:10], v[11:12], v[13:14]
	v_div_fixup_f64 v[5:6], v[9:10], v[7:8], v[5:6]
	flat_store_dwordx2 v[3:4], v[5:6]
BB1_4:
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, 0, v2
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz BB1_9
; %bb.5:
	v_mov_b32_e32 v3, s10
	v_mov_b32_e32 v4, s11
	flat_load_dwordx2 v[3:4], v[3:4]
	v_mov_b32_e32 v5, s14
	v_mov_b32_e32 v6, s15
	s_cmp_lt_i32 s9, 2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[5:6], v[3:4]
	s_cbranch_scc1 BB1_8
; %bb.6:                                ; %.lr.ph.preheader
	v_mov_b32_e32 v3, s14
	v_mov_b32_e32 v4, s15
	flat_load_dwordx2 v[3:4], v[3:4]
	s_add_u32 s6, s10, 8
	s_addc_u32 s7, s11, 0
	s_add_u32 s10, s14, 8
	s_addc_u32 s11, s15, 0
	s_add_i32 s8, s9, -1
BB1_7:                                  ; %.lr.ph
                                        ; =>This Inner Loop Header: Depth=1
	v_mov_b32_e32 v5, s6
	v_mov_b32_e32 v6, s7
	flat_load_dwordx2 v[5:6], v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f64 v[3:4], v[5:6], v[3:4]
	v_mov_b32_e32 v5, s10
	v_mov_b32_e32 v6, s11
	s_add_u32 s6, s6, 8
	s_addc_u32 s7, s7, 0
	s_add_u32 s10, s10, 8
	s_addc_u32 s11, s11, 0
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	flat_store_dwordx2 v[5:6], v[3:4]
	s_cbranch_scc1 BB1_7
BB1_8:                                  ; %_Z7cdfCalcPdS_i.exit
	v_cvt_f64_i32_e32 v[3:4], s9
	v_div_scale_f64 v[5:6], s[6:7], v[3:4], v[3:4], 1.0
	v_rcp_f64_e32 v[7:8], v[5:6]
	v_fma_f64 v[9:10], -v[5:6], v[7:8], 1.0
	v_fma_f64 v[7:8], v[7:8], v[9:10], v[7:8]
	v_div_scale_f64 v[9:10], vcc, 1.0, v[3:4], 1.0
	v_fma_f64 v[11:12], -v[5:6], v[7:8], 1.0
	v_fma_f64 v[7:8], v[7:8], v[11:12], v[7:8]
	v_mul_f64 v[11:12], v[9:10], v[7:8]
	v_mov_b32_e32 v13, s18
	v_mov_b32_e32 v14, s19
	v_fma_f64 v[5:6], -v[5:6], v[11:12], v[9:10]
	flat_load_dword v9, v[13:14]
	s_mov_b32 s6, 0x41c64e6d
	s_mov_b32 s7, 0x40000001
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_lo_u32 v9, v9, s6
	v_div_fmas_f64 v[5:6], v[5:6], v[7:8], v[11:12]
	v_add_u32_e32 v7, vcc, 0x3039, v9
	v_mul_hi_i32 v8, v7, s7
	s_brev_b32 s6, -2
	v_lshrrev_b32_e32 v9, 31, v8
	v_ashrrev_i32_e32 v8, 29, v8
	v_add_u32_e32 v8, vcc, v8, v9
	v_mul_lo_u32 v8, v8, s6
	v_subrev_u32_e32 v19, vcc, v8, v7
	v_cvt_f64_i32_e32 v[7:8], v19
	s_mov_b32 s7, 0x41dfffff
	s_mov_b32 s6, 0xffc00000
	v_div_scale_f64 v[9:10], s[10:11], s[6:7], s[6:7], v[7:8]
	v_rcp_f64_e32 v[11:12], v[9:10]
	v_fma_f64 v[15:16], -v[9:10], v[11:12], 1.0
	v_fma_f64 v[11:12], v[11:12], v[15:16], v[11:12]
	v_fma_f64 v[15:16], -v[9:10], v[11:12], 1.0
	v_div_scale_f64 v[17:18], vcc, v[7:8], s[6:7], v[7:8]
	v_fma_f64 v[11:12], v[11:12], v[15:16], v[11:12]
	v_mul_f64 v[15:16], v[17:18], v[11:12]
	v_fma_f64 v[9:10], -v[9:10], v[15:16], v[17:18]
	s_nop 0
	v_div_fmas_f64 v[9:10], v[9:10], v[11:12], v[15:16]
	v_div_fixup_f64 v[3:4], v[5:6], v[3:4], 1.0
	v_div_fixup_f64 v[5:6], v[9:10], s[6:7], v[7:8]
	v_mul_f64 v[3:4], v[3:4], |v[5:6]|
	flat_store_dword v[13:14], v19
	v_mov_b32_e32 v5, s16
	v_mov_b32_e32 v6, s17
	flat_store_dwordx2 v[5:6], v[3:4]
BB1_9:                                  ; %Flow55
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_mov_b32 m0, -1
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB1_11
; %bb.10:
	v_mov_b32_e32 v3, s16
	v_mov_b32_e32 v4, s17
	flat_load_dwordx2 v[3:4], v[3:4]
	v_mov_b32_e32 v5, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b64 v5, v[3:4] offset:8
BB1_11:
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], s[2:3]
	s_cbranch_execz BB1_13
; %bb.12:
	v_cvt_f64_i32_e32 v[2:3], v2
	v_cvt_f64_i32_e32 v[4:5], s9
	v_div_scale_f64 v[6:7], s[0:1], v[4:5], v[4:5], v[2:3]
	v_rcp_f64_e32 v[8:9], v[6:7]
	v_fma_f64 v[10:11], -v[6:7], v[8:9], 1.0
	v_fma_f64 v[8:9], v[8:9], v[10:11], v[8:9]
	v_fma_f64 v[10:11], -v[6:7], v[8:9], 1.0
	v_div_scale_f64 v[12:13], vcc, v[2:3], v[4:5], v[2:3]
	v_fma_f64 v[8:9], v[8:9], v[10:11], v[8:9]
	v_mul_f64 v[10:11], v[12:13], v[8:9]
	v_fma_f64 v[6:7], -v[6:7], v[10:11], v[12:13]
	s_nop 0
	v_div_fmas_f64 v[6:7], v[6:7], v[8:9], v[10:11]
	v_div_fixup_f64 v[2:3], v[6:7], v[4:5], v[2:3]
	v_mov_b32_e32 v4, 0
	ds_read_b64 v[4:5], v4 offset:8
	s_waitcnt lgkmcnt(0)
	v_add_f64 v[2:3], v[2:3], v[4:5]
	v_lshlrev_b64 v[0:1], 3, v[0:1]
	v_mov_b32_e32 v4, s17
	v_add_u32_e32 v0, vcc, s16, v0
	v_addc_u32_e32 v1, vcc, v4, v1, vcc
	flat_store_dwordx2 v[0:1], v[2:3]
BB1_13:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z24normalize_weights_kernelPdiS_S_S_Pi
		.amdhsa_group_segment_fixed_size 16
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
	.size	_Z24normalize_weights_kernelPdiS_S_S_Pi, .Lfunc_end1-_Z24normalize_weights_kernelPdiS_S_S_Pi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 1028
; NumSgprs: 24
; NumVgprs: 20
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 16 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 24
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
	.protected	_Z10sum_kernelPdi       ; -- Begin function _Z10sum_kernelPdi
	.globl	_Z10sum_kernelPdi
	.p2align	8
	.type	_Z10sum_kernelPdi,@function
_Z10sum_kernelPdi:                      ; @_Z10sum_kernelPdi
_Z10sum_kernelPdi$local:
; %bb.0:
	s_load_dword s1, s[4:5], 0x4
	s_mov_b32 s0, 0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s1, s1, 0xffff
	s_mul_i32 s8, s8, s1
	v_sub_u32_e32 v0, vcc, 0, v0
	v_cmp_eq_u32_e32 vcc, s8, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz BB2_5
; %bb.1:
	s_load_dword s1, s[6:7], 0x8
	s_waitcnt lgkmcnt(0)
	v_cvt_f64_i32_e32 v[0:1], s1
	s_mov_b32 s1, 0x3f600000
	v_mul_f64 v[0:1], v[0:1], s[0:1]
	v_ceil_f64_e32 v[0:1], v[0:1]
	v_cvt_i32_f64_e32 v2, v[0:1]
	s_load_dwordx2 s[0:1], s[6:7], 0x0
	v_cmp_gt_i32_e32 vcc, 1, v2
	s_and_b64 vcc, exec, vcc
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v1, 0
	s_cbranch_vccnz BB2_4
; %bb.2:                                ; %.lr.ph.preheader
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v1, 0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[2:3], s[0:1]
BB2_3:                                  ; %.lr.ph
                                        ; =>This Inner Loop Header: Depth=1
	s_load_dwordx2 s[4:5], s[2:3], 0x0
	s_waitcnt lgkmcnt(0)
	v_add_f64 v[0:1], v[0:1], s[4:5]
	v_add_u32_e32 v2, vcc, -1, v2
	s_add_u32 s2, s2, 8
	s_addc_u32 s3, s3, 0
	v_cmp_ne_u32_e32 vcc, 0, v2
	s_and_b64 vcc, exec, vcc
	s_cbranch_vccnz BB2_3
BB2_4:                                  ; %._crit_edge
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, s1
	v_mov_b32_e32 v2, s0
	flat_store_dwordx2 v[2:3], v[0:1]
BB2_5:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z10sum_kernelPdi
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
		.amdhsa_next_free_vgpr 4
		.amdhsa_next_free_sgpr 9
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
	.size	_Z10sum_kernelPdi, .Lfunc_end2-_Z10sum_kernelPdi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 196
; NumSgprs: 13
; NumVgprs: 4
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 0
; NumSGPRsForWavesPerEU: 13
; NumVGPRsForWavesPerEU: 4
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_ ; -- Begin function _Z17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_
	.globl	_Z17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_
	.p2align	8
	.type	_Z17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_,@function
_Z17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_: ; @_Z17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_
_Z17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_$local:
; %bb.0:
	s_load_dwordx8 s[36:43], s[6:7], 0x0
	s_load_dwordx8 s[20:27], s[6:7], 0x28
	s_load_dwordx2 s[16:17], s[6:7], 0x50
	s_load_dwordx4 s[28:31], s[6:7], 0x58
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s18, s0, 0xffff
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, s8
	v_mad_u64_u32 v[1:2], s[0:1], s18, v2, v[0:1]
	s_load_dwordx2 s[10:11], s[6:7], 0x68
	s_load_dwordx4 s[12:15], s[6:7], 0x70
	s_mov_b32 s9, 0
	v_cmp_gt_i32_e64 s[0:1], s28, v1
	s_and_saveexec_b64 s[34:35], s[0:1]
	s_cbranch_execz BB3_10
; %bb.1:
	v_cvt_f64_i32_e32 v[6:7], s28
	v_div_scale_f64 v[2:3], s[2:3], v[6:7], v[6:7], 1.0
	v_rcp_f64_e32 v[4:5], v[2:3]
	v_fma_f64 v[8:9], -v[2:3], v[4:5], 1.0
	v_fma_f64 v[4:5], v[4:5], v[8:9], v[4:5]
	v_div_scale_f64 v[8:9], vcc, 1.0, v[6:7], 1.0
	v_fma_f64 v[10:11], -v[2:3], v[4:5], 1.0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v17, s41
	v_mov_b32_e32 v20, s37
	v_mov_b32_e32 v21, s43
	v_mov_b32_e32 v22, s39
	v_mov_b32_e32 v23, s17
	v_fma_f64 v[10:11], v[4:5], v[10:11], v[4:5]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v24, s13
	v_ashrrev_i64 v[14:15], 29, v[12:13]
	v_ashrrev_i64 v[12:13], 30, v[12:13]
	v_add_u32_e64 v16, s[2:3], s40, v14
	v_addc_u32_e64 v17, s[2:3], v17, v15, s[2:3]
	v_mul_f64 v[18:19], v[8:9], v[10:11]
	v_add_u32_e64 v4, s[2:3], s36, v14
	v_addc_u32_e64 v5, s[2:3], v20, v15, s[2:3]
	v_add_u32_e64 v20, s[2:3], s42, v14
	v_addc_u32_e64 v21, s[2:3], v21, v15, s[2:3]
	v_fma_f64 v[8:9], -v[2:3], v[18:19], v[8:9]
	v_add_u32_e64 v2, s[2:3], s38, v14
	v_addc_u32_e64 v3, s[2:3], v22, v15, s[2:3]
	v_add_u32_e64 v14, s[2:3], s16, v14
	v_addc_u32_e64 v15, s[2:3], v23, v15, s[2:3]
	v_div_fmas_f64 v[8:9], v[8:9], v[10:11], v[18:19]
	flat_load_dwordx2 v[10:11], v[16:17]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[4:5], v[10:11]
	v_div_fixup_f64 v[8:9], v[8:9], v[6:7], 1.0
	flat_load_dwordx2 v[10:11], v[20:21]
	v_add_u32_e32 v6, vcc, s12, v12
	v_addc_u32_e32 v7, vcc, v24, v13, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[2:3], v[10:11]
	flat_store_dwordx2 v[14:15], v[8:9]
	flat_load_dword v8, v[6:7]
	s_mov_b32 s2, 0x41c64e6d
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_lo_u32 v8, v8, s2
	s_movk_i32 s5, 0x3039
	s_mov_b32 s3, 0x40000001
	v_add_u32_e32 v8, vcc, s5, v8
	v_mul_hi_i32 v9, v8, s3
	s_brev_b32 s4, -2
	v_lshrrev_b32_e32 v10, 31, v9
	v_ashrrev_i32_e32 v9, 29, v9
	v_add_u32_e32 v9, vcc, v9, v10
	v_mul_lo_u32 v9, v9, s4
	v_sub_u32_e32 v18, vcc, v8, v9
	v_mul_lo_u32 v8, v18, s2
	v_add_u32_e32 v8, vcc, s5, v8
	v_mul_hi_i32 v9, v8, s3
	v_lshrrev_b32_e32 v10, 31, v9
	v_ashrrev_i32_e32 v9, 29, v9
	v_add_u32_e32 v9, vcc, v9, v10
	v_mul_lo_u32 v9, v9, s4
	v_sub_u32_e32 v12, vcc, v8, v9
	v_cvt_f64_i32_e32 v[8:9], v12
	s_mov_b32 s3, 0x41dfffff
	s_mov_b32 s2, 0xffc00000
	v_div_scale_f64 v[10:11], s[4:5], s[2:3], s[2:3], v[8:9]
	v_rcp_f64_e32 v[13:14], v[10:11]
	v_fma_f64 v[15:16], -v[10:11], v[13:14], 1.0
	v_fma_f64 v[13:14], v[13:14], v[15:16], v[13:14]
	v_div_scale_f64 v[15:16], vcc, v[8:9], s[2:3], v[8:9]
	v_fma_f64 v[19:20], -v[10:11], v[13:14], 1.0
	v_fma_f64 v[13:14], v[13:14], v[19:20], v[13:14]
	v_mul_f64 v[19:20], v[15:16], v[13:14]
	v_fma_f64 v[10:11], -v[10:11], v[19:20], v[15:16]
	v_div_fmas_f64 v[10:11], v[10:11], v[13:14], v[19:20]
	v_div_fixup_f64 v[8:9], v[10:11], s[2:3], v[8:9]
	s_mov_b32 s5, 0x401921fb
	s_mov_b32 s4, 0x54442d18
	v_mul_f64 v[8:9], |v[8:9]|, s[4:5]
	s_mov_b32 s3, 0x41400000
	s_mov_b32 s2, s9
	v_cmp_ngt_f64_e32 vcc, s[2:3], v[8:9]
	flat_load_dwordx2 v[10:11], v[4:5]
	s_nop 0
	flat_store_dword v[6:7], v12
                                        ; implicit-def: $vgpr14_vgpr15
                                        ; implicit-def: $vgpr16_vgpr17
                                        ; implicit-def: $vgpr13
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[6:7], exec, s[2:3]
	s_cbranch_execz BB3_3
; %bb.2:
	v_trig_preop_f64 v[13:14], v[8:9], 1
	s_mov_b32 s2, 0
	v_trig_preop_f64 v[15:16], v[8:9], 2
	s_mov_b32 s3, 0x7b000000
	s_movk_i32 s5, 0xff80
	v_ldexp_f64 v[19:20], v[8:9], s5
	v_cmp_le_f64_e32 vcc, s[2:3], v[8:9]
	v_trig_preop_f64 v[21:22], v[8:9], 0
	v_cndmask_b32_e32 v20, v9, v20, vcc
	v_cndmask_b32_e32 v19, v8, v19, vcc
	v_mul_f64 v[23:24], v[13:14], v[19:20]
	v_mul_f64 v[15:16], v[15:16], v[19:20]
	v_fma_f64 v[13:14], v[13:14], v[19:20], -v[23:24]
	v_mul_f64 v[25:26], v[21:22], v[19:20]
	v_add_f64 v[27:28], v[15:16], v[13:14]
	v_fma_f64 v[19:20], v[21:22], v[19:20], -v[25:26]
	v_add_f64 v[21:22], v[23:24], v[27:28]
	v_add_f64 v[29:30], v[19:20], v[21:22]
	v_add_f64 v[31:32], v[25:26], v[29:30]
	v_add_f64 v[25:26], v[31:32], -v[25:26]
	v_add_f64 v[33:34], v[29:30], -v[21:22]
	v_add_f64 v[25:26], v[29:30], -v[25:26]
	v_add_f64 v[29:30], v[29:30], -v[33:34]
	v_add_f64 v[35:36], v[31:32], v[25:26]
	v_add_f64 v[19:20], v[19:20], -v[33:34]
	v_add_f64 v[29:30], v[21:22], -v[29:30]
	v_add_f64 v[31:32], v[35:36], -v[31:32]
	v_add_f64 v[19:20], v[19:20], v[29:30]
	v_add_f64 v[25:26], v[25:26], -v[31:32]
	v_add_f64 v[29:30], v[19:20], v[25:26]
	v_add_f64 v[31:32], v[35:36], v[29:30]
	v_add_f64 v[21:22], v[21:22], -v[23:24]
	v_add_f64 v[23:24], v[29:30], -v[25:26]
	v_add_f64 v[25:26], v[31:32], -v[35:36]
	v_ldexp_f64 v[31:32], v[31:32], -16
	v_add_f64 v[21:22], v[27:28], -v[21:22]
	v_add_f64 v[19:20], v[19:20], -v[23:24]
	s_movk_i32 s2, 0x204
	v_add_f64 v[23:24], v[29:30], -v[25:26]
	v_fract_f64_e32 v[25:26], v[31:32]
	v_cmp_class_f64_e64 s[2:3], v[31:32], s2
	v_add_f64 v[29:30], v[21:22], v[19:20]
	v_cndmask_b32_e64 v26, v26, 0, s[2:3]
	v_cndmask_b32_e64 v25, v25, 0, s[2:3]
	v_add_f64 v[31:32], v[23:24], v[29:30]
	v_ldexp_f64 v[25:26], v[25:26], 16
	v_add_f64 v[33:34], v[31:32], v[25:26]
	v_mov_b32_e32 v17, 0x40f00000
	v_mov_b32_e32 v35, 0
	v_cmp_gt_f64_e32 vcc, 0, v[33:34]
	v_cndmask_b32_e32 v36, 0, v17, vcc
	v_add_f64 v[25:26], v[25:26], v[35:36]
	v_add_f64 v[33:34], v[27:28], -v[15:16]
	v_add_f64 v[36:37], v[31:32], v[25:26]
	v_add_f64 v[27:28], v[27:28], -v[33:34]
	v_cvt_i32_f64_e32 v36, v[36:37]
	v_add_f64 v[13:14], v[13:14], -v[33:34]
	v_add_f64 v[15:16], v[15:16], -v[27:28]
	v_cvt_f64_i32_e32 v[27:28], v36
	v_add_f64 v[19:20], v[29:30], -v[19:20]
	v_add_f64 v[25:26], v[25:26], -v[27:28]
	v_add_f64 v[13:14], v[13:14], v[15:16]
	v_add_f64 v[15:16], v[21:22], -v[19:20]
	v_add_f64 v[19:20], v[31:32], -v[23:24]
	v_add_f64 v[21:22], v[31:32], v[25:26]
	v_add_f64 v[13:14], v[13:14], v[15:16]
	v_add_f64 v[15:16], v[29:30], -v[19:20]
	v_add_f64 v[19:20], v[21:22], -v[25:26]
	v_add_f64 v[14:15], v[15:16], v[13:14]
	v_cmp_le_f64_e32 vcc, 0.5, v[21:22]
	v_add_f64 v[16:17], v[31:32], -v[19:20]
	v_mov_b32_e32 v19, 0x3ff00000
	v_addc_u32_e64 v13, s[2:3], 0, v36, vcc
	v_cndmask_b32_e32 v36, 0, v19, vcc
	v_add_f64 v[14:15], v[14:15], v[16:17]
	v_add_f64 v[16:17], v[21:22], -v[35:36]
	v_add_f64 v[19:20], v[16:17], v[14:15]
	s_mov_b32 s5, 0x3ff921fb
	v_mul_f64 v[21:22], v[19:20], s[4:5]
	v_add_f64 v[16:17], v[19:20], -v[16:17]
	v_fma_f64 v[23:24], v[19:20], s[4:5], -v[21:22]
	v_add_f64 v[14:15], v[14:15], -v[16:17]
	s_mov_b32 s3, 0x3c91a626
	s_mov_b32 s2, 0x33145c07
	v_fma_f64 v[16:17], v[19:20], s[2:3], v[23:24]
	v_fma_f64 v[16:17], v[14:15], s[4:5], v[16:17]
	v_add_f64 v[14:15], v[21:22], v[16:17]
	v_add_f64 v[19:20], v[14:15], -v[21:22]
	v_add_f64 v[16:17], v[16:17], -v[19:20]
BB3_3:                                  ; %Flow229
	s_or_saveexec_b64 s[2:3], s[6:7]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB3_5
; %bb.4:
	s_mov_b32 s5, 0x3fe45f30
	s_mov_b32 s4, 0x6dc9c883
	v_mul_f64 v[13:14], v[8:9], s[4:5]
	v_rndne_f64_e32 v[19:20], v[13:14]
	s_mov_b32 s5, 0xbff921fb
	s_mov_b32 s4, 0x54442d18
	s_mov_b32 s7, 0xbc91a626
	s_mov_b32 s6, 0x33145c00
	v_fma_f64 v[13:14], v[19:20], s[4:5], v[8:9]
	v_mul_f64 v[15:16], v[19:20], s[6:7]
	v_add_f64 v[21:22], v[13:14], v[15:16]
	v_add_f64 v[23:24], v[13:14], -v[21:22]
	v_fma_f64 v[25:26], v[19:20], s[6:7], v[13:14]
	v_add_f64 v[13:14], v[23:24], v[15:16]
	v_add_f64 v[21:22], v[21:22], -v[25:26]
	s_mov_b32 s7, 0x3c91a626
	v_fma_f64 v[15:16], v[19:20], s[6:7], v[15:16]
	v_add_f64 v[13:14], v[21:22], v[13:14]
	v_add_f64 v[13:14], v[13:14], -v[15:16]
	s_mov_b32 s5, 0xb97b839a
	s_mov_b32 s4, 0x252049c0
	v_fma_f64 v[16:17], v[19:20], s[4:5], v[13:14]
	v_add_f64 v[14:15], v[25:26], v[16:17]
	v_add_f64 v[21:22], v[14:15], -v[25:26]
	v_add_f64 v[16:17], v[16:17], -v[21:22]
	v_cvt_i32_f64_e32 v13, v[19:20]
BB3_5:                                  ; %_Z7d_randnPii.exit139
	s_or_b64 exec, exec, s[2:3]
	v_cvt_f64_i32_e32 v[18:19], v18
	s_mov_b32 s13, 0x41dfffff
	s_mov_b32 s12, 0xffc00000
	v_div_scale_f64 v[20:21], s[2:3], s[12:13], s[12:13], v[18:19]
	v_rcp_f64_e32 v[22:23], v[20:21]
	v_fma_f64 v[24:25], -v[20:21], v[22:23], 1.0
	v_fma_f64 v[22:23], v[22:23], v[24:25], v[22:23]
	v_div_scale_f64 v[24:25], vcc, v[18:19], s[12:13], v[18:19]
	v_fma_f64 v[26:27], -v[20:21], v[22:23], 1.0
	v_mul_f64 v[28:29], v[14:15], v[14:15]
	v_fma_f64 v[22:23], v[22:23], v[26:27], v[22:23]
	v_mov_b32_e32 v26, 0xb42fdfa7
	v_mov_b32_e32 v27, 0xbe5ae600
	s_mov_b32 s3, 0x3de5e0b2
	s_mov_b32 s2, 0xf9a43bb8
	v_fma_f64 v[26:27], v[28:29], s[2:3], v[26:27]
	v_mul_f64 v[30:31], v[24:25], v[22:23]
	s_mov_b32 s3, 0x3ec71de3
	s_mov_b32 s2, 0x796cde01
	s_mov_b32 s5, 0xbf2a01a0
	s_mov_b32 s4, 0x19e83e5c
	s_mov_b32 s7, 0x3f811111
	v_fma_f64 v[26:27], v[28:29], v[26:27], s[2:3]
	v_mov_b32_e32 v32, 0x9037ab78
	v_fma_f64 v[20:21], -v[20:21], v[30:31], v[24:25]
	v_mov_b32_e32 v33, 0x3e21eeb6
	s_mov_b32 s3, 0xbda907db
	s_mov_b32 s2, 0x46cc5e42
	v_fma_f64 v[24:25], v[28:29], s[2:3], v[32:33]
	s_mov_b32 s6, 0x11110bb3
	v_fma_f64 v[26:27], v[28:29], v[26:27], s[4:5]
	v_div_fmas_f64 v[20:21], v[20:21], v[22:23], v[30:31]
	v_mul_f64 v[22:23], v[16:17], 0.5
	s_mov_b32 s3, 0xbe927e4f
	s_mov_b32 s2, 0xa17f65f6
	v_fma_f64 v[24:25], v[28:29], v[24:25], s[2:3]
	v_mul_f64 v[30:31], v[14:15], -v[28:29]
	v_fma_f64 v[26:27], v[28:29], v[26:27], s[6:7]
	s_mov_b32 s3, 0x3efa01a0
	s_mov_b32 s2, 0x19f4ec90
	v_fma_f64 v[24:25], v[28:29], v[24:25], s[2:3]
	v_fma_f64 v[22:23], v[30:31], v[26:27], v[22:23]
	v_div_fixup_f64 v[19:20], v[20:21], s[12:13], v[18:19]
	s_mov_b32 s3, 0xbf56c16c
	s_mov_b32 s2, 0x16c16967
	v_fma_f64 v[24:25], v[28:29], v[24:25], s[2:3]
	v_fma_f64 v[21:22], v[28:29], v[22:23], -v[16:17]
	v_frexp_mant_f64_e64 v[26:27], |v[19:20]|
	s_mov_b32 s3, 0x3fa55555
	s_mov_b32 s2, 0x55555555
	v_fma_f64 v[23:24], v[28:29], v[24:25], s[2:3]
	s_mov_b32 s3, 0xbfc55555
	v_fma_f64 v[21:22], v[30:31], s[2:3], v[21:22]
	s_mov_b32 s3, 0x3fe55555
	v_cmp_gt_f64_e32 vcc, s[2:3], v[26:27]
	v_cndmask_b32_e64 v18, 0, 1, vcc
	v_ldexp_f64 v[25:26], v[26:27], v18
	v_add_f64 v[30:31], v[25:26], 1.0
	v_rcp_f64_e32 v[32:33], v[30:31]
	v_fma_f64 v[34:35], -v[30:31], v[32:33], 1.0
	v_fma_f64 v[32:33], v[34:35], v[32:33], v[32:33]
	v_fma_f64 v[34:35], -v[30:31], v[32:33], 1.0
	v_add_f64 v[36:37], v[25:26], -1.0
	v_add_f64 v[38:39], v[30:31], -v[25:26]
	v_fma_f64 v[32:33], v[34:35], v[32:33], v[32:33]
	v_add_f64 v[34:35], v[30:31], -v[38:39]
	v_mul_f64 v[40:41], v[36:37], v[32:33]
	v_add_f64 v[38:39], -v[38:39], 1.0
	v_add_f64 v[25:26], v[25:26], -v[34:35]
	v_mul_f64 v[34:35], v[30:31], v[40:41]
	v_add_f64 v[25:26], v[38:39], v[25:26]
	v_fma_f64 v[30:31], v[40:41], v[30:31], -v[34:35]
	v_fma_f64 v[25:26], v[40:41], v[25:26], v[30:31]
	v_add_f64 v[30:31], v[34:35], v[25:26]
	v_add_f64 v[38:39], v[36:37], -v[30:31]
	v_add_f64 v[34:35], v[30:31], -v[34:35]
	v_add_f64 v[36:37], v[36:37], -v[38:39]
	v_add_f64 v[25:26], v[25:26], -v[34:35]
	v_add_f64 v[30:31], v[36:37], -v[30:31]
	v_add_f64 v[25:26], v[30:31], -v[25:26]
	v_add_f64 v[25:26], v[38:39], v[25:26]
	v_mul_f64 v[25:26], v[32:33], v[25:26]
	v_add_f64 v[30:31], v[40:41], v[25:26]
	v_add_f64 v[32:33], v[30:31], -v[40:41]
	v_mul_f64 v[34:35], v[30:31], v[30:31]
	v_add_f64 v[25:26], v[25:26], -v[32:33]
	v_fma_f64 v[32:33], v[30:31], v[30:31], -v[34:35]
	v_add_f64 v[36:37], v[25:26], v[25:26]
	v_fma_f64 v[32:33], v[30:31], v[36:37], v[32:33]
	v_fma_f64 v[32:33], v[25:26], v[25:26], v[32:33]
	v_add_f64 v[36:37], v[34:35], v[32:33]
	v_mov_b32_e32 v38, 0x6b47b09a
	v_mov_b32_e32 v39, 0x3fc38538
	s_mov_b32 s5, 0x3fc3ab76
	s_mov_b32 s4, 0xbf559e2b
	v_fma_f64 v[38:39], v[36:37], s[4:5], v[38:39]
	s_mov_b32 s5, 0x3fc7474d
	s_mov_b32 s4, 0xd7f4df2e
	v_add_f64 v[34:35], v[36:37], -v[34:35]
	v_fma_f64 v[38:39], v[36:37], v[38:39], s[4:5]
	s_mov_b32 s5, 0x3fcc71c0
	s_mov_b32 s4, 0x16291751
	v_mul_f64 v[40:41], v[25:26], v[36:37]
	v_mul_f64 v[42:43], v[30:31], v[36:37]
	v_add_f64 v[32:33], v[32:33], -v[34:35]
	v_fma_f64 v[34:35], v[36:37], v[38:39], s[4:5]
	s_mov_b32 s5, 0x3fd24924
	s_mov_b32 s4, 0x9b27acf1
	v_fma_f64 v[38:39], v[30:31], v[36:37], -v[42:43]
	v_fma_f64 v[32:33], v[30:31], v[32:33], v[40:41]
	v_fma_f64 v[34:35], v[36:37], v[34:35], s[4:5]
	s_mov_b32 s5, 0x3fd99999
	s_mov_b32 s4, 0x998ef7b6
	v_add_f64 v[32:33], v[38:39], v[32:33]
	v_fma_f64 v[34:35], v[36:37], v[34:35], s[4:5]
	s_mov_b32 s2, 0x55555780
	v_add_f64 v[38:39], v[42:43], v[32:33]
	v_fma_f64 v[34:35], v[36:37], v[34:35], s[2:3]
	v_add_f64 v[36:37], v[38:39], -v[42:43]
	v_mul_f64 v[40:41], v[38:39], v[34:35]
	v_add_f64 v[32:33], v[32:33], -v[36:37]
	v_fma_f64 v[36:37], v[38:39], v[34:35], -v[40:41]
	v_fma_f64 v[32:33], v[32:33], v[34:35], v[36:37]
	v_ldexp_f64 v[30:31], v[30:31], 1
	v_add_f64 v[34:35], v[40:41], v[32:33]
	v_add_f64 v[36:37], v[30:31], v[34:35]
	v_add_f64 v[38:39], v[36:37], -v[30:31]
	v_add_f64 v[40:41], v[34:35], -v[40:41]
	v_add_f64 v[42:43], v[36:37], -v[38:39]
	v_ldexp_f64 v[25:26], v[25:26], 1
	v_add_f64 v[32:33], v[32:33], -v[40:41]
	v_add_f64 v[34:35], v[34:35], -v[38:39]
	v_add_f64 v[30:31], v[30:31], -v[42:43]
	v_add_f64 v[38:39], v[25:26], v[32:33]
	v_add_f64 v[30:31], v[34:35], v[30:31]
	v_frexp_exp_i32_f64_e64 v18, |v[19:20]|
	v_add_f64 v[34:35], v[38:39], -v[25:26]
	v_add_f64 v[30:31], v[38:39], v[30:31]
	v_subbrev_u32_e32 v18, vcc, 0, v18, vcc
	v_add_f64 v[38:39], v[38:39], -v[34:35]
	v_add_f64 v[40:41], v[36:37], v[30:31]
	v_cvt_f64_i32_e32 v[42:43], v18
	s_mov_b32 s3, 0x3fe62e42
	s_mov_b32 s2, 0xfefa39ef
	v_mul_f64 v[44:45], v[42:43], s[2:3]
	v_add_f64 v[32:33], v[32:33], -v[34:35]
	v_add_f64 v[25:26], v[25:26], -v[38:39]
	v_add_f64 v[34:35], v[40:41], -v[36:37]
	v_fma_f64 v[36:37], v[42:43], s[2:3], -v[44:45]
	v_add_f64 v[25:26], v[32:33], v[25:26]
	v_add_f64 v[30:31], v[30:31], -v[34:35]
	s_mov_b32 s3, 0x3c7abc9e
	s_mov_b32 s2, 0x3b39803f
	v_fma_f64 v[32:33], v[42:43], s[2:3], v[36:37]
	v_add_f64 v[25:26], v[25:26], v[30:31]
	v_add_f64 v[30:31], v[44:45], v[32:33]
	v_add_f64 v[34:35], v[40:41], v[25:26]
	v_add_f64 v[36:37], v[30:31], v[34:35]
	v_add_f64 v[38:39], v[36:37], -v[30:31]
	v_add_f64 v[42:43], v[30:31], -v[44:45]
	v_add_f64 v[40:41], v[34:35], -v[40:41]
	v_add_f64 v[44:45], v[36:37], -v[38:39]
	v_add_f64 v[32:33], v[32:33], -v[42:43]
	v_add_f64 v[25:26], v[25:26], -v[40:41]
	v_add_f64 v[34:35], v[34:35], -v[38:39]
	v_add_f64 v[30:31], v[30:31], -v[44:45]
	v_add_f64 v[38:39], v[32:33], v[25:26]
	v_add_f64 v[30:31], v[34:35], v[30:31]
	s_mov_b32 s2, 0x41c64e6d
	v_add_f64 v[34:35], v[38:39], -v[32:33]
	v_add_f64 v[30:31], v[38:39], v[30:31]
	v_mul_lo_u32 v12, v12, s2
	s_movk_i32 s5, 0x3039
	s_mov_b32 s3, 0x40000001
	v_add_u32_e32 v12, vcc, s5, v12
	v_mul_hi_i32 v18, v12, s3
	v_add_f64 v[38:39], v[38:39], -v[34:35]
	v_add_f64 v[40:41], v[36:37], v[30:31]
	s_brev_b32 s4, -2
	v_lshrrev_b32_e32 v27, 31, v18
	v_ashrrev_i32_e32 v18, 29, v18
	v_add_f64 v[25:26], v[25:26], -v[34:35]
	v_add_f64 v[32:33], v[32:33], -v[38:39]
	v_add_f64 v[34:35], v[40:41], -v[36:37]
	v_add_u32_e32 v18, vcc, v18, v27
	v_mul_lo_u32 v18, v18, s4
	v_sub_u32_e32 v18, vcc, v12, v18
	v_add_f64 v[25:26], v[25:26], v[32:33]
	v_add_f64 v[30:31], v[30:31], -v[34:35]
	v_mul_lo_u32 v12, v18, s2
	v_add_u32_e32 v12, vcc, s5, v12
	v_mul_hi_i32 v27, v12, s3
	v_add_f64 v[25:26], v[25:26], v[30:31]
	s_movk_i32 s19, 0x204
	v_lshrrev_b32_e32 v30, 31, v27
	v_ashrrev_i32_e32 v27, 29, v27
	v_add_u32_e32 v27, vcc, v27, v30
	v_mul_lo_u32 v27, v27, s4
	v_and_b32_e32 v34, 0x7fffffff, v20
	v_add_f64 v[25:26], v[40:41], v[25:26]
	v_cmp_class_f64_e64 vcc, v[19:20], s19
	v_sub_u32_e64 v46, s[2:3], v12, v27
	v_cvt_f64_i32_e32 v[30:31], v46
	s_mov_b32 s7, 0x7ff00000
	v_mov_b32_e32 v12, s7
	v_div_scale_f64 v[32:33], s[2:3], s[12:13], s[12:13], v[30:31]
	v_cndmask_b32_e32 v26, v26, v34, vcc
	v_cndmask_b32_e32 v25, v25, v19, vcc
	v_mul_f64 v[25:26], v[25:26], -2.0
	v_cmp_neq_f64_e32 vcc, 0, v[19:20]
	s_mov_b32 s40, 0
	s_brev_b32 s41, 8
	v_mov_b32_e32 v47, 0x3ff00000
	v_mov_b32_e32 v20, 0x4ff00000
	v_mov_b32_e32 v19, 0
	v_mul_f64 v[34:35], v[28:29], -0.5
	v_cndmask_b32_e32 v26, v12, v26, vcc
	v_cndmask_b32_e32 v25, 0, v25, vcc
	v_cmp_gt_f64_e64 s[2:3], s[40:41], v[25:26]
	v_cndmask_b32_e64 v20, v47, v20, s[2:3]
	v_mul_f64 v[25:26], v[25:26], v[19:20]
	v_rcp_f64_e32 v[36:37], v[32:33]
	v_add_f64 v[38:39], v[34:35], 1.0
	v_rsq_f64_e32 v[40:41], v[25:26]
	v_add_f64 v[42:43], -v[38:39], 1.0
	v_fma_f64 v[44:45], -v[32:33], v[36:37], 1.0
	v_add_f64 v[34:35], v[42:43], v[34:35]
	v_mul_f64 v[42:43], v[25:26], v[40:41]
	v_mul_f64 v[40:41], v[40:41], 0.5
	v_fma_f64 v[36:37], v[36:37], v[44:45], v[36:37]
	v_fma_f64 v[44:45], -v[40:41], v[42:43], 0.5
	v_fma_f64 v[16:17], v[14:15], -v[16:17], v[34:35]
	v_fma_f64 v[34:35], -v[32:33], v[36:37], 1.0
	v_fma_f64 v[42:43], v[42:43], v[44:45], v[42:43]
	v_fma_f64 v[34:35], v[36:37], v[34:35], v[36:37]
	v_div_scale_f64 v[36:37], vcc, v[30:31], s[12:13], v[30:31]
	v_fma_f64 v[40:41], v[40:41], v[44:45], v[40:41]
	v_fma_f64 v[44:45], -v[42:43], v[42:43], v[25:26]
	v_mul_f64 v[27:28], v[28:29], v[28:29]
	v_fma_f64 v[42:43], v[44:45], v[40:41], v[42:43]
	v_fma_f64 v[16:17], v[27:28], v[23:24], v[16:17]
	v_mul_f64 v[23:24], v[36:37], v[34:35]
	v_mov_b32_e32 v29, 0x37f00000
	v_and_b32_e32 v44, 1, v13
	s_movk_i32 s28, 0x1f8
	v_fma_f64 v[27:28], -v[42:43], v[42:43], v[25:26]
	v_add_f64 v[16:17], v[38:39], v[16:17]
	v_add_f64 v[14:15], v[14:15], -v[21:22]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_f64 v[10:11], v[10:11], 1.0
	v_fma_f64 v[20:21], -v[32:33], v[23:24], v[36:37]
	v_lshlrev_b32_e32 v32, 30, v13
	v_mov_b32_e32 v33, 0x7ff80000
	s_mov_b32 s6, s40
	v_fma_f64 v[12:13], v[27:28], v[40:41], v[42:43]
	v_cmp_eq_u32_e64 s[4:5], 0, v44
	v_cndmask_b32_e64 v14, v14, v16, s[4:5]
	v_div_fmas_f64 v[21:22], v[20:21], v[34:35], v[23:24]
	v_cndmask_b32_e64 v20, v47, v29, s[2:3]
	v_cmp_eq_f64_e32 vcc, 0, v[25:26]
	v_cmp_class_f64_e64 s[2:3], v[8:9], s28
	v_cmp_eq_f64_e64 s[6:7], s[6:7], v[25:26]
	v_mul_f64 v[8:9], v[19:20], v[12:13]
	v_and_b32_e32 v13, 0x80000000, v32
	v_xor_b32_e32 v12, 0x80000000, v15
	v_cndmask_b32_e64 v15, v12, v17, s[4:5]
	v_cndmask_b32_e64 v12, 0, v14, s[2:3]
	v_xor_b32_e32 v13, v15, v13
	v_cndmask_b32_e64 v13, v33, v13, s[2:3]
	s_or_b64 vcc, vcc, s[6:7]
	v_cndmask_b32_e32 v9, v9, v26, vcc
	v_cndmask_b32_e32 v8, v8, v25, vcc
	v_mul_f64 v[8:9], v[8:9], v[12:13]
	v_div_fixup_f64 v[12:13], v[21:22], s[12:13], v[30:31]
	s_mov_b32 s3, 0x40140000
	s_mov_b32 s5, 0x401921fb
	s_mov_b32 s4, 0x54442d18
	s_mov_b32 s2, s40
	v_fma_f64 v[10:11], v[8:9], s[2:3], v[10:11]
	v_mul_f64 v[8:9], |v[12:13]|, s[4:5]
	s_mov_b32 s3, 0x41400000
	flat_store_dwordx2 v[4:5], v[10:11]
	v_cmp_ngt_f64_e32 vcc, s[2:3], v[8:9]
	flat_load_dwordx2 v[4:5], v[2:3]
	s_nop 0
	flat_store_dword v[6:7], v46
                                        ; implicit-def: $vgpr10_vgpr11
                                        ; implicit-def: $vgpr12_vgpr13
                                        ; implicit-def: $vgpr6
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[6:7], exec, s[2:3]
	s_cbranch_execz BB3_7
; %bb.6:
	v_trig_preop_f64 v[6:7], v[8:9], 1
	v_trig_preop_f64 v[10:11], v[8:9], 2
	s_mov_b32 s41, 0x7b000000
	s_movk_i32 s2, 0xff80
	v_ldexp_f64 v[12:13], v[8:9], s2
	v_cmp_le_f64_e32 vcc, s[40:41], v[8:9]
	v_trig_preop_f64 v[14:15], v[8:9], 0
	v_cndmask_b32_e32 v13, v9, v13, vcc
	v_cndmask_b32_e32 v12, v8, v12, vcc
	v_mul_f64 v[16:17], v[6:7], v[12:13]
	v_mul_f64 v[10:11], v[10:11], v[12:13]
	v_fma_f64 v[6:7], v[6:7], v[12:13], -v[16:17]
	v_mul_f64 v[19:20], v[14:15], v[12:13]
	v_add_f64 v[21:22], v[10:11], v[6:7]
	v_fma_f64 v[12:13], v[14:15], v[12:13], -v[19:20]
	v_add_f64 v[14:15], v[16:17], v[21:22]
	v_add_f64 v[23:24], v[12:13], v[14:15]
	v_add_f64 v[25:26], v[19:20], v[23:24]
	v_add_f64 v[19:20], v[25:26], -v[19:20]
	v_add_f64 v[27:28], v[23:24], -v[14:15]
	v_add_f64 v[19:20], v[23:24], -v[19:20]
	v_add_f64 v[23:24], v[23:24], -v[27:28]
	v_add_f64 v[29:30], v[25:26], v[19:20]
	v_add_f64 v[12:13], v[12:13], -v[27:28]
	v_add_f64 v[23:24], v[14:15], -v[23:24]
	v_add_f64 v[25:26], v[29:30], -v[25:26]
	v_add_f64 v[12:13], v[12:13], v[23:24]
	v_add_f64 v[19:20], v[19:20], -v[25:26]
	v_add_f64 v[23:24], v[12:13], v[19:20]
	v_add_f64 v[25:26], v[29:30], v[23:24]
	v_add_f64 v[14:15], v[14:15], -v[16:17]
	v_add_f64 v[16:17], v[23:24], -v[19:20]
	v_add_f64 v[19:20], v[25:26], -v[29:30]
	v_ldexp_f64 v[25:26], v[25:26], -16
	v_add_f64 v[14:15], v[21:22], -v[14:15]
	v_add_f64 v[12:13], v[12:13], -v[16:17]
	v_add_f64 v[16:17], v[23:24], -v[19:20]
	v_fract_f64_e32 v[19:20], v[25:26]
	v_cmp_class_f64_e64 s[2:3], v[25:26], s19
	v_add_f64 v[23:24], v[14:15], v[12:13]
	v_cndmask_b32_e64 v20, v20, 0, s[2:3]
	v_cndmask_b32_e64 v19, v19, 0, s[2:3]
	v_add_f64 v[25:26], v[16:17], v[23:24]
	v_ldexp_f64 v[19:20], v[19:20], 16
	v_add_f64 v[27:28], v[25:26], v[19:20]
	v_mov_b32_e32 v30, 0x40f00000
	v_mov_b32_e32 v29, 0
	v_cmp_gt_f64_e32 vcc, 0, v[27:28]
	v_cndmask_b32_e32 v30, 0, v30, vcc
	v_add_f64 v[19:20], v[19:20], v[29:30]
	v_add_f64 v[27:28], v[21:22], -v[10:11]
	v_add_f64 v[30:31], v[25:26], v[19:20]
	v_add_f64 v[21:22], v[21:22], -v[27:28]
	v_cvt_i32_f64_e32 v30, v[30:31]
	v_add_f64 v[6:7], v[6:7], -v[27:28]
	v_add_f64 v[10:11], v[10:11], -v[21:22]
	v_cvt_f64_i32_e32 v[21:22], v30
	v_add_f64 v[12:13], v[23:24], -v[12:13]
	v_add_f64 v[19:20], v[19:20], -v[21:22]
	v_add_f64 v[6:7], v[6:7], v[10:11]
	v_add_f64 v[10:11], v[14:15], -v[12:13]
	v_add_f64 v[12:13], v[25:26], -v[16:17]
	v_add_f64 v[14:15], v[25:26], v[19:20]
	v_add_f64 v[6:7], v[6:7], v[10:11]
	v_add_f64 v[10:11], v[23:24], -v[12:13]
	v_add_f64 v[12:13], v[14:15], -v[19:20]
	v_add_f64 v[10:11], v[10:11], v[6:7]
	v_cmp_le_f64_e32 vcc, 0.5, v[14:15]
	v_add_f64 v[12:13], v[25:26], -v[12:13]
	v_mov_b32_e32 v7, 0x3ff00000
	v_addc_u32_e64 v6, s[2:3], 0, v30, vcc
	v_cndmask_b32_e32 v30, 0, v7, vcc
	v_add_f64 v[10:11], v[10:11], v[12:13]
	v_add_f64 v[12:13], v[14:15], -v[29:30]
	v_add_f64 v[14:15], v[12:13], v[10:11]
	s_mov_b32 s5, 0x3ff921fb
	v_mul_f64 v[16:17], v[14:15], s[4:5]
	v_add_f64 v[12:13], v[14:15], -v[12:13]
	v_fma_f64 v[19:20], v[14:15], s[4:5], -v[16:17]
	v_add_f64 v[10:11], v[10:11], -v[12:13]
	s_mov_b32 s3, 0x3c91a626
	s_mov_b32 s2, 0x33145c07
	v_fma_f64 v[12:13], v[14:15], s[2:3], v[19:20]
	v_fma_f64 v[12:13], v[10:11], s[4:5], v[12:13]
	v_add_f64 v[10:11], v[16:17], v[12:13]
	v_add_f64 v[14:15], v[10:11], -v[16:17]
	v_add_f64 v[12:13], v[12:13], -v[14:15]
BB3_7:                                  ; %Flow227
	s_or_saveexec_b64 s[2:3], s[6:7]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB3_9
; %bb.8:
	s_mov_b32 s5, 0x3fe45f30
	s_mov_b32 s4, 0x6dc9c883
	v_mul_f64 v[6:7], v[8:9], s[4:5]
	v_rndne_f64_e32 v[6:7], v[6:7]
	s_mov_b32 s5, 0xbff921fb
	s_mov_b32 s4, 0x54442d18
	s_mov_b32 s7, 0xbc91a626
	s_mov_b32 s6, 0x33145c00
	v_fma_f64 v[10:11], v[6:7], s[4:5], v[8:9]
	v_mul_f64 v[12:13], v[6:7], s[6:7]
	v_add_f64 v[14:15], v[10:11], v[12:13]
	v_add_f64 v[16:17], v[10:11], -v[14:15]
	v_fma_f64 v[19:20], v[6:7], s[6:7], v[10:11]
	v_add_f64 v[10:11], v[16:17], v[12:13]
	v_add_f64 v[14:15], v[14:15], -v[19:20]
	s_mov_b32 s7, 0x3c91a626
	v_fma_f64 v[12:13], v[6:7], s[6:7], v[12:13]
	v_add_f64 v[10:11], v[14:15], v[10:11]
	v_add_f64 v[10:11], v[10:11], -v[12:13]
	s_mov_b32 s5, 0xb97b839a
	s_mov_b32 s4, 0x252049c0
	v_fma_f64 v[12:13], v[6:7], s[4:5], v[10:11]
	v_add_f64 v[10:11], v[19:20], v[12:13]
	v_add_f64 v[14:15], v[10:11], -v[19:20]
	v_add_f64 v[12:13], v[12:13], -v[14:15]
	v_cvt_i32_f64_e32 v6, v[6:7]
BB3_9:                                  ; %_Z7d_randnPii.exit
	s_or_b64 exec, exec, s[2:3]
	v_cvt_f64_i32_e32 v[14:15], v18
	s_mov_b32 s3, 0x41dfffff
	s_mov_b32 s2, 0xffc00000
	v_div_scale_f64 v[16:17], s[4:5], s[2:3], s[2:3], v[14:15]
	v_rcp_f64_e32 v[18:19], v[16:17]
	v_fma_f64 v[20:21], -v[16:17], v[18:19], 1.0
	v_fma_f64 v[18:19], v[18:19], v[20:21], v[18:19]
	v_div_scale_f64 v[20:21], vcc, v[14:15], s[2:3], v[14:15]
	v_fma_f64 v[22:23], -v[16:17], v[18:19], 1.0
	v_mul_f64 v[24:25], v[10:11], v[10:11]
	v_fma_f64 v[18:19], v[18:19], v[22:23], v[18:19]
	v_mov_b32_e32 v22, 0xb42fdfa7
	v_mov_b32_e32 v23, 0xbe5ae600
	s_mov_b32 s5, 0x3de5e0b2
	s_mov_b32 s4, 0xf9a43bb8
	v_fma_f64 v[22:23], v[24:25], s[4:5], v[22:23]
	v_mul_f64 v[26:27], v[20:21], v[18:19]
	s_mov_b32 s5, 0x3ec71de3
	s_mov_b32 s4, 0x796cde01
	s_mov_b32 s7, 0xbf2a01a0
	s_mov_b32 s6, 0x19e83e5c
	s_mov_b32 s13, 0x3f811111
	v_fma_f64 v[22:23], v[24:25], v[22:23], s[4:5]
	v_mov_b32_e32 v28, 0x9037ab78
	v_fma_f64 v[16:17], -v[16:17], v[26:27], v[20:21]
	v_mov_b32_e32 v29, 0x3e21eeb6
	s_mov_b32 s5, 0xbda907db
	s_mov_b32 s4, 0x46cc5e42
	v_fma_f64 v[20:21], v[24:25], s[4:5], v[28:29]
	s_mov_b32 s12, 0x11110bb3
	v_fma_f64 v[22:23], v[24:25], v[22:23], s[6:7]
	v_div_fmas_f64 v[16:17], v[16:17], v[18:19], v[26:27]
	v_mul_f64 v[18:19], v[12:13], 0.5
	s_mov_b32 s5, 0xbe927e4f
	s_mov_b32 s4, 0xa17f65f6
	v_fma_f64 v[20:21], v[24:25], v[20:21], s[4:5]
	v_mul_f64 v[26:27], v[10:11], -v[24:25]
	v_fma_f64 v[22:23], v[24:25], v[22:23], s[12:13]
	s_mov_b32 s5, 0x3efa01a0
	s_mov_b32 s4, 0x19f4ec90
	v_fma_f64 v[20:21], v[24:25], v[20:21], s[4:5]
	v_fma_f64 v[18:19], v[26:27], v[22:23], v[18:19]
	v_div_fixup_f64 v[14:15], v[16:17], s[2:3], v[14:15]
	s_mov_b32 s3, 0xbf56c16c
	s_mov_b32 s2, 0x16c16967
	v_fma_f64 v[16:17], v[24:25], v[20:21], s[2:3]
	v_fma_f64 v[18:19], v[24:25], v[18:19], -v[12:13]
	v_frexp_mant_f64_e64 v[20:21], |v[14:15]|
	s_mov_b32 s3, 0x3fa55555
	s_mov_b32 s2, 0x55555555
	v_fma_f64 v[16:17], v[24:25], v[16:17], s[2:3]
	s_mov_b32 s3, 0xbfc55555
	v_fma_f64 v[18:19], v[26:27], s[2:3], v[18:19]
	s_mov_b32 s3, 0x3fe55555
	v_cmp_gt_f64_e32 vcc, s[2:3], v[20:21]
	v_cndmask_b32_e64 v7, 0, 1, vcc
	v_ldexp_f64 v[20:21], v[20:21], v7
	v_add_f64 v[22:23], v[20:21], 1.0
	v_rcp_f64_e32 v[26:27], v[22:23]
	v_fma_f64 v[28:29], -v[22:23], v[26:27], 1.0
	v_fma_f64 v[26:27], v[28:29], v[26:27], v[26:27]
	v_fma_f64 v[28:29], -v[22:23], v[26:27], 1.0
	v_add_f64 v[30:31], v[20:21], -1.0
	v_add_f64 v[32:33], v[22:23], -v[20:21]
	v_fma_f64 v[26:27], v[28:29], v[26:27], v[26:27]
	v_add_f64 v[28:29], v[22:23], -v[32:33]
	v_mul_f64 v[34:35], v[30:31], v[26:27]
	v_add_f64 v[32:33], -v[32:33], 1.0
	v_add_f64 v[20:21], v[20:21], -v[28:29]
	v_mul_f64 v[28:29], v[22:23], v[34:35]
	v_add_f64 v[20:21], v[32:33], v[20:21]
	v_fma_f64 v[22:23], v[34:35], v[22:23], -v[28:29]
	v_fma_f64 v[20:21], v[34:35], v[20:21], v[22:23]
	v_add_f64 v[22:23], v[28:29], v[20:21]
	v_add_f64 v[32:33], v[30:31], -v[22:23]
	v_add_f64 v[28:29], v[22:23], -v[28:29]
	v_add_f64 v[30:31], v[30:31], -v[32:33]
	v_add_f64 v[20:21], v[20:21], -v[28:29]
	v_add_f64 v[22:23], v[30:31], -v[22:23]
	v_add_f64 v[20:21], v[22:23], -v[20:21]
	v_add_f64 v[20:21], v[32:33], v[20:21]
	v_mul_f64 v[20:21], v[26:27], v[20:21]
	v_add_f64 v[22:23], v[34:35], v[20:21]
	v_add_f64 v[26:27], v[22:23], -v[34:35]
	v_mul_f64 v[28:29], v[22:23], v[22:23]
	v_add_f64 v[20:21], v[20:21], -v[26:27]
	v_fma_f64 v[26:27], v[22:23], v[22:23], -v[28:29]
	v_add_f64 v[30:31], v[20:21], v[20:21]
	v_fma_f64 v[26:27], v[22:23], v[30:31], v[26:27]
	v_fma_f64 v[26:27], v[20:21], v[20:21], v[26:27]
	v_add_f64 v[30:31], v[28:29], v[26:27]
	v_mov_b32_e32 v32, 0x6b47b09a
	v_mov_b32_e32 v33, 0x3fc38538
	s_mov_b32 s5, 0x3fc3ab76
	s_mov_b32 s4, 0xbf559e2b
	v_fma_f64 v[32:33], v[30:31], s[4:5], v[32:33]
	s_mov_b32 s5, 0x3fc7474d
	s_mov_b32 s4, 0xd7f4df2e
	v_add_f64 v[28:29], v[30:31], -v[28:29]
	v_fma_f64 v[32:33], v[30:31], v[32:33], s[4:5]
	s_mov_b32 s5, 0x3fcc71c0
	s_mov_b32 s4, 0x16291751
	v_mul_f64 v[34:35], v[20:21], v[30:31]
	v_mul_f64 v[36:37], v[22:23], v[30:31]
	v_add_f64 v[26:27], v[26:27], -v[28:29]
	v_fma_f64 v[28:29], v[30:31], v[32:33], s[4:5]
	s_mov_b32 s5, 0x3fd24924
	s_mov_b32 s4, 0x9b27acf1
	v_fma_f64 v[32:33], v[22:23], v[30:31], -v[36:37]
	v_fma_f64 v[26:27], v[22:23], v[26:27], v[34:35]
	v_fma_f64 v[28:29], v[30:31], v[28:29], s[4:5]
	s_mov_b32 s5, 0x3fd99999
	s_mov_b32 s4, 0x998ef7b6
	v_add_f64 v[26:27], v[32:33], v[26:27]
	v_fma_f64 v[28:29], v[30:31], v[28:29], s[4:5]
	s_mov_b32 s2, 0x55555780
	v_add_f64 v[32:33], v[36:37], v[26:27]
	v_fma_f64 v[28:29], v[30:31], v[28:29], s[2:3]
	v_add_f64 v[30:31], v[32:33], -v[36:37]
	v_mul_f64 v[34:35], v[32:33], v[28:29]
	v_add_f64 v[26:27], v[26:27], -v[30:31]
	v_fma_f64 v[30:31], v[32:33], v[28:29], -v[34:35]
	v_fma_f64 v[26:27], v[26:27], v[28:29], v[30:31]
	v_ldexp_f64 v[22:23], v[22:23], 1
	v_add_f64 v[28:29], v[34:35], v[26:27]
	v_add_f64 v[30:31], v[22:23], v[28:29]
	v_add_f64 v[32:33], v[30:31], -v[22:23]
	v_add_f64 v[34:35], v[28:29], -v[34:35]
	v_add_f64 v[36:37], v[30:31], -v[32:33]
	v_ldexp_f64 v[20:21], v[20:21], 1
	v_add_f64 v[26:27], v[26:27], -v[34:35]
	v_add_f64 v[28:29], v[28:29], -v[32:33]
	v_add_f64 v[22:23], v[22:23], -v[36:37]
	v_add_f64 v[32:33], v[20:21], v[26:27]
	v_add_f64 v[22:23], v[28:29], v[22:23]
	v_frexp_exp_i32_f64_e64 v7, |v[14:15]|
	v_add_f64 v[28:29], v[32:33], -v[20:21]
	v_add_f64 v[22:23], v[32:33], v[22:23]
	v_subbrev_u32_e32 v7, vcc, 0, v7, vcc
	v_add_f64 v[32:33], v[32:33], -v[28:29]
	v_add_f64 v[34:35], v[30:31], v[22:23]
	v_cvt_f64_i32_e32 v[36:37], v7
	s_mov_b32 s3, 0x3fe62e42
	s_mov_b32 s2, 0xfefa39ef
	v_mul_f64 v[38:39], v[36:37], s[2:3]
	v_add_f64 v[26:27], v[26:27], -v[28:29]
	v_add_f64 v[20:21], v[20:21], -v[32:33]
	v_add_f64 v[28:29], v[34:35], -v[30:31]
	v_fma_f64 v[30:31], v[36:37], s[2:3], -v[38:39]
	v_add_f64 v[20:21], v[26:27], v[20:21]
	v_add_f64 v[22:23], v[22:23], -v[28:29]
	s_mov_b32 s3, 0x3c7abc9e
	s_mov_b32 s2, 0x3b39803f
	v_fma_f64 v[26:27], v[36:37], s[2:3], v[30:31]
	v_add_f64 v[20:21], v[20:21], v[22:23]
	v_add_f64 v[22:23], v[38:39], v[26:27]
	v_add_f64 v[28:29], v[34:35], v[20:21]
	v_add_f64 v[30:31], v[22:23], v[28:29]
	v_add_f64 v[32:33], v[30:31], -v[22:23]
	v_add_f64 v[36:37], v[22:23], -v[38:39]
	v_add_f64 v[34:35], v[28:29], -v[34:35]
	v_add_f64 v[38:39], v[30:31], -v[32:33]
	v_add_f64 v[26:27], v[26:27], -v[36:37]
	v_add_f64 v[20:21], v[20:21], -v[34:35]
	v_add_f64 v[28:29], v[28:29], -v[32:33]
	v_add_f64 v[22:23], v[22:23], -v[38:39]
	v_add_f64 v[32:33], v[26:27], v[20:21]
	v_add_f64 v[22:23], v[28:29], v[22:23]
	v_add_f64 v[28:29], v[32:33], -v[26:27]
	v_add_f64 v[22:23], v[32:33], v[22:23]
	v_add_f64 v[32:33], v[32:33], -v[28:29]
	v_add_f64 v[34:35], v[30:31], v[22:23]
	v_add_f64 v[20:21], v[20:21], -v[28:29]
	v_add_f64 v[26:27], v[26:27], -v[32:33]
	v_add_f64 v[28:29], v[34:35], -v[30:31]
	v_add_f64 v[20:21], v[20:21], v[26:27]
	v_add_f64 v[22:23], v[22:23], -v[28:29]
	v_add_f64 v[20:21], v[20:21], v[22:23]
	s_movk_i32 s2, 0x204
	v_and_b32_e32 v7, 0x7fffffff, v15
	v_add_f64 v[20:21], v[34:35], v[20:21]
	v_cmp_class_f64_e64 vcc, v[14:15], s2
	s_mov_b32 s4, 0x7ff00000
	v_mov_b32_e32 v22, s4
	v_cndmask_b32_e32 v21, v21, v7, vcc
	v_cndmask_b32_e32 v20, v20, v14, vcc
	v_mul_f64 v[20:21], v[20:21], -2.0
	v_cmp_neq_f64_e32 vcc, 0, v[14:15]
	s_mov_b32 s6, 0
	s_brev_b32 s7, 8
	v_mov_b32_e32 v36, 0x3ff00000
	v_mov_b32_e32 v7, 0x4ff00000
	v_mov_b32_e32 v14, 0
	v_cndmask_b32_e32 v21, v22, v21, vcc
	v_cndmask_b32_e32 v20, 0, v20, vcc
	v_cmp_gt_f64_e32 vcc, s[6:7], v[20:21]
	v_cndmask_b32_e32 v15, v36, v7, vcc
	v_mul_f64 v[20:21], v[20:21], v[14:15]
	v_rsq_f64_e32 v[22:23], v[20:21]
	v_mul_f64 v[26:27], v[24:25], -0.5
	v_mul_f64 v[28:29], v[20:21], v[22:23]
	v_mul_f64 v[22:23], v[22:23], 0.5
	v_add_f64 v[30:31], v[26:27], 1.0
	v_fma_f64 v[32:33], -v[22:23], v[28:29], 0.5
	v_add_f64 v[34:35], -v[30:31], 1.0
	v_fma_f64 v[28:29], v[28:29], v[32:33], v[28:29]
	v_add_f64 v[26:27], v[34:35], v[26:27]
	v_mul_f64 v[24:25], v[24:25], v[24:25]
	v_fma_f64 v[22:23], v[22:23], v[32:33], v[22:23]
	v_fma_f64 v[32:33], -v[28:29], v[28:29], v[20:21]
	v_fma_f64 v[12:13], v[10:11], -v[12:13], v[26:27]
	v_fma_f64 v[26:27], v[32:33], v[22:23], v[28:29]
	v_fma_f64 v[12:13], v[24:25], v[16:17], v[12:13]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_f64 v[4:5], v[4:5], -2.0
	v_fma_f64 v[15:16], -v[26:27], v[26:27], v[20:21]
	v_add_f64 v[12:13], v[30:31], v[12:13]
	v_add_f64 v[10:11], v[10:11], -v[18:19]
	v_and_b32_e32 v17, 1, v6
	v_lshlrev_b32_e32 v18, 30, v6
	s_movk_i32 s5, 0x1f8
	v_mov_b32_e32 v19, 0x37f00000
	v_mov_b32_e32 v24, 0x7ff80000
	v_fma_f64 v[6:7], v[15:16], v[22:23], v[26:27]
	v_cmp_eq_u32_e64 s[2:3], 0, v17
	v_cndmask_b32_e64 v10, v10, v12, s[2:3]
	s_mov_b32 s7, s4
	v_cndmask_b32_e32 v15, v36, v19, vcc
	v_cmp_eq_f64_e32 vcc, 0, v[20:21]
	v_cmp_class_f64_e64 s[4:5], v[8:9], s5
	v_cmp_eq_f64_e64 s[6:7], s[6:7], v[20:21]
	v_mul_f64 v[6:7], v[14:15], v[6:7]
	v_and_b32_e32 v9, 0x80000000, v18
	v_xor_b32_e32 v8, 0x80000000, v11
	v_cndmask_b32_e64 v11, v8, v13, s[2:3]
	v_cndmask_b32_e64 v8, 0, v10, s[4:5]
	v_xor_b32_e32 v9, v11, v9
	v_cndmask_b32_e64 v9, v24, v9, s[4:5]
	s_or_b64 vcc, vcc, s[6:7]
	v_cndmask_b32_e32 v7, v7, v21, vcc
	v_cndmask_b32_e32 v6, v6, v20, vcc
	v_mul_f64 v[6:7], v[6:7], v[8:9]
	v_fma_f64 v[4:5], v[6:7], 2.0, v[4:5]
	flat_store_dwordx2 v[2:3], v[4:5]
BB3_10:                                 ; %Flow230
	s_or_b64 exec, exec, s[34:35]
	s_mov_b64 s[2:3], s[22:23]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[22:23], s[0:1]
	s_cbranch_execz BB3_18
; %bb.11:                               ; %.preheader143
	s_cmp_lt_i32 s29, 1
	v_cmp_gt_i32_e64 s[4:5], s29, 0
	s_cbranch_scc1 BB3_14
; %bb.12:                               ; %.lr.ph151
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v3, v1
	v_ashrrev_i64 v[2:3], 29, v[2:3]
	v_mov_b32_e32 v5, s37
	v_add_u32_e32 v4, vcc, s36, v2
	v_addc_u32_e32 v5, vcc, v5, v3, vcc
	flat_load_dwordx2 v[4:5], v[4:5]
	v_mov_b32_e32 v6, s39
	v_add_u32_e32 v2, vcc, s38, v2
	v_addc_u32_e32 v3, vcc, v6, v3, vcc
	v_mul_lo_u32 v6, s29, v1
	flat_load_dwordx2 v[8:9], v[2:3]
	v_mov_b32_e32 v10, s21
	v_ashrrev_i32_e32 v7, 31, v6
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_cvt_i32_f64_e32 v2, v[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_i32_f64_e32 v3, v[8:9]
	v_add_u32_e32 v4, vcc, s20, v6
	v_addc_u32_e32 v5, vcc, v10, v7, vcc
	s_mov_b32 s6, s29
BB3_13:                                 ; =>This Inner Loop Header: Depth=1
	v_mov_b32_e32 v7, s3
	v_mov_b32_e32 v6, s2
	flat_load_dwordx2 v[6:7], v[6:7]
	s_add_i32 s6, s6, -1
	s_add_u32 s2, s2, 8
	s_addc_u32 s3, s3, 0
	s_cmp_eq_u32 s6, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v7, vcc, v7, v2
	v_add_u32_e32 v6, vcc, v6, v3
	v_mul_lo_u32 v7, v7, s10
	v_add_u32_e32 v6, vcc, v7, v6
	v_mul_lo_u32 v6, v6, s11
	v_add_u32_e32 v6, vcc, s31, v6
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_i32_f32_e64 v6, |v6|
	v_cmp_gt_i32_e32 vcc, s30, v6
	v_cndmask_b32_e32 v6, 0, v6, vcc
	flat_store_dword v[4:5], v6
	v_add_u32_e32 v4, vcc, 4, v4
	v_addc_u32_e32 v5, vcc, 0, v5, vcc
	s_cbranch_scc0 BB3_13
BB3_14:                                 ; %.preheader
	s_andn2_b64 vcc, exec, s[4:5]
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v3, 0
	s_cbranch_vccnz BB3_17
; %bb.15:                               ; %.lr.ph149
	v_mul_lo_u32 v2, s29, v1
	v_mov_b32_e32 v5, s21
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_u32_e32 v4, vcc, s20, v2
	v_addc_u32_e32 v5, vcc, v5, v3, vcc
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v3, 0
	s_mov_b32 s21, 0x3fe55555
	s_mov_b32 s20, 0x55555555
	s_mov_b32 s30, 0
	s_mov_b32 s35, 0x3fba6564
	s_mov_b32 s34, 0x968915a9
	s_mov_b32 s37, 0x3fbdee67
	s_mov_b32 s36, 0x4222de17
	s_mov_b32 s39, 0x3fbe25e4
	s_mov_b32 s38, 0x3abe935a
	s_mov_b32 s41, 0x3fc110ef
	s_mov_b32 s40, 0x47e6c9c2
	s_mov_b32 s43, 0x3fc3b13b
	s_mov_b32 s42, 0xcfa74449
	s_mov_b32 s45, 0x3fc745d1
	s_mov_b32 s44, 0x71bf3c30
	s_mov_b32 s47, 0x3fcc71c7
	s_mov_b32 s46, 0x1c7792ce
	s_mov_b32 s49, 0x3fd24924
	s_mov_b32 s48, 0x924920da
	s_mov_b32 s51, 0x3fd99999
	s_mov_b32 s50, 0x9999999c
	s_mov_b32 s53, 0x3fe62e42
	s_mov_b32 s52, 0xfefa39ef
	s_mov_b32 s55, 0x3c7abc9e
	s_mov_b32 s54, 0x3b39803f
	s_mov_b32 s57, 0x3c8543b0
	s_mov_b32 s56, 0xd5df274d
	s_mov_b32 s31, 0x7ff00000
	s_mov_b32 s59, 0x3ff71547
	s_mov_b32 s58, 0x652b82fe
	s_mov_b32 s61, 0xbd53de6a
	s_mov_b32 s60, 0xf278e000
	s_mov_b32 s63, 0xbac9cc01
	s_mov_b32 s62, 0xf97b57a0
	s_mov_b32 s65, 0x3e928af3
	s_mov_b32 s64, 0xfca7ab0c
	s_mov_b32 s67, 0x3e5ade15
	s_mov_b32 s66, 0x6a5dcb37
	s_mov_b32 s69, 0x3ec71dee
	s_mov_b32 s68, 0x623fde64
	s_mov_b32 s71, 0x3efa0199
	s_mov_b32 s70, 0x7c89e6b0
	s_mov_b32 s73, 0x3f2a01a0
	s_mov_b32 s72, 0x14761f6e
	s_mov_b32 s75, 0x3f56c16c
	s_mov_b32 s74, 0x1852b7b0
	s_mov_b32 s77, 0x3f811111
	s_mov_b32 s76, 0x11122322
	s_mov_b32 s79, 0x3fa55555
	s_mov_b32 s78, 0x555502a1
	s_mov_b32 s81, 0x3fc55555
	s_mov_b32 s80, 0x55555511
	s_mov_b32 s83, 0x3fe00000
	s_mov_b32 s82, 11
	s_movk_i32 s19, 0x204
	s_movk_i32 s28, 0xff1c
	s_mov_b32 s33, s29
	s_mov_b32 s85, 0xbfe55555
	s_mov_b32 s86, 0xfefa3000
	s_mov_b32 s89, 0x40863000
	s_mov_b32 s91, 0xc0874800
	s_mov_b32 s93, 0x40490000
BB3_16:                                 ; =>This Inner Loop Header: Depth=1
	flat_load_dword v8, v[4:5]
	v_mov_b32_e32 v9, s27
	v_mov_b32_e32 v6, s34
	v_mov_b32_e32 v7, s35
	s_mov_b32 s84, s20
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v10, 31, v8
	v_add_u32_e32 v8, vcc, s26, v8
	v_addc_u32_e32 v9, vcc, v9, v10, vcc
	flat_load_ubyte v8, v[8:9]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v48, vcc, 0xffffff9c, v8
	v_add_u32_e32 v49, vcc, s28, v8
	v_cvt_f64_i32_e32 v[8:9], v48
	v_cvt_f64_i32_e32 v[10:11], v49
	v_frexp_mant_f64_e64 v[12:13], |v[8:9]|
	v_frexp_mant_f64_e64 v[14:15], |v[10:11]|
	v_frexp_exp_i32_f64_e64 v16, |v[8:9]|
	v_frexp_exp_i32_f64_e64 v17, |v[10:11]|
	v_cmp_gt_f64_e32 vcc, s[20:21], v[12:13]
	v_cndmask_b32_e64 v18, 0, 1, vcc
	v_cmp_gt_f64_e64 s[2:3], s[20:21], v[14:15]
	v_cndmask_b32_e64 v19, 0, 1, s[2:3]
	v_ldexp_f64 v[12:13], v[12:13], v18
	v_ldexp_f64 v[14:15], v[14:15], v19
	v_subbrev_u32_e32 v18, vcc, 0, v16, vcc
	v_subbrev_u32_e64 v24, vcc, 0, v17, s[2:3]
	v_add_f64 v[16:17], v[12:13], 1.0
	v_cvt_f64_i32_e32 v[18:19], v18
	v_add_f64 v[20:21], v[12:13], -1.0
	v_add_f64 v[22:23], v[14:15], 1.0
	v_cvt_f64_i32_e32 v[24:25], v24
	v_add_f64 v[26:27], v[14:15], -1.0
	v_mul_f64 v[28:29], v[18:19], s[52:53]
	v_mul_f64 v[30:31], v[24:25], s[52:53]
	v_rcp_f64_e32 v[32:33], v[16:17]
	v_add_f64 v[34:35], v[16:17], -v[12:13]
	v_rcp_f64_e32 v[36:37], v[22:23]
	v_add_f64 v[38:39], v[22:23], -v[14:15]
	v_fma_f64 v[40:41], v[18:19], s[52:53], -v[28:29]
	v_fma_f64 v[42:43], v[24:25], s[52:53], -v[30:31]
	v_fma_f64 v[18:19], v[18:19], s[54:55], v[40:41]
	v_add_f64 v[40:41], v[16:17], -v[34:35]
	v_add_f64 v[34:35], -v[34:35], 1.0
	v_fma_f64 v[24:25], v[24:25], s[54:55], v[42:43]
	v_add_f64 v[42:43], v[22:23], -v[38:39]
	v_add_f64 v[38:39], -v[38:39], 1.0
	v_add_f64 v[12:13], v[12:13], -v[40:41]
	v_fma_f64 v[40:41], -v[16:17], v[32:33], 1.0
	v_add_f64 v[14:15], v[14:15], -v[42:43]
	v_fma_f64 v[42:43], -v[22:23], v[36:37], 1.0
	v_fma_f64 v[32:33], v[40:41], v[32:33], v[32:33]
	v_add_f64 v[40:41], v[28:29], v[18:19]
	v_add_f64 v[12:13], v[34:35], v[12:13]
	v_add_f64 v[34:35], v[30:31], v[24:25]
	v_fma_f64 v[36:37], v[42:43], v[36:37], v[36:37]
	v_add_f64 v[14:15], v[38:39], v[14:15]
	v_add_f64 v[28:29], v[40:41], -v[28:29]
	v_add_f64 v[30:31], v[34:35], -v[30:31]
	v_fma_f64 v[38:39], -v[16:17], v[32:33], 1.0
	v_fma_f64 v[42:43], -v[22:23], v[36:37], 1.0
	v_add_f64 v[18:19], v[18:19], -v[28:29]
	v_add_f64 v[24:25], v[24:25], -v[30:31]
	v_fma_f64 v[28:29], v[38:39], v[32:33], v[32:33]
	v_fma_f64 v[30:31], v[42:43], v[36:37], v[36:37]
	v_mul_f64 v[32:33], v[20:21], v[28:29]
	v_mul_f64 v[36:37], v[26:27], v[30:31]
	v_mul_f64 v[38:39], v[16:17], v[32:33]
	v_mul_f64 v[42:43], v[22:23], v[36:37]
	v_fma_f64 v[16:17], v[32:33], v[16:17], -v[38:39]
	v_fma_f64 v[22:23], v[36:37], v[22:23], -v[42:43]
	v_fma_f64 v[12:13], v[32:33], v[12:13], v[16:17]
	v_fma_f64 v[14:15], v[36:37], v[14:15], v[22:23]
	v_add_f64 v[16:17], v[38:39], v[12:13]
	v_add_f64 v[22:23], v[42:43], v[14:15]
	v_add_f64 v[38:39], v[16:17], -v[38:39]
	v_add_f64 v[42:43], v[22:23], -v[42:43]
	v_add_f64 v[12:13], v[12:13], -v[38:39]
	v_add_f64 v[38:39], v[20:21], -v[16:17]
	v_add_f64 v[14:15], v[14:15], -v[42:43]
	v_add_f64 v[42:43], v[26:27], -v[22:23]
	v_add_f64 v[20:21], v[20:21], -v[38:39]
	v_add_f64 v[26:27], v[26:27], -v[42:43]
	v_add_f64 v[16:17], v[20:21], -v[16:17]
	v_add_f64 v[20:21], v[26:27], -v[22:23]
	v_add_f64 v[12:13], v[16:17], -v[12:13]
	v_add_f64 v[14:15], v[20:21], -v[14:15]
	v_add_f64 v[12:13], v[38:39], v[12:13]
	v_add_f64 v[14:15], v[42:43], v[14:15]
	v_mul_f64 v[12:13], v[28:29], v[12:13]
	v_mul_f64 v[14:15], v[30:31], v[14:15]
	v_add_f64 v[16:17], v[32:33], v[12:13]
	v_add_f64 v[20:21], v[36:37], v[14:15]
	v_add_f64 v[22:23], v[16:17], -v[32:33]
	v_mul_f64 v[26:27], v[16:17], v[16:17]
	v_add_f64 v[28:29], v[20:21], -v[36:37]
	v_mul_f64 v[30:31], v[20:21], v[20:21]
	v_add_f64 v[12:13], v[12:13], -v[22:23]
	v_fma_f64 v[22:23], v[16:17], v[16:17], -v[26:27]
	v_add_f64 v[14:15], v[14:15], -v[28:29]
	v_fma_f64 v[28:29], v[20:21], v[20:21], -v[30:31]
	v_add_f64 v[32:33], v[12:13], v[12:13]
	v_add_f64 v[36:37], v[14:15], v[14:15]
	v_fma_f64 v[22:23], v[16:17], v[32:33], v[22:23]
	v_fma_f64 v[28:29], v[20:21], v[36:37], v[28:29]
	v_fma_f64 v[22:23], v[12:13], v[12:13], v[22:23]
	v_fma_f64 v[28:29], v[14:15], v[14:15], v[28:29]
	v_add_f64 v[32:33], v[26:27], v[22:23]
	v_add_f64 v[36:37], v[30:31], v[28:29]
	v_fma_f64 v[38:39], v[32:33], s[36:37], v[6:7]
	v_add_f64 v[26:27], v[32:33], -v[26:27]
	v_mul_f64 v[42:43], v[16:17], v[32:33]
	v_fma_f64 v[6:7], v[36:37], s[36:37], v[6:7]
	v_add_f64 v[30:31], v[36:37], -v[30:31]
	v_fma_f64 v[38:39], v[32:33], v[38:39], s[38:39]
	v_add_f64 v[22:23], v[22:23], -v[26:27]
	v_fma_f64 v[26:27], v[32:33], v[16:17], -v[42:43]
	v_fma_f64 v[6:7], v[36:37], v[6:7], s[38:39]
	v_add_f64 v[28:29], v[28:29], -v[30:31]
	v_fma_f64 v[30:31], v[32:33], v[38:39], s[40:41]
	v_mul_f64 v[38:39], v[16:17], v[22:23]
	v_fma_f64 v[6:7], v[36:37], v[6:7], s[40:41]
	v_fma_f64 v[30:31], v[32:33], v[30:31], s[42:43]
	v_fma_f64 v[38:39], v[32:33], v[12:13], v[38:39]
	v_fma_f64 v[6:7], v[36:37], v[6:7], s[42:43]
	v_fma_f64 v[30:31], v[32:33], v[30:31], s[44:45]
	v_add_f64 v[26:27], v[26:27], v[38:39]
	v_fma_f64 v[6:7], v[36:37], v[6:7], s[44:45]
	v_fma_f64 v[30:31], v[32:33], v[30:31], s[46:47]
	v_fma_f64 v[6:7], v[36:37], v[6:7], s[46:47]
	v_fma_f64 v[30:31], v[32:33], v[30:31], s[48:49]
	v_fma_f64 v[6:7], v[36:37], v[6:7], s[48:49]
	v_fma_f64 v[30:31], v[32:33], v[30:31], s[50:51]
	v_fma_f64 v[6:7], v[36:37], v[6:7], s[50:51]
	v_mul_f64 v[38:39], v[32:33], v[30:31]
	v_fma_f64 v[32:33], v[32:33], v[30:31], -v[38:39]
	v_fma_f64 v[22:23], v[22:23], v[30:31], v[32:33]
	v_mul_f64 v[30:31], v[36:37], v[6:7]
	v_fma_f64 v[32:33], v[36:37], v[6:7], -v[30:31]
	v_fma_f64 v[6:7], v[28:29], v[6:7], v[32:33]
	v_mul_f64 v[32:33], v[20:21], v[36:37]
	v_mul_f64 v[28:29], v[20:21], v[28:29]
	v_fma_f64 v[28:29], v[36:37], v[14:15], v[28:29]
	v_fma_f64 v[36:37], v[36:37], v[20:21], -v[32:33]
	v_add_f64 v[28:29], v[36:37], v[28:29]
	v_add_f64 v[36:37], v[42:43], v[26:27]
	v_add_f64 v[42:43], v[36:37], -v[42:43]
	v_add_f64 v[26:27], v[26:27], -v[42:43]
	v_add_f64 v[42:43], v[32:33], v[28:29]
	v_add_f64 v[32:33], v[42:43], -v[32:33]
	v_add_f64 v[28:29], v[28:29], -v[32:33]
	v_add_f64 v[32:33], v[38:39], v[22:23]
	v_add_f64 v[38:39], v[32:33], -v[38:39]
	v_add_f64 v[22:23], v[22:23], -v[38:39]
	v_add_f64 v[38:39], v[30:31], v[6:7]
	v_add_f64 v[30:31], v[38:39], -v[30:31]
	v_add_f64 v[6:7], v[6:7], -v[30:31]
	v_add_f64 v[30:31], v[32:33], s[20:21]
	v_add_f64 v[44:45], v[30:31], s[84:85]
	v_add_f64 v[32:33], v[32:33], -v[44:45]
	v_add_f64 v[44:45], v[38:39], s[20:21]
	v_add_f64 v[46:47], v[44:45], s[84:85]
	v_add_f64 v[38:39], v[38:39], -v[46:47]
	v_add_f64 v[22:23], v[22:23], s[56:57]
	v_add_f64 v[22:23], v[32:33], v[22:23]
	s_mov_b32 s87, s53
	v_add_f64 v[6:7], v[6:7], s[56:57]
	v_add_f64 v[6:7], v[38:39], v[6:7]
	v_add_f64 v[32:33], v[30:31], v[22:23]
	v_add_f64 v[30:31], v[32:33], -v[30:31]
	v_add_f64 v[22:23], v[22:23], -v[30:31]
	v_mov_b32_e32 v30, s64
	v_mov_b32_e32 v31, s65
	v_cmp_eq_u32_e32 vcc, 0, v49
	v_mov_b32_e32 v46, s31
	s_mov_b32 s88, s30
	s_mov_b32 s90, s30
	v_cmp_eq_u32_e64 s[2:3], 0, v48
	v_ldexp_f64 v[16:17], v[16:17], 1
	v_ldexp_f64 v[20:21], v[20:21], 1
	v_ldexp_f64 v[12:13], v[12:13], 1
	v_ldexp_f64 v[14:15], v[14:15], 1
	v_mul_f64 v[26:27], v[26:27], v[32:33]
	v_fma_f64 v[22:23], v[36:37], v[22:23], v[26:27]
	v_mul_f64 v[26:27], v[36:37], v[32:33]
	v_fma_f64 v[32:33], v[36:37], v[32:33], -v[26:27]
	v_add_f64 v[36:37], v[44:45], v[6:7]
	v_add_f64 v[38:39], v[36:37], -v[44:45]
	v_add_f64 v[6:7], v[6:7], -v[38:39]
	v_mul_f64 v[38:39], v[42:43], v[36:37]
	v_mul_f64 v[28:29], v[28:29], v[36:37]
	v_fma_f64 v[36:37], v[42:43], v[36:37], -v[38:39]
	v_fma_f64 v[6:7], v[42:43], v[6:7], v[28:29]
	v_add_f64 v[22:23], v[32:33], v[22:23]
	v_add_f64 v[6:7], v[36:37], v[6:7]
	v_add_f64 v[28:29], v[26:27], v[22:23]
	v_add_f64 v[32:33], v[38:39], v[6:7]
	v_add_f64 v[36:37], v[16:17], v[28:29]
	v_add_f64 v[26:27], v[28:29], -v[26:27]
	v_add_f64 v[42:43], v[20:21], v[32:33]
	v_add_f64 v[38:39], v[32:33], -v[38:39]
	v_add_f64 v[16:17], v[36:37], -v[16:17]
	v_add_f64 v[22:23], v[22:23], -v[26:27]
	v_add_f64 v[20:21], v[42:43], -v[20:21]
	v_add_f64 v[6:7], v[6:7], -v[38:39]
	v_add_f64 v[16:17], v[28:29], -v[16:17]
	v_add_f64 v[12:13], v[12:13], v[22:23]
	v_add_f64 v[20:21], v[32:33], -v[20:21]
	v_add_f64 v[6:7], v[14:15], v[6:7]
	v_add_f64 v[12:13], v[16:17], v[12:13]
	v_add_f64 v[6:7], v[20:21], v[6:7]
	v_add_f64 v[14:15], v[36:37], v[12:13]
	v_add_f64 v[16:17], v[42:43], v[6:7]
	v_add_f64 v[20:21], v[40:41], v[14:15]
	v_add_f64 v[22:23], v[34:35], v[16:17]
	v_add_f64 v[26:27], v[14:15], -v[36:37]
	v_add_f64 v[28:29], v[16:17], -v[42:43]
	v_add_f64 v[32:33], v[20:21], -v[40:41]
	v_add_f64 v[36:37], v[22:23], -v[34:35]
	v_add_f64 v[12:13], v[12:13], -v[26:27]
	v_add_f64 v[6:7], v[6:7], -v[28:29]
	v_add_f64 v[26:27], v[20:21], -v[32:33]
	v_add_f64 v[28:29], v[22:23], -v[36:37]
	v_add_f64 v[38:39], v[18:19], v[12:13]
	v_add_f64 v[14:15], v[14:15], -v[32:33]
	v_add_f64 v[32:33], v[24:25], v[6:7]
	v_add_f64 v[16:17], v[16:17], -v[36:37]
	v_add_f64 v[26:27], v[40:41], -v[26:27]
	v_add_f64 v[28:29], v[34:35], -v[28:29]
	v_add_f64 v[34:35], v[38:39], -v[18:19]
	v_add_f64 v[36:37], v[32:33], -v[24:25]
	v_add_f64 v[14:15], v[14:15], v[26:27]
	v_add_f64 v[16:17], v[16:17], v[28:29]
	v_add_f64 v[26:27], v[38:39], -v[34:35]
	v_add_f64 v[12:13], v[12:13], -v[34:35]
	v_add_f64 v[28:29], v[32:33], -v[36:37]
	v_add_f64 v[6:7], v[6:7], -v[36:37]
	v_add_f64 v[14:15], v[38:39], v[14:15]
	v_add_f64 v[16:17], v[32:33], v[16:17]
	v_add_f64 v[18:19], v[18:19], -v[26:27]
	v_add_f64 v[24:25], v[24:25], -v[28:29]
	v_add_f64 v[26:27], v[20:21], v[14:15]
	v_add_f64 v[28:29], v[22:23], v[16:17]
	v_add_f64 v[12:13], v[12:13], v[18:19]
	v_add_f64 v[6:7], v[6:7], v[24:25]
	v_add_f64 v[18:19], v[26:27], -v[20:21]
	v_add_f64 v[20:21], v[28:29], -v[22:23]
	v_add_f64 v[14:15], v[14:15], -v[18:19]
	v_add_f64 v[16:17], v[16:17], -v[20:21]
	v_add_f64 v[12:13], v[12:13], v[14:15]
	v_add_f64 v[6:7], v[6:7], v[16:17]
	v_add_f64 v[14:15], v[26:27], v[12:13]
	v_add_f64 v[16:17], v[28:29], v[6:7]
	v_add_f64 v[18:19], v[14:15], -v[26:27]
	v_add_f64 v[20:21], v[14:15], v[14:15]
	v_add_f64 v[22:23], v[16:17], -v[28:29]
	v_add_f64 v[24:25], v[16:17], v[16:17]
	v_add_f64 v[12:13], v[12:13], -v[18:19]
	v_fma_f64 v[14:15], v[14:15], 2.0, -v[20:21]
	v_add_f64 v[6:7], v[6:7], -v[22:23]
	v_fma_f64 v[16:17], v[16:17], 2.0, -v[24:25]
	v_fma_f64 v[12:13], v[12:13], 2.0, v[14:15]
	v_fma_f64 v[6:7], v[6:7], 2.0, v[16:17]
	v_add_f64 v[14:15], v[20:21], v[12:13]
	v_cmp_class_f64_e64 s[4:5], v[20:21], s19
	v_add_f64 v[16:17], v[24:25], v[6:7]
	v_cmp_class_f64_e64 s[6:7], v[24:25], s19
	v_cndmask_b32_e64 v19, v15, v21, s[4:5]
	v_cndmask_b32_e64 v18, v14, v20, s[4:5]
	v_add_f64 v[14:15], v[14:15], -v[20:21]
	v_cndmask_b32_e64 v21, v17, v25, s[6:7]
	v_add_f64 v[22:23], v[16:17], -v[24:25]
	v_cndmask_b32_e64 v20, v16, v24, s[6:7]
	v_mul_f64 v[16:17], v[18:19], s[58:59]
	v_mul_f64 v[24:25], v[20:21], s[58:59]
	v_cmp_gt_f64_e64 s[4:5], s[90:91], v[20:21]
	v_cmp_gt_f64_e64 s[6:7], s[90:91], v[18:19]
	v_add_f64 v[12:13], v[12:13], -v[14:15]
	v_cmp_neq_f64_e64 s[10:11], |v[18:19]|, s[30:31]
	v_add_f64 v[6:7], v[6:7], -v[22:23]
	v_cmp_neq_f64_e64 s[12:13], |v[20:21]|, s[30:31]
	v_rndne_f64_e32 v[14:15], v[16:17]
	v_rndne_f64_e32 v[16:17], v[24:25]
	v_cndmask_b32_e64 v13, 0, v13, s[10:11]
	v_cndmask_b32_e64 v12, 0, v12, s[10:11]
	v_cndmask_b32_e64 v7, 0, v7, s[12:13]
	v_cndmask_b32_e64 v6, 0, v6, s[12:13]
	v_mul_f64 v[22:23], v[14:15], s[86:87]
	v_mul_f64 v[24:25], v[14:15], s[60:61]
	v_mul_f64 v[26:27], v[16:17], s[86:87]
	v_mul_f64 v[28:29], v[14:15], s[62:63]
	v_cvt_i32_f64_e32 v42, v[14:15]
	v_mul_f64 v[14:15], v[16:17], s[60:61]
	v_mul_f64 v[32:33], v[16:17], s[62:63]
	v_cvt_i32_f64_e32 v43, v[16:17]
	v_add_f64 v[16:17], v[18:19], -v[22:23]
	v_add_f64 v[34:35], v[20:21], -v[26:27]
	v_add_f64 v[36:37], v[16:17], -v[18:19]
	v_add_f64 v[38:39], v[34:35], -v[20:21]
	v_add_f64 v[40:41], v[16:17], -v[36:37]
	v_add_f64 v[22:23], v[22:23], v[36:37]
	v_add_f64 v[36:37], v[34:35], -v[38:39]
	v_add_f64 v[26:27], v[26:27], v[38:39]
	v_add_f64 v[38:39], v[18:19], -v[40:41]
	v_add_f64 v[36:37], v[20:21], -v[36:37]
	v_add_f64 v[22:23], v[38:39], -v[22:23]
	v_add_f64 v[26:27], v[36:37], -v[26:27]
	v_add_f64 v[12:13], v[12:13], v[22:23]
	v_add_f64 v[6:7], v[6:7], v[26:27]
	v_add_f64 v[22:23], v[16:17], v[12:13]
	v_add_f64 v[26:27], v[34:35], v[6:7]
	v_add_f64 v[36:37], v[22:23], v[24:25]
	v_add_f64 v[38:39], v[26:27], v[14:15]
	v_add_f64 v[16:17], v[22:23], -v[16:17]
	v_add_f64 v[34:35], v[26:27], -v[34:35]
	v_add_f64 v[22:23], v[22:23], -v[36:37]
	v_add_f64 v[26:27], v[26:27], -v[38:39]
	v_add_f64 v[12:13], v[12:13], -v[16:17]
	v_add_f64 v[6:7], v[6:7], -v[34:35]
	v_add_f64 v[16:17], v[22:23], v[24:25]
	v_add_f64 v[14:15], v[26:27], v[14:15]
	v_add_f64 v[12:13], v[12:13], v[16:17]
	v_add_f64 v[6:7], v[6:7], v[14:15]
	v_add_f64 v[14:15], v[36:37], v[12:13]
	v_add_f64 v[16:17], v[38:39], v[6:7]
	v_add_f64 v[22:23], v[14:15], v[28:29]
	v_add_f64 v[24:25], v[16:17], v[32:33]
	v_add_f64 v[26:27], v[14:15], -v[36:37]
	v_add_f64 v[34:35], v[16:17], -v[38:39]
	v_add_f64 v[14:15], v[14:15], -v[22:23]
	v_add_f64 v[16:17], v[16:17], -v[24:25]
	v_add_f64 v[12:13], v[12:13], -v[26:27]
	v_add_f64 v[6:7], v[6:7], -v[34:35]
	v_add_f64 v[14:15], v[14:15], v[28:29]
	v_add_f64 v[16:17], v[16:17], v[32:33]
	v_add_f64 v[12:13], v[12:13], v[14:15]
	v_add_f64 v[6:7], v[6:7], v[16:17]
	v_add_f64 v[14:15], v[22:23], v[12:13]
	v_add_f64 v[16:17], v[24:25], v[6:7]
	v_fma_f64 v[26:27], v[14:15], s[66:67], v[30:31]
	v_fma_f64 v[28:29], v[16:17], s[66:67], v[30:31]
	v_mul_f64 v[30:31], v[14:15], v[14:15]
	v_add_f64 v[22:23], v[14:15], -v[22:23]
	v_add_f64 v[24:25], v[16:17], -v[24:25]
	v_mul_f64 v[32:33], v[16:17], v[16:17]
	v_fma_f64 v[26:27], v[14:15], v[26:27], s[68:69]
	v_fma_f64 v[28:29], v[16:17], v[28:29], s[68:69]
	v_fma_f64 v[34:35], v[14:15], v[14:15], -v[30:31]
	v_add_f64 v[12:13], v[12:13], -v[22:23]
	v_add_f64 v[6:7], v[6:7], -v[24:25]
	v_fma_f64 v[22:23], v[16:17], v[16:17], -v[32:33]
	v_fma_f64 v[24:25], v[14:15], v[26:27], s[70:71]
	v_fma_f64 v[26:27], v[16:17], v[28:29], s[70:71]
	v_add_f64 v[28:29], v[12:13], v[12:13]
	v_add_f64 v[36:37], v[6:7], v[6:7]
	v_fma_f64 v[24:25], v[14:15], v[24:25], s[72:73]
	v_fma_f64 v[26:27], v[16:17], v[26:27], s[72:73]
	v_fma_f64 v[28:29], v[14:15], v[28:29], v[34:35]
	v_fma_f64 v[22:23], v[16:17], v[36:37], v[22:23]
	v_fma_f64 v[24:25], v[14:15], v[24:25], s[74:75]
	v_fma_f64 v[26:27], v[16:17], v[26:27], s[74:75]
	v_fma_f64 v[28:29], v[12:13], v[12:13], v[28:29]
	v_fma_f64 v[22:23], v[6:7], v[6:7], v[22:23]
	v_fma_f64 v[24:25], v[14:15], v[24:25], s[76:77]
	v_fma_f64 v[26:27], v[16:17], v[26:27], s[76:77]
	v_add_f64 v[34:35], v[30:31], v[28:29]
	v_add_f64 v[36:37], v[32:33], v[22:23]
	v_fma_f64 v[24:25], v[14:15], v[24:25], s[78:79]
	v_fma_f64 v[26:27], v[16:17], v[26:27], s[78:79]
	v_add_f64 v[30:31], v[34:35], -v[30:31]
	v_add_f64 v[32:33], v[36:37], -v[32:33]
	v_fma_f64 v[24:25], v[14:15], v[24:25], s[80:81]
	v_fma_f64 v[26:27], v[16:17], v[26:27], s[80:81]
	v_add_f64 v[28:29], v[28:29], -v[30:31]
	v_add_f64 v[22:23], v[22:23], -v[32:33]
	v_fma_f64 v[24:25], v[14:15], v[24:25], s[82:83]
	v_fma_f64 v[26:27], v[16:17], v[26:27], s[82:83]
	v_mul_f64 v[30:31], v[34:35], v[24:25]
	v_mul_f64 v[32:33], v[36:37], v[26:27]
	v_fma_f64 v[34:35], v[34:35], v[24:25], -v[30:31]
	v_fma_f64 v[36:37], v[36:37], v[26:27], -v[32:33]
	v_fma_f64 v[24:25], v[28:29], v[24:25], v[34:35]
	v_fma_f64 v[22:23], v[22:23], v[26:27], v[36:37]
	v_add_f64 v[26:27], v[30:31], v[24:25]
	v_add_f64 v[28:29], v[32:33], v[22:23]
	v_add_f64 v[34:35], v[14:15], v[26:27]
	v_add_f64 v[30:31], v[26:27], -v[30:31]
	v_add_f64 v[36:37], v[16:17], v[28:29]
	v_add_f64 v[32:33], v[28:29], -v[32:33]
	v_add_f64 v[14:15], v[34:35], -v[14:15]
	v_add_f64 v[24:25], v[24:25], -v[30:31]
	v_add_f64 v[16:17], v[36:37], -v[16:17]
	v_add_f64 v[22:23], v[22:23], -v[32:33]
	v_add_f64 v[14:15], v[26:27], -v[14:15]
	v_add_f64 v[12:13], v[12:13], v[24:25]
	v_add_f64 v[16:17], v[28:29], -v[16:17]
	v_add_f64 v[6:7], v[6:7], v[22:23]
	v_add_f64 v[12:13], v[14:15], v[12:13]
	v_add_f64 v[6:7], v[16:17], v[6:7]
	v_add_f64 v[12:13], v[34:35], v[12:13]
	v_add_f64 v[6:7], v[36:37], v[6:7]
	v_add_f64 v[12:13], v[12:13], 1.0
	v_add_f64 v[6:7], v[6:7], 1.0
	v_ldexp_f64 v[12:13], v[12:13], v42
	v_cmp_nlt_f64_e64 s[10:11], s[88:89], v[18:19]
	v_ldexp_f64 v[6:7], v[6:7], v43
	v_cmp_nlt_f64_e64 s[12:13], s[88:89], v[20:21]
	v_cndmask_b32_e64 v12, 0, v12, s[10:11]
	v_cndmask_b32_e64 v13, v46, v13, s[10:11]
	v_cndmask_b32_e64 v14, 0, v6, s[12:13]
	v_cndmask_b32_e64 v6, v46, v7, s[12:13]
	s_or_b64 s[4:5], vcc, s[4:5]
	s_or_b64 s[6:7], s[2:3], s[6:7]
	v_cndmask_b32_e64 v7, v13, 0, s[6:7]
	v_cmp_class_f64_e64 vcc, v[8:9], s19
	v_cndmask_b32_e64 v6, v6, 0, s[4:5]
	v_cmp_class_f64_e64 s[2:3], v[10:11], s19
	v_cndmask_b32_e32 v7, v7, v46, vcc
	v_cndmask_b32_e64 v9, v6, v46, s[2:3]
	s_or_b64 s[6:7], vcc, s[6:7]
	v_cndmask_b32_e64 v6, v12, 0, s[6:7]
	s_or_b64 s[2:3], s[2:3], s[4:5]
	v_cndmask_b32_e64 v8, v14, 0, s[2:3]
	v_add_f64 v[6:7], |v[6:7]|, -|v[8:9]|
	s_mov_b32 s92, s30
	v_div_scale_f64 v[8:9], s[2:3], s[92:93], s[92:93], v[6:7]
	v_rcp_f64_e32 v[10:11], v[8:9]
	v_fma_f64 v[12:13], -v[8:9], v[10:11], 1.0
	v_fma_f64 v[10:11], v[10:11], v[12:13], v[10:11]
	v_div_scale_f64 v[12:13], vcc, v[6:7], s[92:93], v[6:7]
	v_fma_f64 v[14:15], -v[8:9], v[10:11], 1.0
	v_fma_f64 v[10:11], v[10:11], v[14:15], v[10:11]
	v_mul_f64 v[14:15], v[12:13], v[10:11]
	v_fma_f64 v[8:9], -v[8:9], v[14:15], v[12:13]
	v_div_fmas_f64 v[8:9], v[8:9], v[10:11], v[14:15]
	v_div_fixup_f64 v[6:7], v[8:9], s[92:93], v[6:7]
	v_add_f64 v[2:3], v[2:3], v[6:7]
	s_add_i32 s33, s33, -1
	v_add_u32_e32 v4, vcc, 4, v4
	s_cmp_lg_u32 s33, 0
	v_addc_u32_e32 v5, vcc, 0, v5, vcc
	s_cbranch_scc1 BB3_16
BB3_17:                                 ; %_Z17calcLikelihoodSumPhPiii.exit
	v_cvt_f64_i32_e32 v[4:5], s29
	v_div_scale_f64 v[6:7], s[2:3], v[4:5], v[4:5], v[2:3]
	v_rcp_f64_e32 v[8:9], v[6:7]
	v_fma_f64 v[10:11], -v[6:7], v[8:9], 1.0
	v_fma_f64 v[8:9], v[8:9], v[10:11], v[8:9]
	v_div_scale_f64 v[10:11], vcc, v[2:3], v[4:5], v[2:3]
	v_fma_f64 v[12:13], -v[6:7], v[8:9], 1.0
	v_fma_f64 v[8:9], v[8:9], v[12:13], v[8:9]
	v_mul_f64 v[12:13], v[10:11], v[8:9]
	v_fma_f64 v[6:7], -v[6:7], v[12:13], v[10:11]
	v_div_fmas_f64 v[6:7], v[6:7], v[8:9], v[12:13]
	v_div_fixup_f64 v[2:3], v[6:7], v[4:5], v[2:3]
	s_mov_b32 s3, 0x3ff71547
	s_mov_b32 s2, 0x652b82fe
	v_mul_f64 v[4:5], v[2:3], s[2:3]
	v_rndne_f64_e32 v[4:5], v[4:5]
	s_mov_b32 s3, 0xbfe62e42
	s_mov_b32 s2, 0xfefa3000
	s_mov_b32 s5, 0xbd53de6a
	s_mov_b32 s4, 0xf278ece6
	v_fma_f64 v[6:7], v[4:5], s[2:3], v[2:3]
	v_mul_f64 v[8:9], v[4:5], s[4:5]
	v_add_f64 v[10:11], v[6:7], v[8:9]
	v_mov_b32_e32 v12, 0xfca7ab0c
	v_mov_b32_e32 v13, 0x3e928af3
	s_mov_b32 s3, 0x3e5ade15
	s_mov_b32 s2, 0x6a5dcb37
	v_fma_f64 v[12:13], v[10:11], s[2:3], v[12:13]
	s_mov_b32 s3, 0x3ec71dee
	s_mov_b32 s2, 0x623fde64
	v_fma_f64 v[12:13], v[10:11], v[12:13], s[2:3]
	s_mov_b32 s3, 0x3efa0199
	s_mov_b32 s2, 0x7c89e6b0
	v_fma_f64 v[12:13], v[10:11], v[12:13], s[2:3]
	s_mov_b32 s3, 0x3f2a01a0
	s_mov_b32 s2, 0x14761f6e
	v_add_f64 v[6:7], v[6:7], -v[10:11]
	v_fma_f64 v[12:13], v[10:11], v[12:13], s[2:3]
	s_mov_b32 s3, 0x3f56c16c
	s_mov_b32 s2, 0x1852b7b0
	v_mul_f64 v[14:15], v[10:11], v[10:11]
	v_add_f64 v[6:7], v[6:7], v[8:9]
	v_fma_f64 v[8:9], v[10:11], v[12:13], s[2:3]
	s_mov_b32 s3, 0x3f811111
	s_mov_b32 s2, 0x11122322
	v_fma_f64 v[12:13], v[10:11], v[10:11], -v[14:15]
	v_add_f64 v[16:17], v[6:7], v[6:7]
	v_fma_f64 v[8:9], v[10:11], v[8:9], s[2:3]
	s_mov_b32 s3, 0x3fa55555
	s_mov_b32 s2, 0x555502a1
	v_fma_f64 v[12:13], v[10:11], v[16:17], v[12:13]
	v_fma_f64 v[8:9], v[10:11], v[8:9], s[2:3]
	s_mov_b32 s3, 0x3fc55555
	s_mov_b32 s2, 0x55555511
	v_fma_f64 v[12:13], v[6:7], v[6:7], v[12:13]
	v_fma_f64 v[8:9], v[10:11], v[8:9], s[2:3]
	s_mov_b32 s3, 0x3fe00000
	s_mov_b32 s2, 11
	v_add_f64 v[16:17], v[14:15], v[12:13]
	v_fma_f64 v[8:9], v[10:11], v[8:9], s[2:3]
	v_add_f64 v[14:15], v[16:17], -v[14:15]
	v_mul_f64 v[18:19], v[16:17], v[8:9]
	v_add_f64 v[12:13], v[12:13], -v[14:15]
	v_fma_f64 v[14:15], v[16:17], v[8:9], -v[18:19]
	v_fma_f64 v[8:9], v[12:13], v[8:9], v[14:15]
	v_add_f64 v[12:13], v[18:19], v[8:9]
	v_add_f64 v[14:15], v[10:11], v[12:13]
	v_add_f64 v[16:17], v[12:13], -v[18:19]
	v_add_f64 v[10:11], v[14:15], -v[10:11]
	v_add_f64 v[8:9], v[8:9], -v[16:17]
	v_add_f64 v[10:11], v[12:13], -v[10:11]
	v_add_f64 v[6:7], v[6:7], v[8:9]
	v_add_f64 v[6:7], v[10:11], v[6:7]
	v_add_f64 v[6:7], v[14:15], v[6:7]
	s_mov_b32 s2, 0
	v_mov_b32_e32 v8, 0
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, s25
	v_mov_b32_e32 v11, s17
	s_mov_b32 s3, 0x40900000
	v_add_f64 v[6:7], v[6:7], 1.0
	v_mov_b32_e32 v12, 0x7ff00000
	v_ashrrev_i64 v[8:9], 29, v[8:9]
	v_cvt_i32_f64_e32 v13, v[4:5]
	v_add_u32_e32 v4, vcc, s24, v8
	v_addc_u32_e32 v5, vcc, v10, v9, vcc
	v_ldexp_f64 v[6:7], v[6:7], v13
	v_add_u32_e32 v8, vcc, s16, v8
	v_addc_u32_e32 v9, vcc, v11, v9, vcc
	flat_store_dwordx2 v[4:5], v[2:3]
	v_cmp_nlt_f64_e32 vcc, s[2:3], v[2:3]
	s_mov_b32 s3, 0xc090cc00
	v_cndmask_b32_e32 v4, v12, v7, vcc
	v_cmp_ngt_f64_e64 s[2:3], s[2:3], v[2:3]
	flat_load_dwordx2 v[2:3], v[8:9]
	v_cndmask_b32_e64 v5, 0, v4, s[2:3]
	s_and_b64 vcc, s[2:3], vcc
	v_cndmask_b32_e32 v4, 0, v6, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f64 v[2:3], v[4:5], v[2:3]
	flat_store_dwordx2 v[8:9], v[2:3]
BB3_18:                                 ; %Flow225
	s_or_b64 exec, exec, s[22:23]
	v_lshlrev_b32_e32 v2, 3, v0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v4, v3
	s_mov_b32 m0, -1
	ds_write_b64 v2, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz BB3_20
; %bb.19:
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v4, v1
	v_ashrrev_i64 v[3:4], 29, v[3:4]
	v_mov_b32_e32 v1, s17
	v_add_u32_e32 v3, vcc, s16, v3
	v_addc_u32_e32 v4, vcc, v1, v4, vcc
	flat_load_dwordx2 v[3:4], v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b64 v2, v[3:4]
BB3_20:
	s_or_b64 exec, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s18, 1
	v_cmp_eq_u16_e64 s[2:3], s0, 0
	s_and_b64 vcc, exec, s[2:3]
	s_cbranch_vccz BB3_25
BB3_21:                                 ; %._crit_edge
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB3_23
; %bb.22:
	s_lshl_b64 s[2:3], s[8:9], 3
	s_add_u32 s2, s14, s2
	s_addc_u32 s3, s15, s3
	v_mov_b32_e32 v0, 0
	ds_read_b64 v[0:1], v0
	v_mov_b32_e32 v2, s2
	v_mov_b32_e32 v3, s3
	s_waitcnt lgkmcnt(0)
	flat_store_dwordx2 v[2:3], v[0:1]
BB3_23:
	s_or_b64 exec, exec, s[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_endpgm
BB3_24:                                 ;   in Loop: Header=BB3_25 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_lshr_b32 s0, s0, 1
	s_cmp_eq_u32 s0, 0
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc1 BB3_21
BB3_25:                                 ; %.lr.ph
                                        ; =>This Inner Loop Header: Depth=1
	v_cmp_gt_u32_e32 vcc, s0, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz BB3_24
; %bb.26:                               ;   in Loop: Header=BB3_25 Depth=1
	s_lshl_b32 s1, s0, 3
	v_add_u32_e32 v1, vcc, s1, v2
	ds_read_b64 v[3:4], v1
	ds_read_b64 v[5:6], v2
	s_waitcnt lgkmcnt(0)
	v_add_f64 v[3:4], v[3:4], v[5:6]
	ds_write_b64 v2, v[3:4]
	s_branch BB3_24
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_
		.amdhsa_group_segment_fixed_size 4096
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
		.amdhsa_next_free_vgpr 50
		.amdhsa_next_free_sgpr 94
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
	.size	_Z17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_, .Lfunc_end3-_Z17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 11568
; NumSgprs: 98
; NumVgprs: 50
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 4096 bytes/workgroup (compile time only)
; SGPRBlocks: 12
; VGPRBlocks: 12
; NumSGPRsForWavesPerEU: 98
; NumVGPRsForWavesPerEU: 50
; Occupancy: 4
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
      - .offset:         56
        .size:           4
        .value_kind:     by_value
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
    .name:           _Z17find_index_kernelPdS_S_S_S_S_S_i
    .private_segment_fixed_size: 0
    .sgpr_count:     26
    .sgpr_spill_count: 0
    .symbol:         _Z17find_index_kernelPdS_S_S_S_S_S_i.kd
    .vgpr_count:     10
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
    .group_segment_fixed_size: 16
    .kernarg_segment_align: 8
    .kernarg_segment_size: 104
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z24normalize_weights_kernelPdiS_S_S_Pi
    .private_segment_fixed_size: 0
    .sgpr_count:     24
    .sgpr_spill_count: 0
    .symbol:         _Z24normalize_weights_kernelPdiS_S_S_Pi.kd
    .vgpr_count:     20
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
      - .offset:         16
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         24
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         32
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     hidden_none
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
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 72
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z10sum_kernelPdi
    .private_segment_fixed_size: 0
    .sgpr_count:     13
    .sgpr_spill_count: 0
    .symbol:         _Z10sum_kernelPdi.kd
    .vgpr_count:     4
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
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     global_buffer
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         120
        .size:           8
        .value_kind:     global_buffer
      - .offset:         128
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         136
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         144
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         160
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         176
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 4096
    .kernarg_segment_align: 8
    .kernarg_segment_size: 184
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_
    .private_segment_fixed_size: 0
    .sgpr_count:     98
    .sgpr_spill_count: 0
    .symbol:         _Z17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_.kd
    .vgpr_count:     50
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
