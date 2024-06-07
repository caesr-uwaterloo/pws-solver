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
	; Branch (316)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 31, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[2:3], exec, s[0:1]
	s_cbranch_execz BB0_78
; %bb.1:
	;;#ASMSTART
	; Branch (336)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 47, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[4:5], exec, s[0:1]
	s_cbranch_execz BB0_47
; %bb.2:
	;;#ASMSTART
	; Branch (342)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 55, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[6:7], exec, s[0:1]
	s_cbranch_execz BB0_10
; %bb.3:
	;;#ASMSTART
	; Branch (344)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 59, v0
	s_and_saveexec_b64 s[8:9], s[0:1]
	s_xor_b64 s[0:1], exec, s[8:9]
	s_cbranch_execz BB0_6
; %bb.4:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_5:                                  ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_5
BB0_6:                                  ; %Flow631
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_9
; %bb.7:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_8:                                  ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_8
BB0_9:                                  ; %Flow632
	s_or_b64 exec, exec, s[0:1]
BB0_10:                                 ; %Flow639
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_18
; %bb.11:
	;;#ASMSTART
	; Branch (343)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 51, v0
	s_and_saveexec_b64 s[8:9], s[0:1]
	s_xor_b64 s[0:1], exec, s[8:9]
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
BB0_14:                                 ; %Flow637
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_17
; %bb.15:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_16:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_16
BB0_17:                                 ; %Flow638
	s_or_b64 exec, exec, s[0:1]
BB0_18:                                 ; %.loopexit306
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (345)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_32
; %bb.19:
	;;#ASMSTART
	; Branch (348)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 59, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_22
; %bb.20:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_21:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_21
BB0_22:                                 ; %Flow611
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_25
; %bb.23:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_24:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_24
BB0_25:                                 ; %Flow612
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (349)
	;;#ASMEND
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_28
; %bb.26:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_27:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_27
BB0_28:                                 ; %Flow606
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_31
; %bb.29:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_30:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_30
BB0_31:                                 ; %Flow607
	s_or_b64 exec, exec, s[6:7]
BB0_32:                                 ; %Flow625
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_46
; %bb.33:
	;;#ASMSTART
	; Branch (346)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 51, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_36
; %bb.34:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_35:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_35
BB0_36:                                 ; %Flow622
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_39
; %bb.37:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_38:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_38
BB0_39:                                 ; %Flow623
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (347)
	;;#ASMEND
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_42
; %bb.40:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_41:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_41
BB0_42:                                 ; %Flow617
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_45
; %bb.43:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_44:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_44
BB0_45:                                 ; %Flow618
	s_or_b64 exec, exec, s[6:7]
BB0_46:                                 ; %Flow626
	s_or_b64 exec, exec, s[0:1]
BB0_47:                                 ; %Flow666
	s_or_saveexec_b64 s[0:1], s[4:5]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_77
; %bb.48:
	;;#ASMSTART
	; Branch (337)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 39, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_62
; %bb.49:
	;;#ASMSTART
	; Branch (340)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 43, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_52
; %bb.50:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_51:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_51
BB0_52:                                 ; %Flow649
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_55
; %bb.53:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_54:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_54
BB0_55:                                 ; %Flow650
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (341)
	;;#ASMEND
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_58
; %bb.56:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_57:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_57
BB0_58:                                 ; %Flow644
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_61
; %bb.59:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_60:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_60
BB0_61:                                 ; %Flow645
	s_or_b64 exec, exec, s[6:7]
BB0_62:                                 ; %Flow663
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_76
; %bb.63:
	;;#ASMSTART
	; Branch (338)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 35, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_66
; %bb.64:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_65:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_65
BB0_66:                                 ; %Flow660
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_69
; %bb.67:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_68:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_68
BB0_69:                                 ; %Flow661
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (339)
	;;#ASMEND
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_72
; %bb.70:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_71:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_eq_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_71
BB0_72:                                 ; %Flow655
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_75
; %bb.73:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_74:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_74
BB0_75:                                 ; %Flow656
	s_or_b64 exec, exec, s[6:7]
