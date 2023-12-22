	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z6euclidP7latLongPfiff ; -- Begin function _Z6euclidP7latLongPfiff
	.globl	_Z6euclidP7latLongPfiff
	.p2align	8
	.type	_Z6euclidP7latLongPfiff,@function
_Z6euclidP7latLongPfiff:                ; @_Z6euclidP7latLongPfiff
_Z6euclidP7latLongPfiff$local:
; %bb.0:
	s_mov_b32 s2, s9
	s_load_dword s0, s[4:5], 0x4
	s_load_dword s3, s[4:5], 0xc
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, s0, 0xffff
	v_cvt_f32_u32_e32 v1, s4
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	s_sub_i32 s0, 0, s4
	v_mul_lo_u32 v2, s0, v1
	v_mul_hi_u32 v2, v1, v2
	v_add_u32_e32 v1, vcc, v2, v1
	v_mul_hi_u32 v1, s3, v1
	v_mul_lo_u32 v2, v1, s4
	v_add_u32_e32 v3, vcc, 1, v1
	v_sub_u32_e32 v2, vcc, s3, v2
	v_cmp_le_u32_e64 s[0:1], s4, v2
	v_cndmask_b32_e64 v1, v1, v3, s[0:1]
	v_subrev_u32_e32 v3, vcc, s4, v2
	v_cndmask_b32_e64 v2, v2, v3, s[0:1]
	v_add_u32_e32 v3, vcc, 1, v1
	v_cmp_le_u32_e32 vcc, s4, v2
	v_cndmask_b32_e32 v1, v1, v3, vcc
	v_mul_lo_u32 v2, v1, s4
	s_mov_b32 s9, 0
	v_mov_b32_e32 v3, s2
	v_cmp_gt_u32_e32 vcc, s3, v2
	v_addc_u32_e32 v1, vcc, 0, v1, vcc
	v_mad_u64_u32 v[1:2], s[0:1], v1, v3, s[8:9]
	v_mul_lo_u32 v1, v1, s4
	s_load_dwordx4 s[0:3], s[6:7], 0x10
	v_add_u32_e32 v1, vcc, v1, v0
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s0, v1
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz BB0_2
; %bb.1:
	s_load_dwordx4 s[4:7], s[6:7], 0x0
	v_mov_b32_e32 v0, 0
	v_ashrrev_i64 v[2:3], 29, v[0:1]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, s5
	v_add_u32_e32 v2, vcc, s4, v2
	v_addc_u32_e32 v3, vcc, v4, v3, vcc
	flat_load_dwordx2 v[2:3], v[2:3]
	s_mov_b32 s0, 0xf800000
	v_mov_b32_e32 v4, 0x4f800000
	s_movk_i32 s3, 0x260
	v_mov_b32_e32 v5, 0x37800000
	v_ashrrev_i64 v[0:1], 30, v[0:1]
	v_mov_b32_e32 v6, s7
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_f32_e32 v2, s1, v2
	v_sub_f32_e32 v3, s2, v3
	v_mul_f32_e32 v3, v3, v3
	v_fma_f32 v2, v2, v2, v3
	v_cmp_gt_f32_e32 vcc, s0, v2
	v_cndmask_b32_e32 v3, 1.0, v4, vcc
	v_mul_f32_e32 v2, v2, v3
	v_sqrt_f32_e32 v3, v2
	v_add_u32_e64 v0, s[0:1], s6, v0
	v_addc_u32_e64 v1, s[0:1], v6, v1, s[0:1]
	v_cndmask_b32_e32 v4, 1.0, v5, vcc
	v_add_u32_e32 v5, vcc, -1, v3
	v_add_u32_e32 v6, vcc, 1, v3
	v_fma_f32 v7, -v6, v3, v2
	v_fma_f32 v8, -v5, v3, v2
	v_cmp_ge_f32_e32 vcc, 0, v8
	v_cndmask_b32_e32 v3, v3, v5, vcc
	v_cmp_lt_f32_e32 vcc, 0, v7
	v_cndmask_b32_e32 v3, v3, v6, vcc
	v_mul_f32_e32 v3, v4, v3
	v_cmp_class_f32_e64 vcc, v2, s3
	v_cndmask_b32_e32 v2, v3, v2, vcc
	flat_store_dword v[0:1], v2
BB0_2:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z6euclidP7latLongPfiff
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
		.amdhsa_next_free_vgpr 9
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
.Lfunc_end0:
	.size	_Z6euclidP7latLongPfiff, .Lfunc_end0-_Z6euclidP7latLongPfiff
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 420
; NumSgprs: 14
; NumVgprs: 9
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 14
; NumVGPRsForWavesPerEU: 9
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
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 88
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z6euclidP7latLongPfiff
    .private_segment_fixed_size: 0
    .sgpr_count:     14
    .sgpr_spill_count: 0
    .symbol:         _Z6euclidP7latLongPfiff.kd
    .vgpr_count:     9
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
