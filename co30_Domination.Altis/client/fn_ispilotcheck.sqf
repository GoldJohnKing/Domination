// by Xeno
//#define __DEBUG__ 检查是否是飞行员
#include "..\x_setup.sqf"

if (d_gmcwg) exitWith {
	"pilot" in toLowerANSI (uniform player) && {toLowerANSI (headgear player) == "gm_ge_headgear_sph4_oli"}
};
if (d_unsung) exitWith {
	"pilot" in toLowerANSI (uniform player) && {"pilot" in toLowerANSI (headgear player) || {"jp_helmet" in toLowerANSI (headgear player)} || {"hp_helmet" in toLowerANSI (headgear player)}}
};
if (d_vn) exitWith {
	toLowerANSI (uniform player) in ["vn_b_uniform_heli_01_01","vn_b_uniform_k2b_02_01","vn_b_uniform_k2b_02_02","vn_b_uniform_k2b_01_02","vn_b_uniform_k2b_02_03","vn_o_uniform_nva_air_01"] && {toLowerANSI (headgear player) in ["vn_b_helmet_aph6_01_02","vn_b_helmet_aph6_02_02","vn_b_helmet_aph6_01_05","vn_b_helmet_aph6_02_05","vn_b_helmet_aph6_01_03","vn_b_helmet_aph6_02_03","vn_b_helmet_aph6_01_04","vn_b_helmet_aph6_02_04","vn_b_helmet_aph6_01_01","vn_b_helmet_aph6_02_01"]}
};

// toLowerANSI (uniform player) in ["U_B_HeliPilotCoveralls","U_B_PilotCoveralls","rhs_uniform_df15_tan","rhs_uniform_df15"] && {toLowerANSI (headgear player) in ["rhs_zsh7a_alt","rhs_zsh7a","rhs_zsh7a_mike_alt","rhs_zsh7a_mike_green","rhs_zsh7a_mike","RHS_jetpilot_usaf","rhsusf_ihadss","rhsusf_hgu56p_visor_green","rhsusf_hgu56p_mask_green","rhsusf_hgu56p_green","rhsusf_hgu56p_visor_black","rhsusf_hgu56p_mask_black_skull","rhsusf_hgu56p_mask_black","rhsusf_hgu56p_black"]}
"pilot" in toLowerANSI (uniform player) && {"pilot" in toLowerANSI (headgear player)}
