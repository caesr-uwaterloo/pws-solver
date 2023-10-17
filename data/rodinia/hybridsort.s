	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z11bucketcountPfS_PiPji ; -- Begin function _Z11bucketcountPfS_PiPji
	.globl	_Z11bucketcountPfS_PiPji
	.p2align	8
	.type	_Z11bucketcountPfS_PiPji,@function
_Z11bucketcountPfS_PiPji:               ; @_Z11bucketcountPfS_PiPji
_Z11bucketcountPfS_PiPji$local:
; %bb.0:
	s_load_dword s0, s[4:5], 0x4
	s_load_dword s11, s[4:5], 0xc
	s_waitcnt lgkmcnt(0)
	s_and_b32 s2, s0, 0xffff
	v_cvt_f32_u32_e32 v1, s2
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	s_sub_i32 s0, 0, s2
	v_mul_lo_u32 v2, s0, v1
	v_mul_hi_u32 v2, v1, v2
	s_mov_b64 s[20:21], 0
	v_add_u32_e32 v1, vcc, v2, v1
	v_mul_hi_u32 v1, s11, v1
	s_movk_i32 s5, 0x3ff
	s_load_dwordx8 s[12:19], s[8:9], 0x0
	s_load_dword s3, s[8:9], 0x20
	v_mul_lo_u32 v2, v1, s2
	v_add_u32_e32 v3, vcc, 1, v1
	v_sub_u32_e32 v2, vcc, s11, v2
	v_cmp_le_u32_e64 s[0:1], s2, v2
	v_cndmask_b32_e64 v1, v1, v3, s[0:1]
	v_subrev_u32_e32 v3, vcc, s2, v2
	v_cndmask_b32_e64 v2, v2, v3, s[0:1]
	v_add_u32_e32 v3, vcc, 1, v1
	v_cmp_le_u32_e32 vcc, s2, v2
	v_cndmask_b32_e32 v2, v1, v3, vcc
	v_mul_lo_u32 v3, v2, s2
	v_lshlrev_b32_e32 v1, 2, v0
	s_load_dword s0, s[6:7], 0x40
	s_lshl_b32 s4, s2, 2
	v_cmp_gt_u32_e32 vcc, s11, v3
	v_cndmask_b32_e64 v4, 0, 1, vcc
	v_mov_b32_e32 v3, v0
BB0_1:                                  ; =>This Inner Loop Header: Depth=1
	v_mov_b32_e32 v7, 0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v5, s0
	v_add_u32_e32 v3, vcc, s2, v3
	v_cmp_ne_u32_e32 vcc, -1, v1
	v_cndmask_b32_e32 v6, 0, v5, vcc
	v_cndmask_b32_e32 v5, 0, v1, vcc
	v_add_u32_e32 v1, vcc, s4, v1
	v_cmp_lt_u32_e32 vcc, s5, v3
	s_or_b64 s[20:21], vcc, s[20:21]
	flat_store_dword v[5:6], v7
	s_andn2_b64 exec, exec, s[20:21]
	s_cbranch_execnz BB0_1
; %bb.2:
	s_or_b64 exec, exec, s[20:21]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s1, s10, s2
	v_add_u32_e32 v1, vcc, s1, v0
	v_cmp_gt_i32_e32 vcc, s3, v1
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz BB0_9
; %bb.3:                                ; %.lr.ph
	v_lshlrev_b32_e32 v3, 27, v0
	v_add_u32_e32 v2, vcc, v4, v2
	v_mul_lo_u32 v4, v2, s2
	s_add_u32 s8, s12, 0x7fc
	s_addc_u32 s9, s13, 0
	v_mov_b32_e32 v5, s8
	v_mov_b32_e32 v6, s9
	flat_load_dword v5, v[5:6]
	v_lshlrev_b32_e32 v2, 7, v0
	v_and_b32_e32 v6, 0x7000, v2
	s_mov_b64 s[8:9], 0
