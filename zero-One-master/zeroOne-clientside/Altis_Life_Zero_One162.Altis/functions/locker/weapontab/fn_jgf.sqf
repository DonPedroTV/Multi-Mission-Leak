private ['_TZC','_Mos','_egx','_fAxE','_PdK','_Zhv','_jHyt','_VKdz','_Vnl','_JoCZ','_dSJ','_MKrt','_Thv','_KUyg'];disableSerialization;_TZC = param[0,[],[[]]];_Mos = param[1,"",[""]];_egx = (_TZC param[0,controlNull,[controlNull]]);_fAxE = (_TZC param[3,0,[0]]);_PdK = (_TZC param[4,[],[[]]]);_PdK = _PdK select 0;_Zhv = toLower(_PdK select 2);if(_Zhv isEqualTo "") exitWith {};_jHyt = toLower(_egx lbData 0);_VKdz = switch (_Mos) do { case "silencer": {101}; case "optic": {201}; case "pointer": {301}; case "bipod": {302}; default {-1};};if(ctrlIDC _egx isEqualTo _fAxE) exitWith {};if((getNumber(configfile >> "CfgWeapons" >> _Zhv >> "ItemInfo" >> "type")) != _VKdz || _fAxE != 1600) exitWith {hint "Das passt hier nicht"};if(_fAxE isEqualTo 1600) then {  _Vnl = toLower(((findDisplay 1000) displayCtrl 1601) lbData 0); _Vnl = configName(inheritsFrom (configfile >> "CfgWeapons" >> _Vnl)); if(isClass (configFile >> "CfgWeapons" >> _Vnl >> "WeaponSlotsInfo")) then { _JoCZ = getArray(configFile >> "CfgWeapons" >> _Vnl >> "WeaponSlotsInfo" >> "PointerSlot" >> "compatibleItems"); _dSJ = getArray(configFile >> "CfgWeapons" >> _Vnl >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems"); _MKrt = getArray(configFile >> "CfgWeapons" >> _Vnl >> "WeaponSlotsInfo" >> "MuzzleSlot" >> "compatibleItems"); _Thv = getArray(configFile >> "CfgWeapons" >> _Vnl >> "WeaponSlotsInfo" >> "UnderBarrelSlot" >> "compatibleItems"); _KUyg = []; {_KUyg set [_forEachIndex, toLower(_x)];} forEach (_JoCZ + _dSJ + _MKrt + _Thv); if(!(_Zhv in (_KUyg))) exitWith {hint "Das kannst du nicht an die Waffen anbringen"}; lbClear _egx; _egx lbAdd format [" %1",getText (configFile >> "CfgWeapons" >> _Zhv >> "displayName")]; _egx lbSetTooltip [lbSize(_egx) - 1, getText (configFile >> "CfgWeapons" >> _Zhv >> "displayName")]; _egx lbSetPicture [lbSize(_egx) - 1, getText (configFile >> "CfgWeapons" >> _Zhv >> "picture")]; _egx lbSetValue [lbSize(_egx) - 1, 1]; _egx lbSetData [lbSize(_egx) - 1, _Zhv]; [toLower(_Zhv),-1] call zero_fnc_ludDvGtx; if(!(_jHyt isEqualTo "")) then { [toLower(_jHyt),1] call zero_fnc_ludDvGtx; }; player addPrimaryWeaponItem _Zhv; };}else{ _fAxE = ((findDisplay 1000) displayCtrl _fAxE); lbClear _fAxE; _defaultPic = switch (getNumber(configfile >> "CfgWeapons" >> _Zhv >> "ItemInfo" >> "type")) do { case 101:{"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_muzzle_gs.paa"}; case 201:{"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_top_gs.paa"}; case 301:{"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_side_gs.paa"}; case 302:{"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_bipod_gs.paa"}; default{""}; }; _fAxE lbAdd ""; _fAxE lbSetPicture [lbSize(_fAxE) - 1,_defaultPic]; [toLower(_Zhv),1] call zero_fnc_ludDvGtx; player removePrimaryWeaponItem _Zhv;};[] call zero_fnc_mHYaO;_egx lbSetCurSel -1;