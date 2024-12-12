	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z6renderP4vec3iiiiP6cameraP6sphere ; -- Begin function _Z6renderP4vec3iiiiP6cameraP6sphere
	.globl	_Z6renderP4vec3iiiiP6cameraP6sphere
	.p2align	8
	.type	_Z6renderP4vec3iiiiP6cameraP6sphere,@function
_Z6renderP4vec3iiiiP6cameraP6sphere:    ; @_Z6renderP4vec3iiiiP6cameraP6sphere
_Z6renderP4vec3iiiiP6cameraP6sphere$local:
; %bb.0:
	s_load_dwordx4 s[12:15], s[6:7], 0x8
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s1, s0, 16
	s_and_b32 s0, s0, 0xffff
	s_mul_i32 s8, s8, s0
	v_add_u32_e32 v0, vcc, s8, v0
	s_mul_i32 s9, s9, s1
	v_add_u32_e32 v1, vcc, s9, v1
	v_cmp_gt_i32_e32 vcc, s12, v0
	v_cmp_gt_i32_e64 s[0:1], s13, v1
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz BB0_51
; %bb.1:
	s_load_dwordx2 s[4:5], s[6:7], 0x0
	s_mov_b32 s8, 0
	s_cmp_lt_i32 s14, 1
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v3, v2
	v_mov_b32_e32 v4, v2
	s_cbranch_scc1 BB0_50
; %bb.2:                                ; %.lr.ph386
	v_cvt_f32_i32_e32 v2, v0
	v_cvt_f32_i32_e32 v3, s12
	v_cvt_f32_i32_e32 v4, v1
	v_cvt_f32_i32_e32 v8, s13
	v_div_scale_f32 v5, s[0:1], v3, v3, v2
	v_div_scale_f32 v6, s[0:1], v8, v8, v4
	v_div_scale_f32 v7, vcc, v2, v3, v2
	v_div_scale_f32 v9, s[0:1], v4, v8, v4
	v_rcp_f32_e32 v10, v5
	v_rcp_f32_e32 v11, v6
	s_load_dwordx4 s[16:19], s[6:7], 0x18
	s_waitcnt lgkmcnt(0)
	s_load_dwordx16 s[36:51], s[16:17], 0x0
	v_fma_f32 v12, -v5, v10, 1.0
	v_fma_f32 v13, -v6, v11, 1.0
	v_fma_f32 v10, v12, v10, v10
	v_fma_f32 v11, v13, v11, v11
	v_mul_f32_e32 v12, v7, v10
	v_mul_f32_e32 v13, v9, v11
	v_fma_f32 v14, -v5, v12, v7
	v_fma_f32 v15, -v6, v13, v9
	v_fma_f32 v12, v14, v10, v12
	v_fma_f32 v13, v15, v11, v13
	v_fma_f32 v5, -v5, v12, v7
	v_fma_f32 v6, -v6, v13, v9
	v_div_fmas_f32 v9, v5, v10, v12
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v10, v6, v11, v13
	s_load_dwordx2 s[0:1], s[16:17], 0x40
	s_load_dword s2, s[16:17], 0x54
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e64 v5, s2, 0.5
	v_mov_b32_e32 v11, s39
	v_mul_f32_e32 v6, s51, v5
	v_mul_f32_e32 v7, s0, v5
	v_mul_f32_e32 v12, s1, v5
	v_fma_f32 v13, s48, v5, v6
	v_fma_f32 v14, s49, v5, v7
	v_fma_f32 v12, s50, v5, v12
	v_add_f32_e32 v5, s36, v13
	v_add_f32_e32 v6, s37, v14
	v_add_f32_e32 v7, s38, v12
	v_div_fixup_f32 v2, v9, v3, v2
	v_div_fixup_f32 v3, v10, v8, v4
	v_fma_f32 v4, v2, s42, v11
	v_mov_b32_e32 v8, s40
	v_fma_f32 v8, v2, s43, v8
	v_mov_b32_e32 v9, s41
	v_fma_f32 v2, v2, s44, v9
	v_fma_f32 v4, v3, s45, v4
	v_fma_f32 v8, v3, s46, v8
	v_fma_f32 v2, v3, s47, v2
	v_subrev_f32_e32 v3, s36, v4
	v_subrev_f32_e32 v4, s37, v8
	v_subrev_f32_e32 v2, s38, v2
	v_sub_f32_e32 v8, v3, v13
	v_sub_f32_e32 v9, v4, v14
	v_sub_f32_e32 v10, v2, v12
	v_cmp_gt_i32_e64 s[6:7], s15, 0
	v_mov_b32_e32 v2, 0
	s_mov_b32 s9, 0xf800000
	s_mov_b32 s10, 0x4f800000
	s_movk_i32 s11, 0x260
	s_mov_b32 s13, 0x37800000
	s_mov_b32 s16, 0x3a83126f
	s_mov_b32 s17, 0x3e800000
	s_mov_b32 s20, 0x3eb33333
	s_brev_b32 s21, 1
	s_mov_b32 s22, 0x3f2aaaab
	s_mov_b32 s23, 0x3e76c4e1
	s_mov_b32 s24, 0x3ecccdef
	s_mov_b32 s25, 0x3f317218
	s_mov_b32 s26, 0xb102e308
	s_mov_b32 s27, 0x40a00000
	s_movk_i32 s28, 0x204
	s_mov_b32 s29, 0x7f800000
	s_mov_b32 s30, 0x3ab42872
	s_mov_b32 s31, 0x3d2aadcc
	s_mov_b32 s33, 0x3e2aaa47
	s_mov_b32 s34, 0x3efffffc
	s_mov_b32 s35, 0x42b20000
	s_mov_b32 s36, 0xc2d00000
	s_movk_i32 s37, 0x200
	s_brev_b32 s38, -2
	v_mov_b32_e32 v3, v2
	v_mov_b32_e32 v4, v2
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr23
                                        ; implicit-def: $vgpr24
                                        ; implicit-def: $vgpr25
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr12
                                        ; implicit-def: $vgpr13
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr19
                                        ; implicit-def: $vgpr17
                                        ; implicit-def: $vgpr15
                                        ; implicit-def: $vgpr22
                                        ; implicit-def: $vgpr21
                                        ; implicit-def: $vgpr20
                                        ; implicit-def: $vgpr18
                                        ; implicit-def: $vgpr16
                                        ; implicit-def: $vgpr14
                                        ; implicit-def: $vgpr28_vgpr29
	s_branch BB0_4
BB0_3:                                  ; %_Z5colorRK3rayP6spherei.exit
                                        ;   in Loop: Header=BB0_4 Depth=1
	s_or_b64 exec, exec, s[40:41]
	v_add_f32_e32 v2, v2, v44
	v_add_f32_e32 v3, v3, v46
	s_add_i32 s8, s8, 1
	s_cmp_eq_u32 s8, s14
	v_add_f32_e32 v4, v4, v45
	s_cbranch_scc1 BB0_50
BB0_4:                                  ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;       Child Loop BB0_10 Depth 3
	s_mov_b64 s[40:41], 0
	v_mov_b32_e32 v27, 1.0
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr43
	v_mov_b32_e32 v40, v10
	v_mov_b32_e32 v35, v9
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v37, v7
	v_mov_b32_e32 v38, v6
	v_mov_b32_e32 v39, v5
	v_mov_b32_e32 v33, v27
	v_mov_b32_e32 v34, v27
	s_mov_b32 s39, 0
	s_branch BB0_6
BB0_5:                                  ; %Flow474
                                        ;   in Loop: Header=BB0_6 Depth=2
	s_or_b64 exec, exec, s[42:43]
	s_and_b64 s[0:1], exec, s[2:3]
	s_or_b64 s[40:41], s[0:1], s[40:41]
	s_andn2_b64 exec, exec, s[40:41]
	s_cbranch_execz BB0_3
