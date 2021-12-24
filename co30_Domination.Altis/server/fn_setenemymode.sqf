// by Xeno modified by Longtime
//#define __DEBUG__
#include "..\x_setup.sqf"

// set global arrays that determine which enemies are present at the maintarget
// _enemyMode   ！！！严格限制载具的数量，数量过多会严重压制玩家，影响双方力量对比，破坏游戏平衡！！！
//设计时，考虑必定出生的载具的应该是一个最低数值，它的最大值为7
//不要以导演任务来设计红锤服 红锤服应当是简单，略有难度，而不是难度非常真实，把玩家堵在外面，如果玩家数量多，那么应该在总兵力不变的情况下缩短支援间隔，一味多放置敌人会造成玩家无法自由攻入的严重后果
//   0 Normal  大规模钢铁洪流  重压（反载具体验增强）
//   1 Less    正常机械化部队  正常 （正常体验增强）
//   2 None    敌人机械化步兵部队 拥有大量步战车 也许有坦克 有大量防空掩护（交给陆军）
//   3 Random, enemy mode is randomly chosen [0,1,2] each time a maintarget is created

__TRACE_1("","_this")

params ["_enemyMode"];

if (_enemyMode == 3) then {
	d_enemy_mode_current_maintarget = selectRandom [0, 1, 2];
	_enemyMode = d_enemy_mode_current_maintarget;
};

// first element (array. for example: [2,1]): number of vehicle groups that will get spawned, the first number is the max number that will get spawned,
// the second one the minimum. So [2,0] means, there can be no vehicle groups at all or a maximum of 2 groups of this kind
// second element: maximum number of vehicles in group; randomly chosen 前两个是载具组数的最大值和最小值，第三个是组内载具数（固定值）。
switch (_enemyMode) do {
	case 0: {
		d_vec_numbers_guard = [
			[[4,0], 1], // tanks
			[[2,1], 1], // tracked apc
			[[2,1], 1], // wheeled apc
			[[1,0], 0], // jeep with mg
			[[1,0], 0] // jeep with gl
		];
		d_vec_numbers_guard_static = [
			[[1,0], 1], // tanks
			[[2,0], 1], // tracked apc
			[[2,1], 1] // aa
		];
		d_vec_numbers_patrol = [
#ifndef __TT__
			[[2,1], 1], // tanks
			[[1,0], 1], // tracked apc
			[[2,1], 1], // wheeled apc
			[[1,1], 0], // jeep with mg
			[[1,0], 0], // jeep with gl
			[[2,1], 1]  // uav
#else
			[[2,1], 1], // tanks
			[[2,0], 1], // tracked apc
			[[2,1], 1], // wheeled apc
			[[1,1], 0], // jeep with mg
			[[1,0], 0], // jeep with gl
			[[2,1], 1]  // uav
#endif
		];

		// almost the same like above
		// first element the max number of ai "foot" groups that will get spawned, second element minimum number (no number for vehicles in group necessary)
		d_footunits_guard = [
#ifndef __TT__
			[4,2], // basic groups
			[4,2] // specop groups
#else
			[4,2], // basic groups
			[4,2] // specop groups
#endif
		];
		d_footunits_patrol = [
#ifndef __TT__
			[4,2], // basic groups
			[4,2] // specop groups
#else
			[6,2], // basic groups
			[6,2] // specop groups
#endif
		];
		d_footunits_guard_static = [
			[2,1], // basic groups
			[2,1] // specop groups
		];
		d_footunits_attack = [
			[2,1], // basic groups
			[2,1] // specop groups
		];
		d_vec_numbers_attack = [
			[[1,1], 1], // tanks
			[[1,1], 1], // tracked apc
			[[2,1], 1], // wheeled apc
			[[1,1], 0], // jeep with mg
			[[1,1], 0], // jeep with gl
			[[4,1], 1] // aa
		];
	};
	case 1: {
		d_vec_numbers_guard = [
			[[2,0], 1], // tanks
			[[2,1], 1], // tracked apc
			[[1,1], 1], // wheeled apc
			[[1,1], 1], // jeep with mg
			[[1,0], 1] // jeep with gl
		];
		d_vec_numbers_guard_static = [
			[[2,1], 1], // tanks
			[[1,0], 1], // tracked apc
			[[2,2], 1] // aa
		];
		d_vec_numbers_patrol = [
			[[1,1], 1], // tanks
			[[1,1], 1], // tracked apc
			[[1,0], 1], // wheeled apc
			[[1,0], 1], // jeep with mg
			[[1,1], 1], // jeep with gl
			[[1,1], 1]  // uav
		];

		// almost the same like above
		// first element the max number of ai "foot" groups that will get spawned, second element minimum number (no number for vehicles in group necessary)
		d_footunits_guard = [
			[4,2], // basic groups
			[4,2] // specop groups
		];
		d_footunits_patrol = [
			[4,2], // basic groups
			[4,1] // specop groups
		];
		d_footunits_guard_static = [
			[2,1], // basic groups
			[2,1] // specop groups
		];
		d_footunits_attack = [
			[2,1], // basic groups
			[2,1] // specop groups
		];
		d_vec_numbers_attack = [
			[[2,1], 1], // tanks
			[[1,1], 1], // tracked apc
			[[1,1], 1], // wheeled apc
			[[1,1], 1], // jeep with mg
			[[1,0], 1], // jeep with gl
			[[2,1], 1] // aa
		];
	};
	case 2: {
		d_vec_numbers_guard = [
			[[1,0], 1], // tanks
			[[2,1], 1], // tracked apc
			[[2,1], 1], // wheeled apc
			[[1,0], 1], // jeep with mg
			[[2,1], 1] // jeep with gl
		];
		d_vec_numbers_guard_static = [
			[[1,0], 1], // tanks
			[[1,0], 1], // tracked apc
			[[4,2], 1] // aa
		];
		d_vec_numbers_patrol = [
			[[2,0], 1], // tanks
			[[2,0], 1], // tracked apc
			[[2,0], 1], // wheeled apc
			[[2,1], 1], // jeep with mg
			[[2,0], 1], // jeep with gl
			[[1,1], 1]  // uav
		];

		// almost the same like above
		// first element the max number of ai "foot" groups that will get spawned, second element minimum number (no number for vehicles in group necessary)
		d_footunits_guard = [
			[5,3], // basic groups
			[5,3] // specop groups
		];
		d_footunits_patrol = [
			[6,2], // basic groups
			[6,2] // specop groups
		];
		d_footunits_guard_static = [
			[4,2], // basic groups
			[4,2] // specop groups
		];
		d_footunits_attack = [
			[4,2], // basic groups
			[4,2] // specop groups
		];
		d_vec_numbers_attack = [
			[[0,0], 1], // tanks
			[[2,0], 1], // tracked apc
			[[2,0], 1], // wheeled apc
			[[2,2], 1], // jeep with mg
			[[2,1], 1], // jeep with gl
			[[2,1], 1] // aa
		];
	};
};
