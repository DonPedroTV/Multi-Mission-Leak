private['_wyu','_rUr','_IQjx','_ezem','_pKlU','_FbdL','_uTGT'];_wyu = cursorObject;if(RuqfuBIBK) exitWith {};if(iqEbELlj) exitWith {iqEbELlj = false;};if(dialog) exitWith {};if(vehicle player != player) exitWith {};if(!isNil "PFAubPbI") then {_wyu = PFAubPbI;};RuqfuBIBK = true;_rUr = surfaceIsWater (getPosASL player);if(isNull _wyu) exitWith { if(_rUr) then { _IQjx = (nearestObjects[getPos player,["Fish_Base_F"],3]) select 0; if(!isNil "_IQjx") then { [_IQjx] call zero_fnc_DRjE; }; _ezem = (nearestObjects[getPos player,["Turtle_F"],3]) select 0; if(!isNil "_ezem") then { _pKlU = [_ezem] spawn zero_fnc_wCugPgG; waitUntil {scriptDone _pKlU}; }; RuqfuBIBK = false; }; RuqfuBIBK = false;};if(_wyu isKindOf "House_F" && {player distance _wyu < 12} || ((nearestObject [[16019.5,16952.9,0],"Land_Dome_Big_F"]) == _wyu || (nearestObject [[20889,19224,0],"Land_Research_HQ_F"]) == _wyu)) exitWith { [_wyu] call zero_fnc_MKYmt; RuqfuBIBK = false;};if(_wyu isKindOf "Man" && {!alive _wyu} && {playerSide isEqualTo independent}) exitWith { if(playerSide isEqualTo independent) then { [_wyu] call zero_fnc_yJAc; }; RuqfuBIBK = false;};if(isPlayer _wyu && _wyu isKindOf "Man") then { if( playerSide isEqualTo west && {!dialog} && {(player distance _wyu) < 4}) exitWith { [_wyu] call zero_fnc_HRwmj; RuqfuBIBK = false; }; if((playerSide isEqualTo civilian || playerSide isEqualTo east) && {(_wyu getVariable["GHdlZHW",false])} && {!dialog} && {(player distance _wyu) < 4}) exitWith { [_wyu] call zero_fnc_LnEzn; RuqfuBIBK = false; }; if(playerSide isEqualTo independent && {!dialog} && {(player distance _wyu) < 4}) exitWith { [_wyu] call zero_fnc_XcBHkiQle; RuqfuBIBK = false; };} else { _FbdL = if((_wyu isKindOf "landVehicle") || (_wyu isKindOf "Ship") || (_wyu isKindOf "Air")) then {true} else {false}; _uTGT = ["Salema_F","Ornate_random_F","Mackerel_F","Tuna_F","Mullet_F","CatShark_F","Turtle_F"]; if(_FbdL) then { if(!dialog) then { if(player distance _wyu < ((boundingBox _wyu select 1) select 0) + 2) then { [_wyu] call zero_fnc_pzIYxvk; }; }; } else { if((typeOf _wyu) in _uTGT) then { if((typeOf _wyu) == "Turtle_F" && {!alive _wyu}) then { _pKlU = [_wyu] spawn zero_fnc_wCugPgG; waitUntil {scriptDone _pKlU}; }else{ _pKlU = [_wyu] spawn zero_fnc_DRjE; waitUntil {scriptDone _pKlU}; }; }; };};RuqfuBIBK = false;