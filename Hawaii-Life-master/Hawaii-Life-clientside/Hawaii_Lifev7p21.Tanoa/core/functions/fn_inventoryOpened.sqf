#include "..\..\script_macros.hpp"
/*
	Author: Bryan "Tonic" Boardwine

	Description:
	For the mean time it blocks the player from opening another persons backpack
*/
private["_container","_unit","_list"];
if(EQUAL(count _this,1)) exitWith {false};
_unit = SEL(_this,0);
_container = SEL(_this,1);

_isPack = FETCH_CONFIG2(getNumber,CONFIG_VEHICLES,typeOf _container,"isBackpack");
if(EQUAL(_isPack,1)) exitWith {
	hint localize "STR_MISC_Backpack";
	true;
};

if((typeOf _container) in ["Box_IND_Grenades_F","B_supplyCrate_F"]) exitWith {
    _house = nearestBuilding (getPosATL player);
    if(!(_house in life_vehicles)) then {
    	if (_house GVAR ["locked",true]) then {
    		hint localize "STR_House_ContainerDeny";
    		true;
		} else {
			player setVariable ["invOpened",true,true];
		};
    } else {
		player setVariable ["invOpened",true,true];
	};
};

_list = ["LandVehicle","Ship","Air"];
if(KINDOF_ARRAY(_container,_list)) exitWith {
	if(!(_container in life_vehicles)) then {
		if ((locked _container) isEqualTo 2) then {
			hint localize "STR_MISC_VehInventory";
			true;
		} else {
			player setVariable ["invOpened",true,true];
		};
	} else {
		player setVariable ["invOpened",true,true];
	};
};

player setVariable ["invOpened",true,true];