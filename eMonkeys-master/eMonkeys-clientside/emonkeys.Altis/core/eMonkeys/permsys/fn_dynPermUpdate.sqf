/*

	[STRING result] dynPermUpdate;

*/

private["_result", "_staticpermids","_cleanedplayerperms","_knownpermids"];

_result = [_this, 0, []] call BIS_fnc_param;

//Check if invalid/hacked PERMID are in list and IGNORE them
_staticpermids = [];

{
	_staticpermids set [count _staticpermids, _x select 0];
}
foreach (call EMonkeys_perms);

//Add new ids
EMonkeys_dynperms = [];

{
	if(count _x >= 7) then
	{
		if( ! ( (_x select 0) in _staticpermids)) then
		{
			EMonkeys_dynperms set [count EMonkeys_dynperms, _x];
		};
	};	
}
foreach _result;

systemChat "DYNPERM loaded - OK!";

//List all known perm ids
_knownpermids = [];

{
	_knownpermids set [count _knownpermids, _x select 0];
}
foreach ([] call EMonkeys_fnc_perms);

//Now update player's perms and remove non-existing perms 
_cleanedplayerperms = [];
{
	if( (_x select 0) in _knownpermids) then
	{
		_cleanedplayerperms set [count _cleanedplayerperms, _x];
	}
	else
	{
		systemChat format[">PERM< Die Gruppe %1 existiert nicht mehr! Du warst Rang %2!", _x select 0, _x select 1];
	};
}
foreach (player getVariable "perms");

//Now set player perms to new, cleaned variant
player setVariable ["perms",_cleanedplayerperms,true];

EMonkeys_dynperm_checkout_running = false; //OK