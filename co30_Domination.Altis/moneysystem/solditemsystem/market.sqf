params["_reward","_containeringame"];

_containeringame addEventHandler ["Put", {
	params ["_unit", "_container", "_item"];
	money=money+_reward;
	hint format ["你获得了 %1 点荣誉.现在你有 %2 点荣誉了",_reward,money ];
}];

_containeringame addEventHandler ["Take", {
	params ["_unit", "_container", "_item"];
	money=money-_reward;
	hint format ["你用掉了 %1 点荣誉.现在你有 %2 点荣誉了！",_reward,money ];
}];