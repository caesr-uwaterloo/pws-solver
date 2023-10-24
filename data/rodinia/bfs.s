	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z6KernelP4NodePiPbS2_S2_S1_i ; -- Begin function _Z6KernelP4NodePiPbS2_S2_S1_i
	.globl	_Z6KernelP4NodePiPbS2_S2_S1_i
	.p2align	8
	.type	_Z6KernelP4NodePiPbS2_S2_S1_i,@function
_Z6KernelP4NodePiPbS2_S2_S1_i:          ; @_Z6KernelP4NodePiPbS2_S2_S1_i
_Z6KernelP4NodePiPbS2_S2_S1_i$local:
; %bb.0:
	s_load_dword s2, s[4:5], 0x30
	s_mov_b32 s7, 0
	s_lshl_b64 s[0:1], s[6:7], 9
	v_or_b32_e32 v0, s0, v0
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s2, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB0_13
; %bb.1:
	s_load_dwordx8 s[8:15], s[4:5], 0x0
	v_ashrrev_i32_e32 v1, 31, v0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, s13
	v_add_u32_e32 v2, vcc, s12, v0
	v_addc_u32_e32 v3, vcc, v3, v1, vcc
	flat_load_ubyte v4, v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_ne_u16_e32 vcc, 0, v4
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB0_13
; %bb.2:
	v_mov_b32_e32 v4, 0
	flat_store_byte v[2:3], v4
	v_lshlrev_b64 v[2:3], 3, v[0:1]
	v_mov_b32_e32 v4, s9
	v_add_u32_e32 v2, vcc, s8, v2
	v_addc_u32_e32 v3, vcc, v4, v3, vcc
	flat_load_dword v6, v[2:3]
	v_mov_b32_e32 v8, s11
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v7, 31, v6
	v_lshlrev_b64 v[4:5], 2, v[6:7]
	v_add_u32_e32 v4, vcc, s10, v4
	v_addc_u32_e32 v5, vcc, v8, v5, vcc
	flat_load_dword v7, v[4:5]
	s_load_dwordx4 s[4:7], s[4:5], 0x20
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v10, s5
	s_waitcnt vmcnt(0)
	v_ashrrev_i32_e32 v8, 31, v7
	v_add_u32_e32 v9, vcc, s4, v7
	v_addc_u32_e32 v10, vcc, v10, v8, vcc
	flat_load_ubyte v9, v[9:10]
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_mov_b32_e32 v10, s7
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_eq_u16_e32 vcc, 0, v9
	v_add_u32_e64 v0, s[0:1], s6, v0
	v_addc_u32_e64 v1, s[0:1], v10, v1, s[0:1]
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB0_4
; %bb.3:
	flat_load_dword v11, v[0:1]
	v_lshlrev_b64 v[9:10], 2, v[7:8]
	v_mov_b32_e32 v12, s7
	v_mov_b32_e32 v13, s15
	v_mov_b32_e32 v14, 1
	v_add_u32_e32 v7, vcc, s14, v7
	v_addc_u32_e32 v8, vcc, v13, v8, vcc
	v_add_u32_e32 v9, vcc, s6, v9
	v_addc_u32_e32 v10, vcc, v12, v10, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v11, vcc, 1, v11
	flat_store_dword v[9:10], v11
	flat_store_byte v[7:8], v14
BB0_4:
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v9, vcc, 1, v6
	flat_load_dwordx2 v[7:8], v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v7, vcc, v7, v8
	v_cmp_lt_i32_e32 vcc, v9, v7
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB0_13
; %bb.5:
	v_add_u32_e32 v7, vcc, 4, v4
	v_addc_u32_e32 v8, vcc, 0, v5, vcc
	flat_load_dword v7, v[7:8]
	v_mov_b32_e32 v10, s5
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v8, 31, v7
	v_add_u32_e32 v9, vcc, s4, v7
	v_addc_u32_e32 v10, vcc, v10, v8, vcc
	flat_load_ubyte v9, v[9:10]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_eq_u16_e32 vcc, 0, v9
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB0_7
; %bb.6:
	flat_load_dword v11, v[0:1]
	v_lshlrev_b64 v[9:10], 2, v[7:8]
	v_mov_b32_e32 v12, s7
	v_mov_b32_e32 v13, s15
	v_mov_b32_e32 v14, 1
	v_add_u32_e32 v7, vcc, s14, v7
	v_addc_u32_e32 v8, vcc, v13, v8, vcc
	v_add_u32_e32 v9, vcc, s6, v9
	v_addc_u32_e32 v10, vcc, v12, v10, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v11, vcc, 1, v11
	flat_store_dword v[9:10], v11
	flat_store_byte v[7:8], v14
BB0_7:
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v9, vcc, 2, v6
	flat_load_dwordx2 v[7:8], v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v7, vcc, v7, v8
	v_cmp_lt_i32_e32 vcc, v9, v7
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB0_13
; %bb.8:
	v_add_u32_e32 v7, vcc, 8, v4
	v_addc_u32_e32 v8, vcc, 0, v5, vcc
	flat_load_dword v7, v[7:8]
	v_mov_b32_e32 v10, s5
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v8, 31, v7
	v_add_u32_e32 v9, vcc, s4, v7
	v_addc_u32_e32 v10, vcc, v10, v8, vcc
	flat_load_ubyte v9, v[9:10]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_eq_u16_e32 vcc, 0, v9
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB0_10
; %bb.9:
	flat_load_dword v11, v[0:1]
	v_lshlrev_b64 v[9:10], 2, v[7:8]
	v_mov_b32_e32 v12, s7
	v_mov_b32_e32 v13, s15
	v_mov_b32_e32 v14, 1
	v_add_u32_e32 v7, vcc, s14, v7
	v_addc_u32_e32 v8, vcc, v13, v8, vcc
	v_add_u32_e32 v9, vcc, s6, v9
	v_addc_u32_e32 v10, vcc, v12, v10, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v11, vcc, 1, v11
	flat_store_dword v[9:10], v11
	flat_store_byte v[7:8], v14
BB0_10:
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v6, vcc, 3, v6
	flat_load_dwordx2 v[2:3], v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v2, vcc, v2, v3
	v_cmp_lt_i32_e32 vcc, v6, v2
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB0_13
; %bb.11:
	v_add_u32_e32 v2, vcc, 12, v4
	v_addc_u32_e32 v3, vcc, 0, v5, vcc
	flat_load_dword v2, v[2:3]
	v_mov_b32_e32 v5, s5
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v3, 31, v2
	v_add_u32_e32 v4, vcc, s4, v2
	v_addc_u32_e32 v5, vcc, v5, v3, vcc
	flat_load_ubyte v4, v[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_eq_u16_e32 vcc, 0, v4
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB0_13
; %bb.12:
	flat_load_dword v4, v[0:1]
	v_lshlrev_b64 v[0:1], 2, v[2:3]
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s15
	v_mov_b32_e32 v7, 1
	v_add_u32_e32 v2, vcc, s14, v2
	v_addc_u32_e32 v3, vcc, v6, v3, vcc
	v_add_u32_e32 v0, vcc, s6, v0
	v_addc_u32_e32 v1, vcc, v5, v1, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e32 v4, vcc, 1, v4
	flat_store_dword v[0:1], v4
	flat_store_byte v[2:3], v7
BB0_13:
	s_endpgm