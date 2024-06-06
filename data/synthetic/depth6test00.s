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
	; Branch (11681)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 31, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_158
; %bb.1:
	;;#ASMSTART
	; Branch (11713)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 47, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_79
; %bb.2:
	;;#ASMSTART
	; Branch (11729)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 55, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_40
; %bb.3:
	;;#ASMSTART
	; Branch (11737)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 59, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_21
; %bb.4:
	;;#ASMSTART
	; Branch (11741)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 61, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_12
; %bb.5:
	;;#ASMSTART
	; Branch (11743)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 62, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_xor_b64 s[10:11], exec, s[10:11]
	s_cbranch_execz BB0_8
; %bb.6:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s12, 3
BB0_7:                                  ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_lg_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_7
BB0_8:                                  ; %Flow936
	s_or_saveexec_b64 s[10:11], s[10:11]
	s_xor_b64 exec, exec, s[10:11]
	s_cbranch_execz BB0_11
; %bb.9:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s12, 1
BB0_10:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_lg_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_10
BB0_11:                                 ; %Flow937
	s_or_b64 exec, exec, s[10:11]
BB0_12:                                 ; %Flow944
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_20
; %bb.13:
	;;#ASMSTART
	; Branch (11742)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 61, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_xor_b64 s[10:11], exec, s[10:11]
	s_cbranch_execz BB0_16
; %bb.14:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s12, 1
BB0_15:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_lg_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_15
BB0_16:                                 ; %Flow941
	s_or_saveexec_b64 s[10:11], s[10:11]
	s_xor_b64 exec, exec, s[10:11]
	s_cbranch_execz BB0_19
; %bb.17:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s12, 3
BB0_18:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_eq_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_18
BB0_19:                                 ; %Flow942
	s_or_b64 exec, exec, s[10:11]
BB0_20:                                 ; %Flow945
	s_or_b64 exec, exec, s[8:9]
BB0_21:                                 ; %Flow961
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_39
; %bb.22:
	;;#ASMSTART
	; Branch (11738)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 57, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_30
; %bb.23:
	;;#ASMSTART
	; Branch (11740)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 58, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_xor_b64 s[10:11], exec, s[10:11]
	s_cbranch_execz BB0_26
; %bb.24:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s12, 3
BB0_25:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_eq_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_25
BB0_26:                                 ; %Flow950
	s_or_saveexec_b64 s[10:11], s[10:11]
	s_xor_b64 exec, exec, s[10:11]
	s_cbranch_execz BB0_29
; %bb.27:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s12, 1
BB0_28:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_lg_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_28
BB0_29:                                 ; %Flow951
	s_or_b64 exec, exec, s[10:11]
BB0_30:                                 ; %Flow958
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_38
; %bb.31:
	;;#ASMSTART
	; Branch (11739)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 57, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_xor_b64 s[10:11], exec, s[10:11]
	s_cbranch_execz BB0_34
; %bb.32:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s12, 1
BB0_33:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_lg_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_33
BB0_34:                                 ; %Flow955
	s_or_saveexec_b64 s[10:11], s[10:11]
	s_xor_b64 exec, exec, s[10:11]
	s_cbranch_execz BB0_37
; %bb.35:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s12, 3
BB0_36:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_eq_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_36
BB0_37:                                 ; %Flow956
	s_or_b64 exec, exec, s[10:11]
BB0_38:                                 ; %Flow959
	s_or_b64 exec, exec, s[8:9]
BB0_39:                                 ; %Flow962
	s_or_b64 exec, exec, s[6:7]
BB0_40:                                 ; %Flow995
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_78
; %bb.41:
	;;#ASMSTART
	; Branch (11730)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 51, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_59
; %bb.42:
	;;#ASMSTART
	; Branch (11734)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 53, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_50
; %bb.43:
	;;#ASMSTART
	; Branch (11736)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 54, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_xor_b64 s[10:11], exec, s[10:11]
	s_cbranch_execz BB0_46
; %bb.44:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s12, 3
BB0_45:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_eq_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_45
BB0_46:                                 ; %Flow967
	s_or_saveexec_b64 s[10:11], s[10:11]
	s_xor_b64 exec, exec, s[10:11]
	s_cbranch_execz BB0_49
; %bb.47:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s12, 1
BB0_48:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_lg_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_48
BB0_49:                                 ; %Flow968
	s_or_b64 exec, exec, s[10:11]
BB0_50:                                 ; %Flow975
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_58
; %bb.51:
	;;#ASMSTART
	; Branch (11735)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 53, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_xor_b64 s[10:11], exec, s[10:11]
	s_cbranch_execz BB0_54
