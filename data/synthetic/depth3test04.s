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
BB0_5:                                  ; %Flow1815
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
BB0_8:                                  ; %Flow1816
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
BB0_11:                                 ; %Flow1810
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
BB0_14:                                 ; %Flow1811
	s_or_b64 exec, exec, s[2:3]
BB0_15:                                 ; %Flow1822
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
BB0_19:                                 ; %Flow1820
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
BB0_22:                                 ; %Flow1821
	s_or_b64 exec, exec, s[2:3]
BB0_23:                                 ; %.loopexit749
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
BB0_27:                                 ; %Flow1797
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
BB0_30:                                 ; %Flow1798
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
BB0_33:                                 ; %Flow1792
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
BB0_36:                                 ; %Flow1793
	s_or_b64 exec, exec, s[0:1]
BB0_37:                                 ; %Flow1805
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
BB0_41:                                 ; %Flow1802
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
BB0_44:                                 ; %Flow1803
	s_or_b64 exec, exec, s[0:1]
BB0_45:                                 ; %Flow1806
	s_or_b64 exec, exec, s[2:3]
BB0_46:                                 ; %Flow1854
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
BB0_51:                                 ; %Flow1846
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
BB0_54:                                 ; %Flow1847
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
BB0_57:                                 ; %Flow1842
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
BB0_60:                                 ; %Flow1843
	s_or_b64 exec, exec, s[2:3]
BB0_61:                                 ; %Flow1853
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
BB0_65:                                 ; %Flow1851
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
BB0_68:                                 ; %Flow1852
	s_or_b64 exec, exec, s[2:3]
BB0_69:                                 ; %.loopexit737
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
BB0_73:                                 ; %Flow1827
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
BB0_76:                                 ; %Flow1828
	s_or_b64 exec, exec, s[0:1]
BB0_77:                                 ; %Flow1836
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
BB0_81:                                 ; %Flow1833
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
BB0_84:                                 ; %Flow1834
	s_or_b64 exec, exec, s[0:1]
BB0_85:                                 ; %Flow1837
	s_or_b64 exec, exec, s[2:3]
BB0_86:                                 ; %Flow1855
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (50)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[2:3], exec, s[0:1]
	s_cbranch_execz BB0_110
; %bb.87:
	;;#ASMSTART
	; Branch (55)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 47, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_95
; %bb.88:
	;;#ASMSTART
	; Branch (58)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 55, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
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
BB0_91:                                 ; %Flow1752
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
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
BB0_94:                                 ; %Flow1753
	s_or_b64 exec, exec, s[0:1]
BB0_95:                                 ; %Flow1765
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_109
; %bb.96:
	;;#ASMSTART
	; Branch (56)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 39, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_99
; %bb.97:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_98:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_98
BB0_99:                                 ; %Flow1762
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_102
; %bb.100:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_101:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_101
BB0_102:                                ; %Flow1763
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (57)
	;;#ASMEND
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
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
BB0_105:                                ; %Flow1757
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
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
BB0_108:                                ; %Flow1758
	s_or_b64 exec, exec, s[0:1]
BB0_109:                                ; %Flow1766
	s_or_b64 exec, exec, s[4:5]
BB0_110:                                ; %Flow1787
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_134
; %bb.111:
	;;#ASMSTART
	; Branch (51)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 15, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_119
; %bb.112:
	;;#ASMSTART
	; Branch (54)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 23, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_115
; %bb.113:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_114:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_114
BB0_115:                                ; %Flow1771
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_118
; %bb.116:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_117:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_117
BB0_118:                                ; %Flow1772
	s_or_b64 exec, exec, s[0:1]
BB0_119:                                ; %Flow1785
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_133
; %bb.120:
	;;#ASMSTART
	; Branch (52)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 7, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_123
; %bb.121:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_122:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_122
BB0_123:                                ; %Flow1782
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_126
; %bb.124:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_125:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_125
BB0_126:                                ; %Flow1783
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (53)
	;;#ASMEND
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_129
; %bb.127:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_128:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_128
BB0_129:                                ; %Flow1777
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_132
; %bb.130:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_131:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_131
BB0_132:                                ; %Flow1778
	s_or_b64 exec, exec, s[0:1]
BB0_133:                                ; %Flow1786
	s_or_b64 exec, exec, s[4:5]
