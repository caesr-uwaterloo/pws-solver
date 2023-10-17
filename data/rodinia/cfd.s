; %bb.0:
	s_load_dword s16, s[6:7], 0x0
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, s8
	v_mad_u64_u32 v[2:3], s[0:1], s0, v2, v[0:1]
	s_load_dwordx8 s[8:15], s[6:7], 0x8
	v_mov_b32_e32 v0, v1
	v_mov_b32_e32 v1, v2
	v_ashrrev_i64 v[10:11], 30, v[0:1]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v0, s13
	v_add_u32_e32 v14, vcc, s12, v10
	v_addc_u32_e32 v15, vcc, v0, v11, vcc
	v_add_u32_e32 v25, vcc, s16, v2
	v_add_u32_e32 v0, vcc, s16, v25
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[3:4], 2, v[0:1]
	v_mov_b32_e32 v5, s13
	v_add_u32_e32 v19, vcc, s12, v3
	v_addc_u32_e32 v20, vcc, v5, v4, vcc
	v_add_u32_e32 v4, vcc, s16, v0
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b64 v[6:7], 2, v[4:5]
	v_mov_b32_e32 v3, s13
	v_add_u32_e32 v21, vcc, s12, v6
	v_addc_u32_e32 v22, vcc, v3, v7, vcc
	v_mov_b32_e32 v3, s9
	v_add_u32_e32 v31, vcc, s8, v10
	v_addc_u32_e32 v32, vcc, v3, v11, vcc
	v_mov_b32_e32 v3, s11
	v_add_u32_e32 v6, vcc, s16, v4
	v_ashrrev_i32_e32 v7, 31, v6
	v_mov_b32_e32 v8, s13
	v_lshlrev_b64 v[23:24], 2, v[6:7]
	v_add_u32_e32 v26, vcc, s12, v23
	v_addc_u32_e32 v27, vcc, v8, v24, vcc
	v_mov_b32_e32 v12, s11
	s_load_dwordx4 s[20:23], s[6:7], 0x28
	s_load_dwordx2 s[18:19], s[6:7], 0x38
	s_ashr_i32 s17, s16, 31
	s_lshl_b64 s[6:7], s[16:17], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s20, s20, 4
	s_addc_u32 s21, s21, 0
	s_lshl_b32 s17, s16, 2
	v_mov_b32_e32 v16, s11
	v_mov_b32_e32 v8, s7
	v_add_u32_e32 v28, vcc, s6, v14
	v_addc_u32_e32 v29, vcc, v15, v8, vcc
	s_mov_b32 s4, 0x3ecccccc
	flat_load_dword v18, v[14:15]
	flat_load_dword v17, v[28:29]
	flat_load_dword v9, v[19:20]
	flat_load_dword v8, v[21:22]
	flat_load_dword v13, v[26:27]
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_div_scale_f32 v14, s[0:1], v18, v18, v17
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_div_scale_f32 v15, s[0:1], v18, v18, v9
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_div_scale_f32 v19, s[0:1], v18, v18, v8
	v_div_scale_f32 v20, vcc, v17, v18, v17
	v_add_u32_e64 v33, s[0:1], s10, v10
	v_addc_u32_e64 v34, s[0:1], v3, v11, s[0:1]
	v_div_scale_f32 v3, s[0:1], v9, v18, v9
	v_add_u32_e64 v10, s[2:3], s17, v6
	v_ashrrev_i32_e32 v11, 31, v10
	v_div_scale_f32 v21, s[2:3], v8, v18, v8
	v_rcp_f32_e32 v22, v14
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_rcp_f32_e32 v26, v15
	v_rcp_f32_e32 v27, v19
	v_fma_f32 v28, -v14, v22, 1.0
	v_fma_f32 v22, v28, v22, v22
	v_fma_f32 v28, -v15, v26, 1.0
	v_mul_f32_e32 v29, v20, v22
	v_fma_f32 v26, v28, v26, v26
	v_fma_f32 v28, -v19, v27, 1.0
	v_fma_f32 v30, -v14, v29, v20
	v_mul_f32_e32 v35, v3, v26
	v_fma_f32 v27, v28, v27, v27
	v_fma_f32 v28, v30, v22, v29
	v_fma_f32 v29, -v15, v35, v3
	v_mul_f32_e32 v30, v21, v27
	v_fma_f32 v14, -v14, v28, v20
	v_fma_f32 v20, v29, v26, v35
	v_fma_f32 v29, -v19, v30, v21
	v_div_fmas_f32 v22, v14, v22, v28
	v_fma_f32 v3, -v15, v20, v3
	v_fma_f32 v14, v29, v27, v30
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v3, v3, v26, v20
	v_fma_f32 v15, -v19, v14, v21
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f32 v19, v15, v27, v14
	v_add_u32_e32 v14, vcc, s10, v23
	v_addc_u32_e32 v15, vcc, v12, v24, vcc
	v_add_u32_e32 v10, vcc, s10, v10
	v_addc_u32_e32 v11, vcc, v16, v11, vcc
	flat_load_dword v36, v[14:15]
	flat_load_dword v35, v[10:11]
	v_mul_f32_e32 v10, -0.5, v18
	v_div_fixup_f32 v11, v22, v18, v17
	v_div_fixup_f32 v3, v3, v18, v9
	v_mul_f32_e32 v16, v11, v9
	v_mul_f32_e32 v15, v11, v8
	v_div_fixup_f32 v23, v19, v18, v8
	v_mul_f32_e32 v12, v3, v3
	v_fma_f32 v12, v11, v11, v12
	v_fma_f32 v22, v23, v23, v12
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_fma_f32 v10, v10, v22, v13
	v_mul_f32_e32 v24, s4, v10
	v_fma_f32 v10, v10, s4, v13
	v_fma_f32 v20, v17, v11, v24
	v_mul_f32_e32 v21, v11, v10
	v_fma_f32 v14, v9, v3, v24
	v_mul_f32_e32 v12, v3, v8
	v_mul_f32_e32 v19, v3, v10
	v_mul_f32_e32 v11, v23, v10
	v_fma_f32 v10, v8, v23, v24
	flat_load_dword v38, v[31:32]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, 0, v38
	v_ashrrev_i32_e32 v3, 31, v2
	flat_load_dword v37, v[33:34]
                                        ; implicit-def: $vgpr28
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr27
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr30
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB2_8
; %bb.1:                                ; %NodeBlock
	v_cmp_lt_i32_e32 vcc, -2, v38
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr27
                                        ; implicit-def: $vgpr29
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB2_3
; %bb.2:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v26, v24, v37, 0
	v_fma_f32 v27, v24, v36, 0
	v_fma_f32 v29, v24, v35, 0
BB2_3:                                  ; %Flow431
	s_or_saveexec_b64 s[2:3], s[2:3]
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v30, v28
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB2_7
; %bb.4:                                ; %LeafBlock
	v_cmp_ne_u32_e32 vcc, -2, v38
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_or_saveexec_b64 s[4:5], s[4:5]
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v26, v28
	v_mov_b32_e32 v27, v28
	v_mov_b32_e32 v29, v28
	v_mov_b32_e32 v30, v28
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB2_6
; %bb.5:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v23, 0.5, v37
	s_load_dwordx2 s[34:35], s[20:21], 0x0
	s_load_dword s33, s[20:21], 0x8
	s_load_dwordx2 s[36:37], s[18:19], 0x0
	s_load_dword s38, s[18:19], 0x8
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v26, s34, v17
	v_fma_f32 v26, v23, v26, 0
	v_add_f32_e32 v27, s36, v21
	v_fma_f32 v27, v23, v27, 0
	s_load_dwordx8 s[24:31], s[22:23], 0x0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v28, s24, v20
	v_fma_f32 v28, v23, v28, 0
	v_add_f32_e32 v29, s27, v16
	v_fma_f32 v29, v23, v29, 0
	v_add_f32_e32 v30, s30, v15
	v_fma_f32 v23, v23, v30, 0
	v_mul_f32_e32 v30, 0.5, v36
	v_add_f32_e32 v39, s35, v9
	v_fma_f32 v26, v30, v39, v26
	v_add_f32_e32 v39, s37, v19
	v_fma_f32 v27, v30, v39, v27
	v_add_f32_e32 v39, s25, v16
	v_fma_f32 v39, v30, v39, v28
	v_add_f32_e32 v28, s28, v14
	v_fma_f32 v29, v30, v28, v29
	v_add_f32_e32 v28, s31, v12
	v_fma_f32 v23, v30, v28, v23
	v_mul_f32_e32 v40, 0.5, v35
	v_add_f32_e32 v28, s33, v8
	v_fma_f32 v30, v40, v28, v26
	v_add_f32_e32 v26, s38, v11
	v_fma_f32 v28, v40, v26, v27
	v_add_f32_e32 v26, s26, v15
	v_fma_f32 v26, v40, v26, v39
	v_add_f32_e32 v27, s29, v12
	v_fma_f32 v27, v40, v27, v29
	s_load_dword s24, s[22:23], 0x20
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v29, s24, v10
	v_fma_f32 v29, v40, v29, v23
BB2_6:                                  ; %Flow430
	s_or_b64 exec, exec, s[4:5]
