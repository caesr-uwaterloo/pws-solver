	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z12lud_diagonalPfii    ; -- Begin function _Z12lud_diagonalPfii
	.globl	_Z12lud_diagonalPfii
	.p2align	8
	.type	_Z12lud_diagonalPfii,@function
_Z12lud_diagonalPfii:                   ; @_Z12lud_diagonalPfii
_Z12lud_diagonalPfii$local:
; %bb.0:
	s_load_dwordx2 s[2:3], s[4:5], 0x0
	s_load_dwordx2 s[6:7], s[4:5], 0x8
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s8, s7, s6
	s_add_i32 s0, s6, 1
	s_add_i32 s8, s8, s7
	s_mul_i32 s0, s7, s0
	s_ashr_i32 s1, s0, 31
	v_mov_b32_e32 v2, s1
	v_add_u32_e32 v1, vcc, s0, v0
	v_addc_u32_e32 v2, vcc, 0, v2, vcc
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	v_mov_b32_e32 v1, s3
	v_add_u32_e32 v2, vcc, s2, v2
	v_addc_u32_e32 v3, vcc, v1, v3, vcc
	s_ashr_i32 s1, s6, 31
	s_mov_b32 s0, s6
	s_lshl_b64 s[4:5], s[0:1], 2
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b32 s0, 0
	s_mov_b32 m0, -1
BB0_1:                                  ; =>This Inner Loop Header: Depth=1
	flat_load_dword v4, v[2:3]
	v_add_u32_e32 v5, vcc, s0, v1
	v_mov_b32_e32 v6, s5
	s_add_i32 s0, s0, 64
	v_add_u32_e32 v2, vcc, s4, v2
	v_addc_u32_e32 v3, vcc, v3, v6, vcc
	s_cmpk_lg_i32 s0, 0x400
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v5, v4
	s_cbranch_scc1 BB0_1
; %bb.2:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v2, 6, v0
	s_mov_b32 s7, 0
	s_mov_b32 s9, 0
	s_mov_b32 s10, 1
	s_mov_b32 s11, 0
	s_branch BB0_4
