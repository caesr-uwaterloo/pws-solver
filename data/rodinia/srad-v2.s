	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z11srad_cuda_1PfS_S_S_S_S_iif ; -- Begin function _Z11srad_cuda_1PfS_S_S_S_S_iif
	.globl	_Z11srad_cuda_1PfS_S_S_S_S_iif
	.p2align	8
	.type	_Z11srad_cuda_1PfS_S_S_S_S_iif,@function
_Z11srad_cuda_1PfS_S_S_S_S_iif:         ; @_Z11srad_cuda_1PfS_S_S_S_S_iif
_Z11srad_cuda_1PfS_S_S_S_S_iif$local:
; %bb.0:
	s_load_dwordx4 s[12:15], s[6:7], 0x20
	s_load_dword s3, s[6:7], 0x30
	s_lshl_b32 s10, s8, 4
	s_mov_b32 s16, s9
	s_movk_i32 s0, 0x400
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v5, s13
	s_lshl_b32 s11, s3, 4
	s_mul_i32 s2, s11, s9
	s_add_i32 s9, s2, s10
	v_add_u32_e32 v3, vcc, s9, v0
	v_subrev_u32_e32 v2, vcc, s3, v3
	v_add_u32_e32 v4, vcc, s11, v3
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_mov_b32_e32 v8, s13
	v_add_u32_e32 v6, vcc, s12, v2
	v_addc_u32_e32 v7, vcc, v5, v3, vcc
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b32_e32 v2, 2, v0
	v_lshlrev_b32_e32 v3, 6, v1
	v_add_u32_e32 v3, vcc, v3, v2
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_u32_e32 v2, vcc, s0, v3
	v_add_u32_e32 v4, vcc, s12, v4
	v_addc_u32_e32 v5, vcc, v8, v5, vcc
	flat_load_dword v8, v[6:7]
	flat_load_dword v9, v[4:5]
	s_cmp_lg_u32 s16, 0
	s_mov_b32 m0, -1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write2st64_b32 v3, v9, v8 offset1:4
	s_cbranch_scc0 BB0_3
; %bb.1:
	s_ashr_i32 s17, s16, 31
	s_add_u32 s0, s4, 6
	s_addc_u32 s1, s5, 0
	v_mov_b32_e32 v5, s1
	v_mov_b32_e32 v4, s0
	flat_load_ushort v4, v[4:5]
	s_load_dword s18, s[4:5], 0x10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f32_u32_e32 v5, v4
	v_sub_u32_e32 v6, vcc, 0, v4
	v_rcp_iflag_f32_e32 v5, v5
	v_mul_f32_e32 v5, 0x4f7ffffe, v5
	v_cvt_u32_f32_e32 v5, v5
	v_mul_lo_u32 v6, v6, v5
	v_mul_hi_u32 v6, v5, v6
	v_add_u32_e32 v5, vcc, v6, v5
	v_mul_hi_u32 v5, s18, v5
	v_mul_lo_u32 v6, v5, v4
	v_add_u32_e32 v7, vcc, 1, v5
	v_sub_u32_e32 v6, vcc, s18, v6
	v_cmp_ge_u32_e64 s[0:1], v6, v4
	v_cndmask_b32_e64 v5, v5, v7, s[0:1]
	v_subrev_u32_e32 v7, vcc, v4, v6
	v_cndmask_b32_e64 v6, v6, v7, s[0:1]
	v_add_u32_e32 v7, vcc, 1, v5
	v_cmp_le_u32_e32 vcc, v4, v6
	v_cndmask_b32_e32 v5, v5, v7, vcc
	v_mul_lo_u32 v4, v5, v4
	v_cmp_gt_u32_e32 vcc, s18, v4
	v_addc_u32_e32 v4, vcc, 0, v5, vcc
	v_add_u32_e32 v4, vcc, -1, v4
	v_addc_u32_e64 v5, s[0:1], 0, -1, vcc
	v_cmp_eq_u64_e32 vcc, s[16:17], v[4:5]
	s_mov_b64 s[0:1], -1
	s_and_b64 vcc, exec, vcc
	s_mov_b64 s[18:19], 0
	s_cbranch_vccz BB0_4
; %bb.2:
	s_mul_i32 s20, s3, 15
	s_ashr_i32 s17, s10, 31
	s_ashr_i32 s21, s20, 31
	s_add_u32 s20, s20, s10
	s_addc_u32 s17, s21, s17
	v_mov_b32_e32 v5, s17
	v_add_u32_e32 v4, vcc, s20, v0
	v_addc_u32_e32 v5, vcc, 0, v5, vcc
	v_mov_b32_e32 v6, s11
	v_mad_i64_i32 v[5:6], s[16:17], s16, v6, v[4:5]
	v_mov_b32_e32 v4, v3
	s_and_b64 vcc, exec, s[18:19]
	s_cbranch_vccnz BB0_5
	s_branch BB0_6
BB0_3:
	s_mov_b64 s[18:19], -1
BB0_4:
	s_mov_b64 s[0:1], 0
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr5_vgpr6
	s_and_b64 vcc, exec, s[18:19]
	s_cbranch_vccz BB0_6
