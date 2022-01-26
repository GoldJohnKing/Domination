// by Xeno
//#define __DEBUG__
#include "x_setup.sqf"
diag_log [diag_frameno, diag_ticktime, time, "Executing MPF initPlayerLocal.sqf"];
__TRACE_1("","_this")

diag_log ["DOM initPlayerLocal.sqf, sending this to init player on server:", _this];

_this remoteExec ["d_fnc_initPlayerServer", 2];

if (hasInterface) then {
	0 spawn d_fnc_tasks;
};

player enableAttack false;

diag_log ["Dom d_database_found:", d_database_found];
diag_log ["Dom name player:", name player];


//服务器提示
// Edited: Add server rule hints
[] spawn { // 创建线程
	while {true} do {
		sleep 60; // 玩家首次加入服务器时，有一段加载时间，因此先等待60秒

		"[公告]没有飞行员执照，无法驾驶任何飞行载具。需要飞行员执照请进群联系管理考核。群号：274455383" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]战区攻陷的条件是：信号塔被摧毁，所有营地被占领，且战区内敌人数量小于6。" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]恶意TK、破坏基地车和载具会被踢出服务器" call CBA_fnc_notify;

		sleep 810; // 15分钟后再显示一次，扣除先前等待的时间
	};
};
diag_log [diag_frameno, diag_ticktime, time, "MPF initPlayerLocal.sqf processed"];