BB0_6:                                  ; %.preheader
                                        ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_10 Depth 3
	s_andn2_b64 vcc, exec, s[6:7]
	s_cbranch_vccnz BB0_17
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=2
	v_mul_f32_e32 v44, v35, v35
	v_fma_f32 v44, v36, v36, v44
	v_fma_f32 v44, v40, v40, v44
	s_mov_b64 s[2:3], 0
	v_mov_b32_e32 v45, 0x7f7fffff
                                        ; implicit-def: $sgpr42_sgpr43
	s_mov_b32 s44, s15
	s_mov_b64 s[46:47], s[18:19]
	s_branch BB0_10
BB0_8:                                  ; %Flow471
                                        ;   in Loop: Header=BB0_10 Depth=3
	s_or_b64 exec, exec, s[50:51]
	s_andn2_b64 s[42:43], s[42:43], exec
	s_and_b64 s[0:1], s[0:1], exec
	s_or_b64 s[42:43], s[42:43], s[0:1]
BB0_9:                                  ; %_Z3hit6sphere3rayffP10hit_record.exit.i
                                        ;   in Loop: Header=BB0_10 Depth=3
	s_or_b64 exec, exec, s[48:49]
	s_xor_b64 s[0:1], s[42:43], -1
	s_or_b64 s[0:1], s[2:3], s[0:1]
	s_add_u32 s46, s46, 24
	s_addc_u32 s47, s47, 0
	s_add_i32 s44, s44, -1
	s_andn2_b64 s[2:3], s[2:3], exec
	s_and_b64 s[48:49], s[0:1], exec
	s_or_b64 s[2:3], s[2:3], s[48:49]
	s_cmp_eq_u32 s44, 0
	v_cndmask_b32_e64 v45, v26, v45, s[42:43]
	s_cbranch_scc1 BB0_18
BB0_10:                                 ;   Parent Loop BB0_4 Depth=1
                                        ;     Parent Loop BB0_6 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	v_mov_b32_e32 v46, s46
	v_mov_b32_e32 v47, s47
	flat_load_dwordx4 v[46:49], v[46:47]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_f32_e32 v50, v39, v46
	v_sub_f32_e32 v51, v38, v47
	v_sub_f32_e32 v52, v37, v48
	v_mul_f32_e32 v53, v35, v51
	v_mul_f32_e32 v51, v51, v51
	v_fma_f32 v53, v36, v50, v53
	v_fma_f32 v50, v50, v50, v51
	v_fma_f32 v53, v40, v52, v53
	v_fma_f32 v50, v52, v52, v50
	v_fma_f32 v50, -v49, v49, v50
	v_mul_f32_e32 v50, v44, v50
	v_fma_f32 v50, v53, v53, -v50
	v_cmp_lt_f32_e32 vcc, 0, v50
	s_or_b64 s[42:43], s[42:43], exec
	s_and_saveexec_b64 s[48:49], vcc
	s_cbranch_execz BB0_9
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=3
	v_mov_b32_e32 v51, s10
	v_cmp_gt_f32_e32 vcc, s9, v50
	v_cndmask_b32_e32 v51, 1.0, v51, vcc
	v_mul_f32_e32 v50, v50, v51
	v_sqrt_f32_e32 v51, v50
	v_add_u32_e64 v52, s[0:1], -1, v51
	v_add_u32_e64 v54, s[0:1], 1, v51
	v_mov_b32_e32 v55, s13
	v_cndmask_b32_e32 v55, 1.0, v55, vcc
	v_fma_f32 v56, -v54, v51, v50
	v_fma_f32 v57, -v52, v51, v50
	v_cmp_ge_f32_e32 vcc, 0, v57
	v_cndmask_b32_e32 v51, v51, v52, vcc
	v_cmp_lt_f32_e32 vcc, 0, v56
	v_cndmask_b32_e32 v51, v51, v54, vcc
	v_mul_f32_e32 v51, v55, v51
	v_cmp_class_f32_e64 vcc, v50, s11
	v_cndmask_b32_e32 v54, v51, v50, vcc
	v_sub_f32_e64 v55, -v53, v54
	v_div_scale_f32 v52, s[0:1], v44, v44, v55
	v_div_scale_f32 v56, vcc, v55, v44, v55
	v_rcp_f32_e32 v57, v52
	s_add_u32 s0, s46, 16
	s_addc_u32 s1, s47, 0
	v_mov_b32_e32 v51, s1
	v_mov_b32_e32 v50, s0
	v_fma_f32 v58, -v52, v57, 1.0
	v_fma_f32 v57, v58, v57, v57
	v_mul_f32_e32 v58, v56, v57
	v_fma_f32 v59, -v52, v58, v56
	v_fma_f32 v58, v59, v57, v58
	v_fma_f32 v52, -v52, v58, v56
	v_div_fmas_f32 v56, v52, v57, v58
	flat_load_dwordx2 v[51:52], v[50:51]
	v_div_fixup_f32 v50, v56, v44, v55
	v_cmp_nlt_f32_e32 vcc, v50, v45
	v_cmp_nlt_f32_e64 s[0:1], s16, v50
	s_or_b64 s[50:51], vcc, s[0:1]
                                        ; implicit-def: $sgpr0_sgpr1
	s_and_saveexec_b64 s[52:53], s[50:51]
	s_xor_b64 s[50:51], exec, s[52:53]
	s_cbranch_execz BB0_15
; %bb.12:                               ;   in Loop: Header=BB0_10 Depth=3
	v_sub_f32_e32 v53, v54, v53
	v_div_scale_f32 v54, s[0:1], v44, v44, v53
	v_div_scale_f32 v55, vcc, v53, v44, v53
	v_rcp_f32_e32 v56, v54
	v_fma_f32 v57, -v54, v56, 1.0
	v_fma_f32 v56, v57, v56, v56
	v_mul_f32_e32 v57, v55, v56
	v_fma_f32 v58, -v54, v57, v55
	v_fma_f32 v57, v58, v56, v57
	v_fma_f32 v54, -v54, v57, v55
	v_div_fmas_f32 v54, v54, v56, v57
	v_div_fixup_f32 v53, v54, v44, v53
	v_cmp_lt_f32_e32 vcc, v53, v45
	v_cmp_lt_f32_e64 s[0:1], s16, v53
	s_and_b64 s[54:55], vcc, s[0:1]
	s_mov_b64 s[52:53], -1
	s_and_saveexec_b64 s[0:1], s[54:55]
	s_cbranch_execz BB0_14
; %bb.13:                               ; %.critedge.i.i
                                        ;   in Loop: Header=BB0_10 Depth=3
	v_div_scale_f32 v11, s[52:53], v49, v49, 1.0
	v_div_scale_f32 v12, vcc, 1.0, v49, 1.0
	v_rcp_f32_e32 v13, v11
	v_fma_f32 v23, -v11, v13, 1.0
	v_fma_f32 v13, v23, v13, v13
	v_mul_f32_e32 v23, v12, v13
	v_fma_f32 v24, -v11, v23, v12
	v_fma_f32 v23, v24, v13, v23
	v_fma_f32 v11, -v11, v23, v12
	v_div_fmas_f32 v23, v11, v13, v23
	v_fma_f32 v13, v36, v53, v39
	v_fma_f32 v12, v35, v53, v38
	v_fma_f32 v11, v40, v53, v37
	s_xor_b64 s[52:53], exec, -1
	v_mov_b32_e32 v26, v53
	v_sub_f32_e32 v24, v13, v46
	v_sub_f32_e32 v28, v12, v47
	v_sub_f32_e32 v29, v11, v48
	v_div_fixup_f32 v23, v23, v49, 1.0
	v_mul_f32_e32 v25, v23, v24
	v_mul_f32_e32 v24, v23, v28
	v_mul_f32_e32 v23, v23, v29
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v28, v51
	v_mov_b32_e32 v29, v52