BB0_5:
	v_add_u32_e32 v5, vcc, s10, v0
	v_ashrrev_i32_e32 v6, 31, v5
	s_mov_b64 s[0:1], -1
	v_mov_b32_e32 v4, v2
BB0_6:                                  ; %Flow378
	s_andn2_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz BB0_8
; %bb.7:                                ; %.sink.split
	v_lshlrev_b64 v[5:6], 2, v[5:6]
	v_mov_b32_e32 v7, s13
	v_add_u32_e32 v5, vcc, s12, v5
	v_addc_u32_e32 v6, vcc, v7, v6, vcc
	flat_load_dword v5, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v4, v5
BB0_8:
	v_mul_lo_u32 v5, v1, s3
	v_mov_b32_e32 v9, s13
	s_movk_i32 s0, 0xc00
	s_waitcnt lgkmcnt(0)
	v_add_u32_e32 v4, vcc, s9, v5
	v_add_u32_e32 v6, vcc, -1, v4
	v_ashrrev_i32_e32 v7, 31, v6
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_u32_e32 v8, vcc, 16, v4
	v_add_u32_e32 v10, vcc, s12, v6
	v_addc_u32_e32 v11, vcc, v9, v7, vcc
	v_lshlrev_b32_e32 v6, 6, v1
	v_lshlrev_b32_e32 v7, 2, v0
	v_ashrrev_i32_e32 v9, 31, v8
	v_add_u32_e32 v12, vcc, v6, v7
	v_lshlrev_b64 v[7:8], 2, v[8:9]
	v_add_u32_e32 v6, vcc, s0, v12
	v_mov_b32_e32 v9, s13
	v_add_u32_e32 v7, vcc, s12, v7
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_addc_u32_e32 v8, vcc, v9, v8, vcc
	flat_load_dword v9, v[10:11]
	flat_load_dword v13, v[7:8]
	v_add_u32_e32 v7, vcc, 0x800, v12
	s_cmp_lg_u32 s8, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write2st64_b32 v12, v13, v9 offset0:8 offset1:12
	s_cbranch_scc0 BB0_11
; %bb.9:
	s_load_dword s0, s[4:5], 0x4
	s_load_dword s3, s[4:5], 0xc
	s_ashr_i32 s9, s8, 31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, s0, 0xffff
	v_cvt_f32_u32_e32 v8, s4
	s_sub_i32 s0, 0, s4
	v_rcp_iflag_f32_e32 v8, v8
	v_mul_f32_e32 v8, 0x4f7ffffe, v8
	v_cvt_u32_f32_e32 v8, v8
	v_mul_lo_u32 v9, s0, v8
	v_mul_hi_u32 v9, v8, v9
	v_add_u32_e32 v8, vcc, v9, v8
	v_mul_hi_u32 v8, s3, v8
	v_mul_lo_u32 v9, v8, s4
	v_add_u32_e32 v10, vcc, 1, v8
	v_sub_u32_e32 v9, vcc, s3, v9
	v_cmp_le_u32_e64 s[0:1], s4, v9
	v_cndmask_b32_e64 v8, v8, v10, s[0:1]
	v_subrev_u32_e32 v10, vcc, s4, v9
	v_cndmask_b32_e64 v9, v9, v10, s[0:1]
	v_add_u32_e32 v10, vcc, 1, v8
	v_cmp_le_u32_e32 vcc, s4, v9
	v_cndmask_b32_e32 v8, v8, v10, vcc
	v_mul_lo_u32 v9, v8, s4
	s_mov_b64 s[4:5], 0
	v_cmp_gt_u32_e32 vcc, s3, v9
	v_addc_u32_e32 v8, vcc, 0, v8, vcc
	v_add_u32_e32 v8, vcc, -1, v8
	v_addc_u32_e64 v9, s[0:1], 0, -1, vcc
	v_cmp_eq_u64_e32 vcc, s[8:9], v[8:9]
	s_mov_b64 s[0:1], -1
	s_and_b64 vcc, exec, vcc
	s_cbranch_vccz BB0_12
; %bb.10:
	s_ashr_i32 s3, s2, 31
	s_lshl_b64 s[8:9], s[8:9], 4
	s_add_u32 s8, s8, s2
	s_addc_u32 s3, s9, s3
	v_ashrrev_i32_e32 v8, 31, v5
	v_mov_b32_e32 v9, s3
	v_add_u32_e32 v10, vcc, s8, v5
	v_addc_u32_e32 v9, vcc, v8, v9, vcc
	v_add_u32_e32 v8, vcc, 15, v10
	v_addc_u32_e32 v9, vcc, 0, v9, vcc
	v_mov_b32_e32 v10, v7
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz BB0_13
	s_branch BB0_14
BB0_11:
	s_mov_b64 s[4:5], -1
BB0_12:
	s_mov_b64 s[0:1], 0
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr8_vgpr9
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccz BB0_14
BB0_13:
	v_add_u32_e32 v8, vcc, s2, v5
	v_ashrrev_i32_e32 v9, 31, v8
	s_mov_b64 s[0:1], -1
	v_mov_b32_e32 v10, v6
