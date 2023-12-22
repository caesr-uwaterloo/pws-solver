	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z14dynproc_kerneliPiS_S_iiii ; -- Begin function _Z14dynproc_kerneliPiS_S_iiii
	.globl	_Z14dynproc_kerneliPiS_S_iiii
	.p2align	8
	.type	_Z14dynproc_kerneliPiS_S_iiii,@function
_Z14dynproc_kerneliPiS_S_iiii:          ; @_Z14dynproc_kerneliPiS_S_iiii
_Z14dynproc_kerneliPiS_S_iiii$local:
; %bb.0:
	s_load_dword s14, s[4:5], 0x0
	s_load_dwordx4 s[8:11], s[4:5], 0x8
	s_load_dwordx2 s[2:3], s[4:5], 0x18
	s_load_dword s7, s[4:5], 0x20
	s_load_dwordx2 s[12:13], s[4:5], 0x28
	s_waitcnt lgkmcnt(0)
	s_lshl_b32 s0, s14, 1
	s_sub_i32 s0, 0x100, s0
	s_mul_i32 s6, s0, s6
	s_sub_i32 s5, s6, s13
	v_add_u32_e32 v1, vcc, s5, v0
	v_cmp_lt_i32_e32 vcc, -1, v1
	v_cmp_gt_i32_e64 s[0:1], s7, v1
	s_and_b64 s[16:17], vcc, s[0:1]
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b32_e32 v3, 2, v0
	s_mov_b32 m0, -1
	s_and_saveexec_b64 s[0:1], s[16:17]
	s_cbranch_execz BB0_2
; %bb.1:
	v_lshlrev_b64 v[4:5], 2, v[1:2]
	v_mov_b32_e32 v6, s11
	v_add_u32_e32 v4, vcc, s10, v4
	v_addc_u32_e32 v5, vcc, v6, v5, vcc
	flat_load_dword v4, v[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v3, v4
BB0_2:
	s_or_b64 exec, exec, s[0:1]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s14, 1
	s_mov_b32 m0, -1
	s_cbranch_scc1 BB0_12
; %bb.3:                                ; %.lr.ph
	s_mov_b32 s4, 0
	s_sub_i32 s0, 0, s5
	s_movk_i32 s1, 0xff
	s_add_i32 s10, s5, s1
	s_ashr_i32 s11, s5, 31
	s_and_b32 s0, s11, s0
	s_not_b32 s5, s5
	s_add_i32 s5, s5, s7
	s_cmp_ge_i32 s10, s7
	s_cselect_b32 s1, s5, s1
	v_add_u32_e32 v4, vcc, -1, v0
	v_add_u32_e32 v5, vcc, 1, v0
	v_mov_b32_e32 v6, s0
	v_cmp_lt_i32_e32 vcc, s0, v0
	v_cndmask_b32_e32 v4, v6, v4, vcc
	v_mov_b32_e32 v6, s1
	v_cmp_gt_i32_e32 vcc, s1, v0
	v_cndmask_b32_e32 v5, v6, v5, vcc
	v_cmp_gt_i32_e32 vcc, s0, v0
	v_cmp_lt_i32_e64 s[0:1], s1, v0
	s_or_b64 s[10:11], vcc, s[0:1]
	v_lshlrev_b32_e32 v4, 2, v4
	v_lshlrev_b32_e32 v5, 2, v5
	v_lshlrev_b32_e32 v6, 2, v0
	v_or_b32_e32 v6, 0x400, v6
	s_add_i32 s5, s14, -1
	s_mul_i32 s0, s12, s7
	s_add_i32 s6, s6, s0
	v_add_u32_e32 v7, vcc, s6, v0
	v_subrev_u32_e32 v7, vcc, s13, v7
	s_movk_i32 s6, 0xfe
	s_mov_b32 m0, -1
	s_branch BB0_6
BB0_4:                                  ;   in Loop: Header=BB0_6 Depth=1
	s_or_b64 exec, exec, s[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_add_u32_e32 v7, vcc, s7, v7
	s_add_i32 s6, s6, -1
	s_mov_b64 s[12:13], 0
BB0_5:                                  ; %Flow
                                        ;   in Loop: Header=BB0_6 Depth=1
	s_add_i32 s4, s4, 1
	s_and_b64 vcc, exec, s[12:13]
	s_cbranch_vccnz BB0_13
BB0_6:                                  ; =>This Inner Loop Header: Depth=1
	v_cmp_ge_u32_e32 vcc, s4, v0
	v_cmp_lt_i32_e64 s[0:1], s6, v0
	s_or_b64 s[0:1], vcc, s[0:1]
	s_or_b64 s[0:1], s[10:11], s[0:1]
	s_xor_b64 s[0:1], s[0:1], -1
	s_and_saveexec_b64 s[12:13], s[0:1]
	s_cbranch_execz BB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	ds_read_b32 v10, v5
	ds_read_b32 v11, v4
	ds_read_b32 v12, v3
	v_ashrrev_i32_e32 v8, 31, v7
	v_lshlrev_b64 v[8:9], 2, v[7:8]
	s_waitcnt lgkmcnt(0)
	v_min3_i32 v10, v11, v12, v10
	v_mov_b32_e32 v11, s9
	v_add_u32_e32 v8, vcc, s8, v8
	v_addc_u32_e32 v9, vcc, v11, v9, vcc
	flat_load_dword v8, v[8:9]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v8, vcc, v10, v8
	ds_write_b32 v6, v8
BB0_8:                                  ;   in Loop: Header=BB0_6 Depth=1
	s_or_b64 exec, exec, s[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cmp_eq_u32 s5, s4
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc1 BB0_11
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	s_and_saveexec_b64 s[12:13], s[0:1]
	s_cbranch_execz BB0_4
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	ds_read_b32 v8, v6
	s_waitcnt lgkmcnt(0)
	ds_write_b32 v3, v8
	s_branch BB0_4
BB0_11:                                 ;   in Loop: Header=BB0_6 Depth=1
	s_mov_b64 s[12:13], -1
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $sgpr6
	s_branch BB0_5
BB0_12:
                                        ; implicit-def: $sgpr0_sgpr1
BB0_13:
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB0_15
; %bb.14:
	v_lshlrev_b32_e32 v3, 2, v0
	v_lshlrev_b64 v[0:1], 2, v[1:2]
	v_mov_b32_e32 v2, s3
	v_add_u32_e32 v0, vcc, s2, v0
	v_addc_u32_e32 v1, vcc, v2, v1, vcc
	ds_read_b32 v2, v3 offset:1024
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[0:1], v2
BB0_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z14dynproc_kerneliPiS_S_iiii
		.amdhsa_group_segment_fixed_size 2048
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
		.amdhsa_next_free_vgpr 13
		.amdhsa_next_free_sgpr 18
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
	.size	_Z14dynproc_kerneliPiS_S_iiii, .Lfunc_end0-_Z14dynproc_kerneliPiS_S_iiii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 588
; NumSgprs: 22
; NumVgprs: 13
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 2048 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 22
; NumVGPRsForWavesPerEU: 13
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
    .group_segment_fixed_size: 2048
    .kernarg_segment_align: 8
    .kernarg_segment_size: 104
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z14dynproc_kerneliPiS_S_iiii
    .private_segment_fixed_size: 0
    .sgpr_count:     22
    .sgpr_spill_count: 0
    .symbol:         _Z14dynproc_kerneliPiS_S_iiii.kd
    .vgpr_count:     13
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