BB0_14:                                 ; %Flow469
                                        ;   in Loop: Header=BB0_10 Depth=3
	s_or_b64 exec, exec, s[0:1]
	s_andn2_b64 s[0:1], s[0:1], exec
	s_and_b64 s[52:53], s[52:53], exec
	s_or_b64 s[0:1], s[0:1], s[52:53]
BB0_15:                                 ; %Flow470
                                        ;   in Loop: Header=BB0_10 Depth=3
	s_or_saveexec_b64 s[50:51], s[50:51]
	s_xor_b64 exec, exec, s[50:51]
	s_cbranch_execz BB0_8
; %bb.16:                               ; %.critedge2.i.i
                                        ;   in Loop: Header=BB0_10 Depth=3
	v_div_scale_f32 v11, s[52:53], v49, v49, 1.0
	v_div_scale_f32 v12, vcc, 1.0, v49, 1.0
	v_rcp_f32_e32 v13, v11
	v_fma_f32 v23, -v11, v13, 1.0
	v_fma_f32 v13, v23, v13, v13
	v_mul_f32_e32 v23, v12, v13
	v_fma_f32 v24, -v11, v23, v12
	v_fma_f32 v23, v24, v13, v23
	v_fma_f32 v11, -v11, v23, v12
	v_div_fmas_f32 v23, v11, v13, v23
	v_fma_f32 v13, v36, v50, v39
	v_fma_f32 v12, v35, v50, v38
	v_fma_f32 v11, v40, v50, v37
	s_andn2_b64 s[0:1], s[0:1], exec
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v28, v51
	v_mov_b32_e32 v29, v52
	v_sub_f32_e32 v24, v13, v46
	v_sub_f32_e32 v26, v12, v47
	v_sub_f32_e32 v46, v11, v48
	v_div_fixup_f32 v23, v23, v49, 1.0
	v_mul_f32_e32 v25, v23, v24
	v_mul_f32_e32 v24, v23, v26
	v_mul_f32_e32 v23, v23, v46
	v_mov_b32_e32 v26, v50
	s_branch BB0_8
BB0_17:                                 ;   in Loop: Header=BB0_6 Depth=2
	s_mov_b64 s[0:1], 0
BB0_18:                                 ; %Flow473
                                        ;   in Loop: Header=BB0_6 Depth=2
	s_xor_b64 s[0:1], s[0:1], -1
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr44
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_20
; %bb.19:                               ;   in Loop: Header=BB0_6 Depth=2
	v_mul_f32_e32 v44, v35, v35
	v_fma_f32 v44, v36, v36, v44
	v_fma_f32 v44, v40, v40, v44
	v_mov_b32_e32 v45, s10
	v_cmp_gt_f32_e32 vcc, s9, v44
	v_cndmask_b32_e32 v45, 1.0, v45, vcc
	v_mul_f32_e32 v44, v44, v45
	v_sqrt_f32_e32 v45, v44
	v_add_u32_e64 v46, s[0:1], -1, v45
	v_add_u32_e64 v47, s[0:1], 1, v45
	v_mov_b32_e32 v48, s13
	v_cndmask_b32_e32 v48, 1.0, v48, vcc
	v_fma_f32 v49, -v47, v45, v44
	v_fma_f32 v50, -v46, v45, v44
	v_cmp_ge_f32_e32 vcc, 0, v50
	v_cndmask_b32_e32 v45, v45, v46, vcc
	v_cmp_lt_f32_e32 vcc, 0, v49
	v_cndmask_b32_e32 v45, v45, v47, vcc
	v_mul_f32_e32 v45, v48, v45
	v_cmp_class_f32_e64 vcc, v44, s11
	v_cndmask_b32_e32 v44, v45, v44, vcc
	v_div_scale_f32 v45, s[0:1], v44, v44, 1.0
	v_div_scale_f32 v46, vcc, 1.0, v44, 1.0
	v_rcp_f32_e32 v47, v45
	v_fma_f32 v48, -v45, v47, 1.0
	v_fma_f32 v47, v48, v47, v47
	v_mul_f32_e32 v48, v46, v47
	v_fma_f32 v49, -v45, v48, v46
	v_fma_f32 v48, v49, v47, v48
	v_fma_f32 v45, -v45, v48, v46
	v_div_fmas_f32 v45, v45, v47, v48
	v_div_fixup_f32 v44, v45, v44, 1.0
	v_fma_f32 v44, v35, v44, 1.0
	v_fma_f32 v45, v44, -0.5, 1.0
	v_fma_f32 v46, v44, s17, v45
	v_fma_f32 v47, v44, s20, v45
	v_fma_f32 v48, v44, 0.5, v45
	v_mul_f32_e32 v44, v34, v46
	v_mul_f32_e32 v45, v33, v47
	v_mul_f32_e32 v46, v27, v48
BB0_20:                                 ; %Flow467
                                        ;   in Loop: Header=BB0_6 Depth=2
	s_or_saveexec_b64 s[42:43], s[2:3]
	s_mov_b64 s[0:1], 0
	s_xor_b64 exec, exec, s[42:43]
	s_cbranch_execz BB0_48
; %bb.21:                               ;   in Loop: Header=BB0_6 Depth=2
	v_add_u32_e32 v48, vcc, 20, v28
	v_addc_u32_e32 v49, vcc, 0, v29, vcc
	flat_load_dwordx4 v[44:47], v[28:29]
	flat_load_dword v54, v[48:49]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_lt_i32_e32 vcc, 0, v44
	s_mov_b64 s[44:45], 0
	s_mov_b64 s[0:1], 0
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr58
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[46:47], exec, s[2:3]
	s_cbranch_execz BB0_39
; %bb.22:                               ; %NodeBlock
                                        ;   in Loop: Header=BB0_6 Depth=2
	v_cmp_lt_i32_e32 vcc, 1, v44
	s_mov_b64 s[2:3], 0
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr53
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[48:49], exec, s[0:1]
	s_cbranch_execz BB0_36
; %bb.23:                               ; %LeafBlock455
                                        ;   in Loop: Header=BB0_6 Depth=2
	v_cmp_eq_u32_e32 vcc, 2, v44
	s_mov_b64 s[0:1], -1
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr53
	s_and_saveexec_b64 s[50:51], vcc
	s_cbranch_execz BB0_35
; %bb.24:                               ;   in Loop: Header=BB0_6 Depth=2
	v_mul_f32_e32 v48, v35, v24
	v_fma_f32 v48, v36, v25, v48
	v_fma_f32 v51, v40, v23, v48
	v_cmp_nlt_f32_e32 vcc, 0, v51
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr55
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[52:53], exec, s[0:1]
	s_cbranch_execz BB0_26