; %bb.52:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s12, 1
BB0_53:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_lg_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_53
BB0_54:                                 ; %Flow972
	s_or_saveexec_b64 s[10:11], s[10:11]
	s_xor_b64 exec, exec, s[10:11]
	s_cbranch_execz BB0_57
; %bb.55:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s12, 3
BB0_56:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_eq_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_56
BB0_57:                                 ; %Flow973
	s_or_b64 exec, exec, s[10:11]
BB0_58:                                 ; %Flow976
	s_or_b64 exec, exec, s[8:9]
BB0_59:                                 ; %Flow992
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_77
; %bb.60:
	;;#ASMSTART
	; Branch (11731)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 49, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_68
; %bb.61:
	;;#ASMSTART
	; Branch (11733)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 50, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_xor_b64 s[10:11], exec, s[10:11]
	s_cbranch_execz BB0_64
; %bb.62:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s12, 3
BB0_63:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_eq_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_63
BB0_64:                                 ; %Flow981
	s_or_saveexec_b64 s[10:11], s[10:11]
	s_xor_b64 exec, exec, s[10:11]
	s_cbranch_execz BB0_67
; %bb.65:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s12, 1
BB0_66:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_lg_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_66
BB0_67:                                 ; %Flow982
	s_or_b64 exec, exec, s[10:11]
BB0_68:                                 ; %Flow989
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_76
; %bb.69:
	;;#ASMSTART
	; Branch (11732)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 49, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_xor_b64 s[10:11], exec, s[10:11]
	s_cbranch_execz BB0_72
; %bb.70:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s12, 1
BB0_71:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_lg_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_71
BB0_72:                                 ; %Flow986
	s_or_saveexec_b64 s[10:11], s[10:11]
	s_xor_b64 exec, exec, s[10:11]
	s_cbranch_execz BB0_75
; %bb.73:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s12, 3
BB0_74:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_eq_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_74
BB0_75:                                 ; %Flow987
	s_or_b64 exec, exec, s[10:11]
BB0_76:                                 ; %Flow990
	s_or_b64 exec, exec, s[8:9]
BB0_77:                                 ; %Flow993
	s_or_b64 exec, exec, s[6:7]
BB0_78:                                 ; %Flow996
	s_or_b64 exec, exec, s[4:5]
BB0_79:                                 ; %Flow1063
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_157
; %bb.80:
	;;#ASMSTART
	; Branch (11714)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 39, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_118
; %bb.81:
	;;#ASMSTART
	; Branch (11722)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 43, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_99
; %bb.82:
	;;#ASMSTART
	; Branch (11726)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 45, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_90
; %bb.83:
	;;#ASMSTART
	; Branch (11728)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 46, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_xor_b64 s[10:11], exec, s[10:11]
	s_cbranch_execz BB0_86
; %bb.84:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s12, 3
BB0_85:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_eq_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_85
BB0_86:                                 ; %Flow1001
	s_or_saveexec_b64 s[10:11], s[10:11]
	s_xor_b64 exec, exec, s[10:11]
	s_cbranch_execz BB0_89
; %bb.87:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s12, 1
BB0_88:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_lg_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_88
BB0_89:                                 ; %Flow1002
	s_or_b64 exec, exec, s[10:11]
BB0_90:                                 ; %Flow1009
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_98
; %bb.91:
	;;#ASMSTART
	; Branch (11727)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 45, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_xor_b64 s[10:11], exec, s[10:11]
	s_cbranch_execz BB0_94
; %bb.92:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s12, 1
BB0_93:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_lg_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_93
BB0_94:                                 ; %Flow1006
	s_or_saveexec_b64 s[10:11], s[10:11]
	s_xor_b64 exec, exec, s[10:11]
	s_cbranch_execz BB0_97
; %bb.95:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s12, 3
BB0_96:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_eq_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_96
BB0_97:                                 ; %Flow1007
	s_or_b64 exec, exec, s[10:11]
BB0_98:                                 ; %Flow1010
	s_or_b64 exec, exec, s[8:9]
BB0_99:                                 ; %Flow1026
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_117
; %bb.100:
	;;#ASMSTART
	; Branch (11723)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 41, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_108
; %bb.101:
	;;#ASMSTART
	; Branch (11725)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 42, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_xor_b64 s[10:11], exec, s[10:11]
	s_cbranch_execz BB0_104
; %bb.102:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s12, 3
BB0_103:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_eq_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_103
BB0_104:                                ; %Flow1015
	s_or_saveexec_b64 s[10:11], s[10:11]
	s_xor_b64 exec, exec, s[10:11]
	s_cbranch_execz BB0_107
