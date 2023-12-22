	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z6kernel13params_common20params_common_changeP13params_unique ; -- Begin function _Z6kernel13params_common20params_common_changeP13params_unique
	.globl	_Z6kernel13params_common20params_common_changeP13params_unique
	.p2align	8
	.type	_Z6kernel13params_common20params_common_changeP13params_unique,@function
_Z6kernel13params_common20params_common_changeP13params_unique: ; @_Z6kernel13params_common20params_common_changeP13params_unique
_Z6kernel13params_common20params_common_changeP13params_unique$local:
; %bb.0:
	s_load_dword s59, s[4:5], 0x154
	s_load_dword s55, s[4:5], 0x15c
	s_load_dword s56, s[4:5], 0x164
	s_load_dword s57, s[4:5], 0x16c
	s_load_dword s58, s[4:5], 0x174
	s_load_dword s50, s[4:5], 0x14c
	s_load_dword s62, s[4:5], 0x144
	s_load_dword s61, s[4:5], 0x13c
	s_load_dword s66, s[4:5], 0x134
	s_load_dword s65, s[4:5], 0x12c
	s_load_dword s63, s[4:5], 0x124
	s_load_dword s64, s[4:5], 0x11c
	s_load_dword s68, s[4:5], 0x114
	s_load_dword s67, s[4:5], 0x110
	s_load_dword s60, s[4:5], 0x10c
	s_load_dword s69, s[4:5], 0x108
	s_load_dword s70, s[4:5], 0x104
	s_load_dword s8, s[4:5], 0x100
	s_load_dword s9, s[4:5], 0xfc
	s_load_dword s46, s[4:5], 0xf4
	s_load_dword s12, s[4:5], 0xec
	s_load_dword s2, s[4:5], 0xe4
	s_load_dword s11, s[4:5], 0xe0
	s_load_dword s10, s[4:5], 0xdc
	s_load_dword s31, s[4:5], 0x0
	s_load_dword s27, s[4:5], 0x4
	s_load_dword s20, s[4:5], 0xc
	s_load_dword s26, s[4:5], 0x10
	s_load_dword s7, s[4:5], 0xd4
	s_load_dword s30, s[4:5], 0xd0
	s_load_dword s21, s[4:5], 0xcc
	s_load_dword s24, s[4:5], 0x14
	s_load_dword s25, s[4:5], 0x210
	s_load_dwordx2 s[22:23], s[4:5], 0x208
	s_load_dword s37, s[4:5], 0x200
	s_load_dword s38, s[4:5], 0x1fc
	s_load_dword s39, s[4:5], 0x1f4
	s_load_dword s36, s[4:5], 0x1f0
	s_load_dword s33, s[4:5], 0x1ec
	s_load_dword s40, s[4:5], 0x1e0
	s_load_dword s41, s[4:5], 0x1dc
	s_load_dword s44, s[4:5], 0x1d4
	s_load_dword s42, s[4:5], 0x1d0
	s_load_dword s43, s[4:5], 0x1cc
	s_load_dword s49, s[4:5], 0x1c4
	s_load_dword s47, s[4:5], 0x1c0
	s_load_dword s53, s[4:5], 0x17c
	s_load_dword s48, s[4:5], 0x1bc
	s_load_dword s73, s[4:5], 0x1a4
	s_load_dword s72, s[4:5], 0x1a0
	s_load_dword s71, s[4:5], 0x19c
	s_load_dword s45, s[4:5], 0x194
	s_load_dword s52, s[4:5], 0x18c
	s_load_dword s54, s[4:5], 0x184
	s_load_dwordx2 s[28:29], s[4:5], 0x218
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u32 s25, 0
	v_cmp_eq_u32_e64 s[34:35], s25, 0
                                        ; implicit-def: $sgpr4_sgpr5
	s_cbranch_scc1 BB0_7
; %bb.1:
	v_mov_b32_e32 v3, 0xa0
	v_mov_b32_e32 v1, s28
	v_mov_b32_e32 v2, s29
	v_mad_i64_i32 v[1:2], s[0:1], s6, v3, v[1:2]
	v_readfirstlane_b32 s14, v1
	v_readfirstlane_b32 s15, v2
	s_load_dwordx2 s[0:1], s[14:15], 0x20
	s_load_dword s4, s[14:15], 0x2c
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_and_saveexec_b64 s[14:15], vcc
	s_cbranch_execz BB0_3
; %bb.2:
	v_mov_b32_e32 v5, 0xa0
	v_mov_b32_e32 v3, s28
	v_mov_b32_e32 v4, s29
	v_mad_i64_i32 v[3:4], s[16:17], s6, v5, v[3:4]
	v_readfirstlane_b32 s74, v3
	v_readfirstlane_b32 s75, v4
	v_readfirstlane_b32 s76, v1
	v_readfirstlane_b32 s77, v2
	s_load_dword s16, s[74:75], 0x28
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s17, s16, 31
	s_mul_i32 s18, s16, s26
	s_load_dwordx8 s[76:83], s[76:77], 0x0
	s_lshl_b64 s[16:17], s[16:17], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s16, s76, s16
	s_addc_u32 s17, s77, s17
	v_mov_b32_e32 v3, s16
	v_mov_b32_e32 v4, s17
	flat_load_dword v5, v[3:4]
	s_ashr_i32 s19, s18, 31
	s_lshl_b64 s[16:17], s[18:19], 2
	s_add_u32 s18, s80, s16
	s_addc_u32 s19, s81, s17
	v_mov_b32_e32 v3, s18
	v_mov_b32_e32 v4, s19
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[3:4], v5
	s_load_dword s18, s[74:75], 0x28
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s19, s18, 31
	s_lshl_b64 s[18:19], s[18:19], 2
	s_add_u32 s18, s78, s18
	s_addc_u32 s19, s79, s19
	v_mov_b32_e32 v3, s18
	v_mov_b32_e32 v4, s19
	flat_load_dword v5, v[3:4]
	s_add_u32 s16, s82, s16
	s_addc_u32 s17, s83, s17
	v_mov_b32_e32 v3, s16
	v_mov_b32_e32 v4, s17
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[3:4], v5
BB0_3:
	s_or_b64 exec, exec, s[14:15]
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s5, s4, 31
	s_lshl_b64 s[4:5], s[4:5], 2
	s_add_u32 s4, s0, s4
	s_addc_u32 s5, s1, s5
	v_cmp_gt_i32_e32 vcc, s7, v0
	s_and_saveexec_b64 s[14:15], vcc
	s_cbranch_execz BB0_6
; %bb.4:                                ; %.lr.ph1385
	v_mov_b32_e32 v5, 0xa0
	v_mov_b32_e32 v3, s28
	v_mov_b32_e32 v4, s29
	v_mad_i64_i32 v[3:4], s[0:1], s6, v5, v[3:4]
	v_add_u32_e32 v7, vcc, 40, v3
	v_addc_u32_e32 v8, vcc, 0, v4, vcc
	flat_load_dword v9, v[7:8]
	flat_load_dwordx4 v[3:6], v[1:2]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b64 v[1:2], 2, v[9:10]
	v_add_u32_e32 v3, vcc, v3, v1
	v_addc_u32_e32 v4, vcc, v4, v2, vcc
	v_add_u32_e32 v5, vcc, v5, v1
	v_addc_u32_e32 v6, vcc, v6, v2, vcc
	flat_load_dword v1, v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b64 s[16:17], 0
	s_ashr_i32 s3, s21, 31
	s_add_i32 s0, s21, s3
	s_xor_b32 s13, s0, s3
	s_sub_i32 s18, 0, s13
	v_mov_b32_e32 v3, v0
BB0_5:                                  ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v4, vcc, 1, v3
	v_cvt_f32_u32_e32 v5, s13
	v_mov_b32_e32 v6, s21
	v_mov_b32_e32 v7, s23
	v_ashrrev_i32_e32 v8, 31, v4
	v_xor_b32_e32 v9, s3, v8
	v_add_u32_e32 v10, vcc, v4, v8
	v_xor_b32_e32 v8, v10, v8
	v_rcp_iflag_f32_e32 v5, v5
	v_mul_f32_e32 v5, 0x4f7ffffe, v5
	v_cvt_u32_f32_e32 v5, v5
	v_mul_lo_u32 v10, s18, v5
	v_mul_hi_u32 v10, v5, v10
	v_add_u32_e32 v5, vcc, v10, v5
	v_mul_hi_u32 v5, v8, v5
	v_mul_lo_u32 v10, v5, s13
	v_add_u32_e32 v11, vcc, 1, v5
	v_sub_u32_e32 v8, vcc, v8, v10
	v_cmp_le_u32_e32 vcc, s13, v8
	v_cndmask_b32_e32 v5, v5, v11, vcc
	v_subrev_u32_e64 v10, s[0:1], s13, v8
	v_cndmask_b32_e32 v8, v8, v10, vcc
	v_add_u32_e32 v10, vcc, 1, v5
	v_cmp_le_u32_e32 vcc, s13, v8
	v_cndmask_b32_e32 v5, v5, v10, vcc
	v_xor_b32_e32 v5, v5, v9
	v_sub_u32_e32 v8, vcc, v5, v9
	v_mul_lo_u32 v8, v8, s21
	v_sub_u32_e32 v4, vcc, v4, v8
	v_cmp_eq_u32_e32 vcc, 0, v4
	v_cndmask_b32_e32 v6, v4, v6, vcc
	v_subb_u32_e32 v8, vcc, v5, v9, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v4, vcc, v6, v1
	v_add_u32_e32 v5, vcc, v8, v2
	v_subrev_u32_e32 v5, vcc, 26, v5
	v_mul_lo_u32 v5, v5, s24
	v_add_u32_e32 v4, vcc, v4, v5
	v_subrev_u32_e32 v4, vcc, 27, v4
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_u32_e32 v4, vcc, s22, v4
	v_addc_u32_e32 v5, vcc, v7, v5, vcc
	flat_load_dword v7, v[4:5]
	v_mov_b32_e32 v9, s5
	v_add_u32_e32 v3, vcc, 0x100, v3
	v_cmp_le_i32_e32 vcc, s7, v3
	s_or_b64 s[16:17], vcc, s[16:17]
	v_mul_lo_u32 v4, v8, s21
	v_add_u32_e32 v4, vcc, v6, v4
	v_add_u32_e32 v4, vcc, -1, v4
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_u32_e32 v4, vcc, s4, v4
	v_addc_u32_e32 v5, vcc, v9, v5, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[4:5], v7
	s_andn2_b64 exec, exec, s[16:17]
	s_cbranch_execnz BB0_5
BB0_6:                                  ; %Flow1815
	s_or_b64 exec, exec, s[14:15]
BB0_7:                                  ; %Flow1816
	s_xor_b64 s[0:1], s[34:35], -1
	s_andn2_b64 vcc, exec, s[0:1]
	v_mov_b32_e32 v7, s5
	v_mov_b32_e32 v6, s4
	s_cbranch_vccnz BB0_175
; %bb.8:
	v_mov_b32_e32 v3, 0xa0
	v_mov_b32_e32 v1, s28
	v_mov_b32_e32 v2, s29
	v_mad_i64_i32 v[4:5], s[0:1], s6, v3, v[1:2]
	v_add_u32_e32 v2, vcc, 40, v4
	v_addc_u32_e32 v3, vcc, 0, v5, vcc
	v_cmp_gt_i32_e32 vcc, s2, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz BB0_11
; %bb.9:                                ; %.lr.ph1381
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v6, s28
	v_mov_b32_e32 v7, s29
	v_mad_i64_i32 v[10:11], s[0:1], s6, v1, v[6:7]
	flat_load_dword v12, v[2:3]
	flat_load_dwordx4 v[6:9], v[4:5]
	v_add_u32_e32 v10, vcc, 48, v10
	v_addc_u32_e32 v11, vcc, 0, v11, vcc
	flat_load_dwordx2 v[10:11], v[10:11]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v13, 31, v12
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_u32_e32 v8, vcc, v8, v12
	v_addc_u32_e32 v9, vcc, v9, v13, vcc
	v_add_u32_e32 v6, vcc, v6, v12
	v_addc_u32_e32 v7, vcc, v7, v13, vcc
	flat_load_dword v12, v[6:7]
	flat_load_dword v1, v[8:9]
	s_not_b32 s0, s31
	v_lshlrev_b32_e32 v6, 2, v0
	s_mov_b64 s[14:15], 0
	s_ashr_i32 s3, s10, 31
	s_add_i32 s1, s10, s3
	s_xor_b32 s13, s1, s3
	s_sub_i32 s16, 0, s13
	v_add_u32_e32 v6, vcc, v10, v6
	v_addc_u32_e32 v7, vcc, 0, v11, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v1, vcc, s0, v1
	v_subrev_u32_e32 v8, vcc, s31, v12
	v_add_u32_e32 v8, vcc, -2, v8
	v_mov_b32_e32 v9, v0
BB0_10:                                 ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v10, vcc, 1, v9
	v_cvt_f32_u32_e32 v11, s13
	v_mov_b32_e32 v12, s10
	v_mov_b32_e32 v13, s23
	v_ashrrev_i32_e32 v14, 31, v10
	v_xor_b32_e32 v15, s3, v14
	v_add_u32_e32 v16, vcc, v10, v14
	v_xor_b32_e32 v14, v16, v14
	v_rcp_iflag_f32_e32 v11, v11
	v_mul_f32_e32 v11, 0x4f7ffffe, v11
	v_cvt_u32_f32_e32 v11, v11
	v_mul_lo_u32 v16, s16, v11
	v_mul_hi_u32 v16, v11, v16
	v_add_u32_e32 v11, vcc, v16, v11
	v_mul_hi_u32 v11, v14, v11
	v_mul_lo_u32 v16, v11, s13
	v_add_u32_e32 v17, vcc, 1, v11
	v_sub_u32_e32 v14, vcc, v14, v16
	v_cmp_le_u32_e32 vcc, s13, v14
	v_cndmask_b32_e32 v11, v11, v17, vcc
	v_subrev_u32_e64 v16, s[0:1], s13, v14
	v_cndmask_b32_e32 v14, v14, v16, vcc
	v_add_u32_e32 v16, vcc, 1, v11
	v_cmp_le_u32_e32 vcc, s13, v14
	v_cndmask_b32_e32 v11, v11, v16, vcc
	v_xor_b32_e32 v11, v11, v15
	v_sub_u32_e32 v11, vcc, v11, v15
	v_mul_lo_u32 v14, v11, s10
	v_add_u32_e32 v11, vcc, v1, v11
	v_sub_u32_e32 v10, vcc, v10, v14
	v_cmp_eq_u32_e32 vcc, 0, v10
	v_cndmask_b32_e32 v10, v10, v12, vcc
	v_subbrev_u32_e32 v11, vcc, 0, v11, vcc
	v_add_u32_e32 v10, vcc, v8, v10
	v_mul_lo_u32 v11, v11, s24
	v_add_u32_e32 v10, vcc, v10, v11
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_u32_e32 v10, vcc, s22, v10
	v_addc_u32_e32 v11, vcc, v13, v11, vcc
	flat_load_dword v10, v[10:11]
	v_add_u32_e32 v9, vcc, 0x100, v9
	v_cmp_le_i32_e32 vcc, s2, v9
	s_or_b64 s[14:15], vcc, s[14:15]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[6:7], v10
	v_add_u32_e32 v6, vcc, 0x400, v6
	v_addc_u32_e32 v7, vcc, 0, v7, vcc
	s_andn2_b64 exec, exec, s[14:15]
	s_cbranch_execnz BB0_10
BB0_11:                                 ; %Flow1810
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v6, s28
	v_mov_b32_e32 v7, s29
	v_mad_i64_i32 v[6:7], s[0:1], s6, v1, v[6:7]
	s_waitcnt vmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_add_u32_e32 v11, vcc, 32, v6
	v_addc_u32_e32 v12, vcc, 0, v7, vcc
	v_add_u32_e32 v6, vcc, 44, v6
	v_addc_u32_e32 v7, vcc, 0, v7, vcc
	flat_load_dwordx2 v[8:9], v[11:12]
	flat_load_dword v10, v[6:7]
	v_cmp_gt_i32_e32 vcc, s7, v0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[6:7], 2, v[10:11]
	v_add_u32_e64 v6, s[0:1], v8, v6
	v_addc_u32_e64 v7, s[0:1], v9, v7, s[0:1]
	s_mov_b32 m0, -1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz BB0_14
; %bb.12:                               ; %.lr.ph1377.preheader
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b64 s[4:5], 0
	s_ashr_i32 s13, s21, 31
	s_add_i32 s0, s21, s13
	s_xor_b32 s14, s0, s13
	s_sub_i32 s15, 0, s14
	v_mov_b32_e32 v12, v0
