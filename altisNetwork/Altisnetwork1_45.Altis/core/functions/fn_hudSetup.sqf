#include "..\..\script_macros.hpp"
/*
private["_display","_alpha","_version","_p","_pg"];

disableSerialization;

    _display = findDisplay 46;
    _alpha = _display displayCtrl 1001;
    _version = _display displayCtrl 1000;

2 cutRsc ["playerHUD","PLAIN"];
_version ctrlSetText format["BETA: 0.%1.%2",(productVersion select 2),(productVersion select 3)];

[] call life_fnc_hudUpdate;

[] spawn
{
	private["_dam","_fatigue"];
	while {true} do
	{
		_dam = damage player;
		_fatigue = getFatigue player;
		 waitUntil {((damage player) != _dam) || _fatigue != (getFatigue player)};
		[] call life_fnc_hudUpdate;
	};
};
*/