private['_uOvO','_sRjs','_OHs','_sXft','_ydas','_mJk','_GGwj','_Mos','_Chp'];_uOvO = (_this select 3) param[0,"",[""]];_sRjs = (_this select 3) param[1,sideUnknown,[civilian,east]];_OHs = (_this select 3) param[2,"",["",[]]];_sXft = (_this select 3) param[3,"",[""]];_ydas = (_this select 3) param[5,false,[true]];_GGwj = false;disableSerialization;if(!((typeName PHIQ) isEqualTo (typeName 0))) then {PHIQ = 0;}; if(!lzazCi) exitWith {hint "Du kannst nur alle 30 Sekunden ein Fahrzeug kaufen!";};if(dialog) exitWith {};if(_uOvO == "") exitWith {};_mJk = getText(missionConfigFile >> "zero_VehicleShops" >> _uOvO >> "license");if((_mJk) != "") then { if(!(call compile _mJk)) exitWith { _GGwj = true; hint localize "STR_Shop_Veh_NotAllowed"; };};if(_sRjs != sideUnknown && (zero_playerSide != _sRjs)) then { if (!(_sRjs isEqualTo civilian && (zero_playerSide isEqualTo east))) exitWith { _GGwj = true; hint localize "STR_Shop_Veh_NotAllowed"; };};if(_GGwj) exitWith {};_Chp = nearestObjects[QRVd,["Car","Ship","Submarine"],20]; if(!(_Chp isEqualTo [])) then { { deleteVehicle _x; } forEach _Chp;};switch (true) do { case ((_uOvO find "car") != -1):{ _Mos = "car"; }; case ((_uOvO find "air") != -1):{ _Mos = "air"; }; case ((_uOvO find "ship") != -1):{ _Mos = "ship"; }; case ((_uOvO find "truck") != -1):{ _Mos = "truck"; }; case ((_uOvO find "kart") != -1):{ _Mos = "kart"; };};setObjectViewDistance [800,150];igKUdfvLH = [_uOvO,_OHs,_sXft,_ydas,_Mos];[] spawn zero_fnc_heqUcYfZE;dpDZpPwSY setObjectTexture[0,"Resources\Textures\Images\Fahrzeugshop.jpg"];dpDZpPwSY setObjectMaterial[0,"Resources\Materials\whiteBlueGlow.rvmat"];ndu setObjectTexture[0,"Resources\Textures\Images\Fahrzeugshop.jpg"];ndu setObjectMaterial[0,"Resources\Materials\whiteBlueGlow.rvmat"];dxeZMUjDj setObjectTexture[0,"Resources\Textures\Images\Fahrzeugshop.jpg"];dxeZMUjDj setObjectMaterial[0,"Resources\Materials\whiteBlueGlow.rvmat"];if(!createDialog "IDozT") exitWith {PntTYvdvD = false;};(findDisplay 2300) displayAddEventHandler ["KeyDown", "if((_this select 1) == 1) then {true};"];[1] spawn zero_fnc_nHyGSwHaC;