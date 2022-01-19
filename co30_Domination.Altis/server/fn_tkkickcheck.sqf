// by Xeno
//#define __DEBUG__
#include "..\x_setup.sqf"

private _tk = _this # 2;
_tk addScore (d_sub_tk_points * -1);
private _uid = getPlayerUID _tk;
__TRACE_2("TKKickCheck","_tk","_uid")
private _p = d_player_hash getOrDefault [_uid, []];
if (_p isNotEqualTo []) then {
	_p set [14, (_p # 14) + 1];
	private _numtk = (_p # 7) + 1;
	_p set [7, _numtk];
	__TRACE_1("","_p")
	if (_numtk >= d_maxnum_tks_forkick) exitWith {
		private _pna = _p # 6;
		diag_log format ["玩家 %1 被移到小黑屋因为误伤了太多友军, # team kills: %3, ArmA 3 Key: %2", _pna, _uid, _numtk];
		[20, _pna, _numtk, _tk] remoteExecCall ["d_fnc_csidechat", [0, -2] select isDedicated];
	};
};

