	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_ ; -- Begin function _Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_
	.globl	_Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_
	.p2align	8
	.type	_Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_,@function
_Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_: ; @_Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_
_Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_$local:
; %bb.0:
	s_load_dwordx2 s[0:1], s[4:5], 0x18
	s_ashr_i32 s7, s6, 31
	v_mov_b32_e32 v1, s6
	v_mov_b32_e32 v2, s7
	s_waitcnt lgkmcnt(0)
	v_cmp_le_i64_e32 vcc, s[0:1], v[1:2]
	s_and_b64 vcc, exec, vcc
	s_cbranch_vccnz BB0_14
; %bb.1:
	s_load_dwordx8 s[8:15], s[4:5], 0x40
	v_mov_b32_e32 v3, 0x290
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, s8
	v_mov_b32_e32 v2, s9
	v_mad_i64_i32 v[1:2], s[0:1], s6, v3, v[1:2]
	v_readfirstlane_b32 s0, v1
	v_readfirstlane_b32 s1, v2
	s_load_dword s2, s[0:1], 0x10
	s_movk_i32 s0, 0x64
	v_mov_b32_e32 v1, 0
	v_cmp_gt_u32_e64 s[0:1], s0, v0
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s3, s2, 31
	s_mov_b32 m0, -1
	s_and_saveexec_b64 s[16:17], s[0:1]
	s_cbranch_execz BB0_3
; %bb.2:                                ; %.lr.ph146
	s_lshl_b64 s[18:19], s[2:3], 5
	s_add_u32 s7, s10, s18
	s_addc_u32 s18, s11, s19
	v_lshlrev_b64 v[2:3], 5, v[0:1]
	v_mov_b32_e32 v4, s18
	v_add_u32_e32 v6, vcc, s7, v2
	v_addc_u32_e32 v7, vcc, v4, v3, vcc
	flat_load_dwordx4 v[2:5], v[6:7]
	v_lshlrev_b32_e32 v8, 5, v0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write2_b64 v8, v[2:3], v[4:5] offset1:1
	v_add_u32_e32 v2, vcc, 16, v6
	v_addc_u32_e32 v3, vcc, 0, v7, vcc
	flat_load_dwordx4 v[2:5], v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write2_b64 v8, v[2:3], v[4:5] offset0:2 offset1:3
BB0_3:                                  ; %._crit_edge147
	s_or_b64 exec, exec, s[16:17]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, 0x290
	v_mov_b32_e32 v2, s8
	v_mov_b32_e32 v3, s9
	v_mad_i64_i32 v[2:3], s[16:17], s6, v4, v[2:3]
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_add_u32_e32 v2, vcc, 24, v2
	v_addc_u32_e32 v3, vcc, 0, v3, vcc
	flat_load_dword v4, v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, 0, v4
	s_and_b64 vcc, exec, vcc
	s_mov_b32 s16, 0
	s_cbranch_vccnz BB0_14
; %bb.4:                                ; %.lr.ph143
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_lshl_b64 s[2:3], s[2:3], 5
	v_lshlrev_b32_e32 v4, 5, v0
	s_movk_i32 s7, 0xfa0
	v_lshlrev_b32_e32 v6, 3, v0
	s_waitcnt lgkmcnt(0)
	v_mul_f64 v[7:8], s[4:5], -2.0
	s_movk_i32 s17, 0xc80
	s_add_u32 s2, s14, s2
	v_add_u32_e32 v5, vcc, s7, v4
	v_add_u32_e32 v6, vcc, s17, v6
	s_addc_u32 s3, s15, s3
	v_mul_f64 v[7:8], v[7:8], s[4:5]
	v_or_b32_e32 v9, 16, v4
	v_lshlrev_b64 v[10:11], 5, v[0:1]
	v_mov_b32_e32 v12, s3
	v_add_u32_e32 v10, vcc, s2, v10
	v_addc_u32_e32 v11, vcc, v12, v11, vcc
	v_add_u32_e32 v12, vcc, 16, v10
	v_addc_u32_e32 v13, vcc, 0, v11, vcc
	s_movk_i32 s4, 0x290
	s_mov_b32 s15, 0x3ff71547
	s_mov_b32 s14, 0x652b82fe
	s_mov_b32 s19, 0xbfe62e42
	s_mov_b32 s18, 0xfefa3000
	s_mov_b32 s21, 0xbd53de6a
	s_mov_b32 s20, 0xf278ece6
	s_mov_b32 s23, 0x3e5ade15
	s_mov_b32 s22, 0x6a5dcb37
	s_mov_b32 s25, 0x3ec71dee
	s_mov_b32 s24, 0x623fde64
	s_mov_b32 s27, 0x3efa0199
	s_mov_b32 s26, 0x7c89e6b0
	s_mov_b32 s29, 0x3f2a01a0
	s_mov_b32 s28, 0x14761f6e
	s_mov_b32 s31, 0x3f56c16c
	s_mov_b32 s30, 0x1852b7b0
	s_mov_b32 s35, 0x3f811111
	s_mov_b32 s34, 0x11122322
	s_mov_b32 s37, 0x3fa55555
	s_mov_b32 s36, 0x555502a1
	s_mov_b32 s39, 0x3fc55555
	s_mov_b32 s38, 0x55555511
	s_mov_b32 s41, 0x3fe00000
	s_mov_b32 s40, 11
	s_mov_b32 s17, 0x40900000
	s_mov_b32 s43, 0xc090cc00
	s_mov_b32 s5, s16
	s_branch BB0_6