BB0_13:                                 ; %.lr.ph1377
                                        ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v13, vcc, 1, v12
	v_cvt_f32_u32_e32 v14, s14
	v_mov_b32_e32 v15, s21
	v_ashrrev_i32_e32 v16, 31, v13
	v_xor_b32_e32 v17, s13, v16
	v_add_u32_e32 v18, vcc, v13, v16
	v_xor_b32_e32 v16, v18, v16
	v_rcp_iflag_f32_e32 v14, v14
	v_mul_f32_e32 v14, 0x4f7ffffe, v14
	v_cvt_u32_f32_e32 v14, v14
	v_mul_lo_u32 v18, s15, v14
	v_mul_hi_u32 v18, v14, v18
	v_add_u32_e32 v14, vcc, v18, v14
	v_mul_hi_u32 v14, v16, v14
	v_mul_lo_u32 v18, v14, s14
	v_add_u32_e32 v19, vcc, 1, v14
	v_sub_u32_e32 v16, vcc, v16, v18
	v_cmp_le_u32_e32 vcc, s14, v16
	v_cndmask_b32_e32 v14, v14, v19, vcc
	v_subrev_u32_e64 v18, s[0:1], s14, v16
	v_cndmask_b32_e32 v16, v16, v18, vcc
	v_add_u32_e32 v18, vcc, 1, v14
	v_cmp_le_u32_e32 vcc, s14, v16
	v_cndmask_b32_e32 v14, v14, v18, vcc
	v_xor_b32_e32 v14, v14, v17
	v_sub_u32_e32 v14, vcc, v14, v17
	v_mul_lo_u32 v16, v14, s21
	v_not_b32_e32 v14, v14
	v_sub_u32_e32 v13, vcc, v13, v16
	v_cmp_eq_u32_e32 vcc, 0, v13
	v_addc_u32_e64 v14, s[0:1], v15, v14, vcc
	v_sub_u32_e64 v13, s[0:1], s21, v13
	v_mul_lo_u32 v14, v14, s21
	v_cndmask_b32_e64 v13, v13, 0, vcc
	v_add_u32_e32 v13, vcc, v13, v14
	v_ashrrev_i32_e32 v14, 31, v13
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_u32_e32 v13, vcc, v6, v13
	v_addc_u32_e32 v14, vcc, v7, v14, vcc
	flat_load_dword v13, v[13:14]
	v_add_u32_e32 v12, vcc, 0x100, v12
	v_cmp_le_i32_e32 vcc, s7, v12
	s_or_b64 s[4:5], vcc, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v1, v13
	v_add_u32_e32 v1, vcc, 0x400, v1
	s_andn2_b64 exec, exec, s[4:5]
	s_cbranch_execnz BB0_13
BB0_14:                                 ; %Flow1807
	s_or_b64 exec, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s[0:1], s46, v0
	s_and_saveexec_b64 s[14:15], s[0:1]
	s_cbranch_execz BB0_25
; %bb.15:                               ; %.lr.ph1373
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[14:15], s[2:3], s6, v1, v[12:13]
	s_sub_i32 s13, 1, s11
	v_add_u32_e32 v12, vcc, 48, v14
	v_addc_u32_e32 v13, vcc, 0, v15, vcc
	v_add_u32_e32 v14, vcc, 56, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	flat_load_dwordx2 v[14:15], v[14:15]
	s_sub_i32 s16, 0, s10
	s_add_i32 s17, s9, -1
	s_add_i32 s18, s11, s8
	s_sub_i32 s19, 0, s11
	s_lshl_b32 s51, s21, 2
	s_mov_b64 s[74:75], 0
	s_ashr_i32 s76, s12, 31
	s_add_i32 s2, s12, s76
	s_xor_b32 s77, s2, s76
	s_sub_i32 s78, 0, s77
	v_mov_b32_e32 v16, v0
	s_branch BB0_18
BB0_16:                                 ; %Flow1800
                                        ;   in Loop: Header=BB0_18 Depth=1
	s_or_b64 exec, exec, s[80:81]
BB0_17:                                 ; %Flow1801
                                        ;   in Loop: Header=BB0_18 Depth=1
	s_or_b64 exec, exec, s[4:5]
	v_mov_b32_e32 v17, 0
	v_lshlrev_b64 v[19:20], 2, v[16:17]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v19, vcc, v14, v19
	v_addc_u32_e32 v20, vcc, v15, v20, vcc
	v_add_u32_e32 v16, vcc, 0x100, v16
	v_cmp_le_i32_e32 vcc, s46, v16
	s_or_b64 s[74:75], vcc, s[74:75]
	flat_store_dword v[19:20], v18
	s_andn2_b64 exec, exec, s[74:75]
	s_cbranch_execz BB0_25
BB0_18:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_21 Depth 2
                                        ;       Child Loop BB0_23 Depth 3
	v_cvt_f32_u32_e32 v1, s77
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_mul_lo_u32 v17, s78, v1
	v_add_u32_e32 v18, vcc, 1, v16
	v_ashrrev_i32_e32 v19, 31, v18
	v_mul_hi_u32 v17, v1, v17
	v_add_u32_e32 v20, vcc, v18, v19
	v_xor_b32_e32 v20, v20, v19
	v_add_u32_e32 v1, vcc, v17, v1
	v_mul_hi_u32 v1, v20, v1
	v_mov_b32_e32 v17, s8
	v_xor_b32_e32 v21, s76, v19
	v_mul_lo_u32 v19, v1, s77
	v_add_u32_e32 v22, vcc, 1, v1
	v_sub_u32_e32 v19, vcc, v20, v19
	v_cmp_le_u32_e32 vcc, s77, v19
	v_cndmask_b32_e32 v1, v1, v22, vcc
	v_subrev_u32_e64 v20, s[2:3], s77, v19
	v_cndmask_b32_e32 v19, v19, v20, vcc
	v_add_u32_e32 v20, vcc, 1, v1
	v_cmp_le_u32_e32 vcc, s77, v19
	v_cndmask_b32_e32 v1, v1, v20, vcc
	v_xor_b32_e32 v22, v1, v21
	v_sub_u32_e32 v1, vcc, v22, v21
	v_mul_lo_u32 v19, v1, s12
	v_add_u32_e32 v20, vcc, s8, v1
	v_sub_u32_e32 v19, vcc, v18, v19
	v_cmp_eq_u32_e32 vcc, 0, v19
	v_cmp_ne_u32_e64 s[2:3], 0, v19
	v_cndmask_b32_e64 v24, 0, 1, s[2:3]
	v_addc_u32_e64 v23, s[4:5], v1, v17, s[2:3]
	v_mov_b32_e32 v1, s13
	v_addc_u32_e64 v1, s[2:3], v1, v20, s[2:3]
	v_cmp_gt_i32_e64 s[2:3], s11, v23
	v_cndmask_b32_e64 v17, v1, 1, s[2:3]
	v_min_i32_e32 v1, s30, v23
	v_cmp_le_i32_e64 s[2:3], v17, v1
	v_mov_b32_e32 v18, 0
	s_and_saveexec_b64 s[4:5], s[2:3]
	s_cbranch_execz BB0_17
; %bb.19:                               ; %.preheader1186.lr.ph
                                        ;   in Loop: Header=BB0_18 Depth=1
	v_mov_b32_e32 v18, s12
	v_cndmask_b32_e32 v18, v19, v18, vcc
	v_add_u32_e32 v20, vcc, s9, v18
	v_subrev_u32_e32 v19, vcc, s10, v20
	v_add_u32_e32 v19, vcc, 1, v19
	v_cmp_le_i32_e32 vcc, s10, v20
	v_cndmask_b32_e32 v25, 1, v19, vcc
	v_min_i32_e32 v19, s21, v20
	v_cmp_le_i32_e32 vcc, v25, v19
	v_max_i32_e32 v25, s10, v20
	v_add_u32_e64 v20, s[2:3], s16, v25
	v_add_u32_e64 v22, s[2:3], s18, v22
	v_add_u32_e64 v22, s[2:3], v22, v24
	v_sub_u32_e64 v21, s[2:3], v22, v21
	v_max_i32_e32 v22, s11, v23
	v_sub_u32_e64 v21, s[2:3], v21, v22
	v_mul_lo_u32 v21, s10, v21
	v_add_u32_e64 v18, s[2:3], s17, v18
	v_add_u32_e64 v18, s[2:3], v18, v21
	v_add_u32_e64 v21, s[2:3], s19, v22
	v_mul_lo_u32 v22, s21, v21
	v_sub_u32_e64 v21, s[2:3], v18, v25
	v_add_u32_e64 v18, s[2:3], v20, v22
	v_lshlrev_b32_e32 v22, 2, v18
	s_mov_b64 s[80:81], 0
	v_mov_b32_e32 v18, 0
	s_branch BB0_21
BB0_20:                                 ; %Flow1799
                                        ;   in Loop: Header=BB0_21 Depth=2
	s_or_b64 exec, exec, s[82:83]
	v_add_u32_e64 v23, s[2:3], 1, v17
	v_subrev_u32_e64 v21, s[2:3], s10, v21
	v_add_u32_e64 v22, s[2:3], s51, v22
	v_cmp_ge_i32_e64 s[2:3], v17, v1
	s_or_b64 s[80:81], s[2:3], s[80:81]
	v_mov_b32_e32 v17, v23
	s_andn2_b64 exec, exec, s[80:81]
	s_cbranch_execz BB0_16
BB0_21:                                 ; %.preheader1186
                                        ;   Parent Loop BB0_18 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_23 Depth 3
	s_and_saveexec_b64 s[82:83], vcc
	s_cbranch_execz BB0_20
; %bb.22:                               ; %.lr.ph1362
                                        ;   in Loop: Header=BB0_21 Depth=2
	flat_load_dwordx2 v[23:24], v[12:13]
	s_mov_b64 s[84:85], 0
	v_mov_b32_e32 v25, v22
	v_mov_b32_e32 v26, v21
	v_mov_b32_e32 v28, v20
BB0_23:                                 ;   Parent Loop BB0_18 Depth=1
                                        ;     Parent Loop BB0_21 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[29:30], 2, v[26:27]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e64 v29, s[2:3], v23, v29
	v_addc_u32_e64 v30, s[2:3], v24, v30, s[2:3]
	flat_load_dword v27, v[29:30]
	ds_read_b32 v29, v25
	v_add_u32_e64 v28, s[2:3], 1, v28
	v_add_u32_e64 v25, s[2:3], 4, v25
	v_add_u32_e64 v26, s[2:3], -1, v26
	v_cmp_ge_i32_e64 s[2:3], v28, v19
	s_or_b64 s[84:85], s[2:3], s[84:85]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v18, v29, v27, v18
	s_andn2_b64 exec, exec, s[84:85]
	s_cbranch_execnz BB0_23
; %bb.24:                               ; %Flow1798
                                        ;   in Loop: Header=BB0_21 Depth=2
	s_or_b64 exec, exec, s[84:85]
	s_branch BB0_20
BB0_25:                                 ; %Flow1804
	s_or_b64 exec, exec, s[14:15]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s[8:9], s68, v0
	s_and_saveexec_b64 s[4:5], s[8:9]
	s_cbranch_execz BB0_32
; %bb.26:                               ; %.lr.ph1357
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[14:15], s[2:3], s6, v1, v[12:13]
	s_add_i32 s12, s70, s10
	s_add_i32 s11, s69, s11
	v_add_u32_e32 v12, vcc, 0x48, v14
	v_addc_u32_e32 v13, vcc, 0, v15, vcc
	s_not_b32 s13, s70
	v_add_u32_e32 v14, vcc, 48, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	v_lshlrev_b32_e32 v1, 2, v0
	v_mov_b32_e32 v16, 0
	s_mov_b64 s[14:15], 0
	s_ashr_i32 s16, s60, 31
	s_add_i32 s2, s60, s16
	s_xor_b32 s17, s2, s16
	s_sub_i32 s18, 0, s17
	v_mov_b32_e32 v17, v0
	s_branch BB0_28
BB0_27:                                 ;   in Loop: Header=BB0_28 Depth=1
	s_or_b64 exec, exec, s[2:3]
	v_add_u32_e32 v17, vcc, 0x100, v17
	v_add_u32_e32 v1, vcc, 0x400, v1
	v_cmp_le_i32_e64 s[2:3], s68, v17
	s_or_b64 s[14:15], s[2:3], s[14:15]
	v_addc_u32_e32 v16, vcc, 0, v16, vcc
	s_andn2_b64 exec, exec, s[14:15]
	s_cbranch_execz BB0_32
BB0_28:                                 ; =>This Inner Loop Header: Depth=1
	v_cvt_f32_u32_e32 v18, s17
	v_rcp_iflag_f32_e32 v18, v18
	v_mul_f32_e32 v18, 0x4f7ffffe, v18
	v_cvt_u32_f32_e32 v18, v18
	v_mul_lo_u32 v19, s18, v18
	v_add_u32_e32 v20, vcc, 1, v17
	v_ashrrev_i32_e32 v21, 31, v20
	v_mul_hi_u32 v19, v18, v19
	v_add_u32_e32 v22, vcc, v20, v21
	v_xor_b32_e32 v22, v22, v21
	v_add_u32_e32 v18, vcc, v19, v18
	v_mul_hi_u32 v18, v22, v18
	v_xor_b32_e32 v19, s16, v21
	v_mul_lo_u32 v21, v18, s17
	v_add_u32_e32 v23, vcc, 1, v18
	v_sub_u32_e32 v21, vcc, v22, v21
	v_cmp_le_u32_e32 vcc, s17, v21
	v_cndmask_b32_e32 v18, v18, v23, vcc
	v_subrev_u32_e64 v22, s[2:3], s17, v21
	v_cndmask_b32_e32 v21, v21, v22, vcc
	v_add_u32_e32 v22, vcc, 1, v18
	v_cmp_le_u32_e32 vcc, s17, v21
	v_cndmask_b32_e32 v18, v18, v22, vcc
	v_xor_b32_e32 v21, v18, v19
	v_sub_u32_e32 v18, vcc, v21, v19
	v_mul_lo_u32 v18, v18, s60
	v_mov_b32_e32 v22, s60
	v_sub_u32_e32 v18, vcc, v20, v18
	v_cmp_eq_u32_e32 vcc, 0, v18
	v_cndmask_b32_e32 v18, v18, v22, vcc
	v_subb_u32_e32 v19, vcc, v21, v19, vcc
	v_cmp_ge_i32_e32 vcc, s70, v18
	v_cmp_lt_i32_e64 s[2:3], s12, v18
	s_or_b64 s[2:3], vcc, s[2:3]
	v_cmp_gt_i32_e32 vcc, s69, v19
	s_or_b64 s[2:3], s[2:3], vcc
	v_cmp_le_i32_e32 vcc, s11, v19
	s_or_b64 s[2:3], vcc, s[2:3]
	s_and_saveexec_b64 s[74:75], s[2:3]
	s_xor_b64 s[2:3], exec, s[74:75]
	s_cbranch_execz BB0_30
; %bb.29:                               ;   in Loop: Header=BB0_28 Depth=1
	flat_load_dwordx2 v[20:21], v[12:13]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v20, vcc, v20, v1
	v_addc_u32_e32 v21, vcc, v21, v16, vcc
	v_mov_b32_e32 v22, 0
	flat_store_dword v[20:21], v22
BB0_30:                                 ; %Flow1794
                                        ;   in Loop: Header=BB0_28 Depth=1
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_27
; %bb.31:                               ;   in Loop: Header=BB0_28 Depth=1
	v_add_u32_e32 v22, vcc, s13, v18
	v_subrev_u32_e32 v18, vcc, s69, v19
	v_mul_lo_u32 v23, v18, s10
	flat_load_dwordx2 v[18:19], v[14:15]
	flat_load_dwordx2 v[20:21], v[12:13]
	v_add_u32_e32 v22, vcc, v22, v23
	v_ashrrev_i32_e32 v23, 31, v22
	v_lshlrev_b64 v[22:23], 2, v[22:23]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v18, vcc, v18, v22
	v_addc_u32_e32 v19, vcc, v19, v23, vcc
	flat_load_dword v22, v[18:19]
	v_add_u32_e32 v18, vcc, v20, v1
	v_addc_u32_e32 v19, vcc, v21, v16, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[18:19], v22
	s_branch BB0_27
BB0_32:                                 ; %Flow1797
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s[10:11], s67, v0
	s_and_saveexec_b64 s[2:3], s[10:11]
	s_cbranch_execz BB0_39
