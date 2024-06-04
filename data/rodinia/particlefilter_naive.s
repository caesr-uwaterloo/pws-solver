	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z6kernelPdS_S_S_S_S_i  ; -- Begin function _Z6kernelPdS_S_S_S_S_i
	.globl	_Z6kernelPdS_S_S_S_S_i
	.p2align	8
	.type	_Z6kernelPdS_S_S_S_S_i,@function
_Z6kernelPdS_S_S_S_S_i:                 ; @_Z6kernelPdS_S_S_S_S_i
_Z6kernelPdS_S_S_S_S_i$local:
; %bb.0:
	v_mov_b32_e32 v1, 0
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	v_mov_b32_e32 v2, s8
	v_mad_u64_u32 v[0:1], s[0:1], s0, v2, v[0:1]
	s_load_dword s4, s[6:7], 0x30
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s4, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB0_8
; %bb.1:                                ; %.preheader
	s_load_dwordx8 s[8:15], s[6:7], 0x0
	s_load_dwordx4 s[0:3], s[6:7], 0x20
	s_cmp_lt_i32 s4, 1
	v_mov_b32_e32 v1, -1
	s_cbranch_scc1 BB0_7
; %bb.2:                                ; %.lr.ph
	s_mov_b32 s5, 0
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, v0
	v_ashrrev_i64 v[1:2], 29, v[1:2]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, s15
	v_add_u32_e32 v1, vcc, s14, v1
	v_addc_u32_e32 v2, vcc, v3, v2, vcc
	flat_load_dwordx2 v[2:3], v[1:2]
	s_mov_b64 s[6:7], 0
                                        ; implicit-def: $sgpr14_sgpr15
	s_branch BB0_4
BB0_3:                                  ; %Flow
                                        ;   in Loop: Header=BB0_4 Depth=1
	s_or_b64 exec, exec, s[16:17]
	s_and_b64 s[16:17], exec, s[14:15]
	s_or_b64 s[6:7], s[16:17], s[6:7]
	s_andn2_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_6
BB0_4:                                  ; =>This Inner Loop Header: Depth=1
	s_load_dwordx2 s[16:17], s[12:13], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_nge_f64_e32 vcc, s[16:17], v[2:3]
	v_mov_b32_e32 v1, s5
	s_or_b64 s[14:15], s[14:15], exec
	s_and_saveexec_b64 s[16:17], vcc
	s_cbranch_execz BB0_3
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	s_add_i32 s5, s5, 1
	s_add_u32 s12, s12, 8
	s_addc_u32 s13, s13, 0
	v_mov_b32_e32 v1, s5
	v_cmp_eq_u32_e32 vcc, s4, v1
	v_mov_b32_e32 v1, -1
	s_andn2_b64 s[14:15], s[14:15], exec
	s_and_b64 s[18:19], vcc, exec
	s_or_b64 s[14:15], s[14:15], s[18:19]
	s_branch BB0_3
BB0_6:                                  ; %Flow60
	s_or_b64 exec, exec, s[6:7]
BB0_7:                                  ; %._crit_edge
	s_add_i32 s4, s4, -1
	v_mov_b32_e32 v2, s4
	v_cmp_eq_u32_e32 vcc, -1, v1
	v_cndmask_b32_e32 v1, v1, v2, vcc
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 3, v[1:2]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, s9
	v_add_u32_e32 v3, vcc, s8, v1
	v_addc_u32_e32 v4, vcc, v4, v2, vcc
	flat_load_dwordx2 v[3:4], v[3:4]
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v6, v0
	v_mov_b32_e32 v0, s1
	v_mov_b32_e32 v9, s11
	v_ashrrev_i64 v[5:6], 29, v[5:6]
	v_add_u32_e32 v7, vcc, s0, v5
	v_addc_u32_e32 v8, vcc, v0, v6, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[7:8], v[3:4]
	v_add_u32_e32 v0, vcc, s10, v1
	v_addc_u32_e32 v1, vcc, v9, v2, vcc
	flat_load_dwordx2 v[0:1], v[0:1]
	v_mov_b32_e32 v3, s3
	v_add_u32_e32 v2, vcc, s2, v5
	v_addc_u32_e32 v3, vcc, v3, v6, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[2:3], v[0:1]
BB0_8:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z6kernelPdS_S_S_S_S_i
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
		.amdhsa_next_free_vgpr 10
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
	.size	_Z6kernelPdS_S_S_S_S_i, .Lfunc_end0-_Z6kernelPdS_S_S_S_S_i
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 376
; NumSgprs: 24
; NumVgprs: 10
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 24
; NumVGPRsForWavesPerEU: 10
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
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         64
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         72
        .size:           8
        .value_kind:     hidden_global_offset_z
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
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 112
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z6kernelPdS_S_S_S_S_i
    .private_segment_fixed_size: 0
    .sgpr_count:     24
    .sgpr_spill_count: 0
    .symbol:         _Z6kernelPdS_S_S_S_S_i.kd
    .vgpr_count:     10
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
