	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z9syntheticm           ; -- Begin function _Z9syntheticm
	.globl	_Z9syntheticm
	.p2align	8
	.type	_Z9syntheticm,@function
_Z9syntheticm:                          ; @_Z9syntheticm
_Z9syntheticm$local:
; %bb.0:
	v_and_b32_e32 v0, 63, v0
	;;#ASMSTART
	; Branch (34)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 31, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[4:5], exec, s[0:1]
	s_cbranch_execz BB0_46
; %bb.1:
	;;#ASMSTART
	; Branch (42)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 47, v0
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_xor_b64 s[6:7], exec, s[2:3]
	s_cbranch_execz BB0_15
; %bb.2:
	;;#ASMSTART
	; Branch (44)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[2:3], 55, v0
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_5
; %bb.3:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s10, 4
BB0_4:                                  ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_lg_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_4
BB0_5:                                  ; %Flow517
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_8
; %bb.6:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s10, 1
BB0_7:                                  ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_lg_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_7
BB0_8:                                  ; %Flow518
	s_or_b64 exec, exec, s[8:9]
	;;#ASMSTART
	; Branch (45)
	;;#ASMEND
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[2:3], exec, s[8:9]
	s_cbranch_execz BB0_11
; %bb.9:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s8, 4
BB0_10:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_10
BB0_11:                                 ; %Flow512
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_14
; %bb.12:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_13:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_13
BB0_14:                                 ; %Flow513
	s_or_b64 exec, exec, s[2:3]
BB0_15:                                 ; %Flow524
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_23
; %bb.16:
	;;#ASMSTART
	; Branch (43)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[2:3], 39, v0
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[2:3], exec, s[8:9]
	s_cbranch_execz BB0_19
; %bb.17:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s8, 4
BB0_18:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_18
BB0_19:                                 ; %Flow522
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_22
; %bb.20:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_21:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_21
BB0_22:                                 ; %Flow523
	s_or_b64 exec, exec, s[2:3]
BB0_23:                                 ; %.loopexit223
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (46)
	;;#ASMEND
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_37
; %bb.24:
	;;#ASMSTART
	; Branch (48)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 55, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_27
; %bb.25:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_26:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_26
BB0_27:                                 ; %Flow499
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_30
; %bb.28:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_29:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_29
BB0_30:                                 ; %Flow500
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (49)
	;;#ASMEND
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_33
; %bb.31:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_32:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_32
BB0_33:                                 ; %Flow494
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_36
; %bb.34:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_35:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_35
BB0_36:                                 ; %Flow495
	s_or_b64 exec, exec, s[0:1]
BB0_37:                                 ; %Flow507
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_45
; %bb.38:
	;;#ASMSTART
	; Branch (47)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 39, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_41
; %bb.39:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_40:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_40
BB0_41:                                 ; %Flow504
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_44
; %bb.42:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_43:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_43
BB0_44:                                 ; %Flow505
	s_or_b64 exec, exec, s[0:1]
BB0_45:                                 ; %Flow508
	s_or_b64 exec, exec, s[2:3]
BB0_46:                                 ; %Flow556
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_86
; %bb.47:
	;;#ASMSTART
	; Branch (35)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 15, v0
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_xor_b64 s[6:7], exec, s[2:3]
	s_cbranch_execz BB0_61
; %bb.48:
	;;#ASMSTART
	; Branch (37)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[2:3], 23, v0
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_51
; %bb.49:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s10, 3
BB0_50:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_lg_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_50
BB0_51:                                 ; %Flow548
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_54
; %bb.52:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s10, 4
BB0_53:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_eq_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_53
BB0_54:                                 ; %Flow549
	s_or_b64 exec, exec, s[8:9]
	;;#ASMSTART
	; Branch (38)
	;;#ASMEND
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[2:3], exec, s[8:9]
	s_cbranch_execz BB0_57
; %bb.55:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_56:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_56
BB0_57:                                 ; %Flow544
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_60
; %bb.58:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s8, 4
BB0_59:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_59
BB0_60:                                 ; %Flow545
	s_or_b64 exec, exec, s[2:3]
BB0_61:                                 ; %Flow555
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_69
; %bb.62:
	;;#ASMSTART
	; Branch (36)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[2:3], 7, v0
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[2:3], exec, s[8:9]
	s_cbranch_execz BB0_65
