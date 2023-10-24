	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z22bpnn_layerforward_CUDAPfS_S_S_ii ; -- Begin function _Z22bpnn_layerforward_CUDAPfS_S_S_ii
	.globl	_Z22bpnn_layerforward_CUDAPfS_S_S_ii
	.p2align	8
	.type	_Z22bpnn_layerforward_CUDAPfS_S_S_ii,@function
_Z22bpnn_layerforward_CUDAPfS_S_S_ii:   ; @_Z22bpnn_layerforward_CUDAPfS_S_S_ii
_Z22bpnn_layerforward_CUDAPfS_S_S_ii$local:
; %bb.0:
	s_load_dwordx4 s[8:11], s[4:5], 0x10
	s_load_dword s2, s[4:5], 0x24
	s_lshl_b32 s0, s7, 4
	v_add_u32_e32 v2, vcc, s0, v1
	v_cmp_eq_u32_e32 vcc, 0, v0
	v_lshlrev_b32_e32 v5, 2, v1
	s_mov_b32 m0, -1
	s_and_saveexec_b64 s[12:13], vcc
	s_cbranch_execz BB0_2
; %bb.1:
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_add_u32_e64 v3, s[0:1], 1, v2
	v_ashrrev_i32_e32 v4, 31, v3
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v6, s5
	v_add_u32_e64 v3, s[0:1], s4, v3
	v_addc_u32_e64 v4, s[0:1], v6, v4, s[0:1]
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v5, v3
BB0_2:
	s_or_b64 exec, exec, s[12:13]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s2, 1
	v_mul_lo_u32 v2, v2, s0
	v_add_u32_e64 v3, s[0:1], s0, v0
	v_add_u32_e64 v2, s[0:1], v3, v2
	v_add_u32_e64 v2, s[0:1], 1, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_mov_b32_e32 v4, s9
	v_add_u32_e64 v2, s[0:1], s8, v2
	v_addc_u32_e64 v3, s[0:1], v4, v3, s[0:1]
	flat_load_dword v6, v[2:3]
	v_lshlrev_b32_e32 v4, 2, v0
	v_lshlrev_b32_e32 v7, 6, v1
	v_and_b32_e32 v8, 1, v1
	v_add_u32_e64 v7, s[0:1], v7, v4
	v_add_u32_e64 v4, s[0:1], 64, v7
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v7, v6 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_mov_b32 m0, -1
	ds_read_b32 v6, v7 offset:64
	ds_read_b32 v5, v5
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v5, v6, v5
	ds_write_b32 v7, v5 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e64 s[0:1], 0, v8
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB0_4
; %bb.3:
	ds_read2_b32 v[5:6], v4 offset1:16
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v5, v6
	ds_write_b32 v4, v5
BB0_4:
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v5, 3, v1
	v_cmp_eq_u32_e64 s[0:1], 0, v5
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB0_6
; %bb.5:
	ds_read2_b32 v[5:6], v4 offset1:32
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v5, v6
	ds_write_b32 v4, v5
BB0_6:
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v5, 7, v1
	v_cmp_eq_u32_e64 s[0:1], 0, v5
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB0_8
; %bb.7:
	ds_read2st64_b32 v[5:6], v4 offset1:1
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v5, v6
	ds_write_b32 v4, v5
BB0_8:
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v5, 15, v1
	v_cmp_eq_u32_e64 s[0:1], 0, v5
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz BB0_10
; %bb.9:
	ds_read2st64_b32 v[5:6], v4 offset1:2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v5, v6
	ds_write_b32 v4, v5
BB0_10:
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	ds_read_b32 v4, v4
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[2:3], v4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB0_12
; %bb.11:
	v_lshlrev_b32_e32 v2, 2, v1
	v_lshlrev_b32_e32 v0, 6, v0
	v_add_u32_e32 v2, vcc, v0, v2
	s_mul_i32 s7, s7, s2
	v_add_u32_e32 v0, vcc, s7, v1
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_mov_b32_e32 v3, s11
	v_add_u32_e32 v0, vcc, s10, v0
	v_addc_u32_e32 v1, vcc, v3, v1, vcc
	ds_read_b32 v2, v2 offset:64
	s_waitcnt lgkmcnt(0)
	flat_store_dword v[0:1], v2
BB0_12:
	s_endpgm