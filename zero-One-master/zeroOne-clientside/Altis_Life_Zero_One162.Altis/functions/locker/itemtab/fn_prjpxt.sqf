private ['_qZe','_Idhf','_Qyr','_QxEE','_QdhG','_fffH','_FNHA','_SGGe','_cSYq','_EnT','_HXW','_byUP'];disableSerialization;_qZe = findDisplay 1000;if (isNull _qZe) exitWith {hint str(_qZe)};hint "Entferne deine Aufsätze bevor du Waffen in das Schließfach legst!";(_qZe displayCtrl 1500) ctrlShow false; (_qZe displayCtrl 1501) ctrlShow false; (_qZe displayCtrl 1502) ctrlShow false; (_qZe displayCtrl 1503) ctrlShow false; (_qZe displayCtrl 1504) ctrlShow false; (_qZe displayCtrl 1505) ctrlShow false; (_qZe displayCtrl 1506) ctrlShow false; (_qZe displayCtrl 1507) ctrlShow false; (_qZe displayCtrl 1508) ctrlShow false; (_qZe displayCtrl 1509) ctrlShow false; (_qZe displayCtrl 1510) ctrlShow false; (_qZe displayCtrl 1511) ctrlShow false; (_qZe displayCtrl 1600) ctrlShow false; (_qZe displayCtrl 1601) ctrlShow false; (_qZe displayCtrl 1602) ctrlShow false; (_qZe displayCtrl 1603) ctrlShow false; (_qZe displayCtrl 1604) ctrlShow false; (_qZe displayCtrl 1605) ctrlShow false; (_qZe displayCtrl 1606) ctrlShow false; (_qZe displayCtrl 1607) ctrlShow false; (_qZe displayCtrl 1608) ctrlShow false; (_qZe displayCtrl 1609) ctrlShow false; (_qZe displayCtrl 1610) ctrlShow false; (_qZe displayCtrl 1611) ctrlShow false; (_qZe displayCtrl 1612) ctrlShow false; (_qZe displayCtrl 1613) ctrlShow false; (_qZe displayCtrl 1614) ctrlShow false; (_qZe displayCtrl 1615) ctrlShow false; (_qZe displayCtrl 1616) ctrlShow false; (_qZe displayCtrl 1617) ctrlShow false; (_qZe displayCtrl 1618) ctrlShow false; (_qZe displayCtrl 1619) ctrlShow false; (_qZe displayCtrl 1620) ctrlShow false; (_qZe displayCtrl 1621) ctrlShow false; _Idhf = _qZe displayCtrl 1700;_Idhf ctrlShow true;_Qyr = _qZe displayCtrl 1701;_Qyr ctrlShow true;(_qZe displayCtrl 1801) ctrlShow false;(_qZe displayCtrl 1802) ctrlShow false;(_qZe displayCtrl 1804) ctrlShow true;(_qZe displayCtrl 1803) ctrlShow true;lbClear _Idhf;lbClear _Qyr;_QxEE = getUnitLoadout player;_QdhG = _QxEE select 3;_fffH = _QxEE select 4;_FNHA = _QxEE select 5;_SGGe = _QxEE select 9;_cSYq = [];_EnT = if (!(_QdhG isEqualTo []) && {!((_QdhG select 1)isEqualTo [])}) then {(_QdhG select 1)} else { []};_HXW = if (!(_fffH isEqualTo []) && {!((_fffH select 1)isEqualTo [])}) then {(_fffH select 1)} else { []};_byUP = if (!(_FNHA isEqualTo []) && {!((_FNHA select 1)isEqualTo [])}) then {(_FNHA select 1)} else { []};{ _entity = if(typeName _x == "ARRAY") then { if(typeName (_x select 0) == "ARRAY") then {toLower((_x select 0) select 0)}else{toLower(_x select 0)}; } else { toLower(_x) }; _count = if(typeName _x == "ARRAY") then {if(count _x > 2) then {_x select 2} else {_x select 1}}else{1}; if(typeName _count == "BOOL") then {_count = 1}; _index = [_entity, _cSYq] call zero_fnc_oKzQhZKu; if(_index isEqualTo -1) then { _cSYq pushBack[toLower(_entity),_count]; }else{ _item = _cSYq select _index; _cSYq set[_index,[toLower(_item select 0),(_item select 1) + _count]]; };} forEach _EnT + _HXW + _byUP + _SGGe;_qZe setVariable["nfwCPuCZC",_cSYq];{ _entity = toLower(_x select 0); if (_entity != "") then { _count = (_x select 1); if(typeName _count == "BOOL") then {_count = 1}; _cfg = switch (true) do { case (isClass (configFile >> "CfgWeapons" >> _entity)):{"CfgWeapons"}; case (isClass (configFile >> "CfgVehicles" >> _entity)):{"CfgVehicles"}; case (isClass (configFile >> "CfgGlasses" >> _entity)):{"CfgGlasses"}; case (isClass (configFile >> "CfgMagazines" >> _entity)):{"CfgMagazines"}; }; _Qyr lbAdd format ["%2 (%1)", _count, getText (configFile >> _cfg >> _entity >> "displayName")]; _Qyr lbSetTooltip [lbSize(_Qyr) - 1, format ["%2 (%1)", _count, getText (configFile >> _cfg >> _entity >> "displayName")]]; _Qyr lbSetPicture [lbSize(_Qyr) - 1, getText (configFile >> _cfg >> _entity >> "picture")]; _Qyr lbSetValue [lbSize(_Qyr) - 1, _count]; _Qyr lbSetData [lbSize(_Qyr) - 1, _entity]; };} forEach _cSYq;{ { _entity = toLower(_x select 0); if (_entity != "") then { _count = (_x select 1); if(typeName _count == "BOOL") then {_count = 1}; _cfg = switch (true) do { case (isClass (configFile >> "CfgWeapons" >> _entity)):{"CfgWeapons"}; case (isClass (configFile >> "CfgVehicles" >> _entity)):{"CfgVehicles"}; case (isClass (configFile >> "CfgGlasses" >> _entity)):{"CfgGlasses"}; case (isClass (configFile >> "CfgMagazines" >> _entity)):{"CfgMagazines"}; }; _Idhf lbAdd format ["%2 (%1)", _count, getText (configFile >> _cfg >> _entity >> "displayName")]; _Idhf lbSetTooltip [lbSize(_Idhf) - 1, format ["%2 (%1)", _count, getText (configFile >> _cfg >> _entity >> "displayName")]]; _Idhf lbSetPicture [lbSize(_Idhf) - 1, getText (configFile >> _cfg >> _entity >> "picture")]; _Idhf lbSetValue [lbSize(_Idhf) - 1, _count]; _Idhf lbSetData [lbSize(_Idhf) - 1, _entity]; }; } forEach _x;} forEach CtjFPq;lbSort _Idhf;lbSort _Qyr;if((lbSize(_Idhf) - 1) isEqualTo -1) then {_Idhf lbAdd "Keine Items verfügbar";};if((lbSize(_Qyr) - 1) isEqualTo -1) then {_Qyr lbAdd "Keine Items verfügbar";};_Idhf lbSetCurSel -1;_Qyr lbSetCurSel -1;