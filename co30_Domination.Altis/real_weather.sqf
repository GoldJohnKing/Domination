/*
Author: code34 nicolas_boiteux@yahoo.fr
Copyright (C) 2013-2015 Nicolas BOITEUX

Real weather for MP GAMES v 1.4

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but withOUT ANY WARRANTY;
without even the implied warranty of
MERCHANTABILITY or FITNESS for A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. if not, see <http:// www.gnu.org/licenses/>.
*/

private ["_lastrain", "_rain", "_fog", "_mintime", "_maxtime", "_overcast", "_realtime", "_random", "_startingdate", "_startingweather", "_timeforecast", "_daytimeratio", "_nighttimeratio", "_timesync", "_wind"];

// Real time vs fast time
// true: Real time is more realistic weather conditions change slowly (ideal for persistent game)
// false: fast time give more different weather conditions (ideal for non persistent game)
_realtime = false;

// random time before new forecast
// true: forecast happens bewteen mintime and maxtime
// false: forecast happens at mintime
_random = true;

// min time seconds (real time) before a new weather forecast
_mintime = 300;

// max time seconds (real time) before a new weather forecast
_maxtime = 900;

// if Fastime is on
// Ratio 1 real time second for x game time seconds
// default: 1 real second = 6 second in game
_daytimeratio = 3;
_nighttimeratio = 3;

// send sync data across the network each xxx seconds
// 60 real seconds by default is a good value
// shortest time do not improve weather sync
_timesync = 90;

// Mission starting date is 25/09/2013 at 12:00
_startingdate = [2035, 06, 06, 12, 00];

// Mission starting weather "CLEAR|CLOUDY|rain";
_startingweather = selectRandom ["CLEAR", "CLOUDY", "rain"];

// do not edit below
if (_mintime > _maxtime) exitwith {
    hint format["Real weather: max time: %1 can no be higher than min time: %2", _maxtime, _mintime];
};
_timeforecast = _mintime;

if!(isnil "_startingdate") then {
    setDate _startingdate
};

switch(toUpper(_startingweather)) do {
    case "CLEAR": {
        wcweather = [0, 0, 0, [random 3, random 3, true], date];
    };
    
    case "CLOUDY": {
        wcweather = [0, 0, 0.6, [random 3, random 3, true], date];
    };
    
    case "rain": {
        wcweather = [1, 0, 1, [random 3, random 3, true], date];
    };
    
    default {
        // clear
        wcweather = [0, 0, 0, [random 3, random 3, true], date];
        diag_log "Real weather: wrong starting weather";
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
            setDate (wcweather select 4);
        } else {
            wcweather = _this select 1;
            60 setRain (wcweather select 0);
            60 setFog (wcweather select 1);
            60 setovercast (wcweather select 2);
            setwind (wcweather select 3);
            setDate (wcweather select 4);
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
setDate (wcweather select 4);

// sync server & client weather & time
[_realtime, _timesync, _daytimeratio, _nighttimeratio] spawn {
    private["_realtime", "_timesync", "_daytimeratio", "_nighttimeratio"];
    
    _realtime = _this select 0;
    _timesync = _this select 1;
    _daytimeratio = _this select 2;
    _nighttimeratio = _this select 3;
    
    while {true} do {
        wcweather set [4, date];
        publicVariable "wcweather";
        if (!_realtime) then {
            if ((date select 3 > 16) or (date select 3 <6)) then {
                settimeMultiplier _nighttimeratio;
            } else {
                settimeMultiplier _daytimeratio;
            };
        };
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
    if ((date select 3 > 2) and (date select 3 <6)) then {
        if (random 1 > 0.75) then {
            _fog = 0.4 + (random 0.6);
        } else {
            _fog = 0.1 + (random 0.3);
        };
    } else {
        if ((_lastrain > 0.6) and (_rain < 0.2)) then {
            _fog = random 0.3;
        } else {
            _fog = 0;
        };
    };
    if (random 1 > 0.95) then {
        _wind = [random 7, random 7, true];
    } else {
        _wind = [random 3, random 3, true];
    };
    _lastrain = _rain;
    
    wcweather = [_rain, _fog, _overcast, _wind, date];
    60 setRain (wcweather select 0);
    60 setFog (wcweather select 1);
    60 setovercast (wcweather select 2);
    setwind (wcweather select 3);
    if (_random) then {
        _timeforecast = _mintime + (random (_maxtime - _mintime));
    };
    sleep _timeforecast;
};
