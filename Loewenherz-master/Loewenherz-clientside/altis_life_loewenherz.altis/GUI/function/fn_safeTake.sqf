#define ctrlSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])
/*
	File: fn_safeTake.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gateway to fn_vehTakeItem.sqf but for safe(s).
*/
private["_ctrl","_num","_safeInfo"];
disableSerialization;

if((lbCurSel 3502) == -1) exitWith {hint localize "STR_Civ_SelectItem";};
_ctrl = ctrlSelData(3502);
_num = ctrlText 3505;
_safeInfo = lhm_safeObj getVariable["safe",0];

//Error checks
if(!([_num] call TON_fnc_isnumber)) exitWith {hint localize "STR_MISC_WrongNumFormat";};
_num = parseNumber(_num);
if(_num < 1) exitWith {hint localize "STR_Cop_VaultUnder1";};
if(_ctrl != "goldbar") exitWith {hint localize "STR_Cop_OnlyGold"};
if(_num > _safeInfo) exitWith {hint format[localize "STR_Civ_IsntEnoughGold",_num];};

//Secondary checks
_num = [_ctrl,_num,lhm_carryWeight,lhm_maxWeight] call lhm_fnc_calWeightDiff;
if(_num == 0) exitWith {hint localize "STR_NOTF_InvFull"};


//Take it
if(!([true,_ctrl,_num] call lhm_fnc_handleInv)) exitWith {hint localize "STR_NOTF_CouldntAdd";};
lhm_safeObj setVariable["safe",_safeInfo - _num,TRUE];
[lhm_safeObj] call lhm_fnc_safeInventory;