BB2_7:                                  ; %Flow432
	s_or_b64 exec, exec, s[2:3]
BB2_8:                                  ; %Flow434
	s_or_saveexec_b64 s[24:25], s[0:1]
	s_mov_b32 s28, 0x3fb33333
	v_mul_f32_e32 v23, s28, v24
	v_div_scale_f32 v39, s[0:1], v18, v18, v23
	v_div_scale_f32 v40, vcc, v23, v18, v23
	s_mov_b32 s27, 0xf800000
	v_mov_b32_e32 v41, 0x4f800000
	v_rcp_f32_e32 v42, v39
	s_movk_i32 s26, 0x260
	v_cmp_gt_f32_e64 s[0:1], s27, v22
	v_cndmask_b32_e64 v43, 1.0, v41, s[0:1]
	v_fma_f32 v44, -v39, v42, 1.0
	v_fma_f32 v42, v44, v42, v42
	v_mul_f32_e32 v44, v40, v42
	v_fma_f32 v45, -v39, v44, v40
	v_fma_f32 v44, v45, v42, v44
	v_fma_f32 v39, -v39, v44, v40
	v_div_fmas_f32 v39, v39, v42, v44
	v_mul_f32_e32 v22, v22, v43
	v_sqrt_f32_e32 v40, v22
	v_mov_b32_e32 v42, 0x37800000
	v_cndmask_b32_e64 v43, 1.0, v42, s[0:1]
	v_add_u32_e32 v44, vcc, -1, v40
	v_add_u32_e32 v45, vcc, 1, v40
	v_fma_f32 v46, -v45, v40, v22
	v_fma_f32 v47, -v44, v40, v22
	v_cmp_ge_f32_e32 vcc, 0, v47
	v_cndmask_b32_e32 v40, v40, v44, vcc
	v_cmp_lt_f32_e32 vcc, 0, v46
	v_cndmask_b32_e32 v40, v40, v45, vcc
	v_mul_f32_e32 v40, v43, v40
	v_div_fixup_f32 v23, v39, v18, v23
	v_cmp_gt_f32_e32 vcc, s27, v23
	v_cndmask_b32_e32 v39, 1.0, v41, vcc
	v_mul_f32_e32 v23, v23, v39
	v_sqrt_f32_e32 v39, v23
	v_cmp_class_f32_e64 s[0:1], v22, s26
	v_cndmask_b32_e64 v22, v40, v22, s[0:1]
	v_cndmask_b32_e32 v40, 1.0, v42, vcc
	v_add_u32_e32 v41, vcc, -1, v39
	v_add_u32_e32 v42, vcc, 1, v39
	v_fma_f32 v43, -v42, v39, v23
	v_fma_f32 v44, -v41, v39, v23
	v_cmp_ge_f32_e32 vcc, 0, v44
	v_cndmask_b32_e32 v39, v39, v41, vcc
	v_cmp_lt_f32_e32 vcc, 0, v43
	v_cndmask_b32_e32 v39, v39, v42, vcc
	v_mul_f32_e32 v39, v40, v39
	v_cmp_class_f32_e64 vcc, v23, s26
	v_cndmask_b32_e32 v23, v39, v23, vcc
	s_xor_b64 exec, exec, s[24:25]
	s_cbranch_execz BB2_10
; %bb.9:
	v_ashrrev_i32_e32 v39, 31, v38
	v_mov_b32_e32 v28, s13
	v_lshlrev_b64 v[26:27], 2, v[38:39]
	v_add_u32_e32 v26, vcc, s12, v26
	v_addc_u32_e32 v27, vcc, v28, v27, vcc
	s_add_i32 s0, s16, s16
	v_add_u32_e32 v28, vcc, s0, v38
	v_ashrrev_i32_e32 v29, 31, v28
	v_mov_b32_e32 v38, s13
	v_lshlrev_b64 v[29:30], 2, v[28:29]
	v_add_u32_e32 v29, vcc, s12, v29
	v_addc_u32_e32 v30, vcc, v38, v30, vcc
	v_add_u32_e32 v38, vcc, s16, v28
	v_ashrrev_i32_e32 v39, 31, v38
	v_mov_b32_e32 v28, s13
	v_lshlrev_b64 v[39:40], 2, v[38:39]
	v_add_u32_e32 v39, vcc, s12, v39
	v_addc_u32_e32 v40, vcc, v28, v40, vcc
	v_add_u32_e32 v41, vcc, s16, v38
	v_ashrrev_i32_e32 v42, 31, v41
	v_lshlrev_b64 v[41:42], 2, v[41:42]
	v_add_u32_e32 v41, vcc, s12, v41
	v_addc_u32_e32 v42, vcc, v28, v42, vcc
	v_mov_b32_e32 v28, s7
	v_add_u32_e32 v43, vcc, s6, v26
	v_addc_u32_e32 v44, vcc, v27, v28, vcc
	s_mov_b32 s29, 0x3ecccccc
	v_mul_f32_e32 v28, v36, v36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v28, v37, v37, v28
	v_fma_f32 v28, v35, v35, v28
	v_mov_b32_e32 v38, 0x4f800000
	v_mov_b32_e32 v45, 0x37800000
	v_mul_f32_e32 v37, 0.5, v37
	flat_load_dword v46, v[26:27]
	flat_load_dword v47, v[43:44]
	flat_load_dword v48, v[29:30]
	flat_load_dword v49, v[39:40]
	flat_load_dword v50, v[41:42]
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_div_scale_f32 v26, s[0:1], v46, v46, v47
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_div_scale_f32 v27, s[0:1], v46, v46, v48
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_div_scale_f32 v29, s[0:1], v46, v46, v49
	v_cmp_gt_f32_e32 vcc, s27, v28
	v_cndmask_b32_e32 v30, 1.0, v38, vcc
	v_div_scale_f32 v39, s[0:1], v47, v46, v47
	v_mul_f32_e32 v28, v28, v30
	v_cndmask_b32_e32 v30, 1.0, v45, vcc
	v_div_scale_f32 v40, s[2:3], v48, v46, v48
	v_sqrt_f32_e32 v41, v28
	v_div_scale_f32 v42, s[4:5], v49, v46, v49
	v_rcp_f32_e32 v43, v26
	v_add_u32_e32 v44, vcc, -1, v41
	v_rcp_f32_e32 v51, v27
	v_rcp_f32_e32 v52, v29
	v_fma_f32 v53, -v26, v43, 1.0
	v_fma_f32 v43, v53, v43, v43
	v_fma_f32 v53, -v27, v51, 1.0
	v_mul_f32_e32 v54, v39, v43
	v_fma_f32 v51, v53, v51, v51
	v_fma_f32 v53, -v29, v52, 1.0
	v_fma_f32 v55, -v26, v54, v39
	v_mul_f32_e32 v56, v40, v51
	v_fma_f32 v52, v53, v52, v52
	v_fma_f32 v53, v55, v43, v54
	v_fma_f32 v54, -v27, v56, v40
	v_mul_f32_e32 v55, v42, v52
	v_fma_f32 v26, -v26, v53, v39
	v_fma_f32 v39, v54, v51, v56
	v_fma_f32 v54, -v29, v55, v42
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v26, v26, v43, v53
	v_fma_f32 v27, -v27, v39, v40
	v_fma_f32 v40, v54, v52, v55
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f32 v27, v27, v51, v39
	v_fma_f32 v29, -v29, v40, v42
	s_mov_b64 vcc, s[4:5]
	v_div_fmas_f32 v29, v29, v52, v40
	v_add_u32_e32 v39, vcc, 1, v41
	v_fma_f32 v40, -v44, v41, v28
	v_fma_f32 v42, -v39, v41, v28
	v_cmp_ge_f32_e32 vcc, 0, v40
	v_cndmask_b32_e32 v40, v41, v44, vcc
	v_cmp_lt_f32_e32 vcc, 0, v42
	v_cndmask_b32_e32 v39, v40, v39, vcc
	v_mul_f32_e32 v30, v30, v39
	v_cmp_class_f32_e64 vcc, v28, s26
	v_cndmask_b32_e32 v28, v30, v28, vcc
	v_mul_f32_e32 v28, 0xbe4ccccd, v28
	v_mul_f32_e32 v30, -0.5, v46
	v_div_fixup_f32 v26, v26, v46, v47
	v_div_fixup_f32 v27, v27, v46, v48
	v_div_fixup_f32 v29, v29, v46, v49
	v_mul_f32_e32 v39, v27, v27
	v_fma_f32 v39, v26, v26, v39
	v_fma_f32 v39, v29, v29, v39
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v30, v30, v39, v50
	v_mul_f32_e32 v40, s29, v30
	v_mul_f32_e32 v41, s28, v40
	v_div_scale_f32 v42, s[0:1], v46, v46, v41
	v_mul_f32_e32 v28, 0.5, v28
	v_sub_f32_e32 v43, v18, v46
	v_sub_f32_e32 v44, v17, v47
	v_add_f32_e32 v51, v17, v47
	v_div_scale_f32 v52, vcc, v41, v46, v41
	v_sub_f32_e32 v53, v9, v48
	v_sub_f32_e32 v54, v8, v49
	v_sub_f32_e32 v55, v13, v50
	v_fma_f32 v56, v26, v48, v16
	v_cmp_gt_f32_e64 s[0:1], s27, v39
	v_cndmask_b32_e64 v57, 1.0, v38, s[0:1]
	v_mul_f32_e32 v39, v39, v57
	v_cndmask_b32_e64 v57, 1.0, v45, s[0:1]
	v_fma_f32 v50, v30, s29, v50
	v_rcp_f32_e32 v30, v42
	v_sqrt_f32_e32 v58, v39
	v_fma_f32 v59, v26, v50, v21
	v_fma_f32 v47, v47, v26, v40
	v_fma_f32 v60, -v42, v30, 1.0
	v_fma_f32 v30, v60, v30, v30
	v_mul_f32_e32 v60, v52, v30
	v_fma_f32 v61, -v42, v60, v52
	v_fma_f32 v60, v61, v30, v60
	v_fma_f32 v42, -v42, v60, v52
	v_div_fmas_f32 v30, v42, v30, v60
	v_add_f32_e32 v42, v20, v47
	v_add_u32_e32 v47, vcc, -1, v58
	v_add_u32_e32 v52, vcc, 1, v58
	v_fma_f32 v60, -v47, v58, v39
	v_fma_f32 v61, -v52, v58, v39
	v_cmp_ge_f32_e32 vcc, 0, v60
	v_cndmask_b32_e32 v47, v58, v47, vcc
	v_cmp_lt_f32_e32 vcc, 0, v61
	v_cndmask_b32_e32 v47, v47, v52, vcc
	v_mul_f32_e32 v47, v57, v47
	v_cmp_class_f32_e64 vcc, v39, s26
	v_cndmask_b32_e32 v39, v47, v39, vcc
	v_add_f32_e32 v39, v22, v39
	v_div_fixup_f32 v30, v30, v46, v41
	v_cmp_gt_f32_e32 vcc, s27, v30
	v_cndmask_b32_e32 v38, 1.0, v38, vcc
	v_mul_f32_e32 v30, v30, v38
	v_sqrt_f32_e32 v38, v30
	v_add_f32_e32 v39, v23, v39
	v_cndmask_b32_e32 v41, 1.0, v45, vcc
	v_add_u32_e32 v45, vcc, -1, v38
	v_add_u32_e32 v46, vcc, 1, v38
	v_fma_f32 v47, -v45, v38, v30
	v_fma_f32 v52, -v46, v38, v30
	v_cmp_ge_f32_e32 vcc, 0, v47
	v_cndmask_b32_e32 v38, v38, v45, vcc
	v_cmp_lt_f32_e32 vcc, 0, v52
	v_cndmask_b32_e32 v38, v38, v46, vcc
	v_mul_f32_e32 v38, v41, v38
	v_cmp_class_f32_e64 vcc, v30, s26
	v_cndmask_b32_e32 v30, v38, v30, vcc
	v_add_f32_e32 v30, v39, v30
	v_mul_f32_e32 v28, v28, v30
	v_fma_f32 v30, v43, v28, 0
	v_fma_f32 v38, v55, v28, 0
	v_fma_f32 v39, v44, v28, 0
	v_fma_f32 v41, v53, v28, 0
	v_fma_f32 v28, v54, v28, 0
	v_fma_f32 v30, v37, v51, v30
	v_fma_f32 v38, v37, v59, v38
	v_fma_f32 v39, v37, v42, v39
	v_fma_f32 v41, v37, v56, v41
	v_fma_f32 v26, v26, v49, v15
	v_fma_f32 v28, v37, v26, v28
	v_mul_f32_e32 v36, 0.5, v36
	v_add_f32_e32 v37, v9, v48
	v_fma_f32 v30, v36, v37, v30
	v_fma_f32 v37, v27, v50, v19
	v_fma_f32 v37, v36, v37, v38
	v_fma_f32 v38, v36, v56, v39
	v_fma_f32 v39, v48, v27, v40
	v_add_f32_e32 v39, v14, v39
	v_fma_f32 v39, v36, v39, v41
	v_fma_f32 v27, v27, v49, v12
	v_fma_f32 v36, v36, v27, v28
	v_fma_f32 v40, v49, v29, v40
	v_mul_f32_e32 v35, 0.5, v35
	v_add_f32_e32 v28, v8, v49
	v_fma_f32 v30, v35, v28, v30
	v_fma_f32 v28, v29, v50, v11
	v_fma_f32 v28, v35, v28, v37
	v_fma_f32 v26, v35, v26, v38
	v_fma_f32 v27, v35, v27, v39
	v_add_f32_e32 v29, v10, v40
	v_fma_f32 v29, v35, v29, v36
