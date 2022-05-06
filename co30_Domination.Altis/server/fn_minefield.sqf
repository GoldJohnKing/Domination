// by Xeno
//#define __DEBUG__
#include "..\x_setup.sqf"

params ["_radius", "_center"];

private _num_mines = (floor (random 50)) max 30;

private _ran_start_pos = [_center, _radius, -1] call d_fnc_GetRanPointCircle;
private _m_pos_ar = [];

for "_i" from 1 to _num_mines do {
	_m_pos_ar pushBack ([_ran_start_pos, 100, -1] call d_fnc_GetRanPointCircle);
};

d_mines_created = [];//地雷
#ifndef __VN__
private _mtype = selectRandom ["APERSMine","ATMine","IEDLandBig_F","IEDUrbanBig_F","IEDLandSmall_F","IEDUrbanSmall_F","SLAMDirectionalMine","rhs_mine_pmn2","rhs_mine_TM43"];
#else
private _mtype = selectRandom ["vn_mine_ammobox_range", "vn_mine_punji_01", "vn_mine_punji_02", "vn_mine_punji_03", "vn_mine_tm57"];
#endif

for "_i" from 0 to (_num_mines - 1) do {
	private _mine = createMine [_mtype, _m_pos_ar # _i, [], 0];
	_mine setDir random 360;
	d_side_enemy revealMine _mine;
	d_mines_created pushBack _mine;
#ifdef __GROUPDEBUG__
	[str _mine, _m_pos_ar # _i, "ICON", "ColorBlack", [0.5, 0.5], "Mine: " + (typeOf _mine), 0, "mil_dot"] call d_fnc_CreateMarkerLocal;
#endif
	sleep 0.2;
};
