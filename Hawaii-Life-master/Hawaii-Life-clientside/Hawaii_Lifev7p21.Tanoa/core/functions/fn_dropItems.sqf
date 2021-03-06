#include "..\..\script_macros.hpp"
/*
	File: fn_dropItems.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called on death, player drops any 'virtual' items they may be carrying.
*/
private["_obj","_unit","_item","_value"];
_unit = SEL(_this,0);

{
	if(typeName _x isEqualTo typeName "") then {_item = _x;} else {_item = configName _x};
	_value = ITEM_VALUE(_item);
	_itemName = ITEM_VARNAME(_item);
	
	switch(_item) do {		
		case "life_cash": {
			if(CASH > 0) then {
				_pos = _unit modelToWorld[0,3,0];
				_pos = [SEL(_pos,0), SEL(_pos,1), 0];
				_obj = "Land_Money_F" createVehicle _pos;
				_obj SVAR ["item",["money",GVAR_MNS [_item,0]],true];
				_obj setPos _pos;
				if (life_HC_isActive) then {
					[player, player, CASH, 2, BANK, CASH] remoteExecCall ["HC_fnc_handleDBLog",HC_Life];
				} else {
					[player, player, CASH, 2, BANK, CASH] remoteExecCall ["TON_fnc_handleDBLog",RSERV];
				};
				[_obj] remoteExecCall ["life_fnc_simDisable",RANY];
				SVAR_MNS ["life_cash",0];
			};
		};
		
		default {
			if(_value > 0) then {
				/*
				_pos = _unit modelToWorld[0,3,0];
				_pos = [SEL(_pos,0), SEL(_pos,1), 0];
				_obj = "Land_Suitcase_F" createVehicle _pos;
				[_obj] remoteExecCall ["life_fnc_simDisable",RANY];
				_obj setPos _pos;
				_obj SVAR ["item",[_item,_value],true];
				*/
				SVAR_MNS [_itemName,0];
			};
		};
	};
} foreach (("true" configClasses (missionConfigFile >> "VirtualItems")) + ["life_cash"]);