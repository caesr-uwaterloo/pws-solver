	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z7extractlPf           ; -- Begin function _Z7extractlPf
	.globl	_Z7extractlPf
	.p2align	8
	.type	_Z7extractlPf,@function
_Z7extractlPf:                          ; @_Z7extractlPf
_Z7extractlPf$local:
; %bb.0:
	s_load_dwordx4 s[0:3], s[4:5], 0x0
	s_lshl_b32 s4, s6, 9
	v_or_b32_e32 v0, s4, v0
	v_ashrrev_i32_e32 v1, 31, v0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v2, s0
	v_mov_b32_e32 v3, s1
	v_cmp_lt_i64_e32 vcc, v[0:1], v[2:3]
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB0_2
; %bb.1:
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_mov_b32_e32 v2, s3
	v_add_u32_e32 v0, vcc, s2, v0
	v_addc_u32_e32 v1, vcc, v2, v1, vcc
	flat_load_dword v2, v[0:1]
	s_mov_b32 s2, 0x437f0000
	s_mov_b32 s3, 0x32a5705f
	s_mov_b32 s4, 0xc2ce8ed0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_div_scale_f32 v3, s[0:1], s2, s2, v2
	v_div_scale_f32 v4, vcc, v2, s2, v2
	s_mov_b32 s0, 0xc2aeac50
	s_mov_b32 s1, 0x3fb8aa3b
	v_rcp_f32_e32 v5, v3
	v_fma_f32 v6, -v3, v5, 1.0
	v_fma_f32 v5, v6, v5, v5
	v_mul_f32_e32 v6, v4, v5
	v_fma_f32 v7, -v3, v6, v4
	v_fma_f32 v6, v7, v5, v6
	v_fma_f32 v3, -v3, v6, v4
	v_div_fmas_f32 v3, v3, v5, v6
	v_mov_b32_e32 v4, 0x42800000
	v_mov_b32_e32 v5, 0x114b4ea4
	v_mov_b32_e32 v6, 0x7f800000
	v_div_fixup_f32 v2, v3, s2, v2
	v_cmp_gt_f32_e32 vcc, s0, v2
	v_cndmask_b32_e32 v3, 0, v4, vcc
	v_add_f32_e32 v2, v2, v3
	v_mul_f32_e32 v3, s1, v2
	v_fma_f32 v4, v2, s1, -v3
	v_fma_f32 v4, v2, s3, v4
	v_exp_f32_e32 v3, v3
	v_exp_f32_e32 v4, v4
	v_cndmask_b32_e32 v5, 1.0, v5, vcc
	s_mov_b32 s0, 0x42b17218
	v_cmp_ngt_f32_e32 vcc, s4, v2
	v_mul_f32_e32 v3, v3, v4
	v_mul_f32_e32 v3, v5, v3
	v_cndmask_b32_e32 v3, 0, v3, vcc
	v_cmp_nlt_f32_e32 vcc, s0, v2
	v_cndmask_b32_e32 v2, v6, v3, vcc
	flat_store_dword v[0:1], v2
BB0_2:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z7extractlPf
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
		.amdhsa_next_free_vgpr 8
		.amdhsa_next_free_sgpr 7
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
	.size	_Z7extractlPf, .Lfunc_end0-_Z7extractlPf
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 308
; NumSgprs: 11
; NumVgprs: 8
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 11
; NumVGPRsForWavesPerEU: 8
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z7preparelPfS_S_       ; -- Begin function _Z7preparelPfS_S_
	.globl	_Z7preparelPfS_S_
	.p2align	8
	.type	_Z7preparelPfS_S_,@function
_Z7preparelPfS_S_:                      ; @_Z7preparelPfS_S_
_Z7preparelPfS_S_$local:
; %bb.0:
	s_load_dwordx8 s[8:15], s[4:5], 0x0
	s_lshl_b32 s0, s6, 9
	v_or_b32_e32 v0, s0, v0
	v_ashrrev_i32_e32 v1, 31, v0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v2, s8
	v_mov_b32_e32 v3, s9
	v_cmp_lt_i64_e32 vcc, v[0:1], v[2:3]
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB1_2
; %bb.1:
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_mov_b32_e32 v3, s11
	v_add_u32_e32 v2, vcc, s10, v0
	v_addc_u32_e32 v3, vcc, v3, v1, vcc
	flat_load_dword v6, v[2:3]
	v_mov_b32_e32 v5, s13
	v_add_u32_e32 v4, vcc, s12, v0
	v_addc_u32_e32 v5, vcc, v5, v1, vcc
	v_add_u32_e32 v0, vcc, s14, v0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[4:5], v6
	flat_load_dword v2, v[2:3]
	v_mov_b32_e32 v3, s15
	v_addc_u32_e32 v1, vcc, v3, v1, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v2, v2, v2
	flat_store_dword v[0:1], v2
BB1_2:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z7preparelPfS_S_
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
		.amdhsa_next_free_vgpr 7
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
.Lfunc_end1:
	.size	_Z7preparelPfS_S_, .Lfunc_end1-_Z7preparelPfS_S_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 136
; NumSgprs: 20
; NumVgprs: 7
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 20
; NumVGPRsForWavesPerEU: 7
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z6reduceliiPfS_        ; -- Begin function _Z6reduceliiPfS_
	.globl	_Z6reduceliiPfS_
	.p2align	8
	.type	_Z6reduceliiPfS_,@function
_Z6reduceliiPfS_:                       ; @_Z6reduceliiPfS_
_Z6reduceliiPfS_$local:
; %bb.0:
	s_load_dwordx2 s[2:3], s[6:7], 0x8
	s_load_dwordx4 s[12:15], s[6:7], 0x10
	s_load_dword s0, s[4:5], 0x4
	s_nop 0
	s_load_dword s7, s[4:5], 0xc
	s_lshl_b32 s6, s8, 9
	v_or_b32_e32 v1, s6, v0
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s2, v1
	s_mov_b32 m0, -1
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz BB2_2
; %bb.1:
	v_mul_lo_u32 v1, v1, s3
	v_mov_b32_e32 v4, s13
	v_mov_b32_e32 v5, s15
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_u32_e32 v3, vcc, s12, v1
	v_addc_u32_e32 v4, vcc, v4, v2, vcc
	v_add_u32_e32 v1, vcc, s14, v1
	v_addc_u32_e32 v2, vcc, v5, v2, vcc
	flat_load_dword v3, v[3:4]
	v_lshlrev_b32_e32 v4, 2, v0
	flat_load_dword v1, v[1:2]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write2st64_b32 v4, v1, v3 offset1:8
