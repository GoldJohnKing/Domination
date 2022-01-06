private _windDirChange 			= (random [300, 1200, 1800]);
private _initialwindDir 		= (random [90, 180, 270]);

sleep 1;
_windDirChange setwindDir _initialwindDir;

while {true} do {
    _windDirChange 			= (random [300, 1200, 1800]);
    private _newwindDir 			= (random [windDir - 135, windDir, windDir + 135]);
    _windDirChange setwindDir _newwindDir;
    sleep (_windDirChange / timeMultiplier);
};
