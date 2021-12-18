params["_vehicle","_cost"];
if(money>=_cost)
then
{
_ap=createVehicle [_vehicle, position player, [], 0, "FORM"];
money=money-_cost;
removeAllactions player;
hint format ["你还有 %1 点荣誉!", money];
};
if(money<_cost)
then
{
hint format ["你的荣誉不够，下次带着更多的荣誉来吧。"];
removeAllactions player;
};