; %bb.105:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s12, 1
BB0_106:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_lg_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_106
BB0_107:                                ; %Flow1016
	s_or_b64 exec, exec, s[10:11]
BB0_108:                                ; %Flow1023
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_116
; %bb.109:
	;;#ASMSTART
	; Branch (11724)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 41, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_xor_b64 s[10:11], exec, s[10:11]
	s_cbranch_execz BB0_112
; %bb.110:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s12, 1
BB0_111:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_lg_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_111
BB0_112:                                ; %Flow1020
	s_or_saveexec_b64 s[10:11], s[10:11]
	s_xor_b64 exec, exec, s[10:11]
	s_cbranch_execz BB0_115
; %bb.113:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s12, 3
BB0_114:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_eq_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_114
BB0_115:                                ; %Flow1021
	s_or_b64 exec, exec, s[10:11]
BB0_116:                                ; %Flow1024
	s_or_b64 exec, exec, s[8:9]
BB0_117:                                ; %Flow1027
	s_or_b64 exec, exec, s[6:7]
BB0_118:                                ; %Flow1060
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_156
; %bb.119:
	;;#ASMSTART
	; Branch (11715)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 35, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_137
; %bb.120:
	;;#ASMSTART
	; Branch (11719)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 37, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_128
; %bb.121:
	;;#ASMSTART
	; Branch (11721)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 38, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_xor_b64 s[10:11], exec, s[10:11]
	s_cbranch_execz BB0_124
; %bb.122:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s12, 3
BB0_123:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_eq_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_123
BB0_124:                                ; %Flow1032
	s_or_saveexec_b64 s[10:11], s[10:11]
	s_xor_b64 exec, exec, s[10:11]
	s_cbranch_execz BB0_127
; %bb.125:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s12, 1
BB0_126:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_lg_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_126
BB0_127:                                ; %Flow1033
	s_or_b64 exec, exec, s[10:11]
BB0_128:                                ; %Flow1040
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_136
; %bb.129:
	;;#ASMSTART
	; Branch (11720)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 37, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_xor_b64 s[10:11], exec, s[10:11]
	s_cbranch_execz BB0_132
; %bb.130:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s12, 1
BB0_131:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_lg_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_131
BB0_132:                                ; %Flow1037
	s_or_saveexec_b64 s[10:11], s[10:11]
	s_xor_b64 exec, exec, s[10:11]
	s_cbranch_execz BB0_135
; %bb.133:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s12, 3
BB0_134:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_eq_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_134
BB0_135:                                ; %Flow1038
	s_or_b64 exec, exec, s[10:11]
BB0_136:                                ; %Flow1041
	s_or_b64 exec, exec, s[8:9]
BB0_137:                                ; %Flow1057
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_155
; %bb.138:
	;;#ASMSTART
	; Branch (11716)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 33, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_146
; %bb.139:
	;;#ASMSTART
	; Branch (11718)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 34, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_xor_b64 s[10:11], exec, s[10:11]
	s_cbranch_execz BB0_142
; %bb.140:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s12, 3
BB0_141:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_eq_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_141
BB0_142:                                ; %Flow1046
	s_or_saveexec_b64 s[10:11], s[10:11]
	s_xor_b64 exec, exec, s[10:11]
	s_cbranch_execz BB0_145
; %bb.143:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s12, 1
BB0_144:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_lg_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_144
BB0_145:                                ; %Flow1047
	s_or_b64 exec, exec, s[10:11]
BB0_146:                                ; %Flow1054
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_154
; %bb.147:
	;;#ASMSTART
	; Branch (11717)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 33, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_xor_b64 s[10:11], exec, s[10:11]
	s_cbranch_execz BB0_150
; %bb.148:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s12, 1
BB0_149:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_lg_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_149
BB0_150:                                ; %Flow1051
	s_or_saveexec_b64 s[10:11], s[10:11]
	s_xor_b64 exec, exec, s[10:11]
	s_cbranch_execz BB0_153
; %bb.151:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s12, 3
BB0_152:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s12, s12, -1
	s_cmp_eq_u32 s12, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_152
BB0_153:                                ; %Flow1052
	s_or_b64 exec, exec, s[10:11]
BB0_154:                                ; %Flow1055
	s_or_b64 exec, exec, s[8:9]
BB0_155:                                ; %Flow1058
	s_or_b64 exec, exec, s[6:7]
BB0_156:                                ; %Flow1061
	s_or_b64 exec, exec, s[4:5]
BB0_157:                                ; %Flow1064
	s_or_b64 exec, exec, s[2:3]
BB0_158:                                ; %Flow1200
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_311
; %bb.159:
	;;#ASMSTART
	; Branch (11682)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 15, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_237