; %bb.25:                               ;   in Loop: Header=BB0_6 Depth=2
	v_div_scale_f32 v48, s[0:1], v54, v54, 1.0
	v_mul_f32_e32 v49, v35, v35
	v_fma_f32 v49, v36, v36, v49
	v_fma_f32 v49, v40, v40, v49
	v_mov_b32_e32 v50, s10
	v_cmp_gt_f32_e32 vcc, s9, v49
	v_cndmask_b32_e32 v50, 1.0, v50, vcc
	v_mul_f32_e32 v49, v49, v50
	v_sqrt_f32_e32 v50, v49
	v_div_scale_f32 v52, s[0:1], 1.0, v54, 1.0
	v_xor_b32_e32 v53, s21, v51
	v_add_u32_e64 v55, s[2:3], -1, v50
	v_add_u32_e64 v56, s[2:3], 1, v50
	v_mov_b32_e32 v57, s13
	v_cndmask_b32_e32 v57, 1.0, v57, vcc
	v_fma_f32 v58, -v56, v50, v49
	v_fma_f32 v59, -v55, v50, v49
	v_cmp_ge_f32_e32 vcc, 0, v59
	v_cndmask_b32_e32 v50, v50, v55, vcc
	v_cmp_lt_f32_e32 vcc, 0, v58
	v_cndmask_b32_e32 v50, v50, v56, vcc
	v_mul_f32_e32 v50, v57, v50
	v_cmp_class_f32_e64 vcc, v49, s11
	v_cndmask_b32_e32 v49, v50, v49, vcc
	v_div_scale_f32 v50, s[2:3], v49, v49, v53
	v_div_scale_f32 v53, s[2:3], v53, v49, v53
	v_rcp_f32_e32 v55, v48
	v_fma_f32 v56, -v48, v55, 1.0
	v_fma_f32 v55, v56, v55, v55
	v_mul_f32_e32 v56, v52, v55
	v_fma_f32 v57, -v48, v56, v52
	v_fma_f32 v56, v57, v55, v56
	v_rcp_f32_e32 v57, v50
	v_fma_f32 v48, -v48, v56, v52
	s_mov_b64 vcc, s[0:1]
	v_div_fmas_f32 v48, v48, v55, v56
	v_fma_f32 v52, -v50, v57, 1.0
	v_fma_f32 v52, v52, v57, v57
	v_mul_f32_e32 v55, v53, v52
	v_fma_f32 v56, -v50, v55, v53
	v_fma_f32 v55, v56, v52, v55
	v_fma_f32 v50, -v50, v55, v53
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f32 v50, v50, v52, v55
	v_div_fixup_f32 v52, v48, v54, 1.0
	v_div_fixup_f32 v55, v50, v49, -v51
BB0_26:                                 ; %Flow460
                                        ;   in Loop: Header=BB0_6 Depth=2
	s_or_saveexec_b64 s[2:3], s[52:53]
	v_mov_b32_e32 v53, v25
	v_mov_b32_e32 v56, v24
	v_mov_b32_e32 v57, v23
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_28
; %bb.27:                               ;   in Loop: Header=BB0_6 Depth=2
	v_mul_f32_e32 v48, v35, v35
	v_fma_f32 v48, v36, v36, v48
	v_fma_f32 v48, v40, v40, v48
	v_mov_b32_e32 v49, s10
	v_cmp_gt_f32_e32 vcc, s9, v48
	v_cndmask_b32_e32 v50, 1.0, v49, vcc
	v_mul_f32_e32 v48, v48, v50
	v_sqrt_f32_e32 v50, v48
	v_add_u32_e64 v52, s[0:1], -1, v50
	v_add_u32_e64 v53, s[0:1], 1, v50
	v_mov_b32_e32 v55, s13
	v_cndmask_b32_e32 v56, 1.0, v55, vcc
	v_fma_f32 v57, -v53, v50, v48
	v_fma_f32 v58, -v52, v50, v48
	v_cmp_ge_f32_e32 vcc, 0, v58
	v_cndmask_b32_e32 v50, v50, v52, vcc
	v_cmp_lt_f32_e32 vcc, 0, v57
	v_cndmask_b32_e32 v50, v50, v53, vcc
	v_mul_f32_e32 v50, v56, v50
	v_cmp_class_f32_e64 vcc, v48, s11
	v_cndmask_b32_e32 v48, v50, v48, vcc
	v_div_scale_f32 v50, s[0:1], v48, v48, v51
	v_div_scale_f32 v52, vcc, v51, v48, v51
	v_rcp_f32_e32 v53, v50
	v_fma_f32 v56, -v50, v53, 1.0
	v_fma_f32 v53, v56, v53, v53
	v_mul_f32_e32 v56, v52, v53
	v_fma_f32 v57, -v50, v56, v52
	v_fma_f32 v56, v57, v53, v56
	v_fma_f32 v50, -v50, v56, v52
	v_div_fmas_f32 v50, v50, v53, v56
	v_sub_f32_e32 v53, 0, v25
	v_sub_f32_e32 v56, 0, v24
	v_mul_f32_e32 v52, v54, v54
	v_div_fixup_f32 v48, v50, v48, v51
	v_fma_f32 v48, -v48, v48, 1.0
	v_fma_f32 v48, -v48, v52, 1.0
	v_cmp_gt_f32_e32 vcc, s9, v48
	v_cndmask_b32_e32 v49, 1.0, v49, vcc
	v_mul_f32_e32 v48, v48, v49
	v_sqrt_f32_e32 v49, v48
	v_sub_f32_e32 v57, 0, v23
	v_cndmask_b32_e32 v50, 1.0, v55, vcc
	v_add_u32_e32 v52, vcc, -1, v49
	v_add_u32_e32 v55, vcc, 1, v49
	v_fma_f32 v58, -v55, v49, v48
	v_fma_f32 v59, -v52, v49, v48
	v_cmp_ge_f32_e32 vcc, 0, v59
	v_cndmask_b32_e32 v49, v49, v52, vcc
	v_cmp_lt_f32_e32 vcc, 0, v58
	v_cndmask_b32_e32 v49, v49, v55, vcc
	v_mul_f32_e32 v49, v50, v49
	v_cmp_class_f32_e64 vcc, v48, s11
	v_cndmask_b32_e32 v55, v49, v48, vcc
	v_mov_b32_e32 v52, v54
BB0_28:                                 ;   in Loop: Header=BB0_6 Depth=2
	s_or_b64 exec, exec, s[2:3]
	v_mul_f32_e32 v48, v35, v35
	v_fma_f32 v48, v36, v36, v48
	v_fma_f32 v48, v40, v40, v48
	v_mov_b32_e32 v49, s10
	v_cmp_gt_f32_e32 vcc, s9, v48
	v_cndmask_b32_e32 v49, 1.0, v49, vcc
	v_mul_f32_e32 v48, v48, v49
	v_sqrt_f32_e32 v49, v48
	v_add_u32_e64 v50, s[0:1], -1, v49
	v_add_u32_e64 v58, s[0:1], 1, v49
	v_mov_b32_e32 v59, s13
	v_cndmask_b32_e32 v59, 1.0, v59, vcc
	v_fma_f32 v60, -v58, v49, v48
	v_fma_f32 v61, -v50, v49, v48
	v_cmp_ge_f32_e32 vcc, 0, v61
	v_cndmask_b32_e32 v49, v49, v50, vcc
	v_cmp_lt_f32_e32 vcc, 0, v60
	v_cndmask_b32_e32 v49, v49, v58, vcc
	v_mul_f32_e32 v49, v59, v49
	v_cmp_class_f32_e64 vcc, v48, s11
	v_cndmask_b32_e32 v50, v49, v48, vcc
	v_div_scale_f32 v48, s[0:1], v50, v50, 1.0
	v_div_scale_f32 v49, vcc, 1.0, v50, 1.0
	v_rcp_f32_e32 v58, v48
	v_fma_f32 v59, -v48, v58, 1.0
	v_fma_f32 v58, v59, v58, v58
	v_mul_f32_e32 v59, v49, v58
	v_fma_f32 v60, -v48, v59, v49
	v_fma_f32 v59, v60, v58, v59
	v_fma_f32 v48, -v48, v59, v49
	v_div_fmas_f32 v58, v48, v58, v59
	v_mul_f32_e32 v61, v52, v52
	v_mov_b32_e32 v49, v32
	v_mov_b32_e32 v48, v31
	v_div_fixup_f32 v50, v58, v50, 1.0
	v_mul_f32_e32 v62, v36, v50
	v_mul_f32_e32 v58, v35, v50
	v_mul_f32_e32 v59, v40, v50
	v_mul_f32_e32 v50, v58, v56
	v_fma_f32 v50, v62, v53, v50
	v_fma_f32 v60, v59, v57, v50
	v_fma_f32 v50, -v60, v60, 1.0
	v_fma_f32 v61, -v61, v50, 1.0
	v_cmp_lt_f32_e32 vcc, 0, v61
	v_mov_b32_e32 v50, v30
	s_and_saveexec_b64 s[52:53], vcc
	s_cbranch_execz BB0_30