BB2_10:
	s_or_b64 exec, exec, s[24:25]
	v_mov_b32_e32 v35, s7
	v_add_u32_e32 v31, vcc, s6, v31
	v_addc_u32_e32 v32, vcc, v32, v35, vcc
	flat_load_dword v39, v[31:32]
	v_mov_b32_e32 v32, s7
	v_add_u32_e32 v31, vcc, s6, v33
	v_addc_u32_e32 v32, vcc, v34, v32, vcc
	v_add_u32_e32 v33, vcc, s17, v25
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[34:35], 2, v[33:34]
	v_mov_b32_e32 v25, s11
	v_add_u32_e32 v40, vcc, s10, v34
	v_addc_u32_e32 v41, vcc, v25, v35, vcc
	v_add_u32_e32 v35, vcc, s17, v33
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[33:34], 2, v[35:36]
	v_add_u32_e32 v33, vcc, s10, v33
	v_addc_u32_e32 v34, vcc, v25, v34, vcc
	flat_load_dword v38, v[31:32]
	s_waitcnt vmcnt(2) lgkmcnt(2)
	flat_load_dword v37, v[40:41]
	flat_load_dword v36, v[33:34]
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_cmp_gt_i32_e32 vcc, 0, v39
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr25
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr34
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB2_18
; %bb.11:                               ; %NodeBlock401
	v_cmp_lt_i32_e32 vcc, -2, v39
                                        ; implicit-def: $vgpr25
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr32
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB2_13
; %bb.12:
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_fma_f32 v25, v24, v38, v26
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_fma_f32 v31, v24, v37, v27
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v32, v24, v36, v29
BB2_13:                                 ; %Flow425
	s_or_saveexec_b64 s[2:3], s[2:3]
	v_mov_b32_e32 v33, v28
	v_mov_b32_e32 v34, v30
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB2_17
; %bb.14:                               ; %LeafBlock399
	v_cmp_ne_u32_e32 vcc, -2, v39
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_or_saveexec_b64 s[4:5], s[4:5]
	v_mov_b32_e32 v33, v28
	v_mov_b32_e32 v25, v26
	v_mov_b32_e32 v31, v27
	v_mov_b32_e32 v32, v29
	v_mov_b32_e32 v34, v30
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB2_16
; %bb.15:
	v_mov_b32_e32 v32, s23
	v_mov_b32_e32 v31, s22
	flat_load_dwordx4 v[31:34], v[31:32]
	s_add_u32 s24, s22, 32
	s_addc_u32 s25, s23, 0
	v_mov_b32_e32 v41, s21
	v_mov_b32_e32 v40, s20
	v_mov_b32_e32 v43, s19
	v_mov_b32_e32 v42, s18
	flat_load_dwordx3 v[44:46], v[40:41]
	flat_load_dwordx3 v[47:49], v[42:43]
	s_add_u32 s26, s22, 16
	v_mov_b32_e32 v51, s25
	v_mov_b32_e32 v50, s24
	s_addc_u32 s27, s23, 0
	v_mov_b32_e32 v53, s27
	v_mov_b32_e32 v52, s26
	flat_load_dwordx4 v[40:43], v[52:53]
	flat_load_dword v54, v[50:51]
	s_waitcnt vmcnt(7) lgkmcnt(7)
	v_mul_f32_e32 v50, 0.5, v38
	s_waitcnt vmcnt(6) lgkmcnt(6)
	v_mul_f32_e32 v51, 0.5, v37
	s_waitcnt vmcnt(5) lgkmcnt(5)
	v_mul_f32_e32 v52, 0.5, v36
	s_waitcnt vmcnt(4) lgkmcnt(4)
	v_add_f32_e32 v25, v20, v31
	v_add_f32_e32 v31, v16, v34
	v_add_f32_e32 v32, v16, v32
	v_add_f32_e32 v53, v15, v33
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_add_f32_e32 v33, v17, v44
	v_add_f32_e32 v34, v9, v45
	v_add_f32_e32 v44, v8, v46
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_add_f32_e32 v45, v21, v47
	v_add_f32_e32 v46, v19, v48
	v_add_f32_e32 v47, v11, v49
	v_fma_f32 v33, v50, v33, v30
	v_fma_f32 v45, v50, v45, v28
	v_fma_f32 v25, v50, v25, v26
	v_fma_f32 v31, v50, v31, v27
	v_fma_f32 v33, v51, v34, v33
	v_fma_f32 v45, v51, v46, v45
	v_fma_f32 v25, v51, v32, v25
	v_fma_f32 v34, v52, v44, v33
	v_fma_f32 v33, v52, v47, v45
	v_fma_f32 v25, v52, v53, v25
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_f32_e32 v32, v15, v42
	v_add_f32_e32 v40, v14, v40
	v_add_f32_e32 v42, v12, v43
	v_add_f32_e32 v41, v12, v41
	v_fma_f32 v32, v50, v32, v29
	v_fma_f32 v31, v51, v40, v31
	v_fma_f32 v32, v51, v42, v32
	v_fma_f32 v31, v52, v41, v31
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v40, v10, v54
	v_fma_f32 v32, v52, v40, v32
