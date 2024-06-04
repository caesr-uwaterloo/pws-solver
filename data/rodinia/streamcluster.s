	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z19kernel_compute_costiilP5PointiiPfS1_PiPb ; -- Begin function _Z19kernel_compute_costiilP5PointiiPfS1_PiPb
	.globl	_Z19kernel_compute_costiilP5PointiiPfS1_PiPb
	.p2align	8
	.type	_Z19kernel_compute_costiilP5PointiiPfS1_PiPb,@function
_Z19kernel_compute_costiilP5PointiiPfS1_PiPb: ; @_Z19kernel_compute_costiilP5PointiiPfS1_PiPb
_Z19kernel_compute_costiilP5PointiiPfS1_PiPb$local:
; %bb.0:
	s_load_dword s0, s[4:5], 0x4
	s_load_dword s2, s[4:5], 0xc
	s_waitcnt lgkmcnt(0)
	s_and_b32 s3, s0, 0xffff
	v_cvt_f32_u32_e32 v1, s3
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	s_sub_i32 s0, 0, s3
	v_mul_lo_u32 v2, s0, v1
	v_mul_hi_u32 v2, v1, v2
	v_add_u32_e32 v1, vcc, v2, v1
	v_mul_hi_u32 v1, s2, v1
	v_mul_lo_u32 v2, v1, s3
	v_add_u32_e32 v3, vcc, 1, v1
	v_sub_u32_e32 v2, vcc, s2, v2
	v_cmp_le_u32_e64 s[0:1], s3, v2
	v_cndmask_b32_e64 v1, v1, v3, s[0:1]
	v_subrev_u32_e32 v3, vcc, s3, v2
	v_cndmask_b32_e64 v2, v2, v3, s[0:1]
	v_add_u32_e32 v3, vcc, 1, v1
	v_cmp_le_u32_e32 vcc, s3, v2
	v_cndmask_b32_e32 v1, v1, v3, vcc
	v_mul_lo_u32 v2, v1, s3
	v_cmp_gt_u32_e32 vcc, s2, v2
	v_addc_u32_e32 v1, vcc, 0, v1, vcc
	v_mul_lo_u32 v2, v1, s9
	v_mov_b32_e32 v1, 0
	v_add_u32_e32 v2, vcc, s8, v2
	v_mad_i64_i32 v[0:1], s[0:1], v2, s3, v[0:1]
	s_load_dwordx2 s[2:3], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s2, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB0_9
; %bb.1:
	s_load_dwordx4 s[16:19], s[6:7], 0x8
	s_load_dwordx2 s[0:1], s[6:7], 0x18
	s_load_dwordx8 s[8:15], s[6:7], 0x20
	s_cmp_lt_i32 s3, 1
	v_mov_b32_e32 v2, 0
	s_cbranch_scc1 BB0_4
; %bb.2:                                ; %.lr.ph.preheader
	s_mov_b32 s4, s3
	s_waitcnt lgkmcnt(0)
	s_bfe_i64 s[6:7], s[16:17], 0x200000
	s_lshl_b64 s[6:7], s[6:7], 2
	s_add_u32 s6, s8, s6
	s_addc_u32 s7, s9, s7
	s_ashr_i32 s17, s2, 31
	s_mov_b32 s16, s2
	s_lshl_b64 s[16:17], s[16:17], 2
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v3, v0
BB0_3:                                  ; %.lr.ph
                                        ; =>This Inner Loop Header: Depth=1
	v_ashrrev_i32_e32 v4, 31, v3
	v_mov_b32_e32 v1, s9
	v_lshlrev_b64 v[4:5], 2, v[3:4]
	v_add_u32_e32 v4, vcc, s8, v4
	v_addc_u32_e32 v5, vcc, v1, v5, vcc
	flat_load_dword v1, v[4:5]
	s_load_dword s3, s[6:7], 0x0
	s_add_u32 s6, s6, s16
	s_addc_u32 s7, s7, s17
	v_add_u32_e32 v3, vcc, s2, v3
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_subrev_f32_e32 v1, s3, v1
	v_fma_f32 v2, v1, v1, v2
	s_cbranch_scc1 BB0_3