; %bb.29:                               ;   in Loop: Header=BB0_6 Depth=2
	v_fma_f32 v48, -v53, v60, v62
	v_mov_b32_e32 v49, s10
	v_cmp_gt_f32_e64 s[0:1], s9, v61
	v_cndmask_b32_e64 v49, 1.0, v49, s[0:1]
	v_mul_f32_e32 v49, v61, v49
	v_sqrt_f32_e32 v50, v49
	v_fma_f32 v58, -v56, v60, v58
	v_fma_f32 v59, -v57, v60, v59
	v_add_u32_e64 v60, s[2:3], -1, v50
	v_add_u32_e64 v61, s[2:3], 1, v50
	v_mov_b32_e32 v62, s13
	v_cndmask_b32_e64 v62, 1.0, v62, s[0:1]
	v_fma_f32 v63, -v61, v50, v49
	v_fma_f32 v64, -v60, v50, v49
	v_cmp_ge_f32_e64 s[0:1], 0, v64
	v_cndmask_b32_e64 v50, v50, v60, s[0:1]
	v_cmp_lt_f32_e64 s[0:1], 0, v63
	v_cndmask_b32_e64 v50, v50, v61, s[0:1]
	v_mul_f32_e32 v50, v62, v50
	v_cmp_class_f32_e64 s[0:1], v49, s11
	v_cndmask_b32_e64 v49, v50, v49, s[0:1]
	v_fma_f32 v48, -v53, v49, v48
	v_fma_f32 v50, -v56, v49, v58
	v_fma_f32 v53, -v57, v49, v59
	v_mul_f32_e32 v49, v52, v48
	v_mul_f32_e32 v48, v52, v50
	v_mul_f32_e32 v50, v52, v53
