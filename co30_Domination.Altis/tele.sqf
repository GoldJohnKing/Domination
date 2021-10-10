click = 0 ;
openmap true;
[ "tele" , "onmapsingleclick" ,{
clickpos =_pos;
click = 1 ;
[ "tele", "onmapsingleclick"] call BIS_fnc_removestackedeventhandler;
}] call BIS_fnc_addstackedeventhandler ;
waituntil {click == 1};
_posm1 = getmarkerpos "m1";
_posm2 = getmarkerpos "m2";
private _osm = position{8699.344,10099.487,46.292};
_L1 = clickpos distance _posm1;
_L2 = clickpos distance _posm2 ;
if(_L1 > 100 && _L2 > 100) then {hint "位置距离航母位置过远" }
else{
if (_L1 <_L2) then {telepos = _osm}
else   {telepos = _osm };
cuttext [ "", "black out",2];
sleep 3;
player setpos telepos;
cuttext [ "","black in",2];
} ;