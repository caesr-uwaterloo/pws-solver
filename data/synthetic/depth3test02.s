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
	; Branch (80)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 31, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_30
; %bb.1:
	;;#ASMSTART
	; Branch (96)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 47, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_21
; %bb.2:
	;;#ASMSTART
	; Branch (98)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 55, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_5
; %bb.3:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_4:                                  ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_4
BB0_5:                                  ; %Flow418
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_8
; %bb.6:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_7:                                  ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_7
BB0_8:                                  ; %Flow419
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (99)
	;;#ASMEND
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_11
; %bb.9:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_10:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_10
BB0_11:                                 ; %Flow413
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_14
; %bb.12:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_13:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_13
BB0_14:                                 ; %Flow414
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (100)
	;;#ASMEND
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_17
; %bb.15:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_16:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_16
BB0_17:                                 ; %Flow408
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_20
; %bb.18:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_19:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_19
BB0_20:                                 ; %Flow409
	s_or_b64 exec, exec, s[4:5]
BB0_21:                                 ; %Flow427
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_29
; %bb.22:
	;;#ASMSTART
	; Branch (97)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 39, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_25
; %bb.23:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_24:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_24
BB0_25:                                 ; %Flow424
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_28
; %bb.26:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_27:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_27
BB0_28:                                 ; %Flow425
	s_or_b64 exec, exec, s[4:5]
BB0_29:                                 ; %Flow428
	s_or_b64 exec, exec, s[2:3]
BB0_30:                                 ; %Flow503
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_114
; %bb.31:
	;;#ASMSTART
	; Branch (81)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 15, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[2:3], exec, s[0:1]
	s_cbranch_execz BB0_39
; %bb.32:
	;;#ASMSTART
	; Branch (84)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 23, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[0:1], exec, s[4:5]
	s_cbranch_execz BB0_35
; %bb.33:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s4, 3
BB0_34:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_34
BB0_35:                                 ; %Flow487
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_38
; %bb.36:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s4, 1
BB0_37:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_37
BB0_38:                                 ; %Flow488
	s_or_b64 exec, exec, s[0:1]
BB0_39:                                 ; %Flow500
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_53
; %bb.40:
	;;#ASMSTART
	; Branch (82)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 7, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_43
; %bb.41:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_42:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_42
BB0_43:                                 ; %Flow498
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_46
; %bb.44:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_45:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_45
BB0_46:                                 ; %Flow499
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (83)
	;;#ASMEND
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[0:1], exec, s[4:5]
	s_cbranch_execz BB0_49
; %bb.47:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s4, 3
BB0_48:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_48
BB0_49:                                 ; %Flow493
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_52
; %bb.50:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s4, 1
BB0_51:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_51
BB0_52:                                 ; %Flow494
	s_or_b64 exec, exec, s[0:1]
BB0_53:                                 ; %Flow501
	s_or_b64 exec, exec, s[2:3]
	;;#ASMSTART
	; Branch (85)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[2:3], exec, s[0:1]
	s_cbranch_execz BB0_73
; %bb.54:
	;;#ASMSTART
	; Branch (89)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 23, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_57
; %bb.55:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_56:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_56
BB0_57:                                 ; %Flow463
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_60
; %bb.58:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_59:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_59
BB0_60:                                 ; %Flow464
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (90)
	;;#ASMEND
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_63
; %bb.61:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_62:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_62
BB0_63:                                 ; %Flow458
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_66
; %bb.64:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_65:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_65
BB0_66:                                 ; %Flow459
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (91)
	;;#ASMEND
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[0:1], exec, s[4:5]
	s_cbranch_execz BB0_69
; %bb.67:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s4, 3
BB0_68:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_68
BB0_69:                                 ; %Flow453
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_72
; %bb.70:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s4, 1
BB0_71:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_71
BB0_72:                                 ; %Flow454
	s_or_b64 exec, exec, s[0:1]
BB0_73:                                 ; %Flow481
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_93
; %bb.74:
	;;#ASMSTART
	; Branch (86)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 7, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_77
; %bb.75:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_76:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_76
BB0_77:                                 ; %Flow479
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_80
; %bb.78:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_79:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_79
BB0_80:                                 ; %Flow480
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (87)
	;;#ASMEND
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_83
; %bb.81:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_82:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_82
BB0_83:                                 ; %Flow474
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_86
; %bb.84:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_85:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_85
BB0_86:                                 ; %Flow475
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (88)
	;;#ASMEND
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[0:1], exec, s[4:5]
	s_cbranch_execz BB0_89
; %bb.87:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s4, 3
BB0_88:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_88
BB0_89:                                 ; %Flow469
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_92
; %bb.90:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s4, 1
BB0_91:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_91
BB0_92:                                 ; %Flow470
	s_or_b64 exec, exec, s[0:1]
BB0_93:                                 ; %Flow482
	s_or_b64 exec, exec, s[2:3]
	;;#ASMSTART
	; Branch (92)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_107
; %bb.94:
	;;#ASMSTART
	; Branch (94)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 23, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_97
; %bb.95:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s4, 3
BB0_96:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_96
BB0_97:                                 ; %Flow438
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_100
; %bb.98:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s4, 1
BB0_99:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_99
BB0_100:                                ; %Flow439
	s_or_b64 exec, exec, s[2:3]
	;;#ASMSTART
	; Branch (95)
	;;#ASMEND
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_103
; %bb.101:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s4, 3
BB0_102:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_102
BB0_103:                                ; %Flow433
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_106
; %bb.104:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s4, 1
BB0_105:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_105
BB0_106:                                ; %Flow434
	s_or_b64 exec, exec, s[2:3]
BB0_107:                                ; %Flow447
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_114
; %bb.108:
	;;#ASMSTART
	; Branch (93)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 7, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_111
; %bb.109:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s2, 3
BB0_110:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s2, s2, -1
	s_cmp_eq_u32 s2, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_110
BB0_111:                                ; %Flow444
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_114
; %bb.112:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s0, 1
BB0_113:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s0, s0, -1
	s_cmp_lg_u32 s0, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_113
BB0_114:                                ; %.loopexit
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
		.amdhsa_next_free_sgpr 7
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
; codeLenInByte = 1412
; NumSgprs: 11
; NumVgprs: 1
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 0
; NumSGPRsForWavesPerEU: 11
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
    .sgpr_count:     11
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
