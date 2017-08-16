#include "..\..\script_macros.hpp"
/*
	File: fn_respawned.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Sets the player up if he/she used the respawn option.
*/
private["_handle","_val","_itemName"];
//Reset our weight and other stuff

life_use_atm = true;
life_hunger = 100;
life_thirst = 100;
life_carryWeight = 0;
CASH = 0; //Make sure we don't get our cash back.
life_respawned = false;
player playMove "amovpercmstpsnonwnondnon";

life_corpse SVAR ["Revive",nil,TRUE];
life_corpse SVAR ["name",nil,TRUE];
life_corpse SVAR ["Reviving",nil,TRUE];
player SVAR ["Revive",nil,TRUE];
player SVAR ["name",nil,TRUE];
player SVAR ["Reviving",nil,TRUE];

//Load gear for a 'new life'
switch(playerSide) do
{
	case west: {
		_handle = [] spawn life_fnc_copLoadout;
	};
	case civilian: {
		_handle = [] spawn life_fnc_civLoadout;
		life_EXPDeaths = life_EXPDeaths+1;
		[-100] call life_fnc_updateEXP;
	};
	case independent: {
		_handle = [] spawn life_fnc_medicLoadout;
	};
	waitUntil {scriptDone _handle};
};

//Cleanup of weapon containers near the body & hide it.
if(!isNull life_corpse) then {
	private "_containers";
	life_corpse SVAR ["Revive",TRUE,TRUE];
	_containers = nearestObjects[life_corpse,["WeaponHolderSimulated"],5];
	{deleteVehicle _x;} foreach _containers; //Delete the containers.
	deleteVehicle life_corpse;
};

//Destroy our camera...
life_deathCamera cameraEffect ["TERMINATE","BACK"];
camDestroy life_deathCamera;

//Bad boy
if(life_is_arrested) exitWith {
	hint localize "STR_Jail_Suicide";
	life_is_arrested = false;
	[player,true] spawn life_fnc_jail;
	[] call SOCK_fnc_updateRequest;
};

if(!license_civ_einwohner) exitWith {
	player setPos (getMarkerPos "civ_spawn_1");
	player setDir (MarkerDir "civ_spawn_1");
	[] call SOCK_fnc_updateRequest;
};

//Johnny law got me but didn't let the EMS revive me, reward them half the bounty.
if(!isNil "life_copRecieve") then {
	if (life_HC_isActive) then {
		[getplayerUID player,player,life_copRecieve,true] remoteExecCall ["HC_fnc_wantedBounty",HC_Life];
	} else {
		[getplayerUID player,player,life_copRecieve,true] remoteExecCall ["life_fnc_wantedBounty",RSERV];
	};
	life_copRecieve = nil;
};

if(!isNil "life_civGetKill") then {
	[100,1] remoteExecCall ["life_fnc_addKillCiv",life_civGetKill];
	life_civGetKill = nil;
};

//So I guess a fellow gang member, cop or myself killed myself so get me off that Altis Most Wanted
if (life_HC_isActive) then {
	[getPlayerUID player] remoteExecCall ["HC_fnc_wantedRemove",HC_Life];
} else {
	[getPlayerUID player] remoteExecCall ["life_fnc_wantedRemove",RSERV];
};

[] call SOCK_fnc_updateRequest;
