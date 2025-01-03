	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z21floyd_warshall_kernelPjS_jj ; -- Begin function _Z21floyd_warshall_kernelPjS_jj
	.globl	_Z21floyd_warshall_kernelPjS_jj
	.p2align	8
	.type	_Z21floyd_warshall_kernelPjS_jj,@function
_Z21floyd_warshall_kernelPjS_jj:        ; @_Z21floyd_warshall_kernelPjS_jj
_Z21floyd_warshall_kernelPjS_jj$local:
; %bb.0:
	s_load_dwordx4 s[12:15], s[6:7], 0x0
	s_load_dwordx2 s[0:1], s[6:7], 0x10
	s_load_dword s2, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s3, s2, 16
	s_and_b32 s2, s2, 0xffff
	s_mul_i32 s8, s8, s2
	s_mul_i32 s9, s9, s3
	v_add_u32_e32 v1, vcc, s9, v1
	v_mul_lo_u32 v4, v1, s0
	v_add_u32_e32 v6, vcc, s8, v0
	v_add_u32_e32 v0, vcc, v4, v6
	v_mov_b32_e32 v1, 0
	v_lshlrev_b64 v[2:3], 2, v[0:1]
	v_mov_b32_e32 v5, s13
	v_add_u32_e32 v2, vcc, s12, v2
	v_addc_u32_e32 v3, vcc, v5, v3, vcc
	flat_load_dword v8, v[2:3]
	v_add_u32_e32 v4, vcc, s1, v4
	v_mov_b32_e32 v5, v1
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_mov_b32_e32 v7, s13
	v_add_u32_e32 v4, vcc, s12, v4
	v_addc_u32_e32 v5, vcc, v7, v5, vcc
	s_mul_i32 s0, s1, s0
	v_add_u32_e32 v6, vcc, s0, v6
	v_mov_b32_e32 v7, v1
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_mov_b32_e32 v9, s13
	v_add_u32_e32 v6, vcc, s12, v6
	v_addc_u32_e32 v7, vcc, v9, v7, vcc
	flat_load_dword v9, v[4:5]
	flat_load_dword v10, v[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v4, vcc, v10, v9
	v_cmp_lt_i32_e32 vcc, v4, v8
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz BB0_2
; %bb.1:
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_mov_b32_e32 v5, s15
	v_add_u32_e32 v0, vcc, s14, v0
	v_addc_u32_e32 v1, vcc, v5, v1, vcc
	flat_store_dword v[2:3], v4
	v_mov_b32_e32 v2, s1
	flat_store_dword v[0:1], v2
BB0_2:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z21floyd_warshall_kernelPjS_jj
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
.Lfunc_end0:
	.size	_Z21floyd_warshall_kernelPjS_jj, .Lfunc_end0-_Z21floyd_warshall_kernelPjS_jj
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 240
; NumSgprs: 20
; NumVgprs: 11
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 20
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
    .name:           _Z21floyd_warshall_kernelPjS_jj
    .private_segment_fixed_size: 0
    .sgpr_count:     20
    .sgpr_spill_count: 0
    .symbol:         _Z21floyd_warshall_kernelPjS_jj.kd
    .vgpr_count:     11
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
