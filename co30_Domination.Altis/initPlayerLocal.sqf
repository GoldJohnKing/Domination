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

		"[公告]战区的敌人部署有一套或者两套3台一组的强大防空系统，找到它们，尽早摧毁！" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]空军、炮兵随意轰炸友军可截图进群举报，群号：274455383" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]联合攻击战术管制员可以利用火炮支援电脑呼叫强大的火力支援，利用支援火力，打击所有地面和海上敌人！" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]搜索并摧毁战区通讯塔、兵营、指挥部以及其它重要设施，攻陷战区！" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]基地车中的可召唤载具冷却时间是12分钟，你可以利用这些载具和其它玩家配合，在战区进行机动与战斗！" call CBA_fnc_notify;
		sleep 15; // 每条间隔15秒

		"[公告]恶意TK、破坏基地车和载具会被踢出服务器" call CBA_fnc_notify;

		sleep 900; // 15分钟后再显示一次，扣除先前等待的时间
	};
};
diag_log [diag_frameno, diag_ticktime, time, "MPF initPlayerLocal.sqf processed"];