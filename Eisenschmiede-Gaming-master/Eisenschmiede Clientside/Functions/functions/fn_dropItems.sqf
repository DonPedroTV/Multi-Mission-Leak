#include "..\script_macros.hpp"
/*
	File: fn_dropItems.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called on death, player drops any 'virtual' items they may be carrying.
*/
private["_obj","_unit","_item","_value"];
_unit = SEL(_this,0);

{
	if(typeName _x == typeName "") then {_item = _x;} else {_item = configName _x};
	_value = ITEM_VALUE(_item);
	_itemName = ITEM_VARNAME(_item);
	
	switch(_item) do {
		case "waterBottle": {
			if(_value > 0) then {
				_pos = _unit modelToWorld[0,3,0];
				_pos = [SEL(_pos,0), SEL(_pos,1), 0];
				_obj = "Land_BottlePlastic_V1_F" createVehicle _pos;
				//_obj setVariable ["water",_value,true];
				[_obj] remoteExec ["ES_fnc_simDisable",0];
				_obj setPos _pos;
				_obj setVariable ["item",[_item,_value],true];
				missionNamespace setVariable [_itemName,0];
			};
		};
		
		case "tbacon": {
			if(_value > 0) then {
				_pos = _unit modelToWorld[0,3,0];
				_pos = [SEL(_pos,0), SEL(_pos,1), 0];
				_obj = "Land_TacticalBacon_F" createVehicle _pos;
				[_obj] remoteExec ["ES_fnc_simDisable",0];
				_obj setPos _pos;
				_obj setVariable ["item",[_item,_value],true];
				missionNamespace setVariable [_itemName,0];
			};
		};
		
		case "redgull": {
			if(_value > 0) then {
				_pos = _unit modelToWorld[0,3,0];
				_pos = [SEL(_pos,0), SEL(_pos,1), 0];
				_obj = "Land_Can_V3_F" createVehicle _pos;
				[_obj] remoteExec ["ES_fnc_simDisable",0];
				_obj setPos _pos;
				_obj setVariable ["item",[_item,_value],true];
				missionNamespace setVariable [_itemName,0];
			};
		};
		
		case "fuelEmpty": {
			if(_value > 0) then {
				_pos = _unit modelToWorld[0,3,0];
				_pos = [SEL(_pos,0), SEL(_pos,1), 0];
				_obj = "Land_CanisterFuel_F" createVehicle _pos;
				[_obj] remoteExec ["ES_fnc_simDisable",0];
				_obj setPos _pos;
				_obj setVariable ["item",[_item,_value],true];
				missionNamespace setVariable [_itemName,0];
			};
		};
		
		case "fuelFull": {
			if(_value > 0) then {
				_pos = _unit modelToWorld[0,3,0];
				_pos = [SEL(_pos,0), SEL(_pos,1), 0];
				_obj = "Land_CanisterFuel_F" createVehicle _pos;
				[_obj] remoteExec ["ES_fnc_simDisable",0];
				_obj setPos _pos;
				_obj setVariable ["item",[_item,_value],true];
				missionNamespace setVariable [_itemName,0];
			};
		};
		
		case "coffee": {
			if (_value > 0) then {
				_pos = _unit modelToWorld[0,3,0];
				_pos = [SEL(_pos,0), SEL(_pos,1), 0];
				_obj = "Land_Can_V3_F" createVehicle _pos;
				[_obj] remoteExec ["ES_fnc_simDisable",0];
				_obj setPos _pos;
				_obj setVariable ["item",[_item,_value],true];
				missionNamespace setVariable [_itemName,0];
			};
		};
		
		case "ES_cash": {
			if(ES_cash > 0) then {
				_pos = _unit modelToWorld[0,3,0];
				_pos = [SEL(_pos,0), SEL(_pos,1), 0];
				_obj = "Land_Money_F" createVehicle _pos;
				_obj setVariable ["item",["money",missionNamespace getVariable [_item,0]],true];
				_obj setPos _pos;
				[_obj] remoteExec ["ES_fnc_simDisable",0];
				missionNamespace setVariable ["ES_cash",0];
			};
		};
		
		default {
			if(_value > 0) then {
				_pos = _unit modelToWorld[0,3,0];
				_pos = [SEL(_pos,0), SEL(_pos,1), 0];
				_obj = "Land_Suitcase_F" createVehicle _pos;
				[_obj] remoteExec ["ES_fnc_simDisable",0];
				_obj setPos _pos;
				_obj setVariable ["item",[_item,_value],true];
				missionNamespace setVariable [_itemName,0];
			};
		};
	};
} foreach (("true" configClasses (missionConfigFile >> "VirtualItems")) + ["ES_cash"]);