BB0_4:                                  ; %Flow86
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v3, v0, s1
	v_mov_b32_e32 v1, s11
	v_ashrrev_i32_e32 v4, 31, v3
	v_lshlrev_b64 v[4:5], 2, v[3:4]
	v_add_u32_e32 v4, vcc, s10, v4
	v_addc_u32_e32 v3, vcc, v1, v5, vcc
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v6, v0
	v_ashrrev_i32_e32 v1, 31, v0
	v_ashrrev_i64 v[5:6], 27, v[5:6]
	v_mov_b32_e32 v8, s19
	v_add_u32_e32 v7, vcc, s18, v5
	v_addc_u32_e32 v8, vcc, v8, v6, vcc
	v_add_u32_e32 v9, vcc, 24, v7
	v_addc_u32_e32 v10, vcc, 0, v8, vcc
	flat_load_dword v6, v[7:8]
	flat_load_dword v5, v[9:10]
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_mul_f32_e32 v2, v2, v6
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_nlt_f32_e32 vcc, v2, v5
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr7
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_6
; %bb.5:
	v_lshlrev_b64 v[6:7], 5, v[0:1]
	v_mov_b32_e32 v8, s19
	v_add_u32_e32 v6, vcc, s18, v6
	v_addc_u32_e32 v7, vcc, v8, v7, vcc
	v_add_u32_e32 v6, vcc, 16, v6
	v_addc_u32_e32 v7, vcc, 0, v7, vcc
	flat_load_dwordx2 v[7:8], v[6:7]
	v_sub_f32_e32 v6, v5, v2
	v_mov_b32_e32 v9, s13
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshlrev_b64 v[7:8], 2, v[7:8]
	v_add_u32_e32 v7, vcc, s12, v7
	v_addc_u32_e32 v8, vcc, v9, v8, vcc
	flat_load_dword v7, v[7:8]
BB0_6:                                  ; %Flow
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_8
; %bb.7:
	v_mov_b32_e32 v6, s15
	v_add_u32_e32 v0, vcc, s14, v0
	v_addc_u32_e32 v1, vcc, v6, v1, vcc
	v_mov_b32_e32 v6, 1
	flat_store_byte v[0:1], v6
	v_sub_f32_e32 v6, v2, v5
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_mov_b32_e32 v7, s0
BB0_8:                                  ; %.sink.split
	s_or_b64 exec, exec, s[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v8, 31, v7
	v_lshlrev_b64 v[0:1], 2, v[7:8]
	v_add_u32_e32 v0, vcc, v4, v0
	v_addc_u32_e32 v1, vcc, v3, v1, vcc
	flat_load_dword v2, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v6, v2
	flat_store_dword v[0:1], v2
BB0_9:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z19kernel_compute_costiilP5PointiiPfS1_PiPb
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
		.amdhsa_next_free_vgpr 11
		.amdhsa_next_free_sgpr 20
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
	.size	_Z19kernel_compute_costiilP5PointiiPfS1_PiPb, .Lfunc_end0-_Z19kernel_compute_costiilP5PointiiPfS1_PiPb
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 660
; NumSgprs: 24
; NumVgprs: 11
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 24
; NumVGPRsForWavesPerEU: 11
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
      - .offset:         0
        .size:           4
        .value_kind:     by_value
      - .offset:         4
        .size:           4
        .value_kind:     by_value
      - .offset:         8
        .size:           8
        .value_kind:     by_value
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
    .name:           _Z19kernel_compute_costiilP5PointiiPfS1_PiPb
    .private_segment_fixed_size: 0
    .sgpr_count:     24
    .sgpr_spill_count: 0
    .symbol:         _Z19kernel_compute_costiilP5PointiiPfS1_PiPb.kd
    .vgpr_count:     11
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