BB2_2:
	s_or_b64 exec, exec, s[4:5]
	s_and_b32 s4, 0xffff, s0
	v_cvt_f32_u32_e32 v1, s4
	s_sub_i32 s0, 0, s4
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_mul_lo_u32 v2, s0, v1
	v_mul_hi_u32 v2, v1, v2
	v_add_u32_e32 v1, vcc, v2, v1
	v_mul_hi_u32 v1, s7, v1
	v_mul_lo_u32 v2, v1, s4
	v_add_u32_e32 v3, vcc, 1, v1
	v_sub_u32_e32 v2, vcc, s7, v2
	v_cmp_le_u32_e64 s[0:1], s4, v2
	v_cndmask_b32_e64 v1, v1, v3, s[0:1]
	v_subrev_u32_e32 v3, vcc, s4, v2
	v_cndmask_b32_e64 v2, v2, v3, s[0:1]
	v_add_u32_e32 v3, vcc, 1, v1
	v_cmp_le_u32_e32 vcc, s4, v2
	v_cndmask_b32_e32 v1, v1, v3, vcc
	v_mul_lo_u32 v2, v1, s4
	s_mov_b64 s[0:1], -1
	v_cmp_gt_u32_e32 vcc, s7, v2
	v_addc_u32_e32 v2, vcc, 0, v1, vcc
	v_lshlrev_b32_e32 v1, 9, v2
	v_sub_u32_e32 v1, vcc, s2, v1
	v_cmp_ne_u32_e32 vcc, 0, v1
	s_and_b64 vcc, exec, vcc
	s_cbranch_vccnz BB2_5
; %bb.3:                                ; %Flow186
	s_andn2_b64 vcc, exec, s[0:1]
	s_cbranch_vccz BB2_41
BB2_4:
	s_branch BB2_60                     ; manually moving s_endpgm to last instruction
BB2_5:
	v_add_u32_e32 v2, vcc, -1, v2
	v_addc_u32_e64 v3, s[0:1], 0, -1, vcc
	s_ashr_i32 s9, s8, 31
	v_cmp_ne_u64_e32 vcc, s[8:9], v[2:3]
	s_mov_b64 s[0:1], -1
	s_and_b64 vcc, exec, vcc
	s_cbranch_vccz BB2_25
; %bb.6:                                ; %.preheader135
	v_add_u32_e32 v4, vcc, 1, v0
	v_lshlrev_b32_e32 v2, 2, v0
	v_and_b32_e32 v5, 1, v4
	v_or_b32_e32 v3, 0x800, v2
	v_cmp_eq_u32_e32 vcc, 0, v5
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_8
; %bb.7:
	v_add_u32_e32 v5, vcc, -4, v3
	ds_read2_b32 v[5:6], v5 offset1:1
	v_add_u32_e32 v7, vcc, -4, v2
	ds_read2_b32 v[7:8], v7 offset1:1
	s_waitcnt lgkmcnt(1)
	v_add_f32_e32 v5, v6, v5
	ds_write_b32 v3, v5
	s_waitcnt lgkmcnt(1)
	v_add_f32_e32 v5, v8, v7
	ds_write_b32 v2, v5
BB2_8:
	s_or_b64 exec, exec, s[0:1]
	v_and_b32_e32 v5, 3, v4
	v_cmp_eq_u32_e32 vcc, 0, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_10
; %bb.9:
	v_add_u32_e32 v6, vcc, -8, v3
	ds_read_b32 v5, v3
	ds_read_b32 v7, v2
	ds_read_b32 v6, v6
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v5, v6
	ds_write_b32 v3, v5
	v_add_u32_e32 v5, vcc, -8, v2
	ds_read_b32 v5, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v7, v5
	ds_write_b32 v2, v5
BB2_10:
	s_or_b64 exec, exec, s[0:1]
	v_and_b32_e32 v5, 7, v4
	v_cmp_eq_u32_e32 vcc, 0, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_12
; %bb.11:
	v_add_u32_e32 v6, vcc, -16, v3
	ds_read_b32 v5, v3
	ds_read_b32 v7, v2
	ds_read_b32 v6, v6
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v5, v6
	ds_write_b32 v3, v5
	v_add_u32_e32 v5, vcc, -16, v2
	ds_read_b32 v5, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v7, v5
	ds_write_b32 v2, v5
BB2_12:
	s_or_b64 exec, exec, s[0:1]
	v_and_b32_e32 v5, 15, v4
	v_cmp_eq_u32_e32 vcc, 0, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_14
; %bb.13:
	v_subrev_u32_e32 v6, vcc, 32, v3
	ds_read_b32 v5, v3
	ds_read_b32 v7, v2
	ds_read_b32 v6, v6
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v5, v6
	ds_write_b32 v3, v5
	v_subrev_u32_e32 v5, vcc, 32, v2
	ds_read_b32 v5, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v7, v5
	ds_write_b32 v2, v5
BB2_14:
	s_or_b64 exec, exec, s[0:1]
	v_and_b32_e32 v5, 31, v4
	v_cmp_eq_u32_e32 vcc, 0, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_16
; %bb.15:
	v_subrev_u32_e32 v6, vcc, 64, v3
	ds_read_b32 v5, v3
	ds_read_b32 v7, v2
	ds_read_b32 v6, v6
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v5, v6
	ds_write_b32 v3, v5
	v_subrev_u32_e32 v5, vcc, 64, v2
	ds_read_b32 v5, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v7, v5
	ds_write_b32 v2, v5
BB2_16:
	s_or_b64 exec, exec, s[0:1]
	v_and_b32_e32 v5, 63, v4
	v_cmp_eq_u32_e32 vcc, 0, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_18
; %bb.17:
	s_movk_i32 s2, 0xff80
	v_add_u32_e32 v6, vcc, s2, v3
	ds_read_b32 v5, v3
	ds_read_b32 v7, v2
	ds_read_b32 v6, v6
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v5, v6
	ds_write_b32 v3, v5
	v_add_u32_e32 v5, vcc, s2, v2
	ds_read_b32 v5, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v7, v5
	ds_write_b32 v2, v5
BB2_18:
	s_or_b64 exec, exec, s[0:1]
	v_and_b32_e32 v5, 0x7f, v4
	v_cmp_eq_u32_e32 vcc, 0, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_20
; %bb.19:
	s_movk_i32 s2, 0xff00
	v_add_u32_e32 v6, vcc, s2, v3
	ds_read_b32 v5, v3
	ds_read_b32 v7, v2
	ds_read_b32 v6, v6
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v5, v6
	ds_write_b32 v3, v5
	v_add_u32_e32 v5, vcc, s2, v2
	ds_read_b32 v5, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v7, v5
	ds_write_b32 v2, v5