; %bb.160:
	;;#ASMSTART
	; Branch (11698)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 23, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_198
; %bb.161:
	;;#ASMSTART
	; Branch (11706)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 27, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_179
; %bb.162:
	;;#ASMSTART
	; Branch (11710)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 29, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_170
; %bb.163:
	;;#ASMSTART
	; Branch (11712)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 30, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_166
; %bb.164:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s10, 3
BB0_165:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_eq_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_165
BB0_166:                                ; %Flow1069
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_169
; %bb.167:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s10, 1
BB0_168:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_lg_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_168
BB0_169:                                ; %Flow1070
	s_or_b64 exec, exec, s[8:9]
BB0_170:                                ; %Flow1077
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_178
; %bb.171:
	;;#ASMSTART
	; Branch (11711)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 29, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_174
; %bb.172:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s10, 1
BB0_173:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_lg_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_173
BB0_174:                                ; %Flow1074
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_177
; %bb.175:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s10, 3
BB0_176:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_eq_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_176
BB0_177:                                ; %Flow1075
	s_or_b64 exec, exec, s[8:9]
BB0_178:                                ; %Flow1078
	s_or_b64 exec, exec, s[6:7]
BB0_179:                                ; %Flow1094
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_197
; %bb.180:
	;;#ASMSTART
	; Branch (11707)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 25, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_188
; %bb.181:
	;;#ASMSTART
	; Branch (11709)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 26, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_184
; %bb.182:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s10, 3
BB0_183:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_eq_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_183
BB0_184:                                ; %Flow1083
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_187
; %bb.185:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s10, 1
BB0_186:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_lg_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_186
BB0_187:                                ; %Flow1084
	s_or_b64 exec, exec, s[8:9]
BB0_188:                                ; %Flow1091
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_196
; %bb.189:
	;;#ASMSTART
	; Branch (11708)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 25, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_192
; %bb.190:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s10, 1
BB0_191:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_lg_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_191
BB0_192:                                ; %Flow1088
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_195
; %bb.193:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s10, 3
BB0_194:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_eq_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_194
BB0_195:                                ; %Flow1089
	s_or_b64 exec, exec, s[8:9]
BB0_196:                                ; %Flow1092
	s_or_b64 exec, exec, s[6:7]
BB0_197:                                ; %Flow1095
	s_or_b64 exec, exec, s[4:5]
BB0_198:                                ; %Flow1128
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_236
; %bb.199:
	;;#ASMSTART
	; Branch (11699)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 19, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_217
; %bb.200:
	;;#ASMSTART
	; Branch (11703)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 21, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_208
; %bb.201:
	;;#ASMSTART
	; Branch (11705)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 22, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_204
; %bb.202:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s10, 3
BB0_203:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_eq_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_203
BB0_204:                                ; %Flow1100
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_207
; %bb.205:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s10, 1
BB0_206:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_lg_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_206
BB0_207:                                ; %Flow1101
	s_or_b64 exec, exec, s[8:9]
BB0_208:                                ; %Flow1108
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_216
; %bb.209:
	;;#ASMSTART
	; Branch (11704)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 21, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_212
; %bb.210:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s10, 1
BB0_211:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_lg_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_211
BB0_212:                                ; %Flow1105
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_215
; %bb.213:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s10, 3
BB0_214:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_eq_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_214
BB0_215:                                ; %Flow1106
	s_or_b64 exec, exec, s[8:9]
BB0_216:                                ; %Flow1109
	s_or_b64 exec, exec, s[6:7]
BB0_217:                                ; %Flow1125
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_235
; %bb.218:
	;;#ASMSTART
	; Branch (11700)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 17, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_226
; %bb.219:
	;;#ASMSTART
	; Branch (11702)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 18, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_222
; %bb.220:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s10, 3
BB0_221:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_eq_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_221
BB0_222:                                ; %Flow1114
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_225
; %bb.223:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s10, 1
BB0_224:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_lg_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_224
BB0_225:                                ; %Flow1115
	s_or_b64 exec, exec, s[8:9]
BB0_226:                                ; %Flow1122
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_234
; %bb.227:
	;;#ASMSTART
	; Branch (11701)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 17, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_230
; %bb.228:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s10, 1
BB0_229:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_lg_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_229
BB0_230:                                ; %Flow1119
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_233
; %bb.231:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s10, 3
BB0_232:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_eq_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_232
BB0_233:                                ; %Flow1120
	s_or_b64 exec, exec, s[8:9]
BB0_234:                                ; %Flow1123
	s_or_b64 exec, exec, s[6:7]
