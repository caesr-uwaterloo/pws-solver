	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z16block_prefix_sumPfii ; -- Begin function _Z16block_prefix_sumPfii
	.globl	_Z16block_prefix_sumPfii
	.p2align	8
	.type	_Z16block_prefix_sumPfii,@function
_Z16block_prefix_sumPfii:               ; @_Z16block_prefix_sumPfii
_Z16block_prefix_sumPfii$local:
; %bb.0:
	s_load_dwordx2 s[10:11], s[6:7], 0x8
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	s_mul_i32 s8, s8, s0
	v_add_u32_e32 v1, vcc, s8, v0
	v_lshlrev_b32_e32 v1, 1, v1
	v_or_b32_e32 v1, 1, v1
	v_mul_lo_u32 v1, v1, s11
	s_load_dwordx2 s[2:3], s[6:7], 0x0
	v_add_u32_e32 v4, vcc, -1, v1
	v_cmp_ge_i32_e64 s[0:1], s10, v1
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b64 v[2:3], 2, v[4:5]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, s3
	v_add_u32_e32 v2, vcc, s2, v2
	v_addc_u32_e32 v3, vcc, v1, v3, vcc
	v_lshlrev_b32_e32 v6, 1, v0
	v_lshlrev_b32_e32 v1, 3, v0
	v_add_u32_e32 v1, vcc, 0, v1
	s_mov_b32 m0, -1
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz BB0_2
; %bb.1:
	flat_load_dword v5, v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v1, v5
BB0_2:
	s_or_b64 exec, exec, s[2:3]
	v_add_u32_e32 v4, vcc, s11, v4
	v_cmp_gt_i32_e64 s[2:3], s10, v4
	s_ashr_i32 s5, s11, 31
	s_mov_b32 s4, s11
	s_lshl_b64 s[4:5], s[4:5], 2
	v_mov_b32_e32 v5, s5
	v_add_u32_e32 v4, vcc, s4, v2
	v_addc_u32_e32 v5, vcc, v3, v5, vcc
	s_and_saveexec_b64 s[4:5], s[2:3]
	s_cbranch_execz BB0_4