BB2_20:
	s_or_b64 exec, exec, s[0:1]
	v_and_b32_e32 v5, 0xff, v4
	v_cmp_eq_u32_e32 vcc, 0, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_22
; %bb.21:
	s_movk_i32 s2, 0xfe00
	v_add_u32_e32 v6, vcc, s2, v3
	ds_read_b32 v5, v3
	ds_read_b32 v7, v2
	ds_read_b32 v6, v6
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v5, v6
	ds_write_b32 v3, v5
	v_add_u32_e32 v5, vcc, s2, v2
	ds_read_b32 v5, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v7, v5
	ds_write_b32 v2, v5
BB2_22:
	s_or_b64 exec, exec, s[0:1]
	v_cmp_eq_u32_e32 vcc, 0, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_24
; %bb.23:
	s_movk_i32 s2, 0xfc00
	v_add_u32_e32 v5, vcc, s2, v3
	ds_read_b32 v4, v3
	ds_read_b32 v5, v5
	v_or_b32_e32 v7, s2, v2
	ds_read_b32 v6, v2
	s_waitcnt lgkmcnt(1)
	v_add_f32_e32 v4, v4, v5
	ds_write_b32 v3, v4
	ds_read_b32 v3, v7
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v6, v3
	ds_write_b32 v2, v3
BB2_24:
	s_or_b64 exec, exec, s[0:1]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[0:1], 0
BB2_25:                                 ; %Flow183
	s_and_b64 vcc, exec, s[0:1]
	s_cbranch_vccz BB2_40
; %bb.26:                               ; %.preheader134.preheader
	s_movk_i32 s0, 0x200
	v_add_u32_e32 v1, vcc, s0, v1
	v_cmp_lt_i32_e32 vcc, 1, v1
	v_cndmask_b32_e64 v2, 0, 1, vcc
	v_lshlrev_b32_e32 v2, 1, v2
	v_cmp_gt_i32_e32 vcc, 4, v1
	v_cndmask_b32_e32 v2, 4, v2, vcc
	v_cmp_gt_i32_e32 vcc, 8, v1
	v_cndmask_b32_e32 v2, 8, v2, vcc
	v_cmp_gt_i32_e32 vcc, 16, v1
	v_cndmask_b32_e32 v2, 16, v2, vcc
	v_cmp_gt_i32_e32 vcc, 32, v1
	v_cndmask_b32_e32 v2, 32, v2, vcc
	v_cmp_gt_i32_e32 vcc, 64, v1
	s_movk_i32 s1, 0x80
	v_cndmask_b32_e32 v2, 64, v2, vcc
	v_cmp_gt_i32_e32 vcc, s1, v1
	v_mov_b32_e32 v3, s1
	s_movk_i32 s1, 0x100
	v_cndmask_b32_e32 v2, v3, v2, vcc
	v_cmp_gt_i32_e32 vcc, s1, v1
	v_mov_b32_e32 v3, s1
	v_cndmask_b32_e32 v2, v3, v2, vcc
	v_cmp_gt_i32_e32 vcc, s0, v1
	v_mov_b32_e32 v3, s0
	v_cndmask_b32_e32 v2, v3, v2, vcc
	v_cmp_lt_i32_e32 vcc, 1, v2
	s_and_b64 vcc, exec, vcc
	s_cbranch_vccz BB2_31
; %bb.27:                               ; %.lr.ph142
	v_lshlrev_b32_e32 v4, 2, v0
	v_add_u32_e32 v3, vcc, 1, v0
	v_cmp_gt_i32_e64 s[0:1], v2, v0
	s_mov_b32 s2, 2
	v_or_b32_e32 v5, 0x800, v4
	s_branch BB2_29
BB2_28:                                 ;   in Loop: Header=BB2_29 Depth=1
	s_or_b64 exec, exec, s[4:5]
	s_lshl_b32 s2, s2, 1
	v_cmp_le_i32_e32 vcc, s2, v2
	s_and_b64 vcc, exec, vcc
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_cbranch_vccz BB2_31
BB2_29:                                 ; =>This Inner Loop Header: Depth=1
	s_ashr_i32 s4, s2, 31
	s_add_i32 s5, s2, s4
	s_xor_b32 s4, s5, s4
	v_cvt_f32_u32_e32 v6, s4
	s_sub_i32 s5, 0, s4
	v_rcp_iflag_f32_e32 v6, v6
	v_mul_f32_e32 v6, 0x4f7ffffe, v6
	v_cvt_u32_f32_e32 v6, v6
	v_mul_lo_u32 v7, s5, v6
	v_mul_hi_u32 v7, v6, v7
	v_add_u32_e32 v6, vcc, v7, v6
	v_mul_hi_u32 v6, v3, v6
	v_mul_lo_u32 v6, v6, s4
	v_sub_u32_e32 v6, vcc, v3, v6
	v_subrev_u32_e32 v7, vcc, s4, v6
	v_cmp_le_u32_e32 vcc, s4, v6
	v_cndmask_b32_e32 v6, v6, v7, vcc
	v_subrev_u32_e32 v7, vcc, s4, v6
	v_cmp_le_u32_e32 vcc, s4, v6
	v_cndmask_b32_e32 v6, v6, v7, vcc
	v_cmp_eq_u32_e32 vcc, 0, v6
	s_and_b64 s[10:11], s[0:1], vcc
	s_and_saveexec_b64 s[4:5], s[10:11]
	s_cbranch_execz BB2_28
; %bb.30:                               ;   in Loop: Header=BB2_29 Depth=1
	s_lshr_b32 s7, s2, 31
	s_add_i32 s7, s2, s7
	s_lshr_b32 s7, s7, 1
	s_lshl_b32 s7, s7, 2
	v_subrev_u32_e32 v7, vcc, s7, v5
	ds_read_b32 v6, v5
	ds_read_b32 v8, v4
	ds_read_b32 v7, v7
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v6, v6, v7
	ds_write_b32 v5, v6
	v_subrev_u32_e32 v6, vcc, s7, v4
	ds_read_b32 v6, v6
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v6, v8, v6
	ds_write_b32 v4, v6
	s_branch BB2_28
BB2_31:                                 ; %._crit_edge143
	v_add_u32_e32 v3, vcc, -1, v2
	v_cmp_eq_u32_e32 vcc, v3, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_39
; %bb.32:
	v_cmp_lt_i32_e32 vcc, v2, v1
	s_and_b64 vcc, exec, vcc
	s_cbranch_vccnz BB2_34
; %bb.33:                               ; %._crit_edge151
	v_lshlrev_b32_e32 v3, 2, v0
	ds_read2st64_b32 v[3:4], v3 offset1:8
	s_cbranch_execz BB2_35
	s_branch BB2_38