BB0_235:                                ; %Flow1126
	s_or_b64 exec, exec, s[4:5]
BB0_236:                                ; %Flow1129
	s_or_b64 exec, exec, s[2:3]
BB0_237:                                ; %Flow1197
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_311
; %bb.238:
	;;#ASMSTART
	; Branch (11683)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 7, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_276
; %bb.239:
	;;#ASMSTART
	; Branch (11691)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 11, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_257
; %bb.240:
	;;#ASMSTART
	; Branch (11695)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 13, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_248
; %bb.241:
	;;#ASMSTART
	; Branch (11697)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 14, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_244
; %bb.242:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_243:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_243
BB0_244:                                ; %Flow1134
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_247
; %bb.245:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_246:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_246
BB0_247:                                ; %Flow1135
	s_or_b64 exec, exec, s[6:7]
BB0_248:                                ; %Flow1142
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_256
; %bb.249:
	;;#ASMSTART
	; Branch (11696)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 13, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_252
; %bb.250:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_251:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_251
BB0_252:                                ; %Flow1139
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_255
; %bb.253:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_254:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_254
BB0_255:                                ; %Flow1140
	s_or_b64 exec, exec, s[6:7]
BB0_256:                                ; %Flow1143
	s_or_b64 exec, exec, s[4:5]
BB0_257:                                ; %Flow1159
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_275
; %bb.258:
	;;#ASMSTART
	; Branch (11692)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 9, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_266
; %bb.259:
	;;#ASMSTART
	; Branch (11694)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 10, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_262
; %bb.260:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_261:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_261
BB0_262:                                ; %Flow1148
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_265
; %bb.263:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_264:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_264
BB0_265:                                ; %Flow1149
	s_or_b64 exec, exec, s[6:7]
BB0_266:                                ; %Flow1156
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_274
; %bb.267:
	;;#ASMSTART
	; Branch (11693)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 9, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_270
; %bb.268:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_269:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_269
BB0_270:                                ; %Flow1153
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_273
; %bb.271:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_272:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_272
BB0_273:                                ; %Flow1154
	s_or_b64 exec, exec, s[6:7]
BB0_274:                                ; %Flow1157
	s_or_b64 exec, exec, s[4:5]
BB0_275:                                ; %Flow1160
	s_or_b64 exec, exec, s[2:3]
BB0_276:                                ; %Flow1194
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_311
; %bb.277:
	;;#ASMSTART
	; Branch (11684)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 3, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_295
; %bb.278:
	;;#ASMSTART
	; Branch (11688)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 5, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_286
; %bb.279:
	;;#ASMSTART
	; Branch (11690)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 6, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_282
; %bb.280:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_281:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_281
BB0_282:                                ; %Flow1165
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_285
; %bb.283:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_284:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_284
BB0_285:                                ; %Flow1166
	s_or_b64 exec, exec, s[4:5]
BB0_286:                                ; %Flow1173
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_294
; %bb.287:
	;;#ASMSTART
	; Branch (11689)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 5, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_290
; %bb.288:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_289:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_289
BB0_290:                                ; %Flow1170
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_293
; %bb.291:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_292:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_292
BB0_293:                                ; %Flow1171
	s_or_b64 exec, exec, s[4:5]
BB0_294:                                ; %Flow1174
	s_or_b64 exec, exec, s[2:3]
BB0_295:                                ; %Flow1191
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_311
; %bb.296:
	;;#ASMSTART
	; Branch (11685)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 1, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_304
; %bb.297:
	;;#ASMSTART
	; Branch (11687)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 2, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_300
; %bb.298:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s4, 3
BB0_299:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_299
BB0_300:                                ; %Flow1179
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_303
; %bb.301:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s4, 1
BB0_302:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_302
BB0_303:                                ; %Flow1180
	s_or_b64 exec, exec, s[2:3]
BB0_304:                                ; %Flow1188
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_311
; %bb.305:
	;;#ASMSTART
	; Branch (11686)
	;;#ASMEND
	v_cmp_ne_u32_e32 vcc, 0, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_308
; %bb.306:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s2, 3
BB0_307:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s2, s2, -1
	s_cmp_eq_u32 s2, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_307
BB0_308:                                ; %Flow1185
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_311
; %bb.309:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s0, 1
BB0_310:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s0, s0, -1
	s_cmp_lg_u32 s0, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_310
BB0_311:                                ; %.loopexit
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
		.amdhsa_next_free_sgpr 13
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
; codeLenInByte = 3536
; NumSgprs: 17
; NumVgprs: 1
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 0
; NumSGPRsForWavesPerEU: 17
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
    .sgpr_count:     17
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
