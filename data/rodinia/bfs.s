	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z6KernelP4NodePiPbS2_S2_S1_i ; -- Begin function _Z6KernelP4NodePiPbS2_S2_S1_i
	.globl	_Z6KernelP4NodePiPbS2_S2_S1_i
	.p2align	8
	.type	_Z6KernelP4NodePiPbS2_S2_S1_i,@function
_Z6KernelP4NodePiPbS2_S2_S1_i:          ; @_Z6KernelP4NodePiPbS2_S2_S1_i
_Z6KernelP4NodePiPbS2_S2_S1_i$local:
; %bb.0:
	s_load_dword s2, s[4:5], 0x30
	s_mov_b32 s7, 0
	s_lshl_b64 s[0:1], s[6:7], 9
	v_or_b32_e32 v0, s0, v0
	s_waitcnt lgkmcnt(0)
	v_cmp_le_i32_e64 s[0:1], s2, v0
	v_cmp_gt_i32_e32 vcc, s2, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz BB0_8
; %bb.1:
	s_load_dwordx8 s[8:15], s[4:5], 0x0
	v_ashrrev_i32_e32 v1, 31, v0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, s13
	v_add_u32_e32 v2, vcc, s12, v0
	v_addc_u32_e32 v3, vcc, v3, v1, vcc
	flat_load_ubyte v4, v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_ne_u16_e32 vcc, 0, v4
	s_mov_b64 s[12:13], -1
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz BB0_7
; %bb.2:
	v_mov_b32_e32 v4, 0
	flat_store_byte v[2:3], v4
	v_lshlrev_b64 v[2:3], 3, v[0:1]
	v_mov_b32_e32 v4, s9
	v_add_u32_e32 v2, vcc, s8, v2
	v_addc_u32_e32 v3, vcc, v4, v3, vcc
	flat_load_dword v2, v[2:3]
	v_mov_b32_e32 v4, s11
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_u32_e32 v2, vcc, s10, v2
	v_addc_u32_e32 v3, vcc, v4, v3, vcc
	flat_load_dword v2, v[2:3]
	s_load_dwordx4 s[8:11], s[4:5], 0x20
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v5, s9
	s_waitcnt vmcnt(0)
	v_ashrrev_i32_e32 v3, 31, v2
	v_add_u32_e32 v4, vcc, s8, v2
	v_addc_u32_e32 v5, vcc, v5, v3, vcc
	flat_load_ubyte v4, v[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_ne_u16_e32 vcc, 0, v4
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_4
; %bb.3:
	;;#ASMSTART
	s_nop 0
	;;#ASMEND
BB0_4:                                  ; %Flow
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_6
; %bb.5:
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_mov_b32_e32 v4, s11
	v_add_u32_e32 v0, vcc, s10, v0
	v_addc_u32_e32 v1, vcc, v4, v1, vcc
	flat_load_dword v4, v[0:1]
	v_lshlrev_b64 v[0:1], 2, v[2:3]
	v_mov_b32_e32 v5, s11
	v_mov_b32_e32 v6, s15
	v_mov_b32_e32 v7, 1
	v_add_u32_e32 v2, vcc, s14, v2
	v_addc_u32_e32 v3, vcc, v6, v3, vcc
	v_add_u32_e32 v0, vcc, s10, v0
	v_addc_u32_e32 v1, vcc, v5, v1, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v4, vcc, 1, v4
	flat_store_dword v[0:1], v4
	flat_store_byte v[2:3], v7
BB0_6:                                  ; %Flow48
	s_or_b64 exec, exec, s[4:5]
	s_xor_b64 s[12:13], exec, -1
BB0_7:                                  ; %Flow50
	s_or_b64 exec, exec, s[6:7]
	s_andn2_b64 s[0:1], s[0:1], exec
	s_and_b64 s[4:5], s[12:13], exec
	s_or_b64 s[0:1], s[0:1], s[4:5]
BB0_8:                                  ; %Flow49
	s_or_b64 exec, exec, s[2:3]
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz BB0_10
; %bb.9:
	;;#ASMSTART
	s_nop 0
	;;#ASMEND
BB0_10:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z6KernelP4NodePiPbS2_S2_S1_i
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
		.amdhsa_next_free_vgpr 8
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
	.size	_Z6KernelP4NodePiPbS2_S2_S1_i, .Lfunc_end0-_Z6KernelP4NodePiPbS2_S2_S1_i
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 392
; NumSgprs: 20
; NumVgprs: 8
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 20
; NumVGPRsForWavesPerEU: 8
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z7Kernel2PbS_S_S_i     ; -- Begin function _Z7Kernel2PbS_S_S_i
	.globl	_Z7Kernel2PbS_S_S_i
	.p2align	8
	.type	_Z7Kernel2PbS_S_S_i,@function
_Z7Kernel2PbS_S_S_i:                    ; @_Z7Kernel2PbS_S_S_i
_Z7Kernel2PbS_S_S_i$local:
; %bb.0:
	s_load_dword s2, s[4:5], 0x20
	s_mov_b32 s7, 0
	s_lshl_b64 s[0:1], s[6:7], 9
	v_or_b32_e32 v0, s0, v0
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s2, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB1_3
; %bb.1:
	s_load_dwordx8 s[0:7], s[4:5], 0x0
	v_ashrrev_i32_e32 v3, 31, v0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v2, s3
	v_add_u32_e32 v1, vcc, s2, v0
	v_addc_u32_e32 v2, vcc, v2, v3, vcc
	flat_load_ubyte v4, v[1:2]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_ne_u16_e32 vcc, 0, v4
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB1_3
; %bb.2:
	v_mov_b32_e32 v4, s6
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v7, s1
	v_add_u32_e32 v6, vcc, s0, v0
	v_addc_u32_e32 v7, vcc, v7, v3, vcc
	v_mov_b32_e32 v9, s5
	v_add_u32_e32 v8, vcc, s4, v0
	v_addc_u32_e32 v9, vcc, v9, v3, vcc
	v_mov_b32_e32 v0, 1
	flat_store_byte v[6:7], v0
	flat_store_byte v[8:9], v0
	flat_store_byte v[4:5], v0
	v_mov_b32_e32 v0, 0
	flat_store_byte v[1:2], v0
BB1_3:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z7Kernel2PbS_S_S_i
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
		.amdhsa_next_free_vgpr 10
		.amdhsa_next_free_sgpr 8
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
	.size	_Z7Kernel2PbS_S_S_i, .Lfunc_end1-_Z7Kernel2PbS_S_S_i
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 164
; NumSgprs: 12
; NumVgprs: 10
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 12
; NumVGPRsForWavesPerEU: 10
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
    .name:           _Z6KernelP4NodePiPbS2_S2_S1_i
    .private_segment_fixed_size: 0
    .sgpr_count:     20
    .sgpr_spill_count: 0
    .symbol:         _Z6KernelP4NodePiPbS2_S2_S1_i.kd
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
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
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
    .name:           _Z7Kernel2PbS_S_S_i
    .private_segment_fixed_size: 0
    .sgpr_count:     12
    .sgpr_spill_count: 0
    .symbol:         _Z7Kernel2PbS_S_S_i.kd
    .vgpr_count:     10
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