BB2_34:
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
BB2_35:                                 ; %.lr.ph
	v_add_u32_e32 v6, vcc, s6, v2
	v_ashrrev_i32_e32 v7, 31, v6
	v_add_u32_e32 v5, vcc, s6, v1
	v_lshlrev_b32_e32 v1, 2, v0
	v_lshlrev_b64 v[9:10], 2, v[6:7]
	s_waitcnt lgkmcnt(0)
	ds_read2st64_b32 v[3:4], v1 offset1:8
	v_mov_b32_e32 v8, s15
	v_add_u32_e32 v7, vcc, s14, v9
	v_addc_u32_e32 v8, vcc, v8, v10, vcc
	v_mov_b32_e32 v11, s13
	v_add_u32_e32 v9, vcc, s12, v9
	v_or_b32_e32 v2, 0x800, v1
	v_addc_u32_e32 v10, vcc, v11, v10, vcc
BB2_36:                                 ; =>This Inner Loop Header: Depth=1
	flat_load_dword v11, v[9:10]
	flat_load_dword v12, v[7:8]
	v_add_u32_e32 v6, vcc, 1, v6
	v_add_u32_e32 v7, vcc, 4, v7
	v_addc_u32_e32 v8, vcc, 0, v8, vcc
	v_add_u32_e32 v9, vcc, 4, v9
	v_addc_u32_e32 v10, vcc, 0, v10, vcc
	v_cmp_lt_i32_e32 vcc, v6, v5
	s_and_b64 vcc, exec, vcc
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_f32_e32 v4, v4, v11
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v3, v3, v12
	s_cbranch_vccnz BB2_36
; %bb.37:                               ; %._crit_edge
	ds_write_b32 v2, v4
	ds_write_b32 v1, v3
BB2_38:
	s_mul_i32 s2, s8, s3
	s_lshl_b32 s2, s2, 9
	s_ashr_i32 s3, s2, 31
	s_lshl_b64 s[2:3], s[2:3], 2
	s_add_u32 s4, s12, s2
	s_addc_u32 s5, s13, s3
	v_mov_b32_e32 v1, s4
	s_add_u32 s2, s14, s2
	v_mov_b32_e32 v2, s5
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[1:2], v4
	s_addc_u32 s3, s15, s3
	v_mov_b32_e32 v1, s2
	v_mov_b32_e32 v2, s3
	flat_store_dword v[1:2], v3
BB2_39:                                 ; %Flow180
	s_or_b64 exec, exec, s[0:1]
BB2_40:                                 ; %Flow184
	s_cbranch_execnz BB2_4
BB2_41:                                 ; %.preheader
	v_add_u32_e32 v2, vcc, 1, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_and_b32_e32 v3, 1, v2
	v_or_b32_e32 v1, 0x800, v0
	v_cmp_eq_u32_e32 vcc, 0, v3
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_43
; %bb.42:
	v_add_u32_e32 v3, vcc, -4, v1
	ds_read2_b32 v[3:4], v3 offset1:1
	v_add_u32_e32 v5, vcc, -4, v0
	ds_read2_b32 v[5:6], v5 offset1:1
	s_waitcnt lgkmcnt(1)
	v_add_f32_e32 v3, v4, v3
	ds_write_b32 v1, v3
	s_waitcnt lgkmcnt(1)
	v_add_f32_e32 v3, v6, v5
	ds_write_b32 v0, v3
BB2_43:
	s_or_b64 exec, exec, s[0:1]
	v_and_b32_e32 v3, 3, v2
	v_cmp_eq_u32_e32 vcc, 0, v3
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_45
; %bb.44:
	v_add_u32_e32 v4, vcc, -8, v1
	ds_read_b32 v3, v1
	ds_read_b32 v5, v0
	ds_read_b32 v4, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v3, v4
	ds_write_b32 v1, v3
	v_add_u32_e32 v3, vcc, -8, v0
	ds_read_b32 v3, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v5, v3
	ds_write_b32 v0, v3
BB2_45:
	s_or_b64 exec, exec, s[0:1]
	v_and_b32_e32 v3, 7, v2
	v_cmp_eq_u32_e32 vcc, 0, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_47
; %bb.46:
	v_add_u32_e32 v4, vcc, -16, v1
	ds_read_b32 v3, v1
	ds_read_b32 v5, v0
	ds_read_b32 v4, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v3, v4
	ds_write_b32 v1, v3
	v_add_u32_e32 v3, vcc, -16, v0
	ds_read_b32 v3, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v5, v3
	ds_write_b32 v0, v3
BB2_47:
	s_or_b64 exec, exec, s[0:1]
	v_and_b32_e32 v3, 15, v2
	v_cmp_eq_u32_e32 vcc, 0, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_49
; %bb.48:
	v_subrev_u32_e32 v4, vcc, 32, v1
	ds_read_b32 v3, v1
	ds_read_b32 v5, v0
	ds_read_b32 v4, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v3, v4
	ds_write_b32 v1, v3
	v_subrev_u32_e32 v3, vcc, 32, v0
	ds_read_b32 v3, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v5, v3
	ds_write_b32 v0, v3
BB2_49:
	s_or_b64 exec, exec, s[0:1]
	v_and_b32_e32 v3, 31, v2
	v_cmp_eq_u32_e32 vcc, 0, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_51
; %bb.50:
	v_subrev_u32_e32 v4, vcc, 64, v1
	ds_read_b32 v3, v1
	ds_read_b32 v5, v0
	ds_read_b32 v4, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v3, v4
	ds_write_b32 v1, v3
	v_subrev_u32_e32 v3, vcc, 64, v0
	ds_read_b32 v3, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v5, v3
	ds_write_b32 v0, v3
BB2_51:
	s_or_b64 exec, exec, s[0:1]
	v_and_b32_e32 v3, 63, v2
	v_cmp_eq_u32_e32 vcc, 0, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_53
; %bb.52:
	s_movk_i32 s2, 0xff80
	v_add_u32_e32 v4, vcc, s2, v1
	ds_read_b32 v3, v1
	ds_read_b32 v5, v0
	ds_read_b32 v4, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v3, v4
	ds_write_b32 v1, v3
	v_add_u32_e32 v3, vcc, s2, v0
	ds_read_b32 v3, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v5, v3
	ds_write_b32 v0, v3
BB2_53:
	s_or_b64 exec, exec, s[0:1]
	v_and_b32_e32 v3, 0x7f, v2
	v_cmp_eq_u32_e32 vcc, 0, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_55
