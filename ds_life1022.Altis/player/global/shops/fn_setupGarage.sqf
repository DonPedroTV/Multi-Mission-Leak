/*
	Darkside Life

	Author: Shawn "Huntah" Macgillivray

	Description:
	Sets up the list in a players garage
*/

private ["_shop","_dialog","_btn1","_action","_rebZone","_exit","_defaultArray","_type","_pid","_side","_unit","_query","_vehicleArray","_index","_tooltip","_className","_colourArray","_colour","_img","_name","_tmp"];

disableSerialization;

_shop = _this select 0;
_dialog = findDisplay 666667;

ctrlShow [777,true];

_btn1 = _dialog displayCtrl 777;
_btn1 ctrlSetStructuredText parseText "<t size='0.9'>Reload Garage</t>";
_btn1 buttonSetAction "[] spawn DS_fnc_reloadGarage;";

_rebZone = false;
_exit = false;
_defaultArray = [];

if(_this select 1)then {
	_type = [_this,2,"",[""]] call BIS_fnc_param;

	if(DS_vehicleGarage isEqualTo [])then {
		_pid = (getPlayerUID player);
		_side = playerSide;
		_unit = player;
		if((_pid isEqualTo "")||(_side isEqualTo sideUnknown)||(_type isEqualTo "")||(isNull _unit))exitWith {
			if(!isNull _unit) then {
				[false,false,false,[]] spawn DS_fnc_setupGarage;
				_exit = true;
			};
		};
		_unit = owner _unit;
		_side = switch(_side)do {
			case west: {"cop"};
			case civilian: {"civ"};
			case independent: {"med"};
			default {""};
		};
		if(_side isEqualTo "") exitWith {
			[false,false,false,[]] spawn DS_fnc_setupGarage;
			_exit = true;
		};
		_query = format ["SELECT id, side, classname, type, pid, alive, active, plate, color, inventory FROM vehicles WHERE pid='%1' AND alive='1' AND active='0' AND side='%2' AND type='%3'",_pid,_side,_type];
		[player,_query,0,false] remoteExec ["HUNT_fnc_returnVehicleList",2];
		_exit = true;
	};
};

if(_exit)exitWith{};

_vehicleArray = [_this,3,[],[[]]] call BIS_fnc_param;
if(DS_vehicleGarage isEqualTo [])then {
	DS_vehicleGarage = _vehicleArray;
};

_list = _dialog displayCtrl 1501;
lbClear _list;

ctrlShow [66653,false];
ctrlShow [778,false];
ctrlShow [777,false];
ctrlShow [66654,false];
ctrlShow [777,true];

if(DS_vehicleGarage isEqualTo [])exitWith {
	_index = _list lbAdd "Your garage is empty";
	_list lbSetData [_index,""];
};

/*
if((player distance reb_1_1_1 < 200)||(player distance reb_1_1_2 < 200)||(player distance reb_1_1 < 200)||(player distance adminSpawn < 200)||(player distance clanBase1 < 200)||(player distance clanBase2 < 200)||(player distance clanBase3 < 200)||(player distance clanBase4 < 200)||(player distance clanBase5 < 200)||(player distance clanBase6 < 200)||&(player distance clanBase7 < 200)||(player distance clanBase8 < 200)||(player distance clanBase9 < 200)||(player distance clanBase10 < 200)||(player distance clanBase11 < 200)||(player distance clanBase12 < 200))then {
	_rebZone = true;
};

_rebVehicles = ["B_Heli_Attack_01_F","O_MRAP_02_F","I_MRAP_03_F","B_Heli_Light_01_armed_F","O_Heli_Light_02_F","B_Heli_Transport_01_camo_F","B_Heli_Transport_03_F","B_G_Offroad_01_armed_F","I_MRAP_03_hmg_F","O_MRAP_02_hmg_F"];
*/

{
	_tooltip = "";
	_defaultArray = (_x select 9);
	if(count (_defaultArray) isEqualTo 5)then {
		_defaultArray pushBack 0;
		_defaultArray pushBack 0;
		_defaultArray pushBack 0;
		_defaultArray pushBack 0;
		_defaultArray pushBack 0;
	};
	if((_defaultArray select 0) isEqualTo 1)then{_tooltip = _tooltip + "| Capacity Upgrade |"};
	if((_defaultArray select 0) isEqualTo 2)then{_tooltip = _tooltip + "| Super Capacity Upgrade |"};
	if((_defaultArray select 1) isEqualTo 1)then{_tooltip = _tooltip + "| Fuel Consumption Upgrade |"};
	if((_defaultArray select 1) isEqualTo 2)then{_tooltip = _tooltip + "| Super Fuel Consumption Upgrade |"};
	if((_defaultArray select 2) isEqualTo 1)then{_tooltip = _tooltip + "| Security Upgrade |"};
	if((_defaultArray select 2) isEqualTo 2)then{_tooltip = _tooltip + "| Super Security Upgrade |"};
	if((_defaultArray select 3) isEqualTo 1)then{_tooltip = _tooltip + "| Thermal Enabled |"};
	if((_defaultArray select 3) isEqualTo 2)then{_tooltip = _tooltip + "| Thermal Enabled | BulletProof Body |"};
	if((_defaultArray select 4) isEqualTo 1)then{_tooltip = _tooltip + "| Insured X1 |"};
	if((_defaultArray select 4) isEqualTo 2)then{_tooltip = _tooltip + "| Insured X2 |"};
	if((_defaultArray select 5) > 0)then{_tooltip = _tooltip + format ["| Airbags X%1 |",((_defaultArray select 5)/2)];};
	if((_defaultArray select 6) > 0)then{_tooltip = _tooltip + "| Extra Ammo |";};
	if((_defaultArray select 7) isEqualTo 1)then{_tooltip = _tooltip + "| Animal Sensor System |";};
	if(_tooltip isEqualTo "")then{_tooltip = "No upgrades on this vehicle"};
	_className = (_x select 2);
	_colourArray = [_className,false,playerside] call DS_fnc_vehicleTextures;
	if(_colourArray isEqualTo [])then {
		_colour = "";
	} else {
		if((_x select 8) > 99)then {
			_colour = "Repainted";
		} else {
			_colour = _colourArray select (_x select 8);
		};
	};
	_img = getText (configFile >> "CfgVehicles" >> _className >> "picture");
	_name = getText (configFile >> "CfgVehicles" >> _className >> "displayName");

	_index = _list lbAdd format ["%1  %2",_colour,_name];
	_list lbSetTooltip [_index,_tooltip];
	_list lbSetPicture [_index,_img];
	_list lbSetColor [_index,[0,1,0,0.5]];
	_tmp = [_x select 2,_x select 8];
	_tmp = str(_tmp);
	_list lbSetData [_index,_tmp];
	_list lbSetValue [_index,_x select 0];
} forEach DS_vehicleGarage;