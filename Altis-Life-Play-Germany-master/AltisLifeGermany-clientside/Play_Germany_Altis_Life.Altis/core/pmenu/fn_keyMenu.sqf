#include <macro.h>
/*
	File: fn_keyMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the key menu
	Will be revised.
*/
private["_display","_vehicles","_plist","_near_units","_pic","_name","_text","_color","_index"];
disableSerialization;

waitUntil {!isNull (findDisplay 2700)};
_display = findDisplay 2700;
_vehicles = _display displayCtrl 2701;
lbClear _vehicles;
_plist = _display displayCtrl 2702;
lbClear _plist;
_near_units = [];

{ if((player distance _x < 20) && {(_x in PG_knownPersons)||(side _x == independent)||(_x in (units group player))}) then {_near_units pushBack _x};} foreach playableUnits;

for "_i" from 0 to (count life_vehicles)-1 do {
	_veh = life_vehicles select _i;
	if(!isNull _veh && alive _veh) then {
        _color = SEL(SEL(M_CONFIG(getArray,"CfgVehicles",(typeOf _veh),"textures"),(_veh GVAR "Life_VEH_color")),0);
        if(isNil "_color") then {_color = ""};
        _text = format["(%1)",_color];
        if(_text == "()") then {
            _text = "";
        };

		_name = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
		_pic = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "picture");
		_vehicles lbAdd format["%1 %3 - [Distance: %2m]",_name,round(player distance _veh),_text];
		if(_pic != "pictureStaticObject") then {
			_vehicles lbSetPicture [(lbSize _vehicles)-1,_pic];
		};
		_vehicles lbSetData [(lbSize _vehicles)-1,str(_i)];
	};
};

{
	if(!isNull _x && alive _x && player distance _x < 20 && _x != player) then {
		_plist lbAdd format["%1",_x getVariable["realname",name _x]];
		_plist lbSetData [(lbSize _plist)-1,str(_x)];
	};
} foreach _near_units;

if(((lbSize _vehicles)-1) == -1) then {
	_vehicles lbAdd "Du besitzt keine Fahrzeuge";
	_vehicles lbSetData [(lbSize _vehicles)-1,str(ObjNull)];
};