; %bb.54:
	s_movk_i32 s2, 0xff00
	v_add_u32_e32 v4, vcc, s2, v1
	ds_read_b32 v3, v1
	ds_read_b32 v5, v0
	ds_read_b32 v4, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v3, v4
	ds_write_b32 v1, v3
	v_add_u32_e32 v3, vcc, s2, v0
	ds_read_b32 v3, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v5, v3
	ds_write_b32 v0, v3
BB2_55:
	s_or_b64 exec, exec, s[0:1]
	v_and_b32_e32 v3, 0xff, v2
	v_cmp_eq_u32_e32 vcc, 0, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_57
; %bb.56:
	s_movk_i32 s2, 0xfe00
	v_add_u32_e32 v4, vcc, s2, v1
	ds_read_b32 v3, v1
	ds_read_b32 v5, v0
	ds_read_b32 v4, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v3, v4
	ds_write_b32 v1, v3
	v_add_u32_e32 v3, vcc, s2, v0
	ds_read_b32 v3, v3
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v5, v3
	ds_write_b32 v0, v3
BB2_57:
	s_or_b64 exec, exec, s[0:1]
	v_cmp_eq_u32_e32 vcc, 0, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_59
; %bb.58:
	s_movk_i32 s2, 0xfc00
	v_add_u32_e32 v3, vcc, s2, v1
	ds_read_b32 v2, v1
	ds_read_b32 v3, v3
	v_or_b32_e32 v5, s2, v0
	ds_read_b32 v4, v0
	s_waitcnt lgkmcnt(1)
	v_add_f32_e32 v2, v2, v3
	ds_write_b32 v1, v2
	ds_read_b32 v1, v5
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v4, v1
	ds_write_b32 v0, v1
BB2_59:
	s_or_b64 exec, exec, s[0:1]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
BB2_60:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z6reduceliiPfS_
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
		.amdhsa_next_free_vgpr 13
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
.Lfunc_end2:
	.size	_Z6reduceliiPfS_, .Lfunc_end2-_Z6reduceliiPfS_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 2936
; NumSgprs: 20
; NumVgprs: 13
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 4096 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 20
; NumVGPRsForWavesPerEU: 13
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_ ; -- Begin function _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_
	.globl	_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_
	.p2align	8
	.type	_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_,@function
