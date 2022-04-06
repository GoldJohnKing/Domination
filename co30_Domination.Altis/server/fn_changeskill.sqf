// by Xeno
//#define __DEBUG__
#include "..\x_setup.sqf"

// _mode
// 0 normal vision
// 1 night, fog, rain

params ["_u", "_mode", ["_init", false]];

// if (!_init && {isNil {_u getVariable "d_spotDistance"}}) exitWith {}; // Edited: Do not judge init or not

// save initial values
// if (_init) then { // Edited: Do not judge init or not
// 	_u setVariable ["d_spotDistance", _u skill "spotDistance"];
// 	_u setVariable ["d_spotTime", _u skill "spotTime"];
// 	_u setVariable ["d_aimingSpeed", _u skill "aimingSpeed"];
// };

// if (_mode == 0) then { // Edited: Tweak enemy skill
	_u setSkill 0.7;
	_u setSkill ["aimingAccuracy", 0];
	_u setSkill ["aimingShake", 0];
	_u setSkill ["spotDistance", 0.8]; // Edited: default = _u getVariable "d_spotDistance"
	_u setSkill ["spotTime", 0.9]; // Edited: default = _u getVariable "d_spotTime"
	_u setSkill ["aimingSpeed", 0.5]; // Edited: default = _u getVariable "d_aimingSpeed"

// } else {
// 	_u setSkill ["spotDistance", 0.18];
// 	_u setSkill ["spotTime", 0.18];
// 	_u setSkill ["aimingSpeed", 0.18];
// };

// TODO calculate better?
// add random value?
// if unit has nv goggles raise value in the night?

//Novice < 0.25
//Rookie >= 0.25 and <= 0.45
//Recruit > 0.45 and <= 0.65
//Veteran > 0.65 and <= 0.85
//Expert > 0.85