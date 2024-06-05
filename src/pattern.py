#!/usr/bin/python3

"""\
This module defines some constants to use for pattern-matching
"""

SMEM_INST = r"^s_((buffer_)?(load|store|)_dword(x[0-9]+)?|" \
    r"atc_probe(_buffer)?|dcache_(inv|wb)(_vol)?|mem(real)?time)"
DS_INST = r"^ds_.*"
VMEM_INST = r"^((t?buffer|image|flat)_.*|export)"
COND_BRANCH_INST = r"^s_cbranch_.*"
COND_BRANCH_SCC_INST = r"^s_cbranch_scc[0|1].*"
UNCOND_BRANCH_INST = r"^s_branch.*"
INST = r"^(s_|v_|ds_|flat_|t?buffer_|image_|export).*"
BB_LABEL = r"^(\;\s*%bb\.[0-9]+|BB[0-9]+_[0-9]+)"
KERNEL_START = r"^\;\s*%bb\.0"
KERNEL_END = r"^s_endpgm.*"
DOUBLE_WORD_COMPARE = r"^v_cmp[^\s]*\ss.*"
DOUBLE_WORD_INST = r"v_.*_e64.*"
# These instructions are normally a single word long, but they may have 32-bit
# immediates that make them double word instructions
DOUBLE_WORD_LONG_IMM_INSTS = [
    "s_and_b32",
    "s_mov_b32",
    "s_sub_i32",
    "v_add_u32_e32",
    "v_and_b32",
    "v_mov_b32",
    "v_mul_f32",
    "v_mul_i32_i24_e32",
    "v_mul_u32_u24_e32",
    "v_or_b32",
    "v_sub_f32_e32",
    "v_xor_b32_e32",
]
DOUBLE_WORD_LONG_IMM = "^(" + '|'.join(DOUBLE_WORD_LONG_IMM_INSTS) + \
    r").*0x[0-9a-fA-F]{3}.*"
DOUBLE_WORD_MISC_INSTS = [
    "s_add_u32",
    "s_addc_u32",
]
DOUBLE_WORD_MISC = "^(" + '|'.join(DOUBLE_WORD_MISC_INSTS) + \
    r").*d_mask@rel32@(lo|hi)\+4.*"
DOUBLE_WORD_ALU_INSTS = [
    "v_add_f64",
    "v_ashrrev_i64",
    "v_bcnt_u32_b32",
    "v_bfm_b32",
    "v_cvt_pkaccum_u8_f32",
    "v_cvt_pknorm_i16_f32",
    "v_cvt_pknorm_u16_f32",
    "v_cvt_pkrtz_f16_f32",
    "v_cvtpk_i16_i32",
    "v_cvtpk_u16_u32",
    "v_div_fixup_f32",
    "v_div_fixup_f64",
    "v_div_fmas_f32",
    "v_div_fmas_f64",
    "v_div_scale_f32",
    "v_div_scale_f64",
    "v_fma_f32",
    "v_fma_f64",
    "v_interp_mov_f32",
    "v_interp_p1_f32",
    "v_interp_p1LL_f16",
    "v_interp_p1LV_f16",
    "v_interp_p2_f16",
    "v_interp_p2_f32",
    "v_interp",
    "v_ldexp_f32",
    "v_ldexp_f64",
    "v_lshlrev_b64",
    "v_lshrrev_b64",
    "v_mad_i32_i24",
    "v_mad_i64_i32",
    "v_mad_u32_u24",
    "v_mad_u64_u32",
    "v_max_f64",
    "v_max3_i32",
    "v_mbcnt_hi_u32_b32",
    "v_mbcnt_lo_u32_b32",
    "v_min_f64",
    "v_min3_i32",
    "v_mul_f64",
    "v_mul_hi_i32",
    "v_mul_hi_u32",
    "v_mul_lo_u32",
    "v_readlane_b32",
    "v_trig_preop_f64",
    "v_writelane_b32",
]
DOUBLE_WORD_ALU = "^(" + '|'.join(DOUBLE_WORD_ALU_INSTS) + ')'
IPT_EDGE = r"\| Measure \|"
BSB_START_INST = "^s_or_saveexec_b64.*"
RECONV_START_INST = "^s_or_b64 exec.*|^s_endpgm.*"
