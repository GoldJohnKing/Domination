// by Xeno
//#define __DEBUG__
#include "..\..\x_setup.sqf"

d_x_sm_pos = "d_sm_97" call d_fnc_smmapos; // Steal chopper prototype
d_x_sm_type = "normal"; // "convoy"

if (hasInterface) then {
	d_cur_sm_txt = localize "STR_DOM_MISSIONSTRING_1809";
	d_current_mission_resolved_text = localize "STR_DOM_MISSIONSTRING_796";
};

if (isServer) then {
	d_x_sm_pos params ["_poss"];
	private _vec = createVehicle [d_sm_chopper, _poss, [], 0, "NONE"];
	_vec setDir (markerDir "d_sm_97");
	_vec setPos _poss;
	sleep 2.123;
	["specops", 4, "allmen", 5, _poss, 200, true] spawn d_fnc_CreateInf;
	sleep 2.221;
	["aa", 1, "tracked_apc", 1, "tank", 1, d_x_sm_pos # 1, 1, 400, true] spawn d_fnc_CreateArmor;
	sleep 2.543;
	[_vec] spawn d_fnc_sidesteal;
	[_vec, 6] call d_fnc_setekmode;
	_vec setDamage 0;
};