BB0_14:                                 ; %Flow374
	s_andn2_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz BB0_16
; %bb.15:                               ; %.sink.split326
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_mov_b32_e32 v5, s13
	v_add_u32_e32 v8, vcc, s12, v8
	v_addc_u32_e32 v9, vcc, v5, v9, vcc
	flat_load_dword v5, v[8:9]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v10, v5
BB0_16:
	v_add_u32_e32 v4, vcc, v4, v0
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b64 v[8:9], 2, v[4:5]
	v_mov_b32_e32 v10, s13
	v_add_u32_e32 v8, vcc, s12, v8
	v_addc_u32_e32 v9, vcc, v10, v9, vcc
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	flat_load_dword v8, v[8:9]
	v_lshlrev_b32_e32 v9, 6, v1
	v_lshlrev_b32_e32 v10, 2, v0
	v_add_u32_e32 v9, vcc, v9, v10
	v_add_u32_e32 v13, vcc, 0x1000, v9
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr11
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v9, v8 offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	ds_read_b32 v8, v9 offset:4096
	v_or_b32_e32 v9, v1, v0
	v_cmp_ne_u32_e32 vcc, 0, v9
                                        ; implicit-def: $vgpr9
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[8:9], exec, s[0:1]
	s_cbranch_execz BB0_40
; %bb.17:
	v_cmp_eq_u32_e64 s[4:5], 0, v1
	v_cmp_eq_u32_e32 vcc, 15, v0
	s_and_b64 s[0:1], s[4:5], vcc
	s_xor_b64 s[0:1], s[0:1], -1
	v_mov_b32_e32 v10, 0x1038
	v_mov_b32_e32 v11, 0x107c
	v_mov_b32_e32 v9, v2
	s_and_saveexec_b64 s[10:11], s[0:1]
	s_cbranch_execz BB0_39
; %bb.18:
	v_cmp_eq_u32_e64 s[0:1], 15, v1
	s_and_b64 s[2:3], s[0:1], vcc
	s_xor_b64 s[2:3], s[2:3], -1
	v_mov_b32_e32 v9, 0x13bc
	v_mov_b32_e32 v10, 0x13f8
	s_and_saveexec_b64 s[12:13], s[2:3]
	s_cbranch_execz BB0_38
; %bb.19:
	v_cmp_eq_u32_e64 s[2:3], 0, v0
	s_and_b64 s[16:17], s[0:1], s[2:3]
	s_xor_b64 s[18:19], s[16:17], -1
	v_mov_b32_e32 v9, 0x1380
	v_mov_b32_e32 v11, 0x13c4
	v_mov_b32_e32 v10, v6
	s_and_saveexec_b64 s[16:17], s[18:19]
	s_cbranch_execz BB0_37
; %bb.20:
	s_xor_b64 s[4:5], s[4:5], -1
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr12
	s_and_saveexec_b64 s[18:19], s[4:5]
	s_xor_b64 s[4:5], exec, s[18:19]
	s_cbranch_execz BB0_34
; %bb.21:
	s_xor_b64 s[18:19], vcc, -1
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr12
	s_and_saveexec_b64 s[20:21], s[18:19]
	s_xor_b64 s[18:19], exec, s[20:21]
	s_cbranch_execz BB0_31
; %bb.22:
	s_xor_b64 s[0:1], s[0:1], -1
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr12
	s_and_saveexec_b64 s[20:21], s[0:1]
	s_xor_b64 s[0:1], exec, s[20:21]
	s_cbranch_execz BB0_28
; %bb.23:
	s_xor_b64 s[2:3], s[2:3], -1
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr12
	s_and_saveexec_b64 s[20:21], s[2:3]
	s_xor_b64 s[2:3], exec, s[20:21]
; %bb.24:
	v_subrev_u32_e32 v9, vcc, 64, v13
	v_add_u32_e32 v12, vcc, 64, v13
	v_mov_b32_e32 v10, 0
	v_add_u32_e32 v10, vcc, 0, v10
	v_addc_u32_e32 v10, vcc, -1, v0, vcc
	v_lshlrev_b32_e32 v10, 2, v10
	v_lshlrev_b32_e32 v11, 6, v1
	v_add_u32_e32 v10, vcc, v11, v10
	v_add_u32_e32 v10, vcc, 0x1000, v10
	v_add_u32_e32 v11, vcc, 4, v13
; %bb.25:                               ; %Flow355
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
; %bb.26:
	v_lshlrev_b32_e32 v10, 6, v1
	v_add_u32_e32 v9, vcc, 0xfc0, v10
	v_add_u32_e32 v12, vcc, 0x1040, v10
	v_add_u32_e32 v11, vcc, 0x1004, v10
	v_mov_b32_e32 v10, v6
; %bb.27:                               ; %Flow356
	s_or_b64 exec, exec, s[2:3]
BB0_28:                                 ; %Flow358
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
; %bb.29:
	v_lshlrev_b32_e32 v11, 2, v0
	v_add_u32_e32 v9, vcc, 0x1380, v11
	v_mov_b32_e32 v10, 0
	v_add_u32_e32 v10, vcc, 0, v10
	v_addc_u32_e32 v10, vcc, -1, v0, vcc
	v_lshlrev_b32_e32 v10, 2, v10
	v_add_u32_e32 v10, vcc, 0x13c0, v10
	v_add_u32_e32 v11, vcc, 0x13c4, v11
	v_mov_b32_e32 v12, v3
