#include "..\..\script_macros.hpp"
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Prompts the player about an invite.
*/
private ["_action","_grpMembers"];
params [
	["_name","",[""]],
	["_group",grpNull,[grpNull]]
];

if(EQUAL(_name,"") OR isNull _group) exitWith {}; //Fail horn anyone?
if(!isNil {(group player) GVAR "gang_name"}) exitWith {hint "You are already in a gang"};

_gangName = _group GVAR "gang_name";
_action = [
	format[localize "STR_GNOTF_InviteMSG",_name,_gangName],
	localize "STR_Gang_Invitation",
	localize "STR_Global_Yes",
	localize "STR_Global_No"
] call BIS_fnc_guiMessage;

if(_action) then {
	[player] join _group;
	if (life_HC_isActive) then {
		[4,_group] remoteExec ["HC_fnc_updateGang",HC_Life];
	} else {
		[4,_group] remoteExec ["TON_fnc_updateGang",RSERV];
	};
} else {
	_grpMembers = grpPlayer GVAR "gang_members";
	SUB(_grpMembers,[steamid]);
	grpPlayer SVAR ["gang_members",_grpMembers,true];
	if (life_HC_isActive) then {
		[4,_grpMembers] remoteExec ["HC_fnc_updateGang",HC_Life];
	} else {
		[4,_grpMembers] remoteExec ["TON_fnc_updateGang",RSERV];
	};
};