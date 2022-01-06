private ["_lastrain", "_rain", "_fog", "_mintime", "_maxtime", "_overcast", "_startingweather", "_timeforecast", "_timesync", "_wind"];

// min time seconds (real time) before a new weather forecast
_mintime = 300;

// max time seconds (real time) before a new weather forecast
_maxtime = 900;

// send sync data across the network each xxx seconds
// 60 real seconds by default is a good value
// shortest time do not improve weather sync
_timesync = 90;

// Mission starting weather "CLEAR|CLOUDY|rain";
_startingweather = selectRandom ["CLEAR", "CLOUDY", "RAIN"];

// Actual Logic Below
switch(_startingweather) do {
    case "CLEAR": {
        wcweather = [0, 0, 0, [random 3, random 3, true]];
    };
    
    case "CLOUDY": {
        wcweather = [0, 0, 0.6, [random 3, random 3, true]];
    };
    
    case "RAIN": {
        wcweather = [1, 0, 1, [random 3, random 3, true]];
    };
    
    default {
        // clear
        wcweather = [0, 0, 0, [random 3, random 3, true]];
    };
};

// add handler
if (local player) then {
    wcweatherstart = true;
    "wcweather" addpublicVariableEventHandler {
        // first JIP synchronization
        if (wcweatherstart) then {
            wcweatherstart = false;
            skiptime -24;
            86400 setRain (wcweather select 0);
            86400 setFog (wcweather select 1);
            86400 setovercast (wcweather select 2);
            skiptime 24;
            simulWeatherSync;
            setwind (wcweather select 3);
        } else {
            wcweather = _this select 1;
            60 setRain (wcweather select 0);
            60 setFog (wcweather select 1);
            60 setovercast (wcweather select 2);
            setwind (wcweather select 3);
        };
    };
};

// SERVER side SCRIPT
if (!isServer) exitwith {};

// apply weather
skiptime -24;
86400 setRain (wcweather select 0);
86400 setFog (wcweather select 1);
86400 setovercast (wcweather select 2);
skiptime 24;
simulWeatherSync;
setwind (wcweather select 3);

// sync server & client weather & time
[_timesync] spawn {
    private _timesync = _this select 0;
    while {true} do {
        publicVariable "wcweather";
        sleep _timesync;
    };
};

_lastrain = 0;
_rain = 0;
_overcast = 0;

while {true} do {
    _overcast = random 1;
    if ((overcast > 0.7) and (_overcast > overcast)) then {
        _rain = random 1;
    } else {
        _rain = 0;
    };
    if ((_lastrain > 0.6) and (_rain < 0.2)) then {
        _fog = random 0.3;
    } else {
        _fog = 0;
    };
    if (random 1 > 0.95) then {
        _wind = [random 7, random 7, true];
    } else {
        _wind = [random 3, random 3, true];
    };
    _lastrain = _rain;
    
    wcweather = [_rain, _fog, _overcast, _wind];
    60 setRain (wcweather select 0);
    60 setFog (wcweather select 1);
    60 setovercast (wcweather select 2);
    setwind (wcweather select 3);

    _timeforecast = _mintime + (random (_maxtime - _mintime));
    sleep _timeforecast;
};
