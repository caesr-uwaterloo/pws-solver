	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z6KernelP4NodePiPbS2_S2_S1_i ; -- Begin function _Z6KernelP4NodePiPbS2_S2_S1_i
	.globl	_Z6KernelP4NodePiPbS2_S2_S1_i
	.p2align	8
	.type	_Z6KernelP4NodePiPbS2_S2_S1_i,@function
_Z6KernelP4NodePiPbS2_S2_S1_i:          ; @_Z6KernelP4NodePiPbS2_S2_S1_i
_Z6KernelP4NodePiPbS2_S2_S1_i$local:
; %bb.0:
	s_load_dword s2, s[4:5], 0x30
	s_mov_b32 s7, 0
	s_lshl_b64 s[0:1], s[6:7], 9
	v_or_b32_e32 v5, s0, v0
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s2, v5
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB0_7
; %bb.1:
	s_load_dwordx8 s[8:15], s[4:5], 0x0
	v_ashrrev_i32_e32 v6, 31, v5
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, s13
	v_add_u32_e32 v0, vcc, s12, v5
	v_addc_u32_e32 v1, vcc, v1, v6, vcc
	flat_load_ubyte v2, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_ne_u16_e32 vcc, 0, v2
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB0_7
; %bb.2:
	v_mov_b32_e32 v2, 0
	flat_store_byte v[0:1], v2
	v_lshlrev_b64 v[0:1], 3, v[5:6]
	v_mov_b32_e32 v2, s9
	v_add_u32_e32 v0, vcc, s8, v0
	v_addc_u32_e32 v1, vcc, v2, v1, vcc
	v_add_u32_e32 v0, vcc, 4, v0
	v_addc_u32_e32 v1, vcc, 0, v1, vcc
	flat_load_dword v1, v[0:1]
	s_load_dwordx4 s[0:3], s[4:5], 0x20
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_lt_i32_e32 vcc, 0, v1
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB0_7
; %bb.3:                                ; %.lr.ph
	v_lshlrev_b64 v[2:3], 3, v[5:6]
	v_mov_b32_e32 v0, s9
	v_add_u32_e32 v2, vcc, s8, v2
	v_addc_u32_e32 v3, vcc, v0, v3, vcc
	flat_load_dword v4, v[2:3]
	v_lshlrev_b64 v[6:7], 2, v[5:6]
	v_mov_b32_e32 v0, s3
	v_add_u32_e32 v6, vcc, s2, v6
	v_addc_u32_e32 v7, vcc, v0, v7, vcc
	v_mov_b32_e32 v10, s11
	s_mov_b64 s[4:5], 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b64 v[8:9], 2, v[4:5]
	v_mov_b32_e32 v0, v4
	v_add_u32_e32 v8, vcc, s10, v8
	v_addc_u32_e32 v9, vcc, v10, v9, vcc
	s_branch BB0_5
BB0_4:                                  ;   in Loop: Header=BB0_5 Depth=1
	s_or_b64 exec, exec, s[6:7]
	v_add_u32_e32 v4, vcc, 1, v4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v5, vcc, v0, v1
	v_cmp_ge_i32_e32 vcc, v4, v5
	s_or_b64 s[4:5], vcc, s[4:5]
	v_add_u32_e32 v8, vcc, 4, v8
	v_addc_u32_e32 v9, vcc, 0, v9, vcc
	s_andn2_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_7
BB0_5:                                  ; =>This Inner Loop Header: Depth=1
	flat_load_dword v10, v[8:9]
	v_mov_b32_e32 v5, s1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v11, 31, v10
	v_add_u32_e32 v12, vcc, s0, v10
	v_addc_u32_e32 v13, vcc, v5, v11, vcc
	flat_load_ubyte v5, v[12:13]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_eq_u16_e32 vcc, 0, v5
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz BB0_4
; %bb.6:                                ;   in Loop: Header=BB0_5 Depth=1
	flat_load_dword v5, v[6:7]
	v_lshlrev_b64 v[0:1], 2, v[10:11]
	v_mov_b32_e32 v12, s15
	v_add_u32_e32 v10, vcc, s14, v10
	v_addc_u32_e32 v11, vcc, v12, v11, vcc
	v_mov_b32_e32 v13, s3
	v_add_u32_e32 v0, vcc, s2, v0
	v_addc_u32_e32 v1, vcc, v13, v1, vcc
	v_mov_b32_e32 v14, 1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v5, vcc, 1, v5
	flat_store_dword v[0:1], v5
	flat_store_byte v[10:11], v14
	flat_load_dwordx2 v[0:1], v[2:3]
	s_branch BB0_4
BB0_7:                                  ; %.loopexit
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z6KernelP4NodePiPbS2_S2_S1_i
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
		.amdhsa_next_free_vgpr 15
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
.Lfunc_end0:
	.size	_Z6KernelP4NodePiPbS2_S2_S1_i, .Lfunc_end0-_Z6KernelP4NodePiPbS2_S2_S1_i
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 424
; NumSgprs: 20
; NumVgprs: 15
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 20
; NumVGPRsForWavesPerEU: 15
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z7Kernel2PbS_S_S_i     ; -- Begin function _Z7Kernel2PbS_S_S_i
	.globl	_Z7Kernel2PbS_S_S_i
	.p2align	8
	.type	_Z7Kernel2PbS_S_S_i,@function
_Z7Kernel2PbS_S_S_i:                    ; @_Z7Kernel2PbS_S_S_i
_Z7Kernel2PbS_S_S_i$local: