private['_XFXx','_gab'];_XFXx = param[0,ObjNull,[ObjNull]];if(isNull _XFXx) exitWith {};uiSleep 3;_gab = tdgAZtEK;if((side _XFXx) isEqualTo west) then { if(random(10) < 5) then { _gab = _gab + 0.1; }else{ _gab = _gab - 0.1; }; if(_gab < 0) then {_gab = 0;};};[1,format["Atemalkohol von %1: %2%3 ",player getVariable["aOsyc",name player],[_gab] call zero_fnc_nAnP,"‰"]] remoteExecCall ["zero_fnc_cpbpJzzAd",_XFXx];RuqfuBIBK = false;