BB0_5:                                  ; %Flow
                                        ;   in Loop: Header=BB0_6 Depth=1
	s_or_b64 exec, exec, s[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_add_i32 s2, s5, 1
	flat_load_dword v14, v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_lt_i32_e32 vcc, s5, v14
	s_and_b64 vcc, exec, vcc
	s_mov_b32 s5, s2
	s_cbranch_vccz BB0_14
BB0_6:                                  ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_12 Depth 2
	s_cmp_eq_u32 s5, 0
	v_mov_b32_e32 v14, s6
	s_cbranch_scc1 BB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	v_mov_b32_e32 v16, s4
	v_mov_b32_e32 v15, s9
	v_mov_b32_e32 v14, s8
	v_mad_i64_i32 v[14:15], s[2:3], s6, v16, v[14:15]
	s_add_i32 s2, s5, -1
	v_mad_i64_i32 v[14:15], s[2:3], s2, 24, v[14:15]
	v_add_u32_e32 v14, vcc, 44, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	flat_load_dword v14, v[14:15]
BB0_8:                                  ;   in Loop: Header=BB0_6 Depth=1
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz BB0_10
; %bb.9:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	v_mov_b32_e32 v16, s9
	v_mov_b32_e32 v15, s8
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mad_i64_i32 v[14:15], s[44:45], v14, s4, v[15:16]
	v_add_u32_e32 v14, vcc, 16, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	flat_load_dword v19, v[14:15]
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v20, s11
	v_lshlrev_b64 v[14:15], 5, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i64 v[16:17], 27, v[18:19]
	v_add_u32_e32 v16, vcc, s10, v16
	v_addc_u32_e32 v17, vcc, v20, v17, vcc
	v_add_u32_e32 v20, vcc, v16, v14
	v_addc_u32_e32 v21, vcc, v17, v15, vcc
	flat_load_dwordx4 v[14:17], v[20:21]
	v_mov_b32_e32 v24, s13
	v_lshlrev_b64 v[22:23], 3, v[0:1]
	v_ashrrev_i64 v[18:19], 29, v[18:19]
	v_add_u32_e32 v18, vcc, s12, v18
	v_addc_u32_e32 v19, vcc, v24, v19, vcc
	v_add_u32_e32 v18, vcc, v18, v22
	v_addc_u32_e32 v19, vcc, v19, v23, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write2_b64 v5, v[14:15], v[16:17] offset1:1
	v_add_u32_e32 v14, vcc, 16, v20
	v_addc_u32_e32 v15, vcc, 0, v21, vcc
	flat_load_dwordx4 v[14:17], v[14:15]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write2_b64 v5, v[14:15], v[16:17] offset0:2 offset1:3
	flat_load_dwordx2 v[14:15], v[18:19]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b64 v6, v[14:15]
BB0_10:                                 ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[44:45], s[0:1]
	s_cbranch_execz BB0_5
; %bb.11:                               ; %.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	v_add_u32_e32 v22, vcc, 16, v10
	v_addc_u32_e32 v23, vcc, 0, v11, vcc
	flat_load_dwordx4 v[14:17], v[22:23]
	flat_load_dwordx4 v[18:21], v[10:11]
	ds_read_b128 v[22:25], v4
	ds_read_b128 v[26:29], v9
	s_mov_b32 s7, 0
	v_mov_b32_e32 v30, 0xfa0
BB0_12:                                 ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ds_read_b128 v[31:34], v30 offset:16
	ds_read_b128 v[35:38], v30
	s_waitcnt lgkmcnt(1)
	v_mul_f64 v[39:40], v[26:27], v[31:32]
	s_waitcnt lgkmcnt(0)
	v_add_f64 v[35:36], v[22:23], v[35:36]
	v_fma_f64 v[39:40], v[24:25], v[37:38], v[39:40]
	v_fma_f64 v[39:40], v[28:29], v[33:34], v[39:40]
	v_add_f64 v[35:36], v[35:36], -v[39:40]
	v_mul_f64 v[35:36], v[7:8], v[35:36]
	v_mul_f64 v[39:40], v[35:36], s[14:15]
	v_rndne_f64_e32 v[39:40], v[39:40]
	v_fma_f64 v[41:42], v[39:40], s[18:19], v[35:36]
	v_mul_f64 v[43:44], v[39:40], s[20:21]
	v_mov_b32_e32 v45, 0xfca7ab0c
	v_add_f64 v[47:48], v[41:42], v[43:44]
	v_mov_b32_e32 v46, 0x3e928af3
	v_fma_f64 v[45:46], v[47:48], s[22:23], v[45:46]
	v_add_f64 v[41:42], v[41:42], -v[47:48]
	v_fma_f64 v[45:46], v[47:48], v[45:46], s[24:25]
	v_mul_f64 v[49:50], v[47:48], v[47:48]
	v_fma_f64 v[45:46], v[47:48], v[45:46], s[26:27]
	v_add_f64 v[41:42], v[41:42], v[43:44]
	v_fma_f64 v[43:44], v[47:48], v[45:46], s[28:29]
	v_fma_f64 v[45:46], v[47:48], v[47:48], -v[49:50]
	v_fma_f64 v[43:44], v[47:48], v[43:44], s[30:31]
	v_add_f64 v[51:52], v[41:42], v[41:42]
	v_fma_f64 v[43:44], v[47:48], v[43:44], s[34:35]
	v_fma_f64 v[45:46], v[47:48], v[51:52], v[45:46]
	v_fma_f64 v[43:44], v[47:48], v[43:44], s[36:37]
	v_fma_f64 v[45:46], v[41:42], v[41:42], v[45:46]
	v_fma_f64 v[43:44], v[47:48], v[43:44], s[38:39]
	v_add_f64 v[51:52], v[49:50], v[45:46]
	v_fma_f64 v[43:44], v[47:48], v[43:44], s[40:41]
	v_add_f64 v[49:50], v[51:52], -v[49:50]
	v_mul_f64 v[53:54], v[51:52], v[43:44]
	v_add_f64 v[45:46], v[45:46], -v[49:50]
	v_fma_f64 v[49:50], v[51:52], v[43:44], -v[53:54]
	v_fma_f64 v[43:44], v[45:46], v[43:44], v[49:50]
	v_add_f64 v[45:46], v[53:54], v[43:44]
	v_add_f64 v[49:50], v[47:48], v[45:46]
	v_add_f64 v[51:52], v[45:46], -v[53:54]
	v_add_f64 v[47:48], v[49:50], -v[47:48]
	v_add_f64 v[43:44], v[43:44], -v[51:52]
	v_add_f64 v[45:46], v[45:46], -v[47:48]
	v_add_f64 v[41:42], v[41:42], v[43:44]
	v_add_f64 v[41:42], v[45:46], v[41:42]
	v_add_f64 v[41:42], v[49:50], v[41:42]
	s_mov_b32 s42, s16
	v_mov_b32_e32 v43, 0x7ff00000
	v_add_f64 v[41:42], v[41:42], 1.0
	v_cvt_i32_f64_e32 v39, v[39:40]
	v_ldexp_f64 v[39:40], v[41:42], v39
	v_add_f64 v[37:38], v[24:25], -v[37:38]
	v_cmp_nlt_f64_e32 vcc, s[16:17], v[35:36]
	v_cndmask_b32_e32 v40, v43, v40, vcc
	v_cmp_ngt_f64_e64 s[2:3], s[42:43], v[35:36]
	v_add_f64 v[31:32], v[26:27], -v[31:32]
	v_add_f64 v[33:34], v[28:29], -v[33:34]
	v_cndmask_b32_e64 v36, 0, v40, s[2:3]
	s_and_b64 vcc, s[2:3], vcc
	v_cndmask_b32_e32 v35, 0, v39, vcc
	v_add_f64 v[39:40], v[35:36], v[35:36]
	v_mov_b32_e32 v41, s7
	v_mul_f64 v[37:38], v[37:38], v[39:40]
	v_mul_f64 v[31:32], v[31:32], v[39:40]
	v_mul_f64 v[33:34], v[33:34], v[39:40]
	ds_read_b64 v[39:40], v41 offset:3200
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f64 v[18:19], v[39:40], v[35:36], v[18:19]
	v_fma_f64 v[20:21], v[39:40], v[37:38], v[20:21]
	v_fma_f64 v[14:15], v[39:40], v[31:32], v[14:15]
	v_fma_f64 v[16:17], v[39:40], v[33:34], v[16:17]
	s_add_i32 s7, s7, 8
	s_cmpk_lg_i32 s7, 0x320
	v_add_u32_e32 v30, vcc, 32, v30
	s_cbranch_scc1 BB0_12
; %bb.13:                               ; %._crit_edge138.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	flat_store_dwordx4 v[10:11], v[18:21]
	flat_store_dwordx4 v[12:13], v[14:17]
	s_branch BB0_5
BB0_14:                                 ; %.loopexit
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_
		.amdhsa_group_segment_fixed_size 7200
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
		.amdhsa_next_free_vgpr 55
		.amdhsa_next_free_sgpr 46
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
	.size	_Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_, .Lfunc_end0-_Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 1552
; NumSgprs: 50
; NumVgprs: 55
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 7200 bytes/workgroup (compile time only)
; SGPRBlocks: 6
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 55
; Occupancy: 4
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
      - .offset:         0
        .size:           8
        .value_kind:     by_value
      - .offset:         8
        .size:           56
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
      - .offset:         96
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         104
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         112
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         120
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         128
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 7200
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         _Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_.kd
    .vgpr_count:     55
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