BB0_134:                                ; %.loopexit721
	s_or_b64 exec, exec, s[2:3]
	;;#ASMSTART
	; Branch (59)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[4:5], exec, s[0:1]
	s_cbranch_execz BB0_186
; %bb.135:
	;;#ASMSTART
	; Branch (66)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 47, v0
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_xor_b64 s[6:7], exec, s[2:3]
	s_cbranch_execz BB0_143
; %bb.136:
	;;#ASMSTART
	; Branch (69)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[2:3], 55, v0
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[2:3], exec, s[8:9]
	s_cbranch_execz BB0_139
; %bb.137:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s8, 4
BB0_138:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_138
BB0_139:                                ; %Flow1706
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_142
; %bb.140:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_141:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_141
BB0_142:                                ; %Flow1707
	s_or_b64 exec, exec, s[2:3]
BB0_143:                                ; %Flow1719
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_157
; %bb.144:
	;;#ASMSTART
	; Branch (67)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[2:3], 39, v0
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_147
; %bb.145:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s10, 1
BB0_146:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_eq_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_146
BB0_147:                                ; %Flow1717
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_150
; %bb.148:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s10, 3
BB0_149:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_eq_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_149
BB0_150:                                ; %Flow1718
	s_or_b64 exec, exec, s[8:9]
	;;#ASMSTART
	; Branch (68)
	;;#ASMEND
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[2:3], exec, s[8:9]
	s_cbranch_execz BB0_153
; %bb.151:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_152:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_152
BB0_153:                                ; %Flow1712
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_156
; %bb.154:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_155:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_155
BB0_156:                                ; %Flow1713
	s_or_b64 exec, exec, s[2:3]
BB0_157:                                ; %Flow1720
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (70)
	;;#ASMEND
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_171
; %bb.158:
	;;#ASMSTART
	; Branch (73)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 55, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_161
; %bb.159:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_160:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_160
BB0_161:                                ; %Flow1688
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_164
; %bb.162:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s8, 4
BB0_163:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_163
BB0_164:                                ; %Flow1689
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (74)
	;;#ASMEND
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_167
; %bb.165:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_166:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_166
BB0_167:                                ; %Flow1684
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_170
; %bb.168:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_169:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_169
BB0_170:                                ; %Flow1685
	s_or_b64 exec, exec, s[0:1]
BB0_171:                                ; %Flow1701
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_185
; %bb.172:
	;;#ASMSTART
	; Branch (71)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 39, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_175
; %bb.173:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_174:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_174
BB0_175:                                ; %Flow1698
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_178
; %bb.176:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_177:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_177
BB0_178:                                ; %Flow1699
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (72)
	;;#ASMEND
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_181
; %bb.179:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_180:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_180
BB0_181:                                ; %Flow1693
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_184
; %bb.182:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_183:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_183
BB0_184:                                ; %Flow1694
	s_or_b64 exec, exec, s[0:1]
BB0_185:                                ; %Flow1702
	s_or_b64 exec, exec, s[2:3]
BB0_186:                                ; %Flow1747
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_220
; %bb.187:
	;;#ASMSTART
	; Branch (60)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 15, v0
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_xor_b64 s[6:7], exec, s[2:3]
	s_cbranch_execz BB0_195
; %bb.188:
	;;#ASMSTART
	; Branch (62)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[2:3], 23, v0
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[2:3], exec, s[8:9]
	s_cbranch_execz BB0_191
; %bb.189:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_190:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_190
BB0_191:                                ; %Flow1739
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_194
; %bb.192:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s8, 4
BB0_193:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_193
BB0_194:                                ; %Flow1740
	s_or_b64 exec, exec, s[2:3]
BB0_195:                                ; %Flow1746
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_203
; %bb.196:
	;;#ASMSTART
	; Branch (61)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[2:3], 7, v0
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[2:3], exec, s[8:9]
	s_cbranch_execz BB0_199
; %bb.197:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_198:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_198
BB0_199:                                ; %Flow1744
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_202
; %bb.200:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s8, 4
BB0_201:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_201
BB0_202:                                ; %Flow1745
	s_or_b64 exec, exec, s[2:3]
BB0_203:                                ; %.loopexit703
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (63)
	;;#ASMEND
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_211
; %bb.204:
	;;#ASMSTART
	; Branch (65)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 23, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_207