; %bb.3:
	flat_load_dword v7, v[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v1, v7 offset:4
BB0_4:
	s_or_b64 exec, exec, s[4:5]
	s_mov_b32 s4, 1
	s_cmp_lt_i32 s10, 2
	s_mov_b32 m0, -1
	s_cbranch_scc1 BB0_9
; %bb.5:                                ; %.lr.ph95
	s_mov_b32 s4, 1
	v_or_b32_e32 v6, 1, v6
	s_mov_b32 s5, s10
	s_branch BB0_7
BB0_6:                                  ;   in Loop: Header=BB0_7 Depth=1
	s_or_b64 exec, exec, s[8:9]
	s_lshl_b32 s4, s4, 1
	s_cmp_lt_i32 s5, 4
	s_mov_b32 s5, s6
	s_cbranch_scc1 BB0_9
BB0_7:                                  ; =>This Inner Loop Header: Depth=1
	s_ashr_i32 s6, s5, 1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s6, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_cbranch_execz BB0_6
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	v_mul_lo_u32 v7, s4, v6
	s_lshl_b32 s7, s4, 2
	v_lshlrev_b32_e32 v7, 2, v7
	v_add_u32_e32 v7, vcc, 0, v7
	v_add_u32_e32 v7, vcc, -4, v7
	v_add_u32_e32 v8, vcc, s7, v7
	ds_read_b32 v7, v7
	ds_read_b32 v9, v8
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v7, v7, v9
	ds_write_b32 v8, v7
	s_branch BB0_6
BB0_9:                                  ; %Flow107
	s_cmp_gt_i32 s10, 2
	s_mov_b32 m0, -1
	s_cbranch_scc0 BB0_15
; %bb.10:
	v_mov_b32_e32 v6, s10
	v_cmp_lt_i32_e32 vcc, s4, v6
	v_cndmask_b32_e64 v6, 0, 1, vcc
	v_lshlrev_b32_e64 v8, v6, s4
	v_cmp_gt_i32_e32 vcc, 2, v8
	s_and_b64 vcc, exec, vcc
	s_cbranch_vccnz BB0_15
; %bb.11:                               ; %.lr.ph
	v_ashrrev_i32_e32 v6, 1, v8
	v_add_u32_e32 v7, vcc, 1, v0
	s_mov_b32 s4, 0
	s_branch BB0_13
BB0_12:                                 ;   in Loop: Header=BB0_13 Depth=1
	s_or_b64 exec, exec, s[6:7]
	s_lshl_b32 s4, s4, 1
	v_cmp_lt_i32_e32 vcc, s4, v6
	s_and_b64 vcc, exec, vcc
	v_mov_b32_e32 v8, v9
	s_cbranch_vccz BB0_15
BB0_13:                                 ; =>This Inner Loop Header: Depth=1
	s_or_b32 s4, s4, 1
	v_ashrrev_i32_e32 v9, 1, v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s4, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz BB0_12
; %bb.14:                               ;   in Loop: Header=BB0_13 Depth=1
	v_mul_lo_u32 v10, v9, v7
	v_and_b32_e32 v8, -4, v8
	v_lshlrev_b32_e32 v10, 2, v10
	v_add_u32_e32 v10, vcc, 0, v10
	v_add_u32_e32 v10, vcc, -4, v10
	v_add_u32_e32 v8, vcc, v10, v8
	ds_read_b32 v10, v10
	ds_read_b32 v11, v8
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v10, v10, v11
	ds_write_b32 v8, v10
	s_branch BB0_12
BB0_15:                                 ; %.loopexit
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB0_17
; %bb.16:
	ds_read_b32 v0, v1
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[2:3], v0
BB0_17:
	s_or_b64 exec, exec, s[4:5]
	s_and_saveexec_b64 s[0:1], s[2:3]
	s_cbranch_execz BB0_19
; %bb.18:
	ds_read_b32 v0, v1 offset:4
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[4:5], v0
BB0_19:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z16block_prefix_sumPfii
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
		.amdhsa_next_free_vgpr 12
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
	.size	_Z16block_prefix_sumPfii, .Lfunc_end0-_Z16block_prefix_sumPfii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 620
; NumSgprs: 16
; NumVgprs: 12
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 16
; NumVGPRsForWavesPerEU: 12
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z17device_prefix_sumPfii ; -- Begin function _Z17device_prefix_sumPfii
	.globl	_Z17device_prefix_sumPfii
	.p2align	8
	.type	_Z17device_prefix_sumPfii,@function
_Z17device_prefix_sumPfii:              ; @_Z17device_prefix_sumPfii
_Z17device_prefix_sumPfii$local:
; %bb.0:
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s0, 0xffff
	v_cvt_f32_u32_e32 v1, s9
	v_rcp_iflag_f32_e32 v1, v1
	s_mov_b32 s10, 0x4f7ffffe
	v_mul_f32_e32 v1, s10, v1
	v_cvt_u32_f32_e32 v1, v1
	s_sub_i32 s0, 0, s9
	v_mul_lo_u32 v2, s0, v1
	s_load_dwordx2 s[4:5], s[6:7], 0x8
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s3, s5, 31
	v_mul_hi_u32 v2, v1, v2
	s_add_i32 s0, s5, s3
	s_xor_b32 s2, s0, s3
	v_add_u32_e32 v1, vcc, v2, v1
	v_mul_hi_u32 v1, s2, v1
	s_lshl_b32 s5, s5, 1
	v_mul_lo_u32 v2, v1, s9
	v_add_u32_e32 v3, vcc, 1, v1
	v_sub_u32_e32 v2, vcc, s2, v2
	v_cmp_le_u32_e64 s[0:1], s9, v2
	v_cndmask_b32_e64 v1, v1, v3, s[0:1]
	v_subrev_u32_e32 v3, vcc, s9, v2
	v_cndmask_b32_e64 v2, v2, v3, s[0:1]
	v_add_u32_e32 v3, vcc, 1, v1
	v_cmp_le_u32_e32 vcc, s9, v2
	v_cndmask_b32_e32 v1, v1, v3, vcc
	v_xor_b32_e32 v1, s3, v1
	v_subrev_u32_e32 v1, vcc, s3, v1
	v_sub_u32_e32 v2, vcc, s5, v1
	v_ashrrev_i32_e32 v3, 31, v2
	v_add_u32_e32 v2, vcc, v3, v2
	v_xor_b32_e32 v2, v2, v3
	v_cvt_f32_u32_e32 v4, v2
	v_rcp_iflag_f32_e32 v4, v4
	v_mul_f32_e32 v4, s10, v4
	v_cvt_u32_f32_e32 v4, v4
	v_sub_u32_e32 v5, vcc, 0, v2
	v_mul_lo_u32 v5, v5, v4
	s_ashr_i32 s0, s8, 31
	v_cvt_f32_u32_e32 v6, s2
	s_add_i32 s1, s8, s0
	v_mul_hi_u32 v5, v4, v5
	s_xor_b32 s1, s1, s0
	v_rcp_iflag_f32_e32 v6, v6
	v_add_u32_e32 v4, vcc, v5, v4
	v_mul_hi_u32 v4, s1, v4
	v_mul_f32_e32 v5, s10, v6
	v_cvt_u32_f32_e32 v5, v5
	v_xor_b32_e32 v3, s0, v3
	v_mul_lo_u32 v6, v4, v2
	v_add_u32_e32 v7, vcc, 1, v4
	v_sub_u32_e32 v6, vcc, s1, v6
	v_cmp_ge_u32_e64 s[0:1], v6, v2
	v_cndmask_b32_e64 v4, v4, v7, s[0:1]
	v_sub_u32_e32 v7, vcc, v6, v2
	v_cndmask_b32_e64 v6, v6, v7, s[0:1]
	v_add_u32_e32 v7, vcc, 1, v4
	v_cmp_ge_u32_e32 vcc, v6, v2
	v_cndmask_b32_e32 v2, v4, v7, vcc
	v_xor_b32_e32 v2, v2, v3
	v_subrev_u32_e32 v2, vcc, v3, v2
	v_add_u32_e32 v2, vcc, 1, v2
	v_mul_lo_u32 v1, v2, v1
	s_sub_i32 s0, 0, s2
	v_mul_lo_u32 v2, s0, v5
	v_add_u32_e32 v1, vcc, s8, v1
	v_mul_lo_u32 v1, v1, s9
	v_mul_hi_u32 v2, v5, v2
	v_add_u32_e32 v0, vcc, v1, v0
	v_add_u32_e32 v1, vcc, 1, v0
	v_ashrrev_i32_e32 v3, 31, v1
	v_add_u32_e32 v1, vcc, v1, v3
	v_xor_b32_e32 v1, v1, v3
	v_add_u32_e32 v2, vcc, v2, v5
	v_mul_hi_u32 v4, v1, v2
	v_mul_lo_u32 v4, v4, s2
	v_sub_u32_e32 v1, vcc, v1, v4
	v_subrev_u32_e32 v4, vcc, s2, v1
	v_cmp_le_u32_e32 vcc, s2, v1
	v_cndmask_b32_e32 v1, v1, v4, vcc
	v_subrev_u32_e32 v4, vcc, s2, v1
	v_cmp_le_u32_e32 vcc, s2, v1
	v_cndmask_b32_e32 v1, v1, v4, vcc
	v_xor_b32_e32 v1, v1, v3
	v_sub_u32_e32 v1, vcc, v1, v3
	v_cmp_ne_u32_e32 vcc, 0, v1
	v_cmp_gt_i32_e64 s[0:1], s4, v0
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB1_2
; %bb.1:
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_u32_e32 v3, vcc, v0, v1
	v_xor_b32_e32 v3, v3, v1
	v_mul_hi_u32 v2, v3, v2
	v_mul_lo_u32 v2, v2, s2
	s_load_dwordx2 s[0:1], s[6:7], 0x0
	v_sub_u32_e32 v2, vcc, v3, v2
	v_subrev_u32_e32 v3, vcc, s2, v2
	v_cmp_le_u32_e32 vcc, s2, v2
	v_cndmask_b32_e32 v2, v2, v3, vcc
	v_subrev_u32_e32 v3, vcc, s2, v2
	v_cmp_le_u32_e32 vcc, s2, v2
	v_cndmask_b32_e32 v2, v2, v3, vcc
	v_xor_b32_e32 v2, v2, v1
	v_sub_u32_e32 v2, vcc, v2, v1
	v_not_b32_e32 v2, v2
	v_add_u32_e32 v2, vcc, v0, v2
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, s1
	v_add_u32_e32 v2, vcc, s0, v2
	v_addc_u32_e32 v3, vcc, v4, v3, vcc
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_u32_e32 v0, vcc, s0, v0
	v_addc_u32_e32 v1, vcc, v4, v1, vcc
	flat_load_dword v4, v[2:3]
	flat_load_dword v5, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v4, v5
	flat_store_dword v[0:1], v2
BB1_2:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z17device_prefix_sumPfii
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
		.amdhsa_next_free_sgpr 11
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
	.size	_Z17device_prefix_sumPfii, .Lfunc_end1-_Z17device_prefix_sumPfii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 632
; NumSgprs: 15
; NumVgprs: 8
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 15
; NumVGPRsForWavesPerEU: 8
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
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .offset:         8
        .size:           4
        .value_kind:     by_value
      - .offset:         12
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
    .name:           _Z16block_prefix_sumPfii
    .private_segment_fixed_size: 0
    .sgpr_count:     16
    .sgpr_spill_count: 0
    .symbol:         _Z16block_prefix_sumPfii.kd
    .vgpr_count:     12
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
      - .offset:         12
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
    .name:           _Z17device_prefix_sumPfii
    .private_segment_fixed_size: 0
    .sgpr_count:     15
    .sgpr_spill_count: 0
    .symbol:         _Z17device_prefix_sumPfii.kd
    .vgpr_count:     8
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