BB0_4:                                  ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;     Child Loop BB0_7 Depth 2
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[7:8], 2, v[1:2]
	v_mov_b32_e32 v9, s15
	v_add_u32_e32 v7, vcc, s14, v7
	v_addc_u32_e32 v8, vcc, v9, v8, vcc
	flat_load_dword v7, v[7:8]
	s_movk_i32 s1, 0x100
	v_mov_b32_e32 v8, 0x1ff
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_mov_b32_e32 v9, v5
BB0_5:                                  ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_sub_i32 s5, 0, s1
	v_mov_b32_e32 v10, s1
	v_mov_b32_e32 v11, s13
	v_mov_b32_e32 v12, s5
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_lt_f32_e32 vcc, v7, v9
	v_cndmask_b32_e32 v9, v10, v12, vcc
	v_add_u32_e32 v8, vcc, v9, v8
	v_ashrrev_i32_e32 v9, 31, v8
	v_lshlrev_b64 v[9:10], 2, v[8:9]
	v_add_u32_e32 v9, vcc, s12, v9
	v_addc_u32_e32 v10, vcc, v11, v10, vcc
	flat_load_dword v9, v[9:10]
	s_lshr_b32 s5, s1, 31
	s_add_i32 s5, s1, s5
	s_ashr_i32 s5, s5, 1
	s_cmp_gt_i32 s1, 1
	s_mov_b32 s1, s5
	s_cbranch_scc1 BB0_5
; %bb.6:                                ;   in Loop: Header=BB0_4 Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_nlt_f32_e32 vcc, v7, v9
	v_addc_u32_e32 v7, vcc, 0, v8, vcc
	v_lshlrev_b32_e32 v8, 2, v7
	v_add_u32_e32 v8, vcc, v6, v8
	v_cmp_ne_u32_e32 vcc, -1, v8
	v_cndmask_b32_e32 v8, 0, v8, vcc
	v_mov_b32_e32 v9, s0
	v_cndmask_b32_e32 v9, 0, v9, vcc
	s_mov_b64 s[20:21], 0
BB0_7:                                  ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	flat_load_dword v10, v[8:9]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_and_b32_e32 v11, 0x7ffffff, v10
	v_add_u32_e32 v11, vcc, 1, v11
	v_or_b32_e32 v11, v11, v3
	flat_store_dword v[8:9], v11
	flat_load_dword v12, v[8:9]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v12, v11
	s_or_b64 s[20:21], vcc, s[20:21]
	s_andn2_b64 exec, exec, s[20:21]
	s_cbranch_execnz BB0_7
; %bb.8:                                ; %_Z9addOffsetPVjjj.exit
                                        ;   in Loop: Header=BB0_4 Depth=1
	s_or_b64 exec, exec, s[20:21]
	v_lshlrev_b32_e32 v8, 10, v10
	v_add_u32_e32 v9, vcc, v8, v7
	v_lshlrev_b64 v[7:8], 2, v[1:2]
	v_mov_b32_e32 v2, s17
	v_add_u32_e32 v7, vcc, s16, v7
	v_addc_u32_e32 v8, vcc, v2, v8, vcc
	v_add_u32_e32 v1, vcc, v1, v4
	v_cmp_le_i32_e32 vcc, s3, v1
	s_or_b64 s[8:9], vcc, s[8:9]
	flat_store_dword v[7:8], v9
	s_andn2_b64 exec, exec, s[8:9]
	s_cbranch_execnz BB0_4