; %bb.205:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_206:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_206
BB0_207:                                ; %Flow1725
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_210
; %bb.208:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_209:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_209
BB0_210:                                ; %Flow1726
	s_or_b64 exec, exec, s[0:1]
BB0_211:                                ; %Flow1734
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_219
; %bb.212:
	;;#ASMSTART
	; Branch (64)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 7, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_215
; %bb.213:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_214:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_214
BB0_215:                                ; %Flow1731
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_218
; %bb.216:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_217:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_217
BB0_218:                                ; %Flow1732
	s_or_b64 exec, exec, s[0:1]
BB0_219:                                ; %Flow1735
	s_or_b64 exec, exec, s[2:3]
BB0_220:                                ; %Flow1748
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (75)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[2:3], exec, s[0:1]
	s_cbranch_execz BB0_238
; %bb.221:
	;;#ASMSTART
	; Branch (83)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 47, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_229
; %bb.222:
	;;#ASMSTART
	; Branch (85)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 55, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_225
; %bb.223:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_224:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_224
BB0_225:                                ; %Flow1634
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_228
; %bb.226:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_227:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_227
BB0_228:                                ; %Flow1635
	s_or_b64 exec, exec, s[0:1]
BB0_229:                                ; %Flow1643
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_237
; %bb.230:
	;;#ASMSTART
	; Branch (84)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 39, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_233
; %bb.231:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_232:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_232
BB0_233:                                ; %Flow1640
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_236
; %bb.234:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_235:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_235
BB0_236:                                ; %Flow1641
	s_or_b64 exec, exec, s[0:1]
BB0_237:                                ; %Flow1644
	s_or_b64 exec, exec, s[4:5]
BB0_238:                                ; %Flow1678
	s_or_saveexec_b64 s[4:5], s[2:3]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_278
; %bb.239:
	;;#ASMSTART
	; Branch (76)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 15, v0
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_xor_b64 s[6:7], exec, s[2:3]
	s_cbranch_execz BB0_247
; %bb.240:
	;;#ASMSTART
	; Branch (79)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[2:3], 23, v0
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[2:3], exec, s[8:9]
	s_cbranch_execz BB0_243
; %bb.241:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s8, 4
BB0_242:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_242
BB0_243:                                ; %Flow1663
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_246
; %bb.244:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_245:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_245
BB0_246:                                ; %Flow1664
	s_or_b64 exec, exec, s[2:3]
BB0_247:                                ; %Flow1676
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_261
; %bb.248:
	;;#ASMSTART
	; Branch (77)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[2:3], 7, v0
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_251
; %bb.249:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s10, 3
BB0_250:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_lg_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_250
BB0_251:                                ; %Flow1674
	s_or_saveexec_b64 s[8:9], s[8:9]
	s_xor_b64 exec, exec, s[8:9]
	s_cbranch_execz BB0_254
; %bb.252:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s10, 1
BB0_253:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s10, s10, -1
	s_cmp_lg_u32 s10, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_253
BB0_254:                                ; %Flow1675
	s_or_b64 exec, exec, s[8:9]
	;;#ASMSTART
	; Branch (78)
	;;#ASMEND
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_xor_b64 s[2:3], exec, s[8:9]
	s_cbranch_execz BB0_257
; %bb.255:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s8, 4
BB0_256:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_256
BB0_257:                                ; %Flow1669
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_260
; %bb.258:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_259:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_259
BB0_260:                                ; %Flow1670
	s_or_b64 exec, exec, s[2:3]
BB0_261:                                ; %Flow1677
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (80)
	;;#ASMEND
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_269
; %bb.262:
	;;#ASMSTART
	; Branch (82)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 23, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_265
; %bb.263:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_264:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_264
BB0_265:                                ; %Flow1649
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_268
; %bb.266:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_267:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_267
BB0_268:                                ; %Flow1650
	s_or_b64 exec, exec, s[0:1]
BB0_269:                                ; %Flow1657
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_277
; %bb.270:
	;;#ASMSTART
	; Branch (81)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 7, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_273
; %bb.271:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_272:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_272
BB0_273:                                ; %Flow1654
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_276
; %bb.274:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_275:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_275
BB0_276:                                ; %Flow1655
	s_or_b64 exec, exec, s[0:1]
BB0_277:                                ; %Flow1658
	s_or_b64 exec, exec, s[2:3]
BB0_278:                                ; %Flow1679
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (86)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[2:3], exec, s[0:1]
	s_cbranch_execz BB0_296
