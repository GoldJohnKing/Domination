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

		"[公告]长时间在同一地点停留会招致敌人的围攻。尽快进攻，摧毁关键设施，赢得胜利！" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]战区的敌人部署有3台一组的强大防空系统，它们最大3组，尽早摧毁，这样空军便可以进场。" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]空军、炮兵随意轰炸友军可截图进群举报，群号：274455383" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]联合攻击战术管制员可以利用火炮支援电脑呼叫强大的火力支援，包括从105mm火炮到巡航导弹。利用支援火力，打击所有地面和海上敌人！" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]请飞行员适当招募AI，避免卡顿。" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]飞行员可以利用基地车内的飞行载具运输地面部队，快速搜索敌人重要设施位置，并释放步兵到指定位置。" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]恶意TK、破坏基地车和载具会被踢出服务器" call CBA_fnc_notify;

		sleep 900; // 15分钟后再显示一次，扣除先前等待的时间
	};
};
diag_log [diag_frameno, diag_ticktime, time, "MPF initPlayerLocal.sqf processed"];