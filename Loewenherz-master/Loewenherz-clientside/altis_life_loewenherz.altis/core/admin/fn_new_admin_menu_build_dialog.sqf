
private ["_display","_lb_AllPlayers","_lb_switch","_lb_Mode","_lb_gespeicherte_skripts","_bckgrnd_left","_bckgrnd_right","_strText_allPlayers","_strText_chosen_mode_header","_strText_Mode_menu","_strText_saved_skripts","_strText_INFO","_strText_header_konsole","_strText_Insignia","_BTN_refresh_players","_BTN_local_exec","_BTN_Server_exec","_BTN_remote_exec","_BTN_clear_console","_BTN_save_skript","_search_for_player","_Code_input","_dev_mode","_code","_count","_west","_independent","_east","_civilian","_weapon","_foreachindex","_skripts_config","_result","_foreachIndex","_cfgweapons","_classnames","_rifles","_others","_wCName","_wDName","_wModel","_wType","_wscope","_wPic","_wDesc","_cfgvehicles","_cars","_air","_boats","_vehicle","_class","_scope","_picture","_displayName","_vehicleClass","_side","_faction","_superClass","_tempArray","_var"];
disableSerialization;


if((call lhm_adminlevel) isEqualTo 0) exitWith {hint "Kein Admin!";};

closeDialog 0;
createDialog "BA_admin_menu_extended";
waitUntil {!isnull (findDisplay 9858);};
showchat false;
_display = findDisplay 9858;
//Listboxes
_lb_AllPlayers = _display displayCtrl 1500;
_lb_switch = _display displayCtrl 1501;
_lb_Mode = _display displayCtrl 1502;
_lb_gespeicherte_skripts = _display displayCtrl 1503;
// Backgrounds
_bckgrnd_left = _display displayCtrl 1000;
_bckgrnd_right = _display displayCtrl 1001;
//Structured Texts
_strText_allPlayers = _display displayCtrl 1100;
_strText_chosen_mode_header = _display displayCtrl 1101;
_strText_Mode_menu = _display displayCtrl 1102;
_strText_saved_skripts = _display displayCtrl 1103;
_strText_INFO = _display displayCtrl 1104;
_strText_header_konsole = _display displayCtrl 1105;
_strText_Insignia = _display displayctrl 1106;
// Buttons
_BTN_refresh_players = _display displayCtrl 2400;
_BTN_local_exec = _display displayCtrl 2401;
_BTN_Server_exec = _display displayCtrl 2402;
_BTN_remote_exec = _display displayCtrl 2403;
_BTN_clear_console = _display displayCtrl 2404;
_BTN_save_skript = _display displayctrl 2405;
// Edit Fields
_search_for_player = _display displayCtrl 1400;
_Code_input = _display displayCtrl 1401;

_dev_mode = profileNamespace getVariable["DEV_Mode",false];
_code = profileNamespace getvariable["Custom_Code",""];

if(isnil "LHM_selected") then {
	LHM_selected = 	[1,0,0,0,0];
};

lbClear _lb_AllPlayers;
lbClear _lb_switch;
lbClear _lb_Mode;
lbClear _lb_gespeicherte_skripts;

_strText_Insignia ctrlSetStructuredText parseText "<t align='right'>developed for Loewenherz by Barney</t>";
_strText_allPlayers ctrlSetStructuredText parseText "<t align='center'>Alle Spieler:</t>";
_strText_chosen_mode_header ctrlSetStructuredText parseText "<t align='center'>Skripts:</t>";
_strText_Mode_menu ctrlSetStructuredText parseText "<t align='center'>Modus:</t>";
_strText_saved_skripts ctrlSetStructuredText parseText "<t align='center'>Gespeicherte Skripts:</t>";
_strText_INFO ctrlSetStructuredText parseText format["<t size='2.0' color='#FF0000' align='center'>SERVER INFO:</t> <br/> <t align='left'>COPS</t><t align='right'>%1</t> <br/> <t align='left'>Medics</t> <t align='right'>%2</t> <br/> <t align='left'>SECS</t> <t align='right'>%3</t> <br/> <t align='left'>CIVS</t> <t align='right'>%4</t> <br/> <t align='left'>ALLE:</t><t align='right'>%5</t> <br/> <t align='left'>Admin-LVL:</t><t align='right'>%6</t>",playersNumber west,playersNumber independent,playersNumber east,playersNumber civilian,count(playableUnits),(call lhm_adminlevel)];



if(!_dev_mode) then {
	_BTN_local_exec ctrlshow false;
	_BTN_Server_exec ctrlshow false;
	_BTN_remote_exec ctrlshow false;
	_BTN_clear_console ctrlshow false;
	_Code_input ctrlshow false;
	_BTN_save_skript ctrlshow false;
	_strText_header_konsole ctrlshow false;
	_bckgrnd_right ctrlshow false;

	LHM_selected set[3,0];
} else {
	_Code_input ctrlSetText _code;
	_strText_header_konsole ctrlSetStructuredText parseText "<t align='center'>Konsole:</t>";
	_BTN_Server_exec ctrlenable false;
	_BTN_remote_exec ctrlEnable false;
	LHM_selected set[3,1];
};


_count = 0;

_west = [];
_independent = [];
_east = [];
_civilian = [];





{
	switch(side _x) do {
	case west: { _west pushback _x;};
	case independent: {_independent pushback _x;};
	case east: {_east pushback _x;};
	default {_civilian pushback _x;};

	};

} foreach playableUnits;


_lb_AllPlayers lbadd "--== WEST ==--";
_lb_AllPlayers lbsetdata[_count,""];
_lb_AllPlayers lbSetColor[_count,[0.506,0.506,0.969,1]];
_count = _count + 1;
{
	if(!alive _x) then {
		_lb_AllPlayers lbadd format["%1 - dead",name _x];
	} else {
		_lb_AllPlayers lbadd format["%1",name _x];
	};

	if(vehicle _x == _x) then {
		_weapon = primaryWeapon _x;

		if(_weapon != "")  then {
			_lb_AllPlayers lbSetPicture[_count,getText(configFile >> "CfgWeapons" >> _weapon >> "picture")];
		};
	} else {

		_lb_AllPlayers lbSetPicture[_count,getText(configFile >> "CfgVehicles" >> (typeof (vehicle _x)) >> "picture")];

	};

	_lb_AllPlayers lbsetdata[_count,(name _x)];
	_lb_AllPlayers lbSetColor[_count,[0.506,0.506,0.969,1]];
	_count = _count + 1;


} foreach _west;


_lb_AllPlayers lbadd "--== INDEPENDENT ==--";
_lb_AllPlayers lbsetdata[_count,""];
_lb_AllPlayers lbSetColor[_count,[0.004,0.875,0.004,1]];
_count = _count + 1;
{
	if(!alive _x) then {
		_lb_AllPlayers lbadd format["%1 - dead",name _x];
	} else {
		_lb_AllPlayers lbadd format["%1",name _x];
	};

	if(vehicle _x == _x) then {
		_weapon = primaryWeapon _x;

		if(_weapon != "")  then {
			_lb_AllPlayers lbSetPicture[_count,getText(configFile >> "CfgWeapons" >> _weapon >> "picture")];
		};
	} else {

		_lb_AllPlayers lbSetPicture[_count,getText(configFile >> "CfgVehicles" >> (typeof (vehicle _x)) >> "picture")];

	};

	_lb_AllPlayers lbsetdata[_count,(name _x)];
	_lb_AllPlayers lbSetColor[_count,[0.004,0.875,0.004,1]];
	_count = _count + 1;


} foreach _independent;


_lb_AllPlayers lbadd "--== OPFOR ==--";
_lb_AllPlayers lbsetdata[_count,""];
_lb_AllPlayers lbSetColor[_count,[1,0,0,1]];
_count = _count + 1;
{
	if(!alive _x) then {
		_lb_AllPlayers lbadd format["%1 - dead",name _x];
	} else {
		_lb_AllPlayers lbadd format["%1",name _x];
	};

	if(vehicle _x == _x) then {
		_weapon = primaryWeapon _x;

		if(_weapon != "")  then {
			_lb_AllPlayers lbSetPicture[_count,getText(configFile >> "CfgWeapons" >> _weapon >> "picture")];
		};
	} else {

		_lb_AllPlayers lbSetPicture[_count,getText(configFile >> "CfgVehicles" >> (typeof (vehicle _x)) >> "picture")];

	};
	_lb_AllPlayers lbsetdata[_count,(name _x)];
	_lb_AllPlayers lbSetColor[_count,[1,0,0,1]];
	_count = _count + 1;


} foreach _east;

_lb_AllPlayers lbadd "--== CIVILIANS ==--";
_lb_AllPlayers lbsetdata[_count,""];
_lb_AllPlayers lbSetColor[_count,[1,0,1,1]];
_count = _count + 1;
{
	if(!alive _x) then {
		_lb_AllPlayers lbadd format["%1 - dead",name _x];
	} else {
		_lb_AllPlayers lbadd format["%1",name _x];
	};

	if(vehicle _x == _x) then {
		_weapon = primaryWeapon _x;

		if(_weapon != "")  then {
			_lb_AllPlayers lbSetPicture[_count,getText(configFile >> "CfgWeapons" >> _weapon >> "picture")];
		};
	} else {

		_lb_AllPlayers lbSetPicture[_count,getText(configFile >> "CfgVehicles" >> (typeof (vehicle _x)) >> "picture")];

	};

	_lb_AllPlayers lbsetdata[_count,(name _x)];
	_lb_AllPlayers lbSetColor[_count,[1,0,1,1]];
	_count = _count + 1;


} foreach _civilian;




_count = 0;


{
	if(_x == 1) then {
		switch(_foreachindex) do {
		case 0: {
				_skripts_config = compile preprocessFileLineNumbers "addons\admin_menu\admin_menu_skripts.sqf";

				_result = [nil,true] call _skripts_config;

				{
					_lb_switch lbadd ((_result select _foreachIndex) select 0);
					_lb_switch lbSetValue[_foreachIndex,_foreachIndex];
					_lb_switch lbSetColor[_foreachIndex,[0.663,0.663,0.961,1]];
				} foreach _result;
				_strText_chosen_mode_header ctrlSetStructuredText parseText "<t align='center'>Skripts:</t>";
		};

		case 1: {
				_cfgweapons = configFile >> "cfgWeapons";
				_classnames = [];
				_rifles = [];
				_others = [];

				for "_i" from 0 to (count _cfgweapons)-1 do {
					_weapon = _cfgweapons select _i;
					if(isclass _weapon) then {
						_wCName = configName(_weapon);
						_wDName = getText(configFile >> "cfgWeapons" >> _wCName >> "displayName");
						_wModel = getText(configFile >> "cfgWeapons" >> _wCName >> "model");
						_wType = getNumber(configFile >> "cfgWeapons" >> _wCName >> "type");
						_wscope = getNumber(configFile >> "cfgWeapons" >> _wCName >> "scope");
						_wPic =  getText(configFile >> "cfgWeapons" >> _wCName >> "picture");
						_wDesc = getText(configFile >> "cfgWeapons" >> _wCName >> "Library" >> "libTextDesc");

						if ((_wCName!="") && (_wDName!="") && (_wModel!="") && (_wPic!="")) then {
							if !(_wCName in _classnames) then {
								_classnames pushback _wCName;
								if(_wCName iskindof ["Rifle", configFile >> "CfgWeapons"]) then {
									_rifles pushback _wCName;
								} else {
									_others pushback _wCName;
								};
							};
						};

					};

				};

				{
					_lb_switch lbadd format["%1",getText(configFile >> "cfgWeapons" >> _x >> "displayName")];
					_lb_switch lbSetPicture[_count,getText(configFile >> "cfgWeapons" >> _x >> "picture")];
					_lb_switch lbSetData[_count,_x];
					_lb_switch lbSetColor[_count,[0.345,0.345,0.98,1]];
					_count = _count + 1;
				} foreach _rifles;

				{
					_lb_switch lbadd format["%1",getText(configFile >> "cfgWeapons" >> _x >> "displayName")];
					_lb_switch lbSetPicture[_count,getText(configFile >> "cfgWeapons" >> _x >> "picture")];
					_lb_switch lbSetData[_count,_x];
					_lb_switch lbSetColor[_count,[0.18,0.996,0.604,1]];
					_count = _count + 1;
				} foreach _others;
				_strText_chosen_mode_header ctrlSetStructuredText parseText "<t align='center'>Items:</t>";

		};


		case 2: {

			_cfgvehicles = configFile >> "cfgVehicles";
			_classnames = [];
			_cars = [];
			_air = [];
			_boats = [];

			for "_i" from 0 to (count _cfgvehicles)-1 do {
				_vehicle = _cfgvehicles select _i;
				if(isclass _vehicle) then {
					_class = configName(_vehicle);
					_scope = getNumber(configFile >> "CfgVehicles" >> _class >> "scope");
					_picture = getText(configFile >> "CfgVehicles" >> _class >> "picture");
					_displayName = getText(configFile >> "CfgVehicles" >> _class >> "displayName");
					_vehicleClass = getText(configFile >> "CfgVehicles" >> _class >> "vehicleClass");
					_side = getNumber(configFile >> "CfgVehicles" >> _class >> "side");
					_faction = getText(configFile >> "CfgVehicles" >> _class >> "faction");
					_superClass = configName(inheritsFrom (configFile >> "CfgVehicles" >> _class));
					if(_class != "" && !(_class in _classnames) && _picture != "") then {
						_classnames pushback _class;
						if(_class iskindof "Landvehicle" && !(_class in _cars)) then {
							_cars pushback _class;
						};
						if(_class isKindOf "Air" && !(_class in _air)) then {
							_air pushback _class;
						};
						if(_class isKindOf "Ship" && !(_class in _boats)) then {
							_boats pushback _class;
						};
					};
				};

			};

				_count = 0;

				{
					_lb_switch lbadd format["%1",getText(configFile >> "CfgVehicles" >> _x >> "displayName")];
					_lb_switch lbSetPicture[_count,getText(configFile >> "CfgVehicles" >> _x >> "picture")];
					_lb_switch lbSetData[_count,_x];
					_lb_switch lbSetColor[_count,[0.18,0.996,0.18,1]];
					_count = _count + 1;
				} foreach _cars;

				{
					_lb_switch lbadd format["%1",getText(configFile >> "CfgVehicles" >> _x >> "displayName")];
					_lb_switch lbSetPicture[_count,getText(configFile >> "CfgVehicles" >> _x >> "picture")];
					_lb_switch lbSetData[_count,_x];
					_lb_switch lbSetColor[_count,[0.996,0.18,0.18,1]];
					_count = _count + 1;
				} foreach _air;

				{
					_lb_switch lbadd format["%1",getText(configFile >> "CfgVehicles" >> _x >> "displayName")];
					_lb_switch lbSetPicture[_count,getText(configFile >> "CfgVehicles" >> _x >> "picture")];
					_lb_switch lbSetData[_count,_x];
					_lb_switch lbSetColor[_count,[0.18,0.392,0.996,1]];
					_count = _count + 1;
				} foreach _boats;
				_strText_chosen_mode_header ctrlSetStructuredText parseText "<t align='center'>Vehicles:</t>";

		};

		case 4: {

			_lb_switch lbadd "Untersuche Spieler (select Player)";
			_lb_switch lbsetdata[0,"Search_Player"];
			_lb_switch lbSetColor[0,[0.18,0.996,0.18,1]];

			_lb_switch lbadd "Untersuche ALLE Spieler";
			_lb_switch lbsetdata[1,"All_Players"];
			_lb_switch lbSetColor[1,[0.18,0.996,0.18,1]];

			_strText_chosen_mode_header ctrlSetStructuredText parseText "<t align='center'>In god we trust all others we track:</t>";


		};


		};
	};

} foreach LHM_selected;
















