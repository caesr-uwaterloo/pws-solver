	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z19bitonic_sort_kernelPjjjb ; -- Begin function _Z19bitonic_sort_kernelPjjjb
	.globl	_Z19bitonic_sort_kernelPjjjb
	.p2align	8
	.type	_Z19bitonic_sort_kernelPjjjb,@function
_Z19bitonic_sort_kernelPjjjb:           ; @_Z19bitonic_sort_kernelPjjjb
_Z19bitonic_sort_kernelPjjjb$local:
; %bb.0:
	s_load_dwordx4 s[0:3], s[6:7], 0x8
	s_load_dword s9, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s3, s9, 0xffff
	s_mul_i32 s8, s8, s3
	v_add_u32_e32 v7, vcc, s8, v0
	s_sub_i32 s1, s0, s1
	s_lshl_b32 s3, 1, s1
	v_lshrrev_b32_e32 v0, s1, v7
	v_mul_lo_u32 v0, s3, v0
	s_load_dwordx2 s[4:5], s[6:7], 0x0
	s_bfm_b32 s1, s1, 0
	v_and_b32_e32 v1, s1, v7
	v_lshlrev_b32_e32 v0, 1, v0
	v_add_u32_e32 v0, vcc, v0, v1
	v_add_u32_e32 v2, vcc, s3, v0
	v_mov_b32_e32 v1, 0
	v_lshlrev_b64 v[3:4], 2, v[0:1]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v0, s5
	v_add_u32_e32 v5, vcc, s4, v3
	v_addc_u32_e32 v6, vcc, v0, v4, vcc
	v_mov_b32_e32 v3, v1
	v_lshlrev_b64 v[0:1], 2, v[2:3]
	v_mov_b32_e32 v2, s5
	v_add_u32_e32 v0, vcc, s4, v0
	v_addc_u32_e32 v1, vcc, v2, v1, vcc
	flat_load_dword v2, v[5:6]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b32_e32 v4, s0, v7
	v_xor_b32_e32 v4, s2, v4
	v_and_b32_e32 v4, 1, v4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_max_u32_e32 v7, v2, v3
	v_min_u32_e32 v2, v2, v3
	v_cmp_eq_u32_e32 vcc, 1, v4
	v_cndmask_b32_e32 v3, v7, v2, vcc
	v_cndmask_b32_e32 v2, v2, v7, vcc
	flat_store_dword v[5:6], v3
	flat_store_dword v[0:1], v2
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z19bitonic_sort_kernelPjjjb
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
	.size	_Z19bitonic_sort_kernelPjjjb, .Lfunc_end0-_Z19bitonic_sort_kernelPjjjb
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 208
; NumSgprs: 14
; NumVgprs: 8
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 14
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
        .size:           1
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
    .name:           _Z19bitonic_sort_kernelPjjjb
    .private_segment_fixed_size: 0
    .sgpr_count:     14
    .sgpr_spill_count: 0
    .symbol:         _Z19bitonic_sort_kernelPjjjb.kd
    .vgpr_count:     8
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
