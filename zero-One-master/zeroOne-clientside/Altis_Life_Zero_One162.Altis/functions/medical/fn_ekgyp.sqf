private['_WOw','_kMp'];if(aztN) exitWith {titleText["Die Feuerwehr wurde bereits benachrichtigt","PLAIN"]};_WOw = {_x != player && {(side _x) isEqualTo independent} && {alive _x}} count playableUnits > 0;if(_WOw) then { [NZlNllHN,profileName,0] remoteExecCall ["zero_fnc_myDuZqtqd",independent];};_kMp = player getVariable ["NZlNllHN", nil];if (!isNil "_kMp" && !isNull _kMp) then { _kMp setVariable ["bzMwwXmww", true, true];};aztN = true;DLPsxjoQm = DLPsxjoQm + (60 * 5);[] spawn {((findDisplay 7300) displayCtrl 7303) ctrlEnable false;};