; %bb.30:                               ; %Flow359
	s_or_b64 exec, exec, s[0:1]
BB0_31:                                 ; %Flow361
	s_or_saveexec_b64 s[0:1], s[18:19]
	s_xor_b64 exec, exec, s[0:1]
; %bb.32:
	v_lshlrev_b32_e32 v3, 6, v1
	v_add_u32_e32 v9, vcc, 0xffc, v3
	v_add_u32_e32 v12, vcc, 0x107c, v3
	v_add_u32_e32 v10, vcc, 0x1038, v3
	v_mov_b32_e32 v11, v7
; %bb.33:                               ; %Flow362
	s_or_b64 exec, exec, s[0:1]
BB0_34:                                 ; %Flow364
	s_or_saveexec_b64 s[0:1], s[4:5]
	s_xor_b64 exec, exec, s[0:1]
; %bb.35:
	v_lshlrev_b32_e32 v3, 2, v0
	v_add_u32_e32 v12, vcc, 0x1040, v3
	v_mov_b32_e32 v7, 0
	v_add_u32_e32 v7, vcc, 0, v7
	v_addc_u32_e32 v7, vcc, -1, v0, vcc
	v_lshlrev_b32_e32 v7, 2, v7
	v_add_u32_e32 v10, vcc, 0x1000, v7
	v_add_u32_e32 v11, vcc, 0x1004, v3
	v_mov_b32_e32 v9, v2
; %bb.36:                               ; %Flow365
	s_or_b64 exec, exec, s[0:1]
	v_mov_b32_e32 v3, v12
BB0_37:                                 ; %Flow366
	s_or_b64 exec, exec, s[16:17]
	v_mov_b32_e32 v7, v11
BB0_38:                                 ; %Flow367
	s_or_b64 exec, exec, s[12:13]
	v_mov_b32_e32 v11, v3
BB0_39:                                 ; %Flow368
	s_or_b64 exec, exec, s[10:11]
BB0_40:                                 ; %Flow370
	s_or_saveexec_b64 s[0:1], s[8:9]
	s_load_dwordx8 s[16:23], s[6:7], 0x0
	s_load_dword s2, s[6:7], 0x38
	s_xor_b64 exec, exec, s[0:1]
; %bb.41:
	v_lshlrev_b32_e32 v3, 2, v0
	v_add_u32_e32 v11, vcc, 0x1040, v3
	v_lshlrev_b32_e32 v3, 6, v1
	v_add_u32_e32 v7, vcc, 0x1004, v3
	v_mov_b32_e32 v10, v6
	v_mov_b32_e32 v9, v2