BB2_16:                                 ; %Flow424
	s_or_b64 exec, exec, s[4:5]
BB2_17:                                 ; %Flow426
	s_or_b64 exec, exec, s[2:3]
BB2_18:                                 ; %Flow428
	s_or_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB2_20
; %bb.19:
	v_ashrrev_i32_e32 v40, 31, v39
	v_mov_b32_e32 v25, s13
	v_lshlrev_b64 v[31:32], 2, v[39:40]
	v_add_u32_e32 v31, vcc, s12, v31
	v_addc_u32_e32 v32, vcc, v25, v32, vcc
	s_add_i32 s0, s16, s16
	v_add_u32_e32 v33, vcc, s0, v39
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[39:40], 2, v[33:34]
	v_add_u32_e32 v39, vcc, s12, v39
	v_addc_u32_e32 v40, vcc, v25, v40, vcc
	v_add_u32_e32 v33, vcc, s16, v33
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[41:42], 2, v[33:34]
	v_add_u32_e32 v41, vcc, s12, v41
	v_addc_u32_e32 v42, vcc, v25, v42, vcc
	v_add_u32_e32 v33, vcc, s16, v33
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_u32_e32 v33, vcc, s12, v33
	v_addc_u32_e32 v34, vcc, v25, v34, vcc
	v_mov_b32_e32 v25, s7
	v_add_u32_e32 v43, vcc, s6, v31
	v_addc_u32_e32 v44, vcc, v32, v25, vcc
	s_mov_b32 s25, 0x3ecccccc
	s_mov_b32 s26, 0xf800000
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_mul_f32_e32 v25, v37, v37
	v_mov_b32_e32 v45, 0x4f800000
	v_mov_b32_e32 v46, 0x37800000
	s_movk_i32 s24, 0x260
	v_mul_f32_e32 v47, 0.5, v38
	flat_load_dword v48, v[31:32]
	flat_load_dword v49, v[43:44]
	flat_load_dword v50, v[39:40]
	flat_load_dword v51, v[41:42]
	flat_load_dword v52, v[33:34]
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_div_scale_f32 v31, s[0:1], v48, v48, v49
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_div_scale_f32 v32, s[0:1], v48, v48, v50
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_div_scale_f32 v33, s[0:1], v48, v48, v51
	v_fma_f32 v25, v38, v38, v25
	v_fma_f32 v25, v36, v36, v25
	v_div_scale_f32 v34, vcc, v49, v48, v49
	v_cmp_gt_f32_e64 s[0:1], s26, v25
	v_cndmask_b32_e64 v38, 1.0, v45, s[0:1]
	v_div_scale_f32 v39, s[2:3], v50, v48, v50
	v_mul_f32_e32 v25, v25, v38
	v_cndmask_b32_e64 v38, 1.0, v46, s[0:1]
	v_div_scale_f32 v40, s[0:1], v51, v48, v51
	v_rcp_f32_e32 v41, v31
	v_sqrt_f32_e32 v42, v25
	v_rcp_f32_e32 v43, v32
	v_rcp_f32_e32 v44, v33
	v_fma_f32 v53, -v31, v41, 1.0
	v_fma_f32 v41, v53, v41, v41
	v_fma_f32 v53, -v32, v43, 1.0
	v_mul_f32_e32 v54, v34, v41
	v_fma_f32 v43, v53, v43, v43
	v_fma_f32 v53, -v33, v44, 1.0
	v_fma_f32 v55, -v31, v54, v34
	v_mul_f32_e32 v56, v39, v43
	v_fma_f32 v44, v53, v44, v44
	v_fma_f32 v53, v55, v41, v54
	v_fma_f32 v54, -v32, v56, v39
	v_mul_f32_e32 v55, v40, v44
	v_fma_f32 v31, -v31, v53, v34
	v_fma_f32 v34, v54, v43, v56
	v_fma_f32 v54, -v33, v55, v40
	v_div_fmas_f32 v31, v31, v41, v53
	v_fma_f32 v32, -v32, v34, v39
	v_fma_f32 v39, v54, v44, v55
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f32 v32, v32, v43, v34
	v_fma_f32 v33, -v33, v39, v40
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v33, v33, v44, v39
	v_add_u32_e32 v34, vcc, -1, v42
	v_add_u32_e32 v39, vcc, 1, v42
	v_fma_f32 v40, -v34, v42, v25
	v_fma_f32 v41, -v39, v42, v25
	v_cmp_ge_f32_e32 vcc, 0, v40
	v_cndmask_b32_e32 v34, v42, v34, vcc
	v_cmp_lt_f32_e32 vcc, 0, v41
	v_cndmask_b32_e32 v34, v34, v39, vcc
	v_mul_f32_e32 v34, v38, v34
	v_cmp_class_f32_e64 vcc, v25, s24
	v_cndmask_b32_e32 v25, v34, v25, vcc
	v_mul_f32_e32 v34, -0.5, v48
	v_div_fixup_f32 v31, v31, v48, v49
	v_div_fixup_f32 v32, v32, v48, v50
	v_div_fixup_f32 v33, v33, v48, v51
	v_mul_f32_e32 v38, v32, v32
	v_fma_f32 v38, v31, v31, v38
	v_fma_f32 v38, v33, v33, v38
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v34, v34, v38, v52
	v_mul_f32_e32 v39, s25, v34
	v_mul_f32_e32 v40, 0x3fb33333, v39
	v_div_scale_f32 v41, s[0:1], v48, v48, v40
	v_mul_f32_e32 v25, 0xbe4ccccd, v25
	v_mul_f32_e32 v25, 0.5, v25
	v_sub_f32_e32 v42, v18, v48
	v_sub_f32_e32 v43, v17, v49
	v_div_scale_f32 v44, vcc, v40, v48, v40
	v_add_f32_e32 v53, v17, v49
	v_sub_f32_e32 v54, v9, v50
	v_sub_f32_e32 v55, v8, v51
	v_sub_f32_e32 v56, v13, v52
	v_cmp_gt_f32_e64 s[0:1], s26, v38
	v_cndmask_b32_e64 v57, 1.0, v45, s[0:1]
	v_mul_f32_e32 v38, v38, v57
	v_cndmask_b32_e64 v57, 1.0, v46, s[0:1]
	v_fma_f32 v52, v34, s25, v52
	v_rcp_f32_e32 v34, v41
	v_sqrt_f32_e32 v58, v38
	v_fma_f32 v59, v31, v52, v21
	v_fma_f32 v49, v49, v31, v39
	v_fma_f32 v60, -v41, v34, 1.0
	v_fma_f32 v34, v60, v34, v34
	v_mul_f32_e32 v60, v44, v34
	v_fma_f32 v61, -v41, v60, v44
	v_fma_f32 v60, v61, v34, v60
	v_fma_f32 v41, -v41, v60, v44
	v_div_fmas_f32 v34, v41, v34, v60
	v_add_f32_e32 v41, v20, v49
	v_add_u32_e32 v44, vcc, -1, v58
	v_add_u32_e32 v49, vcc, 1, v58
	v_fma_f32 v60, -v44, v58, v38
	v_fma_f32 v61, -v49, v58, v38
	v_cmp_ge_f32_e32 vcc, 0, v60
	v_cndmask_b32_e32 v44, v58, v44, vcc
	v_cmp_lt_f32_e32 vcc, 0, v61
	v_cndmask_b32_e32 v44, v44, v49, vcc
	v_mul_f32_e32 v44, v57, v44
	v_cmp_class_f32_e64 vcc, v38, s24
	v_cndmask_b32_e32 v38, v44, v38, vcc
	v_add_f32_e32 v38, v22, v38
	v_div_fixup_f32 v34, v34, v48, v40
	v_cmp_gt_f32_e32 vcc, s26, v34
	v_cndmask_b32_e32 v40, 1.0, v45, vcc
	v_mul_f32_e32 v34, v34, v40
	v_sqrt_f32_e32 v40, v34
	v_add_f32_e32 v38, v23, v38
	v_cndmask_b32_e32 v44, 1.0, v46, vcc
	v_add_u32_e32 v45, vcc, -1, v40
	v_add_u32_e32 v46, vcc, 1, v40
	v_fma_f32 v48, -v45, v40, v34
	v_fma_f32 v49, -v46, v40, v34
	v_cmp_ge_f32_e32 vcc, 0, v48
	v_cndmask_b32_e32 v40, v40, v45, vcc
	v_cmp_lt_f32_e32 vcc, 0, v49
	v_cndmask_b32_e32 v40, v40, v46, vcc
	v_mul_f32_e32 v40, v44, v40
	v_cmp_class_f32_e64 vcc, v34, s24
	v_cndmask_b32_e32 v34, v40, v34, vcc
	v_add_f32_e32 v34, v38, v34
	v_mul_f32_e32 v25, v25, v34
	v_fma_f32 v30, v42, v25, v30
	v_fma_f32 v28, v56, v25, v28
	v_fma_f32 v26, v43, v25, v26
	v_fma_f32 v27, v54, v25, v27
	v_fma_f32 v25, v55, v25, v29
	v_fma_f32 v29, v47, v53, v30
	v_fma_f32 v28, v47, v59, v28
	v_fma_f32 v26, v47, v41, v26
	v_fma_f32 v30, v31, v50, v16
	v_fma_f32 v27, v47, v30, v27
	v_fma_f32 v31, v31, v51, v15
	v_fma_f32 v25, v47, v31, v25
	v_mul_f32_e32 v34, 0.5, v37
	v_add_f32_e32 v37, v9, v50
	v_fma_f32 v29, v34, v37, v29
	v_fma_f32 v37, v32, v52, v19
	v_fma_f32 v28, v34, v37, v28
	v_fma_f32 v26, v34, v30, v26
	v_fma_f32 v30, v50, v32, v39
	v_add_f32_e32 v30, v14, v30
	v_fma_f32 v27, v34, v30, v27
	v_fma_f32 v30, v32, v51, v12
	v_fma_f32 v32, v34, v30, v25
	v_fma_f32 v37, v51, v33, v39
	v_mul_f32_e32 v36, 0.5, v36
	v_add_f32_e32 v25, v8, v51
	v_fma_f32 v34, v36, v25, v29
	v_fma_f32 v25, v33, v52, v11
	v_fma_f32 v33, v36, v25, v28
	v_fma_f32 v25, v36, v31, v26
	v_fma_f32 v31, v36, v30, v27
	v_add_f32_e32 v26, v10, v37
	v_fma_f32 v32, v36, v26, v32
