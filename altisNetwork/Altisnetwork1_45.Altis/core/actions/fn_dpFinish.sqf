#include "..\..\script_macros.hpp"
/*
    File: fn_dpFinish.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Finishes the DP Mission and calculates the money earned based
    on distance between A->B
*/
private["_dp","_dis","_price"];
_dp = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
life_delivery_in_progress = false;
life_dp_point = nil;
_dis = round((getPos life_dp_start) distance (getPos _dp));
_price = round(1.7 * _dis);

if ([life_currentExpPerks, "deliveryman"] call mav_ttm_fnc_hasPerk) then {
    _price = _price * 1.15;
};

[format [(localize "STR_NOTF_Earned_1"),[_price] call life_fnc_numberText],false,"fast"] call life_fnc_notification_system; 
life_cur_task setTaskState "Succeeded";
player removeSimpleTask life_cur_task;
CASH = CASH + _price;
["DropPoint"] spawn mav_ttm_fnc_addExp;