BB0_76:                                 ; %Flow664
	s_or_b64 exec, exec, s[4:5]
BB0_77:                                 ; %Flow667
	s_or_b64 exec, exec, s[0:1]
BB0_78:                                 ; %Flow758
	s_or_saveexec_b64 s[0:1], s[2:3]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_179
; %bb.79:
	;;#ASMSTART
	; Branch (317)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 15, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[2:3], exec, s[0:1]
	s_cbranch_execz BB0_103
; %bb.80:
	;;#ASMSTART
	; Branch (322)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 23, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_88
; %bb.81:
	;;#ASMSTART
	; Branch (325)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 27, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_84
; %bb.82:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_83:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_83
BB0_84:                                 ; %Flow720
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_87
; %bb.85:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_86:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_86
BB0_87:                                 ; %Flow721
	s_or_b64 exec, exec, s[0:1]
BB0_88:                                 ; %Flow734
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_102
; %bb.89:
	;;#ASMSTART
	; Branch (323)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 19, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz BB0_92
; %bb.90:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s8, 3
BB0_91:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_91
BB0_92:                                 ; %Flow731
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_95
; %bb.93:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_94:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_94
BB0_95:                                 ; %Flow732
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (324)
	;;#ASMEND
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_98
; %bb.96:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_97:                                 ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_97
BB0_98:                                 ; %Flow726
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_101
; %bb.99:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_100:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_100
BB0_101:                                ; %Flow727
	s_or_b64 exec, exec, s[0:1]
BB0_102:                                ; %Flow735
	s_or_b64 exec, exec, s[4:5]
BB0_103:                                ; %Flow756
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_127
; %bb.104:
	;;#ASMSTART
	; Branch (318)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 7, v0
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_112
; %bb.105:
	;;#ASMSTART
	; Branch (321)
	;;#ASMEND
	v_cmp_lt_u32_e64 s[0:1], 11, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_108
; %bb.106:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_107:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_107
BB0_108:                                ; %Flow740
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_111
; %bb.109:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_110:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_110
BB0_111:                                ; %Flow741
	s_or_b64 exec, exec, s[0:1]
BB0_112:                                ; %Flow754
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_126
; %bb.113:
	;;#ASMSTART
	; Branch (319)
	;;#ASMEND
	s_mov_b32 s6, 3
	v_cmp_lt_u32_e64 s[0:1], 3, v0
	s_and_saveexec_b64 s[8:9], s[0:1]
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz BB0_116
; %bb.114:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
BB0_115:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_115
BB0_116:                                ; %Flow751
	s_or_saveexec_b64 s[6:7], s[8:9]
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz BB0_119
; %bb.117:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s8, 1
BB0_118:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s8, s8, -1
	s_cmp_lg_u32 s8, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_118
BB0_119:                                ; %Flow752
	s_or_b64 exec, exec, s[6:7]
	;;#ASMSTART
	; Branch (320)
	;;#ASMEND
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_xor_b64 s[0:1], exec, s[6:7]
	s_cbranch_execz BB0_122
; %bb.120:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_121:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_121
BB0_122:                                ; %Flow746
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_125
; %bb.123:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_124:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_124
BB0_125:                                ; %Flow747
	s_or_b64 exec, exec, s[0:1]
BB0_126:                                ; %Flow755
	s_or_b64 exec, exec, s[4:5]
BB0_127:                                ; %.loopexit278
	s_or_b64 exec, exec, s[2:3]
	;;#ASMSTART
	; Branch (326)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_151
; %bb.128:
	;;#ASMSTART
	; Branch (332)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 23, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_142
; %bb.129:
	;;#ASMSTART
	; Branch (334)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 27, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_132