; %bb.42:
	s_or_b64 exec, exec, s[0:1]
	ds_read_b32 v2, v9
	ds_read_b32 v3, v10
	ds_read_b32 v7, v7
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v13, v8, v8
	v_sub_f32_e32 v2, v2, v8
	v_sub_f32_e32 v6, v3, v8
	ds_read_b32 v3, v11
	v_sub_f32_e32 v7, v7, v8
	s_waitcnt lgkmcnt(0)
	v_sub_f32_e32 v3, v3, v8
	v_mul_f32_e32 v9, v3, v3
	v_fma_f32 v9, v2, v2, v9
	v_fma_f32 v9, v6, v6, v9
	v_fma_f32 v12, v7, v7, v9
	v_add_f32_e32 v9, v2, v3
	v_div_scale_f32 v11, s[0:1], v13, v13, v12
	v_add_f32_e32 v9, v6, v9
	v_add_f32_e32 v9, v7, v9
	v_div_scale_f32 v10, s[0:1], v8, v8, v9
	v_div_scale_f32 v15, vcc, v12, v13, v12
	v_div_scale_f32 v14, s[0:1], v9, v8, v9
	v_rcp_f32_e32 v17, v11
	v_rcp_f32_e32 v16, v10
	v_fma_f32 v19, -v11, v17, 1.0
	v_fma_f32 v17, v19, v17, v17
	v_mul_f32_e32 v19, v15, v17
	v_fma_f32 v18, -v10, v16, 1.0
	v_fma_f32 v20, -v11, v19, v15
	v_fma_f32 v16, v18, v16, v16
	v_fma_f32 v19, v20, v17, v19
	v_fma_f32 v11, -v11, v19, v15
	v_mul_f32_e32 v18, v14, v16
	v_div_fmas_f32 v15, v11, v17, v19
	v_fma_f32 v11, -v10, v18, v14
	v_fma_f32 v11, v11, v16, v18
	s_mov_b64 vcc, s[0:1]
	v_fma_f32 v10, -v10, v11, v14
	v_div_fmas_f32 v10, v10, v16, v11
	s_mov_b32 s1, 0xbfb00000
	s_mov_b32 s0, 0
	v_div_fixup_f32 v12, v15, v13, v12
	v_cvt_f64_f32_e32 v[12:13], v12
	v_div_fixup_f32 v10, v10, v8, v9
	v_mul_f32_e32 v8, v10, v10
	v_cvt_f64_f32_e32 v[8:9], v8
	v_cvt_f64_f32_e32 v[10:11], v10
	v_mul_f64 v[8:9], v[8:9], s[0:1]
	s_mov_b32 s1, 0x3fd00000
	v_fma_f64 v[10:11], v[10:11], s[0:1], 1.0
	v_fma_f64 v[8:9], v[12:13], 0.5, v[8:9]
	v_cvt_f32_f64_e32 v10, v[10:11]
	v_cvt_f32_f64_e32 v8, v[8:9]
	v_mul_f32_e32 v9, v10, v10
	v_div_scale_f32 v10, s[0:1], v9, v9, v8
	v_div_scale_f32 v11, vcc, v8, v9, v8
	v_rcp_f32_e32 v12, v10
	v_fma_f32 v13, -v10, v12, 1.0
	v_fma_f32 v12, v13, v12, v12
	v_mul_f32_e32 v13, v11, v12
	v_fma_f32 v14, -v10, v13, v11
	v_fma_f32 v13, v14, v12, v13
	v_fma_f32 v10, -v10, v13, v11
	v_div_fmas_f32 v10, v10, v12, v13
	v_add_f32_e64 v11, s2, 1.0
	v_mul_f32_e32 v11, s2, v11
	v_div_fixup_f32 v8, v10, v9, v8
	v_subrev_f32_e32 v8, s2, v8
	v_div_scale_f32 v9, s[0:1], v11, v11, v8
	v_div_scale_f32 v10, vcc, v8, v11, v8
	v_rcp_f32_e32 v12, v9
	v_fma_f32 v13, -v9, v12, 1.0
	v_fma_f32 v12, v13, v12, v12
	v_mul_f32_e32 v13, v10, v12
	v_fma_f32 v14, -v9, v13, v10
	v_fma_f32 v13, v14, v12, v13
	v_fma_f32 v9, -v9, v13, v10
	v_div_fmas_f32 v9, v9, v12, v13
	v_div_fixup_f32 v8, v9, v11, v8
	v_cvt_f64_f32_e32 v[8:9], v8
	v_add_f64 v[8:9], v[8:9], 1.0
	v_div_scale_f64 v[10:11], s[0:1], v[8:9], v[8:9], 1.0
	v_div_scale_f64 v[16:17], vcc, 1.0, v[8:9], 1.0
	v_rcp_f64_e32 v[12:13], v[10:11]
	v_fma_f64 v[14:15], -v[10:11], v[12:13], 1.0
	v_fma_f64 v[12:13], v[12:13], v[14:15], v[12:13]
	v_fma_f64 v[14:15], -v[10:11], v[12:13], 1.0
	v_fma_f64 v[12:13], v[12:13], v[14:15], v[12:13]
	v_mul_f64 v[14:15], v[16:17], v[12:13]
	v_fma_f64 v[10:11], -v[10:11], v[14:15], v[16:17]
	v_div_fmas_f64 v[10:11], v[10:11], v[12:13], v[14:15]
	v_div_fixup_f64 v[8:9], v[10:11], v[8:9], 1.0
	v_cvt_f32_f64_e32 v8, v[8:9]
	v_cmp_ngt_f32_e32 vcc, 0, v8
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[2:3], exec, s[0:1]
	s_cbranch_execz BB0_48
; %bb.43:
	v_lshlrev_b32_e32 v9, 6, v1
	v_lshlrev_b32_e32 v10, 2, v0
	v_add_u32_e32 v9, vcc, v9, v10
	v_cmp_nlt_f32_e64 s[0:1], 1.0, v8
	v_add_u32_e32 v9, vcc, 0x1400, v9
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[0:1], exec, s[4:5]
; %bb.44:
	ds_write_b32 v9, v8
; %bb.45:                               ; %Flow
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
; %bb.46:
	v_mov_b32_e32 v8, 1.0
	ds_write_b32 v9, v8
; %bb.47:                               ; %Flow351
	s_or_b64 exec, exec, s[0:1]
BB0_48:                                 ; %Flow353
	s_or_saveexec_b64 s[0:1], s[2:3]
	s_xor_b64 exec, exec, s[0:1]
; %bb.49:
	v_lshlrev_b32_e32 v8, 6, v1
	v_lshlrev_b32_e32 v9, 2, v0
	v_add_u32_e32 v8, vcc, v8, v9
	v_mov_b32_e32 v9, 0
	ds_write_b32 v8, v9 offset:5120