; %bb.279:
	;;#ASMSTART
	; Branch (91)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 47, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_287
; %bb.280:
	;;#ASMSTART
	; Branch (93)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 55, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_283
; %bb.281:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_282:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_282
BB0_283:                                ; %Flow1598
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_286
; %bb.284:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_285:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_285
BB0_286:                                ; %Flow1599
	s_or_b64 exec, exec, s[0:1]
BB0_287:                                ; %Flow1607
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_295
; %bb.288:
	;;#ASMSTART
	; Branch (92)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 39, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_291
; %bb.289:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_290:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_290
BB0_291:                                ; %Flow1604
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_294
; %bb.292:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_293:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_293
BB0_294:                                ; %Flow1605
	s_or_b64 exec, exec, s[0:1]
BB0_295:                                ; %Flow1608
	s_or_b64 exec, exec, s[4:5]
BB0_296:                                ; %Flow1629
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_320
; %bb.297:
	;;#ASMSTART
	; Branch (87)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 15, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_305
; %bb.298:
	;;#ASMSTART
	; Branch (90)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 23, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_301
; %bb.299:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_300:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_300
BB0_301:                                ; %Flow1613
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_304
; %bb.302:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_303:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_303
BB0_304:                                ; %Flow1614
	s_or_b64 exec, exec, s[0:1]
BB0_305:                                ; %Flow1627
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_319
; %bb.306:
	;;#ASMSTART
	; Branch (88)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 7, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_309
; %bb.307:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_308:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_308
BB0_309:                                ; %Flow1624
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_312
; %bb.310:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_311:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_311
BB0_312:                                ; %Flow1625
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (89)
	;;#ASMEND
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_315
; %bb.313:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_314:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_314
BB0_315:                                ; %Flow1619
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_318
; %bb.316:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_317:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_317
BB0_318:                                ; %Flow1620
	s_or_b64 exec, exec, s[0:1]
BB0_319:                                ; %Flow1628
	s_or_b64 exec, exec, s[4:5]
BB0_320:                                ; %.loopexit675
	s_or_b64 exec, exec, s[2:3]
	;;#ASMSTART
	; Branch (94)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[2:3], exec, s[0:1]
	s_cbranch_execz BB0_344
; %bb.321:
	;;#ASMSTART
	; Branch (99)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 47, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_329
; %bb.322:
	;;#ASMSTART
	; Branch (102)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 55, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_325
; %bb.323:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_324:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_324
BB0_325:                                ; %Flow1560
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_328
; %bb.326:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_327:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_327
BB0_328:                                ; %Flow1561
	s_or_b64 exec, exec, s[0:1]
BB0_329:                                ; %Flow1572
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_343
; %bb.330:
	;;#ASMSTART
	; Branch (100)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 39, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_333
; %bb.331:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s8, 4
BB0_332:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_332
BB0_333:                                ; %Flow1569
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_336
; %bb.334:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_335:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_335
BB0_336:                                ; %Flow1570
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (101)
	;;#ASMEND
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_339
; %bb.337:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_338:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_338
BB0_339:                                ; %Flow1565
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_342
; %bb.340:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_341:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_341
BB0_342:                                ; %Flow1566
	s_or_b64 exec, exec, s[0:1]
BB0_343:                                ; %Flow1573
	s_or_b64 exec, exec, s[4:5]
BB0_344:                                ; %Flow1593
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_368
; %bb.345:
	;;#ASMSTART
	; Branch (95)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 15, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_359
; %bb.346:
	;;#ASMSTART
	; Branch (97)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 23, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_349
; %bb.347:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_348:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_348
BB0_349:                                ; %Flow1583
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_352
; %bb.350:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_351:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_351
BB0_352:                                ; %Flow1584
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (98)
	;;#ASMEND
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_355
; %bb.353:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_354:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_354
BB0_355:                                ; %Flow1578
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_358
; %bb.356:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_357:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_357
BB0_358:                                ; %Flow1579
	s_or_b64 exec, exec, s[0:1]
BB0_359:                                ; %Flow1591
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_367
; %bb.360:
	;;#ASMSTART
	; Branch (96)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 7, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_363
; %bb.361:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_362:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_362
BB0_363:                                ; %Flow1588
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_366
; %bb.364:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_365:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_365
BB0_366:                                ; %Flow1589
	s_or_b64 exec, exec, s[0:1]
