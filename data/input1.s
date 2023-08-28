	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z14max_divergenceIiEvPT_S1_S1_mm ; -- Begin function _Z14max_divergenceIiEvPT_S1_S1_mm
	.globl	_Z14max_divergenceIiEvPT_S1_S1_mm
	.p2align	8
	.type	_Z14max_divergenceIiEvPT_S1_S1_mm,@function
_Z14max_divergenceIiEvPT_S1_S1_mm:      ; @_Z14max_divergenceIiEvPT_S1_S1_mm
_Z14max_divergenceIiEvPT_S1_S1_mm$local:
; %bb.0:
	;;#ASMSTART
	s_mov_b32 s14, s4
	s_mov_b32 s15, s5
	;;#ASMEND
	s_load_dwordx2 s[0:1], s[4:5], 0x10
	v_and_b32_e32 v0, 63, v0
	v_lshlrev_b32_e32 v1, 2, v0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v2, s1
	v_add_u32_e32 v1, vcc, s0, v1
	v_addc_u32_e32 v2, vcc, 0, v2, vcc
	v_mov_b32_e32 v3, 19
	flat_store_dword v[1:2], v3
	;;#ASMSTART
	s_setreg_imm32_b32 hwreg(HW_REG_MODE, 21, 1), 1
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 31, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_8
; %bb.1:
	v_cmp_lt_u32_e32 vcc, 47, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_4
; %bb.2:                                ; %.preheader32.preheader
	s_mov_b32 s4, 37
BB0_3:                                  ; %.preheader32
                                        ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v0, 1, v0
	;;#ASMEND
	s_cbranch_scc1 BB0_3
BB0_4:                                  ; %Flow60
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_7
; %bb.5:                                ; %.preheader30.preheader
	s_mov_b32 s4, 37
BB0_6:                                  ; %.preheader30
                                        ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v0, 1, v0
	;;#ASMEND
	s_cbranch_scc0 BB0_6
BB0_7:                                  ; %Flow61
	s_or_b64 exec, exec, s[2:3]
BB0_8:                                  ; %Flow68
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_15
; %bb.9:
	v_cmp_lt_u32_e32 vcc, 15, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_12
; %bb.10:                               ; %.preheader28.preheader
	s_mov_b32 s2, 37
BB0_11:                                 ; %.preheader28
                                        ; =>This Inner Loop Header: Depth=1
	s_add_i32 s2, s2, -1
	s_cmp_eq_u32 s2, 0
	;;#ASMSTART
	v_and_b32_e32 v0, 1, v0
	;;#ASMEND
	s_cbranch_scc0 BB0_11
BB0_12:                                 ; %Flow65
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_15
; %bb.13:                               ; %.preheader.preheader
	s_mov_b32 s0, 37
BB0_14:                                 ; %.preheader
                                        ; =>This Inner Loop Header: Depth=1
	s_add_i32 s0, s0, -1
	s_cmp_eq_u32 s0, 0
	;;#ASMSTART
	v_and_b32_e32 v0, 1, v0
	;;#ASMEND
	s_cbranch_scc0 BB0_14
BB0_15:                                 ; %.loopexit
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z14max_divergenceIiEvPT_S1_S1_mm
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
		.amdhsa_next_free_vgpr 4
		.amdhsa_next_free_sgpr 6
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
	.size	_Z14max_divergenceIiEvPT_S1_S1_mm, .Lfunc_end0-_Z14max_divergenceIiEvPT_S1_S1_mm
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 256
; NumSgprs: 10
; NumVgprs: 4
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 0
; NumSGPRsForWavesPerEU: 10
; NumVGPRsForWavesPerEU: 4
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
      - .offset:         24
        .size:           8
        .value_kind:     by_value
      - .offset:         32
        .size:           8
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
    .name:           _Z14max_divergenceIiEvPT_S1_S1_mm
    .private_segment_fixed_size: 0
    .sgpr_count:     10
    .sgpr_spill_count: 0
    .symbol:         _Z14max_divergenceIiEvPT_S1_S1_mm.kd
    .vgpr_count:     4
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