BB0_9:                                  ; %Flow102
	s_or_b64 exec, exec, s[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_lshl_b32 s6, s10, 10
	s_ashr_i32 s7, s6, 31
	s_lshl_b64 s[6:7], s[6:7], 2
	s_add_u32 s1, s18, s6
	s_addc_u32 s3, s19, s7
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b32 s5, 0
	v_mov_b32_e32 v2, 0
	s_mov_b64 s[6:7], 0
	s_movk_i32 s8, 0x3ff
BB0_10:                                 ; =>This Inner Loop Header: Depth=1
	v_mov_b32_e32 v3, s0
	v_cmp_ne_u32_e32 vcc, -1, v1
	v_cndmask_b32_e32 v4, 0, v3, vcc
	v_cndmask_b32_e32 v3, 0, v1, vcc
	flat_load_dword v5, v[3:4]
	v_mov_b32_e32 v4, s3
	v_add_u32_e32 v0, vcc, s2, v0
	v_mov_b32_e32 v6, s5
	v_add_u32_e32 v3, vcc, s1, v1
	v_addc_u32_e32 v4, vcc, v4, v2, vcc
	v_add_u32_e32 v1, vcc, s4, v1
	v_addc_u32_e32 v2, vcc, v2, v6, vcc
	v_cmp_lt_u32_e32 vcc, s8, v0
	s_or_b64 s[6:7], vcc, s[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_and_b32_e32 v5, 0x7ffffff, v5
	flat_store_dword v[3:4], v5
	s_andn2_b64 exec, exec, s[6:7]
	s_cbranch_execnz BB0_10
; %bb.11:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z11bucketcountPfS_PiPji
		.amdhsa_group_segment_fixed_size 4096
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
		.amdhsa_user_sgpr_queue_ptr 1
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
	.size	_Z11bucketcountPfS_PiPji, .Lfunc_end0-_Z11bucketcountPfS_PiPji
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 800
; NumSgprs: 26
; NumVgprs: 13
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 4096 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 26
; NumVGPRsForWavesPerEU: 13
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 10
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z18bucketprefixoffsetPjS_i ; -- Begin function _Z18bucketprefixoffsetPjS_i
	.globl	_Z18bucketprefixoffsetPjS_i
	.p2align	8
	.type	_Z18bucketprefixoffsetPjS_i,@function
_Z18bucketprefixoffsetPjS_i:            ; @_Z18bucketprefixoffsetPjS_i
_Z18bucketprefixoffsetPjS_i$local:
; %bb.0:
	v_mov_b32_e32 v1, 0
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	v_mov_b32_e32 v2, s8
	v_mad_u64_u32 v[2:3], s[0:1], s0, v2, v[0:1]
	s_load_dwordx4 s[0:3], s[6:7], 0x0
	s_load_dword s4, s[6:7], 0x10
	s_waitcnt lgkmcnt(0)
	s_lshl_b32 s6, s4, 10
	v_cmp_gt_i32_e32 vcc, s6, v2
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz BB1_4
; %bb.1:                                ; %.lr.ph.preheader
	v_ashrrev_i32_e32 v1, 31, v2
	v_mov_b32_e32 v0, v2
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_mov_b32_e32 v4, s1
	v_add_u32_e32 v3, vcc, s0, v0
	v_addc_u32_e32 v4, vcc, v4, v1, vcc
	s_mov_b64 s[8:9], 0
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v0, v2
BB1_2:                                  ; %.lr.ph
                                        ; =>This Inner Loop Header: Depth=1
	flat_load_dword v5, v[3:4]
	s_nop 0
	flat_store_dword v[3:4], v1
	v_add_u32_e32 v0, vcc, 0x400, v0
	v_add_u32_e32 v3, vcc, 0x1000, v3
	v_cmp_le_i32_e64 s[0:1], s6, v0
	v_addc_u32_e32 v4, vcc, 0, v4, vcc
	s_or_b64 s[8:9], s[0:1], s[8:9]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_u32_e32 v1, vcc, v5, v1
	s_andn2_b64 exec, exec, s[8:9]
	s_cbranch_execnz BB1_2
; %bb.3:                                ; %Flow
	s_or_b64 exec, exec, s[8:9]
BB1_4:                                  ; %Flow36
	s_or_b64 exec, exec, s[4:5]
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v4, v2
	v_ashrrev_i64 v[2:3], 30, v[3:4]
	v_mov_b32_e32 v0, s3
	v_add_u32_e32 v2, vcc, s2, v2
	v_addc_u32_e32 v3, vcc, v0, v3, vcc
	flat_store_dword v[2:3], v1
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z18bucketprefixoffsetPjS_i
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
		.amdhsa_next_free_vgpr 6
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
	.size	_Z18bucketprefixoffsetPjS_i, .Lfunc_end1-_Z18bucketprefixoffsetPjS_i
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 228
; NumSgprs: 14
; NumVgprs: 6
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 14
; NumVGPRsForWavesPerEU: 6
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z10bucketsortPfPiS_iPjS1_ ; -- Begin function _Z10bucketsortPfPiS_iPjS1_
	.globl	_Z10bucketsortPfPiS_iPjS1_
	.p2align	8
	.type	_Z10bucketsortPfPiS_iPjS1_,@function
_Z10bucketsortPfPiS_iPjS1_:             ; @_Z10bucketsortPfPiS_iPjS1_
_Z10bucketsortPfPiS_iPjS1_$local:
; %bb.0:
	s_load_dword s0, s[4:5], 0x4
	s_load_dword s11, s[4:5], 0xc
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, s0, 0xffff
	v_cvt_f32_u32_e32 v1, s4
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	s_sub_i32 s0, 0, s4
	v_mul_lo_u32 v2, s0, v1
	s_mov_b32 s1, 0
	s_mov_b64 s[20:21], 0
	s_movk_i32 s5, 0x3ff
	v_mul_hi_u32 v2, v1, v2
	s_load_dwordx4 s[12:15], s[8:9], 0x0
	s_load_dwordx4 s[16:19], s[8:9], 0x10
	v_add_u32_e32 v1, vcc, v2, v1
	v_mul_hi_u32 v1, s11, v1
	s_load_dword s2, s[8:9], 0x18
	s_load_dwordx4 s[24:27], s[8:9], 0x20
	s_lshl_b32 s8, s10, 10
	v_mul_lo_u32 v2, v1, s4
	v_add_u32_e32 v3, vcc, 1, v1
	v_sub_u32_e32 v2, vcc, s11, v2
	v_cmp_le_u32_e64 s[0:1], s4, v2
	v_cndmask_b32_e64 v1, v1, v3, s[0:1]
	v_subrev_u32_e32 v3, vcc, s4, v2
	v_cndmask_b32_e64 v2, v2, v3, s[0:1]
	v_add_u32_e32 v3, vcc, 1, v1
	v_cmp_le_u32_e32 vcc, s4, v2
	v_cndmask_b32_e32 v1, v1, v3, vcc
	v_mul_lo_u32 v2, v1, s4
	v_lshrrev_b32_e32 v3, 5, v0
	s_load_dword s3, s[6:7], 0x40
	v_mov_b32_e32 v6, v0
	v_cmp_gt_u32_e32 vcc, s11, v2
	v_cndmask_b32_e64 v2, 0, 1, vcc
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v4, v0
BB2_1:                                  ; =>This Inner Loop Header: Depth=1
	v_and_b32_e32 v7, s5, v4
	v_mov_b32_e32 v8, 0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v9, s27
	v_add_u32_e32 v5, vcc, s8, v6
	v_mov_b32_e32 v10, s25
	v_lshlrev_b64 v[7:8], 2, v[7:8]
	v_ashrrev_i32_e32 v6, 31, v5
	v_lshlrev_b64 v[5:6], 2, v[5:6]
	v_add_u32_e32 v7, vcc, s26, v7
	v_addc_u32_e32 v8, vcc, v9, v8, vcc
	flat_load_dword v9, v[7:8]
	v_add_u32_e32 v5, vcc, s24, v5
	v_addc_u32_e32 v6, vcc, v10, v6, vcc
	flat_load_dword v10, v[5:6]
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b32_e32 v5, 2, v4
	v_mov_b32_e32 v8, s3
	v_add_u32_e32 v6, vcc, s4, v4
	v_cmp_ne_u32_e32 vcc, -1, v5
	v_cndmask_b32_e32 v7, 0, v5, vcc
	v_cmp_lt_i32_e64 s[0:1], s5, v6
	v_mov_b32_e32 v4, v6
	v_mov_b32_e32 v5, v7
	v_cndmask_b32_e32 v8, 0, v8, vcc
	s_or_b64 s[20:21], s[0:1], s[20:21]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v5, vcc, v10, v9
	flat_store_dword v[7:8], v5
	s_andn2_b64 exec, exec, s[20:21]
	s_cbranch_execnz BB2_1
; %bb.2:
	s_or_b64 exec, exec, s[20:21]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s10, s10, s4
	v_add_u32_e32 v0, vcc, s10, v0
	v_cmp_gt_i32_e32 vcc, s2, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB2_5
; %bb.3:                                ; %.lr.ph.preheader
	v_add_u32_e32 v1, vcc, v2, v1
	v_mul_lo_u32 v2, v1, s4
	v_lshlrev_b32_e32 v4, 10, v3
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[5:6], 2, v[0:1]
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[7:8], 2, v[2:3]
	s_mov_b64 s[4:5], 0
BB2_4:                                  ; %.lr.ph
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v1, s15
	v_add_u32_e32 v9, vcc, s14, v5
	v_addc_u32_e32 v10, vcc, v1, v6, vcc
	flat_load_dword v1, v[9:10]
	v_mov_b32_e32 v3, s13
	v_mov_b32_e32 v11, s3
	v_add_u32_e32 v9, vcc, s12, v5
	v_addc_u32_e32 v10, vcc, v3, v6, vcc
	flat_load_dword v3, v[9:10]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_and_b32_e32 v9, 0x3ff, v1
	v_or_b32_e32 v9, v9, v4
	v_lshlrev_b32_e32 v9, 2, v9
	v_cmp_ne_u32_e32 vcc, -1, v9
	v_cndmask_b32_e32 v9, 0, v9, vcc
	v_cndmask_b32_e32 v10, 0, v11, vcc
	flat_load_dword v11, v[9:10]
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v13, s17
	v_ashrrev_i32_e32 v1, 10, v1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v11, vcc, v11, v1
	v_lshlrev_b64 v[11:12], 2, v[11:12]
	v_add_u32_e32 v11, vcc, s16, v11
	v_addc_u32_e32 v12, vcc, v13, v12, vcc
	flat_store_dword v[11:12], v3
	flat_load_dword v1, v[9:10]
	v_add_u32_e32 v0, vcc, v0, v2
	v_add_u32_e32 v5, vcc, v5, v7
	v_cmp_le_i32_e64 s[0:1], s2, v0
	s_or_b64 s[4:5], s[0:1], s[4:5]
	v_addc_u32_e32 v6, vcc, v6, v8, vcc
	s_andn2_b64 exec, exec, s[4:5]
	s_cbranch_execnz BB2_4
BB2_5:                                  ; %Flow66
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z10bucketsortPfPiS_iPjS1_
		.amdhsa_group_segment_fixed_size 4096
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
		.amdhsa_user_sgpr_queue_ptr 1
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
		.amdhsa_next_free_vgpr 14
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
.Lfunc_end2:
	.size	_Z10bucketsortPfPiS_iPjS1_, .Lfunc_end2-_Z10bucketsortPfPiS_iPjS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 632
; NumSgprs: 32
; NumVgprs: 14
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 4096 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 32
; NumVGPRsForWavesPerEU: 14
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 10
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z19histogram1024KernelPjPfffi ; -- Begin function _Z19histogram1024KernelPjPfffi
	.globl	_Z19histogram1024KernelPjPfffi
	.p2align	8
	.type	_Z19histogram1024KernelPjPfffi,@function
_Z19histogram1024KernelPjPfffi:         ; @_Z19histogram1024KernelPjPfffi
_Z19histogram1024KernelPjPfffi$local:
; %bb.0:
	s_load_dwordx4 s[12:15], s[8:9], 0x0
	s_load_dwordx4 s[0:3], s[8:9], 0x10
	s_load_dword s11, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, s11, 0xffff
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v1, s4
	v_mad_i32_i24 v1, s10, v1, v0
	v_lshlrev_b32_e32 v4, 2, v0
	s_lshl_b32 s5, s4, 2
	s_mov_b64 s[8:9], 0
	s_load_dword s3, s[6:7], 0x40
	s_movk_i32 s6, 0xbff
	v_mov_b32_e32 v3, v4
	v_mov_b32_e32 v5, v0
BB3_1:                                  ; =>This Inner Loop Header: Depth=1
	v_mov_b32_e32 v8, 0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v6, s3
	v_add_u32_e32 v5, vcc, s4, v5
	v_cmp_ne_u32_e32 vcc, -1, v3
	v_cndmask_b32_e32 v7, 0, v6, vcc
	v_cndmask_b32_e32 v6, 0, v3, vcc
	v_add_u32_e32 v3, vcc, s5, v3
	v_cmp_lt_u32_e32 vcc, s6, v5
	s_or_b64 s[8:9], vcc, s[8:9]
	flat_store_dword v[6:7], v8
	s_andn2_b64 exec, exec, s[8:9]
	s_cbranch_execnz BB3_1
; %bb.2:
	s_or_b64 exec, exec, s[8:9]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_le_i32_e32 vcc, s2, v1
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB3_8
; %bb.3:                                ; %_Z11addData1024PVjjj.exit._crit_edge
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[8:9], 0
	s_movk_i32 s2, 0x3ff
BB3_4:                                  ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_5 Depth 2
	s_movk_i32 s10, 0xfc00
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v3, v4
BB3_5:                                  ;   Parent Loop BB3_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v6, s3
	v_cmp_ne_u32_e32 vcc, -1, v3
	v_cndmask_b32_e32 v7, 0, v6, vcc
	v_cndmask_b32_e32 v6, 0, v3, vcc
	flat_load_dword v6, v[6:7]
	s_addk_i32 s10, 0x400
	v_add_u32_e32 v3, vcc, 0x1000, v3
	s_cmpk_gt_u32 s10, 0x7ff
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_and_b32_e32 v6, 0x7ffffff, v6
	v_add_u32_e32 v5, vcc, v6, v5
	s_cbranch_scc0 BB3_5
; %bb.6:                                ;   in Loop: Header=BB3_4 Depth=1
	v_mov_b32_e32 v3, 0
	v_lshlrev_b64 v[6:7], 2, v[2:3]
	v_mov_b32_e32 v3, s13
	v_add_u32_e32 v6, vcc, s12, v6
	v_addc_u32_e32 v7, vcc, v3, v7, vcc
	flat_atomic_add v[6:7], v5
	v_add_u32_e32 v2, vcc, s4, v2
	v_cmp_lt_u32_e32 vcc, s2, v2
	s_or_b64 s[8:9], vcc, s[8:9]
	v_add_u32_e32 v4, vcc, s5, v4
	s_andn2_b64 exec, exec, s[8:9]
	s_cbranch_execnz BB3_4
; %bb.7:                                ; %Flow
	s_or_b64 exec, exec, s[8:9]
BB3_8:                                  ; %Flow82
	s_or_saveexec_b64 s[4:5], s[6:7]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB3_11
; %bb.9:                                ; %.lr.ph
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_mov_b32_e32 v3, s15
	v_add_u32_e32 v1, vcc, s14, v1
	v_addc_u32_e32 v2, vcc, v3, v2, vcc
	flat_load_dword v1, v[1:2]
	v_mov_b32_e32 v2, s0
	v_sub_f32_e32 v2, s1, v2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_subrev_f32_e32 v1, s0, v1
	v_div_scale_f32 v3, s[0:1], v2, v2, v1
	v_div_scale_f32 v4, vcc, v1, v2, v1
	v_rcp_f32_e32 v5, v3
	v_fma_f32 v6, -v3, v5, 1.0
	v_fma_f32 v5, v6, v5, v5
	v_mul_f32_e32 v6, v4, v5
	v_fma_f32 v7, -v3, v6, v4
	v_fma_f32 v6, v7, v5, v6
	v_fma_f32 v3, -v3, v6, v4
	v_div_fmas_f32 v3, v3, v5, v6
	v_div_fixup_f32 v1, v3, v2, v1
	v_mul_f32_e32 v1, 0x44800000, v1
	v_cvt_u32_f32_e32 v1, v1
	v_lshlrev_b32_e32 v0, 27, v0
	v_and_b32_e32 v1, 0x3ff, v1
	v_lshlrev_b32_e32 v1, 2, v1
	v_cmp_ne_u32_e32 vcc, -1, v1
	v_cndmask_b32_e32 v1, 0, v1, vcc
	v_mov_b32_e32 v2, s3
	v_cndmask_b32_e32 v2, 0, v2, vcc
BB3_10:                                 ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[1:2]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_and_b32_e32 v3, 0x7ffffff, v3
	v_add_u32_e32 v3, vcc, 1, v3
	v_or_b32_e32 v3, v3, v0
	flat_store_dword v[1:2], v3
	flat_load_dword v3, v[1:2]
	s_mov_b64 vcc, 0
	s_branch BB3_10
BB3_11:                                 ; %UnifiedReturnBlock
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z19histogram1024KernelPjPfffi
		.amdhsa_group_segment_fixed_size 12288
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
		.amdhsa_user_sgpr_queue_ptr 1
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
	.size	_Z19histogram1024KernelPjPfffi, .Lfunc_end3-_Z19histogram1024KernelPjPfffi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 568
; NumSgprs: 20
; NumVgprs: 9
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 12288 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 20
; NumVGPRsForWavesPerEU: 9
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 10
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.ident	"clang version 12.0.0 (/src/external/llvm-project/clang 1100ebe275a9dcc79a9abbda902b6f10738f2f5d)"
	.section	".note.GNU-stack"
	.addrsig
	.addrsig_sym _ZZ11bucketcountPfS_PiPjiE8s_offset
	.addrsig_sym _ZZ10bucketsortPfPiS_iPjS1_E8s_offset
	.addrsig_sym _ZZ19histogram1024KernelPjPfffiE6s_Hist
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
    .group_segment_fixed_size: 4096
    .kernarg_segment_align: 8
    .kernarg_segment_size: 96
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z11bucketcountPfS_PiPji
    .private_segment_fixed_size: 0
    .sgpr_count:     26
    .sgpr_spill_count: 0
    .symbol:         _Z11bucketcountPfS_PiPji.kd
    .vgpr_count:     13
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
    .name:           _Z18bucketprefixoffsetPjS_i
    .private_segment_fixed_size: 0
    .sgpr_count:     14
    .sgpr_spill_count: 0
    .symbol:         _Z18bucketprefixoffsetPjS_i.kd
    .vgpr_count:     6
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
    .group_segment_fixed_size: 4096
    .kernarg_segment_align: 8
    .kernarg_segment_size: 104
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z10bucketsortPfPiS_iPjS1_
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         _Z10bucketsortPfPiS_iPjS1_.kd
    .vgpr_count:     14
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
    .group_segment_fixed_size: 12288
    .kernarg_segment_align: 8
    .kernarg_segment_size: 88
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z19histogram1024KernelPjPfffi
    .private_segment_fixed_size: 0
    .sgpr_count:     20
    .sgpr_spill_count: 0
    .symbol:         _Z19histogram1024KernelPjPfffi.kd
    .vgpr_count:     9
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