_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_:  ; @_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_
_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_$local:
; %bb.0:
	s_load_dwordx16 s[8:23], s[4:5], 0x10
	s_lshl_b32 s0, s6, 9
	v_or_b32_e32 v0, s0, v0
	v_ashrrev_i32_e32 v1, 31, v0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v2, s8
	v_mov_b32_e32 v3, s9
	v_cmp_lt_i64_e32 vcc, v[0:1], v[2:3]
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB3_6
; %bb.1:
	s_load_dword s6, s[4:5], 0x4
	s_load_dwordx2 s[2:3], s[4:5], 0x50
	s_load_dword s7, s[4:5], 0x58
	s_load_dwordx4 s[24:27], s[4:5], 0x60
	v_add_u32_e32 v4, vcc, 1, v0
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s0, s6, 31
	s_add_i32 s1, s6, s0
	s_xor_b32 s4, s1, s0
	v_cvt_f32_u32_e32 v2, s4
	s_sub_i32 s1, 0, s4
	v_ashrrev_i32_e32 v5, 31, v4
	v_add_u32_e32 v6, vcc, v4, v5
	v_rcp_iflag_f32_e32 v2, v2
	v_xor_b32_e32 v6, v6, v5
	v_mov_b32_e32 v8, s11
	v_mov_b32_e32 v12, s27
	v_mul_f32_e32 v2, 0x4f7ffffe, v2
	v_cvt_u32_f32_e32 v2, v2
	v_mov_b32_e32 v13, s27
	v_mov_b32_e32 v14, s27
	v_mov_b32_e32 v15, s27
	v_mul_lo_u32 v3, s1, v2
	v_mul_hi_u32 v3, v2, v3
	v_add_u32_e32 v2, vcc, v3, v2
	v_mul_hi_u32 v2, v6, v2
	v_xor_b32_e32 v3, s0, v5
	v_mul_lo_u32 v5, v2, s4
	v_add_u32_e32 v7, vcc, 1, v2
	v_sub_u32_e32 v5, vcc, v6, v5
	v_cmp_le_u32_e32 vcc, s4, v5
	v_subrev_u32_e64 v6, s[0:1], s4, v5
	v_cndmask_b32_e32 v2, v2, v7, vcc
	v_cndmask_b32_e32 v5, v5, v6, vcc
	v_add_u32_e32 v6, vcc, 1, v2
	v_cmp_le_u32_e32 vcc, s4, v5
	v_cndmask_b32_e32 v2, v2, v6, vcc
	v_xor_b32_e32 v2, v2, v3
	v_sub_u32_e32 v5, vcc, v2, v3
	v_mul_lo_u32 v5, v5, s6
	v_mov_b32_e32 v6, s6
	v_sub_u32_e32 v4, vcc, v4, v5
	v_cmp_eq_u32_e32 vcc, 0, v4
	v_subb_u32_e64 v2, s[0:1], v2, v3, vcc
	v_cndmask_b32_e32 v3, v4, v6, vcc
	v_add_u32_e32 v4, vcc, -1, v3
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b64 v[5:6], 2, v[4:5]
	v_mov_b32_e32 v3, s13
	v_add_u32_e32 v7, vcc, s10, v5
	v_addc_u32_e32 v8, vcc, v8, v6, vcc
	v_add_u32_e32 v5, vcc, s12, v5
	v_addc_u32_e32 v6, vcc, v3, v6, vcc
	v_ashrrev_i32_e32 v3, 31, v2
	flat_load_dword v11, v[5:6]
	v_lshlrev_b64 v[5:6], 2, v[2:3]
	v_mov_b32_e32 v3, s17
	v_add_u32_e32 v9, vcc, s16, v5
	v_addc_u32_e32 v10, vcc, v3, v6, vcc
	flat_load_dword v3, v[9:10]
	v_mov_b32_e32 v9, s15
	v_add_u32_e32 v5, vcc, s14, v5
	v_addc_u32_e32 v6, vcc, v9, v6, vcc
	flat_load_dword v10, v[5:6]
	flat_load_dword v9, v[7:8]
	v_lshlrev_b64 v[5:6], 2, v[0:1]
	v_mov_b32_e32 v7, s27
	v_add_u32_e32 v5, vcc, s26, v5
	v_addc_u32_e32 v6, vcc, v7, v6, vcc
	flat_load_dword v16, v[5:6]
	v_mul_lo_u32 v5, v2, s6
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_mul_lo_u32 v7, v3, s6
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_mul_lo_u32 v8, v10, s6
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_u32_e32 v2, vcc, v9, v5
	v_ashrrev_i32_e32 v3, 31, v2
	v_add_u32_e32 v5, vcc, v11, v5
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_ashrrev_i32_e32 v6, 31, v5
	v_add_u32_e32 v9, vcc, v8, v4
	v_add_u32_e32 v7, vcc, v7, v4
	v_add_u32_e32 v2, vcc, s26, v2
	v_lshlrev_b64 v[5:6], 2, v[5:6]
	v_addc_u32_e32 v3, vcc, v12, v3, vcc
	v_add_u32_e32 v4, vcc, s26, v5
	v_ashrrev_i32_e32 v8, 31, v7
	v_addc_u32_e32 v5, vcc, v13, v6, vcc
	v_lshlrev_b64 v[6:7], 2, v[7:8]
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b64 v[8:9], 2, v[9:10]
	flat_load_dword v10, v[2:3]
	flat_load_dword v11, v[4:5]
	v_add_u32_e32 v2, vcc, s26, v6
	v_addc_u32_e32 v3, vcc, v14, v7, vcc
	v_add_u32_e32 v4, vcc, s26, v8
	v_addc_u32_e32 v5, vcc, v15, v9, vcc
	flat_load_dword v6, v[2:3]
	flat_load_dword v7, v[4:5]
	s_waitcnt vmcnt(4) lgkmcnt(4)
	v_mul_f32_e32 v12, v16, v16
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_sub_f32_e32 v5, v10, v16
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_sub_f32_e32 v3, v11, v16
	v_mul_f32_e32 v8, v3, v3
	v_add_f32_e32 v9, v5, v3
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_sub_f32_e32 v4, v6, v16
	v_fma_f32 v6, v5, v5, v8
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_f32_e32 v2, v7, v16
	v_fma_f32 v6, v4, v4, v6
	v_add_f32_e32 v7, v9, v4
	v_fma_f32 v10, v2, v2, v6
	v_add_f32_e32 v6, v7, v2
	v_div_scale_f32 v7, s[0:1], v12, v12, v10
	v_div_scale_f32 v8, s[0:1], v16, v16, v6
	v_div_scale_f32 v9, vcc, v10, v12, v10
	v_div_scale_f32 v11, s[0:1], v6, v16, v6
	v_rcp_f32_e32 v13, v7
	v_rcp_f32_e32 v14, v8
	v_fma_f32 v15, -v7, v13, 1.0
	v_fma_f32 v17, -v8, v14, 1.0
	v_fma_f32 v13, v15, v13, v13
	v_fma_f32 v14, v17, v14, v14
	v_mul_f32_e32 v15, v9, v13
	v_fma_f32 v18, -v7, v15, v9
	v_mul_f32_e32 v17, v11, v14
	v_fma_f32 v19, -v8, v17, v11
	v_fma_f32 v15, v18, v13, v15
	v_fma_f32 v17, v19, v14, v17
	v_fma_f32 v7, -v7, v15, v9
	v_fma_f32 v8, -v8, v17, v11
	v_div_fmas_f32 v11, v7, v13, v15
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v7, v8, v14, v17
	s_mov_b32 s0, 0
	s_mov_b32 s1, 0xbfb00000
	v_div_fixup_f32 v10, v11, v12, v10
	v_cvt_f64_f32_e32 v[10:11], v10
	v_div_fixup_f32 v8, v7, v16, v6
	v_mul_f32_e32 v6, v8, v8
	v_cvt_f64_f32_e32 v[6:7], v6
	v_cvt_f64_f32_e32 v[8:9], v8
	v_mul_f64 v[6:7], v[6:7], s[0:1]
	s_mov_b32 s1, 0x3fd00000
	v_fma_f64 v[8:9], v[8:9], s[0:1], 1.0
	v_fma_f64 v[6:7], v[10:11], 0.5, v[6:7]
	v_cvt_f32_f64_e32 v8, v[8:9]
	v_cvt_f32_f64_e32 v6, v[6:7]
	v_mul_f32_e32 v7, v8, v8
	v_div_scale_f32 v8, s[0:1], v7, v7, v6
	v_div_scale_f32 v9, vcc, v6, v7, v6
	v_rcp_f32_e32 v10, v8
	v_fma_f32 v11, -v8, v10, 1.0
	v_fma_f32 v10, v11, v10, v10
	v_mul_f32_e32 v11, v9, v10
	v_fma_f32 v12, -v8, v11, v9
	v_fma_f32 v11, v12, v10, v11
	v_fma_f32 v8, -v8, v11, v9
	v_div_fmas_f32 v8, v8, v10, v11
	v_add_f32_e64 v9, s7, 1.0
	v_mul_f32_e32 v9, s7, v9
	v_div_fixup_f32 v6, v8, v7, v6
	v_subrev_f32_e32 v6, s7, v6
	v_div_scale_f32 v7, s[0:1], v9, v9, v6
	v_div_scale_f32 v8, vcc, v6, v9, v6
	v_rcp_f32_e32 v10, v7
	v_fma_f32 v11, -v7, v10, 1.0
	v_fma_f32 v10, v11, v10, v10
	v_mul_f32_e32 v11, v8, v10
	v_fma_f32 v12, -v7, v11, v8
	v_fma_f32 v11, v12, v10, v11
	v_fma_f32 v7, -v7, v11, v8
	v_div_fmas_f32 v7, v7, v10, v11
	v_div_fixup_f32 v6, v7, v9, v6
	v_cvt_f64_f32_e32 v[6:7], v6
	v_add_f64 v[6:7], v[6:7], 1.0
	v_div_scale_f64 v[8:9], s[0:1], v[6:7], v[6:7], 1.0
	v_rcp_f64_e32 v[10:11], v[8:9]
	v_fma_f64 v[12:13], -v[8:9], v[10:11], 1.0
	v_fma_f64 v[10:11], v[10:11], v[12:13], v[10:11]
	v_div_scale_f64 v[12:13], vcc, 1.0, v[6:7], 1.0
	v_fma_f64 v[14:15], -v[8:9], v[10:11], 1.0
	v_fma_f64 v[10:11], v[10:11], v[14:15], v[10:11]
	v_mul_f64 v[14:15], v[12:13], v[10:11]
	v_fma_f64 v[8:9], -v[8:9], v[14:15], v[12:13]
	v_div_fmas_f64 v[8:9], v[8:9], v[10:11], v[14:15]
	v_div_fixup_f64 v[6:7], v[8:9], v[6:7], 1.0
	v_cvt_f32_f64_e32 v7, v[6:7]
	v_mov_b32_e32 v6, 0
	v_cmp_ngt_f32_e32 vcc, 0, v7
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB3_5
; %bb.2:
	v_cmp_lt_f32_e32 vcc, 1.0, v7
	s_and_saveexec_b64 s[4:5], vcc
