private['_AmhM','_bcj','_arv'];_AmhM = param[0,"",["",0]];_bcj = param[1,"",["",0]];_arv = param[2,Objnull,[Objnull]];if(isNull _arv) exitWith {hint "Error fn_bountyReceive.sqf: isNull _arv. DEV melden!"};[0,player] remoteExecCall ["zero_fnc_YcKXdzFE",owner _arv];waitUntil {!isNil "DXi"};_AmhM = round(DXi*(_AmhM/100));if(_AmhM == _bcj) then { titleText[format[localize "STR_Cop_BountyRecieve",[_AmhM] call zero_fnc_nAnP],"PLAIN"];}else{ _bcj = round(DXi*(_bcj/100)); titleText[format[localize "STR_Cop_BountyKill",[_AmhM] call zero_fnc_nAnP,[_bcj] call zero_fnc_nAnP],"PLAIN"];};[0, ([2, 0] call zero_fnc_JNHrfnI) + _AmhM] call zero_fnc_JNHrfnI;DXi = nil;