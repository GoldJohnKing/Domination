// by Xeno
//#define __DEBUG__
#include "..\x_setup.sqf"

"欢迎来到61方面军美俄战争服!" hintC [ // Edited: Server rules
    parseText 
	"
	<img size='10' align='center' image='pics\domls.paa'/>
	<br/><t align='center'><t size='1.2'><t color='#FF0000'>SERVER RULES</t><br/>
	<br/><t align='left'><t size='1'>
	1) 禁止基地内开火, 或蓄意摧毁载具, 扰乱玩家正常游戏<br/>
	2) 禁止恶意TK友军! <br/>
	3) 禁止讨论任何敏感话题<br/>
	4) 积极的与队友进行沟通, 不要误射友军<br/>
	5) 服务器已经禁止任何的直接跳伞功能, 不要尝试, 正常的从载具跳伞正常<br/>
	6) 服务器内有任何问题请进群说明, 群号274455383<br/>
	7) 火炮引导员注意协同, 避免误伤友军。</t><br/>
	<br/>
	U键打开多功能菜单! 小队管理也在里面哦(显示状态选项-小队管理）! 了解更多特色功能请按M, 点击简报了解! <br/>
	武装突袭3金家寨61方面军红锤服务器欢迎你的到来! 有任何问题请联系管理</t><br/>
	<br/>
	<t align='left'><t size='1'>
	Domination Steam Page (not for server related questions): <a underline='true' color='#00ff4c' href='https://steamcommunity.com/sharedfiles/filedetails/?id=332088703'>Domination On Steam</a><br/>
	Domination on Discord (not for server related questions): <a underline='true' color='#00ff4c' href='https://discordapp.com/invite/vYVNKV2'>Domination</a><br/>
	<br/></t></t>
	"
];

d_hintC_EH = findDisplay 57 displayAddEventHandler ["unload", {
	0 = _this spawn {
		scriptName "spawn_serverrules";
		_this # 0 displayRemoveEventHandler ["unload", d_hintC_EH];
		d_hintC_EH = nil;
		hintSilent "";
	};
}];
