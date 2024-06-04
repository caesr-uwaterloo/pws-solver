	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	findRangeK              ; -- Begin function findRangeK
	.globl	findRangeK
	.p2align	8
	.type	findRangeK,@function
findRangeK:                             ; @findRangeK
findRangeK$local:
; %bb.0:
	s_load_dwordx16 s[12:27], s[4:5], 0x0
	s_load_dwordx4 s[8:11], s[4:5], 0x50
	s_load_dwordx4 s[28:31], s[4:5], 0x40
	s_waitcnt lgkmcnt(0)
	v_cmp_lt_i64_e64 s[0:1], s[12:13], 1
	v_mov_b32_e32 v1, 0
	s_and_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz BB0_13
; %bb.1:                                ; %.lr.ph
	s_ashr_i32 s7, s6, 31
	s_lshl_b64 s[0:1], s[6:7], 3
	s_add_u32 s2, s18, s0
	s_addc_u32 s3, s19, s1
	s_lshl_b64 s[34:35], s[6:7], 2
	s_add_u32 s4, s26, s34
	s_addc_u32 s5, s27, s35
	s_add_u32 s10, s20, s0
	s_addc_u32 s11, s21, s1
	s_add_u32 s20, s22, s0
	s_addc_u32 s21, s23, s1
	s_add_u32 s34, s28, s34
	s_addc_u32 s35, s29, s35
	s_add_u32 s24, s24, s0
	s_addc_u32 s25, s25, s1
	v_cmp_eq_u32_e64 s[0:1], 0, v0
	s_mov_b64 s[36:37], 0
	s_movk_i32 s7, 0x814
	s_movk_i32 s33, 0x408
	s_branch BB0_3
BB0_2:                                  ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[38:39]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_add_u32 s36, s36, 1
	s_addc_u32 s37, s37, 0
	v_mov_b32_e32 v2, s12
	v_mov_b32_e32 v3, s13
	v_cmp_lt_i64_e32 vcc, s[36:37], v[2:3]
	s_waitcnt lgkmcnt(0)
	s_and_b64 vcc, exec, vcc
	s_cbranch_vccz BB0_13
BB0_3:                                  ; =>This Inner Loop Header: Depth=1
	v_mov_b32_e32 v2, s2
	v_mov_b32_e32 v3, s3
	flat_load_dwordx2 v[2:3], v[2:3]
	v_mov_b32_e32 v6, s15
	v_lshlrev_b64 v[4:5], 2, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_lo_u32 v9, v3, s7
	v_mul_hi_u32 v10, v2, s7
	v_mov_b32_e32 v8, s5
	v_mov_b32_e32 v7, s4
	v_mul_lo_u32 v11, v2, s7
	v_add_u32_e32 v9, vcc, v10, v9
	v_add_u32_e32 v10, vcc, s14, v11
	v_addc_u32_e32 v6, vcc, v6, v9, vcc
	v_add_u32_e32 v4, vcc, v10, v4
	v_addc_u32_e32 v6, vcc, v6, v5, vcc
	v_add_u32_e32 v5, vcc, s33, v4
	v_addc_u32_e32 v6, vcc, 0, v6, vcc
	flat_load_dword v9, v[5:6]
	flat_load_dword v4, v[7:8]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_le_i32_e32 vcc, v9, v4
	s_and_saveexec_b64 s[38:39], vcc
	s_cbranch_execz BB0_7
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	v_add_u32_e32 v5, vcc, 4, v5
	v_addc_u32_e32 v6, vcc, 0, v6, vcc
	flat_load_dword v5, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, v5, v4
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB0_7
; %bb.5:                                ;   in Loop: Header=BB0_3 Depth=1
	v_mul_lo_u32 v3, v3, s7
	v_mul_hi_u32 v4, v2, s7
	v_mul_lo_u32 v2, v2, s7
	v_add_u32_e32 v3, vcc, v4, v3
	v_mov_b32_e32 v4, s15
	v_add_u32_e32 v5, vcc, s14, v2
	v_addc_u32_e32 v4, vcc, v4, v3, vcc
	v_lshlrev_b64 v[2:3], 2, v[0:1]
	v_add_u32_e32 v2, vcc, v5, v2
	v_addc_u32_e32 v3, vcc, v4, v3, vcc
	v_add_u32_e32 v2, vcc, 4, v2
	v_addc_u32_e32 v3, vcc, 0, v3, vcc
	flat_load_dword v2, v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v3, 31, v2
	v_cmp_gt_i64_e32 vcc, s[16:17], v[2:3]
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB0_7
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
	v_mov_b32_e32 v4, s10
	v_mov_b32_e32 v5, s11
	flat_store_dwordx2 v[4:5], v[2:3]