; %bb.50:
	s_or_b64 exec, exec, s[0:1]
	v_lshlrev_b32_e32 v1, 6, v1
	v_lshlrev_b32_e32 v0, 2, v0
	v_add_u32_e32 v0, vcc, v1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	ds_read_b32 v8, v0 offset:5120
	v_lshlrev_b64 v[0:1], 2, v[4:5]
	v_mov_b32_e32 v5, s15
	v_add_u32_e32 v4, vcc, s14, v0
	v_addc_u32_e32 v5, vcc, v5, v1, vcc
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[4:5], v8
	v_mov_b32_e32 v5, s17
	v_add_u32_e32 v4, vcc, s16, v0
	v_addc_u32_e32 v5, vcc, v5, v1, vcc
	flat_store_dword v[4:5], v7
	v_mov_b32_e32 v5, s19
	v_add_u32_e32 v4, vcc, s18, v0
	v_addc_u32_e32 v5, vcc, v5, v1, vcc
	flat_store_dword v[4:5], v6
	v_mov_b32_e32 v5, s23
	v_add_u32_e32 v4, vcc, s22, v0
	v_addc_u32_e32 v5, vcc, v5, v1, vcc
	flat_store_dword v[4:5], v3
	v_mov_b32_e32 v3, s21
	v_add_u32_e32 v0, vcc, s20, v0
	v_addc_u32_e32 v1, vcc, v3, v1, vcc
	flat_store_dword v[0:1], v2
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z11srad_cuda_1PfS_S_S_S_S_iif
		.amdhsa_group_segment_fixed_size 6144
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
		.amdhsa_next_free_vgpr 21
		.amdhsa_next_free_sgpr 24
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
	.size	_Z11srad_cuda_1PfS_S_S_S_S_iif, .Lfunc_end0-_Z11srad_cuda_1PfS_S_S_S_S_iif
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 2492
; NumSgprs: 28
; NumVgprs: 21
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 6144 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 5
; NumSGPRsForWavesPerEU: 28
; NumVGPRsForWavesPerEU: 21
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
	.text
	.protected	_Z11srad_cuda_2PfS_S_S_S_S_iiff ; -- Begin function _Z11srad_cuda_2PfS_S_S_S_S_iiff
	.globl	_Z11srad_cuda_2PfS_S_S_S_S_iiff
	.p2align	8
	.type	_Z11srad_cuda_2PfS_S_S_S_S_iiff,@function
_Z11srad_cuda_2PfS_S_S_S_S_iiff:        ; @_Z11srad_cuda_2PfS_S_S_S_S_iiff
_Z11srad_cuda_2PfS_S_S_S_S_iiff$local:
; %bb.0:
	s_mov_b32 s20, s9
	s_load_dwordx4 s[0:3], s[6:7], 0x20
	s_load_dword s9, s[6:7], 0x30
	s_lshl_b32 s22, s8, 4
	s_ashr_i32 s21, s20, 31
	s_mov_b32 s23, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v6, s1
	v_mul_lo_u32 v9, v1, s9
	s_lshl_b32 s11, s9, 4
	s_mul_i32 s10, s11, s20
	s_add_i32 s12, s10, s22
	v_add_u32_e32 v8, vcc, s12, v9
	v_add_u32_e32 v4, vcc, v8, v0
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b64 v[2:3], 2, v[4:5]
	s_add_i32 s24, s12, s11
	v_add_u32_e32 v2, vcc, s0, v2
	s_add_u32 s0, s4, 6
	s_addc_u32 s1, s5, 0
	v_addc_u32_e32 v3, vcc, v6, v3, vcc
	v_mov_b32_e32 v7, s1
	v_mov_b32_e32 v6, s0
	flat_load_ushort v13, v[6:7]
	flat_load_dword v12, v[2:3]
	v_lshlrev_b32_e32 v7, 2, v0
	v_lshlrev_b32_e32 v10, 6, v1
	v_add_u32_e32 v7, vcc, v10, v7
	s_movk_i32 s25, 0x400
	v_mov_b32_e32 v15, s3
	s_mov_b32 m0, -1
	s_load_dword s26, s[4:5], 0x10
	s_load_dwordx8 s[12:19], s[6:7], 0x0
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_cvt_f32_u32_e32 v6, v13
	v_sub_u32_e32 v10, vcc, 0, v13
	s_waitcnt vmcnt(0)
	ds_write_b32 v7, v12 offset:1024
	s_waitcnt lgkmcnt(0)
	v_rcp_iflag_f32_e32 v6, v6
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v6, s23, v6
	v_cvt_u32_f32_e32 v14, v6
	v_add_u32_e32 v6, vcc, s25, v7
	v_mul_lo_u32 v11, v10, v14
	v_add_u32_e32 v10, vcc, s24, v0
	v_mul_hi_u32 v16, v14, v11
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_u32_e32 v14, vcc, v16, v14
	v_add_u32_e32 v10, vcc, s2, v10
	v_addc_u32_e32 v11, vcc, v15, v11, vcc
	flat_load_dword v10, v[10:11]
	v_mul_hi_u32 v14, s26, v14
	v_mul_lo_u32 v12, v14, v13
	v_add_u32_e32 v15, vcc, 1, v14
	v_sub_u32_e32 v12, vcc, s26, v12
	v_cmp_ge_u32_e64 s[0:1], v12, v13
	v_cndmask_b32_e64 v14, v14, v15, s[0:1]
	v_subrev_u32_e32 v15, vcc, v13, v12
	v_cndmask_b32_e64 v12, v12, v15, s[0:1]
	v_add_u32_e32 v15, vcc, 1, v14
	v_cmp_le_u32_e32 vcc, v13, v12
	v_cndmask_b32_e32 v12, v14, v15, vcc
	v_mul_lo_u32 v13, v12, v13
	v_cmp_gt_u32_e32 vcc, s26, v13
	v_addc_u32_e32 v12, vcc, 0, v12, vcc
	v_add_u32_e32 v12, vcc, -1, v12
	v_addc_u32_e64 v13, s[0:1], 0, -1, vcc
	v_cmp_ne_u64_e32 vcc, s[20:21], v[12:13]
	s_and_b64 vcc, exec, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v7, v10
	s_cbranch_vccnz BB1_2
