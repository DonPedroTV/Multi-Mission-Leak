private['_Hnqh','_jjz','_vKIv','_IIj','_NpY','_XcW'];disableSerialization;UPzvYHz = getPosATL (_this select 0);_Hnqh = nearestObjects [getPosATL player,["Car","Truck","Air"],25];if(_Hnqh isEqualTo []) exitWith {hint localize "STR_Shop_NoVehNear"};if(!(createDialog "Fsg")) exitWith {hint localize "STR_Shop_ChopShopError"};_jjz = ((findDisplay 39400) displayCtrl 39403);_jjz ctrlSetText localize "STR_vInAct_DestroyVehicle_Title";_jjz = ((findDisplay 39400) displayCtrl 39404);_jjz ctrlSetText localize "STR_vInAct_DestroyVehicle_Button";_vKIv = ((findDisplay 39400) displayCtrl 39402);{ if(alive _x) then { _IIj = typeOf _x; if(_IIj == "B_Truck_01_Repair_F") exitWith {}; _NpY = getText(configFile >> "CfgVehicles" >> _IIj >> "displayName"); _XcW = getText(configFile >> "CfgVehicles" >> _IIj >> "picture"); if((crew _x) isEqualTo []) then { _vKIv lbAdd _NpY; _vKIv lbSetData [(lbSize _vKIv)-1,str(_forEachIndex)]; _vKIv lbSetPicture [(lbSize _vKIv)-1,_XcW]; }; };} foreach _Hnqh;