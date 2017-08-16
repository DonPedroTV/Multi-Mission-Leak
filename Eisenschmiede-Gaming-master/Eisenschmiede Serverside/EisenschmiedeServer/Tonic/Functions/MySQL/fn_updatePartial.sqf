/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes partial data of a player and updates it, this is meant to be
	less network intensive towards data flowing through it for updates.
*/
private["_uid","_side","_value","_mode","_query"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_side = [_this,1,sideUnknown,[civilian]] call BIS_fnc_param;
_mode = [_this,3,-1,[0]] call BIS_fnc_param;

if(_uid == "" OR _side == sideUnknown) exitWith {}; //Bad.
_query = "";

switch(_mode) do {
	case 0: {
		_value = [_this,2,0,[0]] call BIS_fnc_param;
		_value = [_value] call ES_fnc_numberSafe;
		_query = format["UPDATE players SET cash='%1' WHERE playerid='%2'",_value,_uid];
	};
	
	case 1: {
		_value = [_this,2,0,[0]] call BIS_fnc_param;
		_value = [_value] call ES_fnc_numberSafe;
		_query = format["UPDATE players SET bankacc='%1' WHERE playerid='%2'",_value,_uid];
	};
	
	case 2: {
		_value = [_this,2,[],[[]]] call BIS_fnc_param;
		//Does something license related but I can't remember I only know it's important?
		for "_i" from 0 to count(_value)-1 do {
			_bool = [(_value select _i) select 1] call ES_fnc_bool;
			_value set[_i,[(_value select _i) select 0,_bool]];
		};
		_value = [_value] call ES_fnc_mresArray;
		switch(_side) do {
			case west: {_query = format["UPDATE players SET cop_licenses='%1' WHERE playerid='%2'",_value,_uid];};
			case civilian: {_query = format["UPDATE players SET civ_licenses='%1' WHERE playerid='%2'",_value,_uid];};
			case independent: {_query = format["UPDATE players SET med_licenses='%1' WHERE playerid='%2'",_value,_uid];};
		};
	};
	
	case 3: {
		_value = [_this,2,[],[[]]] call BIS_fnc_param;
		_value = [_value] call ES_fnc_mresArray;
		switch(_side) do {
			case west: {_query = format["UPDATE players SET cop_gear='%1' WHERE playerid='%2'",_value,_uid];};
			case civilian: {_query = format["UPDATE players SET civ_gear='%1' WHERE playerid='%2'",_value,_uid];};
			case independent: {_query = format["UPDATE players SET med_gear='%1' WHERE playerid='%2'",_value,_uid];};
		};
	};
	
	case 4: {
		_value = [_this,2,false,[true]] call BIS_fnc_param;
		_value = [_value] call ES_fnc_bool;
		_query = format["UPDATE players SET alive='%1' WHERE playerid='%2'",_value,_uid];
	};
	
	case 5: {
		_value = [_this,2,false,[true]] call BIS_fnc_param;
		_value = [_value] call ES_fnc_bool;
		_query = format["UPDATE players SET arrested='%1' WHERE playerid='%2'",_value,_uid];
	};
	
	case 6: {
		_value1 = [_this,2,0,[0]] call BIS_fnc_param;
		_value2 = [_this,4,0,[0]] call BIS_fnc_param;
		_value1 = [_value1] call ES_fnc_numberSafe;
		_value2 = [_value2] call ES_fnc_numberSafe;
		_query = format["UPDATE players SET cash='%1', bankacc='%2' WHERE playerid='%3'",_value1,_value2,_uid];
	};
	
	case 7: {
		_array = [_this,2,[],[[]]] call BIS_fnc_param;
		[_uid,_side,_array,0] call ES_fnc_keyManagement;
	};
};

if(_query == "") exitWith {};

[_query,1] call ES_fnc_asyncCall;