; %bb.130:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_131:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_131
BB0_132:                                ; %Flow677
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_135
; %bb.133:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_134:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_134
BB0_135:                                ; %Flow678
	s_or_b64 exec, exec, s[4:5]
	;;#ASMSTART
	; Branch (335)
	;;#ASMEND
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_138
; %bb.136:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_137:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_137
BB0_138:                                ; %Flow672
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_141
; %bb.139:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_140:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_140
BB0_141:                                ; %Flow673
	s_or_b64 exec, exec, s[4:5]
BB0_142:                                ; %Flow686
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_150
; %bb.143:
	;;#ASMSTART
	; Branch (333)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 19, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execz BB0_146
; %bb.144:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s6, 3
BB0_145:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_eq_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_145
BB0_146:                                ; %Flow683
	s_or_saveexec_b64 s[4:5], s[4:5]
	s_xor_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_149
; %bb.147:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s6, 1
BB0_148:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_148
BB0_149:                                ; %Flow684
	s_or_b64 exec, exec, s[4:5]
BB0_150:                                ; %Flow687
	s_or_b64 exec, exec, s[2:3]
BB0_151:                                ; %Flow714
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_179
; %bb.152:
	;;#ASMSTART
	; Branch (327)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 7, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_166
; %bb.153:
	;;#ASMSTART
	; Branch (330)
	;;#ASMEND
	v_cmp_lt_u32_e32 vcc, 11, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_156
; %bb.154:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s4, 3
BB0_155:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_155
BB0_156:                                ; %Flow697
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_159
; %bb.157:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s4, 1
BB0_158:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_158
BB0_159:                                ; %Flow698
	s_or_b64 exec, exec, s[2:3]
	;;#ASMSTART
	; Branch (331)
	;;#ASMEND
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_162
; %bb.160:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s4, 3
BB0_161:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_eq_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_161
BB0_162:                                ; %Flow692
	s_or_saveexec_b64 s[2:3], s[2:3]
	s_xor_b64 exec, exec, s[2:3]
	s_cbranch_execz BB0_165
; %bb.163:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s4, 1
BB0_164:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s4, s4, -1
	s_cmp_lg_u32 s4, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_164
BB0_165:                                ; %Flow693
	s_or_b64 exec, exec, s[2:3]
BB0_166:                                ; %Flow711
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_179
; %bb.167:
	;;#ASMSTART
	; Branch (328)
	;;#ASMEND
	s_mov_b32 s0, 3
	v_cmp_lt_u32_e32 vcc, 3, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_xor_b64 s[2:3], exec, s[2:3]
	s_cbranch_execz BB0_170
; %bb.168:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
BB0_169:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s0, s0, -1
	s_cmp_lg_u32 s0, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc1 BB0_169
BB0_170:                                ; %Flow708
	s_or_saveexec_b64 s[0:1], s[2:3]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_173
; %bb.171:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s2, 1
BB0_172:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s2, s2, -1
	s_cmp_lg_u32 s2, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_172
BB0_173:                                ; %Flow709
	s_or_b64 exec, exec, s[0:1]
	;;#ASMSTART
	; Branch (329)
	;;#ASMEND
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execz BB0_176
; %bb.174:
	;;#ASMSTART
	; Iterations (3)
	;;#ASMEND
	s_mov_b32 s2, 3
BB0_175:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s2, s2, -1
	s_cmp_eq_u32 s2, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_175
BB0_176:                                ; %Flow703
	s_or_saveexec_b64 s[0:1], s[0:1]
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execz BB0_179
; %bb.177:
	;;#ASMSTART
	; Iterations (2)
	;;#ASMEND
	s_mov_b32 s0, 1
BB0_178:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s0, s0, -1
	s_cmp_lg_u32 s0, 0
	;;#ASMSTART
	v_and_b32_e32 v1, 1, v1
	;;#ASMEND
	s_cbranch_scc0 BB0_178
BB0_179:                                ; %.loopexit
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
		.amdhsa_next_free_sgpr 10
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
; codeLenInByte = 2172
; NumSgprs: 14
; NumVgprs: 1
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 0
; NumSGPRsForWavesPerEU: 14
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
    .sgpr_count:     14
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
