private ['_qZe','_jnJ','_wVSw','_Edk','_nnz','_CBE','_NsJZ','_BtID','_tpJ','_RzLr','_CxR','_scP','_MMF','_VLjZ','_vQY','_eVt','_cIEE','_wizU','_xpl','_YGhD','_FmDy'];disableSerialization;waitUntil {!isNull (findDisplay 1000)};_qZe = findDisplay 1000;if (isNull _qZe) exitWith {hint str(_qZe)};if(!(_qZe getVariable["ifPcNLl",false])) then { _qZe setVariable["ifPcNLl",true]; [] spawn { waitUntil {isNull (findDisplay 1000)}; [getPlayerUID player, playerSide, CtjFPq] remoteExec ["hc_fnc_updateLocker",HC1_owner]; [3] call zero_fnc_zAYQJ; WHgKT = servertime; };};[] spawn { disableSerialization; _qZe = findDisplay 1000;     (_qZe displayCtrl 1600) ctrlShow false;  (_qZe displayCtrl 1601) ctrlShow false;  (_qZe displayCtrl 1602) ctrlShow false;  (_qZe displayCtrl 1603) ctrlShow false;  (_qZe displayCtrl 1604) ctrlShow false;  (_qZe displayCtrl 1605) ctrlShow false;  (_qZe displayCtrl 1606) ctrlShow false;  (_qZe displayCtrl 1607) ctrlShow false;  (_qZe displayCtrl 1608) ctrlShow false;  (_qZe displayCtrl 1609) ctrlShow false;  (_qZe displayCtrl 1610) ctrlShow false;  (_qZe displayCtrl 1611) ctrlShow false;  (_qZe displayCtrl 1612) ctrlShow false;  (_qZe displayCtrl 1613) ctrlShow false;  (_qZe displayCtrl 1614) ctrlShow false;  (_qZe displayCtrl 1615) ctrlShow false;  (_qZe displayCtrl 1616) ctrlShow false;  (_qZe displayCtrl 1617) ctrlShow false;  (_qZe displayCtrl 1618) ctrlShow false;  (_qZe displayCtrl 1619) ctrlShow false;  (_qZe displayCtrl 1620) ctrlShow false;  (_qZe displayCtrl 1621) ctrlShow false;  (_qZe displayCtrl 1700) ctrlShow false;  (_qZe displayCtrl 1701) ctrlShow false;  (_qZe displayCtrl 1801) ctrlShow true; (_qZe displayCtrl 1802) ctrlShow true; (_qZe displayCtrl 1804) ctrlShow false; (_qZe displayCtrl 1803) ctrlShow false;};_jnJ = (_qZe displayCtrl 1500);_jnJ ctrlShow true;_wVSw = _qZe displayCtrl 1501;_wVSw ctrlShow true;_wVSw ctrlSetTooltip "Kopfbedeckung";_Edk = _qZe displayCtrl 1502;_Edk ctrlShow true;_nnz = _qZe displayCtrl 1503;_nnz ctrlShow true;_nnz ctrlSetTooltip "Brillen";_CBE = _qZe displayCtrl 1504;_CBE ctrlShow true;_NsJZ = _qZe displayCtrl 1505;_NsJZ ctrlShow true;_NsJZ ctrlSetTooltip "Uniform";_BtID = _qZe displayCtrl 1506;_BtID ctrlShow true;_tpJ = _qZe displayCtrl 1507;_tpJ ctrlShow true;_tpJ ctrlSetTooltip "Weste";_RzLr = _qZe displayCtrl 1508;_RzLr ctrlShow true;_CxR = _qZe displayCtrl 1509;_CxR ctrlShow true;_CxR ctrlSetTooltip "Rucksack";_scP = _qZe displayCtrl 1510;_scP ctrlShow true;_MMF = _qZe displayCtrl 1511;_MMF ctrlShow true;_MMF ctrlSetTooltip "Fernglas";lbClear _jnJ;lbClear _wVSw;lbClear _Edk;lbClear _nnz;lbClear _CBE;lbClear _NsJZ;lbClear _BtID;lbClear _tpJ;lbClear _RzLr;lbClear _CxR;lbClear _scP;lbClear _MMF;_VLjZ = getUnitLoadout player;_vQY = _VLjZ select 3;_eVt = _VLjZ select 4;_cIEE = _VLjZ select 5;_wizU = _VLjZ select 6;_xpl = _VLjZ select 7;_YGhD = _VLjZ select 8;if (_wizU != "") then { _wVSw lbAdd format [" %1",getText (configFile >> "CfgWeapons" >> _wizU >> "displayName")]; _wVSw lbSetTooltip [lbSize(_wVSw) - 1, getText (configFile >> "CfgWeapons" >> _wizU >> "displayName")]; _wVSw lbSetPicture [lbSize(_wVSw) - 1, getText (configFile >> "CfgWeapons" >> _wizU >> "picture")]; _wVSw lbSetValue [lbSize(_wVSw) - 1, 1]; _wVSw lbSetData [lbSize(_wVSw) - 1, _wizU];}else{ _wVSw lbAdd ""; _wVSw lbSetPicture [lbSize(_wVSw) - 1, "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_helmet_gs.paa"];};if (_xpl != "") then { _nnz lbAdd format [" %1",getText (configFile >> "CfgGlasses" >> _xpl >> "displayName")]; _nnz lbSetPicture [lbSize(_nnz) - 1, getText (configFile >> "CfgGlasses" >> _xpl >> "picture")]; _nnz lbSetTooltip [lbSize(_nnz) - 1, getText (configFile >> "CfgGlasses" >> _xpl >> "displayName")]; _nnz lbSetValue [lbSize(_nnz) - 1, 1]; _nnz lbSetData [lbSize(_nnz) - 1, _xpl];}else{ _nnz lbAdd ""; _nnz lbSetPicture [lbSize(_nnz) - 1, "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_glasses_gs.paa"];};if ((!(_vQY isEqualTo [])) && {(_vQY select 0) != ""}) then { _NsJZ lbAdd format [" %1",getText (configFile >> "CfgWeapons" >> (_vQY select 0) >> "displayName")]; _NsJZ lbSetPicture [lbSize(_NsJZ) - 1, getText (configFile >> "CfgWeapons" >> (_vQY select 0) >> "picture")]; _NsJZ lbSetTooltip [lbSize(_NsJZ) - 1, getText (configFile >> "CfgWeapons" >> (_vQY select 0) >> "displayName")]; _NsJZ lbSetValue [lbSize(_NsJZ) - 1, 1]; _NsJZ lbSetData [lbSize(_NsJZ) - 1, (_vQY select 0)];}else{ _NsJZ lbAdd ""; _NsJZ lbSetPicture [lbSize(_NsJZ) - 1, "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_uniform_gs.paa"];};if ((!(_eVt isEqualTo [])) && {(_eVt select 0) != ""}) then { _tpJ lbAdd format [" %1",getText (configFile >> "CfgWeapons" >> (_eVt select 0) >> "displayName")]; _tpJ lbSetPicture [lbSize(_tpJ) - 1, getText (configFile >> "CfgWeapons" >> (_eVt select 0) >> "picture")]; _tpJ lbSetTooltip [lbSize(_tpJ) - 1, getText (configFile >> "CfgWeapons" >> (_eVt select 0) >> "displayName")]; _tpJ lbSetValue [lbSize(_tpJ) - 1, 1]; _tpJ lbSetData [lbSize(_tpJ) - 1, (_eVt select 0)];}else{ _tpJ lbAdd ""; _tpJ lbSetPicture [lbSize(_tpJ) - 1, "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_vest_gs.paa"];};if ((!(_cIEE isEqualTo [])) && {(_cIEE select 0) != ""}) then { _CxR lbAdd format [" %1",getText (configFile >> "CfgVehicles" >> (_cIEE select 0) >> "displayName")]; _CxR lbSetPicture [lbSize(_CxR) - 1, getText (configFile >> "CfgVehicles" >> (_cIEE select 0) >> "picture")]; _CxR lbSetTooltip [lbSize(_CxR) - 1, getText (configFile >> "CfgVehicles" >> (_cIEE select 0) >> "displayName")]; _CxR lbSetValue [lbSize(_CxR) - 1, 1]; _CxR lbSetData [lbSize(_CxR) - 1, (_cIEE select 0)];}else{ _CxR lbAdd ""; _CxR lbSetPicture [lbSize(_CxR) - 1, "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_backpack_gs.paa"];};if ((!(_YGhD isEqualTo [])) && {(_YGhD select 0) != ""}) then { _MMF lbAdd format [" %1",getText (configFile >> "CfgWeapons" >> (_YGhD select 0) >> "displayName")]; _MMF lbSetPicture [lbSize(_MMF) - 1, getText (configFile >> "CfgWeapons" >> (_YGhD select 0) >> "picture")]; _MMF lbSetTooltip [lbSize(_MMF) - 1, getText (configFile >> "CfgWeapons" >> (_YGhD select 0) >> "displayName")]; _MMF lbSetValue [lbSize(_MMF) - 1, 1]; _MMF lbSetData [lbSize(_MMF) - 1, (_YGhD select 0)];}else{ _MMF lbAdd ""; _MMF lbSetPicture [lbSize(_MMF) - 1, "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_binocular_gs.paa"];};{ { _FmDy = toLower(_x select 0); if (_FmDy != "") then { if (isClass (configFile >> "CfgWeapons" >> _FmDy)) then { if (getText(configfile >> "CfgWeapons" >> _FmDy >> "ItemInfo" >> "containerClass") != "") then { if (getNumber(configfile >> "CfgWeapons" >> _FmDy >> "ItemInfo" >> "type") == 801) then { _CBE lbAdd format ["%2 (%1)", (_x select 1), getText (configFile >> "CfgWeapons" >> _FmDy >> "displayName")]; _CBE lbSetTooltip [lbSize(_CBE) - 1, format ["%2 (%1)", (_x select 1), getText (configFile >> "CfgWeapons" >> _FmDy >> "displayName")]]; _CBE lbSetPicture [lbSize(_CBE) - 1, getText (configFile >> "CfgWeapons" >> _FmDy >> "picture")]; _CBE lbSetValue [lbSize(_CBE) - 1, (_x select 1)]; _CBE lbSetData [lbSize(_CBE) - 1, _FmDy]; } else { _BtID lbAdd format ["%2 (%1)", (_x select 1), getText (configFile >> "CfgWeapons" >> _FmDy >> "displayName")]; _BtID lbSetTooltip [lbSize(_BtID) - 1, format ["%2 (%1)", (_x select 1), getText (configFile >> "CfgWeapons" >> _FmDy >> "displayName")]]; _BtID lbSetPicture [lbSize(_BtID) - 1, getText (configFile >> "CfgWeapons" >> _FmDy >> "picture")]; _BtID lbSetValue [lbSize(_BtID) - 1, (_x select 1)]; _BtID lbSetData [lbSize(_BtID) - 1, _FmDy]; }; } else { if(getNumber(configfile >> "CfgWeapons" >> _FmDy >> "ItemInfo" >> "type") == 605) then { _jnJ lbAdd format ["%2 (%1)", (_x select 1), getText (configFile >> "CfgWeapons" >> _FmDy >> "displayName")]; _jnJ lbSetTooltip [lbSize(_jnJ) - 1, format ["%2 (%1)", (_x select 1), getText (configFile >> "CfgWeapons" >> _FmDy >> "displayName")]]; _jnJ lbSetPicture [lbSize(_jnJ) - 1, getText (configFile >> "CfgWeapons" >> _FmDy >> "picture")]; _jnJ lbSetValue [lbSize(_jnJ) - 1, (_x select 1)]; _jnJ lbSetData [lbSize(_jnJ) - 1, _FmDy]; }else{ if(_FmDy find "binocular" != -1 || _FmDy find "rangefinder" != -1) then { _scP lbAdd format ["%2 (%1)", (_x select 1), getText (configFile >> "CfgWeapons" >> _FmDy >> "displayName")]; _scP lbSetTooltip [lbSize(_scP) - 1, format ["%2 (%1)", (_x select 1), getText (configFile >> "CfgWeapons" >> _FmDy >> "displayName")]]; _scP lbSetPicture [lbSize(_scP) - 1, getText (configFile >> "CfgWeapons" >> _FmDy >> "picture")]; _scP lbSetValue [lbSize(_scP) - 1, (_x select 1)]; _scP lbSetData [lbSize(_scP) - 1, _FmDy]; }; }; }; } else { if (isClass (configFile >> "CfgVehicles" >> _FmDy)) then { _RzLr lbAdd format ["%2 (%1)", (_x select 1), getText (configFile >> "CfgVehicles" >> _FmDy >> "displayName")]; _RzLr lbSetTooltip [lbSize(_RzLr) - 1, format ["%2 (%1)", (_x select 1), getText (configFile >> "CfgVehicles" >> _FmDy >> "displayName")]]; _RzLr lbSetPicture [lbSize(_RzLr) - 1, getText (configFile >> "CfgVehicles" >> _FmDy >> "picture")]; _RzLr lbSetValue [lbSize(_RzLr) - 1, (_x select 1)]; _RzLr lbSetData [lbSize(_RzLr) - 1, _FmDy]; } else { if (isClass (configFile >> "CfgGlasses" >> _FmDy)) then { _Edk lbAdd format ["%2 (%1)", (_x select 1), getText (configFile >> "CfgGlasses" >> _FmDy >> "displayName")]; _Edk lbSetTooltip [lbSize(_Edk) - 1, format ["%2 (%1)", (_x select 1), getText (configFile >> "CfgGlasses" >> _FmDy >> "displayName")]]; _Edk lbSetPicture [lbSize(_Edk) - 1, getText (configFile >> "CfgGlasses" >> _FmDy >> "picture")]; _Edk lbSetValue [lbSize(_Edk) - 1, (_x select 1)]; _Edk lbSetData [lbSize(_Edk) - 1, _FmDy]; }; }; }; }; } forEach _x;} forEach CtjFPq;if((lbSize(_jnJ) - 1) isEqualTo -1) then {_jnJ lbAdd "Keine Kopfbedeckungen verfügbar";};if((lbSize(_Edk) - 1) isEqualTo -1) then {_Edk lbAdd "Keine Brillen verfügbar";};if((lbSize(_scP) - 1) isEqualTo -1) then {_scP lbAdd "Keine Ferngläser verfügbar";};if((lbSize(_CBE) - 1) isEqualTo -1) then {_CBE lbAdd "Keine Uniformen verfügbar";};if((lbSize(_BtID) - 1) isEqualTo -1) then {_BtID lbAdd "Keine Westen verfügbar";};if((lbSize(_RzLr) - 1) isEqualTo -1) then {_RzLr lbAdd "Keine Rucksäcke verfügbar";};lbSort _jnJ;lbSort _Edk;lbSort _scP;lbSort _CBE;lbSort _BtID;lbSort _RzLr;_jnJ lbSetCurSel -1;_Edk lbSetCurSel -1;_scP lbSetCurSel -1;_CBE lbSetCurSel -1;_BtID lbSetCurSel -1;_RzLr lbSetCurSel -1;