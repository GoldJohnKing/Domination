private _activated = true;
private _On = true;
private _allowfog = true;

// to Add?... [object, interval, brightness, newspapers] call BIS_fnc_sandstorm;
private _overcast 				= [0.0001, 0.5, 0.7, 0.8, 1];
private _fogDensity				= [0, 0.25, 0.5, 0.75, 1];
private _fogDecay				= [0.125, 0.25, 0.5, 0.75, 1];
private _fogBase				= [0, 1, 2, 3, 4, 5, 6, 8, 10, 15, 20, 33];

sleep 1;
if (_activated && _On) then {
    private _code = compile preprocessFileLineNumbers "Scripts\randomwindDirection.sqf";
    [] spawn _code;
};
systemChat "random Weather Running";

while {_activated && _On} do {
    if (_allowfog) then {
        private _sunriseSunsettime 		= date call BIS_fnc_sunriseSunsettime;
        if (((daytime > ((_sunriseSunsettime select 0)-1)) && (daytime <= ((_sunriseSunsettime select 0)+2))) or ((daytime > (_sunriseSunsettime select 1)-1) && (daytime <= ((_sunriseSunsettime select 1)+2)))) then {
            // if (((daytime > 5) && (daytime <= 8)) or ((daytime > 16) && (daytime <= 22))) then {
                private _fogChange = (random [600, 1350, 2700]);
                // hint "fog";
                _fogChange setFog [_fogDensity selectRandomWeighted [0, 4, 3, 2, 1], _fogDecay selectRandomWeighted [1, 0, 0, 0, 0], _fogBase selectRandomWeighted [1, 2, 3, 4, 3, 2, 1, 1, 1, 1, 1, 1] ];
                // [fogValue, fogDecay, fogBase]
                sleep (_fogChange / timeMultiplier);
                sleep ((random [600, 900, 1800]) / timeMultiplier);
                _fogChange = (random [600, 1350, 2700]);
                // hint "fog Change";
                _fogChange setFog [_fogDensity selectRandomWeighted [0, 4, 3, 2, 1], _fogDecay selectRandomWeighted [1, 0, 0, 0, 0], _fogBase selectRandomWeighted [1, 2, 3, 4, 3, 2, 1, 1, 1, 1, 1, 1] ];
                // [fogValue, fogDecay, fogBase]
                sleep (_fogChange / timeMultiplier);
                sleep ((random [600, 900, 1800]) / timeMultiplier);
                _fogChange = (random [1200, 2700, 5400]);
                _fogChange setFog [0.001, 0.001, 0];
                sleep (_fogChange / timeMultiplier);
            };
        };
        private _overcastChange = random [3000, 3300, 3600];
        // randomise overcast
        _overcastChangeto = (_overcast selectRandomWeighted [1, 4, 3, 2, 1]);
        (_overcastChange / timeMultiplier) setovercast _overcastChangeto;
        (_overcastChange / timeMultiplier) setgusts _overcastChangeto;
        (_overcastChange / timeMultiplier) setwindStr _overcastChangeto;
        (_overcastChange / timeMultiplier) setwindForce (1 /( _overcastChangeto + 0.01));
        // hint "Weather Change";
        sleep (_overcastChange / timeMultiplier);
    };
    
    systemChat "random Weather not Running";