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
//飞行员白名单 执照
	// (getPlayerUID player) == "76561198425186785" && {"pilot" in toLowerANSI (uniform player)}
   (getPlayerUID player) in [
	   "76561198425186785",//我
	   "76561198377552749",//起个名难（BDSF)
	   "76561197996528042",//老金
	   "76561198044153700",//xiduola
	   "76561198322399872",//422
	   "76561198448654167",//SOL44151
	   "76561199092177895",//风华
	   "76561198452928851",//IONY
	   "76561198397795428",//DIANDIAN
	   "76561199012344429",//USNG
	   "76561198385245693",//zc
	   "76561198262486527",//Tiny
	   "76561198322324149",//深情
	   "76561198389827603",//Glaube
	   "76561198303636873",//Quincy
	   "76561198135068294",//Rayson
	   "76561198813625204",//JIAJIA
	   "76561198196256353",//18700
	   "76561198250809748",//lengfeng
	   "76561199172941578",//肖军
	   "76561198853346836",//ump45 
	   "76561198842853565",//zhang
	   "76561198414965289",//星空
	   "76561198807270353",//abc26
	   "76561198283262133",//12961
	   "76561198211998944",//knight
	   "76561198386552816",//表哥
	   "76561198979998366",//军戈飞扬
	   "76561198254537937",//Simon
	   "76561198856064395",//蒙羽
	   "76561198161412086"//sundashengzong
   ] && (player isKindOf "B_Pilot_F")

// "pilot" in toLowerANSI (uniform player)
//  player isKindOf "B_Pilot_F" 
