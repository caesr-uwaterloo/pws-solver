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
	v_cmp_eq_u32_e32 vcc, 0, v0
	v_lshlrev_b32_e32 v4, 2, v1
	s_mov_b32 m0, -1
	s_and_saveexec_b64 s[12:13], vcc
	s_cbranch_execz BB0_2
; %bb.1:
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_add_u32_e64 v5, s[0:1], 1, v2
	v_ashrrev_i32_e32 v6, 31, v5
	v_lshlrev_b64 v[5:6], 2, v[5:6]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, s5
	v_add_u32_e64 v5, s[0:1], s4, v5
	v_addc_u32_e64 v6, s[0:1], v3, v6, s[0:1]
	flat_load_dword v3, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v4, v3
BB0_2:
	s_or_b64 exec, exec, s[12:13]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s2, 1
	v_mul_lo_u32 v2, v2, s0
	v_add_u32_e64 v3, s[0:1], s0, v0
	v_mov_b32_e32 v5, s9
	s_waitcnt lgkmcnt(0)
	v_add_u32_e64 v2, s[0:1], v3, v2
	v_add_u32_e64 v2, s[0:1], 1, v2
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_barrier
	v_add_u32_e64 v2, s[0:1], s8, v2
	v_addc_u32_e64 v3, s[0:1], v5, v3, s[0:1]
	s_waitcnt lgkmcnt(0)
	flat_load_dword v5, v[2:3]
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshlrev_b32_e32 v6, 6, v1
	v_add_u32_e64 v6, s[0:1], v6, v0
	v_and_b32_e32 v7, 1, v1
	v_add_u32_e64 v0, s[0:1], 64, v6
	v_cmp_eq_u32_e64 s[0:1], 0, v7
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v6, v5 offset:64
	s_mov_b32 m0, -1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	ds_read_b32 v5, v6 offset:64
	ds_read_b32 v4, v4
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v4, v5, v4
	ds_write_b32 v6, v4 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB0_4
; %bb.3:
	ds_read2_b32 v[4:5], v0 offset1:16
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v4, v4, v5
	ds_write_b32 v0, v4
BB0_4:
	s_or_b64 exec, exec, s[4:5]
	v_and_b32_e32 v4, 3, v1
	v_cmp_eq_u32_e64 s[0:1], 0, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB0_6
; %bb.5:
	ds_read2_b32 v[4:5], v0 offset1:32
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v4, v4, v5
	ds_write_b32 v0, v4
BB0_6:
	s_or_b64 exec, exec, s[4:5]
	v_and_b32_e32 v4, 7, v1
	v_cmp_eq_u32_e64 s[0:1], 0, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB0_8
; %bb.7:
	ds_read2st64_b32 v[4:5], v0 offset1:1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v4, v4, v5
	ds_write_b32 v0, v4
BB0_8:
	s_or_b64 exec, exec, s[4:5]
	v_and_b32_e32 v4, 15, v1
	v_cmp_eq_u32_e64 s[0:1], 0, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB0_10
; %bb.9:
	ds_read2st64_b32 v[4:5], v0 offset1:2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v4, v4, v5
	ds_write_b32 v0, v4
BB0_10:
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	ds_read_b32 v0, v0
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[2:3], v0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_12
; %bb.11:
	s_mul_i32 s7, s7, s2
	v_add_u32_e32 v2, vcc, s7, v1
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_mov_b32_e32 v0, s11
	v_add_u32_e32 v2, vcc, s10, v2
	v_addc_u32_e32 v3, vcc, v0, v3, vcc
	v_lshlrev_b32_e32 v0, 2, v1
	ds_read_b32 v0, v0 offset:64
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[2:3], v0
BB0_12:
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
		.amdhsa_next_free_vgpr 8
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
	.size	_Z22bpnn_layerforward_CUDAPfS_S_S_ii, .Lfunc_end0-_Z22bpnn_layerforward_CUDAPfS_S_S_ii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 652
; NumSgprs: 18
; NumVgprs: 8
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 1088 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 18
; NumVGPRsForWavesPerEU: 8
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