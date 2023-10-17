	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z4Fan1PfS_ii
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
	.size	_Z4Fan1PfS_ii, .Lfunc_end0-_Z4Fan1PfS_ii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 344
; NumSgprs: 16
; NumVgprs: 8
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 16
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
	.protected	_Z4Fan2PfS_S_iii        ; -- Begin function _Z4Fan2PfS_S_iii
	.globl	_Z4Fan2PfS_S_iii
	.p2align	8
	.type	_Z4Fan2PfS_S_iii,@function
_Z4Fan2PfS_S_iii:                       ; @_Z4Fan2PfS_S_iii
_Z4Fan2PfS_S_iii$local:
; %bb.0:
	v_mov_b32_e32 v2, v0
	s_load_dword s1, s[6:7], 0x18
	s_load_dword s0, s[6:7], 0x20
	v_mov_b32_e32 v3, 0
	s_load_dword s2, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s2, s2, 0xffff
	v_mov_b32_e32 v0, s8
	v_mad_u64_u32 v[3:4], s[2:3], s2, v0, v[2:3]
	s_not_b32 s2, s0
	s_add_i32 s2, s2, s1
	s_ashr_i32 s3, s2, 31
	v_cmp_gt_u64_e32 vcc, s[2:3], v[3:4]
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz BB1_4
; %bb.1:
	v_mov_b32_e32 v2, 0
	s_add_u32 s2, s4, 6
	s_addc_u32 s3, s5, 0
	v_mov_b32_e32 v5, s3
	v_mov_b32_e32 v4, s2
	flat_load_ushort v0, v[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mad_u64_u32 v[1:2], s[2:3], v0, s9, v[1:2]
	s_sub_i32 s2, s1, s0
	s_ashr_i32 s3, s2, 31
	v_cmp_gt_u64_e32 vcc, s[2:3], v[1:2]
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB1_4
; %bb.2:
	v_add_u32_e32 v0, vcc, s0, v3
	v_add_u32_e32 v0, vcc, 1, v0
	v_mul_lo_u32 v6, v0, s1
	s_load_dwordx4 s[8:11], s[6:7], 0x0
	v_add_u32_e32 v2, vcc, s0, v6
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, s9
	v_add_u32_e32 v2, vcc, s8, v2
	v_addc_u32_e32 v3, vcc, v4, v3, vcc
	flat_load_dword v8, v[2:3]
	s_mul_i32 s1, s0, s1
	v_add_u32_e32 v7, vcc, s0, v1
	v_add_u32_e32 v2, vcc, s1, v7
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_mov_b32_e32 v5, s11
	v_add_u32_e32 v4, vcc, s10, v2
	v_addc_u32_e32 v5, vcc, v5, v3, vcc
	v_add_u32_e32 v2, vcc, v7, v6
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[6:7], 2, v[2:3]
	v_mov_b32_e32 v9, s11
	v_add_u32_e32 v6, vcc, s10, v6
	v_addc_u32_e32 v7, vcc, v9, v7, vcc
	flat_load_dword v9, v[4:5]
	flat_load_dword v10, v[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v4, -v8, v9, v10
	flat_store_dword v[6:7], v4
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB1_4
; %bb.3:
	s_load_dwordx4 s[4:7], s[6:7], 0x10
	v_lshlrev_b64 v[1:2], 2, v[2:3]
	v_mov_b32_e32 v3, s9
	v_add_u32_e32 v1, vcc, s8, v1
	v_addc_u32_e32 v2, vcc, v3, v2, vcc
	flat_load_dword v4, v[1:2]
	s_ashr_i32 s1, s0, 31
	s_lshl_b64 s[0:1], s[0:1], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s4, s0
	s_addc_u32 s1, s5, s1
	v_mov_b32_e32 v3, s1
	v_mov_b32_e32 v2, s0
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_mov_b32_e32 v5, s5
	v_add_u32_e32 v0, vcc, s4, v0
	v_addc_u32_e32 v1, vcc, v5, v1, vcc
	flat_load_dword v5, v[2:3]
	flat_load_dword v6, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v2, -v4, v5, v6
	flat_store_dword v[0:1], v2
BB1_4:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z4Fan2PfS_S_iii
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
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 11
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
.Lfunc_end1:
	.size	_Z4Fan2PfS_S_iii, .Lfunc_end1-_Z4Fan2PfS_S_iii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 444
; NumSgprs: 16
; NumVgprs: 11
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 16
; NumVGPRsForWavesPerEU: 11
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
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
    .name:           _Z4Fan1PfS_ii
    .private_segment_fixed_size: 0
    .sgpr_count:     16
    .sgpr_spill_count: 0
    .symbol:         _Z4Fan1PfS_ii.kd
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
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .offset:         24
        .size:           4
        .value_kind:     by_value
      - .offset:         28
        .size:           4
        .value_kind:     by_value
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
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 96
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z4Fan2PfS_S_iii
    .private_segment_fixed_size: 0
    .sgpr_count:     16
    .sgpr_spill_count: 0
    .symbol:         _Z4Fan2PfS_S_iii.kd
    .vgpr_count:     11
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