BB2_20:
	s_or_b64 exec, exec, s[4:5]
	s_mul_i32 s4, s16, -7
	v_add_u32_e32 v26, vcc, s4, v35
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[27:28], 2, v[26:27]
	v_mov_b32_e32 v30, s9
	v_add_u32_e32 v29, vcc, s8, v27
	v_addc_u32_e32 v30, vcc, v30, v28, vcc
	flat_load_dword v39, v[29:30]
	v_mov_b32_e32 v29, s11
	v_add_u32_e32 v27, vcc, s10, v27
	v_addc_u32_e32 v28, vcc, v29, v28, vcc
	v_add_u32_e32 v29, vcc, s17, v26
	v_ashrrev_i32_e32 v30, 31, v29
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_lshlrev_b64 v[35:36], 2, v[29:30]
	v_mov_b32_e32 v26, s11
	v_add_u32_e32 v40, vcc, s10, v35
	v_addc_u32_e32 v41, vcc, v26, v36, vcc
	v_add_u32_e32 v35, vcc, s17, v29
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[29:30], 2, v[35:36]
	v_add_u32_e32 v29, vcc, s10, v29
	v_addc_u32_e32 v30, vcc, v26, v30, vcc
	flat_load_dword v38, v[27:28]
	flat_load_dword v37, v[40:41]
	flat_load_dword v36, v[29:30]
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_cmp_gt_i32_e32 vcc, 0, v39
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr27
                                        ; implicit-def: $vgpr28
                                        ; implicit-def: $vgpr30
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB2_28
; %bb.21:                               ; %NodeBlock406
	v_cmp_lt_i32_e32 vcc, -2, v39
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr27
                                        ; implicit-def: $vgpr28
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB2_23
; %bb.22:
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_fma_f32 v26, v24, v38, v25
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_fma_f32 v27, v24, v37, v31
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v28, v24, v36, v32
BB2_23:                                 ; %Flow419
	s_or_saveexec_b64 s[2:3], s[2:3]
	v_mov_b32_e32 v29, v33
	v_mov_b32_e32 v30, v34
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB2_27
; %bb.24:                               ; %LeafBlock404
	v_cmp_ne_u32_e32 vcc, -2, v39
	s_and_saveexec_b64 s[24:25], vcc
	s_xor_b64 s[24:25], exec, s[24:25]
	s_or_saveexec_b64 s[24:25], s[24:25]
	v_mov_b32_e32 v29, v33
	v_mov_b32_e32 v26, v25
	v_mov_b32_e32 v27, v31
	v_mov_b32_e32 v28, v32
	v_mov_b32_e32 v30, v34
	s_xor_b64 exec, exec, s[24:25]
	s_cbranch_execz BB2_26
; %bb.25:
	v_mov_b32_e32 v27, s23
	v_mov_b32_e32 v26, s22
	flat_load_dwordx4 v[26:29], v[26:27]
	s_add_u32 s26, s22, 32
	s_addc_u32 s27, s23, 0
	v_mov_b32_e32 v41, s21
	v_mov_b32_e32 v40, s20
	v_mov_b32_e32 v43, s19
	v_mov_b32_e32 v42, s18
	flat_load_dwordx3 v[44:46], v[40:41]
	flat_load_dwordx3 v[47:49], v[42:43]
	s_add_u32 s28, s22, 16
	v_mov_b32_e32 v51, s27
	v_mov_b32_e32 v50, s26
	s_addc_u32 s29, s23, 0
	v_mov_b32_e32 v53, s29
	v_mov_b32_e32 v52, s28
	flat_load_dwordx4 v[40:43], v[52:53]
	flat_load_dword v54, v[50:51]
	s_waitcnt vmcnt(7) lgkmcnt(7)
	v_mul_f32_e32 v50, 0.5, v38
	s_waitcnt vmcnt(6) lgkmcnt(6)
	v_mul_f32_e32 v51, 0.5, v37
	s_waitcnt vmcnt(5) lgkmcnt(5)
	v_mul_f32_e32 v52, 0.5, v36
	s_waitcnt vmcnt(4) lgkmcnt(4)
	v_add_f32_e32 v26, v20, v26
	v_add_f32_e32 v29, v16, v29
	v_add_f32_e32 v27, v16, v27
	v_add_f32_e32 v28, v15, v28
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_add_f32_e32 v30, v17, v44
	v_add_f32_e32 v44, v9, v45
	v_add_f32_e32 v45, v8, v46
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_add_f32_e32 v46, v21, v47
	v_add_f32_e32 v47, v19, v48
	v_add_f32_e32 v48, v11, v49
	v_fma_f32 v30, v50, v30, v34
	v_fma_f32 v46, v50, v46, v33
	v_fma_f32 v26, v50, v26, v25
	v_fma_f32 v49, v50, v29, v31
	v_fma_f32 v29, v51, v44, v30
	v_fma_f32 v44, v51, v47, v46
	v_fma_f32 v26, v51, v27, v26
	v_fma_f32 v30, v52, v45, v29
	v_fma_f32 v29, v52, v48, v44
	v_fma_f32 v26, v52, v28, v26
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_f32_e32 v27, v15, v42
	v_add_f32_e32 v28, v14, v40
	v_add_f32_e32 v40, v12, v43
	v_add_f32_e32 v41, v12, v41
	v_fma_f32 v27, v50, v27, v32
	v_fma_f32 v28, v51, v28, v49
	v_fma_f32 v40, v51, v40, v27
	v_fma_f32 v27, v52, v41, v28
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v28, v10, v54
	v_fma_f32 v28, v52, v28, v40
BB2_26:                                 ; %Flow418
	s_or_b64 exec, exec, s[24:25]
BB2_27:                                 ; %Flow420
	s_or_b64 exec, exec, s[2:3]
BB2_28:                                 ; %Flow422
	s_or_saveexec_b64 s[24:25], s[0:1]
	s_xor_b64 exec, exec, s[24:25]
	s_cbranch_execz BB2_30