/*

switch(LHM_selected) do {
case "Skripts": {
		_skripts_config = compile preprocessFileLineNumbers "addons\admin_menu\admin_menu_skripts.sqf";

		_result = [nil,true] call _skripts_config;

		{
			_lb_switch lbadd ((_result select _foreachIndex) select 0);
			_lb_switch lbSetValue[_foreachIndex,_foreachIndex];
			_lb_switch lbSetColor[_foreachIndex,[0.663,0.663,0.961,1]];
		} foreach _result;
		_strText_chosen_mode_header ctrlSetStructuredText parseText "<t align='center'>Skripts:</t>";
};

case "Items": {
		_cfgweapons = configFile >> "cfgWeapons";
		_classnames = [];
		_rifles = [];
		_others = [];

		for "_i" from 0 to (count _cfgweapons)-1 do {
			_weapon = _cfgweapons select _i;
			if(isclass _weapon) then {
				_wCName = configName(_weapon);
				_wDName = getText(configFile >> "cfgWeapons" >> _wCName >> "displayName");
				_wModel = getText(configFile >> "cfgWeapons" >> _wCName >> "model");
				_wType = getNumber(configFile >> "cfgWeapons" >> _wCName >> "type");
				_wscope = getNumber(configFile >> "cfgWeapons" >> _wCName >> "scope");
				_wPic =  getText(configFile >> "cfgWeapons" >> _wCName >> "picture");
				_wDesc = getText(configFile >> "cfgWeapons" >> _wCName >> "Library" >> "libTextDesc");

				if ((_wCName!="") && (_wDName!="") && (_wModel!="") && (_wPic!="")) then {
					if !(_wCName in _classnames) then {
						_classnames pushback _wCName;
						if(_wCName iskindof ["Rifle", configFile >> "CfgWeapons"]) then {
							_rifles pushback _wCName;
						} else {
							_others pushback _wCName;
						};
					};
				};

			};

		};

		{
			_lb_switch lbadd format["%1",getText(configFile >> "cfgWeapons" >> _x >> "displayName")];
			_lb_switch lbSetPicture[_count,getText(configFile >> "cfgWeapons" >> _x >> "picture")];
			_lb_switch lbSetData[_count,_x];
			_lb_switch lbSetColor[_count,[0.345,0.345,0.98,1]];
			_count = _count + 1;
		} foreach _rifles;

		{
			_lb_switch lbadd format["%1",getText(configFile >> "cfgWeapons" >> _x >> "displayName")];
			_lb_switch lbSetPicture[_count,getText(configFile >> "cfgWeapons" >> _x >> "picture")];
			_lb_switch lbSetData[_count,_x];
			_lb_switch lbSetColor[_count,[0.18,0.996,0.604,1]];
			_count = _count + 1;
		} foreach _others;
		_strText_chosen_mode_header ctrlSetStructuredText parseText "<t align='center'>Items:</t>";

};


case "Vehicles": {

	_cfgvehicles = configFile >> "cfgVehicles";
	_classnames = [];
	_cars = [];
	_air = [];
	_boats = [];

	for "_i" from 0 to (count _cfgvehicles)-1 do {
		_vehicle = _cfgvehicles select _i;
		if(isclass _vehicle) then {
			_class = configName(_vehicle);
			_scope = getNumber(configFile >> "CfgVehicles" >> _class >> "scope");
			_picture = getText(configFile >> "CfgVehicles" >> _class >> "picture");
			_displayName = getText(configFile >> "CfgVehicles" >> _class >> "displayName");
			_vehicleClass = getText(configFile >> "CfgVehicles" >> _class >> "vehicleClass");
			_side = getNumber(configFile >> "CfgVehicles" >> _class >> "side");
			_faction = getText(configFile >> "CfgVehicles" >> _class >> "faction");
			_superClass = configName(inheritsFrom (configFile >> "CfgVehicles" >> _class));
			if(_class != "" && !(_class in _classnames)) then {
				_classnames pushback _class;
				if(_class iskindof "Landvehicle" && !(_class in _cars)) then {
					_cars pushback _class;
				};
				if(_class isKindOf "Air" && !(_class in _air)) then {
					_air pushback _class;
				};
				if(_class isKindOf "Ship" && !(_class in _boats)) then {
					_boats pushback _class;
				};
			};
		};

	};

		_count = 0;

		{
			_lb_switch lbadd format["%1",getText(configFile >> "CfgVehicles" >> _x >> "displayName")];
			_lb_switch lbSetPicture[_count,getText(configFile >> "CfgVehicles" >> _x >> "picture")];
			_lb_switch lbSetData[_count,_x];
			_lb_switch lbSetColor[_count,[0.18,0.996,0.18,1]];
			_count = _count + 1;
		} foreach _cars;

		{
			_lb_switch lbadd format["%1",getText(configFile >> "CfgVehicles" >> _x >> "displayName")];
			_lb_switch lbSetPicture[_count,getText(configFile >> "CfgVehicles" >> _x >> "picture")];
			_lb_switch lbSetData[_count,_x];
			_lb_switch lbSetColor[_count,[0.996,0.18,0.18,1]];
			_count = _count + 1;
		} foreach _air;

		{
			_lb_switch lbadd format["%1",getText(configFile >> "CfgVehicles" >> _x >> "displayName")];
			_lb_switch lbSetPicture[_count,getText(configFile >> "CfgVehicles" >> _x >> "picture")];
			_lb_switch lbSetData[_count,_x];
			_lb_switch lbSetColor[_count,[0.18,0.392,0.996,1]];
			_count = _count + 1;
		} foreach _boats;

};


};
*/





