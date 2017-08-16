/*
	File: fn_putInCar.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Finds the nearest vehicle and loads the target into the vehicle.
*/
private["_unit"];
_unit = param [0,ObjNull,[ObjNull]];
if(isNull _unit OR !isPlayer _unit) exitWith {};

_nearestVehicle = nearestObjects[getPosATL player,["Car","Ship","Submarine","Air"],10] select 0;
if(isNil "_nearestVehicle") exitWith {hint localize "STR_NOTF_VehicleNear"};

detach _unit;
[[_nearestVehicle],"lhm_fnc_moveIn",_unit,false] call lhm_fnc_mp;
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",TRUE,TRUE];