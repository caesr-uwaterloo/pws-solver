	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z14calculate_tempiPfS_S_iiiiffffff ; -- Begin function _Z14calculate_tempiPfS_S_iiiiffffff
	.globl	_Z14calculate_tempiPfS_S_iiiiffffff
	.p2align	8
	.type	_Z14calculate_tempiPfS_S_iiiiffffff,@function
_Z14calculate_tempiPfS_S_iiiiffffff:    ; @_Z14calculate_tempiPfS_S_iiiiffffff
_Z14calculate_tempiPfS_S_iiiiffffff$local:
; %bb.0:
	s_load_dword s8, s[4:5], 0x0
	s_load_dwordx4 s[12:15], s[4:5], 0x8
	s_load_dwordx2 s[10:11], s[4:5], 0x18
	s_load_dwordx8 s[16:23], s[4:5], 0x20
	s_waitcnt lgkmcnt(0)
	s_lshl_b32 s0, s8, 1
	s_sub_i32 s0, 16, s0
	s_mul_i32 s1, s0, s7
	s_sub_i32 s7, s1, s19
	s_mul_i32 s0, s0, s6
	s_sub_i32 s6, s0, s18
	v_add_u32_e32 v3, vcc, s7, v1
	v_mul_lo_u32 v2, v3, s16
	v_add_u32_e32 v4, vcc, s6, v0
	v_add_u32_e32 v2, vcc, v2, v4
	v_cmp_lt_i32_e32 vcc, -1, v3
	v_cmp_gt_i32_e64 s[0:1], s17, v3
	v_cmp_lt_i32_e64 s[2:3], -1, v4
	s_and_b64 s[2:3], s[2:3], s[0:1]
	v_cmp_gt_i32_e64 s[0:1], s16, v4
	s_and_b64 s[0:1], s[0:1], s[2:3]
	s_and_b64 s[2:3], vcc, s[0:1]
	s_mov_b32 m0, -1
	s_and_saveexec_b64 s[0:1], s[2:3]
	s_cbranch_execz BB0_2
; %bb.1:
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[3:4], 2, v[2:3]
	v_mov_b32_e32 v6, s15
	v_add_u32_e32 v5, vcc, s14, v3
	v_addc_u32_e32 v6, vcc, v6, v4, vcc
	v_lshlrev_b32_e32 v7, 2, v0
	v_lshlrev_b32_e32 v8, 6, v1
	v_add_u32_e32 v7, vcc, v8, v7
	v_mov_b32_e32 v8, s13
	v_add_u32_e32 v3, vcc, s12, v3
	v_addc_u32_e32 v4, vcc, v8, v4, vcc
	flat_load_dword v8, v[5:6]
	flat_load_dword v9, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write2st64_b32 v7, v9, v8 offset1:4