BB0_3:                                  ; %Flow120
                                        ;   in Loop: Header=BB0_4 Depth=1
	s_or_b64 exec, exec, s[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_add_i32 s9, s9, 1
	s_add_i32 s10, s10, 1
	s_add_i32 s11, s11, 4
	s_add_i32 s7, s7, 64
	s_cmp_lg_u32 s9, 15
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 BB0_12
BB0_4:                                  ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
                                        ;     Child Loop BB0_11 Depth 2
	v_cmp_lt_u32_e64 s[0:1], s9, v0
	s_and_saveexec_b64 s[12:13], s[0:1]
	s_cbranch_execz BB0_9
; %bb.5:                                ; %.preheader54
                                        ;   in Loop: Header=BB0_4 Depth=1
	s_cmp_eq_u32 s9, 0
	s_cbranch_scc1 BB0_8
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_4 Depth=1
	s_lshl_b32 s14, s9, 2
	v_lshlrev_b32_e32 v3, 6, v0
	v_add_u32_e32 v3, vcc, s14, v3
	s_mov_b32 s14, s11
	v_mov_b32_e32 v4, v2
	s_mov_b32 s15, s9
BB0_7:                                  ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ds_read_b32 v5, v4
	v_mov_b32_e32 v6, s14
	ds_read_b32 v7, v3
	s_add_i32 s15, s15, -1
	ds_read_b32 v6, v6
	v_add_u32_e32 v4, vcc, 4, v4
	s_add_i32 s14, s14, 64
	s_cmp_lg_u32 s15, 0
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v5, -v5, v6, v7
	ds_write_b32 v3, v5
	s_cbranch_scc1 BB0_7
BB0_8:                                  ; %._crit_edge
                                        ;   in Loop: Header=BB0_4 Depth=1
	s_lshl_b32 s14, s9, 2
	s_lshl_b32 s15, s9, 6
	s_add_i32 s15, s15, s14
	v_mov_b32_e32 v3, s15
	v_lshlrev_b32_e32 v4, 6, v0
	v_add_u32_e32 v4, vcc, s14, v4
	ds_read_b32 v3, v3
	ds_read_b32 v5, v4
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v6, s[14:15], v3, v3, v5
	v_div_scale_f32 v7, vcc, v5, v3, v5
	v_rcp_f32_e32 v8, v6
	v_fma_f32 v9, -v6, v8, 1.0
	v_fma_f32 v8, v9, v8, v8
	v_mul_f32_e32 v9, v7, v8
	v_fma_f32 v10, -v6, v9, v7
	v_fma_f32 v9, v10, v8, v9
	v_fma_f32 v6, -v6, v9, v7
	v_div_fmas_f32 v6, v6, v8, v9
	v_div_fixup_f32 v3, v6, v3, v5
	ds_write_b32 v4, v3
BB0_9:                                  ; %Flow123
                                        ;   in Loop: Header=BB0_4 Depth=1
	s_or_b64 exec, exec, s[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[12:13], s[0:1]
	s_cbranch_execz BB0_3
; %bb.10:                               ; %.preheader
                                        ;   in Loop: Header=BB0_4 Depth=1
	s_lshl_b32 s0, s9, 6
	v_lshlrev_b32_e32 v3, 2, v0
	v_add_u32_e32 v3, vcc, s0, v3
	v_mov_b32_e32 v4, v1
	s_mov_b32 s0, s10
	s_mov_b32 s1, s7
BB0_11:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v5, s1
	ds_read_b32 v6, v4
	ds_read_b32 v7, v3 offset:64
	s_add_i32 s1, s1, 4
	ds_read_b32 v5, v5 offset:64
	s_add_i32 s0, s0, -1
	v_add_u32_e32 v4, vcc, 64, v4
	s_cmp_lg_u32 s0, 0
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v5, -v5, v6, v7
	ds_write_b32 v3, v5 offset:64
	s_cbranch_scc1 BB0_11
	s_branch BB0_3
BB0_12:
	s_add_i32 s8, s8, s6
	s_ashr_i32 s0, s8, 31
	v_mov_b32_e32 v3, s0
	v_add_u32_e32 v2, vcc, s8, v0
	v_addc_u32_e32 v3, vcc, 0, v3, vcc
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_mov_b32_e32 v0, s3
	v_add_u32_e32 v2, vcc, s2, v2
	v_addc_u32_e32 v3, vcc, v0, v3, vcc
	s_movk_i32 s0, 0xfc40
BB0_13:                                 ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v0, vcc, s0, v1
	v_mov_b32_e32 v4, s5
	s_add_i32 s0, s0, 64
	ds_read_b32 v0, v0 offset:1024
	s_cmp_lg_u32 s0, 0
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[2:3], v0
	v_add_u32_e32 v2, vcc, s4, v2
	v_addc_u32_e32 v3, vcc, v3, v4, vcc
	s_cbranch_scc1 BB0_13
; %bb.14:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z12lud_diagonalPfii
		.amdhsa_group_segment_fixed_size 1024
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
	.size	_Z12lud_diagonalPfii, .Lfunc_end0-_Z12lud_diagonalPfii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 684
; NumSgprs: 20
; NumVgprs: 11
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 1024 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 20
; NumVGPRsForWavesPerEU: 11
; Occupancy: 10
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z13lud_perimeterPfii   ; -- Begin function _Z13lud_perimeterPfii
	.globl	_Z13lud_perimeterPfii
	.p2align	8
	.type	_Z13lud_perimeterPfii,@function
_Z13lud_perimeterPfii:                  ; @_Z13lud_perimeterPfii
_Z13lud_perimeterPfii$local:
; %bb.0:
	s_load_dwordx2 s[8:9], s[4:5], 0x0
	s_load_dwordx2 s[2:3], s[4:5], 0x8
	v_cmp_lt_u32_e64 s[0:1], 15, v0
	s_mov_b32 m0, -1
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB1_5
; %bb.1:
	s_waitcnt lgkmcnt(0)
	v_add_u32_e32 v1, vcc, s3, v0
	s_add_i32 s7, s3, 8
	s_mul_i32 s7, s2, s7
	v_add_u32_e32 v2, vcc, s7, v1
	v_add_u32_e32 v2, vcc, -16, v2
	v_lshlrev_b32_e32 v4, 2, v0
	s_movk_i32 s7, 0xfe00
BB1_2:                                  ; =>This Inner Loop Header: Depth=1
	v_ashrrev_i32_e32 v3, 31, v2
	v_mov_b32_e32 v7, s9
	v_lshlrev_b64 v[5:6], 2, v[2:3]
	v_add_u32_e32 v5, vcc, s8, v5
	v_addc_u32_e32 v6, vcc, v7, v6, vcc
	flat_load_dword v3, v[5:6]
	v_add_u32_e32 v5, vcc, s7, v4
	s_add_i32 s7, s7, 64
	v_add_u32_e32 v2, vcc, s2, v2
	s_cmp_lg_u32 s7, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v5, v3 offset:960
	s_cbranch_scc1 BB1_2
; %bb.3:
	s_lshl_b32 s7, s6, 4
	s_add_i32 s7, s3, s7
	s_add_i32 s7, s7, 16
	s_mul_i32 s7, s7, s2
	v_add_u32_e32 v1, vcc, s7, v1
	v_add_u32_e32 v1, vcc, -16, v1
	v_lshlrev_b32_e32 v2, 2, v0
	v_or_b32_e32 v3, 0x400, v2
	s_movk_i32 s7, 0xffc0
BB1_4:                                  ; =>This Inner Loop Header: Depth=1
	v_ashrrev_i32_e32 v2, 31, v1
	v_mov_b32_e32 v6, s9
	v_lshlrev_b64 v[4:5], 2, v[1:2]
	v_add_u32_e32 v4, vcc, s8, v4
	v_addc_u32_e32 v5, vcc, v6, v5, vcc
	flat_load_dword v2, v[4:5]
	v_add_u32_e32 v4, vcc, s7, v3
	s_add_i32 s7, s7, 64
	v_add_u32_e32 v1, vcc, s2, v1
	s_cmpk_lg_i32 s7, 0x3c0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v4, v2
	s_cbranch_scc1 BB1_4
BB1_5:                                  ; %Flow264
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB1_10
; %bb.6:
	s_waitcnt lgkmcnt(0)
	s_add_i32 s7, s2, 1
	s_mul_i32 s12, s3, s7
	s_ashr_i32 s13, s12, 31
	v_mov_b32_e32 v2, s13
	v_add_u32_e32 v1, vcc, s12, v0
	v_addc_u32_e32 v2, vcc, 0, v2, vcc
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_mov_b32_e32 v3, s9
	v_add_u32_e32 v1, vcc, s8, v1
	v_addc_u32_e32 v2, vcc, v3, v2, vcc
	s_ashr_i32 s11, s2, 31
	s_mov_b32 s10, s2
	s_lshl_b64 s[10:11], s[10:11], 2
	v_lshlrev_b32_e32 v3, 2, v0
	s_mov_b32 s7, 0
BB1_7:                                  ; =>This Inner Loop Header: Depth=1
	flat_load_dword v4, v[1:2]
	v_add_u32_e32 v5, vcc, s7, v3
	v_mov_b32_e32 v6, s11
	s_add_i32 s7, s7, 64
	v_add_u32_e32 v1, vcc, s10, v1
	v_addc_u32_e32 v2, vcc, v2, v6, vcc
	s_cmpk_eq_i32 s7, 0x200
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v5, v4
	s_cbranch_scc0 BB1_7
; %bb.8:                                ; %.preheader125
	s_mov_b32 s7, 0
	s_lshl_b64 s[14:15], s[6:7], 4
	s_add_u32 s12, s14, s12
	s_addc_u32 s13, s15, s13
	v_mov_b32_e32 v2, s13
	v_add_u32_e32 v1, vcc, s12, v0
	v_addc_u32_e32 v2, vcc, 0, v2, vcc
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_mov_b32_e32 v3, s9
	v_add_u32_e32 v1, vcc, s8, v1
	v_addc_u32_e32 v2, vcc, v2, v3, vcc
	v_add_u32_e32 v1, vcc, 64, v1
	v_addc_u32_e32 v2, vcc, 0, v2, vcc
	v_lshlrev_b32_e32 v3, 2, v0
	v_or_b32_e32 v3, 0x800, v3
BB1_9:                                  ; =>This Inner Loop Header: Depth=1
	flat_load_dword v4, v[1:2]
	v_add_u32_e32 v5, vcc, s7, v3
	v_mov_b32_e32 v6, s11
	s_add_i32 s7, s7, 64
	v_add_u32_e32 v1, vcc, s10, v1
	v_addc_u32_e32 v2, vcc, v2, v6, vcc
	s_cmpk_eq_i32 s7, 0x400
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v5, v4
	s_cbranch_scc0 BB1_9
BB1_10:                                 ; %Flow265
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB1_16
; %bb.11:
	v_add_u32_e32 v1, vcc, -16, v0
	v_lshlrev_b32_e32 v2, 6, v0
	s_mov_b32 s7, 0
	s_mov_b32 s10, 0
	s_branch BB1_13
BB1_12:                                 ; %._crit_edge
                                        ;   in Loop: Header=BB1_13 Depth=1
	s_lshl_b32 s11, s10, 2
	s_lshl_b32 s12, s10, 6
	s_add_i32 s12, s12, s11
	v_mov_b32_e32 v3, s12
	ds_read_b32 v3, v3
	v_lshlrev_b32_e32 v4, 6, v1
	v_add_u32_e32 v4, vcc, s11, v4
	ds_read_b32 v5, v4 offset:1024
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v6, s[12:13], v3, v3, v5
	v_div_scale_f32 v7, vcc, v5, v3, v5
	v_rcp_f32_e32 v8, v6
	v_fma_f32 v9, -v6, v8, 1.0
	v_fma_f32 v8, v9, v8, v8
	v_mul_f32_e32 v9, v7, v8
	v_fma_f32 v10, -v6, v9, v7
	v_fma_f32 v9, v10, v8, v9
	v_fma_f32 v6, -v6, v9, v7
	v_div_fmas_f32 v6, v6, v8, v9
	s_add_i32 s10, s10, 1
	s_add_i32 s7, s7, 4
	v_div_fixup_f32 v3, v6, v3, v5
	s_cmp_lg_u32 s10, 16
	ds_write_b32 v4, v3 offset:1024
	s_cbranch_scc0 BB1_16
BB1_13:                                 ; %.preheader123
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_15 Depth 2
	s_cmp_eq_u32 s10, 0
	s_cbranch_scc1 BB1_12
; %bb.14:                               ; %.lr.ph
                                        ;   in Loop: Header=BB1_13 Depth=1
	v_lshlrev_b32_e32 v3, 6, v1
	s_lshl_b32 s11, s10, 2
	v_add_u32_e32 v3, vcc, s11, v3
	v_add_u32_e32 v3, vcc, 0x400, v3
	s_mov_b32 s11, s7
	v_mov_b32_e32 v4, v2
	s_mov_b32 s12, s10
BB1_15:                                 ;   Parent Loop BB1_13 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ds_read_b32 v5, v4
	v_mov_b32_e32 v6, s11
	ds_read_b32 v7, v3
	s_add_i32 s12, s12, -1
	ds_read_b32 v6, v6
	v_add_u32_e32 v4, vcc, 4, v4
	s_add_i32 s11, s11, 64
	s_cmp_lg_u32 s12, 0
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v5, -v5, v6, v7
	ds_write_b32 v3, v5
	s_cbranch_scc1 BB1_15
	s_branch BB1_12
BB1_16:                                 ; %Flow260
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB1_21
; %bb.17:                               ; %.preheader.preheader
	v_lshlrev_b32_e32 v1, 2, v0
	s_movk_i32 s7, 0x800
	v_or_b32_e32 v1, s7, v1
	s_mov_b32 s10, 1
	s_mov_b32 s11, 0
BB1_18:                                 ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_19 Depth 2
	s_lshl_b32 s12, s10, 6
	v_lshlrev_b32_e32 v2, 2, v0
	v_add_u32_e32 v2, vcc, s12, v2
	v_add_u32_e32 v2, vcc, s7, v2
	v_mov_b32_e32 v3, v1
	s_mov_b32 s12, s11
	s_mov_b32 s13, s10
BB1_19:                                 ;   Parent Loop BB1_18 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v4, s12
	ds_read_b32 v5, v3
	ds_read_b32 v6, v2
	s_add_i32 s13, s13, -1
	ds_read_b32 v4, v4 offset:64
	s_add_i32 s12, s12, 4
	v_add_u32_e32 v3, vcc, 64, v3
	s_cmp_lg_u32 s13, 0
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v4, -v4, v5, v6
	ds_write_b32 v2, v4
	s_cbranch_scc1 BB1_19
; %bb.20:                               ;   in Loop: Header=BB1_18 Depth=1
	s_add_i32 s10, s10, 1
	s_add_i32 s11, s11, 64
	s_cmp_eq_u32 s10, 16
	s_cbranch_scc0 BB1_18
BB1_21:                                 ; %Flow261
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[0:1], exec, s[4:5]
	s_cbranch_execz BB1_24
; %bb.22:
	s_lshl_b32 s4, s6, 4
	s_add_i32 s4, s3, s4
	s_add_i32 s4, s4, 16
	s_mul_i32 s4, s4, s2
	s_add_i32 s4, s4, s3
	v_add_u32_e32 v1, vcc, s4, v0
	v_add_u32_e32 v1, vcc, -16, v1
	v_lshlrev_b32_e32 v2, 2, v0
	v_or_b32_e32 v3, 0x400, v2
	s_movk_i32 s4, 0xffc0
BB1_23:                                 ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v4, vcc, s4, v3
	v_ashrrev_i32_e32 v2, 31, v1
	v_mov_b32_e32 v6, s9
	s_add_i32 s4, s4, 64
	ds_read_b32 v7, v4
	v_lshlrev_b64 v[4:5], 2, v[1:2]
	v_add_u32_e32 v1, vcc, s2, v1
	s_cmpk_lg_i32 s4, 0x3c0
	v_add_u32_e32 v4, vcc, s8, v4
	v_addc_u32_e32 v5, vcc, v6, v5, vcc
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[4:5], v7
	s_cbranch_scc1 BB1_23
BB1_24:                                 ; %Flow254
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB1_27
; %bb.25:
	s_mov_b32 s7, 0
	s_lshl_b64 s[0:1], s[6:7], 4
	s_add_i32 s4, s3, 1
	s_mul_i32 s4, s2, s4
	s_add_i32 s3, s3, s4
	s_ashr_i32 s4, s3, 31
	s_add_u32 s0, s0, s3
	s_addc_u32 s1, s1, s4
	v_mov_b32_e32 v2, s1
	v_add_u32_e32 v1, vcc, s0, v0
	v_addc_u32_e32 v2, vcc, 0, v2, vcc
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_mov_b32_e32 v3, s9
	v_add_u32_e32 v1, vcc, s8, v1
	v_addc_u32_e32 v2, vcc, v2, v3, vcc
	v_add_u32_e32 v1, vcc, 64, v1
	v_addc_u32_e32 v2, vcc, 0, v2, vcc
	s_ashr_i32 s3, s2, 31
	s_lshl_b64 s[0:1], s[2:3], 2
	v_lshlrev_b32_e32 v0, 2, v0
	v_or_b32_e32 v0, 0x800, v0
	s_movk_i32 s2, 0xfc40
BB1_26:                                 ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v3, vcc, s2, v0
	v_mov_b32_e32 v4, s1
	s_add_i32 s2, s2, 64
	ds_read_b32 v3, v3 offset:1024
	s_cmp_eq_u32 s2, 0
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[1:2], v3
	v_add_u32_e32 v1, vcc, s0, v1
	v_addc_u32_e32 v2, vcc, v2, v4, vcc
	s_cbranch_scc0 BB1_26
BB1_27:                                 ; %.loopexit
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z13lud_perimeterPfii
		.amdhsa_group_segment_fixed_size 3072
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
.Lfunc_end1:
	.size	_Z13lud_perimeterPfii, .Lfunc_end1-_Z13lud_perimeterPfii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 1232
; NumSgprs: 20
; NumVgprs: 11
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 3072 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 20
; NumVGPRsForWavesPerEU: 11
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z12lud_internalPfii    ; -- Begin function _Z12lud_internalPfii
	.globl	_Z12lud_internalPfii
	.p2align	8
	.type	_Z12lud_internalPfii,@function
_Z12lud_internalPfii:                   ; @_Z12lud_internalPfii
_Z12lud_internalPfii$local:
; %bb.0:
	s_load_dwordx2 s[0:1], s[4:5], 0x0
	s_load_dwordx2 s[2:3], s[4:5], 0x8
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s5, s3, 31
	s_mov_b32 s4, s3
	s_lshl_b32 s7, s7, 4
	s_add_i32 s3, s3, 16
	s_add_i32 s7, s3, s7
	s_lshl_b32 s6, s6, 4
	v_mov_b32_e32 v8, 0
	v_mov_b32_e32 v2, s5
	v_add_u32_e32 v3, vcc, s4, v1
	v_addc_u32_e32 v2, vcc, v2, v8, vcc
	s_ashr_i32 s8, s2, 31
	v_mul_lo_u32 v4, v3, s8
	v_mul_hi_u32 v5, v3, s2
	s_add_i32 s3, s3, s6
	v_mul_lo_u32 v2, v2, s2
	v_add_u32_e32 v4, vcc, v5, v4
	v_add_u32_e32 v5, vcc, v4, v2
	v_mul_lo_u32 v4, v3, s2
	s_ashr_i32 s6, s3, 31
	v_mov_b32_e32 v2, s6
	v_add_u32_e32 v3, vcc, s3, v0
	v_addc_u32_e32 v2, vcc, v2, v8, vcc
	v_add_u32_e32 v4, vcc, v3, v4
	v_addc_u32_e32 v5, vcc, v2, v5, vcc
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_mov_b32_e32 v7, s1
	s_ashr_i32 s3, s7, 31
	v_mov_b32_e32 v6, s3
	v_add_u32_e32 v9, vcc, s7, v1
	v_addc_u32_e32 v10, vcc, v6, v8, vcc
	v_mul_lo_u32 v11, v9, s8
	v_mul_hi_u32 v12, v9, s2
	v_add_u32_e32 v6, vcc, s0, v4
	v_addc_u32_e32 v7, vcc, v7, v5, vcc
	v_mul_lo_u32 v4, v10, s2
	v_add_u32_e32 v10, vcc, v12, v11
	v_mul_lo_u32 v5, v9, s2
	v_add_u32_e32 v4, vcc, v10, v4
	v_add_u32_e32 v9, vcc, v5, v0
	v_addc_u32_e32 v10, vcc, v4, v8, vcc
	v_mov_b32_e32 v11, s5
	v_add_u32_e32 v8, vcc, s4, v9
	v_addc_u32_e32 v9, vcc, v10, v11, vcc
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_mov_b32_e32 v10, s1
	v_add_u32_e32 v8, vcc, s0, v8
	v_addc_u32_e32 v9, vcc, v10, v9, vcc
	flat_load_dword v10, v[6:7]
	flat_load_dword v11, v[8:9]
	s_mov_b32 s2, 0
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshlrev_b32_e32 v1, 6, v1
	v_add_u32_e32 v7, vcc, v1, v0
	v_or_b32_e32 v6, 0x400, v0
	s_mov_b32 m0, -1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write2st64_b32 v7, v11, v10 offset1:4
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v0, 0
BB2_1:                                  ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v7, vcc, s2, v1
	ds_read_b32 v8, v6
	ds_read_b32 v7, v7
	s_add_i32 s2, s2, 4
	v_add_u32_e32 v6, vcc, 64, v6
	s_cmp_lg_u32 s2, 64
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v0, v7, v8, v0
	s_cbranch_scc1 BB2_1
; %bb.2:
	v_add_u32_e32 v1, vcc, v3, v5
	v_addc_u32_e32 v2, vcc, v2, v4, vcc
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_mov_b32_e32 v3, s1
	v_add_u32_e32 v1, vcc, s0, v1
	v_addc_u32_e32 v2, vcc, v3, v2, vcc
	flat_load_dword v3, v[1:2]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_f32_e32 v0, v3, v0
	flat_store_dword v[1:2], v0
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z12lud_internalPfii
		.amdhsa_group_segment_fixed_size 2048
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
		.amdhsa_next_free_vgpr 13
		.amdhsa_next_free_sgpr 9
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
.Lfunc_end2:
	.size	_Z12lud_internalPfii, .Lfunc_end2-_Z12lud_internalPfii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 424
; NumSgprs: 13
; NumVgprs: 13
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 2048 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 13
; NumVGPRsForWavesPerEU: 13
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
      - .offset:         8
        .size:           4
        .value_kind:     by_value
      - .offset:         12
        .size:           4
        .value_kind:     by_value
      - .offset:         16
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         24
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         32
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     hidden_none
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
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 1024
    .kernarg_segment_align: 8
    .kernarg_segment_size: 72
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z12lud_diagonalPfii
    .private_segment_fixed_size: 0
    .sgpr_count:     20
    .sgpr_spill_count: 0
    .symbol:         _Z12lud_diagonalPfii.kd
    .vgpr_count:     11
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
      - .offset:         12
        .size:           4
        .value_kind:     by_value
      - .offset:         16
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         24
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         32
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     hidden_none
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
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 3072
    .kernarg_segment_align: 8
    .kernarg_segment_size: 72
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z13lud_perimeterPfii
    .private_segment_fixed_size: 0
    .sgpr_count:     20
    .sgpr_spill_count: 0
    .symbol:         _Z13lud_perimeterPfii.kd
    .vgpr_count:     11
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
      - .offset:         12
        .size:           4
        .value_kind:     by_value
      - .offset:         16
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         24
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         32
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     hidden_none
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
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 2048
    .kernarg_segment_align: 8
    .kernarg_segment_size: 72
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z12lud_internalPfii
    .private_segment_fixed_size: 0
    .sgpr_count:     13
    .sgpr_spill_count: 0
    .symbol:         _Z12lud_internalPfii.kd
    .vgpr_count:     13
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