; %bb.29:
	v_ashrrev_i32_e32 v40, 31, v39
	v_mov_b32_e32 v28, s13
	v_lshlrev_b64 v[26:27], 2, v[39:40]
	v_add_u32_e32 v26, vcc, s12, v26
	v_addc_u32_e32 v27, vcc, v28, v27, vcc
	s_add_i32 s0, s16, s16
	v_add_u32_e32 v28, vcc, s0, v39
	v_ashrrev_i32_e32 v29, 31, v28
	v_mov_b32_e32 v39, s13
	v_lshlrev_b64 v[29:30], 2, v[28:29]
	v_add_u32_e32 v29, vcc, s12, v29
	v_addc_u32_e32 v30, vcc, v39, v30, vcc
	v_add_u32_e32 v39, vcc, s16, v28
	v_ashrrev_i32_e32 v40, 31, v39
	v_mov_b32_e32 v28, s13
	v_lshlrev_b64 v[40:41], 2, v[39:40]
	v_add_u32_e32 v40, vcc, s12, v40
	v_addc_u32_e32 v41, vcc, v28, v41, vcc
	v_add_u32_e32 v42, vcc, s16, v39
	v_ashrrev_i32_e32 v43, 31, v42
	v_lshlrev_b64 v[42:43], 2, v[42:43]
	v_add_u32_e32 v42, vcc, s12, v42
	v_addc_u32_e32 v43, vcc, v28, v43, vcc
	v_mov_b32_e32 v28, s7
	v_add_u32_e32 v44, vcc, s6, v26
	v_addc_u32_e32 v45, vcc, v27, v28, vcc
	s_mov_b32 s26, 0x3ecccccc
	s_mov_b32 s27, 0xf800000
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_mul_f32_e32 v28, v37, v37
	v_mov_b32_e32 v39, 0x4f800000
	v_mov_b32_e32 v46, 0x37800000
	s_movk_i32 s5, 0x260
	v_mul_f32_e32 v47, 0.5, v38
	flat_load_dword v48, v[26:27]
	flat_load_dword v49, v[44:45]
	flat_load_dword v50, v[29:30]
	flat_load_dword v51, v[40:41]
	flat_load_dword v52, v[42:43]
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_div_scale_f32 v26, s[0:1], v48, v48, v49
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_div_scale_f32 v27, s[0:1], v48, v48, v50
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_div_scale_f32 v29, s[0:1], v48, v48, v51
	v_fma_f32 v28, v38, v38, v28
	v_fma_f32 v28, v36, v36, v28
	v_div_scale_f32 v30, vcc, v49, v48, v49
	v_cmp_gt_f32_e64 s[0:1], s27, v28
	v_cndmask_b32_e64 v38, 1.0, v39, s[0:1]
	v_div_scale_f32 v40, s[2:3], v50, v48, v50
	v_mul_f32_e32 v28, v28, v38
	v_cndmask_b32_e64 v38, 1.0, v46, s[0:1]
	v_div_scale_f32 v41, s[0:1], v51, v48, v51
	v_rcp_f32_e32 v42, v26
	v_sqrt_f32_e32 v43, v28
	v_rcp_f32_e32 v44, v27
	v_rcp_f32_e32 v45, v29
	v_fma_f32 v53, -v26, v42, 1.0
	v_fma_f32 v42, v53, v42, v42
	v_fma_f32 v53, -v27, v44, 1.0
	v_mul_f32_e32 v54, v30, v42
	v_fma_f32 v44, v53, v44, v44
	v_fma_f32 v53, -v29, v45, 1.0
	v_fma_f32 v55, -v26, v54, v30
	v_mul_f32_e32 v56, v40, v44
	v_fma_f32 v45, v53, v45, v45
	v_fma_f32 v53, v55, v42, v54
	v_fma_f32 v54, -v27, v56, v40
	v_mul_f32_e32 v55, v41, v45
	v_fma_f32 v26, -v26, v53, v30
	v_fma_f32 v30, v54, v44, v56
	v_fma_f32 v54, -v29, v55, v41
	v_div_fmas_f32 v26, v26, v42, v53
	v_fma_f32 v27, -v27, v30, v40
	v_fma_f32 v40, v54, v45, v55
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f32 v27, v27, v44, v30
	v_fma_f32 v29, -v29, v40, v41
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v29, v29, v45, v40
	v_add_u32_e32 v30, vcc, -1, v43
	v_add_u32_e32 v40, vcc, 1, v43
	v_fma_f32 v41, -v30, v43, v28
	v_fma_f32 v42, -v40, v43, v28
	v_cmp_ge_f32_e32 vcc, 0, v41
	v_cndmask_b32_e32 v30, v43, v30, vcc
	v_cmp_lt_f32_e32 vcc, 0, v42
	v_cndmask_b32_e32 v30, v30, v40, vcc
	v_mul_f32_e32 v30, v38, v30
	v_cmp_class_f32_e64 vcc, v28, s5
	v_cndmask_b32_e32 v28, v30, v28, vcc
	v_mul_f32_e32 v30, -0.5, v48
	v_div_fixup_f32 v26, v26, v48, v49
	v_div_fixup_f32 v27, v27, v48, v50
	v_div_fixup_f32 v29, v29, v48, v51
	v_mul_f32_e32 v38, v27, v27
	v_fma_f32 v38, v26, v26, v38
	v_fma_f32 v38, v29, v29, v38
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v30, v30, v38, v52
	v_mul_f32_e32 v40, s26, v30
	v_mul_f32_e32 v41, 0x3fb33333, v40
	v_div_scale_f32 v42, s[0:1], v48, v48, v41
	v_mul_f32_e32 v28, 0xbe4ccccd, v28
	v_mul_f32_e32 v28, 0.5, v28
	v_sub_f32_e32 v43, v18, v48
	v_sub_f32_e32 v44, v17, v49
	v_div_scale_f32 v45, vcc, v41, v48, v41
	v_add_f32_e32 v53, v17, v49
	v_sub_f32_e32 v54, v9, v50
	v_sub_f32_e32 v55, v8, v51
	v_sub_f32_e32 v56, v13, v52
	v_cmp_gt_f32_e64 s[0:1], s27, v38
	v_cndmask_b32_e64 v57, 1.0, v39, s[0:1]
	v_mul_f32_e32 v38, v38, v57
	v_cndmask_b32_e64 v57, 1.0, v46, s[0:1]
	v_fma_f32 v52, v30, s26, v52
	v_rcp_f32_e32 v30, v42
	v_sqrt_f32_e32 v58, v38
	v_fma_f32 v59, v26, v52, v21
	v_fma_f32 v49, v49, v26, v40
	v_fma_f32 v60, -v42, v30, 1.0
	v_fma_f32 v30, v60, v30, v30
	v_mul_f32_e32 v60, v45, v30
	v_fma_f32 v61, -v42, v60, v45
	v_fma_f32 v60, v61, v30, v60
	v_fma_f32 v42, -v42, v60, v45
	v_div_fmas_f32 v30, v42, v30, v60
	v_add_f32_e32 v42, v20, v49
	v_add_u32_e32 v45, vcc, -1, v58
	v_add_u32_e32 v49, vcc, 1, v58
	v_fma_f32 v60, -v45, v58, v38
	v_fma_f32 v61, -v49, v58, v38
	v_cmp_ge_f32_e32 vcc, 0, v60
	v_cndmask_b32_e32 v45, v58, v45, vcc
	v_cmp_lt_f32_e32 vcc, 0, v61
	v_cndmask_b32_e32 v45, v45, v49, vcc
	v_mul_f32_e32 v45, v57, v45
	v_cmp_class_f32_e64 vcc, v38, s5
	v_cndmask_b32_e32 v38, v45, v38, vcc
	v_add_f32_e32 v38, v22, v38
	v_div_fixup_f32 v30, v30, v48, v41
	v_cmp_gt_f32_e32 vcc, s27, v30
	v_cndmask_b32_e32 v39, 1.0, v39, vcc
	v_mul_f32_e32 v30, v30, v39
	v_sqrt_f32_e32 v39, v30
	v_add_f32_e32 v38, v23, v38
	v_cndmask_b32_e32 v41, 1.0, v46, vcc
	v_add_u32_e32 v45, vcc, -1, v39
	v_add_u32_e32 v46, vcc, 1, v39
	v_fma_f32 v48, -v45, v39, v30
	v_fma_f32 v49, -v46, v39, v30
	v_cmp_ge_f32_e32 vcc, 0, v48
	v_cndmask_b32_e32 v39, v39, v45, vcc
	v_cmp_lt_f32_e32 vcc, 0, v49
	v_cndmask_b32_e32 v39, v39, v46, vcc
	v_mul_f32_e32 v39, v41, v39
	v_cmp_class_f32_e64 vcc, v30, s5
	v_cndmask_b32_e32 v30, v39, v30, vcc
	v_add_f32_e32 v30, v38, v30
	v_mul_f32_e32 v28, v28, v30
	v_fma_f32 v30, v43, v28, v34
	v_fma_f32 v33, v56, v28, v33
	v_fma_f32 v25, v44, v28, v25
	v_fma_f32 v31, v54, v28, v31
	v_fma_f32 v28, v55, v28, v32
	v_fma_f32 v30, v47, v53, v30
	v_fma_f32 v32, v47, v59, v33
	v_fma_f32 v25, v47, v42, v25
	v_fma_f32 v33, v26, v50, v16
	v_fma_f32 v31, v47, v33, v31
	v_fma_f32 v26, v26, v51, v15
	v_fma_f32 v28, v47, v26, v28
	v_mul_f32_e32 v34, 0.5, v37
	v_add_f32_e32 v37, v9, v50
	v_fma_f32 v30, v34, v37, v30
	v_fma_f32 v37, v27, v52, v19
	v_fma_f32 v32, v34, v37, v32
	v_fma_f32 v25, v34, v33, v25
	v_fma_f32 v33, v50, v27, v40
	v_add_f32_e32 v33, v14, v33
	v_fma_f32 v31, v34, v33, v31
	v_fma_f32 v27, v27, v51, v12
	v_fma_f32 v28, v34, v27, v28
	v_fma_f32 v33, v51, v29, v40
	v_mul_f32_e32 v34, 0.5, v36
	v_add_f32_e32 v36, v8, v51
	v_fma_f32 v30, v34, v36, v30
	v_fma_f32 v29, v29, v52, v11
	v_fma_f32 v29, v34, v29, v32
	v_fma_f32 v26, v34, v26, v25
	v_fma_f32 v27, v34, v27, v31
	v_add_f32_e32 v25, v10, v33
	v_fma_f32 v28, v34, v25, v28