BB0_30:                                 ; %_Z7refract4vec3S_fPS_.exit.i.i
                                        ;   in Loop: Header=BB0_6 Depth=2
	s_or_b64 exec, exec, s[52:53]
	v_add_f32_e32 v51, v51, v51
	v_fma_f32 v53, -v25, v51, v36
	v_fma_f32 v52, -v24, v51, v35
	v_fma_f32 v51, -v23, v51, v40
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz BB0_34
; %bb.31:                               ;   in Loop: Header=BB0_6 Depth=2
	v_sub_f32_e32 v56, 1.0, v54
	v_add_f32_e32 v54, 1.0, v54
	v_div_scale_f32 v57, s[0:1], v54, v54, v56
	v_div_scale_f32 v58, vcc, v56, v54, v56
	v_sub_f32_e32 v55, 1.0, v55
	v_frexp_mant_f32_e64 v59, |v55|
	v_frexp_exp_i32_f32_e64 v60, |v55|
	v_cmp_gt_f32_e64 s[0:1], s22, v59
	v_cndmask_b32_e64 v61, 0, 1, s[0:1]
	v_ldexp_f32 v59, v59, v61
	v_subbrev_u32_e64 v60, s[0:1], 0, v60, s[0:1]
	v_add_f32_e32 v61, -1.0, v59
	v_rcp_f32_e32 v62, v57
	v_add_f32_e32 v63, 1.0, v59
	v_sub_f32_e32 v64, v63, v59
	v_rcp_f32_e32 v65, v63
	v_fma_f32 v66, -v57, v62, 1.0
	v_fma_f32 v62, v66, v62, v62
	v_mul_f32_e32 v66, v58, v62
	v_fma_f32 v67, -v57, v66, v58
	v_fma_f32 v66, v67, v62, v66
	v_fma_f32 v57, -v57, v66, v58
	v_div_fmas_f32 v57, v57, v62, v66
	v_sub_f32_e32 v58, v63, v64
	v_sub_f32_e32 v62, 1.0, v64
	v_sub_f32_e32 v58, v59, v58
	v_add_f32_e32 v58, v62, v58
	v_mul_f32_e32 v59, v61, v65
	v_mul_f32_e32 v62, v63, v59
	v_fma_f32 v63, v59, v63, -v62
	v_fma_f32 v58, v59, v58, v63
	v_add_f32_e32 v63, v62, v58
	v_sub_f32_e32 v62, v63, v62
	v_sub_f32_e32 v64, v61, v63
	v_sub_f32_e32 v58, v58, v62
	v_sub_f32_e32 v61, v61, v64
	v_sub_f32_e32 v61, v61, v63
	v_sub_f32_e32 v58, v61, v58
	v_div_fixup_f32 v54, v57, v54, v56
	v_mul_f32_e32 v56, v54, v54
	v_fma_f32 v54, -v54, v54, 1.0
	v_add_f32_e32 v57, v64, v58
	v_mul_f32_e32 v57, v65, v57
	v_add_f32_e32 v58, v59, v57
	v_sub_f32_e32 v59, v58, v59
	v_sub_f32_e32 v57, v57, v59
	v_mul_f32_e32 v59, v58, v58
	v_add_f32_e32 v61, v57, v57
	v_fma_f32 v62, v58, v58, -v59
	v_fma_f32 v61, v58, v61, v62
	v_fma_f32 v61, v57, v57, v61
	v_add_f32_e32 v62, v59, v61
	v_sub_f32_e32 v59, v62, v59
	v_sub_f32_e32 v59, v61, v59
	v_cvt_f32_i32_e32 v60, v60
	v_mov_b32_e32 v61, 0x3e91f4c4
	v_fma_f32 v61, v62, s23, v61
	v_fma_f32 v61, v62, v61, s24
	v_mul_f32_e32 v63, s25, v60
	v_fma_f32 v64, v60, s25, -v63
	v_fma_f32 v60, v60, s26, v64
	v_add_f32_e32 v64, v63, v60
	v_sub_f32_e32 v63, v64, v63
	v_sub_f32_e32 v60, v60, v63
	v_ldexp_f32 v63, v58, 1
	v_mul_f32_e32 v65, v58, v62
	v_fma_f32 v66, v62, v58, -v65
	v_mul_f32_e32 v58, v58, v59
	v_fma_f32 v58, v62, v57, v58
	v_add_f32_e32 v58, v66, v58
	v_add_f32_e32 v66, v65, v58
	v_mul_f32_e32 v67, v62, v61
	v_fma_f32 v62, v62, v61, -v67
	v_fma_f32 v59, v59, v61, v62
	v_add_f32_e32 v61, v67, v59
	v_sub_f32_e32 v62, v61, v67
	v_sub_f32_e32 v59, v59, v62
	v_add_f32_e32 v62, 0x3f2aaaaa, v61
	v_add_f32_e32 v67, 0xbf2aaaaa, v62
	v_sub_f32_e32 v61, v61, v67
	v_add_f32_e32 v59, 0x31739010, v59
	v_add_f32_e32 v59, v61, v59
	v_add_f32_e32 v61, v62, v59
	v_mul_f32_e32 v67, v66, v61
	v_fma_f32 v68, v66, v61, -v67
	v_sub_f32_e32 v62, v61, v62
	v_sub_f32_e32 v59, v59, v62
	v_sub_f32_e32 v62, v66, v65
	v_sub_f32_e32 v58, v58, v62
	v_mul_f32_e32 v58, v58, v61
	v_fma_f32 v58, v66, v59, v58
	v_add_f32_e32 v58, v68, v58
	v_ldexp_f32 v57, v57, 1
	v_add_f32_e32 v59, v67, v58
	v_sub_f32_e32 v61, v59, v67
	v_sub_f32_e32 v58, v58, v61
	v_add_f32_e32 v61, v63, v59
	v_sub_f32_e32 v62, v61, v63
	v_sub_f32_e32 v59, v59, v62
	v_add_f32_e32 v57, v57, v58
	v_add_f32_e32 v57, v59, v57
	v_add_f32_e32 v58, v61, v57
	v_sub_f32_e32 v59, v58, v61
	v_sub_f32_e32 v57, v57, v59
	v_add_f32_e32 v59, v64, v58
	v_sub_f32_e32 v61, v59, v64
	v_sub_f32_e32 v62, v59, v61
	v_sub_f32_e32 v62, v64, v62
	v_sub_f32_e32 v58, v58, v61
	v_add_f32_e32 v58, v58, v62
	v_add_f32_e32 v61, v60, v57
	v_sub_f32_e32 v62, v61, v60
	v_sub_f32_e32 v63, v61, v62
	v_sub_f32_e32 v60, v60, v63
	v_sub_f32_e32 v57, v57, v62
	v_add_f32_e32 v57, v57, v60
	v_add_f32_e32 v58, v61, v58
	v_add_f32_e32 v60, v59, v58
	v_sub_f32_e32 v59, v60, v59
	v_sub_f32_e32 v58, v58, v59
	v_add_f32_e32 v57, v57, v58
	v_add_f32_e32 v58, v60, v57
	v_sub_f32_e32 v59, v58, v60
	v_sub_f32_e32 v57, v57, v59
	v_mul_f32_e32 v59, s27, v58
	v_fma_f32 v58, v58, s27, -v59
	v_fma_f32 v57, v57, s27, v58
	v_add_f32_e32 v58, v59, v57
	v_sub_f32_e32 v60, v58, v59
	v_sub_f32_e32 v57, v57, v60
	v_cmp_class_f32_e64 vcc, v59, s28
	v_cndmask_b32_e32 v58, v58, v59, vcc
	v_cmp_neq_f32_e64 vcc, |v58|, s29
	v_cndmask_b32_e32 v57, 0, v57, vcc
	v_mul_f32_e32 v59, 0x3fb8aa3b, v58
	v_rndne_f32_e32 v59, v59
	v_mul_f32_e32 v60, 0x3f317200, v59
	v_sub_f32_e32 v61, v58, v60
	v_sub_f32_e32 v62, v61, v58
	v_sub_f32_e32 v63, v61, v62
	v_sub_f32_e32 v63, v58, v63
	v_add_f32_e32 v60, v60, v62
	v_sub_f32_e32 v60, v63, v60
	v_add_f32_e32 v57, v57, v60
	v_add_f32_e32 v60, v61, v57
	v_sub_f32_e32 v61, v60, v61
	v_sub_f32_e32 v57, v57, v61
	v_mul_f32_e32 v61, 0x35bfbc00, v59
	v_sub_f32_e32 v62, v60, v61
	v_sub_f32_e32 v60, v60, v62
	v_sub_f32_e32 v60, v60, v61
	v_add_f32_e32 v57, v57, v60
	v_add_f32_e32 v60, v62, v57
	v_sub_f32_e32 v61, v60, v62
	v_sub_f32_e32 v57, v57, v61
	v_mul_f32_e32 v61, 0x2ea39ef3, v59
	v_sub_f32_e32 v62, v60, v61
	v_sub_f32_e32 v60, v60, v62
	v_sub_f32_e32 v60, v60, v61
	v_add_f32_e32 v57, v57, v60
	v_add_f32_e32 v60, v62, v57
	v_sub_f32_e32 v61, v60, v62
	v_sub_f32_e32 v57, v57, v61
	v_mov_b32_e32 v61, 0x3c091de6
	v_fma_f32 v61, v60, s30, v61
	v_fma_f32 v61, v60, v61, s31
	v_fma_f32 v61, v60, v61, s33
	v_fma_f32 v61, v60, v61, s34
	v_mul_f32_e32 v62, v60, v60
	v_fma_f32 v63, v60, v60, -v62
	v_add_f32_e32 v64, v57, v57
	v_fma_f32 v63, v60, v64, v63
	v_fma_f32 v63, v57, v57, v63
	v_add_f32_e32 v64, v62, v63
	v_mul_f32_e32 v65, v61, v64
	v_sub_f32_e32 v62, v64, v62
	v_sub_f32_e32 v62, v63, v62
	v_fma_f32 v63, v64, v61, -v65
	v_fma_f32 v61, v62, v61, v63
	v_add_f32_e32 v62, v65, v61
	v_sub_f32_e32 v63, v62, v65
	v_sub_f32_e32 v61, v61, v63
	v_add_f32_e32 v63, v60, v62
	v_sub_f32_e32 v60, v63, v60
	v_sub_f32_e32 v60, v62, v60
	v_add_f32_e32 v57, v57, v61
	v_cvt_i32_f32_e32 v59, v59
	v_add_f32_e32 v57, v60, v57
	v_add_f32_e32 v57, v63, v57
	v_add_f32_e32 v57, 1.0, v57
	v_ldexp_f32 v57, v57, v59
	v_mov_b32_e32 v59, s29
	v_cmp_nlt_f32_e32 vcc, s35, v58
	v_cndmask_b32_e32 v57, v59, v57, vcc
	v_cmp_ngt_f32_e32 vcc, s36, v58
	v_cndmask_b32_e32 v57, 0, v57, vcc
	v_bfi_b32 v58, s38, 0, v55
	v_mov_b32_e32 v60, s21
	v_cmp_gt_f32_e32 vcc, 0, v55
	v_cndmask_b32_e32 v60, 0, v60, vcc
	v_bfi_b32 v57, s38, v57, v60
	v_cmp_eq_f32_e32 vcc, 0, v55
	v_cndmask_b32_e32 v57, v57, v58, vcc
	v_mov_b32_e32 v58, 0xff800000
	v_cmp_class_f32_e64 vcc, v55, 4
	v_cndmask_b32_e32 v57, v57, v58, vcc
	v_cmp_class_f32_e64 vcc, v55, s37
	v_cndmask_b32_e32 v57, v57, v59, vcc
	v_cmp_u_f32_e32 vcc, v55, v55
	v_cndmask_b32_e32 v57, v57, v55, vcc
	v_cmp_neq_f32_e32 vcc, 1.0, v55
	v_cndmask_b32_e32 v55, 1.0, v57, vcc
	v_fma_f32 v54, v54, v55, v56
	v_cmp_nlt_f32_e32 vcc, 0.5, v54
	s_and_saveexec_b64 s[0:1], vcc
; %bb.32:                               ;   in Loop: Header=BB0_6 Depth=2
	v_mov_b32_e32 v51, v50
	v_mov_b32_e32 v52, v48
	v_mov_b32_e32 v53, v49
; %bb.33:                               ; %Flow
                                        ;   in Loop: Header=BB0_6 Depth=2
	s_or_b64 exec, exec, s[0:1]
BB0_34:                                 ; %Flow459
                                        ;   in Loop: Header=BB0_6 Depth=2
	s_or_b64 exec, exec, s[2:3]
	s_xor_b64 s[0:1], exec, -1
BB0_35:                                 ; %Flow463
                                        ;   in Loop: Header=BB0_6 Depth=2
	s_or_b64 exec, exec, s[50:51]
	s_and_b64 s[2:3], s[0:1], exec
