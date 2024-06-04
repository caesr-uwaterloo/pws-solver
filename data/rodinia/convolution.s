	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE ; -- Begin function _Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE
	.globl	_Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE
	.p2align	8
	.type	_Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE,@function
_Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE: ; @_Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE
_Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE$local:
; %bb.0:
	s_load_dwordx2 s[2:3], s[6:7], 0x10
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s1, s0, 16
	s_and_b32 s0, s0, 0xffff
	s_mul_i32 s8, s8, s0
	v_add_u32_e32 v0, vcc, s8, v0
	s_mul_i32 s9, s9, s1
	v_add_u32_e32 v2, vcc, s9, v1
	v_cmp_gt_u32_e32 vcc, s2, v0
	v_cmp_gt_u32_e64 s[0:1], s3, v2
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB0_6
; %bb.1:                                ; %.preheader.preheader
	s_load_dwordx4 s[4:7], s[6:7], 0x0
	s_mov_b32 s3, 0
	s_add_u32 s0, s2, 4
	s_addc_u32 s1, 0, 0
	v_mul_lo_u32 v3, s1, v2
	v_mul_hi_u32 v4, s0, v2
	v_mov_b32_e32 v1, 0
	v_mul_lo_u32 v5, s0, v2
	v_add_u32_e32 v4, vcc, v4, v3
	v_mov_b32_e32 v6, 0
	v_add_u32_e32 v3, vcc, v5, v0
	v_addc_u32_e32 v4, vcc, v4, v6, vcc
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v5, s5
	v_add_u32_e32 v3, vcc, s4, v3
	v_addc_u32_e32 v4, vcc, v5, v4, vcc
	s_lshl_b64 s[0:1], s[2:3], 2
	s_add_u32 s0, s0, 16
	s_addc_u32 s1, s1, 0
	s_mov_b64 s[4:5], 0
	s_getpc_b64 s[8:9]
	s_add_u32 s8, s8, d_mask@rel32@lo+4
	s_addc_u32 s9, s9, d_mask@rel32@hi+4
	v_mov_b32_e32 v5, v1
BB0_2:                                  ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	s_mov_b64 s[10:11], 0
BB0_3:                                  ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v7, s11
	v_add_u32_e32 v6, vcc, s10, v3
	v_addc_u32_e32 v7, vcc, v4, v7, vcc
	flat_load_dword v6, v[6:7]
	s_add_u32 s12, s8, s10
	s_addc_u32 s13, s9, s11
	s_load_dword s3, s[12:13], 0x0
	s_add_u32 s10, s10, 4
	s_addc_u32 s11, s11, 0
	s_cmp_eq_u64 s[10:11], 20
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v5, v6, s3, v5
	s_cbranch_scc0 BB0_3
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	s_add_u32 s4, s4, 1
	s_addc_u32 s5, s5, 0
	s_add_u32 s8, s8, 20
	s_addc_u32 s9, s9, 0
	v_mov_b32_e32 v6, s1
	s_cmp_eq_u64 s[4:5], 5
	v_add_u32_e32 v3, vcc, s0, v3
	v_addc_u32_e32 v4, vcc, v4, v6, vcc
	s_cbranch_scc0 BB0_2
; %bb.5:
	v_mad_u64_u32 v[0:1], s[0:1], v2, s2, v[0:1]
	v_mov_b32_e32 v2, s7
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_u32_e32 v0, vcc, s6, v0
	v_addc_u32_e32 v1, vcc, v2, v1, vcc
	flat_store_dword v[0:1], v5
BB0_6:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE
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
		.amdhsa_next_free_vgpr 8
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
	.size	_Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE, .Lfunc_end0-_Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 344
; NumSgprs: 18
; NumVgprs: 8
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 18
; NumVGPRsForWavesPerEU: 8
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
	.protected	d_mask                  ; @d_mask
	.type	d_mask,@object
	.section	.bss,#alloc,#write
	.globl	d_mask
	.p2align	4
d_mask:
d_mask$local:
	.zero	100
	.size	d_mask, 100

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
        .size:           8
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
    .name:           _Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE
    .private_segment_fixed_size: 0
    .sgpr_count:     18
    .sgpr_spill_count: 0
    .symbol:         _Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE.kd
    .vgpr_count:     8
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
