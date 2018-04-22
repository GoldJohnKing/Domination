// by Xeno
//#define __DEBUG__
#define THIS_FILE "fn_dorevive.sqf"
#include "..\..\x_macros.sqf"

if (isDedicated) exitWith {};

__TRACE("start")
if (alive player && {alive (player getVariable "xr_cursorTarget")}) then {
	if (xr_pl_can_revive) then {
		if (xr_help_bonus > 0 && {xr_max_lives != -1}) then {
			if (!d_with_ranked) then {
				hintSilent format [localize "STR_DOM_MISSIONSTRING_915", xr_help_bonus];
			} else {
				hintSilent format [localize "STR_DOM_MISSIONSTRING_916", xr_help_bonus, d_ranked_a # 21];
				[player, d_ranked_a # 21] remoteExecCall ["addScore", 2];
			};
			if (xr_max_lives > -1) then {
				private _lives = (player getVariable "xr_lives") + xr_help_bonus;
				__TRACE_1("","_lives")
				player setVariable ["xr_lives", _lives];
				[getPlayerUID player, _lives] remoteExecCall ["d_fnc_ChangeRLifes", 2];
			};
		};
		(player getVariable "xr_cursorTarget") setVariable ["xr_pluncon", false, true];
		if (xr_revivemsg) then {
			{
				[xr_name_player, (player getVariable "xr_cursorTarget") call d_fnc_getplayername] remoteExecCall ["xr_fnc_rmsg", _x];
				false
			} count d_own_sides_o;
			systemChat format [localize "STR_DOM_MISSIONSTRING_914a", (player getVariable "xr_cursorTarget") call d_fnc_getplayername];
		};
		if (d_database_found) then {
			[getPlayerUID player, 0] remoteExecCall ["d_fnc_db_update", 2];
		};
	} else {
		remoteExecCall ["xr_fnc_xcpr", player getVariable "xr_cursorTarget"];
	};
	[player, player getVariable "xr_cursorTarget"] call d_fnc_medicequip;
};
__TRACE("end")