; %bb.1:
	s_mul_i32 s9, s9, 15
	s_ashr_i32 s0, s22, 31
	s_ashr_i32 s1, s9, 31
	s_add_u32 s9, s9, s22
	s_addc_u32 s0, s1, s0
	v_mov_b32_e32 v11, s0
	v_add_u32_e32 v10, vcc, s9, v0
	v_addc_u32_e32 v11, vcc, 0, v11, vcc
	v_mov_b32_e32 v12, s11
	v_mad_i64_i32 v[10:11], s[0:1], s20, v12, v[10:11]
	v_mov_b32_e32 v12, s3
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_u32_e32 v10, vcc, s2, v10
	v_addc_u32_e32 v11, vcc, v12, v11, vcc
	flat_load_dword v10, v[10:11]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v7, v10
BB1_2:
	s_load_dword s0, s[4:5], 0x4
	s_load_dword s11, s[4:5], 0xc
	v_lshlrev_b32_e32 v14, 2, v0
	v_lshlrev_b32_e32 v15, 6, v1
	v_add_u32_e32 v14, vcc, v15, v14
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, s0, 0xffff
	v_cvt_f32_u32_e32 v10, s4
	s_sub_i32 s0, 0, s4
	v_mov_b32_e32 v12, s3
	s_waitcnt lgkmcnt(0)
	v_rcp_iflag_f32_e32 v11, v10
	v_add_u32_e32 v10, vcc, 16, v8
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v8, s23, v11
	v_cvt_u32_f32_e32 v8, v8
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	s_ashr_i32 s9, s8, 31
	v_mul_lo_u32 v13, s0, v8
	v_mul_hi_u32 v13, v8, v13
	v_add_u32_e32 v8, vcc, v13, v8
	v_mul_hi_u32 v13, s11, v8
	v_add_u32_e32 v8, vcc, 0x800, v14
	v_mul_lo_u32 v15, v13, s4
	v_add_u32_e32 v16, vcc, 1, v13
	v_sub_u32_e32 v15, vcc, s11, v15
	v_cmp_le_u32_e64 s[0:1], s4, v15
	v_cndmask_b32_e64 v13, v13, v16, s[0:1]
	v_subrev_u32_e32 v16, vcc, s4, v15
	v_cndmask_b32_e64 v15, v15, v16, s[0:1]
	v_add_u32_e32 v16, vcc, 1, v13
	v_cmp_le_u32_e32 vcc, s4, v15
	v_cndmask_b32_e32 v13, v13, v16, vcc
	v_add_u32_e32 v10, vcc, s2, v10
	v_addc_u32_e32 v11, vcc, v12, v11, vcc
	flat_load_dword v10, v[10:11]
	v_mul_lo_u32 v15, v13, s4
	v_cmp_gt_u32_e32 vcc, s11, v15
	v_addc_u32_e32 v12, vcc, 0, v13, vcc
	v_add_u32_e32 v12, vcc, -1, v12
	v_addc_u32_e64 v13, s[0:1], 0, -1, vcc
	v_cmp_ne_u64_e32 vcc, s[8:9], v[12:13]
	s_and_b64 vcc, exec, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v14, v10 offset:2048
	s_cbranch_vccnz BB1_4
; %bb.3:
	s_ashr_i32 s4, s10, 31
	s_lshl_b64 s[0:1], s[8:9], 4
	s_add_u32 s0, s0, s10
	s_addc_u32 s1, s1, s4
	v_ashrrev_i32_e32 v10, 31, v9
	v_mov_b32_e32 v11, s1
	v_add_u32_e32 v9, vcc, s0, v9
	v_addc_u32_e32 v10, vcc, v10, v11, vcc
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_mov_b32_e32 v11, s3
	v_add_u32_e32 v9, vcc, s2, v9
	v_addc_u32_e32 v10, vcc, v10, v11, vcc
	v_add_u32_e32 v9, vcc, 60, v9
	v_addc_u32_e32 v10, vcc, 0, v10, vcc
	flat_load_dword v9, v[9:10]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v8, v9
BB1_4:
	v_lshlrev_b64 v[9:10], 2, v[4:5]
	v_mov_b32_e32 v11, s3
	v_add_u32_e32 v9, vcc, s2, v9
	v_addc_u32_e32 v10, vcc, v11, v10, vcc
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	flat_load_dword v9, v[9:10]
	v_lshlrev_b32_e32 v10, 2, v0
	v_lshlrev_b32_e32 v11, 6, v1
	v_add_u32_e32 v10, vcc, v11, v10
	s_load_dword s2, s[6:7], 0x38
	v_add_u32_e32 v12, vcc, 0xc00, v10
	v_cmp_eq_u32_e32 vcc, 15, v1
	v_cmp_eq_u32_e64 s[0:1], 15, v0
	s_and_b64 s[4:5], vcc, s[0:1]
	s_xor_b64 s[6:7], s[4:5], -1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v10, v9 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	ds_read_b32 v9, v10 offset:3072
	s_and_saveexec_b64 s[4:5], s[6:7]
	s_cbranch_execz BB1_14
