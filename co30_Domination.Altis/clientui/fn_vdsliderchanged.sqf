// by Xeno
//#define __DEBUG__
//#include "..\x_setup.sqf"

disableSerialization;
private _newvd = round (_this # 1);
((uiNamespace getVariable "D_StatusDialog") displayCtrl 1999) ctrlSetText format [localize "STR_DOM_MISSIONSTRING_358", _newvd];
if (!d_isvdreduced) then {
	// setViewDistance _newvd; // Edited: Disable view distance adjustment
	// setObjectViewDistance _newvd + 100; // Edited: Disable view distance adjustment
};
d_curviewdistance = _newvd;
d_curobjectdistance = _newvd + 100;

// profileNamespace setVariable ["dom_viewdistance", _newvd]; // Edited: Disable view distance adjustment