private['_GlE','_Pgg','_cNO','_dddk','_pgg','_hTZP','_klZ','_TCSF','_mYmj'];disableSerialization;_GlE = (group player);_Pgg = _GlE getVariable ["HNCqyH",[]];if(_Pgg isEqualTo []) exitWith {hint "Du bist in keiner Gang"};if(count _Pgg < 7) exitWith {hint "Es ist ein Fehler aufgetreten"};_cNO = _Pgg select 5;_dddk = _Pgg select 6;_pgg = _dddk select 0;if(_pgg isEqualTo []) exitWith {hint "Es ist kein Hauptquatier eingetragen";};if(((group player) getVariable["UpCFgjjI",objNull]) != player) exitWith {hint "Jemand anderes greift auf das Hausmenü zu!"};_hTZP = _dddk select 1;_klZ = lbData[3302,(lbCurSel 3302)];if(_klZ in _hTZP) exitWith { if(_klZ == "Garage") then { while {dialog} do {closeDialog 0;}; [0,true] spawn zero_fnc_ngUJMr; }else{ hint "Das Upgrade ist bereits vorhanden"; };};_TCSF = switch (_klZ) do { case "ATM":{10000000}; case "Markt":{2000000}; case "General Store":{5000000}; case "Medic":{3000000}; case "Garage":{10000000};  default {-1};};if(_TCSF isEqualTo -1) exitWith {hint "Nichts ausgewählt"};_mYmj = [ parseText format["Möchtest du %1€ für das Uprgade <t color='#ffff00'>%2</t> bezahlen?",[_TCSF] call zero_fnc_nAnP, _klZ], "Hauptquatier upgraden", localize "STR_Global_Yes", localize "STR_Global_No"] call BIS_fnc_guiMessage;if(!_mYmj) exitWith {};if(_cNO < _TCSF) exitWith { hint format ["Deine Gang hat nicht genug Geld auf dem Konto. Es fehlen %1€", [_TCSF - _cNO] call zero_fnc_nAnP];};if(_klZ == "Garage") exitWith {while {dialog} do {closeDialog 0;}; [_TCSF,false] spawn zero_fnc_ngUJMr};_cNO = _cNO - _TCSF;_hTZP pushBack _klZ;_dddk set[1,_hTZP];_Pgg set[5,_cNO];_Pgg set[6,_dddk];_GlE setVariable["HNCqyH",_Pgg,true];hint format["Das Hauptquatier wurde erfolgreich um %1 erweitert",_klZ];hc_updateGang = [clientOwner,5,[_Pgg select 0,_dddk,_Pgg select 5]];HC1_owner publicVariableClient "hc_updateGang";hc_updateGang = nil;closeDialog 0;[] spawn zero_fnc_tdzoG;