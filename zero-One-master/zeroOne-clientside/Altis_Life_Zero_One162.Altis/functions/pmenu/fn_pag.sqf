private['_kMp','_vRhx','_LPoU','_EHC','_mYmj','_Mos'];disableSerialization;if(!Vfls) exitWith {hint localize "STR_NOTF_GiveItem";};_vRhx = ctrlText 2010;ctrlShow[2002,false];if((lbCurSel 2022) isEqualTo -1) exitWith {hint "Es wurde keiner ausgewählt!";ctrlShow[2002,true];};if((lbCurSel 2005) isEqualTo -1) exitWith {hint "Du hast kein Item ausgewählt!";ctrlShow[2002,true];};_kMp = lbData [2022,lbCurSel 2022];_kMp = call compile format["%1",_kMp];_LPoU = lbData [2005,(lbCurSel 2005)];if(isNil "_kMp" || _kMp == player) exitWith {ctrlShow[2002,true];};if(isNull _kMp || (player distance _kMp) > 5) exitWith {ctrlShow[2002,true]; hint "Der ausgewählte Spieler ist nicht in Reichweite";};if(!([_vRhx] call zero_fnc_uunyW)) exitWith {hint "Das ist keine Zahl!";ctrlShow[2002,true];};if(parseNumber(_vRhx) <= 0) exitWith {hint "Du musst mehr als 0 Items auswählen!";ctrlShow[2002,true];};if(Vfls) then { Vfls = false; [] spawn { uisleep 5; Vfls = true; };};_EHC = "";if(_LPoU == "med_marijuana" && {playerSide isEqualTo independent}) then { _mYmj = [ format["Soll das medizinische Marihuana direkt verabreicht werden?"], "Medizinisches Marijuana verabreichen", localize "STR_Global_Yes", localize "STR_Global_No" ] call BIS_fnc_guiMessage; if(_mYmj) then { _EHC = "med_marijuana"; };};if(_LPoU == "narcosis" && {playerSide isEqualTo independent}) then { _EHC = "narcosis";};if(!([false,_LPoU,(parseNumber _vRhx)] call zero_fnc_VJhZQOJ)) exitWith {hint "Du hast nicht genug von den Items dabei!";ctrlShow[2002,true];};[_kMp,_vRhx,_LPoU,player,_EHC] remoteExecCall ["zero_fnc_HmvO",_kMp];_Mos = getText(missionConfigFile >> "zero_CfgItems" >> _LPoU >> "name");hint format["Du hast %1 %2 %3 gegeben",_kMp getVariable["aOsyc",name _kMp],_vRhx,_Mos];[] call zero_fnc_hxDeBiItD;ctrlShow[2002,true];