private['_VJJg','_MRH','_fcE','_rUnS','_Xil','_YhAV','_nPMZ'];if(RuqfuBIBK) exitWith {hint localize "STR_NOTF_Action"};_VJJg = nearestObjects[getMarkerPos "air_serv_1", ["Air"],10];if(_VJJg isEqualTo []) exitWith {hint localize "STR_Service_Chopper_NoAir"};_nPMZ = _VJJg select 0;if(([3, 0] call zero_fnc_JNHrfnI) < 1000) exitWith {hint localize "STR_Serive_Chopper_NotEnough"};[1, ([3, 0] call zero_fnc_JNHrfnI) - 1000] call zero_fnc_JNHrfnI;disableSerialization;RuqfuBIBK = true;_YhAV = localize "STR_Service_Chopper_Servicing";5 cutRsc ["QLM","PLAIN"];_MRH = uiNameSpace getVariable "QLM";_fcE = _MRH displayCtrl 38201;_Xil = _MRH displayCtrl 38202;_Xil ctrlSetText format["%2 (1%1)...","%",_YhAV];_fcE progressSetPosition 0.01;_rUnS = 0.01;while {true} do { uisleep 0.2; _rUnS = _rUnS + 0.01; _fcE progressSetPosition _rUnS; _Xil ctrlSetText format["%3 (%1%2)...",round(_rUnS * 100),"%",_YhAV]; if(_rUnS >= 1 || !alive _nPMZ || _nPMZ distance (getMarkerPos "air_serv_1") > 10) exitWith {};};RuqfuBIBK = false;if(!alive _nPMZ || _nPMZ distance (getMarkerPos "air_serv_1") > 10) exitWith {RuqfuBIBK = false; hint localize "STR_Service_Chopper_Missing"};if(!local _nPMZ) then { [_nPMZ,1] remoteExecCall ["zero_fnc_GKLTJk",_nPMZ];}else{ _nPMZ setFuel 1;};_nPMZ setDamage 0;5 cutText ["","PLAIN"];titleText [localize "STR_Service_Chopper_Done","PLAIN"];RuqfuBIBK = false;