; %bb.3:
	v_mov_b32_e32 v7, 1.0
; %bb.4:                                ; %Flow
	s_or_b64 exec, exec, s[4:5]
	v_mov_b32_e32 v6, v7
BB3_5:
	s_or_b64 exec, exec, s[0:1]
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_mov_b32_e32 v8, s19
	v_add_u32_e32 v7, vcc, s18, v0
	v_addc_u32_e32 v8, vcc, v8, v1, vcc
	flat_store_dword v[7:8], v5
	v_mov_b32_e32 v5, s21
	v_add_u32_e32 v7, vcc, s20, v0
	v_addc_u32_e32 v8, vcc, v5, v1, vcc
	flat_store_dword v[7:8], v3
	v_mov_b32_e32 v3, s3
	v_add_u32_e32 v7, vcc, s2, v0
	v_addc_u32_e32 v8, vcc, v3, v1, vcc
	flat_store_dword v[7:8], v4
	v_mov_b32_e32 v4, s23
	v_add_u32_e32 v3, vcc, s22, v0
	v_addc_u32_e32 v4, vcc, v4, v1, vcc
	flat_store_dword v[3:4], v2
	v_mov_b32_e32 v2, s25
	v_add_u32_e32 v0, vcc, s24, v0
	v_addc_u32_e32 v1, vcc, v2, v1, vcc
	flat_store_dword v[0:1], v6
BB3_6:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_
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
		.amdhsa_next_free_vgpr 20
		.amdhsa_next_free_sgpr 28
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
	.size	_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_, .Lfunc_end3-_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 1312
; NumSgprs: 32
; NumVgprs: 20
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 32
; NumVGPRsForWavesPerEU: 20
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_ ; -- Begin function _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_
	.globl	_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_
	.p2align	8
	.type	_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_,@function
_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_:  ; @_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_
_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_$local:
; %bb.0:
	s_load_dwordx2 s[0:1], s[4:5], 0x10
	s_lshl_b32 s2, s6, 9
	v_or_b32_e32 v0, s2, v0
	v_ashrrev_i32_e32 v1, 31, v0
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i64_e32 vcc, s[0:1], v[0:1]
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB4_2
; %bb.1:
	s_load_dwordx2 s[2:3], s[4:5], 0x0
	s_load_dwordx4 s[20:23], s[4:5], 0x20
	v_add_u32_e32 v4, vcc, 1, v0
	v_ashrrev_i32_e32 v5, 31, v4
	v_add_u32_e32 v6, vcc, v4, v5
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s0, s3, 31
	s_add_i32 s1, s3, s0
	s_xor_b32 s6, s1, s0
	v_cvt_f32_u32_e32 v2, s6
	s_sub_i32 s1, 0, s6
	v_xor_b32_e32 v6, v6, v5
	s_load_dwordx8 s[12:19], s[4:5], 0x38
	s_load_dwordx4 s[8:11], s[4:5], 0x58
	v_rcp_iflag_f32_e32 v2, v2
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_mul_f32_e32 v2, 0x4f7ffffe, v2
	v_cvt_u32_f32_e32 v2, v2
	v_mul_lo_u32 v3, s1, v2
	v_mul_hi_u32 v3, v2, v3
	v_add_u32_e32 v2, vcc, v3, v2
	v_mul_hi_u32 v2, v6, v2
	v_xor_b32_e32 v3, s0, v5
	v_mul_lo_u32 v5, v2, s6
	v_add_u32_e32 v7, vcc, 1, v2
	v_sub_u32_e32 v5, vcc, v6, v5
	v_cmp_le_u32_e32 vcc, s6, v5
	v_subrev_u32_e64 v6, s[0:1], s6, v5
	v_cndmask_b32_e32 v2, v2, v7, vcc
	v_cndmask_b32_e32 v5, v5, v6, vcc
	v_add_u32_e32 v6, vcc, 1, v2
	v_cmp_le_u32_e32 vcc, s6, v5
	v_cndmask_b32_e32 v2, v2, v6, vcc
	v_xor_b32_e32 v2, v2, v3
	v_sub_u32_e32 v5, vcc, v2, v3
	v_mul_lo_u32 v5, v5, s3
	v_mov_b32_e32 v6, s3
	v_sub_u32_e32 v4, vcc, v4, v5
	v_cmp_eq_u32_e32 vcc, 0, v4
	v_subb_u32_e64 v2, s[0:1], v2, v3, vcc
	v_cndmask_b32_e32 v3, v4, v6, vcc
	v_add_u32_e32 v4, vcc, -1, v3
	v_ashrrev_i32_e32 v5, 31, v4
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, s9
	v_add_u32_e32 v6, vcc, s8, v0
	v_lshlrev_b64 v[8:9], 2, v[4:5]
	v_addc_u32_e32 v7, vcc, v3, v1, vcc
	v_mov_b32_e32 v3, s21
	v_add_u32_e32 v8, vcc, s20, v8
	v_addc_u32_e32 v9, vcc, v3, v9, vcc
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[10:11], 2, v[2:3]
	v_mov_b32_e32 v3, s23
	v_add_u32_e32 v10, vcc, s22, v10
	v_addc_u32_e32 v11, vcc, v3, v11, vcc
	v_mov_b32_e32 v3, s13
	v_add_u32_e32 v12, vcc, s12, v0
	v_addc_u32_e32 v13, vcc, v3, v1, vcc
	v_mov_b32_e32 v3, s15
	v_add_u32_e32 v14, vcc, s14, v0
	v_addc_u32_e32 v15, vcc, v3, v1, vcc
	v_mov_b32_e32 v3, s19
	v_add_u32_e32 v16, vcc, s18, v0
	v_addc_u32_e32 v17, vcc, v3, v1, vcc
	v_mov_b32_e32 v3, s17
	v_add_u32_e32 v18, vcc, s16, v0
	v_addc_u32_e32 v19, vcc, v3, v1, vcc
	v_mov_b32_e32 v3, s11
	v_add_u32_e32 v0, vcc, s10, v0
	v_addc_u32_e32 v1, vcc, v3, v1, vcc
	flat_load_dword v20, v[10:11]
	flat_load_dword v3, v[8:9]
	v_mul_lo_u32 v2, v2, s3
	flat_load_dword v11, v[6:7]
	flat_load_dword v21, v[12:13]
	v_mov_b32_e32 v9, s9
	flat_load_dword v12, v[14:15]
	flat_load_dword v13, v[16:17]
	v_mov_b32_e32 v10, s9
	flat_load_dword v14, v[18:19]
	v_cvt_f64_f32_e32 v[5:6], s2
	s_mov_b32 s0, 0
	s_mov_b32 s1, 0x3fd00000
	s_waitcnt vmcnt(6) lgkmcnt(6)
	v_mul_lo_u32 v7, v20, s3
	s_waitcnt vmcnt(5) lgkmcnt(5)
	v_add_u32_e32 v2, vcc, v3, v2
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_u32_e32 v7, vcc, v7, v4
	v_add_u32_e32 v2, vcc, s8, v2
	v_ashrrev_i32_e32 v8, 31, v7
	v_addc_u32_e32 v3, vcc, v9, v3, vcc
	flat_load_dword v4, v[2:3]
	v_lshlrev_b64 v[7:8], 2, v[7:8]
	v_add_u32_e32 v2, vcc, s8, v7
	v_addc_u32_e32 v3, vcc, v10, v8, vcc
	flat_load_dword v7, v[2:3]
	flat_load_dword v8, v[0:1]
	v_mul_f64 v[2:3], v[5:6], s[0:1]
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_mul_f32_e32 v4, v4, v12
	v_fma_f32 v4, v11, v21, v4
	v_fma_f32 v4, v11, v13, v4
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_fma_f32 v6, v7, v14, v4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[4:5], v8
	v_cvt_f64_f32_e32 v[6:7], v6
	v_fma_f64 v[2:3], v[2:3], v[6:7], v[4:5]
	v_cvt_f32_f64_e32 v2, v[2:3]
	flat_store_dword v[0:1], v2