BB0_36:                                 ; %Flow462
                                        ;   in Loop: Header=BB0_6 Depth=2
	s_or_saveexec_b64 s[48:49], s[48:49]
	v_mov_b32_e32 v55, 1
	v_mov_b32_e32 v56, 1.0
	v_mov_b32_e32 v57, v56
	v_mov_b32_e32 v58, v56
	s_xor_b64 exec, exec, s[48:49]
	s_cbranch_execz BB0_38
; %bb.37:                               ;   in Loop: Header=BB0_6 Depth=2
	v_mul_f32_e32 v48, v35, v35
	v_fma_f32 v48, v36, v36, v48
	v_fma_f32 v48, v40, v40, v48
	v_mov_b32_e32 v49, s10
	v_cmp_gt_f32_e32 vcc, s9, v48
	v_cndmask_b32_e32 v49, 1.0, v49, vcc
	v_mul_f32_e32 v48, v48, v49
	v_sqrt_f32_e32 v49, v48
	v_add_u32_e64 v50, s[0:1], -1, v49
	v_add_u32_e64 v51, s[0:1], 1, v49
	v_mov_b32_e32 v52, s13
	v_cndmask_b32_e32 v52, 1.0, v52, vcc
	v_fma_f32 v53, -v51, v49, v48
	v_fma_f32 v54, -v50, v49, v48
	v_cmp_ge_f32_e32 vcc, 0, v54
	v_cndmask_b32_e32 v49, v49, v50, vcc
	v_cmp_lt_f32_e32 vcc, 0, v53
	v_cndmask_b32_e32 v49, v49, v51, vcc
	v_mul_f32_e32 v49, v52, v49
	v_cmp_class_f32_e64 vcc, v48, s11
	v_cndmask_b32_e32 v51, v49, v48, vcc
	v_div_scale_f32 v48, s[0:1], v51, v51, 1.0
	v_div_scale_f32 v49, vcc, 1.0, v51, 1.0
	v_rcp_f32_e32 v50, v48
	v_fma_f32 v52, -v48, v50, 1.0
	v_fma_f32 v50, v52, v50, v50
	v_mul_f32_e32 v52, v49, v50
	v_fma_f32 v53, -v48, v52, v49
	v_fma_f32 v52, v53, v50, v52
	v_fma_f32 v48, -v48, v52, v49
	v_div_fmas_f32 v52, v48, v50, v52
	v_mov_b32_e32 v50, v30
	v_mov_b32_e32 v48, v31
	v_mov_b32_e32 v49, v32
	v_mov_b32_e32 v56, v47
	v_mov_b32_e32 v57, v46
	v_div_fixup_f32 v51, v52, v51, 1.0
	v_mul_f32_e32 v52, v36, v51
	v_mul_f32_e32 v54, v35, v51
	v_mul_f32_e32 v51, v40, v51
	v_mul_f32_e32 v53, v54, v24
	v_fma_f32 v53, v52, v25, v53
	v_fma_f32 v53, v51, v23, v53
	v_add_f32_e32 v55, v53, v53
	v_fma_f32 v53, -v25, v55, v52
	v_fma_f32 v52, -v24, v55, v54
	v_fma_f32 v51, -v23, v55, v51
	v_mul_f32_e32 v54, v24, v52
	v_fma_f32 v54, v25, v53, v54
	v_fma_f32 v54, v23, v51, v54
	v_cmp_lt_f32_e32 vcc, 0, v54
	v_cndmask_b32_e64 v55, 0, 1, vcc
	v_mov_b32_e32 v58, v45
BB0_38:                                 ; %Flow464
                                        ;   in Loop: Header=BB0_6 Depth=2
	s_or_b64 exec, exec, s[48:49]
	s_and_b64 s[0:1], s[2:3], exec
BB0_39:                                 ; %Flow461
                                        ;   in Loop: Header=BB0_6 Depth=2
	s_or_saveexec_b64 s[2:3], s[46:47]
	s_xor_b64 exec, exec, s[2:3]
; %bb.40:                               ; %LeafBlock
                                        ;   in Loop: Header=BB0_6 Depth=2
	s_mov_b64 s[44:45], exec
	v_cmp_ne_u32_e32 vcc, 0, v44
	s_andn2_b64 s[0:1], s[0:1], exec
	s_and_b64 s[46:47], vcc, exec
	s_or_b64 s[0:1], s[0:1], s[46:47]
; %bb.41:                               ; %Flow465
                                        ;   in Loop: Header=BB0_6 Depth=2
	s_or_b64 exec, exec, s[2:3]
	v_mov_b32_e32 v44, v11
	v_mov_b32_e32 v54, v12
	v_mov_b32_e32 v59, v13
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_xor_b64 s[0:1], exec, s[2:3]
	s_cbranch_execz BB0_43
; %bb.42:                               ; %NewDefault
                                        ;   in Loop: Header=BB0_6 Depth=2
	v_mov_b32_e32 v55, 1
	s_andn2_b64 s[44:45], s[44:45], exec
	v_mov_b32_e32 v50, v30
	v_mov_b32_e32 v48, v31
	v_mov_b32_e32 v49, v32
	v_mov_b32_e32 v51, v19
	v_mov_b32_e32 v52, v17
	v_mov_b32_e32 v53, v15
	v_mov_b32_e32 v44, v22
	v_mov_b32_e32 v54, v21
	v_mov_b32_e32 v59, v20
	v_mov_b32_e32 v56, v18
	v_mov_b32_e32 v57, v16
	v_mov_b32_e32 v58, v14
BB0_43:                                 ; %Flow466
                                        ;   in Loop: Header=BB0_6 Depth=2
	s_or_b64 exec, exec, s[0:1]
	v_mov_b32_e32 v14, v58
	v_mov_b32_e32 v16, v57
	v_mov_b32_e32 v18, v56
	v_mov_b32_e32 v20, v59
	v_mov_b32_e32 v21, v54
	v_mov_b32_e32 v22, v44
	v_mov_b32_e32 v15, v53
	v_mov_b32_e32 v17, v52
	v_mov_b32_e32 v19, v51
	s_and_saveexec_b64 s[0:1], s[44:45]
	s_cbranch_execz BB0_45
; %bb.44:                               ;   in Loop: Header=BB0_6 Depth=2
	v_add_f32_e32 v14, v13, v25
	v_add_f32_e32 v16, v12, v24
	v_add_f32_e32 v18, v11, v23
	v_sub_f32_e32 v15, v14, v13
	v_sub_f32_e32 v17, v16, v12
	v_sub_f32_e32 v19, v18, v11
	v_mov_b32_e32 v55, 1
	v_mov_b32_e32 v14, v45
	v_mov_b32_e32 v16, v46
	v_mov_b32_e32 v18, v47
	v_mov_b32_e32 v20, v13
	v_mov_b32_e32 v21, v12
	v_mov_b32_e32 v22, v11
	v_mov_b32_e32 v49, v32
	v_mov_b32_e32 v48, v31
	v_mov_b32_e32 v50, v30
BB0_45:                                 ; %_Z7scatter8material3ray10hit_recordP4vec3PS0_.exit.i
                                        ;   in Loop: Header=BB0_6 Depth=2
	s_or_b64 exec, exec, s[0:1]
	v_cmp_eq_u32_e32 vcc, 0, v55
	v_cmp_ne_u32_e64 s[0:1], 0, v55
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v45, v44
	v_mov_b32_e32 v46, v44
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz BB0_47
; %bb.46:                               ;   in Loop: Header=BB0_6 Depth=2
	v_mul_f32_e32 v34, v34, v14
	v_mul_f32_e32 v33, v33, v16
	v_mul_f32_e32 v27, v27, v18
	v_mov_b32_e32 v39, v20
	v_mov_b32_e32 v38, v21
	v_mov_b32_e32 v37, v22
	v_mov_b32_e32 v36, v15
	v_mov_b32_e32 v35, v17
	v_mov_b32_e32 v44, v43
	v_mov_b32_e32 v45, v42
	v_mov_b32_e32 v46, v41
	v_mov_b32_e32 v40, v19
