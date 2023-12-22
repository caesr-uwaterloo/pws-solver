	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z14invert_mappingPfS_ii ; -- Begin function _Z14invert_mappingPfS_ii
	.globl	_Z14invert_mappingPfS_ii
	.p2align	8
	.type	_Z14invert_mappingPfS_ii,@function
_Z14invert_mappingPfS_ii:               ; @_Z14invert_mappingPfS_ii
_Z14invert_mappingPfS_ii$local:
; %bb.0:
	s_load_dword s2, s[4:5], 0x4
	s_load_dwordx2 s[0:1], s[6:7], 0x10
	s_waitcnt lgkmcnt(0)
	s_and_b32 s2, s2, 0xffff
	s_mul_i32 s8, s8, s2
	v_add_u32_e32 v0, vcc, s8, v0
	v_cmp_gt_i32_e32 vcc, s0, v0
	v_cmp_gt_i32_e64 s[2:3], s1, 0
	s_and_b64 s[2:3], vcc, s[2:3]
	s_and_saveexec_b64 s[4:5], s[2:3]
	s_cbranch_execz BB0_3
; %bb.1:                                ; %.lr.ph
	v_mul_lo_u32 v1, s1, v0
	s_load_dwordx4 s[4:7], s[6:7], 0x0
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, s5
	v_add_u32_e32 v2, vcc, s4, v2
	v_addc_u32_e32 v3, vcc, v1, v3, vcc
BB0_2:                                  ; =>This Inner Loop Header: Depth=1
	flat_load_dword v6, v[2:3]
	v_ashrrev_i32_e32 v1, 31, v0
	v_mov_b32_e32 v7, s7
	s_add_i32 s1, s1, -1
	v_add_u32_e32 v2, vcc, 4, v2
	v_addc_u32_e32 v3, vcc, 0, v3, vcc
	v_lshlrev_b64 v[4:5], 2, v[0:1]
	v_add_u32_e32 v0, vcc, s0, v0
	s_cmp_lg_u32 s1, 0
	v_add_u32_e32 v4, vcc, s6, v4
	v_addc_u32_e32 v5, vcc, v7, v5, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[4:5], v6
	s_cbranch_scc1 BB0_2
BB0_3:                                  ; %.loopexit
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z14invert_mappingPfS_ii
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
		.amdhsa_next_free_vgpr 8
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
.Lfunc_end0:
	.size	_Z14invert_mappingPfS_ii, .Lfunc_end0-_Z14invert_mappingPfS_ii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 176
; NumSgprs: 13
; NumVgprs: 8
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 13
; NumVGPRsForWavesPerEU: 8
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z11kmeansPointPfS_iiiPiS_S_S0_ ; -- Begin function _Z11kmeansPointPfS_iiiPiS_S_S0_
	.globl	_Z11kmeansPointPfS_iiiPiS_S_S0_
	.p2align	8
	.type	_Z11kmeansPointPfS_iiiPiS_S_S0_,@function
_Z11kmeansPointPfS_iiiPiS_S_S0_:        ; @_Z11kmeansPointPfS_iiiPiS_S_S0_
_Z11kmeansPointPfS_iiiPiS_S_S0_$local:
; %bb.0:
	s_load_dword s3, s[4:5], 0x4
	s_load_dword s10, s[4:5], 0xc
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, s3, 0xffff
	v_cvt_f32_u32_e32 v1, s4
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	s_sub_i32 s0, 0, s4
	v_mul_lo_u32 v2, s0, v1
	v_mul_hi_u32 v2, v1, v2
	v_add_u32_e32 v1, vcc, v2, v1
	v_mul_hi_u32 v1, s10, v1
	v_mul_lo_u32 v2, v1, s4
	v_add_u32_e32 v3, vcc, 1, v1
	v_sub_u32_e32 v2, vcc, s10, v2
	v_cmp_le_u32_e64 s[0:1], s4, v2
	v_cndmask_b32_e64 v1, v1, v3, s[0:1]
	v_subrev_u32_e32 v3, vcc, s4, v2
	v_cndmask_b32_e64 v2, v2, v3, s[0:1]
	v_add_u32_e32 v3, vcc, 1, v1
	v_cmp_le_u32_e32 vcc, s4, v2
	v_cndmask_b32_e32 v2, v1, v3, vcc
	v_mul_lo_u32 v3, v2, s4
	s_mov_b32 s2, 0
	v_mov_b32_e32 v1, 0
	s_lshr_b32 s0, s3, 16
	v_cmp_gt_u32_e32 vcc, s10, v3
	v_addc_u32_e32 v2, vcc, 0, v2, vcc
	v_mul_lo_u32 v2, v2, s9
	v_mov_b32_e32 v3, s4
	v_mul_u32_u24_e32 v3, s0, v3
	v_add_u32_e32 v2, vcc, s8, v2
	v_mad_u64_u32 v[0:1], s[0:1], v3, v2, v[0:1]
	s_load_dwordx4 s[12:15], s[6:7], 0x10
	s_load_dwordx4 s[8:11], s[6:7], 0x20
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s[4:5], s14, 0
	v_cmp_gt_u32_e64 s[0:1], s13, v0
	s_and_b64 s[16:17], s[0:1], s[4:5]
	v_mov_b32_e32 v2, -1
	s_and_saveexec_b64 s[4:5], s[16:17]
	s_cbranch_execz BB1_6