BB2_30:
	s_or_b64 exec, exec, s[24:25]
	v_add_u32_e32 v31, vcc, s4, v35
	v_ashrrev_i32_e32 v32, 31, v31
	v_lshlrev_b64 v[34:35], 2, v[31:32]
	v_mov_b32_e32 v25, s9
	v_add_u32_e32 v32, vcc, s8, v34
	v_addc_u32_e32 v33, vcc, v25, v35, vcc
	flat_load_dword v33, v[32:33]
	v_mov_b32_e32 v25, s11
	v_add_u32_e32 v34, vcc, s10, v34
	v_addc_u32_e32 v35, vcc, v25, v35, vcc
	v_add_u32_e32 v31, vcc, s17, v31
	v_ashrrev_i32_e32 v32, 31, v31
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_lshlrev_b64 v[36:37], 2, v[31:32]
	v_add_u32_e32 v36, vcc, s10, v36
	v_addc_u32_e32 v37, vcc, v25, v37, vcc
	v_add_u32_e32 v31, vcc, s17, v31
	v_ashrrev_i32_e32 v32, 31, v31
	v_lshlrev_b64 v[31:32], 2, v[31:32]
	v_add_u32_e32 v38, vcc, s10, v31
	v_addc_u32_e32 v39, vcc, v25, v32, vcc
	flat_load_dword v32, v[34:35]
	flat_load_dword v31, v[36:37]
	flat_load_dword v25, v[38:39]
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_cmp_gt_i32_e32 vcc, 0, v33
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr38
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB2_38
; %bb.31:                               ; %NodeBlock411
	v_cmp_lt_i32_e32 vcc, -2, v33
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr37
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB2_33
; %bb.32:
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_fma_f32 v34, v24, v32, v26
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_fma_f32 v36, v24, v31, v27
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v37, v24, v25, v28
BB2_33:                                 ; %Flow414
	s_or_saveexec_b64 s[2:3], s[2:3]
	v_mov_b32_e32 v35, v29
	v_mov_b32_e32 v38, v30
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB2_37
; %bb.34:                               ; %LeafBlock409
	v_cmp_ne_u32_e32 vcc, -2, v33
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_or_saveexec_b64 s[4:5], s[4:5]
	v_mov_b32_e32 v35, v29
	v_mov_b32_e32 v34, v26
	v_mov_b32_e32 v36, v27
	v_mov_b32_e32 v37, v28
	v_mov_b32_e32 v38, v30
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB2_36
; %bb.35:
	v_mov_b32_e32 v35, s23
	v_mov_b32_e32 v34, s22
	flat_load_dwordx4 v[34:37], v[34:35]
	s_add_u32 s8, s22, 32
	s_addc_u32 s9, s23, 0
	v_mov_b32_e32 v39, s21
	v_mov_b32_e32 v38, s20
	v_mov_b32_e32 v41, s19
	v_mov_b32_e32 v40, s18
	flat_load_dwordx3 v[43:45], v[38:39]
	flat_load_dwordx3 v[46:48], v[40:41]
	s_add_u32 s10, s22, 16
	v_mov_b32_e32 v50, s9
	v_mov_b32_e32 v49, s8
	s_addc_u32 s11, s23, 0
	v_mov_b32_e32 v52, s11
	v_mov_b32_e32 v51, s10
	flat_load_dwordx4 v[39:42], v[51:52]
	flat_load_dword v24, v[49:50]
	s_waitcnt vmcnt(7) lgkmcnt(7)
	v_mul_f32_e32 v49, 0.5, v32
	s_waitcnt vmcnt(6) lgkmcnt(6)
	v_mul_f32_e32 v50, 0.5, v31
	s_waitcnt vmcnt(5) lgkmcnt(5)
	v_mul_f32_e32 v51, 0.5, v25
	s_waitcnt vmcnt(4) lgkmcnt(4)
	v_add_f32_e32 v34, v20, v34
	v_add_f32_e32 v37, v16, v37
	v_add_f32_e32 v35, v16, v35
	v_add_f32_e32 v36, v15, v36
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_add_f32_e32 v38, v17, v43
	v_add_f32_e32 v43, v9, v44
	v_add_f32_e32 v44, v8, v45
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_add_f32_e32 v45, v21, v46
	v_add_f32_e32 v46, v19, v47
	v_add_f32_e32 v47, v11, v48
	v_fma_f32 v38, v49, v38, v30
	v_fma_f32 v45, v49, v45, v29
	v_fma_f32 v34, v49, v34, v26
	v_fma_f32 v37, v49, v37, v27
	v_fma_f32 v38, v50, v43, v38
	v_fma_f32 v43, v50, v46, v45
	v_fma_f32 v34, v50, v35, v34
	v_fma_f32 v38, v51, v44, v38
	v_fma_f32 v35, v51, v47, v43
	v_fma_f32 v34, v51, v36, v34
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_add_f32_e32 v36, v15, v41
	v_add_f32_e32 v39, v14, v39
	v_add_f32_e32 v41, v12, v42
	v_add_f32_e32 v40, v12, v40
	v_fma_f32 v36, v49, v36, v28
	v_fma_f32 v37, v50, v39, v37
	v_fma_f32 v39, v50, v41, v36
	v_fma_f32 v36, v51, v40, v37
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v24, v10, v24
	v_fma_f32 v37, v51, v24, v39
BB2_36:                                 ; %Flow413
	s_or_b64 exec, exec, s[4:5]
BB2_37:                                 ; %Flow415
	s_or_b64 exec, exec, s[2:3]
BB2_38:                                 ; %Flow416
	s_or_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB2_40