BB4_2:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_
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
		.amdhsa_next_free_vgpr 22
		.amdhsa_next_free_sgpr 24
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
.Lfunc_end4:
	.size	_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_, .Lfunc_end4-_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 636
; NumSgprs: 28
; NumVgprs: 22
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 5
; NumSGPRsForWavesPerEU: 28
; NumVGPRsForWavesPerEU: 22
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z8compresslPf          ; -- Begin function _Z8compresslPf
	.globl	_Z8compresslPf
	.p2align	8
	.type	_Z8compresslPf,@function
_Z8compresslPf:                         ; @_Z8compresslPf
_Z8compresslPf$local:
; %bb.0:
	s_load_dwordx4 s[0:3], s[4:5], 0x0
	s_lshl_b32 s4, s6, 9
	v_or_b32_e32 v0, s4, v0
	v_ashrrev_i32_e32 v1, 31, v0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v2, s0
	v_mov_b32_e32 v3, s1
	v_cmp_lt_i64_e32 vcc, v[0:1], v[2:3]
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB5_2
; %bb.1:
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_mov_b32_e32 v2, s3
	v_add_u32_e32 v0, vcc, s2, v0
	v_addc_u32_e32 v1, vcc, v2, v1, vcc
	flat_load_dword v2, v[0:1]
	s_movk_i32 s0, 0x90
	v_mov_b32_e32 v3, 0x4f800000
	s_mov_b32 s1, 0x3f317217
	s_mov_b32 s2, 0x3377d1cf
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_class_f32_e64 vcc, v2, s0
	v_cndmask_b32_e32 v3, 1.0, v3, vcc
	v_mul_f32_e32 v2, v2, v3
	v_log_f32_e32 v2, v2
	s_movk_i32 s0, 0x207
	v_mov_b32_e32 v3, 0x41b17218
	v_cndmask_b32_e32 v3, 0, v3, vcc
	v_mul_f32_e32 v4, s1, v2
	v_fma_f32 v5, v2, s1, -v4
	v_fma_f32 v5, v2, s2, v5
	v_add_f32_e32 v4, v4, v5
	v_cmp_class_f32_e64 s[0:1], v2, s0
	v_cndmask_b32_e64 v2, v4, v2, s[0:1]
	v_sub_f32_e32 v2, v2, v3
	v_mul_f32_e32 v2, 0x437f0000, v2
	flat_store_dword v[0:1], v2
BB5_2:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z8compresslPf
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
		.amdhsa_next_free_vgpr 6
		.amdhsa_next_free_sgpr 7
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
.Lfunc_end5:
	.size	_Z8compresslPf, .Lfunc_end5-_Z8compresslPf
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 204
; NumSgprs: 11
; NumVgprs: 6
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 11
; NumVGPRsForWavesPerEU: 6
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
      - .offset:         0
        .size:           8
        .value_kind:     by_value
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
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
    .name:           _Z7extractlPf
    .private_segment_fixed_size: 0
    .sgpr_count:     11
    .sgpr_spill_count: 0
    .symbol:         _Z7extractlPf.kd
    .vgpr_count:     8
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .offset:         0
        .size:           8
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
    .name:           _Z7preparelPfS_S_
    .private_segment_fixed_size: 0
    .sgpr_count:     20
    .sgpr_spill_count: 0
    .symbol:         _Z7preparelPfS_S_.kd
    .vgpr_count:     7
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .offset:         0
        .size:           8
        .value_kind:     by_value
      - .offset:         8
        .size:           4
        .value_kind:     by_value
      - .offset:         12
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
    .group_segment_fixed_size: 4096
    .kernarg_segment_align: 8
    .kernarg_segment_size: 88
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z6reduceliiPfS_
    .private_segment_fixed_size: 0
    .sgpr_count:     20
    .sgpr_spill_count: 0
    .symbol:         _Z6reduceliiPfS_.kd
    .vgpr_count:     13
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .offset:         0
        .size:           4
        .value_kind:     by_value
      - .offset:         4
        .size:           4
        .value_kind:     by_value
      - .offset:         8
        .size:           4
        .value_kind:     by_value
      - .offset:         16
        .size:           8
        .value_kind:     by_value
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
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .offset:         112
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         120
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         128
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         160
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 168
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_.kd
    .vgpr_count:     20
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .offset:         0
        .size:           4
        .value_kind:     by_value
      - .offset:         4
        .size:           4
        .value_kind:     by_value
      - .offset:         8
        .size:           4
        .value_kind:     by_value
      - .offset:         16
        .size:           8
        .value_kind:     by_value
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
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     global_buffer
      - .offset:         104
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         112
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         120
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         128
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_
    .private_segment_fixed_size: 0
    .sgpr_count:     28
    .sgpr_spill_count: 0
    .symbol:         _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_.kd
    .vgpr_count:     22
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .offset:         0
        .size:           8
        .value_kind:     by_value
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
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
    .name:           _Z8compresslPf
    .private_segment_fixed_size: 0
    .sgpr_count:     11
    .sgpr_spill_count: 0
    .symbol:         _Z8compresslPf.kd
    .vgpr_count:     6
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