BB0_2:
	s_or_b64 exec, exec, s[0:1]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cmp_lt_i32 s8, 1
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc1 BB0_13
; %bb.3:                                ; %.lr.ph
	v_div_scale_f32 v3, s[0:1], s21, s21, 1.0
	s_load_dword s2, s[4:5], 0x40
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, s2
	v_div_scale_f32 v5, s[0:1], s20, s20, v4
	v_div_scale_f32 v6, s[0:1], 1.0, s21, 1.0
	v_mov_b32_e32 v7, s20
	v_div_scale_f32 v7, vcc, s2, v7, s2
	v_div_scale_f32 v8, s[2:3], s22, s22, 1.0
	v_rcp_f32_e32 v9, v3
	v_div_scale_f32 v10, s[2:3], 1.0, s22, 1.0
	v_div_scale_f32 v11, s[4:5], s23, s23, 1.0
	v_fma_f32 v12, -v3, v9, 1.0
	v_fma_f32 v9, v12, v9, v9
	v_rcp_f32_e32 v12, v5
	v_mul_f32_e32 v13, v6, v9
	v_fma_f32 v14, -v3, v13, v6
	v_fma_f32 v13, v14, v9, v13
	v_fma_f32 v14, -v5, v12, 1.0
	v_fma_f32 v12, v14, v12, v12
	v_mul_f32_e32 v14, v7, v12
	v_fma_f32 v15, -v5, v14, v7
	v_fma_f32 v14, v15, v12, v14
	v_fma_f32 v5, -v5, v14, v7
	v_div_fmas_f32 v5, v5, v12, v14
	v_div_scale_f32 v7, s[4:5], 1.0, s23, 1.0
	v_rcp_f32_e32 v12, v8
	v_fma_f32 v3, -v3, v13, v6
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v3, v3, v9, v13
	v_fma_f32 v6, -v8, v12, 1.0
	v_fma_f32 v6, v6, v12, v12
	v_mul_f32_e32 v9, v10, v6
	v_fma_f32 v12, -v8, v9, v10
	v_fma_f32 v9, v12, v6, v9
	v_rcp_f32_e32 v12, v11
	v_fma_f32 v8, -v8, v9, v10
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f32 v6, v8, v6, v9
	v_fma_f32 v8, -v11, v12, 1.0
	v_fma_f32 v8, v8, v12, v12
	v_mul_f32_e32 v9, v7, v8
	v_fma_f32 v10, -v11, v9, v7
	v_fma_f32 v9, v10, v8, v9
	v_fma_f32 v7, -v11, v9, v7
	s_mov_b64 vcc, s[4:5]
	v_div_fmas_f32 v7, v7, v8, v9
	v_div_fixup_f32 v5, v5, s20, v4
	v_div_fixup_f32 v14, v3, s21, 1.0
	v_div_fixup_f32 v10, v6, s22, 1.0
	v_div_fixup_f32 v3, v7, s23, 1.0
	s_mov_b32 s12, 0
	s_sub_i32 s0, 0, s7
	s_sub_i32 s1, 0, s6
	s_add_i32 s2, s7, 15
	s_add_i32 s3, s6, 15
	s_ashr_i32 s4, s7, 31
	s_and_b32 s4, s4, s0
	s_not_b32 s0, s7
	s_add_i32 s0, s0, s17
	s_cmp_ge_i32 s2, s17
	s_cselect_b32 s7, s0, 15
	s_ashr_i32 s0, s6, 31
	s_and_b32 s0, s0, s1
	s_not_b32 s1, s6
	s_add_i32 s1, s1, s16
	s_cmp_ge_i32 s3, s16
	s_cselect_b32 s2, s1, 15
	v_add_u32_e32 v4, vcc, 1, v0
	v_mov_b32_e32 v6, s2
	v_cmp_gt_i32_e32 vcc, s2, v0
	v_cndmask_b32_e32 v12, v6, v4, vcc
	v_add_u32_e32 v4, vcc, -1, v0
	v_mov_b32_e32 v6, s0
	v_cmp_lt_i32_e32 vcc, s0, v0
	v_cndmask_b32_e32 v13, v6, v4, vcc
	v_add_u32_e32 v4, vcc, 1, v1
	v_mov_b32_e32 v6, s7
	v_cmp_gt_i32_e32 vcc, s7, v1
	v_cndmask_b32_e32 v8, v6, v4, vcc
	v_add_u32_e32 v4, vcc, -1, v1
	v_mov_b32_e32 v6, s4
	v_cmp_lt_i32_e32 vcc, s4, v1
	v_cndmask_b32_e32 v9, v6, v4, vcc
	v_cmp_gt_i32_e64 s[0:1], s0, v0
	v_cmp_lt_i32_e64 s[2:3], s2, v0
	v_cmp_gt_i32_e64 s[4:5], s4, v1
	v_cmp_lt_i32_e64 s[6:7], s7, v1
	v_lshlrev_b32_e32 v11, 2, v0
	v_lshlrev_b32_e32 v7, 6, v1
	s_movk_i32 s9, 0x400
	v_add_u32_e32 v15, vcc, s9, v7
	v_add_u32_e32 v4, vcc, v15, v11
	v_cvt_f64_f32_e32 v[5:6], v5
	v_add_u32_e32 v7, vcc, v7, v11
	v_lshlrev_b32_e32 v8, 6, v8
	v_add_u32_e32 v8, vcc, v8, v11
	v_add_u32_e32 v8, vcc, s9, v8
	v_lshlrev_b32_e32 v9, 6, v9
	v_add_u32_e32 v9, vcc, v9, v11
	v_add_u32_e32 v9, vcc, s9, v9
	v_cvt_f64_f32_e32 v[10:11], v10
	v_lshlrev_b32_e32 v12, 2, v12
	v_add_u32_e32 v12, vcc, v15, v12
	v_lshlrev_b32_e32 v13, 2, v13
	v_add_u32_e32 v13, vcc, v15, v13
	v_cvt_f64_f32_e32 v[14:15], v14
	v_add_u32_e32 v16, vcc, 0x800, v7
	s_add_i32 s13, s8, -1
	s_mov_b32 s16, 14
                                        ; implicit-def: $sgpr14_sgpr15
	s_branch BB0_6
BB0_4:                                  ;   in Loop: Header=BB0_6 Depth=1
	s_or_b64 exec, exec, s[8:9]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_add_i32 s16, s16, -1
	s_mov_b64 s[8:9], 0
BB0_5:                                  ; %Flow262
                                        ;   in Loop: Header=BB0_6 Depth=1
	s_add_i32 s12, s12, 1
	s_and_b64 vcc, exec, s[8:9]
	s_cbranch_vccnz BB0_14
BB0_6:                                  ; =>This Inner Loop Header: Depth=1
	v_cmp_lt_u32_e32 vcc, s12, v0
	s_andn2_b64 s[14:15], s[14:15], exec
	s_and_saveexec_b64 s[18:19], vcc
	s_cbranch_execz BB0_10
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	v_cmp_lt_i32_e32 vcc, s16, v0
	v_cmp_ge_u32_e64 s[8:9], s12, v1
	s_or_b64 s[8:9], s[8:9], vcc
	v_cmp_lt_i32_e32 vcc, s16, v1
	s_or_b64 s[8:9], vcc, s[8:9]
	s_or_b64 s[8:9], s[0:1], s[8:9]
	s_or_b64 s[8:9], s[2:3], s[8:9]
	s_or_b64 s[8:9], s[4:5], s[8:9]
	s_or_b64 s[8:9], s[6:7], s[8:9]
	s_xor_b64 s[22:23], s[8:9], -1
	s_mov_b64 s[8:9], 0
	s_and_saveexec_b64 s[20:21], s[22:23]
	s_cbranch_execz BB0_9