BB0_367:                                ; %Flow1592
	s_or_b64 exec, exec, s[4:5]
BB0_368:                                ; %.loopexit663
	s_or_b64 exec, exec, s[2:3]
	;;#ASMSTART
	; Branch (103)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[2:3], exec, s[0:1]
	s_cbranch_execz BB0_420
; %bb.369:
	;;#ASMSTART
	; Branch (108)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 47, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[4:5], exec, s[0:1]
	s_cbranch_execz BB0_383
; %bb.370:
	;;#ASMSTART
	; Branch (111)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 55, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_373
; %bb.371:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s8, 4
BB0_372:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_372
BB0_373:                                ; %Flow1521
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_376
; %bb.374:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_375:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_375
BB0_376:                                ; %Flow1522
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (112)
	;;#ASMEND
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_379
; %bb.377:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_378:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_378
BB0_379:                                ; %Flow1516
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_382
; %bb.380:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_381:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_381
BB0_382:                                ; %Flow1517
	s_or_b64 exec, exec, s[0:1]
BB0_383:                                ; %Flow1533
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_397
; %bb.384:
	;;#ASMSTART
	; Branch (109)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 39, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_387
; %bb.385:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_386:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_386
BB0_387:                                ; %Flow1531
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_390
; %bb.388:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s8, 4
BB0_389:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_389
BB0_390:                                ; %Flow1532
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (110)
	;;#ASMEND
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_393
; %bb.391:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_392:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_392
BB0_393:                                ; %Flow1527
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_396
; %bb.394:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_395:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_395
BB0_396:                                ; %Flow1528
	s_or_b64 exec, exec, s[0:1]
BB0_397:                                ; %Flow1534
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (113)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_411
; %bb.398:
	;;#ASMSTART
	; Branch (115)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 55, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_401
; %bb.399:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_400:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_400
BB0_401:                                ; %Flow1501
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_404
; %bb.402:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_403:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_403
BB0_404:                                ; %Flow1502
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (116)
	;;#ASMEND
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_407
; %bb.405:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_406:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_406
BB0_407:                                ; %Flow1497
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_410
; %bb.408:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_409:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_409
BB0_410:                                ; %Flow1498
	s_or_b64 exec, exec, s[4:5]
BB0_411:                                ; %Flow1510
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_419
; %bb.412:
	;;#ASMSTART
	; Branch (114)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 39, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_415
; %bb.413:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s6, 4
BB0_414:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_414
BB0_415:                                ; %Flow1507
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_418
; %bb.416:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_417:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_417
BB0_418:                                ; %Flow1508
	s_or_b64 exec, exec, s[4:5]
BB0_419:                                ; %Flow1511
	s_or_b64 exec, exec, s[0:1]
BB0_420:                                ; %Flow1555
	s_or_saveexec_b64 s[0:1], s[2:3]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_442
; %bb.421:
	;;#ASMSTART
	; Branch (104)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 15, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_429
; %bb.422:
	;;#ASMSTART
	; Branch (107)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 23, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_425
; %bb.423:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s4, 3
BB0_424:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_424
BB0_425:                                ; %Flow1538
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_428
; %bb.426:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s4, 4
BB0_427:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_427
BB0_428:                                ; %Flow1539
	s_or_b64 exec, exec, s[2:3]
BB0_429:                                ; %Flow1552
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_442
; %bb.430:
	;;#ASMSTART
	; Branch (105)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 7, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_433
; %bb.431:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s2, 1
BB0_432:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s2, s2, -1
	s_cmp_eq_u32 s2, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_432
BB0_433:                                ; %Flow1549
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_436
; %bb.434:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s2, 4
BB0_435:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s2, s2, -1
	s_cmp_eq_u32 s2, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_435
BB0_436:                                ; %Flow1550
	s_or_b64 exec, exec, s[0:1]
	;;#ASMSTART
	; Branch (106)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_439
; %bb.437:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s2, 1
BB0_438:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s2, s2, -1
	s_cmp_lg_u32 s2, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_438
BB0_439:                                ; %Flow1544
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_442
; %bb.440:
	;;#ASMSTART
	; Iterations (4)
	;;#ASMEND
	s_mov_b32 s0, 4
BB0_441:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s0, s0, -1
	s_cmp_eq_u32 s0, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_441
BB0_442:                                ; %.loopexit
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
; codeLenInByte = 5420
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
