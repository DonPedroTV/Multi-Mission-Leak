#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Tells the player that the gang is created and throws him into it.
*/
private["_group"];
life_action_gangInUse = nil;

if(life_beatbankgeld < (__GETC__(life_gangPrice))) exitWith {
	hint format[localize "STR_GNOTF_NotEnoughMoney",[((__GETC__(life_gangPrice))-life_beatbankgeld)] call life_fnc_numberText];
	{(group player) setVariable[_x,nil,true];} foreach ["gang_id","gang_owner","gang_name","gang_members","gang_maxmembers","gang_bank","gang_tag"];
};

__SUB__(life_beatbankgeld,(__GETC__(life_gangPrice)));

hint format[localize "STR_GNOTF_CreateSuccess",(group player) getVariable "gang_name",[(__GETC__(life_gangPrice))] call life_fnc_numberText];
[0,format["Die Gang [%1] ist nun auf der Insel!",(group player) getVariable "gang_name"]] remoteExecCall ["life_fnc_broadcast",0];