; %bb.1:                                ; %.lr.ph71
	s_load_dwordx2 s[6:7], s[6:7], 0x0
	v_cmp_gt_i32_e64 s[16:17], s12, 0
	v_mov_b32_e32 v2, -1
	v_mov_b32_e32 v1, 0x7f7fffff
	s_mov_b32 s15, 0
	s_branch BB1_3
BB1_2:                                  ; %._crit_edge
                                        ;   in Loop: Header=BB1_3 Depth=1
	v_cmp_lt_f32_e32 vcc, v3, v1
	v_cndmask_b32_e32 v1, v1, v3, vcc
	v_mov_b32_e32 v3, s15
	s_add_i32 s15, s15, 1
	s_add_i32 s2, s2, s12
	s_cmp_lg_u32 s15, s14
	v_cndmask_b32_e32 v2, v2, v3, vcc
	s_cbranch_scc0 BB1_6
BB1_3:                                  ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_5 Depth 2
	s_andn2_b64 vcc, exec, s[16:17]
	v_mov_b32_e32 v3, 0
	s_cbranch_vccnz BB1_2
; %bb.4:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB1_3 Depth=1
	s_ashr_i32 s3, s2, 31
	s_lshl_b64 s[18:19], s[2:3], 2
	s_add_u32 s18, s10, s18
	s_addc_u32 s19, s11, s19
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v4, v0
	s_mov_b32 s3, s12
BB1_5:                                  ; %.lr.ph
                                        ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_ashrrev_i32_e32 v5, 31, v4
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v7, s7
	v_lshlrev_b64 v[5:6], 2, v[4:5]
	v_add_u32_e32 v5, vcc, s6, v5
	v_addc_u32_e32 v6, vcc, v7, v6, vcc
	flat_load_dword v5, v[5:6]
	s_load_dword s20, s[18:19], 0x0
	s_add_i32 s3, s3, -1
	s_add_u32 s18, s18, 4
	v_add_u32_e32 v4, vcc, s13, v4
	s_addc_u32 s19, s19, 0
	s_cmp_lg_u32 s3, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_subrev_f32_e32 v5, s20, v5
	v_fma_f32 v3, v5, v5, v3
	s_cbranch_scc1 BB1_5
	s_branch BB1_2
BB1_6:                                  ; %Flow98
	s_or_b64 exec, exec, s[4:5]
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz BB1_8
; %bb.7:
	v_mov_b32_e32 v1, 0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_mov_b32_e32 v3, s9
	v_add_u32_e32 v0, vcc, s8, v0
	v_addc_u32_e32 v1, vcc, v3, v1, vcc
	flat_store_dword v[0:1], v2
BB1_8:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z11kmeansPointPfS_iiiPiS_S_S0_
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 8
		.amdhsa_next_free_sgpr 21
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
	.size	_Z11kmeansPointPfS_iiiPiS_S_S0_, .Lfunc_end1-_Z11kmeansPointPfS_iiiPiS_S_S0_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 488
; NumSgprs: 25
; NumVgprs: 8
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 25
; NumVGPRsForWavesPerEU: 8
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
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
    .name:           _Z14invert_mappingPfS_ii
    .private_segment_fixed_size: 0
    .sgpr_count:     13
    .sgpr_spill_count: 0
    .symbol:         _Z14invert_mappingPfS_ii.kd
    .vgpr_count:     8
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
    .name:           _Z11kmeansPointPfS_iiiPiS_S_S0_
    .private_segment_fixed_size: 0
    .sgpr_count:     25
    .sgpr_spill_count: 0
    .symbol:         _Z11kmeansPointPfS_iiiPiS_S_S0_.kd
    .vgpr_count:     8
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