; %bb.8:                                ;   in Loop: Header=BB0_6 Depth=1
	s_mov_b64 s[8:9], exec
	ds_read_b32 v25, v4
	ds_read_b32 v17, v8
	ds_read_b32 v18, v9
	ds_read_b32 v23, v12
	ds_read_b32 v24, v13
	s_waitcnt lgkmcnt(2)
	v_add_f32_e32 v19, v17, v18
	v_cvt_f64_f32_e32 v[17:18], v25
	v_cvt_f64_f32_e32 v[19:20], v19
	v_fma_f64 v[19:20], v[17:18], -2.0, v[19:20]
	ds_read_b32 v21, v7
	s_waitcnt lgkmcnt(0)
	v_cvt_f64_f32_e32 v[21:22], v21
	v_add_f32_e32 v23, v23, v24
	v_cvt_f64_f32_e32 v[23:24], v23
	v_fma_f64 v[19:20], v[19:20], v[10:11], v[21:22]
	v_fma_f64 v[21:22], v[17:18], -2.0, v[23:24]
	v_fma_f64 v[19:20], v[21:22], v[14:15], v[19:20]
	v_sub_f32_e32 v21, 0x42a00000, v25
	v_mul_f32_e32 v21, v3, v21
	v_cvt_f64_f32_e32 v[21:22], v21
	v_add_f64 v[19:20], v[19:20], v[21:22]
	v_fma_f64 v[17:18], v[19:20], v[5:6], v[17:18]
	v_cvt_f32_f64_e32 v17, v[17:18]
	ds_write_b32 v16, v17
BB0_9:                                  ; %Flow
                                        ;   in Loop: Header=BB0_6 Depth=1
	s_or_b64 exec, exec, s[20:21]
	s_andn2_b64 s[14:15], s[14:15], exec
	s_and_b64 s[8:9], s[8:9], exec
	s_or_b64 s[14:15], s[14:15], s[8:9]
BB0_10:                                 ;   in Loop: Header=BB0_6 Depth=1
	s_or_b64 exec, exec, s[18:19]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_cmp_eq_u32 s13, s12
	s_mov_b64 s[8:9], -1
	s_cbranch_scc1 BB0_5
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=1
	s_and_saveexec_b64 s[8:9], s[14:15]
	s_cbranch_execz BB0_4
; %bb.12:                               ;   in Loop: Header=BB0_6 Depth=1
	ds_read_b32 v17, v16
	s_waitcnt lgkmcnt(0)
	ds_write_b32 v4, v17
	s_branch BB0_4
BB0_13:
                                        ; implicit-def: $sgpr14_sgpr15
BB0_14:                                 ; %._crit_edge
	s_and_saveexec_b64 s[0:1], s[14:15]
	s_cbranch_execz BB0_16
; %bb.15:
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshlrev_b32_e32 v1, 6, v1
	v_add_u32_e32 v4, vcc, v1, v0
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[0:1], 2, v[2:3]
	v_mov_b32_e32 v2, s11
	v_add_u32_e32 v0, vcc, s10, v0
	v_addc_u32_e32 v1, vcc, v2, v1, vcc
	ds_read_b32 v2, v4 offset:2048
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[0:1], v2
BB0_16:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z14calculate_tempiPfS_S_iiiiffffff
		.amdhsa_group_segment_fixed_size 3072
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
		.amdhsa_next_free_vgpr 26
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
.Lfunc_end0:
	.size	_Z14calculate_tempiPfS_S_iiiiffffff, .Lfunc_end0-_Z14calculate_tempiPfS_S_iiiiffffff
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 1256
; NumSgprs: 28
; NumVgprs: 26
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 3072 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 6
; NumSGPRsForWavesPerEU: 28
; NumVGPRsForWavesPerEU: 26
; Occupancy: 9
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
        .size:           4
        .value_kind:     by_value
      - .offset:         36
        .size:           4
        .value_kind:     by_value
      - .offset:         40
        .size:           4
        .value_kind:     by_value
      - .offset:         44
        .size:           4
        .value_kind:     by_value
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .offset:         60
        .size:           4
        .value_kind:     by_value
      - .offset:         64
        .size:           4
        .value_kind:     by_value
      - .offset:         68
        .size:           4
        .value_kind:     by_value
      - .offset:         72
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         80
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         88
        .size:           8
        .value_kind:     hidden_global_offset_z
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
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         120
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 3072
    .kernarg_segment_align: 8
    .kernarg_segment_size: 128
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z14calculate_tempiPfS_S_iiiiffffff
    .private_segment_fixed_size: 0
    .sgpr_count:     28
    .sgpr_spill_count: 0
    .symbol:         _Z14calculate_tempiPfS_S_iiiiffffff.kd
    .vgpr_count:     26
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