BB0_7:                                  ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[38:39]
	v_mov_b32_e32 v2, s20
	v_mov_b32_e32 v3, s21
	flat_load_dwordx2 v[2:3], v[2:3]
	v_mov_b32_e32 v6, s15
	v_lshlrev_b64 v[4:5], 2, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_lo_u32 v9, v3, s7
	v_mul_hi_u32 v10, v2, s7
	v_mov_b32_e32 v7, s34
	v_mov_b32_e32 v8, s35
	v_mul_lo_u32 v11, v2, s7
	v_add_u32_e32 v9, vcc, v10, v9
	v_add_u32_e32 v10, vcc, s14, v11
	v_addc_u32_e32 v6, vcc, v6, v9, vcc
	v_add_u32_e32 v4, vcc, v10, v4
	v_addc_u32_e32 v6, vcc, v6, v5, vcc
	v_add_u32_e32 v5, vcc, s33, v4
	v_addc_u32_e32 v6, vcc, 0, v6, vcc
	flat_load_dword v9, v[5:6]
	flat_load_dword v4, v[7:8]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_le_i32_e32 vcc, v9, v4
	s_and_saveexec_b64 s[38:39], vcc
	s_cbranch_execz BB0_11
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	v_add_u32_e32 v5, vcc, 4, v5
	v_addc_u32_e32 v6, vcc, 0, v6, vcc
	flat_load_dword v5, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, v5, v4
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB0_11
; %bb.9:                                ;   in Loop: Header=BB0_3 Depth=1
	v_mul_lo_u32 v3, v3, s7
	v_mul_hi_u32 v4, v2, s7
	v_mul_lo_u32 v2, v2, s7
	v_add_u32_e32 v3, vcc, v4, v3
	v_mov_b32_e32 v4, s15
	v_add_u32_e32 v5, vcc, s14, v2
	v_addc_u32_e32 v4, vcc, v4, v3, vcc
	v_lshlrev_b64 v[2:3], 2, v[0:1]
	v_add_u32_e32 v2, vcc, v5, v2
	v_addc_u32_e32 v3, vcc, v4, v3, vcc
	v_add_u32_e32 v2, vcc, 4, v2
	v_addc_u32_e32 v3, vcc, 0, v3, vcc
	flat_load_dword v2, v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v3, 31, v2
	v_cmp_gt_i64_e32 vcc, s[16:17], v[2:3]
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB0_11
; %bb.10:                               ;   in Loop: Header=BB0_3 Depth=1
	v_mov_b32_e32 v4, s24
	v_mov_b32_e32 v5, s25
	flat_store_dwordx2 v[4:5], v[2:3]
BB0_11:                                 ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[38:39]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[38:39], s[0:1]
	s_cbranch_execz BB0_2
; %bb.12:                               ;   in Loop: Header=BB0_3 Depth=1
	v_mov_b32_e32 v2, s10
	v_mov_b32_e32 v3, s11
	flat_load_dwordx2 v[2:3], v[2:3]
	v_mov_b32_e32 v5, s3
	v_mov_b32_e32 v4, s2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[4:5], v[2:3]
	v_mov_b32_e32 v2, s24
	v_mov_b32_e32 v3, s25
	flat_load_dwordx2 v[2:3], v[2:3]
	v_mov_b32_e32 v4, s20
	v_mov_b32_e32 v5, s21
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[4:5], v[2:3]
	s_branch BB0_2