{
	_lb_Mode lbadd _x;
	_lb_Mode lbSetData[_foreachIndex,_x];
	if((LHM_selected select _foreachIndex) == 1) then {
		_lb_Mode lbSetColor[_foreachIndex,[0,1,0,1]];
	} else {
		_lb_Mode lbSetColor[_foreachIndex,[1,0,0,1]];
	};


} foreach ["Skripts","Items","Vehicles","DEV-MODE","Anti-HACK"];







_tempArray = [];


{
	_var = nil;
	_var = profileNamespace getvariable format["Saved_skripts_%1",_foreachindex];
	if(isnil "_var") then {
		_lb_gespeicherte_skripts lbadd "Ungenutzt";
		_lb_gespeicherte_skripts lbsetvalue[_foreachindex,_foreachIndex];
		_lb_gespeicherte_skripts lbSetColor[_foreachindex,[1,0,0,1]];
	} else {
		_lb_gespeicherte_skripts lbadd (_var select 0);
		_lb_gespeicherte_skripts lbsetvalue[_foreachindex,_foreachIndex];
		_lb_gespeicherte_skripts lbSetColor[_foreachindex,[0.004,0.875,0.004,1]];
	};


} foreach [1,2,3,4,5,6,7,8,9,10];

waitUntil {isnull (findDisplay 9858);};

showchat true;