; %bb.33:                               ; %.lr.ph1352
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[4:5], s6, v1, v[12:13]
	v_add_u32_e32 v12, vcc, 0x48, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	v_cmp_gt_i32_e64 s[4:5], s60, 0
	v_mul_lo_u32 v14, s60, v0
	s_lshl_b32 s12, s60, 8
	s_mov_b64 s[14:15], 0
	v_mov_b32_e32 v1, v0
	s_branch BB0_35
BB0_34:                                 ; %._crit_edge1349
                                        ;   in Loop: Header=BB0_35 Depth=1
	v_add_u32_e32 v1, vcc, 0x100, v1
	v_cmp_le_i32_e32 vcc, s67, v1
	s_or_b64 s[14:15], vcc, s[14:15]
	v_add_u32_e32 v14, vcc, s12, v14
	s_andn2_b64 exec, exec, s[14:15]
	s_cbranch_execz BB0_39
BB0_35:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_37 Depth 2
	s_andn2_b64 vcc, exec, s[4:5]
	v_ashrrev_i32_e32 v15, 31, v14
	s_cbranch_vccnz BB0_34
; %bb.36:                               ; %.lr.ph1348
                                        ;   in Loop: Header=BB0_35 Depth=1
	flat_load_dwordx2 v[17:18], v[12:13]
	v_mul_lo_u32 v16, v1, s60
	v_lshlrev_b64 v[19:20], 2, v[14:15]
	s_mov_b64 s[16:17], 0
	v_add_u32_e32 v15, vcc, s60, v16
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v17, vcc, v17, v19
	v_addc_u32_e32 v18, vcc, v18, v20, vcc
	v_mov_b32_e32 v19, 0
BB0_37:                                 ;   Parent Loop BB0_35 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	flat_load_dword v20, v[17:18]
	v_add_u32_e32 v16, vcc, 1, v16
	v_cmp_ge_i32_e32 vcc, v16, v15
	s_or_b64 s[16:17], vcc, s[16:17]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v19, v19, v20
	flat_store_dword v[17:18], v19
	v_add_u32_e32 v17, vcc, 4, v17
	v_addc_u32_e32 v18, vcc, 0, v18, vcc
	s_andn2_b64 exec, exec, s[16:17]
	s_cbranch_execnz BB0_37
; %bb.38:                               ; %Flow1789
                                        ;   in Loop: Header=BB0_35 Depth=1
	s_or_b64 exec, exec, s[16:17]
	s_branch BB0_34
