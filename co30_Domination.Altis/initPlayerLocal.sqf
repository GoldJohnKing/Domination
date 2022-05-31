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

		"[公告]飞行员攻击时请注意敌我识别，TK3次则会被关进小黑屋。群号：274455383" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]战区攻陷的条件是：信号塔被摧毁，所有营地被占领，且战区内敌人数量小于6。" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]按住U -> 显示状态 -> 小队管理可以创建/加入小队。加入其它玩家的小队后，你可以重生在小队长的附近。" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]战区的敌人部署有一套或者两套3台一组的强大防空系统，找到它们，尽早摧毁！" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]固定翼严禁投掷MK20弹药！！！一经发现，吊销飞行员执照。群号：274455383" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]射的太猛，武器过热？重装弹匣可以解决卡弹。" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]基地车载具行驶到弹药箱装载点可以装载弹药箱（不要下载具），如果没有装载请摧毁，利用刷新后的基地车进行装载，支援前线！" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]基地车中的可以召唤载具，你可以利用这些载具和其它玩家配合，完成各种任务！" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]恶意TK、破坏基地车和载具会被踢出服务器" call CBA_fnc_notify;

		sleep 900; // 15分钟后再显示一次，扣除先前等待的时间
	};
};
diag_log [diag_frameno, diag_ticktime, time, "MPF initPlayerLocal.sqf processed"];