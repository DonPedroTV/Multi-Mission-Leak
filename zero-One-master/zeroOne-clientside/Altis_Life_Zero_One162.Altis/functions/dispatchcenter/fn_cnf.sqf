private['_kTg','_koO'];if (playerSide isEqualTo civilian || playerSide isEqualTo east) exitWith {};disableSerialization;{ if(((_x select 3) + 2100) <= serverTime) then { [_x] call zero_fnc_cJwmb; };} forEach yMirRDD;waitUntil {!isNull (findDisplay 4000)};_kTg = ((findDisplay 4000) displayCtrl 4004);lbClear _kTg;((findDisplay 4000) displayCtrl 4005) ctrlShow false;((findDisplay 4000) displayCtrl 4006) ctrlShow false;((findDisplay 4000) displayCtrl 4007) ctrlShow false;((findDisplay 4000) displayCtrl 4008) ctrlShow false;((findDisplay 4000) displayCtrl 4009) ctrlShow false;((findDisplay 4000) displayCtrl 4010) ctrlShow false;((findDisplay 4000) displayCtrl 4011) ctrlShow false;((findDisplay 4000) displayCtrl 4013) ctrlShow false;((findDisplay 4000) displayCtrl 4014) ctrlShow false;((findDisplay 4000) displayCtrl 4015) ctrlShow false;((findDisplay 4000) displayCtrl 4016) ctrlShow false;_koO = ((findDisplay 4000) displayCtrl 4003);lbClear _koO;_koO lbAdd localize "STR_PM_DispatchCenter_Time";_koO lbAdd localize "STR_PM_DispatchCenter_Time2";_koO lbAdd localize "STR_PM_DispatchCenter_Alph";_koO lbAdd localize "STR_PM_DispatchCenter_Alph2";_koO lbAdd localize "STR_PM_DispatchCenter_Range";_koO lbAdd localize "STR_PM_DispatchCenter_Range2";if (ncNQ == -1) then { _koO lbSetCurSel 0;} else { _koO lbSetCurSel ncNQ;};