; %bb.39:
	v_ashrrev_i32_e32 v34, 31, v33
	v_mov_b32_e32 v24, s13
	v_lshlrev_b64 v[34:35], 2, v[33:34]
	v_add_u32_e32 v34, vcc, s12, v34
	v_addc_u32_e32 v35, vcc, v24, v35, vcc
	s_add_i32 s0, s16, s16
	v_add_u32_e32 v36, vcc, s0, v33
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[37:38], 2, v[36:37]
	v_add_u32_e32 v37, vcc, s12, v37
	v_addc_u32_e32 v38, vcc, v24, v38, vcc
	v_add_u32_e32 v39, vcc, s16, v36
	v_ashrrev_i32_e32 v40, 31, v39
	v_lshlrev_b64 v[40:41], 2, v[39:40]
	v_add_u32_e32 v40, vcc, s12, v40
	v_addc_u32_e32 v41, vcc, v24, v41, vcc
	v_add_u32_e32 v42, vcc, s16, v39
	v_ashrrev_i32_e32 v43, 31, v42
	v_lshlrev_b64 v[42:43], 2, v[42:43]
	v_add_u32_e32 v42, vcc, s12, v42
	v_addc_u32_e32 v43, vcc, v24, v43, vcc
	v_mov_b32_e32 v24, s7
	v_add_u32_e32 v44, vcc, s6, v34
	v_addc_u32_e32 v45, vcc, v35, v24, vcc
	s_mov_b32 s9, 0x3ecccccc
	s_mov_b32 s10, 0xf800000
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_mul_f32_e32 v24, v31, v31
	v_mov_b32_e32 v33, 0x4f800000
	v_mov_b32_e32 v36, 0x37800000
	s_movk_i32 s8, 0x260
	v_mul_f32_e32 v39, 0.5, v32
	flat_load_dword v46, v[34:35]
	flat_load_dword v47, v[44:45]
	flat_load_dword v48, v[37:38]
	flat_load_dword v49, v[40:41]
	flat_load_dword v50, v[42:43]
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_div_scale_f32 v34, s[0:1], v46, v46, v47
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_div_scale_f32 v35, s[0:1], v46, v46, v48
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_div_scale_f32 v37, s[0:1], v46, v46, v49
	v_fma_f32 v24, v32, v32, v24
	v_fma_f32 v24, v25, v25, v24
	v_div_scale_f32 v32, vcc, v47, v46, v47
	v_cmp_gt_f32_e64 s[0:1], s10, v24
	v_cndmask_b32_e64 v38, 1.0, v33, s[0:1]
	v_div_scale_f32 v40, s[2:3], v48, v46, v48
	v_mul_f32_e32 v24, v24, v38
	v_cndmask_b32_e64 v38, 1.0, v36, s[0:1]
	v_div_scale_f32 v41, s[0:1], v49, v46, v49
	v_rcp_f32_e32 v42, v34
	v_sqrt_f32_e32 v43, v24
	v_rcp_f32_e32 v44, v35
	v_rcp_f32_e32 v45, v37
	v_fma_f32 v51, -v34, v42, 1.0
	v_fma_f32 v42, v51, v42, v42
	v_fma_f32 v51, -v35, v44, 1.0
	v_mul_f32_e32 v52, v32, v42
	v_fma_f32 v44, v51, v44, v44
	v_fma_f32 v51, -v37, v45, 1.0
	v_fma_f32 v53, -v34, v52, v32
	v_mul_f32_e32 v54, v40, v44
	v_fma_f32 v45, v51, v45, v45
	v_fma_f32 v51, v53, v42, v52
	v_fma_f32 v52, -v35, v54, v40
	v_mul_f32_e32 v53, v41, v45
	v_fma_f32 v32, -v34, v51, v32
	v_fma_f32 v34, v52, v44, v54
	v_fma_f32 v52, -v37, v53, v41
	v_div_fmas_f32 v32, v32, v42, v51
	v_fma_f32 v35, -v35, v34, v40
	v_fma_f32 v40, v52, v45, v53
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f32 v34, v35, v44, v34
	v_fma_f32 v35, -v37, v40, v41
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v35, v35, v45, v40
	v_add_u32_e32 v37, vcc, -1, v43
	v_add_u32_e32 v40, vcc, 1, v43
	v_fma_f32 v41, -v37, v43, v24
	v_fma_f32 v42, -v40, v43, v24
	v_cmp_ge_f32_e32 vcc, 0, v41
	v_cndmask_b32_e32 v37, v43, v37, vcc
	v_cmp_lt_f32_e32 vcc, 0, v42
	v_cndmask_b32_e32 v37, v37, v40, vcc
	v_mul_f32_e32 v37, v38, v37
	v_cmp_class_f32_e64 vcc, v24, s8
	v_cndmask_b32_e32 v24, v37, v24, vcc
	v_mul_f32_e32 v37, -0.5, v46
	v_div_fixup_f32 v32, v32, v46, v47
	v_div_fixup_f32 v34, v34, v46, v48
	v_div_fixup_f32 v35, v35, v46, v49
	v_mul_f32_e32 v38, v34, v34
	v_fma_f32 v38, v32, v32, v38
	v_fma_f32 v38, v35, v35, v38
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v37, v37, v38, v50
	v_mul_f32_e32 v40, s9, v37
	v_mul_f32_e32 v41, 0x3fb33333, v40
	v_div_scale_f32 v42, s[0:1], v46, v46, v41
	v_mul_f32_e32 v24, 0xbe4ccccd, v24
	v_mul_f32_e32 v24, 0.5, v24
	v_sub_f32_e32 v18, v18, v46
	v_sub_f32_e32 v43, v17, v47
	v_div_scale_f32 v44, vcc, v41, v46, v41
	v_add_f32_e32 v17, v17, v47
	v_sub_f32_e32 v45, v9, v48
	v_sub_f32_e32 v51, v8, v49
	v_sub_f32_e32 v13, v13, v50
	v_cmp_gt_f32_e64 s[0:1], s10, v38
	v_cndmask_b32_e64 v52, 1.0, v33, s[0:1]
	v_mul_f32_e32 v38, v38, v52
	v_cndmask_b32_e64 v52, 1.0, v36, s[0:1]
	v_fma_f32 v37, v37, s9, v50
	v_rcp_f32_e32 v50, v42
	v_sqrt_f32_e32 v53, v38
	v_fma_f32 v47, v47, v32, v40
	v_fma_f32 v21, v32, v37, v21
	v_fma_f32 v54, -v42, v50, 1.0
	v_fma_f32 v50, v54, v50, v50
	v_mul_f32_e32 v54, v44, v50
	v_fma_f32 v55, -v42, v54, v44
	v_fma_f32 v54, v55, v50, v54
	v_fma_f32 v42, -v42, v54, v44
	v_div_fmas_f32 v42, v42, v50, v54
	v_add_f32_e32 v20, v20, v47
	v_add_u32_e32 v44, vcc, -1, v53
	v_add_u32_e32 v47, vcc, 1, v53
	v_fma_f32 v50, -v44, v53, v38
	v_fma_f32 v54, -v47, v53, v38
	v_cmp_ge_f32_e32 vcc, 0, v50
	v_cndmask_b32_e32 v44, v53, v44, vcc
	v_cmp_lt_f32_e32 vcc, 0, v54
	v_cndmask_b32_e32 v44, v44, v47, vcc
	v_mul_f32_e32 v44, v52, v44
	v_cmp_class_f32_e64 vcc, v38, s8
	v_cndmask_b32_e32 v38, v44, v38, vcc
	v_add_f32_e32 v22, v22, v38
	v_div_fixup_f32 v38, v42, v46, v41
	v_cmp_gt_f32_e32 vcc, s10, v38
	v_cndmask_b32_e32 v33, 1.0, v33, vcc
	v_mul_f32_e32 v33, v38, v33
	v_sqrt_f32_e32 v38, v33
	v_add_f32_e32 v22, v23, v22
	v_cndmask_b32_e32 v23, 1.0, v36, vcc
	v_add_u32_e32 v36, vcc, -1, v38
	v_add_u32_e32 v41, vcc, 1, v38
	v_fma_f32 v42, -v36, v38, v33
	v_fma_f32 v44, -v41, v38, v33
	v_cmp_ge_f32_e32 vcc, 0, v42
	v_cndmask_b32_e32 v36, v38, v36, vcc
	v_cmp_lt_f32_e32 vcc, 0, v44
	v_cndmask_b32_e32 v36, v36, v41, vcc
	v_mul_f32_e32 v23, v23, v36
	v_cmp_class_f32_e64 vcc, v33, s8
	v_cndmask_b32_e32 v23, v23, v33, vcc
	v_add_f32_e32 v22, v22, v23
	v_mul_f32_e32 v22, v24, v22
	v_fma_f32 v18, v18, v22, v30
	v_fma_f32 v13, v13, v22, v29
	v_fma_f32 v23, v43, v22, v26
	v_fma_f32 v24, v45, v22, v27
	v_fma_f32 v22, v51, v22, v28
	v_fma_f32 v17, v39, v17, v18
	v_fma_f32 v13, v39, v21, v13
	v_fma_f32 v18, v39, v20, v23
	v_fma_f32 v16, v32, v48, v16
	v_fma_f32 v15, v32, v49, v15
	v_fma_f32 v20, v39, v16, v24
	v_fma_f32 v21, v39, v15, v22
	v_mul_f32_e32 v22, 0.5, v31
	v_add_f32_e32 v9, v9, v48
	v_fma_f32 v9, v22, v9, v17
	v_fma_f32 v17, v34, v37, v19
	v_fma_f32 v13, v22, v17, v13
	v_fma_f32 v17, v48, v34, v40
	v_fma_f32 v19, v49, v35, v40
	v_fma_f32 v16, v22, v16, v18
	v_add_f32_e32 v14, v14, v17
	v_fma_f32 v14, v22, v14, v20
	v_fma_f32 v12, v34, v49, v12
	v_fma_f32 v17, v22, v12, v21
	v_mul_f32_e32 v18, 0.5, v25
	v_add_f32_e32 v8, v8, v49
	v_fma_f32 v38, v18, v8, v9
	v_fma_f32 v8, v35, v37, v11
	v_fma_f32 v35, v18, v8, v13
	v_fma_f32 v34, v18, v15, v16
	v_fma_f32 v36, v18, v12, v14
	v_add_f32_e32 v8, v10, v19
	v_fma_f32 v37, v18, v8, v17
BB2_40:
	s_or_b64 exec, exec, s[4:5]
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_mov_b32_e32 v8, s15
	v_add_u32_e32 v2, vcc, s14, v2
	v_addc_u32_e32 v3, vcc, v8, v3, vcc
	flat_store_dword v[2:3], v38
	v_mov_b32_e32 v8, s7
	v_add_u32_e32 v2, vcc, s6, v2
	v_addc_u32_e32 v3, vcc, v3, v8, vcc
	flat_store_dword v[2:3], v34
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_mov_b32_e32 v2, s15
	v_add_u32_e32 v0, vcc, s14, v0
	v_addc_u32_e32 v1, vcc, v2, v1, vcc
	flat_store_dword v[0:1], v36
	v_lshlrev_b64 v[0:1], 2, v[4:5]
	v_add_u32_e32 v0, vcc, s14, v0
	v_addc_u32_e32 v1, vcc, v2, v1, vcc
	flat_store_dword v[0:1], v37
	v_lshlrev_b64 v[0:1], 2, v[6:7]
	v_add_u32_e32 v0, vcc, s14, v0
	v_addc_u32_e32 v1, vcc, v2, v1, vcc
	flat_store_dword v[0:1], v35
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_
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
		.amdhsa_next_free_vgpr 62
		.amdhsa_next_free_sgpr 39
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
	.size	_Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_, .Lfunc_end2-_Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 8068
; NumSgprs: 43
; NumVgprs: 62
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 5
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 62
; Occupancy: 4
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z14cuda_time_stepiiPfS_S_S_ ; -- Begin function _Z14cuda_time_stepiiPfS_S_S_
	.globl	_Z14cuda_time_stepiiPfS_S_S_
	.p2align	8
	.type	_Z14cuda_time_stepiiPfS_S_S_,@function
_Z14cuda_time_stepiiPfS_S_S_:           ; @_Z14cuda_time_stepiiPfS_S_S_
_Z14cuda_time_stepiiPfS_S_S_$local:
