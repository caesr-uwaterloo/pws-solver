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
	v_lshlrev_b32_e32 v5, 2, v1
	s_mov_b32 m0, -1
	s_and_saveexec_b64 s[12:13], vcc
	s_cbranch_execz BB0_2
; %bb.1:
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_add_u32_e64 v3, s[0:1], 1, v2
	v_ashrrev_i32_e32 v4, 31, v3
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v6, s5
	v_add_u32_e64 v3, s[0:1], s4, v3
	v_addc_u32_e64 v4, s[0:1], v6, v4, s[0:1]
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v5, v3
BB0_2:
	s_or_b64 exec, exec, s[12:13]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s2, 1
	v_mul_lo_u32 v2, v2, s0
	v_add_u32_e64 v3, s[0:1], s0, v0
	v_add_u32_e64 v2, s[0:1], v3, v2
	v_add_u32_e64 v2, s[0:1], 1, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_mov_b32_e32 v4, s9
	v_add_u32_e64 v2, s[0:1], s8, v2
	v_addc_u32_e64 v3, s[0:1], v4, v3, s[0:1]
	flat_load_dword v6, v[2:3]
	v_lshlrev_b32_e32 v4, 2, v0
	v_lshlrev_b32_e32 v7, 6, v1
	v_and_b32_e32 v8, 1, v1
	v_add_u32_e64 v7, s[0:1], v7, v4
	v_add_u32_e64 v4, s[0:1], 64, v7
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v7, v6 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_mov_b32 m0, -1
	ds_read_b32 v6, v7 offset:64
	ds_read_b32 v5, v5
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v5, v6, v5
	ds_write_b32 v7, v5 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e64 s[0:1], 0, v8
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB0_4
; %bb.3:
	ds_read2_b32 v[5:6], v4 offset1:16
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v5, v6
	ds_write_b32 v4, v5
BB0_4:
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v5, 3, v1
	v_cmp_eq_u32_e64 s[0:1], 0, v5
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB0_6
; %bb.5:
	ds_read2_b32 v[5:6], v4 offset1:32
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v5, v6
	ds_write_b32 v4, v5
BB0_6:
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v5, 7, v1
	v_cmp_eq_u32_e64 s[0:1], 0, v5
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB0_8
; %bb.7:
	ds_read2st64_b32 v[5:6], v4 offset1:1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v5, v6
	ds_write_b32 v4, v5
BB0_8:
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v5, 15, v1
	v_cmp_eq_u32_e64 s[0:1], 0, v5
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB0_10
; %bb.9:
	ds_read2st64_b32 v[5:6], v4 offset1:2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v5, v6
	ds_write_b32 v4, v5
BB0_10:
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	ds_read_b32 v4, v4
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[2:3], v4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_12
; %bb.11:
	v_lshlrev_b32_e32 v2, 2, v1
	v_lshlrev_b32_e32 v0, 6, v0
	v_add_u32_e32 v2, vcc, v0, v2
	s_mul_i32 s7, s7, s2
	v_add_u32_e32 v0, vcc, s7, v1
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_mov_b32_e32 v3, s11
	v_add_u32_e32 v0, vcc, s10, v0
	v_addc_u32_e32 v1, vcc, v3, v1, vcc
	ds_read_b32 v2, v2 offset:64
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[0:1], v2
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
		.amdhsa_next_free_vgpr 9
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
; codeLenInByte = 660
; NumSgprs: 18
; NumVgprs: 9
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 1088 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 18
; NumVGPRsForWavesPerEU: 9
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
; %bb.0:
	s_load_dwordx2 s[8:9], s[4:5], 0x0
	s_load_dword s6, s[4:5], 0x8
	s_load_dwordx2 s[10:11], s[4:5], 0x10
	s_load_dwordx4 s[0:3], s[4:5], 0x20
	s_waitcnt lgkmcnt(0)
	s_add_i32 s6, s6, 1
	s_lshl_b32 s4, s7, 4
	v_add_u32_e32 v2, vcc, s4, v1
	v_mul_lo_u32 v3, v2, s6
	v_add_u32_e32 v4, vcc, 1, v0
	v_add_u32_e32 v0, vcc, s6, v4
	v_add_u32_e32 v5, vcc, v0, v3
	v_add_u32_e32 v6, vcc, 1, v2
	v_lshlrev_b32_e32 v0, 2, v4
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v7, s9
	v_add_u32_e32 v2, vcc, s8, v0
	v_addc_u32_e32 v3, vcc, v7, v3, vcc
	flat_load_dword v0, v[2:3]
	s_mov_b32 s5, 0x3fd33333
	s_mov_b32 s4, 0x33333333
	v_ashrrev_i32_e32 v7, 31, v6
	v_lshlrev_b64 v[7:8], 2, v[6:7]
	v_mov_b32_e32 v15, s11
	v_ashrrev_i32_e32 v6, 31, v5
	v_lshlrev_b64 v[5:6], 2, v[5:6]
	v_mov_b32_e32 v10, s3
	v_add_u32_e32 v9, vcc, s2, v5
	v_addc_u32_e32 v10, vcc, v10, v6, vcc
	v_mov_b32_e32 v17, s1
	flat_load_dword v13, v[9:10]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_cvt_f64_f32_e32 v[11:12], v0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[13:14], v13
	v_add_u32_e32 v7, vcc, s10, v7
	v_addc_u32_e32 v8, vcc, v15, v8, vcc
	v_mul_f64 v[11:12], v[11:12], s[4:5]
	v_mul_f64 v[13:14], v[13:14], s[4:5]
	flat_load_dword v0, v[7:8]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[15:16], v0
	v_add_u32_e32 v5, vcc, s0, v5
	v_addc_u32_e32 v6, vcc, v17, v6, vcc
	v_fma_f64 v[11:12], v[11:12], v[15:16], v[13:14]
	flat_load_dword v0, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[13:14], v0
	v_add_f64 v[11:12], v[11:12], v[13:14]
	v_cvt_f32_f64_e32 v0, v[11:12]
	flat_store_dword v[5:6], v0
	flat_load_dword v0, v[2:3]
	s_nop 0
	flat_load_dword v11, v[9:10]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_cvt_f64_f32_e32 v[5:6], v0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[11:12], v11
	v_mul_f64 v[5:6], v[5:6], s[4:5]
	v_mul_f64 v[11:12], v[11:12], s[4:5]
	flat_load_dword v0, v[7:8]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[7:8], v0
	v_fma_f64 v[5:6], v[5:6], v[7:8], v[11:12]
	v_cvt_f32_f64_e32 v0, v[5:6]
	v_mov_b32_e32 v5, 0
	v_or_b32_e32 v1, s7, v1
	flat_store_dword v[9:10], v0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz BB1_2
; %bb.1:
	v_lshlrev_b64 v[0:1], 2, v[4:5]
	v_mov_b32_e32 v5, s3
	v_add_u32_e32 v4, vcc, s2, v0
	v_addc_u32_e32 v5, vcc, v5, v1, vcc
	flat_load_dword v6, v[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[6:7], v6
	v_mul_f64 v[6:7], v[6:7], s[4:5]
	flat_load_dword v8, v[2:3]
	v_mov_b32_e32 v10, s1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[8:9], v8
	v_add_u32_e32 v0, vcc, s0, v0
	v_addc_u32_e32 v1, vcc, v10, v1, vcc
	v_fma_f64 v[6:7], v[8:9], s[4:5], v[6:7]
	flat_load_dword v8, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[8:9], v8
	v_add_f64 v[6:7], v[6:7], v[8:9]
	v_cvt_f32_f64_e32 v6, v[6:7]
	flat_store_dword v[0:1], v6
	flat_load_dword v0, v[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[0:1], v0
	v_mul_f64 v[0:1], v[0:1], s[4:5]
	flat_load_dword v2, v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[2:3], v2
	v_fma_f64 v[0:1], v[2:3], s[4:5], v[0:1]
	v_cvt_f32_f64_e32 v0, v[0:1]
	flat_store_dword v[4:5], v0
BB1_2:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z24bpnn_adjust_weights_cudaPfiS_iS_S_
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 18
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
	.size	_Z24bpnn_adjust_weights_cudaPfiS_iS_S_, .Lfunc_end1-_Z24bpnn_adjust_weights_cudaPfiS_iS_S_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 576
; NumSgprs: 16
; NumVgprs: 18
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 16
; NumVGPRsForWavesPerEU: 18
; Occupancy: 10
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
      - .offset:         36
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
    .group_segment_fixed_size: 1088
    .kernarg_segment_align: 8
    .kernarg_segment_size: 96
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z22bpnn_layerforward_CUDAPfS_S_S_ii
    .private_segment_fixed_size: 0
    .sgpr_count:     18
    .sgpr_spill_count: 0
    .symbol:         _Z22bpnn_layerforward_CUDAPfS_S_S_ii.kd
    .vgpr_count:     9
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
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 104
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z24bpnn_adjust_weights_cudaPfiS_iS_S_
    .private_segment_fixed_size: 0
    .sgpr_count:     16
    .sgpr_spill_count: 0
    .symbol:         _Z24bpnn_adjust_weights_cudaPfiS_iS_S_.kd
    .vgpr_count:     18
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