BB0_13:                                 ; %._crit_edge
	s_ashr_i32 s7, s6, 31
	s_lshl_b64 s[10:11], s[6:7], 3
	s_add_u32 s0, s18, s10
	s_addc_u32 s1, s19, s11
	v_mov_b32_e32 v3, s1
	v_mov_b32_e32 v2, s0
	flat_load_dwordx2 v[2:3], v[2:3]
	s_movk_i32 s2, 0x814
	v_mov_b32_e32 v8, s15
	v_lshlrev_b64 v[4:5], 2, v[0:1]
	s_movk_i32 s3, 0x408
	s_lshl_b64 s[0:1], s[6:7], 2
	s_add_u32 s4, s26, s0
	s_addc_u32 s5, s27, s1
	v_mov_b32_e32 v7, s5
	v_mov_b32_e32 v6, s4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_lo_u32 v9, v3, s2
	v_mul_hi_u32 v10, v2, s2
	flat_load_dword v6, v[6:7]
	v_mul_lo_u32 v7, v2, s2
	v_add_u32_e32 v9, vcc, v10, v9
	v_add_u32_e32 v7, vcc, s14, v7
	v_addc_u32_e32 v8, vcc, v8, v9, vcc
	v_add_u32_e32 v4, vcc, v7, v4
	v_addc_u32_e32 v5, vcc, v8, v5, vcc
	v_add_u32_e32 v4, vcc, s3, v4
	v_addc_u32_e32 v5, vcc, 0, v5, vcc
	flat_load_dword v4, v[4:5]
	s_add_u32 s4, s30, s0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v4, v6
	s_addc_u32 s5, s31, s1
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz BB0_15
; %bb.14:
	v_mul_lo_u32 v3, v3, s2
	v_mul_hi_u32 v4, v2, s2
	v_mul_lo_u32 v2, v2, s2
	v_add_u32_e32 v3, vcc, v4, v3
	v_mov_b32_e32 v4, s15
	v_add_u32_e32 v5, vcc, s14, v2
	v_addc_u32_e32 v4, vcc, v4, v3, vcc
	v_lshlrev_b64 v[2:3], 2, v[0:1]
	v_add_u32_e32 v2, vcc, v5, v2
	v_addc_u32_e32 v3, vcc, v4, v3, vcc
	v_add_u32_e32 v2, vcc, 4, v2
	v_addc_u32_e32 v3, vcc, 0, v3, vcc
	flat_load_dword v4, v[2:3]
	v_mov_b32_e32 v2, s4
	v_mov_b32_e32 v3, s5
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[2:3], v4
BB0_15:
	s_or_b64 exec, exec, s[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s22, s10
	s_addc_u32 s7, s23, s11
	v_mov_b32_e32 v2, s6
	v_mov_b32_e32 v3, s7
	flat_load_dwordx2 v[2:3], v[2:3]
	v_mov_b32_e32 v8, s15
	v_lshlrev_b64 v[4:5], 2, v[0:1]
	s_add_u32 s6, s28, s0
	s_addc_u32 s7, s29, s1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_lo_u32 v9, v3, s2
	v_mul_hi_u32 v10, v2, s2
	v_mov_b32_e32 v6, s6
	v_mov_b32_e32 v7, s7
	v_mul_lo_u32 v11, v2, s2
	v_add_u32_e32 v9, vcc, v10, v9
	v_add_u32_e32 v10, vcc, s14, v11
	v_addc_u32_e32 v8, vcc, v8, v9, vcc
	v_add_u32_e32 v4, vcc, v10, v4
	v_addc_u32_e32 v5, vcc, v8, v5, vcc
	v_add_u32_e32 v4, vcc, s3, v4
	v_addc_u32_e32 v5, vcc, 0, v5, vcc
	flat_load_dword v8, v[4:5]
	flat_load_dword v9, v[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v8, v9
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz BB0_17
; %bb.16:
	s_movk_i32 s2, 0x814
	v_mul_lo_u32 v3, v3, s2
	v_mul_hi_u32 v4, v2, s2
	v_mul_lo_u32 v2, v2, s2
	v_add_u32_e32 v3, vcc, v4, v3
	v_mov_b32_e32 v4, s15
	v_add_u32_e32 v2, vcc, s14, v2
	v_addc_u32_e32 v3, vcc, v4, v3, vcc
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_u32_e32 v0, vcc, v2, v0
	v_addc_u32_e32 v1, vcc, v3, v1, vcc
	v_add_u32_e32 v0, vcc, 4, v0
	v_addc_u32_e32 v1, vcc, 0, v1, vcc
	v_mov_b32_e32 v2, s4
	v_mov_b32_e32 v3, s5
	flat_load_dword v5, v[2:3]
	flat_load_dword v4, v[0:1]
	s_add_u32 s0, s8, s0
	s_addc_u32 s1, s9, s1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_u32_e32 v0, vcc, v4, v5
	v_add_u32_e32 v2, vcc, 1, v0
	v_mov_b32_e32 v0, s0
	v_mov_b32_e32 v1, s1
	flat_store_dword v[0:1], v2
BB0_17:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel findRangeK
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
		.amdhsa_next_free_vgpr 12
		.amdhsa_next_free_sgpr 40
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
	.size	findRangeK, .Lfunc_end0-findRangeK
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 1356
; NumSgprs: 44
; NumVgprs: 12
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 5
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 12
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
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         96
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         104
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         120
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         128
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 144
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           findRangeK
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         findRangeK.kd
    .vgpr_count:     12
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	findK                   ; -- Begin function findK
	.globl	findK
	.p2align	8
	.type	findK,@function
findK:                                  ; @findK
findK$local:
; %bb.0:
	s_load_dwordx16 s[8:23], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	v_cmp_lt_i64_e64 s[0:1], s[8:9], 1
	v_mov_b32_e32 v1, 0
	s_and_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz BB0_9
; %bb.1:                                ; %.lr.ph
	s_ashr_i32 s7, s6, 31
	s_lshl_b64 s[0:1], s[6:7], 3
	s_add_u32 s2, s16, s0
	s_addc_u32 s3, s17, s1
	s_lshl_b64 s[4:5], s[6:7], 2
	s_add_u32 s4, s20, s4
	s_addc_u32 s5, s21, s5
	s_add_u32 s18, s18, s0
	s_addc_u32 s19, s19, s1
	v_cmp_eq_u32_e64 s[0:1], 0, v0
	s_mov_b64 s[24:25], 0
	s_movk_i32 s7, 0x814
	s_branch BB0_3
BB0_2:                                  ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[26:27]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_add_u32 s24, s24, 1
	s_addc_u32 s25, s25, 0
	v_mov_b32_e32 v2, s8
	v_mov_b32_e32 v3, s9
	v_cmp_lt_i64_e32 vcc, s[24:25], v[2:3]
	s_waitcnt lgkmcnt(0)
	s_and_b64 vcc, exec, vcc
	s_cbranch_vccz BB0_9
BB0_3:                                  ; =>This Inner Loop Header: Depth=1
	v_mov_b32_e32 v2, s2
	v_mov_b32_e32 v3, s3
	flat_load_dwordx2 v[2:3], v[2:3]
	v_mov_b32_e32 v8, s11
	v_lshlrev_b64 v[4:5], 2, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_lo_u32 v3, v3, s7
	v_mul_hi_u32 v9, v2, s7
	v_mov_b32_e32 v7, s5
	v_mov_b32_e32 v6, s4
	v_mul_lo_u32 v2, v2, s7
	v_add_u32_e32 v3, vcc, v9, v3
	v_add_u32_e32 v2, vcc, s10, v2
	v_addc_u32_e32 v3, vcc, v8, v3, vcc
	v_add_u32_e32 v2, vcc, v2, v4
	v_addc_u32_e32 v4, vcc, v3, v5, vcc
	v_add_u32_e32 v3, vcc, 0x408, v2
	v_addc_u32_e32 v4, vcc, 0, v4, vcc
	flat_load_dword v5, v[3:4]
	flat_load_dword v2, v[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_le_i32_e32 vcc, v5, v2
	s_and_saveexec_b64 s[26:27], vcc
	s_cbranch_execz BB0_7
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	v_add_u32_e32 v3, vcc, 4, v3
	v_addc_u32_e32 v4, vcc, 0, v4, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, v3, v2
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB0_7
; %bb.5:                                ;   in Loop: Header=BB0_3 Depth=1
	v_mov_b32_e32 v2, s18
	v_mov_b32_e32 v3, s19
	flat_load_dwordx2 v[2:3], v[2:3]
	v_mov_b32_e32 v5, s11
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_lo_u32 v6, v3, s7
	v_mul_hi_u32 v7, v2, s7
	v_lshlrev_b64 v[3:4], 2, v[0:1]
	v_mul_lo_u32 v2, v2, s7
	v_add_u32_e32 v6, vcc, v7, v6
	v_add_u32_e32 v2, vcc, s10, v2
	v_addc_u32_e32 v5, vcc, v5, v6, vcc
	v_add_u32_e32 v2, vcc, v2, v3
	v_addc_u32_e32 v3, vcc, v5, v4, vcc
	v_add_u32_e32 v2, vcc, 4, v2
	v_addc_u32_e32 v3, vcc, 0, v3, vcc
	flat_load_dword v2, v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v3, 31, v2
	v_cmp_gt_i64_e32 vcc, s[12:13], v[2:3]
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB0_7
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
	v_mov_b32_e32 v4, s18
	v_mov_b32_e32 v5, s19
	flat_store_dwordx2 v[4:5], v[2:3]
BB0_7:                                  ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[26:27]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[26:27], s[0:1]
	s_cbranch_execz BB0_2
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	v_mov_b32_e32 v2, s18
	v_mov_b32_e32 v3, s19
	flat_load_dwordx2 v[2:3], v[2:3]
	v_mov_b32_e32 v5, s3
	v_mov_b32_e32 v4, s2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[4:5], v[2:3]
	s_branch BB0_2
BB0_9:                                  ; %._crit_edge
	s_ashr_i32 s7, s6, 31
	s_lshl_b64 s[0:1], s[6:7], 3
	s_add_u32 s0, s16, s0
	s_addc_u32 s1, s17, s1
	v_mov_b32_e32 v3, s1
	v_mov_b32_e32 v2, s0
	flat_load_dwordx2 v[2:3], v[2:3]
	s_movk_i32 s2, 0x814
	v_mov_b32_e32 v8, s11
	v_lshlrev_b64 v[4:5], 2, v[0:1]
	s_movk_i32 s3, 0x408
	s_lshl_b64 s[0:1], s[6:7], 2
	s_add_u32 s4, s20, s0
	s_addc_u32 s5, s21, s1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_lo_u32 v9, v3, s2
	v_mul_hi_u32 v10, v2, s2
	v_mov_b32_e32 v7, s5
	v_mov_b32_e32 v6, s4
	v_mul_lo_u32 v11, v2, s2
	v_add_u32_e32 v9, vcc, v10, v9
	v_add_u32_e32 v10, vcc, s10, v11
	v_addc_u32_e32 v8, vcc, v8, v9, vcc
	v_add_u32_e32 v4, vcc, v10, v4
	v_addc_u32_e32 v5, vcc, v8, v5, vcc
	v_add_u32_e32 v4, vcc, s3, v4
	v_addc_u32_e32 v5, vcc, 0, v5, vcc
	flat_load_dword v8, v[4:5]
	flat_load_dword v9, v[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v8, v9
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz BB0_11
; %bb.10:
	v_mul_lo_u32 v3, v3, s2
	v_mul_hi_u32 v4, v2, s2
	v_mul_lo_u32 v2, v2, s2
	v_add_u32_e32 v3, vcc, v4, v3
	v_mov_b32_e32 v4, s11
	v_add_u32_e32 v2, vcc, s10, v2
	v_addc_u32_e32 v3, vcc, v4, v3, vcc
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_u32_e32 v0, vcc, v2, v0
	v_addc_u32_e32 v1, vcc, v3, v1, vcc
	v_add_u32_e32 v0, vcc, 4, v0
	v_addc_u32_e32 v1, vcc, 0, v1, vcc
	flat_load_dword v0, v[0:1]
	v_mov_b32_e32 v2, s15
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_u32_e32 v0, vcc, s14, v0
	v_addc_u32_e32 v1, vcc, v2, v1, vcc
	flat_load_dword v2, v[0:1]
	s_add_u32 s0, s22, s0
	s_addc_u32 s1, s23, s1
	v_mov_b32_e32 v0, s0
	v_mov_b32_e32 v1, s1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[0:1], v2
BB0_11:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel findK
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
		.amdhsa_next_free_vgpr 12
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
.Lfunc_end0:
	.size	findK, .Lfunc_end0-findK
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 784
; NumSgprs: 32
; NumVgprs: 12
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 32
; NumVGPRsForWavesPerEU: 12
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
    .name:           findK
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         findK.kd
    .vgpr_count:     12
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