; %bb.5:
	s_xor_b64 s[0:1], s[0:1], -1
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr11
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB1_11
; %bb.6:
	s_xor_b64 s[6:7], vcc, -1
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr11
	s_and_saveexec_b64 s[8:9], s[6:7]
	s_xor_b64 s[6:7], exec, s[8:9]
; %bb.7:
	v_add_u32_e32 v11, vcc, 64, v12
	v_add_u32_e32 v10, vcc, 4, v12
; %bb.8:                                ; %Flow
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
; %bb.9:
	v_lshlrev_b32_e32 v10, 2, v0
	v_add_u32_e32 v10, vcc, 0xfc4, v10
	v_mov_b32_e32 v11, v7
; %bb.10:                               ; %Flow159
	s_or_b64 exec, exec, s[6:7]
BB1_11:                                 ; %Flow161
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
; %bb.12:
	v_lshlrev_b32_e32 v7, 6, v1
	v_add_u32_e32 v11, vcc, 0xc7c, v7
	v_mov_b32_e32 v10, v8
; %bb.13:                               ; %Flow162
	s_or_b64 exec, exec, s[0:1]
	v_mov_b32_e32 v7, v11
	v_mov_b32_e32 v8, v10
BB1_14:
	s_or_b64 exec, exec, s[4:5]
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_mov_b32_e32 v11, s17
	v_add_u32_e32 v10, vcc, s16, v4
	v_addc_u32_e32 v11, vcc, v11, v5, vcc
	flat_load_dword v12, v[10:11]
	v_mov_b32_e32 v11, s19
	v_add_u32_e32 v10, vcc, s18, v4
	v_addc_u32_e32 v11, vcc, v11, v5, vcc
	flat_load_dword v13, v[10:11]
	v_mov_b32_e32 v11, s15
	v_add_u32_e32 v10, vcc, s14, v4
	v_addc_u32_e32 v11, vcc, v11, v5, vcc
	flat_load_dword v10, v[10:11]
	v_mov_b32_e32 v11, s13
	v_add_u32_e32 v4, vcc, s12, v4
	v_addc_u32_e32 v5, vcc, v11, v5, vcc
	flat_load_dword v11, v[4:5]
	ds_read_b32 v8, v8
	ds_read_b32 v14, v7
	v_cvt_f64_f32_e32 v[4:5], s2
	ds_read_b32 v6, v6
	s_mov_b32 s1, 0x3fd00000
	s_mov_b32 s0, 0
	v_mul_f64 v[4:5], v[4:5], s[0:1]
	v_lshlrev_b32_e32 v0, 2, v0
	s_waitcnt lgkmcnt(0)
	v_cvt_f64_f32_e32 v[6:7], v6
	v_lshlrev_b32_e32 v1, 6, v1
	v_add_u32_e32 v0, vcc, v1, v0
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v13, v14, v13
	v_fma_f32 v12, v9, v12, v13
	s_waitcnt vmcnt(1)
	v_fma_f32 v9, v9, v10, v12
	s_waitcnt vmcnt(0)
	v_fma_f32 v8, v8, v11, v9
	v_cvt_f64_f32_e32 v[8:9], v8
	v_fma_f64 v[4:5], v[4:5], v[8:9], v[6:7]
	v_cvt_f32_f64_e32 v4, v[4:5]
	ds_write_b32 v0, v4 offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	ds_read_b32 v0, v0 offset:4096
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[2:3], v0
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z11srad_cuda_2PfS_S_S_S_S_iiff
		.amdhsa_group_segment_fixed_size 5120
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
		.amdhsa_next_free_vgpr 17
		.amdhsa_next_free_sgpr 27
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
	.size	_Z11srad_cuda_2PfS_S_S_S_S_iiff, .Lfunc_end1-_Z11srad_cuda_2PfS_S_S_S_S_iiff
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 1296
; NumSgprs: 31
; NumVgprs: 17
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 5120 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 31
; NumVGPRsForWavesPerEU: 17
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
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
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
    .group_segment_fixed_size: 6144
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z11srad_cuda_1PfS_S_S_S_S_iif
    .private_segment_fixed_size: 0
    .sgpr_count:     28
    .sgpr_spill_count: 0
    .symbol:         _Z11srad_cuda_1PfS_S_S_S_S_iif.kd
    .vgpr_count:     21
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
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .offset:         60
        .size:           4
        .value_kind:     by_value
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
    .group_segment_fixed_size: 5120
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z11srad_cuda_2PfS_S_S_S_S_iiff
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         _Z11srad_cuda_2PfS_S_S_S_S_iiff.kd
    .vgpr_count:     17
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
