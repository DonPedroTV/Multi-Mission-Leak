private['_qZe','_kTg','_NGIy','_COvX','_zth','_PdK'];disableSerialization;_qZe = findDisplay 2400;_kTg = _qZe displayCtrl 2402;_PdK = lbData[2401,(lbCurSel 2401)];_PdK = call compile format["%1", _PdK];if(isNil "_PdK") exitWith {};if(typeName _PdK != "ARRAY") exitWith {};if(_PdK isEqualTo []) exitWith {};lbClear _kTg;_NGIy = _PdK select 2;_COvX = _PdK select 3;_zth = [];{ _crime = _x; if(!(_crime in _zth)) then { _zth pushBack _crime; _kTg lbAdd format[localize "STR_PM_WantedList_count",{_x == _crime} count _NGIy,_crime]; };} foreach _NGIy;ctrlSetText[2403,format[localize "STR_PM_WantedList_bounty",[_COvX] call zero_fnc_nAnP,"%"]];