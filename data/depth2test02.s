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
	; Branch (0)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 31, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[2:3], exec, s[0:1]
	s_cbranch_execz BB0_14
; %bb.1:
	;;#ASMSTART
	; Branch (3)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 47, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_4
; %bb.2:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_3:                                  ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_3
BB0_4:                                  ; %Flow489
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_7
; %bb.5:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_6:                                  ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_6
BB0_7:                                  ; %Flow490
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (4)
	;;#ASMEND
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[0:1], exec, s[4:5]
	s_cbranch_execz BB0_10
; %bb.8:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s4, 3
BB0_9:                                  ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_9
BB0_10:                                 ; %Flow485
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_13
; %bb.11:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s4, 1
BB0_12:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_12
BB0_13:                                 ; %Flow486
	s_or_b64 exec, exec, s[0:1]
BB0_14:                                 ; %Flow501
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_28
; %bb.15:
	;;#ASMSTART
	; Branch (1)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 15, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_18
; %bb.16:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_17:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_17
BB0_18:                                 ; %Flow499
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_21
; %bb.19:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_20:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_20
BB0_21:                                 ; %Flow500
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (2)
	;;#ASMEND
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[0:1], exec, s[4:5]
	s_cbranch_execz BB0_24
; %bb.22:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s4, 4
BB0_23:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_23
BB0_24:                                 ; %Flow494
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_27
; %bb.25:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s4, 3
BB0_26:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_26
BB0_27:                                 ; %Flow495
	s_or_b64 exec, exec, s[0:1]
BB0_28:                                 ; %Flow502
	s_or_b64 exec, exec, s[2:3]
	;;#ASMSTART
	; Branch (5)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[2:3], exec, s[0:1]
	s_cbranch_execz BB0_42
; %bb.29:
	;;#ASMSTART
	; Branch (8)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 47, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_32
; %bb.30:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_31:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_31
BB0_32:                                 ; %Flow466
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_35
; %bb.33:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_34:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_34
BB0_35:                                 ; %Flow467
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (9)
	;;#ASMEND
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[0:1], exec, s[4:5]
	s_cbranch_execz BB0_38
; %bb.36:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s4, 3
BB0_37:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_37
BB0_38:                                 ; %Flow461
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_41
; %bb.39:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s4, 4
BB0_40:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_40
BB0_41:                                 ; %Flow462
	s_or_b64 exec, exec, s[0:1]
BB0_42:                                 ; %Flow479
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_56
; %bb.43:
	;;#ASMSTART
	; Branch (6)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 15, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_46
; %bb.44:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_45:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_45
BB0_46:                                 ; %Flow477
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_49
; %bb.47:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_48:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_48
BB0_49:                                 ; %Flow478
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (7)
	;;#ASMEND
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[0:1], exec, s[4:5]
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
BB0_52:                                 ; %Flow472
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_55
; %bb.53:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s4, 4
BB0_54:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_54
BB0_55:                                 ; %Flow473
	s_or_b64 exec, exec, s[0:1]
BB0_56:                                 ; %Flow480
	s_or_b64 exec, exec, s[2:3]
	;;#ASMSTART
	; Branch (10)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[2:3], exec, s[0:1]
	s_cbranch_execz BB0_70
; %bb.57:
	;;#ASMSTART
	; Branch (13)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 47, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_60
; %bb.58:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_59:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_59
BB0_60:                                 ; %Flow444
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_63
; %bb.61:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_62:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_62
BB0_63:                                 ; %Flow445
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (14)
	;;#ASMEND
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[0:1], exec, s[4:5]
	s_cbranch_execz BB0_66
; %bb.64:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s4, 1
BB0_65:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_65
BB0_66:                                 ; %Flow439
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_69
; %bb.67:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s4, 3
BB0_68:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_68
BB0_69:                                 ; %Flow440
	s_or_b64 exec, exec, s[0:1]
BB0_70:                                 ; %Flow456
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_84
; %bb.71:
	;;#ASMSTART
	; Branch (11)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 15, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_74
; %bb.72:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_73:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_73
BB0_74:                                 ; %Flow454
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_77
; %bb.75:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_76:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_76
BB0_77:                                 ; %Flow455
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (12)
	;;#ASMEND
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[0:1], exec, s[4:5]
	s_cbranch_execz BB0_80
; %bb.78:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s4, 4
BB0_79:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_79
BB0_80:                                 ; %Flow450
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_83
; %bb.81:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s4, 1
BB0_82:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_82
BB0_83:                                 ; %Flow451
	s_or_b64 exec, exec, s[0:1]
BB0_84:                                 ; %Flow457
	s_or_b64 exec, exec, s[2:3]
	;;#ASMSTART
	; Branch (15)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[2:3], exec, s[0:1]
	s_cbranch_execz BB0_92
; %bb.85:
	;;#ASMSTART
	; Branch (17)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 47, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[0:1], exec, s[4:5]
	s_cbranch_execz BB0_88
; %bb.86:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s4, 1
BB0_87:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_87
BB0_88:                                 ; %Flow427
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_91
; %bb.89:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s4, 4
BB0_90:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_90
BB0_91:                                 ; %Flow428
	s_or_b64 exec, exec, s[0:1]
BB0_92:                                 ; %Flow434
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_100
; %bb.93:
	;;#ASMSTART
	; Branch (16)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 15, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[0:1], exec, s[4:5]
	s_cbranch_execz BB0_96
; %bb.94:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s4, 3
BB0_95:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_95
BB0_96:                                 ; %Flow432
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_99
; %bb.97:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s4, 4
BB0_98:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_98
BB0_99:                                 ; %Flow433
	s_or_b64 exec, exec, s[0:1]
BB0_100:                                ; %.loopexit185
	s_or_b64 exec, exec, s[2:3]
	;;#ASMSTART
	; Branch (18)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_108
; %bb.101:
	;;#ASMSTART
	; Branch (20)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 47, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_104
; %bb.102:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s4, 1
BB0_103:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_103
BB0_104:                                ; %Flow413
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_107
; %bb.105:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s4, 4
BB0_106:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_106
BB0_107:                                ; %Flow414
	s_or_b64 exec, exec, s[2:3]
BB0_108:                                ; %Flow422
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_115
; %bb.109:
	;;#ASMSTART
	; Branch (19)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 15, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_112
; %bb.110:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s2, 1
BB0_111:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s2, s2, -1
	s_cmp_lg_u32 s2, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_111
BB0_112:                                ; %Flow419
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_115
; %bb.113:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s0, 3
BB0_114:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s0, s0, -1
	s_cmp_eq_u32 s0, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_114
BB0_115:                                ; %.loopexit
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
; codeLenInByte = 1432
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