; %bb.63:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_64:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_64
BB0_65:                                 ; %Flow553
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_68
; %bb.66:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s8, 4
BB0_67:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_67
BB0_68:                                 ; %Flow554
	s_or_b64 exec, exec, s[2:3]
BB0_69:                                 ; %.loopexit211
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (39)
	;;#ASMEND
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_77
; %bb.70:
	;;#ASMSTART
	; Branch (41)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 23, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_73
; %bb.71:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_72:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_72
BB0_73:                                 ; %Flow529
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_76
; %bb.74:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_75:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_75
BB0_76:                                 ; %Flow530
	s_or_b64 exec, exec, s[0:1]
BB0_77:                                 ; %Flow538
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_85
; %bb.78:
	;;#ASMSTART
	; Branch (40)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 7, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_81
; %bb.79:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_80:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_80
BB0_81:                                 ; %Flow535
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_84
; %bb.82:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_83:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_83
BB0_84:                                 ; %Flow536
	s_or_b64 exec, exec, s[0:1]
BB0_85:                                 ; %Flow539
	s_or_b64 exec, exec, s[2:3]
BB0_86:                                 ; %Flow557
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (50)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_110
; %bb.87:
	;;#ASMSTART
	; Branch (55)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 47, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_95
; %bb.88:
	;;#ASMSTART
	; Branch (58)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 55, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_91
; %bb.89:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_90:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_90
BB0_91:                                 ; %Flow453
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_94
; %bb.92:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_93:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_93
BB0_94:                                 ; %Flow454
	s_or_b64 exec, exec, s[4:5]
BB0_95:                                 ; %Flow466
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_109
; %bb.96:
	;;#ASMSTART
	; Branch (56)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 39, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_99
; %bb.97:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_98:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_98
BB0_99:                                 ; %Flow463
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_102
; %bb.100:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_101:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_101
BB0_102:                                ; %Flow464
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (57)
	;;#ASMEND
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_105
; %bb.103:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_104:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_104
BB0_105:                                ; %Flow458
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_108
; %bb.106:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_107:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_107
BB0_108:                                ; %Flow459
	s_or_b64 exec, exec, s[4:5]
BB0_109:                                ; %Flow467
	s_or_b64 exec, exec, s[2:3]
BB0_110:                                ; %Flow489
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_132
; %bb.111:
	;;#ASMSTART
	; Branch (51)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 15, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_119
; %bb.112:
	;;#ASMSTART
	; Branch (54)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 23, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_115
; %bb.113:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s4, 1
BB0_114:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_114
BB0_115:                                ; %Flow472
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_118
; %bb.116:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s4, 3
BB0_117:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_117
BB0_118:                                ; %Flow473
	s_or_b64 exec, exec, s[2:3]
BB0_119:                                ; %Flow486
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_132
; %bb.120:
	;;#ASMSTART
	; Branch (52)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 7, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_123
; %bb.121:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s2, 1
BB0_122:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s2, s2, -1
	s_cmp_eq_u32 s2, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_122
BB0_123:                                ; %Flow483
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_126
; %bb.124:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s2, 3
BB0_125:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s2, s2, -1
	s_cmp_eq_u32 s2, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_125
BB0_126:                                ; %Flow484
	s_or_b64 exec, exec, s[0:1]
	;;#ASMSTART
	; Branch (53)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_129
; %bb.127:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s2, 1
BB0_128:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s2, s2, -1
	s_cmp_lg_u32 s2, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_128
BB0_129:                                ; %Flow478
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_132
; %bb.130:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s0, 4
BB0_131:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s0, s0, -1
	s_cmp_eq_u32 s0, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_131
BB0_132:                                ; %.loopexit
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z9syntheticm
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
		.amdhsa_next_free_vgpr 2
		.amdhsa_next_free_sgpr 11
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
	.size	_Z9syntheticm, .Lfunc_end0-_Z9syntheticm
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 1620
; NumSgprs: 15
; NumVgprs: 1
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 0
; NumSGPRsForWavesPerEU: 15
; NumVGPRsForWavesPerEU: 2
; Occupancy: 10
; WaveLimiterHint : 0
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
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         16
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         24
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     hidden_none
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
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 64
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z9syntheticm
    .private_segment_fixed_size: 0
    .sgpr_count:     15
    .sgpr_spill_count: 0
    .symbol:         _Z9syntheticm.kd
    .vgpr_count:     2
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