BB0_47:                                 ;   in Loop: Header=BB0_6 Depth=2
	s_or_b64 exec, exec, s[2:3]
	s_xor_b64 s[0:1], vcc, -1
	s_and_b64 s[0:1], s[0:1], exec
	v_mov_b32_e32 v30, v50
	v_mov_b32_e32 v31, v48
	v_mov_b32_e32 v32, v49
BB0_48:                                 ; %Flow468
                                        ;   in Loop: Header=BB0_6 Depth=2
	s_or_b64 exec, exec, s[42:43]
	v_mov_b32_e32 v43, v44
	v_mov_b32_e32 v42, v45
	v_mov_b32_e32 v41, v46
	s_mov_b64 s[2:3], -1
	v_mov_b32_e32 v46, v45
	v_mov_b32_e32 v45, v41
	s_and_saveexec_b64 s[42:43], s[0:1]
	s_cbranch_execz BB0_5
; %bb.49:                               ;   in Loop: Header=BB0_6 Depth=2
	s_add_i32 s39, s39, 1
	v_cmp_eq_u32_e64 s[0:1], s39, 50
	v_mov_b32_e32 v44, 0
	s_orn2_b64 s[2:3], s[0:1], exec
	v_mov_b32_e32 v46, v44
	v_mov_b32_e32 v45, v44
	s_branch BB0_5
BB0_50:                                 ; %Flow476
	v_mul_lo_u32 v1, v1, s12
	v_add_u32_e32 v0, vcc, v1, v0
	v_cvt_f32_i32_e32 v1, s14
	v_div_scale_f32 v5, s[0:1], v1, v1, 1.0
	v_div_scale_f32 v6, vcc, 1.0, v1, 1.0
	v_rcp_f32_e32 v7, v5
	v_fma_f32 v8, -v5, v7, 1.0
	v_fma_f32 v7, v8, v7, v7
	v_mul_f32_e32 v8, v6, v7
	v_fma_f32 v9, -v5, v8, v6
	v_fma_f32 v8, v9, v7, v8
	v_fma_f32 v5, -v5, v8, v6
	v_div_fmas_f32 v5, v5, v7, v8
	s_mov_b32 s2, 0xf800000
	v_mov_b32_e32 v6, 0x4f800000
	s_movk_i32 s6, 0x260
	v_mov_b32_e32 v7, 0x37800000
	v_div_fixup_f32 v1, v5, v1, 1.0
	v_mul_f32_e32 v2, v1, v2
	v_mul_f32_e32 v3, v1, v3
	v_mul_f32_e32 v1, v1, v4
	v_cmp_gt_f32_e32 vcc, s2, v2
	v_cndmask_b32_e32 v4, 1.0, v6, vcc
	v_cmp_gt_f32_e64 s[0:1], s2, v3
	v_cndmask_b32_e64 v5, 1.0, v6, s[0:1]
	v_cmp_gt_f32_e64 s[2:3], s2, v1
	v_cndmask_b32_e64 v6, 1.0, v6, s[2:3]
	v_mul_f32_e32 v2, v2, v4
	v_cndmask_b32_e32 v4, 1.0, v7, vcc
	v_mul_f32_e32 v3, v3, v5
	v_cndmask_b32_e64 v5, 1.0, v7, s[0:1]
	v_mul_f32_e32 v6, v1, v6
	v_sqrt_f32_e32 v1, v2
	v_sqrt_f32_e32 v8, v3
	v_sqrt_f32_e32 v9, v6
	v_add_u32_e32 v10, vcc, -1, v1
	v_add_u32_e32 v11, vcc, 1, v1
	v_add_u32_e32 v12, vcc, -1, v8
	v_add_u32_e32 v13, vcc, 1, v8
	v_fma_f32 v14, -v11, v1, v2
	v_fma_f32 v15, -v10, v1, v2
	v_fma_f32 v16, -v13, v8, v3
	v_fma_f32 v17, -v12, v8, v3
	v_cmp_ge_f32_e32 vcc, 0, v15
	v_cndmask_b32_e32 v1, v1, v10, vcc
	v_cmp_ge_f32_e32 vcc, 0, v17
	v_cndmask_b32_e32 v8, v8, v12, vcc
	v_cmp_lt_f32_e32 vcc, 0, v14
	v_cndmask_b32_e32 v1, v1, v11, vcc
	v_cmp_lt_f32_e32 vcc, 0, v16
	v_cndmask_b32_e32 v8, v8, v13, vcc
	v_mul_f32_e32 v1, v4, v1
	v_mul_f32_e32 v4, v5, v8
	v_cmp_class_f32_e64 vcc, v2, s6
	v_cndmask_b32_e32 v1, v1, v2, vcc
	v_cmp_class_f32_e64 vcc, v3, s6
	v_cndmask_b32_e32 v2, v4, v3, vcc
	v_add_u32_e32 v3, vcc, -1, v9
	v_add_u32_e32 v4, vcc, 1, v9
	v_cndmask_b32_e64 v7, 1.0, v7, s[2:3]
	v_fma_f32 v5, -v4, v9, v6
	v_fma_f32 v8, -v3, v9, v6
	v_cmp_ge_f32_e32 vcc, 0, v8
	v_cndmask_b32_e32 v3, v9, v3, vcc
	v_cmp_lt_f32_e32 vcc, 0, v5
	v_cndmask_b32_e32 v3, v3, v4, vcc
	s_waitcnt lgkmcnt(0)
	v_mad_i64_i32 v[4:5], s[0:1], v0, 12, s[4:5]
	v_mul_f32_e32 v0, v7, v3
	v_cmp_class_f32_e64 vcc, v6, s6
	v_cndmask_b32_e32 v3, v0, v6, vcc
	flat_store_dwordx3 v[4:5], v[1:3]
BB0_51:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z6renderP4vec3iiiiP6cameraP6sphere
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
		.amdhsa_next_free_vgpr 69
		.amdhsa_next_free_sgpr 56
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
	.size	_Z6renderP4vec3iiiiP6cameraP6sphere, .Lfunc_end0-_Z6renderP4vec3iiiiP6cameraP6sphere
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 5464
; NumSgprs: 60
; NumVgprs: 69
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 7
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 60
; NumVGPRsForWavesPerEU: 69
; Occupancy: 3
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
	.protected	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE ; @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE
	.type	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE,#alloc
	.weak	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE
_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE, 1

	.protected	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE ; @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE
	.type	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE,#alloc
	.weak	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE
_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE, 1

	.protected	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE ; @_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE
	.type	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE,#alloc
	.weak	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE
_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE, 1

	.protected	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE ; @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE
	.type	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE,#alloc
	.weak	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE
_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE, 1

	.protected	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE ; @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE
	.type	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE,#alloc
	.weak	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE
_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE, 1

	.protected	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1yE ; @_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1yE
	.type	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1yE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI14__HIP_BlockDimE1yE,#alloc
	.weak	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1yE
_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1yE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1yE, 1

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
        .size:           4
        .value_kind:     by_value
      - .offset:         20
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
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
    .name:           _Z6renderP4vec3iiiiP6cameraP6sphere
    .private_segment_fixed_size: 0
    .sgpr_count:     60
    .sgpr_spill_count: 0
    .symbol:         _Z6renderP4vec3iiiiP6cameraP6sphere.kd
    .vgpr_count:     69
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