BB0_39:                                 ; %Flow1793
	s_or_b64 exec, exec, s[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s[12:13], s63, v0
	s_and_saveexec_b64 s[4:5], s[12:13]
	s_cbranch_execz BB0_42
; %bb.40:                               ; %.lr.ph1343
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[2:3], s6, v1, v[12:13]
	v_add_u32_e32 v12, vcc, 0x48, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	flat_load_dwordx4 v[12:15], v[12:13]
	s_add_i32 s14, s66, -1
	s_add_i32 s15, s65, -2
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b64 s[16:17], 0
	s_ashr_i32 s18, s64, 31
	s_add_i32 s2, s64, s18
	s_xor_b32 s19, s2, s18
	s_sub_i32 s51, 0, s19
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v14, vcc, v14, v1
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	v_mov_b32_e32 v1, v0
BB0_41:                                 ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v16, vcc, 1, v1
	v_cvt_f32_u32_e32 v17, s19
	v_mov_b32_e32 v18, s64
	v_ashrrev_i32_e32 v19, 31, v16
	v_xor_b32_e32 v20, s18, v19
	v_add_u32_e32 v21, vcc, v16, v19
	v_xor_b32_e32 v19, v21, v19
	v_rcp_iflag_f32_e32 v17, v17
	v_mul_f32_e32 v17, 0x4f7ffffe, v17
	v_cvt_u32_f32_e32 v17, v17
	v_mul_lo_u32 v21, s51, v17
	v_mul_hi_u32 v21, v17, v21
	v_add_u32_e32 v17, vcc, v21, v17
	v_mul_hi_u32 v17, v19, v17
	v_mul_lo_u32 v21, v17, s19
	v_add_u32_e32 v22, vcc, 1, v17
	v_sub_u32_e32 v19, vcc, v19, v21
	v_cmp_le_u32_e32 vcc, s19, v19
	v_cndmask_b32_e32 v17, v17, v22, vcc
	v_subrev_u32_e64 v21, s[2:3], s19, v19
	v_cndmask_b32_e32 v19, v19, v21, vcc
	v_add_u32_e32 v21, vcc, 1, v17
	v_cmp_le_u32_e32 vcc, s19, v19
	v_cndmask_b32_e32 v17, v17, v21, vcc
	v_xor_b32_e32 v17, v17, v20
	v_sub_u32_e32 v17, vcc, v17, v20
	v_mul_lo_u32 v19, v17, s64
	v_add_u32_e32 v17, vcc, s14, v17
	v_sub_u32_e32 v16, vcc, v16, v19
	v_cmp_eq_u32_e32 vcc, 0, v16
	v_cndmask_b32_e32 v16, v16, v18, vcc
	v_subbrev_u32_e32 v17, vcc, 0, v17, vcc
	v_add_u32_e32 v16, vcc, s15, v16
	v_mul_lo_u32 v17, v17, s60
	v_add_u32_e32 v16, vcc, v16, v17
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_u32_e32 v16, vcc, v12, v16
	v_addc_u32_e32 v17, vcc, v13, v17, vcc
	flat_load_dword v16, v[16:17]
	v_add_u32_e32 v1, vcc, 0x100, v1
	v_cmp_le_i32_e32 vcc, s63, v1
	s_or_b64 s[16:17], vcc, s[16:17]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[14:15], v16
	v_add_u32_e32 v14, vcc, 0x400, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	s_andn2_b64 exec, exec, s[16:17]
	s_cbranch_execnz BB0_41
BB0_42:                                 ; %Flow1787
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s[4:5], s59, v0
	s_and_saveexec_b64 s[14:15], s[4:5]
	s_cbranch_execz BB0_45
; %bb.43:                               ; %.lr.ph1339
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[2:3], s6, v1, v[12:13]
	v_add_u32_e32 v14, vcc, 0x48, v12
	v_addc_u32_e32 v15, vcc, 0, v13, vcc
	v_add_u32_e32 v16, vcc, 0x58, v12
	v_addc_u32_e32 v17, vcc, 0, v13, vcc
	flat_load_dwordx2 v[12:13], v[14:15]
	flat_load_dwordx2 v[18:19], v[16:17]
	s_add_i32 s16, s62, -1
	s_add_i32 s17, s61, -2
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b64 s[18:19], 0
	s_ashr_i32 s51, s50, 31
	s_add_i32 s2, s50, s51
	s_xor_b32 s74, s2, s51
	s_sub_i32 s75, 0, s74
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v14, vcc, v18, v1
	v_addc_u32_e32 v15, vcc, 0, v19, vcc
	v_mov_b32_e32 v1, v0
BB0_44:                                 ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v16, vcc, 1, v1
	v_cvt_f32_u32_e32 v17, s74
	v_mov_b32_e32 v18, s50
	v_ashrrev_i32_e32 v19, 31, v16
	v_xor_b32_e32 v20, s51, v19
	v_add_u32_e32 v21, vcc, v16, v19
	v_xor_b32_e32 v19, v21, v19
	v_rcp_iflag_f32_e32 v17, v17
	v_mul_f32_e32 v17, 0x4f7ffffe, v17
	v_cvt_u32_f32_e32 v17, v17
	v_mul_lo_u32 v21, s75, v17
	v_mul_hi_u32 v21, v17, v21
	v_add_u32_e32 v17, vcc, v21, v17
	v_mul_hi_u32 v17, v19, v17
	v_mul_lo_u32 v21, v17, s74
	v_add_u32_e32 v22, vcc, 1, v17
	v_sub_u32_e32 v19, vcc, v19, v21
	v_cmp_le_u32_e32 vcc, s74, v19
	v_cndmask_b32_e32 v17, v17, v22, vcc
	v_subrev_u32_e64 v21, s[2:3], s74, v19
	v_cndmask_b32_e32 v19, v19, v21, vcc
	v_add_u32_e32 v21, vcc, 1, v17
	v_cmp_le_u32_e32 vcc, s74, v19
	v_cndmask_b32_e32 v17, v17, v21, vcc
	v_xor_b32_e32 v17, v17, v20
	v_sub_u32_e32 v17, vcc, v17, v20
	v_mul_lo_u32 v19, v17, s50
	v_add_u32_e32 v17, vcc, s16, v17
	v_sub_u32_e32 v16, vcc, v16, v19
	v_cmp_eq_u32_e32 vcc, 0, v16
	v_cndmask_b32_e32 v16, v16, v18, vcc
	v_subbrev_u32_e32 v17, vcc, 0, v17, vcc
	v_add_u32_e32 v16, vcc, s17, v16
	v_mul_lo_u32 v17, v17, s60
	v_add_u32_e32 v16, vcc, v16, v17
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_u32_e32 v16, vcc, v12, v16
	v_addc_u32_e32 v17, vcc, v13, v17, vcc
	flat_load_dword v16, v[16:17]
	v_add_u32_e32 v1, vcc, 0x100, v1
	v_cmp_le_i32_e32 vcc, s59, v1
	s_or_b64 s[18:19], vcc, s[18:19]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[14:15], v16
	v_add_u32_e32 v14, vcc, 0x400, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	s_andn2_b64 exec, exec, s[18:19]
	s_cbranch_execnz BB0_44
BB0_45:                                 ; %Flow1784
	s_or_b64 exec, exec, s[14:15]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[2:3], s[4:5]
	s_cbranch_execz BB0_48
; %bb.46:                               ; %.lr.ph1335
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[14:15], s6, v1, v[12:13]
	v_add_u32_e32 v12, vcc, 0x50, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	flat_load_dwordx4 v[12:15], v[12:13]
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b64 s[14:15], 0
	s_movk_i32 s16, 0x400
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v12, vcc, v12, v1
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	v_add_u32_e32 v14, vcc, v14, v1
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	v_mov_b32_e32 v1, v0
BB0_47:                                 ; =>This Inner Loop Header: Depth=1
	flat_load_dword v16, v[12:13]
	flat_load_dword v17, v[14:15]
	v_add_u32_e32 v1, vcc, 0x100, v1
	v_add_u32_e32 v12, vcc, s16, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	v_cmp_le_i32_e32 vcc, s59, v1
	s_or_b64 s[14:15], vcc, s[14:15]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_f32_e32 v16, v16, v17
	flat_store_dword v[14:15], v16
	v_add_u32_e32 v14, vcc, s16, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	s_andn2_b64 exec, exec, s[14:15]
	s_cbranch_execnz BB0_47
BB0_48:                                 ; %Flow1781
	s_or_b64 exec, exec, s[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s[14:15], s50, v0
	s_and_saveexec_b64 s[2:3], s[14:15]
	s_cbranch_execz BB0_55
; %bb.49:                               ; %.preheader1185.lr.ph
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[16:17], s6, v1, v[12:13]
	v_add_u32_e32 v12, vcc, 0x58, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	v_cmp_gt_i32_e64 s[16:17], s59, 0
	v_mov_b32_e32 v1, 0
	s_ashr_i32 s51, s50, 31
	s_lshl_b64 s[18:19], s[50:51], 2
	s_mov_b64 s[74:75], 0
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v14, v0
	s_branch BB0_51
BB0_50:                                 ; %._crit_edge1329
                                        ;   in Loop: Header=BB0_51 Depth=1
	v_add_u32_e32 v14, vcc, 0x100, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	v_cmp_le_i32_e32 vcc, s50, v14
	s_or_b64 s[74:75], vcc, s[74:75]
	s_andn2_b64 exec, exec, s[74:75]
	s_cbranch_execz BB0_55
BB0_51:                                 ; %.preheader1185
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_53 Depth 2
	s_andn2_b64 vcc, exec, s[16:17]
	s_cbranch_vccnz BB0_50
; %bb.52:                               ; %.lr.ph1328
                                        ;   in Loop: Header=BB0_51 Depth=1
	flat_load_dwordx2 v[17:18], v[12:13]
	v_add_u32_e32 v1, vcc, s59, v14
	v_lshlrev_b64 v[19:20], 2, v[14:15]
	s_mov_b64 s[76:77], 0
	v_mov_b32_e32 v16, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v17, vcc, v17, v19
	v_addc_u32_e32 v18, vcc, v18, v20, vcc
	v_mov_b32_e32 v19, v14
BB0_53:                                 ;   Parent Loop BB0_51 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	flat_load_dword v20, v[17:18]
	v_add_u32_e32 v19, vcc, s50, v19
	v_mov_b32_e32 v21, s19
	v_cmp_ge_i32_e32 vcc, v19, v1
	s_or_b64 s[76:77], vcc, s[76:77]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v16, v16, v20
	flat_store_dword v[17:18], v16
	v_add_u32_e32 v17, vcc, s18, v17
	v_addc_u32_e32 v18, vcc, v18, v21, vcc
	s_andn2_b64 exec, exec, s[76:77]
	s_cbranch_execnz BB0_53
; %bb.54:                               ; %Flow1774
                                        ;   in Loop: Header=BB0_51 Depth=1
	s_or_b64 exec, exec, s[76:77]
	s_branch BB0_50
BB0_55:                                 ; %Flow1778
	s_or_b64 exec, exec, s[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s[16:17], s56, v0
	s_and_saveexec_b64 s[18:19], s[16:17]
	s_cbranch_execz BB0_58
; %bb.56:                               ; %.lr.ph1324
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[2:3], s6, v1, v[12:13]
	v_add_u32_e32 v12, vcc, 0x58, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	flat_load_dwordx4 v[12:15], v[12:13]
	s_add_i32 s51, s58, -1
	s_add_i32 s74, s57, -2
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b64 s[76:77], 0
	s_ashr_i32 s75, s55, 31
	s_add_i32 s2, s55, s75
	s_xor_b32 s78, s2, s75
	s_sub_i32 s79, 0, s78
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v14, vcc, v14, v1
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	v_mov_b32_e32 v1, v0
BB0_57:                                 ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v16, vcc, 1, v1
	v_cvt_f32_u32_e32 v17, s78
	v_mov_b32_e32 v18, s55
	v_ashrrev_i32_e32 v19, 31, v16
	v_xor_b32_e32 v20, s75, v19
	v_add_u32_e32 v21, vcc, v16, v19
	v_xor_b32_e32 v19, v21, v19
	v_rcp_iflag_f32_e32 v17, v17
	v_mul_f32_e32 v17, 0x4f7ffffe, v17
	v_cvt_u32_f32_e32 v17, v17
	v_mul_lo_u32 v21, s79, v17
	v_mul_hi_u32 v21, v17, v21
	v_add_u32_e32 v17, vcc, v21, v17
	v_mul_hi_u32 v17, v19, v17
	v_mul_lo_u32 v21, v17, s78
	v_add_u32_e32 v22, vcc, 1, v17
	v_sub_u32_e32 v19, vcc, v19, v21
	v_cmp_le_u32_e32 vcc, s78, v19
	v_cndmask_b32_e32 v17, v17, v22, vcc
	v_subrev_u32_e64 v21, s[2:3], s78, v19
	v_cndmask_b32_e32 v19, v19, v21, vcc
	v_add_u32_e32 v21, vcc, 1, v17
	v_cmp_le_u32_e32 vcc, s78, v19
	v_cndmask_b32_e32 v17, v17, v21, vcc
	v_xor_b32_e32 v17, v17, v20
	v_sub_u32_e32 v17, vcc, v17, v20
	v_mul_lo_u32 v19, v17, s55
	v_add_u32_e32 v17, vcc, s51, v17
	v_sub_u32_e32 v16, vcc, v16, v19
	v_cmp_eq_u32_e32 vcc, 0, v16
	v_cndmask_b32_e32 v16, v16, v18, vcc
	v_subbrev_u32_e32 v17, vcc, 0, v17, vcc
	v_add_u32_e32 v16, vcc, s74, v16
	v_mul_lo_u32 v17, v17, s50
	v_add_u32_e32 v16, vcc, v16, v17
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_u32_e32 v16, vcc, v12, v16
	v_addc_u32_e32 v17, vcc, v13, v17, vcc
	flat_load_dword v16, v[16:17]
	v_add_u32_e32 v1, vcc, 0x100, v1
	v_cmp_le_i32_e32 vcc, s56, v1
	s_or_b64 s[76:77], vcc, s[76:77]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[14:15], v16
	v_add_u32_e32 v14, vcc, 0x400, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	s_andn2_b64 exec, exec, s[76:77]
	s_cbranch_execnz BB0_57
BB0_58:                                 ; %Flow1772
	s_or_b64 exec, exec, s[18:19]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s[2:3], s45, v0
	s_and_saveexec_b64 s[74:75], s[2:3]
	s_cbranch_execz BB0_61
; %bb.59:                               ; %.lr.ph1320
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[18:19], s6, v1, v[12:13]
	v_add_u32_e32 v14, vcc, 0x58, v12
	v_addc_u32_e32 v15, vcc, 0, v13, vcc
	v_add_u32_e32 v16, vcc, 0x68, v12
	v_addc_u32_e32 v17, vcc, 0, v13, vcc
	flat_load_dwordx2 v[12:13], v[14:15]
	flat_load_dwordx2 v[18:19], v[16:17]
	s_add_i32 s51, s54, -1
	s_add_i32 s76, s53, -2
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b64 s[78:79], 0
	s_ashr_i32 s77, s52, 31
	s_add_i32 s18, s52, s77
	s_xor_b32 s80, s18, s77
	s_sub_i32 s81, 0, s80
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v14, vcc, v18, v1
	v_addc_u32_e32 v15, vcc, 0, v19, vcc
	v_mov_b32_e32 v1, v0
BB0_60:                                 ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v16, vcc, 1, v1
	v_cvt_f32_u32_e32 v17, s80
	v_mov_b32_e32 v18, s52
	v_ashrrev_i32_e32 v19, 31, v16
	v_xor_b32_e32 v20, s77, v19
	v_add_u32_e32 v21, vcc, v16, v19
	v_xor_b32_e32 v19, v21, v19
	v_rcp_iflag_f32_e32 v17, v17
	v_mul_f32_e32 v17, 0x4f7ffffe, v17
	v_cvt_u32_f32_e32 v17, v17
	v_mul_lo_u32 v21, s81, v17
	v_mul_hi_u32 v21, v17, v21
	v_add_u32_e32 v17, vcc, v21, v17
	v_mul_hi_u32 v17, v19, v17
	v_mul_lo_u32 v21, v17, s80
	v_add_u32_e32 v22, vcc, 1, v17
	v_sub_u32_e32 v19, vcc, v19, v21
	v_cmp_le_u32_e32 vcc, s80, v19
	v_cndmask_b32_e32 v17, v17, v22, vcc
	v_subrev_u32_e64 v21, s[18:19], s80, v19
	v_cndmask_b32_e32 v19, v19, v21, vcc
	v_add_u32_e32 v21, vcc, 1, v17
	v_cmp_le_u32_e32 vcc, s80, v19
	v_cndmask_b32_e32 v17, v17, v21, vcc
	v_xor_b32_e32 v17, v17, v20
	v_sub_u32_e32 v17, vcc, v17, v20
	v_mul_lo_u32 v19, v17, s52
	v_add_u32_e32 v17, vcc, s51, v17
	v_sub_u32_e32 v16, vcc, v16, v19
	v_cmp_eq_u32_e32 vcc, 0, v16
	v_cndmask_b32_e32 v16, v16, v18, vcc
	v_subbrev_u32_e32 v17, vcc, 0, v17, vcc
	v_add_u32_e32 v16, vcc, s76, v16
	v_mul_lo_u32 v17, v17, s50
	v_add_u32_e32 v16, vcc, v16, v17
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_u32_e32 v16, vcc, v12, v16
	v_addc_u32_e32 v17, vcc, v13, v17, vcc
	flat_load_dword v16, v[16:17]
	v_add_u32_e32 v1, vcc, 0x100, v1
	v_cmp_le_i32_e32 vcc, s45, v1
	s_or_b64 s[78:79], vcc, s[78:79]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[14:15], v16
	v_add_u32_e32 v14, vcc, 0x400, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	s_andn2_b64 exec, exec, s[78:79]
	s_cbranch_execnz BB0_60
BB0_61:                                 ; %Flow1769
	s_or_b64 exec, exec, s[74:75]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[18:19], s[2:3]
	s_cbranch_execz BB0_64
; %bb.62:                               ; %.lr.ph1316
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[74:75], s6, v1, v[12:13]
	v_add_u32_e32 v12, vcc, 0x60, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	flat_load_dwordx4 v[12:15], v[12:13]
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b64 s[74:75], 0
	s_movk_i32 s51, 0x400
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v12, vcc, v12, v1
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	v_add_u32_e32 v14, vcc, v14, v1
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	v_mov_b32_e32 v1, v0
BB0_63:                                 ; =>This Inner Loop Header: Depth=1
	flat_load_dword v16, v[12:13]
	flat_load_dword v17, v[14:15]
	v_add_u32_e32 v1, vcc, 0x100, v1
	v_add_u32_e32 v12, vcc, s51, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	v_cmp_le_i32_e32 vcc, s45, v1
	s_or_b64 s[74:75], vcc, s[74:75]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_f32_e32 v16, v16, v17
	flat_store_dword v[14:15], v16
	v_add_u32_e32 v14, vcc, s51, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	s_andn2_b64 exec, exec, s[74:75]
	s_cbranch_execnz BB0_63
BB0_64:                                 ; %Flow1766
	s_or_b64 exec, exec, s[18:19]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s73, v0
	s_and_saveexec_b64 s[18:19], vcc
	s_cbranch_execz BB0_67
; %bb.65:                               ; %.lr.ph1312
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[74:75], s6, v1, v[12:13]
	v_add_u32_e32 v14, vcc, 48, v12
	v_addc_u32_e32 v15, vcc, 0, v13, vcc
	s_movk_i32 s51, 0x70
	v_add_u32_e32 v12, vcc, s51, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	flat_load_dwordx2 v[16:17], v[14:15]
	flat_load_dwordx2 v[18:19], v[12:13]
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b64 s[74:75], 0
	s_movk_i32 s51, 0x400
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_u32_e32 v12, vcc, v16, v1
	v_addc_u32_e32 v13, vcc, 0, v17, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v14, vcc, v18, v1
	v_addc_u32_e32 v15, vcc, 0, v19, vcc
	v_mov_b32_e32 v1, v0
BB0_66:                                 ; =>This Inner Loop Header: Depth=1
	flat_load_dword v16, v[12:13]
	v_add_u32_e32 v1, vcc, 0x100, v1
	v_add_u32_e32 v12, vcc, s51, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	v_cmp_le_i32_e32 vcc, s73, v1
	s_or_b64 s[74:75], vcc, s[74:75]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v16, v16, v16
	flat_store_dword v[14:15], v16
	v_add_u32_e32 v14, vcc, s51, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	s_andn2_b64 exec, exec, s[74:75]
	s_cbranch_execnz BB0_66
BB0_67:                                 ; %Flow1763
	s_or_b64 exec, exec, s[18:19]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[18:19], s[8:9]
	s_cbranch_execz BB0_74
; %bb.68:                               ; %.lr.ph1308
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[14:15], s[8:9], s6, v1, v[12:13]
	s_add_i32 s51, s70, s71
	s_add_i32 s72, s69, s72
	v_add_u32_e32 v12, vcc, 0x48, v14
	v_addc_u32_e32 v13, vcc, 0, v15, vcc
	s_not_b32 s73, s70
	v_add_u32_e32 v14, vcc, 0x70, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	v_lshlrev_b32_e32 v1, 2, v0
	v_mov_b32_e32 v16, 0
	s_mov_b64 s[74:75], 0
	s_ashr_i32 s76, s60, 31
	s_add_i32 s8, s60, s76
	s_xor_b32 s77, s8, s76
	s_sub_i32 s78, 0, s77
	v_mov_b32_e32 v17, v0
	s_branch BB0_70
BB0_69:                                 ;   in Loop: Header=BB0_70 Depth=1
	s_or_b64 exec, exec, s[8:9]
	v_add_u32_e32 v17, vcc, 0x100, v17
	v_add_u32_e32 v1, vcc, 0x400, v1
	v_cmp_le_i32_e64 s[8:9], s68, v17
	s_or_b64 s[74:75], s[8:9], s[74:75]
	v_addc_u32_e32 v16, vcc, 0, v16, vcc
	s_andn2_b64 exec, exec, s[74:75]
	s_cbranch_execz BB0_74
BB0_70:                                 ; =>This Inner Loop Header: Depth=1
	v_cvt_f32_u32_e32 v18, s77
	v_rcp_iflag_f32_e32 v18, v18
	v_mul_f32_e32 v18, 0x4f7ffffe, v18
	v_cvt_u32_f32_e32 v18, v18
	v_mul_lo_u32 v19, s78, v18
	v_add_u32_e32 v20, vcc, 1, v17
	v_ashrrev_i32_e32 v21, 31, v20
	v_mul_hi_u32 v19, v18, v19
	v_add_u32_e32 v22, vcc, v20, v21
	v_xor_b32_e32 v22, v22, v21
	v_add_u32_e32 v18, vcc, v19, v18
	v_mul_hi_u32 v18, v22, v18
	v_xor_b32_e32 v19, s76, v21
	v_mul_lo_u32 v21, v18, s77
	v_add_u32_e32 v23, vcc, 1, v18
	v_sub_u32_e32 v21, vcc, v22, v21
	v_cmp_le_u32_e32 vcc, s77, v21
	v_cndmask_b32_e32 v18, v18, v23, vcc
	v_subrev_u32_e64 v22, s[8:9], s77, v21
	v_cndmask_b32_e32 v21, v21, v22, vcc
	v_add_u32_e32 v22, vcc, 1, v18
	v_cmp_le_u32_e32 vcc, s77, v21
	v_cndmask_b32_e32 v18, v18, v22, vcc
	v_xor_b32_e32 v21, v18, v19
	v_sub_u32_e32 v18, vcc, v21, v19
	v_mul_lo_u32 v18, v18, s60
	v_mov_b32_e32 v22, s60
	v_sub_u32_e32 v18, vcc, v20, v18
	v_cmp_eq_u32_e32 vcc, 0, v18
	v_cndmask_b32_e32 v18, v18, v22, vcc
	v_subb_u32_e32 v19, vcc, v21, v19, vcc
	v_cmp_ge_i32_e32 vcc, s70, v18
	v_cmp_lt_i32_e64 s[8:9], s51, v18
	s_or_b64 s[8:9], vcc, s[8:9]
	v_cmp_gt_i32_e32 vcc, s69, v19
	s_or_b64 s[8:9], s[8:9], vcc
	v_cmp_le_i32_e32 vcc, s72, v19
	s_or_b64 s[8:9], vcc, s[8:9]
	s_and_saveexec_b64 s[80:81], s[8:9]
	s_xor_b64 s[8:9], exec, s[80:81]
	s_cbranch_execz BB0_72
; %bb.71:                               ;   in Loop: Header=BB0_70 Depth=1
	flat_load_dwordx2 v[20:21], v[12:13]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v20, vcc, v20, v1
	v_addc_u32_e32 v21, vcc, v21, v16, vcc
	v_mov_b32_e32 v22, 0
	flat_store_dword v[20:21], v22
BB0_72:                                 ; %Flow1757
                                        ;   in Loop: Header=BB0_70 Depth=1
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_69
; %bb.73:                               ;   in Loop: Header=BB0_70 Depth=1
	v_add_u32_e32 v22, vcc, s73, v18
	v_subrev_u32_e32 v18, vcc, s69, v19
	v_mul_lo_u32 v23, v18, s71
	flat_load_dwordx2 v[18:19], v[14:15]
	flat_load_dwordx2 v[20:21], v[12:13]
	v_add_u32_e32 v22, vcc, v22, v23
	v_ashrrev_i32_e32 v23, 31, v22
	v_lshlrev_b64 v[22:23], 2, v[22:23]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v18, vcc, v18, v22
	v_addc_u32_e32 v19, vcc, v19, v23, vcc
	flat_load_dword v22, v[18:19]
	v_add_u32_e32 v18, vcc, v20, v1
	v_addc_u32_e32 v19, vcc, v21, v16, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[18:19], v22
	s_branch BB0_69
BB0_74:                                 ; %Flow1760
	s_or_b64 exec, exec, s[18:19]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[8:9], s[10:11]
	s_cbranch_execz BB0_81
; %bb.75:                               ; %.lr.ph1303
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[10:11], s6, v1, v[12:13]
	v_add_u32_e32 v12, vcc, 0x48, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	v_cmp_gt_i32_e64 s[10:11], s60, 0
	v_mul_lo_u32 v14, s60, v0
	s_lshl_b32 s18, s60, 8
	s_mov_b64 s[68:69], 0
	v_mov_b32_e32 v1, v0
	s_branch BB0_77
BB0_76:                                 ; %._crit_edge1300
                                        ;   in Loop: Header=BB0_77 Depth=1
	v_add_u32_e32 v1, vcc, 0x100, v1
	v_cmp_le_i32_e32 vcc, s67, v1
	s_or_b64 s[68:69], vcc, s[68:69]
	v_add_u32_e32 v14, vcc, s18, v14
	s_andn2_b64 exec, exec, s[68:69]
	s_cbranch_execz BB0_81
BB0_77:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_79 Depth 2
	s_andn2_b64 vcc, exec, s[10:11]
	v_ashrrev_i32_e32 v15, 31, v14
	s_cbranch_vccnz BB0_76
; %bb.78:                               ; %.lr.ph1299
                                        ;   in Loop: Header=BB0_77 Depth=1
	flat_load_dwordx2 v[17:18], v[12:13]
	v_mul_lo_u32 v16, v1, s60
	v_lshlrev_b64 v[19:20], 2, v[14:15]
	s_mov_b64 s[70:71], 0
	v_add_u32_e32 v15, vcc, s60, v16
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v17, vcc, v17, v19
	v_addc_u32_e32 v18, vcc, v18, v20, vcc
	v_mov_b32_e32 v19, 0
BB0_79:                                 ;   Parent Loop BB0_77 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	flat_load_dword v20, v[17:18]
	v_add_u32_e32 v16, vcc, 1, v16
	v_cmp_ge_i32_e32 vcc, v16, v15
	s_or_b64 s[70:71], vcc, s[70:71]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v19, v19, v20
	flat_store_dword v[17:18], v19
	v_add_u32_e32 v17, vcc, 4, v17
	v_addc_u32_e32 v18, vcc, 0, v18, vcc
	s_andn2_b64 exec, exec, s[70:71]
	s_cbranch_execnz BB0_79
; %bb.80:                               ; %Flow1752
                                        ;   in Loop: Header=BB0_77 Depth=1
	s_or_b64 exec, exec, s[70:71]
	s_branch BB0_76
BB0_81:                                 ; %Flow1756
	s_or_b64 exec, exec, s[8:9]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[10:11], s[12:13]
	s_cbranch_execz BB0_84
; %bb.82:                               ; %.lr.ph1294
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[8:9], s6, v1, v[12:13]
	v_add_u32_e32 v12, vcc, 0x48, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	flat_load_dwordx4 v[12:15], v[12:13]
	s_add_i32 s66, s66, -1
	s_add_i32 s65, s65, -2
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b64 s[12:13], 0
	s_ashr_i32 s18, s64, 31
	s_add_i32 s8, s64, s18
	s_xor_b32 s19, s8, s18
	s_sub_i32 s51, 0, s19
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v14, vcc, v14, v1
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	v_mov_b32_e32 v1, v0
BB0_83:                                 ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v16, vcc, 1, v1
	v_cvt_f32_u32_e32 v17, s19
	v_mov_b32_e32 v18, s64
	v_ashrrev_i32_e32 v19, 31, v16
	v_xor_b32_e32 v20, s18, v19
	v_add_u32_e32 v21, vcc, v16, v19
	v_xor_b32_e32 v19, v21, v19
	v_rcp_iflag_f32_e32 v17, v17
	v_mul_f32_e32 v17, 0x4f7ffffe, v17
	v_cvt_u32_f32_e32 v17, v17
	v_mul_lo_u32 v21, s51, v17
	v_mul_hi_u32 v21, v17, v21
	v_add_u32_e32 v17, vcc, v21, v17
	v_mul_hi_u32 v17, v19, v17
	v_mul_lo_u32 v21, v17, s19
	v_add_u32_e32 v22, vcc, 1, v17
	v_sub_u32_e32 v19, vcc, v19, v21
	v_cmp_le_u32_e32 vcc, s19, v19
	v_cndmask_b32_e32 v17, v17, v22, vcc
	v_subrev_u32_e64 v21, s[8:9], s19, v19
	v_cndmask_b32_e32 v19, v19, v21, vcc
	v_add_u32_e32 v21, vcc, 1, v17
	v_cmp_le_u32_e32 vcc, s19, v19
	v_cndmask_b32_e32 v17, v17, v21, vcc
	v_xor_b32_e32 v17, v17, v20
	v_sub_u32_e32 v17, vcc, v17, v20
	v_mul_lo_u32 v19, v17, s64
	v_add_u32_e32 v17, vcc, s66, v17
	v_sub_u32_e32 v16, vcc, v16, v19
	v_cmp_eq_u32_e32 vcc, 0, v16
	v_cndmask_b32_e32 v16, v16, v18, vcc
	v_subbrev_u32_e32 v17, vcc, 0, v17, vcc
	v_add_u32_e32 v16, vcc, s65, v16
	v_mul_lo_u32 v17, v17, s60
	v_add_u32_e32 v16, vcc, v16, v17
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_u32_e32 v16, vcc, v12, v16
	v_addc_u32_e32 v17, vcc, v13, v17, vcc
	flat_load_dword v16, v[16:17]
	v_add_u32_e32 v1, vcc, 0x100, v1
	v_cmp_le_i32_e32 vcc, s63, v1
	s_or_b64 s[12:13], vcc, s[12:13]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[14:15], v16
	v_add_u32_e32 v14, vcc, 0x400, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	s_andn2_b64 exec, exec, s[12:13]
	s_cbranch_execnz BB0_83
BB0_84:                                 ; %Flow1750
	s_or_b64 exec, exec, s[10:11]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[10:11], s[4:5]
	s_cbranch_execz BB0_87
; %bb.85:                               ; %.lr.ph1290
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[8:9], s6, v1, v[12:13]
	v_add_u32_e32 v14, vcc, 0x48, v12
	v_addc_u32_e32 v15, vcc, 0, v13, vcc
	v_add_u32_e32 v16, vcc, 0x58, v12
	v_addc_u32_e32 v17, vcc, 0, v13, vcc
	flat_load_dwordx2 v[12:13], v[14:15]
	flat_load_dwordx2 v[18:19], v[16:17]
	s_add_i32 s62, s62, -1
	s_add_i32 s61, s61, -2
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b64 s[12:13], 0
	s_ashr_i32 s18, s50, 31
	s_add_i32 s8, s50, s18
	s_xor_b32 s19, s8, s18
	s_sub_i32 s51, 0, s19
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v14, vcc, v18, v1
	v_addc_u32_e32 v15, vcc, 0, v19, vcc
	v_mov_b32_e32 v1, v0
BB0_86:                                 ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v16, vcc, 1, v1
	v_cvt_f32_u32_e32 v17, s19
	v_mov_b32_e32 v18, s50
	v_ashrrev_i32_e32 v19, 31, v16
	v_xor_b32_e32 v20, s18, v19
	v_add_u32_e32 v21, vcc, v16, v19
	v_xor_b32_e32 v19, v21, v19
	v_rcp_iflag_f32_e32 v17, v17
	v_mul_f32_e32 v17, 0x4f7ffffe, v17
	v_cvt_u32_f32_e32 v17, v17
	v_mul_lo_u32 v21, s51, v17
	v_mul_hi_u32 v21, v17, v21
	v_add_u32_e32 v17, vcc, v21, v17
	v_mul_hi_u32 v17, v19, v17
	v_mul_lo_u32 v21, v17, s19
	v_add_u32_e32 v22, vcc, 1, v17
	v_sub_u32_e32 v19, vcc, v19, v21
	v_cmp_le_u32_e32 vcc, s19, v19
	v_cndmask_b32_e32 v17, v17, v22, vcc
	v_subrev_u32_e64 v21, s[8:9], s19, v19
	v_cndmask_b32_e32 v19, v19, v21, vcc
	v_add_u32_e32 v21, vcc, 1, v17
	v_cmp_le_u32_e32 vcc, s19, v19
	v_cndmask_b32_e32 v17, v17, v21, vcc
	v_xor_b32_e32 v17, v17, v20
	v_sub_u32_e32 v17, vcc, v17, v20
	v_mul_lo_u32 v19, v17, s50
	v_add_u32_e32 v17, vcc, s62, v17
	v_sub_u32_e32 v16, vcc, v16, v19
	v_cmp_eq_u32_e32 vcc, 0, v16
	v_cndmask_b32_e32 v16, v16, v18, vcc
	v_subbrev_u32_e32 v17, vcc, 0, v17, vcc
	v_add_u32_e32 v16, vcc, s61, v16
	v_mul_lo_u32 v17, v17, s60
	v_add_u32_e32 v16, vcc, v16, v17
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_u32_e32 v16, vcc, v12, v16
	v_addc_u32_e32 v17, vcc, v13, v17, vcc
	flat_load_dword v16, v[16:17]
	v_add_u32_e32 v1, vcc, 0x100, v1
	v_cmp_le_i32_e32 vcc, s59, v1
	s_or_b64 s[12:13], vcc, s[12:13]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[14:15], v16
	v_add_u32_e32 v14, vcc, 0x400, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	s_andn2_b64 exec, exec, s[12:13]
	s_cbranch_execnz BB0_86
BB0_87:                                 ; %Flow1747
	s_or_b64 exec, exec, s[10:11]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[8:9], s[4:5]
	s_cbranch_execz BB0_90
; %bb.88:                               ; %.lr.ph1287
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[4:5], s6, v1, v[12:13]
	v_add_u32_e32 v12, vcc, 0x50, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	flat_load_dwordx4 v[12:15], v[12:13]
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b64 s[4:5], 0
	s_movk_i32 s10, 0x400
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v12, vcc, v12, v1
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	v_add_u32_e32 v14, vcc, v14, v1
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	v_mov_b32_e32 v1, v0
BB0_89:                                 ; =>This Inner Loop Header: Depth=1
	flat_load_dword v16, v[12:13]
	flat_load_dword v17, v[14:15]
	v_add_u32_e32 v1, vcc, 0x100, v1
	v_add_u32_e32 v12, vcc, s10, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	v_cmp_le_i32_e32 vcc, s59, v1
	s_or_b64 s[4:5], vcc, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_f32_e32 v16, v16, v17
	flat_store_dword v[14:15], v16
	v_add_u32_e32 v14, vcc, s10, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	s_andn2_b64 exec, exec, s[4:5]
	s_cbranch_execnz BB0_89
BB0_90:                                 ; %Flow1744
	s_or_b64 exec, exec, s[8:9]
	s_and_saveexec_b64 s[4:5], s[14:15]
	s_cbranch_execz BB0_97
; %bb.91:                               ; %.preheader1183.lr.ph
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[8:9], s6, v1, v[12:13]
	v_add_u32_e32 v12, vcc, 0x58, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	v_cmp_gt_i32_e64 s[8:9], s59, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v14, v0
	s_ashr_i32 s11, s50, 31
	s_mov_b32 s10, s50
	s_lshl_b64 s[10:11], s[10:11], 2
	s_mov_b64 s[12:13], 0
	s_branch BB0_93
BB0_92:                                 ; %._crit_edge1281
                                        ;   in Loop: Header=BB0_93 Depth=1
	v_add_u32_e32 v14, vcc, 0x100, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	v_cmp_le_i32_e32 vcc, s50, v14
	s_or_b64 s[12:13], vcc, s[12:13]
	s_andn2_b64 exec, exec, s[12:13]
	s_cbranch_execz BB0_97
BB0_93:                                 ; %.preheader1183
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_95 Depth 2
	s_andn2_b64 vcc, exec, s[8:9]
	s_cbranch_vccnz BB0_92
; %bb.94:                               ; %.lr.ph1280
                                        ;   in Loop: Header=BB0_93 Depth=1
	flat_load_dwordx2 v[17:18], v[12:13]
	v_add_u32_e32 v1, vcc, s59, v14
	v_lshlrev_b64 v[19:20], 2, v[14:15]
	s_mov_b64 s[14:15], 0
	v_mov_b32_e32 v16, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v17, vcc, v17, v19
	v_addc_u32_e32 v18, vcc, v18, v20, vcc
	v_mov_b32_e32 v19, v14
BB0_95:                                 ;   Parent Loop BB0_93 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	flat_load_dword v20, v[17:18]
	v_add_u32_e32 v19, vcc, s50, v19
	v_mov_b32_e32 v21, s11
	v_cmp_ge_i32_e32 vcc, v19, v1
	s_or_b64 s[14:15], vcc, s[14:15]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v16, v16, v20
	flat_store_dword v[17:18], v16
	v_add_u32_e32 v17, vcc, s10, v17
	v_addc_u32_e32 v18, vcc, v18, v21, vcc
	s_andn2_b64 exec, exec, s[14:15]
	s_cbranch_execnz BB0_95
; %bb.96:                               ; %Flow1737
                                        ;   in Loop: Header=BB0_93 Depth=1
	s_or_b64 exec, exec, s[14:15]
	s_branch BB0_92
BB0_97:                                 ; %Flow1741
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[8:9], s[16:17]
	s_cbranch_execz BB0_100
; %bb.98:                               ; %.lr.ph1276
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[4:5], s6, v1, v[12:13]
	v_add_u32_e32 v12, vcc, 0x58, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	flat_load_dwordx4 v[12:15], v[12:13]
	s_add_i32 s58, s58, -1
	s_add_i32 s57, s57, -2
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b64 s[10:11], 0
	s_ashr_i32 s12, s55, 31
	s_add_i32 s4, s55, s12
	s_xor_b32 s13, s4, s12
	s_sub_i32 s14, 0, s13
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v14, vcc, v14, v1
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	v_mov_b32_e32 v1, v0
BB0_99:                                 ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v16, vcc, 1, v1
	v_cvt_f32_u32_e32 v17, s13
	v_mov_b32_e32 v18, s55
	v_ashrrev_i32_e32 v19, 31, v16
	v_xor_b32_e32 v20, s12, v19
	v_add_u32_e32 v21, vcc, v16, v19
	v_xor_b32_e32 v19, v21, v19
	v_rcp_iflag_f32_e32 v17, v17
	v_mul_f32_e32 v17, 0x4f7ffffe, v17
	v_cvt_u32_f32_e32 v17, v17
	v_mul_lo_u32 v21, s14, v17
	v_mul_hi_u32 v21, v17, v21
	v_add_u32_e32 v17, vcc, v21, v17
	v_mul_hi_u32 v17, v19, v17
	v_mul_lo_u32 v21, v17, s13
	v_add_u32_e32 v22, vcc, 1, v17
	v_sub_u32_e32 v19, vcc, v19, v21
	v_cmp_le_u32_e32 vcc, s13, v19
	v_cndmask_b32_e32 v17, v17, v22, vcc
	v_subrev_u32_e64 v21, s[4:5], s13, v19
	v_cndmask_b32_e32 v19, v19, v21, vcc
	v_add_u32_e32 v21, vcc, 1, v17
	v_cmp_le_u32_e32 vcc, s13, v19
	v_cndmask_b32_e32 v17, v17, v21, vcc
	v_xor_b32_e32 v17, v17, v20
	v_sub_u32_e32 v17, vcc, v17, v20
	v_mul_lo_u32 v19, v17, s55
	v_add_u32_e32 v17, vcc, s58, v17
	v_sub_u32_e32 v16, vcc, v16, v19
	v_cmp_eq_u32_e32 vcc, 0, v16
	v_cndmask_b32_e32 v16, v16, v18, vcc
	v_subbrev_u32_e32 v17, vcc, 0, v17, vcc
	v_add_u32_e32 v16, vcc, s57, v16
	v_mul_lo_u32 v17, v17, s50
	v_add_u32_e32 v16, vcc, v16, v17
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_u32_e32 v16, vcc, v12, v16
	v_addc_u32_e32 v17, vcc, v13, v17, vcc
	flat_load_dword v16, v[16:17]
	v_add_u32_e32 v1, vcc, 0x100, v1
	v_cmp_le_i32_e32 vcc, s56, v1
	s_or_b64 s[10:11], vcc, s[10:11]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[14:15], v16
	v_add_u32_e32 v14, vcc, 0x400, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	s_andn2_b64 exec, exec, s[10:11]
	s_cbranch_execnz BB0_99
BB0_100:                                ; %Flow1735
	s_or_b64 exec, exec, s[8:9]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_cbranch_execz BB0_103
; %bb.101:                              ; %.lr.ph1272
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[4:5], s6, v1, v[12:13]
	v_add_u32_e32 v14, vcc, 0x58, v12
	v_addc_u32_e32 v15, vcc, 0, v13, vcc
	v_add_u32_e32 v16, vcc, 0x78, v12
	v_addc_u32_e32 v17, vcc, 0, v13, vcc
	flat_load_dwordx2 v[12:13], v[14:15]
	flat_load_dwordx2 v[18:19], v[16:17]
	s_add_i32 s54, s54, -1
	s_add_i32 s53, s53, -2
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b64 s[10:11], 0
	s_ashr_i32 s12, s52, 31
	s_add_i32 s4, s52, s12
	s_xor_b32 s13, s4, s12
	s_sub_i32 s14, 0, s13
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v14, vcc, v18, v1
	v_addc_u32_e32 v15, vcc, 0, v19, vcc
	v_mov_b32_e32 v1, v0
BB0_102:                                ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v16, vcc, 1, v1
	v_cvt_f32_u32_e32 v17, s13
	v_mov_b32_e32 v18, s52
	v_ashrrev_i32_e32 v19, 31, v16
	v_xor_b32_e32 v20, s12, v19
	v_add_u32_e32 v21, vcc, v16, v19
	v_xor_b32_e32 v19, v21, v19
	v_rcp_iflag_f32_e32 v17, v17
	v_mul_f32_e32 v17, 0x4f7ffffe, v17
	v_cvt_u32_f32_e32 v17, v17
	v_mul_lo_u32 v21, s14, v17
	v_mul_hi_u32 v21, v17, v21
	v_add_u32_e32 v17, vcc, v21, v17
	v_mul_hi_u32 v17, v19, v17
	v_mul_lo_u32 v21, v17, s13
	v_add_u32_e32 v22, vcc, 1, v17
	v_sub_u32_e32 v19, vcc, v19, v21
	v_cmp_le_u32_e32 vcc, s13, v19
	v_cndmask_b32_e32 v17, v17, v22, vcc
	v_subrev_u32_e64 v21, s[4:5], s13, v19
	v_cndmask_b32_e32 v19, v19, v21, vcc
	v_add_u32_e32 v21, vcc, 1, v17
	v_cmp_le_u32_e32 vcc, s13, v19
	v_cndmask_b32_e32 v17, v17, v21, vcc
	v_xor_b32_e32 v17, v17, v20
	v_sub_u32_e32 v17, vcc, v17, v20
	v_mul_lo_u32 v19, v17, s52
	v_add_u32_e32 v17, vcc, s54, v17
	v_sub_u32_e32 v16, vcc, v16, v19
	v_cmp_eq_u32_e32 vcc, 0, v16
	v_cndmask_b32_e32 v16, v16, v18, vcc
	v_subbrev_u32_e32 v17, vcc, 0, v17, vcc
	v_add_u32_e32 v16, vcc, s53, v16
	v_mul_lo_u32 v17, v17, s50
	v_add_u32_e32 v16, vcc, v16, v17
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_u32_e32 v16, vcc, v12, v16
	v_addc_u32_e32 v17, vcc, v13, v17, vcc
	flat_load_dword v16, v[16:17]
	v_add_u32_e32 v1, vcc, 0x100, v1
	v_cmp_le_i32_e32 vcc, s45, v1
	s_or_b64 s[10:11], vcc, s[10:11]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[14:15], v16
	v_add_u32_e32 v14, vcc, 0x400, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	s_andn2_b64 exec, exec, s[10:11]
	s_cbranch_execnz BB0_102
BB0_103:                                ; %Flow1732
	s_or_b64 exec, exec, s[8:9]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[4:5], s[2:3]
	s_cbranch_execz BB0_106
; %bb.104:                              ; %.lr.ph1268
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[8:9], s6, v1, v[12:13]
	v_add_u32_e32 v14, vcc, 0x60, v12
	v_addc_u32_e32 v15, vcc, 0, v13, vcc
	v_add_u32_e32 v12, vcc, 0x78, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	flat_load_dwordx2 v[16:17], v[14:15]
	flat_load_dwordx2 v[18:19], v[12:13]
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b64 s[8:9], 0
	s_movk_i32 s10, 0x400
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_u32_e32 v12, vcc, v16, v1
	v_addc_u32_e32 v13, vcc, 0, v17, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v14, vcc, v18, v1
	v_addc_u32_e32 v15, vcc, 0, v19, vcc
	v_mov_b32_e32 v1, v0
BB0_105:                                ; =>This Inner Loop Header: Depth=1
	flat_load_dword v16, v[12:13]
	flat_load_dword v17, v[14:15]
	v_add_u32_e32 v1, vcc, 0x100, v1
	v_add_u32_e32 v12, vcc, s10, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	v_cmp_le_i32_e32 vcc, s45, v1
	s_or_b64 s[8:9], vcc, s[8:9]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_f32_e32 v16, v16, v17
	flat_store_dword v[14:15], v16
	v_add_u32_e32 v14, vcc, s10, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	s_andn2_b64 exec, exec, s[8:9]
	s_cbranch_execnz BB0_105
BB0_106:                                ; %Flow1729
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[4:5], s[2:3]
	s_cbranch_execz BB0_109
; %bb.107:                              ; %.lr.ph1264
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[8:9], s6, v1, v[12:13]
	v_add_u32_e32 v14, vcc, 0x68, v12
	v_addc_u32_e32 v15, vcc, 0, v13, vcc
	v_add_u32_e32 v12, vcc, 0x78, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	flat_load_dwordx2 v[16:17], v[14:15]
	flat_load_dwordx2 v[18:19], v[12:13]
	v_cvt_f32_i32_e32 v1, s7
	v_lshlrev_b32_e32 v14, 2, v0
	s_mov_b64 s[8:9], 0
	s_mov_b32 s10, 0xf800000
	s_movk_i32 s11, 0x260
	s_movk_i32 s12, 0x100
	s_movk_i32 s13, 0x400
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_u32_e32 v12, vcc, v16, v14
	v_addc_u32_e32 v13, vcc, 0, v17, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v14, vcc, v18, v14
	v_addc_u32_e32 v15, vcc, 0, v19, vcc
	v_mov_b32_e32 v16, v0
BB0_108:                                ; =>This Inner Loop Header: Depth=1
	flat_load_dword v17, v[12:13]
	flat_load_dword v18, v[14:15]
	v_mov_b32_e32 v19, 0x4f800000
	v_mov_b32_e32 v20, 0x37800000
	v_add_u32_e32 v12, vcc, s13, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v17, v17, v17
	v_div_scale_f32 v21, s[14:15], v1, v1, v17
	v_div_scale_f32 v22, vcc, v17, v1, v17
	v_rcp_f32_e32 v23, v21
	v_fma_f32 v24, -v21, v23, 1.0
	v_fma_f32 v23, v24, v23, v23
	v_mul_f32_e32 v24, v22, v23
	v_fma_f32 v25, -v21, v24, v22
	v_fma_f32 v24, v25, v23, v24
	v_fma_f32 v21, -v21, v24, v22
	v_div_fmas_f32 v21, v21, v23, v24
	v_add_u32_e32 v16, vcc, s12, v16
	v_cmp_le_i32_e32 vcc, s45, v16
	s_or_b64 s[8:9], vcc, s[8:9]
	v_div_fixup_f32 v17, v21, v1, v17
	v_sub_f32_e32 v17, v18, v17
	v_cmp_ngt_f32_e32 vcc, 0, v17
	v_cndmask_b32_e32 v17, 0, v17, vcc
	v_cmp_gt_f32_e32 vcc, s10, v17
	v_cndmask_b32_e32 v18, 1.0, v19, vcc
	v_mul_f32_e32 v17, v17, v18
	v_cndmask_b32_e32 v18, 1.0, v20, vcc
	v_sqrt_f32_e32 v19, v17
	v_add_u32_e32 v20, vcc, -1, v19
	v_add_u32_e32 v21, vcc, 1, v19
	v_fma_f32 v22, -v21, v19, v17
	v_fma_f32 v23, -v20, v19, v17
	v_cmp_ge_f32_e32 vcc, 0, v23
	v_cndmask_b32_e32 v19, v19, v20, vcc
	v_cmp_lt_f32_e32 vcc, 0, v22
	v_cndmask_b32_e32 v19, v19, v21, vcc
	v_mul_f32_e32 v18, v18, v19
	v_cmp_class_f32_e64 vcc, v17, s11
	v_cndmask_b32_e32 v17, v18, v17, vcc
	flat_store_dword v[14:15], v17
	v_add_u32_e32 v14, vcc, s13, v14
	v_addc_u32_e32 v15, vcc, 0, v15, vcc
	s_andn2_b64 exec, exec, s[8:9]
	s_cbranch_execnz BB0_108
BB0_109:                                ; %Flow1726
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s49, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz BB0_112
; %bb.110:                              ; %.lr.ph1260
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v12, s28
	v_mov_b32_e32 v13, s29
	v_mad_i64_i32 v[12:13], s[8:9], s6, v1, v[12:13]
	v_add_u32_e32 v12, vcc, 0x80, v12
	v_addc_u32_e32 v13, vcc, 0, v13, vcc
	flat_load_dwordx2 v[12:13], v[12:13]
	v_add_u32_e32 v10, vcc, v10, v0
	v_addc_u32_e32 v11, vcc, 0, v11, vcc
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b64 s[8:9], 0
	s_movk_i32 s10, 0x400
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_u32_e32 v8, vcc, v8, v10
	v_addc_u32_e32 v9, vcc, v9, v11, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v10, vcc, v12, v1
	v_addc_u32_e32 v11, vcc, 0, v13, vcc
	v_mov_b32_e32 v1, v0
BB0_111:                                ; =>This Inner Loop Header: Depth=1
	flat_load_dword v12, v[8:9]
	v_add_u32_e32 v1, vcc, 0x100, v1
	v_add_u32_e32 v8, vcc, s10, v8
	v_addc_u32_e32 v9, vcc, 0, v9, vcc
	v_cmp_le_i32_e32 vcc, s49, v1
	s_or_b64 s[8:9], vcc, s[8:9]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v12, v12, v12
	flat_store_dword v[10:11], v12
	v_add_u32_e32 v10, vcc, s10, v10
	v_addc_u32_e32 v11, vcc, 0, v11, vcc
	s_andn2_b64 exec, exec, s[8:9]
	s_cbranch_execnz BB0_111
BB0_112:                                ; %Flow1723
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s30, v0
	s_mov_b32 m0, -1
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz BB0_118
; %bb.113:                              ; %.preheader1182.lr.ph
	v_cmp_gt_i32_e64 s[8:9], s21, 0
	v_mul_lo_u32 v8, s21, v0
	s_lshl_b32 s10, s21, 8
	s_mov_b64 s[12:13], 0
	v_mov_b32_e32 v1, v0
	s_branch BB0_115
BB0_114:                                ; %._crit_edge1254
                                        ;   in Loop: Header=BB0_115 Depth=1
	v_lshlrev_b32_e32 v10, 2, v1
	ds_write_b32 v10, v9 offset:10416
	v_add_u32_e32 v1, vcc, 0x100, v1
	v_cmp_le_i32_e32 vcc, s30, v1
	s_or_b64 s[12:13], vcc, s[12:13]
	v_add_u32_e32 v8, vcc, s10, v8
	s_andn2_b64 exec, exec, s[12:13]
	s_cbranch_execz BB0_118
BB0_115:                                ; %.preheader1182
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_117 Depth 2
	s_andn2_b64 vcc, exec, s[8:9]
	v_mov_b32_e32 v9, 0
	s_cbranch_vccnz BB0_114
; %bb.116:                              ; %.lr.ph1253
                                        ;   in Loop: Header=BB0_115 Depth=1
	v_ashrrev_i32_e32 v9, 31, v8
	v_lshlrev_b64 v[10:11], 2, v[8:9]
	v_add_u32_e32 v10, vcc, v6, v10
	v_addc_u32_e32 v11, vcc, v7, v11, vcc
	v_mov_b32_e32 v9, 0
	s_mov_b32 s11, s21
BB0_117:                                ;   Parent Loop BB0_115 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	flat_load_dword v12, v[10:11]
	s_add_i32 s11, s11, -1
	v_add_u32_e32 v10, vcc, 4, v10
	v_addc_u32_e32 v11, vcc, 0, v11, vcc
	s_cmp_lg_u32 s11, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v9, v9, v12
	s_cbranch_scc1 BB0_117
	s_branch BB0_114
BB0_118:                                ; %Flow1720
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s48, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_cbranch_execz BB0_124
; %bb.119:                              ; %.preheader1181.lr.ph
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v8, s28
	v_mov_b32_e32 v9, s29
	v_mad_i64_i32 v[8:9], s[4:5], s6, v1, v[8:9]
	v_cmp_gt_i32_e64 s[10:11], s47, 0
	v_add_u32_e32 v8, vcc, 0x80, v8
	v_addc_u32_e32 v9, vcc, 0, v9, vcc
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v10, v0
	s_ashr_i32 s49, s48, 31
	s_lshl_b64 s[12:13], s[48:49], 2
	s_mov_b64 s[14:15], 0
	s_branch BB0_121
BB0_120:                                ; %._crit_edge1247
                                        ;   in Loop: Header=BB0_121 Depth=1
	v_lshlrev_b32_e32 v12, 2, v10
	ds_write_b32 v12, v1 offset:10624
	v_add_u32_e32 v10, vcc, 0x100, v10
	v_cmp_le_i32_e64 s[4:5], s48, v10
	s_or_b64 s[14:15], s[4:5], s[14:15]
	v_addc_u32_e32 v11, vcc, 0, v11, vcc
	s_andn2_b64 exec, exec, s[14:15]
	s_cbranch_execz BB0_124
BB0_121:                                ; %.preheader1181
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_123 Depth 2
	s_andn2_b64 vcc, exec, s[10:11]
	v_mov_b32_e32 v1, 0
	s_cbranch_vccnz BB0_120
; %bb.122:                              ; %.lr.ph1246
                                        ;   in Loop: Header=BB0_121 Depth=1
	flat_load_dwordx2 v[12:13], v[8:9]
	v_lshlrev_b64 v[14:15], 2, v[10:11]
	v_mov_b32_e32 v1, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v12, vcc, v12, v14
	v_addc_u32_e32 v13, vcc, v13, v15, vcc
	s_mov_b32 s4, s47
BB0_123:                                ;   Parent Loop BB0_121 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	flat_load_dword v14, v[12:13]
	s_add_i32 s4, s4, -1
	v_mov_b32_e32 v15, s13
	v_add_u32_e32 v12, vcc, s12, v12
	v_addc_u32_e32 v13, vcc, v13, v15, vcc
	s_cmp_lg_u32 s4, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v1, v1, v14
	s_cbranch_scc1 BB0_123
	s_branch BB0_120
BB0_124:                                ; %Flow1715
	s_or_b64 exec, exec, s[8:9]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e64 s[4:5], 0, v0
	v_cmp_ne_u32_e32 vcc, 0, v0
	s_mov_b32 m0, -1
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_131
; %bb.125:
	v_cmp_eq_u32_e32 vcc, 1, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_cbranch_execz BB0_130
; %bb.126:
	v_mov_b32_e32 v1, 0
	s_cmp_lt_i32 s47, 1
	ds_write_b32 v1, v1 offset:10828
	s_cbranch_scc1 BB0_130
; %bb.127:                              ; %.lr.ph1243
	s_movk_i32 s12, 0x2980
BB0_128:                                ; =>This Inner Loop Header: Depth=1
	v_mov_b32_e32 v8, s12
	ds_read_b32 v8, v8
	s_add_i32 s47, s47, -1
	s_add_i32 s12, s12, 4
	s_cmp_eq_u32 s47, 0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v8
	s_cbranch_scc0 BB0_128
; %bb.129:                              ; %..loopexit1180_crit_edge
	v_mov_b32_e32 v8, 0
	ds_write_b32 v8, v1 offset:10828
BB0_130:                                ; %Flow1707
	s_or_b64 exec, exec, s[10:11]
BB0_131:                                ; %Flow1710
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_mov_b32 m0, -1
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_136
; %bb.132:
	v_mov_b32_e32 v1, 0
	s_cmp_lt_i32 s30, 1
	ds_write_b32 v1, v1 offset:10832
	s_cbranch_scc1 BB0_136
; %bb.133:                              ; %.lr.ph1240
	s_movk_i32 s10, 0x28b0
	s_mov_b32 s11, s30
BB0_134:                                ; =>This Inner Loop Header: Depth=1
	v_mov_b32_e32 v8, s10
	ds_read_b32 v8, v8
	s_add_i32 s11, s11, -1
	s_add_i32 s10, s10, 4
	s_cmp_eq_u32 s11, 0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v1, v1, v8
	s_cbranch_scc0 BB0_134
; %bb.135:                              ; %..loopexit1179_crit_edge
	v_mov_b32_e32 v8, 0
	ds_write_b32 v8, v1 offset:10832
BB0_136:                                ; %.loopexit1179
	s_or_b64 exec, exec, s[8:9]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[10:11], s[4:5]
	s_cbranch_execz BB0_138
; %bb.137:
	v_cvt_f32_i32_e32 v1, s7
	s_movk_i32 s8, 0x2a4c
	v_add_u32_e64 v8, vcc, s8, 0
	ds_read2_b32 v[8:9], v8 offset1:1
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v10, s[8:9], v1, v1, v9
	v_div_scale_f32 v11, s[8:9], v1, v1, v8
	v_div_scale_f32 v12, vcc, v9, v1, v9
	v_div_scale_f32 v13, s[8:9], v8, v1, v8
	v_rcp_f32_e32 v14, v10
	v_rcp_f32_e32 v15, v11
	v_fma_f32 v16, -v10, v14, 1.0
	v_fma_f32 v17, -v11, v15, 1.0
	v_fma_f32 v14, v16, v14, v14
	v_fma_f32 v15, v17, v15, v15
	v_mul_f32_e32 v16, v12, v14
	v_mul_f32_e32 v17, v13, v15
	v_fma_f32 v18, -v10, v16, v12
	v_fma_f32 v19, -v11, v17, v13
	v_fma_f32 v16, v18, v14, v16
	v_fma_f32 v17, v19, v15, v17
	v_fma_f32 v10, -v10, v16, v12
	v_fma_f32 v11, -v11, v17, v13
	v_div_fmas_f32 v10, v10, v14, v16
	s_mov_b64 vcc, s[8:9]
	v_div_fmas_f32 v11, v11, v15, v17
	v_mov_b32_e32 v12, 0
	s_mov_b32 s13, 0xf800000
	v_mov_b32_e32 v13, 0x4f800000
	s_movk_i32 s12, 0x260
	s_add_i32 s8, s7, -1
	v_cvt_f32_i32_e32 v14, s8
	v_mov_b32_e32 v15, 0x37800000
	v_cmp_lt_i32_e64 s[8:9], s7, 2
	v_cndmask_b32_e64 v16, 1.0, v13, s[8:9]
	v_mul_f32_e32 v14, v16, v14
	v_div_fixup_f32 v9, v10, v1, v9
	v_div_fixup_f32 v1, v11, v1, v8
	v_fma_f32 v1, -v9, v9, v1
	v_cmp_gt_f32_e32 vcc, s13, v1
	v_cndmask_b32_e32 v8, 1.0, v13, vcc
	v_mul_f32_e32 v1, v1, v8
	v_sqrt_f32_e32 v8, v1
	v_sqrt_f32_e32 v9, v14
	v_cndmask_b32_e32 v10, 1.0, v15, vcc
	v_add_u32_e32 v11, vcc, -1, v8
	v_add_u32_e32 v13, vcc, 1, v8
	v_fma_f32 v16, -v13, v8, v1
	v_fma_f32 v17, -v11, v8, v1
	v_cmp_ge_f32_e32 vcc, 0, v17
	v_cndmask_b32_e32 v8, v8, v11, vcc
	v_cmp_lt_f32_e32 vcc, 0, v16
	v_cndmask_b32_e32 v8, v8, v13, vcc
	v_mul_f32_e32 v8, v10, v8
	v_cmp_class_f32_e64 vcc, v1, s12
	v_cndmask_b32_e32 v1, v8, v1, vcc
	v_add_u32_e32 v8, vcc, -1, v9
	v_add_u32_e32 v10, vcc, 1, v9
	v_cndmask_b32_e64 v11, 1.0, v15, s[8:9]
	v_fma_f32 v13, -v10, v9, v14
	v_fma_f32 v15, -v8, v9, v14
	v_cmp_ge_f32_e32 vcc, 0, v15
	v_cndmask_b32_e32 v8, v9, v8, vcc
	v_cmp_lt_f32_e32 vcc, 0, v13
	v_cndmask_b32_e32 v8, v8, v10, vcc
	v_mul_f32_e32 v8, v11, v8
	v_cmp_class_f32_e64 vcc, v14, s12
	v_cndmask_b32_e32 v8, v8, v14, vcc
	v_mul_f32_e32 v1, v8, v1
	ds_write_b32 v12, v1 offset:10836
BB0_138:
	s_or_b64 exec, exec, s[10:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_cbranch_execz BB0_141
; %bb.139:                              ; %.lr.ph1236
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v8, s28
	v_mov_b32_e32 v9, s29
	v_mad_i64_i32 v[8:9], s[10:11], s6, v1, v[8:9]
	v_add_u32_e32 v8, vcc, 0x78, v8
	v_addc_u32_e32 v9, vcc, 0, v9, vcc
	flat_load_dwordx2 v[8:9], v[8:9]
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b64 s[10:11], 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v8, vcc, v8, v1
	v_addc_u32_e32 v9, vcc, 0, v9, vcc
	v_mov_b32_e32 v1, v0
BB0_140:                                ; =>This Inner Loop Header: Depth=1
	flat_load_dword v10, v[8:9]
	v_mov_b32_e32 v11, 0
	v_add_u32_e32 v1, vcc, 0x100, v1
	ds_read_b32 v11, v11 offset:10836
	v_cmp_le_i32_e32 vcc, s45, v1
	s_or_b64 s[10:11], vcc, s[10:11]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v10, v10, v11
	flat_store_dword v[8:9], v10
	v_add_u32_e32 v8, vcc, 0x400, v8
	v_addc_u32_e32 v9, vcc, 0, v9, vcc
	s_andn2_b64 exec, exec, s[10:11]
	s_cbranch_execnz BB0_140
BB0_141:                                ; %Flow1705
	s_or_b64 exec, exec, s[8:9]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[8:9], s[0:1]
	s_cbranch_execz BB0_144
; %bb.142:                              ; %.lr.ph1232
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v8, s28
	v_mov_b32_e32 v9, s29
	v_mad_i64_i32 v[8:9], s[0:1], s6, v1, v[8:9]
	v_add_u32_e32 v10, vcc, 56, v8
	v_addc_u32_e32 v11, vcc, 0, v9, vcc
	s_movk_i32 s0, 0x68
	v_add_u32_e32 v8, vcc, s0, v8
	v_addc_u32_e32 v9, vcc, 0, v9, vcc
	flat_load_dwordx2 v[12:13], v[10:11]
	flat_load_dwordx2 v[14:15], v[8:9]
	v_cvt_f32_i32_e32 v1, s7
	v_lshlrev_b32_e32 v10, 2, v0
	s_mov_b64 s[0:1], 0
	s_movk_i32 s10, 0x100
	s_movk_i32 s11, 0x400
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_u32_e32 v8, vcc, v12, v10
	v_addc_u32_e32 v9, vcc, 0, v13, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v10, vcc, v14, v10
	v_addc_u32_e32 v11, vcc, 0, v15, vcc
	v_mov_b32_e32 v12, v0
BB0_143:                                ; =>This Inner Loop Header: Depth=1
	flat_load_dword v14, v[10:11]
	flat_load_dword v13, v[8:9]
	v_mov_b32_e32 v15, 0
	ds_read_b32 v15, v15 offset:10832
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v14, v14, v15
	v_div_scale_f32 v15, s[12:13], v1, v1, v14
	v_div_scale_f32 v16, vcc, v14, v1, v14
	v_rcp_f32_e32 v17, v15
	v_fma_f32 v18, -v15, v17, 1.0
	v_fma_f32 v17, v18, v17, v17
	v_mul_f32_e32 v18, v16, v17
	v_fma_f32 v19, -v15, v18, v16
	v_fma_f32 v18, v19, v17, v18
	v_fma_f32 v15, -v15, v18, v16
	v_div_fmas_f32 v15, v15, v17, v18
	v_add_u32_e32 v10, vcc, s11, v10
	v_addc_u32_e32 v11, vcc, 0, v11, vcc
	v_add_u32_e32 v12, vcc, s10, v12
	v_cmp_le_i32_e32 vcc, s46, v12
	s_or_b64 s[0:1], vcc, s[0:1]
	v_div_fixup_f32 v14, v15, v1, v14
	v_sub_f32_e32 v13, v13, v14
	flat_store_dword v[8:9], v13
	v_add_u32_e32 v8, vcc, s11, v8
	v_addc_u32_e32 v9, vcc, 0, v9, vcc
	s_andn2_b64 exec, exec, s[0:1]
	s_cbranch_execnz BB0_143
BB0_144:                                ; %Flow1702
	s_or_b64 exec, exec, s[8:9]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], s[2:3]
	s_cbranch_execz BB0_147
; %bb.145:                              ; %.lr.ph1228
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v8, s28
	v_mov_b32_e32 v9, s29
	v_mad_i64_i32 v[8:9], s[2:3], s6, v1, v[8:9]
	v_add_u32_e32 v10, vcc, 56, v8
	v_addc_u32_e32 v11, vcc, 0, v9, vcc
	s_movk_i32 s2, 0x78
	v_add_u32_e32 v8, vcc, s2, v8
	v_addc_u32_e32 v9, vcc, 0, v9, vcc
	flat_load_dwordx2 v[12:13], v[10:11]
	flat_load_dwordx2 v[14:15], v[8:9]
	v_lshlrev_b32_e32 v1, 2, v0
	s_mov_b64 s[2:3], 0
	s_movk_i32 s8, 0x100
	s_movk_i32 s9, 0x400
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_u32_e32 v8, vcc, v12, v1
	v_addc_u32_e32 v9, vcc, 0, v13, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v10, vcc, v14, v1
	v_addc_u32_e32 v11, vcc, 0, v15, vcc
	v_mov_b32_e32 v1, v0
BB0_146:                                ; =>This Inner Loop Header: Depth=1
	flat_load_dword v12, v[8:9]
	flat_load_dword v13, v[10:11]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_div_scale_f32 v14, s[10:11], v13, v13, v12
	v_div_scale_f32 v15, vcc, v12, v13, v12
	v_rcp_f32_e32 v16, v14
	v_fma_f32 v17, -v14, v16, 1.0
	v_fma_f32 v16, v17, v16, v16
	v_mul_f32_e32 v17, v15, v16
	v_fma_f32 v18, -v14, v17, v15
	v_fma_f32 v17, v18, v16, v17
	v_fma_f32 v14, -v14, v17, v15
	v_div_fmas_f32 v14, v14, v16, v17
	v_add_u32_e32 v8, vcc, s9, v8
	v_addc_u32_e32 v9, vcc, 0, v9, vcc
	v_add_u32_e32 v1, vcc, s8, v1
	v_cmp_le_i32_e32 vcc, s45, v1
	s_or_b64 s[2:3], vcc, s[2:3]
	v_div_fixup_f32 v12, v14, v13, v12
	flat_store_dword v[10:11], v12
	v_add_u32_e32 v10, vcc, s9, v10
	v_addc_u32_e32 v11, vcc, 0, v11, vcc
	s_andn2_b64 exec, exec, s[2:3]
	s_cbranch_execnz BB0_146
BB0_147:                                ; %Flow1699
	s_or_b64 exec, exec, s[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s44, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB0_150
; %bb.148:                              ; %.lr.ph1224
	flat_load_dword v16, v[2:3]
	v_add_u32_e32 v17, vcc, 16, v4
	v_addc_u32_e32 v18, vcc, 0, v5, vcc
	flat_load_dwordx4 v[8:11], v[17:18]
	flat_load_dwordx4 v[12:15], v[4:5]
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_mul_lo_u32 v1, v16, s26
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v14, vcc, v14, v16
	v_addc_u32_e32 v15, vcc, v15, v17, vcc
	v_add_u32_e32 v1, vcc, s25, v1
	flat_load_dword v18, v[14:15]
	v_add_u32_e32 v14, vcc, -1, v1
	v_ashrrev_i32_e32 v15, 31, v14
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_u32_e32 v10, vcc, v10, v14
	v_addc_u32_e32 v11, vcc, v11, v15, vcc
	v_add_u32_e32 v8, vcc, v8, v14
	v_addc_u32_e32 v9, vcc, v9, v15, vcc
	flat_load_dword v14, v[10:11]
	flat_load_dword v15, v[8:9]
	v_add_u32_e32 v8, vcc, v12, v16
	v_addc_u32_e32 v9, vcc, v13, v17, vcc
	flat_load_dword v11, v[8:9]
	s_add_i32 s8, s27, s31
	v_mov_b32_e32 v10, 0xa0
	v_mov_b32_e32 v8, s28
	v_mov_b32_e32 v9, s29
	s_movk_i32 s9, 0x88
	v_lshlrev_b32_e32 v1, 2, v0
	v_mad_i64_i32 v[9:10], s[2:3], s6, v10, v[8:9]
	v_mov_b32_e32 v8, 0
	s_mov_b64 s[2:3], 0
	v_add_u32_e32 v9, vcc, s9, v9
	v_addc_u32_e32 v10, vcc, 0, v10, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v12, vcc, s8, v14
	v_sub_u32_e32 v12, vcc, v12, v18
	v_mul_lo_u32 v12, s43, v12
	v_add_u32_e32 v13, vcc, s8, v15
	v_add_u32_e32 v12, vcc, v13, v12
	v_sub_u32_e32 v12, vcc, v12, v0
	v_sub_u32_e32 v11, vcc, v12, v11
	v_mov_b32_e32 v12, v0
BB0_149:                                ; =>This Inner Loop Header: Depth=1
	flat_load_dwordx2 v[13:14], v[9:10]
	v_cmp_eq_u32_e32 vcc, 0, v11
	v_cndmask_b32_e64 v15, 0, 1.0, vcc
	v_add_u32_e32 v12, vcc, 0x100, v12
	v_cmp_le_i32_e32 vcc, s44, v12
	s_or_b64 s[2:3], vcc, s[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v13, vcc, v13, v1
	v_addc_u32_e32 v14, vcc, v14, v8, vcc
	v_add_u32_e32 v1, vcc, 0x400, v1
	flat_store_dword v[13:14], v15
	v_addc_u32_e32 v8, vcc, 0, v8, vcc
	v_add_u32_e32 v11, vcc, 0xffffff00, v11
	s_andn2_b64 exec, exec, s[2:3]
	s_cbranch_execnz BB0_149
BB0_150:                                ; %Flow1696
	s_or_b64 exec, exec, s[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s39, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_cbranch_execz BB0_161
; %bb.151:                              ; %.lr.ph1219
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v8, s28
	v_mov_b32_e32 v9, s29
	v_mad_i64_i32 v[10:11], s[0:1], s6, v1, v[8:9]
	s_sub_i32 s10, 1, s40
	s_sub_i32 s11, 1, s41
	v_add_u32_e32 v8, vcc, 0x88, v10
	v_addc_u32_e32 v9, vcc, 0, v11, vcc
	v_add_u32_e32 v14, vcc, 0x78, v10
	v_addc_u32_e32 v15, vcc, 0, v11, vcc
	v_add_u32_e32 v16, vcc, 0x98, v10
	v_addc_u32_e32 v17, vcc, 0, v11, vcc
	flat_load_dwordx2 v[10:11], v[14:15]
	flat_load_dwordx2 v[12:13], v[16:17]
	s_sub_i32 s12, 0, s41
	s_sub_i32 s13, 0, s40
	s_mov_b64 s[14:15], 0
	s_ashr_i32 s16, s33, 31
	s_add_i32 s0, s33, s16
	s_xor_b32 s17, s0, s16
	s_sub_i32 s18, 0, s17
	v_mov_b32_e32 v14, v0
	s_branch BB0_154
BB0_152:                                ; %Flow1689
                                        ;   in Loop: Header=BB0_154 Depth=1
	s_or_b64 exec, exec, s[44:45]
BB0_153:                                ; %Flow1690
                                        ;   in Loop: Header=BB0_154 Depth=1
	s_or_b64 exec, exec, s[2:3]
	v_mov_b32_e32 v15, 0
	v_lshlrev_b64 v[15:16], 2, v[14:15]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v17, vcc, v10, v15
	v_addc_u32_e32 v18, vcc, v11, v16, vcc
	flat_load_dword v17, v[17:18]
	v_add_u32_e32 v14, vcc, 0x100, v14
	v_cmp_le_i32_e32 vcc, s39, v14
	v_add_u32_e64 v15, s[0:1], v12, v15
	v_addc_u32_e64 v16, s[0:1], v13, v16, s[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v1, v1, v17
	s_or_b64 s[14:15], vcc, s[14:15]
	flat_store_dword v[15:16], v1
	s_andn2_b64 exec, exec, s[14:15]
	s_cbranch_execz BB0_161
BB0_154:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_157 Depth 2
                                        ;       Child Loop BB0_159 Depth 3
	v_cvt_f32_u32_e32 v1, s17
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_mul_lo_u32 v15, s18, v1
	v_add_u32_e32 v16, vcc, 1, v14
	v_ashrrev_i32_e32 v17, 31, v16
	v_mul_hi_u32 v15, v1, v15
	v_add_u32_e32 v18, vcc, v16, v17
	v_xor_b32_e32 v18, v18, v17
	v_add_u32_e32 v1, vcc, v15, v1
	v_mul_hi_u32 v1, v18, v1
	v_mov_b32_e32 v15, s37
	v_xor_b32_e32 v17, s16, v17
	v_mul_lo_u32 v19, v1, s17
	v_add_u32_e32 v20, vcc, 1, v1
	v_sub_u32_e32 v18, vcc, v18, v19
	v_cmp_le_u32_e32 vcc, s17, v18
	v_cndmask_b32_e32 v1, v1, v20, vcc
	v_subrev_u32_e64 v19, s[0:1], s17, v18
	v_cndmask_b32_e32 v18, v18, v19, vcc
	v_add_u32_e32 v19, vcc, 1, v1
	v_cmp_le_u32_e32 vcc, s17, v18
	v_cndmask_b32_e32 v1, v1, v19, vcc
	v_xor_b32_e32 v1, v1, v17
	v_sub_u32_e32 v1, vcc, v1, v17
	v_mul_lo_u32 v17, v1, s33
	v_add_u32_e32 v19, vcc, s37, v1
	v_sub_u32_e32 v17, vcc, v16, v17
	v_cmp_eq_u32_e32 vcc, 0, v17
	v_cmp_ne_u32_e64 s[0:1], 0, v17
	v_addc_u32_e64 v18, s[2:3], v1, v15, s[0:1]
	v_mov_b32_e32 v1, s10
	v_addc_u32_e64 v1, s[0:1], v1, v19, s[0:1]
	v_cmp_gt_i32_e64 s[0:1], s40, v18
	v_cndmask_b32_e64 v16, v1, 1, s[0:1]
	v_min_i32_e32 v15, s42, v18
	v_cmp_le_i32_e64 s[0:1], v16, v15
	v_mov_b32_e32 v1, 0
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz BB0_153
; %bb.155:                              ; %.preheader1178.lr.ph
                                        ;   in Loop: Header=BB0_154 Depth=1
	v_mov_b32_e32 v1, s33
	v_cndmask_b32_e32 v1, v17, v1, vcc
	v_add_u32_e32 v1, vcc, s38, v1
	v_add_u32_e32 v17, vcc, s11, v1
	v_cmp_le_i32_e32 vcc, s41, v1
	v_cndmask_b32_e32 v19, 1, v17, vcc
	v_min_i32_e32 v17, s43, v1
	v_cmp_le_i32_e32 vcc, v19, v17
	v_max_i32_e32 v1, s41, v1
	v_max_i32_e32 v18, s40, v18
	v_add_u32_e64 v18, s[0:1], s13, v18
	v_mul_lo_u32 v18, s43, v18
	v_add_u32_e64 v19, s[0:1], s12, v1
	s_mov_b64 s[44:45], 0
	v_mov_b32_e32 v1, 0
	s_branch BB0_157
BB0_156:                                ; %Flow1688
                                        ;   in Loop: Header=BB0_157 Depth=2
	s_or_b64 exec, exec, s[46:47]
	v_add_u32_e64 v20, s[0:1], 1, v16
	v_add_u32_e64 v18, s[0:1], s43, v18
	v_cmp_ge_i32_e64 s[0:1], v16, v15
	s_or_b64 s[44:45], s[0:1], s[44:45]
	v_mov_b32_e32 v16, v20
	s_andn2_b64 exec, exec, s[44:45]
	s_cbranch_execz BB0_152
BB0_157:                                ; %.preheader1178
                                        ;   Parent Loop BB0_154 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_159 Depth 3
	s_and_saveexec_b64 s[46:47], vcc
	s_cbranch_execz BB0_156
; %bb.158:                              ; %.lr.ph1208
                                        ;   in Loop: Header=BB0_157 Depth=2
	flat_load_dwordx2 v[20:21], v[8:9]
	s_mov_b64 s[48:49], 0
	v_mov_b32_e32 v22, v19
BB0_159:                                ;   Parent Loop BB0_154 Depth=1
                                        ;     Parent Loop BB0_157 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	v_add_u32_e64 v23, s[0:1], v18, v22
	v_ashrrev_i32_e32 v24, 31, v23
	v_lshlrev_b64 v[23:24], 2, v[23:24]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e64 v23, s[0:1], v20, v23
	v_addc_u32_e64 v24, s[0:1], v21, v24, s[0:1]
	flat_load_dword v23, v[23:24]
	v_add_u32_e64 v22, s[0:1], 1, v22
	v_cmp_ge_i32_e64 s[0:1], v22, v17
	s_or_b64 s[48:49], s[0:1], s[48:49]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v1, v1, v23
	s_andn2_b64 exec, exec, s[48:49]
	s_cbranch_execnz BB0_159
; %bb.160:                              ; %Flow1687
                                        ;   in Loop: Header=BB0_157 Depth=2
	s_or_b64 exec, exec, s[48:49]
	s_branch BB0_156
BB0_161:                                ; %Flow1693
	s_or_b64 exec, exec, s[8:9]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s33, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB0_167
; %bb.162:                              ; %.preheader1177.lr.ph
	v_mov_b32_e32 v1, 0xa0
	v_mov_b32_e32 v8, s28
	v_mov_b32_e32 v9, s29
	v_mad_i64_i32 v[8:9], s[2:3], s6, v1, v[8:9]
	v_mov_b32_e32 v1, 0
	v_cmp_gt_i32_e64 s[2:3], s36, 0
	v_add_u32_e32 v8, vcc, 0x98, v8
	v_addc_u32_e32 v9, vcc, 0, v9, vcc
	v_mul_lo_u32 v10, s33, v0
	s_lshl_b32 s8, s33, 8
	s_mov_b64 s[10:11], 0
	v_mov_b32_e32 v12, 0
	s_movk_i32 s9, 0x2a60
	v_mov_b32_e32 v13, v0
	s_branch BB0_164
BB0_163:                                ; %._crit_edge1198
                                        ;   in Loop: Header=BB0_164 Depth=1
	v_lshlrev_b32_e32 v11, 2, v13
	v_add_u32_e32 v11, vcc, s9, v11
	ds_write2_b32 v11, v12, v1 offset1:132
	v_add_u32_e32 v13, vcc, 0x100, v13
	v_cmp_le_i32_e32 vcc, s33, v13
	s_or_b64 s[10:11], vcc, s[10:11]
	v_add_u32_e32 v10, vcc, s8, v10
	s_andn2_b64 exec, exec, s[10:11]
	s_cbranch_execz BB0_167
BB0_164:                                ; %.preheader1177
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_166 Depth 2
	s_andn2_b64 vcc, exec, s[2:3]
	s_cbranch_vccnz BB0_163
; %bb.165:                              ; %.lr.ph1197
                                        ;   in Loop: Header=BB0_164 Depth=1
	flat_load_dwordx2 v[15:16], v[8:9]
	v_ashrrev_i32_e32 v11, 31, v10
	v_mov_b32_e32 v14, v10
	v_lshlrev_b64 v[17:18], 2, v[10:11]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v15, vcc, v15, v17
	v_addc_u32_e32 v16, vcc, v16, v18, vcc
	s_mov_b32 s12, s36
BB0_166:                                ;   Parent Loop BB0_164 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	flat_load_dword v11, v[15:16]
	s_add_i32 s12, s12, -1
	v_add_u32_e32 v15, vcc, 4, v15
	v_addc_u32_e32 v16, vcc, 0, v16, vcc
	s_cmp_lg_u32 s12, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_gt_f32_e64 vcc, |v11|, v12
	v_cndmask_b32_e64 v12, v12, |v11|, vcc
	v_cndmask_b32_e32 v1, v1, v14, vcc
	v_add_u32_e32 v14, vcc, 1, v14
	s_cbranch_scc1 BB0_166
	s_branch BB0_163
BB0_167:                                ; %Flow1686
	s_or_b64 exec, exec, s[0:1]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[2:3], s[4:5]
	s_cbranch_execz BB0_174
; %bb.168:                              ; %.preheader
	s_cmp_lt_i32 s33, 1
	v_mov_b32_e32 v1, 0
	s_cbranch_scc1 BB0_173
; %bb.169:                              ; %.lr.ph1193.preheader
	s_movk_i32 s0, 0x2a60
	s_movk_i32 s1, 0x2c70
	v_mov_b32_e32 v8, 0
	v_mov_b32_e32 v1, 0
	s_mov_b32 s4, s33
	s_branch BB0_171
BB0_170:                                ;   in Loop: Header=BB0_171 Depth=1
	s_add_i32 s4, s4, -1
	s_add_i32 s0, s0, 4
	s_add_i32 s1, s1, 4
	s_cmp_lg_u32 s4, 0
	s_cbranch_scc0 BB0_173
BB0_171:                                ; %.lr.ph1193
                                        ; =>This Inner Loop Header: Depth=1
	v_mov_b32_e32 v9, s0
	ds_read_b32 v9, v9
	s_waitcnt lgkmcnt(0)
	v_cmp_ngt_f32_e32 vcc, v9, v8
	s_and_b64 vcc, exec, vcc
	s_cbranch_vccnz BB0_170
; %bb.172:                              ;   in Loop: Header=BB0_171 Depth=1
	v_mov_b32_e32 v1, s1
	ds_read_b32 v1, v1
	v_mov_b32_e32 v8, v9
	s_branch BB0_170
BB0_173:                                ; %._crit_edge
	s_ashr_i32 s0, s33, 31
	s_add_i32 s1, s33, s0
	s_xor_b32 s4, s1, s0
	v_cvt_f32_u32_e32 v8, s4
	flat_load_dword v16, v[2:3]
	v_rcp_iflag_f32_e32 v8, v8
	v_add_u32_e32 v17, vcc, 16, v4
	v_addc_u32_e32 v18, vcc, 0, v5, vcc
	v_mul_f32_e32 v8, 0x4f7ffffe, v8
	v_cvt_u32_f32_e32 v19, v8
	flat_load_dwordx4 v[8:11], v[17:18]
	flat_load_dwordx4 v[12:15], v[4:5]
	s_sub_i32 s1, 0, s4
	v_mul_lo_u32 v4, s1, v19
	s_waitcnt lgkmcnt(3)
	v_add_u32_e32 v1, vcc, 1, v1
	v_ashrrev_i32_e32 v18, 31, v1
	v_mul_hi_u32 v4, v19, v4
	v_add_u32_e32 v5, vcc, v18, v1
	v_xor_b32_e32 v20, v5, v18
	v_add_u32_e32 v4, vcc, v4, v19
	v_mul_hi_u32 v19, v20, v4
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshlrev_b64 v[4:5], 2, v[16:17]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v4, vcc, v12, v4
	v_addc_u32_e32 v5, vcc, v13, v5, vcc
	flat_load_dword v12, v[4:5]
	v_mov_b32_e32 v4, s33
	v_xor_b32_e32 v5, s0, v18
	v_mul_lo_u32 v13, v19, s4
	v_add_u32_e32 v17, vcc, 1, v19
	v_subrev_u32_e32 v13, vcc, v13, v20
	v_cmp_le_u32_e64 s[0:1], s4, v13
	v_cndmask_b32_e64 v17, v19, v17, s[0:1]
	v_subrev_u32_e32 v18, vcc, s4, v13
	v_cndmask_b32_e64 v13, v13, v18, s[0:1]
	v_add_u32_e32 v18, vcc, 1, v17
	v_cmp_le_u32_e32 vcc, s4, v13
	v_cndmask_b32_e32 v13, v17, v18, vcc
	v_xor_b32_e32 v13, v13, v5
	v_sub_u32_e32 v13, vcc, v13, v5
	v_mul_lo_u32 v5, v13, s33
	s_sub_i32 s0, s27, s31
	s_sub_i32 s4, s0, s21
	v_subrev_u32_e32 v1, vcc, v5, v1
	v_cmp_eq_u32_e64 s[0:1], 0, v1
	v_cndmask_b32_e64 v1, v1, v4, s[0:1]
	v_mul_lo_u32 v4, v16, s26
	v_add_u32_e32 v1, vcc, s4, v1
	v_add_u32_e32 v4, vcc, s25, v4
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_u32_e32 v8, vcc, v8, v4
	v_addc_u32_e32 v9, vcc, v9, v5, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v1, vcc, v1, v12
	flat_store_dword v[8:9], v1
	flat_load_dword v1, v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_u32_e32 v1, vcc, v14, v1
	v_addc_u32_e32 v2, vcc, v15, v2, vcc
	flat_load_dword v1, v[1:2]
	s_add_i32 s4, s30, s31
	s_sub_i32 s4, s27, s4
	v_add_u32_e32 v2, vcc, s4, v13
	v_add_u32_e32 v2, vcc, 1, v2
	v_subbrev_u32_e64 v2, vcc, 0, v2, s[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v3, vcc, v2, v1
	v_add_u32_e32 v1, vcc, v10, v4
	v_addc_u32_e32 v2, vcc, v11, v5, vcc
	flat_store_dword v[1:2], v3
BB0_174:                                ; %Flow1681
	s_or_b64 exec, exec, s[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
BB0_175:
	s_mul_i32 s0, s25, 0xcccccccd
	s_mov_b32 s1, 0x19999998
	s_add_i32 s0, s0, s1
	v_alignbit_b32 v1, s0, s0, 1
	v_cmp_lt_u32_e32 vcc, s1, v1
	s_or_b64 s[0:1], vcc, s[34:35]
	s_and_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz BB0_179
; %bb.176:
	v_mov_b32_e32 v3, 0xa0
	v_mov_b32_e32 v1, s28
	v_mov_b32_e32 v2, s29
	v_mad_i64_i32 v[10:11], s[0:1], s6, v3, v[1:2]
	v_add_u32_e32 v8, vcc, 40, v10
	v_addc_u32_e32 v9, vcc, 0, v11, vcc
	v_add_u32_e32 v12, vcc, 16, v10
	v_addc_u32_e32 v13, vcc, 0, v11, vcc
	flat_load_dword v14, v[8:9]
	flat_load_dwordx4 v[1:4], v[10:11]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_lo_u32 v5, v14, s26
	flat_load_dwordx4 v[10:13], v[12:13]
	v_add_u32_e32 v15, vcc, s25, v5
	v_ashrrev_i32_e32 v16, 31, v15
	v_lshlrev_b64 v[16:17], 2, v[15:16]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v10, vcc, v10, v16
	v_addc_u32_e32 v11, vcc, v11, v17, vcc
	flat_load_dword v5, v[10:11]
	v_ashrrev_i32_e32 v15, 31, v14
	v_lshlrev_b64 v[10:11], 2, v[14:15]
	v_add_u32_e32 v10, vcc, v1, v10
	v_addc_u32_e32 v11, vcc, v2, v11, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[10:11], v5
	flat_load_dword v10, v[8:9]
	v_add_u32_e32 v11, vcc, v12, v16
	v_addc_u32_e32 v12, vcc, v13, v17, vcc
	flat_load_dword v5, v[11:12]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_u32_e32 v10, vcc, v3, v10
	v_addc_u32_e32 v11, vcc, v4, v11, vcc
	flat_store_dword v[10:11], v5
	v_cmp_gt_i32_e32 vcc, s7, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB0_179
; %bb.177:                              ; %.lr.ph
	flat_load_dword v8, v[8:9]
	v_cvt_f64_f32_e32 v[10:11], s20
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v9, 31, v8
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_u32_e32 v12, vcc, v1, v8
	v_addc_u32_e32 v13, vcc, v2, v9, vcc
	v_add_u32_e32 v3, vcc, v3, v8
	v_addc_u32_e32 v4, vcc, v4, v9, vcc
	flat_load_dword v1, v[12:13]
	flat_load_dword v2, v[3:4]
	v_add_f64 v[3:4], -v[10:11], 1.0
	v_lshlrev_b32_e32 v5, 2, v0
	v_add_u32_e32 v5, vcc, v6, v5
	v_addc_u32_e32 v6, vcc, 0, v7, vcc
	s_mov_b64 s[2:3], 0
	s_ashr_i32 s4, s21, 31
	s_add_i32 s0, s21, s4
	s_xor_b32 s5, s0, s4
	s_sub_i32 s6, 0, s5
BB0_178:                                ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v7, vcc, 1, v0
	v_cvt_f32_u32_e32 v8, s5
	v_mov_b32_e32 v9, s21
	flat_load_dword v10, v[5:6]
	v_mov_b32_e32 v11, s23
	v_ashrrev_i32_e32 v12, 31, v7
	v_xor_b32_e32 v13, s4, v12
	v_add_u32_e32 v14, vcc, v7, v12
	v_xor_b32_e32 v12, v14, v12
	v_rcp_iflag_f32_e32 v8, v8
	v_mul_f32_e32 v8, 0x4f7ffffe, v8
	v_cvt_u32_f32_e32 v8, v8
	v_mul_lo_u32 v14, s6, v8
	v_mul_hi_u32 v14, v8, v14
	v_add_u32_e32 v8, vcc, v14, v8
	v_mul_hi_u32 v8, v12, v8
	v_mul_lo_u32 v14, v8, s5
	v_add_u32_e32 v15, vcc, 1, v8
	v_sub_u32_e32 v12, vcc, v12, v14
	v_cmp_le_u32_e32 vcc, s5, v12
	v_cndmask_b32_e32 v8, v8, v15, vcc
	v_subrev_u32_e64 v14, s[0:1], s5, v12
	v_cndmask_b32_e32 v12, v12, v14, vcc
	v_add_u32_e32 v14, vcc, 1, v8
	v_cmp_le_u32_e32 vcc, s5, v12
	v_cndmask_b32_e32 v8, v8, v14, vcc
	v_xor_b32_e32 v8, v8, v13
	v_sub_u32_e32 v12, vcc, v8, v13
	v_mul_lo_u32 v12, v12, s21
	v_sub_u32_e32 v7, vcc, v7, v12
	v_cmp_eq_u32_e32 vcc, 0, v7
	v_cndmask_b32_e32 v7, v7, v9, vcc
	v_subb_u32_e32 v8, vcc, v8, v13, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v7, vcc, v7, v1
	v_add_u32_e32 v8, vcc, v8, v2
	v_subrev_u32_e32 v8, vcc, 26, v8
	v_mul_lo_u32 v8, v8, s24
	v_add_u32_e32 v7, vcc, v7, v8
	v_subrev_u32_e32 v7, vcc, 27, v7
	v_ashrrev_i32_e32 v8, 31, v7
	v_lshlrev_b64 v[7:8], 2, v[7:8]
	v_add_u32_e32 v7, vcc, s22, v7
	v_addc_u32_e32 v8, vcc, v11, v8, vcc
	flat_load_dword v9, v[7:8]
	v_mul_f32_e32 v7, s20, v10
	v_cvt_f64_f32_e32 v[7:8], v7
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[9:10], v9
	v_fma_f64 v[7:8], v[3:4], v[9:10], v[7:8]
	v_add_u32_e32 v0, vcc, 0x100, v0
	v_cmp_le_i32_e32 vcc, s7, v0
	s_or_b64 s[2:3], vcc, s[2:3]
	v_cvt_f32_f64_e32 v7, v[7:8]
	flat_store_dword v[5:6], v7
	v_add_u32_e32 v5, vcc, 0x400, v5
	v_addc_u32_e32 v6, vcc, 0, v6, vcc
	s_andn2_b64 exec, exec, s[2:3]
	s_cbranch_execnz BB0_178
BB0_179:                                ; %.loopexit
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z6kernel13params_common20params_common_changeP13params_unique
		.amdhsa_group_segment_fixed_size 11900
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
		.amdhsa_next_free_vgpr 31
		.amdhsa_next_free_sgpr 86
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
	.size	_Z6kernel13params_common20params_common_changeP13params_unique, .Lfunc_end0-_Z6kernel13params_common20params_common_changeP13params_unique
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 13644
; NumSgprs: 90
; NumVgprs: 31
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 11900 bytes/workgroup (compile time only)
; SGPRBlocks: 11
; VGPRBlocks: 7
; NumSGPRsForWavesPerEU: 90
; NumVGPRsForWavesPerEU: 31
; Occupancy: 8
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
        .size:           520
        .value_kind:     by_value
      - .offset:         520
        .size:           16
        .value_kind:     by_value
      - .address_space:  global
        .offset:         536
        .size:           8
        .value_kind:     global_buffer
      - .offset:         544
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         552
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         560
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         568
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         576
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         584
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         592
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 11900
    .kernarg_segment_align: 8
    .kernarg_segment_size: 600
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z6kernel13params_common20params_common_changeP13params_unique
    .private_segment_fixed_size: 0
    .sgpr_count:     90
    .sgpr_spill_count: 0
    .symbol:         _Z6kernel13params_common20params_common_changeP13params_unique.kd
    .vgpr_count:     31
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
