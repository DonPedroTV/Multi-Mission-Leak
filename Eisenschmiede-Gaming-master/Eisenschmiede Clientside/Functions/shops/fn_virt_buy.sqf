#include "..\script_macros.hpp"
/*
	File: fn_virt_buy.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buy a virtual item from the store.
*/
private["_type","_price","_amount","_diff","_name","_hideout"];

if(!DarfKaufen) exitWith {hint localize "STR_NOTF_Buy_Virt_Stop";};
if(DarfKaufen) then {
	DarfKaufen = false;
	[] spawn {
		sleep 1;
		DarfKaufen = true;
	};
};

if((lbCurSel 2401) == -1) exitWith {hint localize "STR_Shop_Virt_Nothing"};
_type = lbData[2401,(lbCurSel 2401)];
_price = lbValue[2401,(lbCurSel 2401)];
_amount = ctrlText 2404;
if(!([_amount] call ES_fnc_isnumber)) exitWith {hint localize "STR_Shop_Virt_NoNum";};
_diff = [_type,parseNumber(_amount),ES_carryWeight,ES_maxWeight] call ES_fnc_calWeightDiff;
_amount = parseNumber(_amount);
if(_amount >= 11) exitWith {hint "Du kanst nicht mehr als 10 Items auf einmal kaufen!";};
if(_diff <= 0) exitWith {hint localize "STR_NOTF_NoSpace"};
_amount = _diff;
_hideout = (nearestObjects[getPosATL player,["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F"],25]) select 0;
if((_price * _amount) > ES_cash && {!isNil "_hideout" && {!isNil {group player getVariable "gang_bank"}} && {(group player getVariable "gang_bank") <= _price * _amount}}) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
if((time - ES_action_delay) < 0.5) exitWith {hint localize "STR_NOTF_ActionDelay";};
ES_action_delay = time;

_name = M_CONFIG(getText,"VirtualItems",_type,"displayName");

if(([true,_type,_amount] call ES_fnc_handleInv)) then
{
	if(!isNil "_hideout" && {!isNil {group player getVariable "gang_bank"}} && {(group player getVariable "gang_bank") >= _price}) then {
		_action = [
			format[(localize "STR_Shop_Virt_Gang_FundsMSG")+ "<br/><br/>" +(localize "STR_Shop_Virt_Gang_Funds")+ " <t color='#8cff9b'>$%1</t><br/>" +(localize "STR_Shop_Virt_YourFunds")+ " <t color='#8cff9b'>$%2</t>",
				[(group player getVariable "gang_bank")] call ES_fnc_numberText,
				[ES_cash] call ES_fnc_numberText
			],
			localize "STR_Shop_Virt_YourorGang",
			localize "STR_Shop_Virt_UI_GangFunds",
			localize "STR_Shop_Virt_UI_YourCash"
		] call BIS_fnc_guiMessage;
		if(_action) then {
			hint format[localize "STR_Shop_Virt_BoughtGang",_amount,(localize _name),[(_price * _amount)] call ES_fnc_numberText];
			_funds = group player getVariable "gang_bank";
			_funds = _funds - (_price * _amount);
			group player setVariable["gang_bank",_funds,true];
			[1,group player] remoteExec ["ES_fnc_updateGang",2];
			["VirtualItemkaufenGangGeld"] call ES_fnc_xp_add;
			[["VIRTUALSHOP_LOG",[""], player getVariable["realname",name player], getPlayerUID player, (localize _name), _amount, [(_price * _amount)] call ES_fnc_numberText],"ES_fnc_logXP",false,false] call ES_fnc_MP;
		} else {
			if((_price * _amount) > ES_cash) exitWith {[false,_type,_amount] call ES_fnc_handleInv; hint localize "STR_NOTF_NotEnoughMoney";};
			hint format[localize "STR_Shop_Virt_BoughtItem",_amount,(localize _name),[(_price * _amount)] call ES_fnc_numberText];
			ES_cash = ES_cash - (_price * _amount);
			["VirtualItemkaufen"] call ES_fnc_xp_add;
			[["VIRTUALSHOP_LOG",[""], player getVariable["realname",name player], getPlayerUID player, (localize _name), _amount, [(_price * _amount)] call ES_fnc_numberText],"ES_fnc_logXP",false,false] call ES_fnc_MP;
		};
	} else {
		if((_price * _amount) > ES_cash) exitWith {hint localize "STR_NOTF_NotEnoughMoney"; [false,_type,_amount] call ES_fnc_handleInv;};
		hint format[localize "STR_Shop_Virt_BoughtItem",_amount,(localize _name),[(_price * _amount)] call ES_fnc_numberText];
		ES_cash = ES_cash - (_price * _amount);
		["VirtualItemkaufen"] call ES_fnc_xp_add;
		[["VIRTUALSHOP_LOG",[""], player getVariable["realname",name player], getPlayerUID player, (localize _name), _amount, [(_price * _amount)] call ES_fnc_numberText],"ES_fnc_logXP",false,false] call ES_fnc_MP;
	};
	[] call ES_fnc_virt_update;
};

[0] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;