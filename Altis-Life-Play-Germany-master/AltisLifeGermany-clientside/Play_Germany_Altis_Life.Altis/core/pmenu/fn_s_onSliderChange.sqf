/*
	File: fn_s_onSliderChange.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called when the slider is changed for any field and updates the view distance for it.
*/
private["_mode","_value"];
_mode = [_this,0,-1,[0]] call BIS_fnc_param;
_value = [_this,1,-1,[0]] call BIS_fnc_param;
if(_mode == -1 OR _value == -1) exitWith {};
disableSerialization;

switch (_mode) do
{
	case 0:
	{
		life_vdFoot = round(_value);
		profileNamespace setVariable["PG_life_vdFoot",life_vdFoot];
		saveProfileNamespace;
		ctrlSetText[2902,format["%1",round(_value)]];
		[] call life_fnc_updateViewDistance;
	};
	
	case 1:
	{
		life_vdCar = round(_value);
		profileNamespace setVariable["PG_life_vdCar",life_vdCar];
		saveProfileNamespace;
		ctrlSetText[2912,format["%1",round(_value)]];
		[] call life_fnc_updateViewDistance;
	};
	
	case 2:
	{
		life_vdAir = round(_value);
		profileNamespace setVariable["PG_life_vdAir",life_vdAir];
		saveProfileNamespace;
		ctrlSetText[2922,format["%1",round(_value)]];
		[] call life_fnc_updateViewDistance;
	};
};