private ['_LPoU','_sFSE','_tAY','_rTP'];_LPoU = param[0,"",[""]];_rTP = param[1,1,[1]];_LPoU = toLower(_LPoU);_sFSE = if (_LPoU != "") then { if (isClass (configFile >> "CfgWeapons" >> _LPoU)) then { if(getNumber(configFile >> "CfgWeapons" >> _LPoU >> "type") == 1) then {  0; }else{ if(getNumber(configFile >> "CfgWeapons" >> _LPoU >> "type") == 2) then {  2; }else{ if((getNumber(configfile >> "CfgWeapons" >> _LPoU >> "ItemInfo" >> "type")) in [101,201,301,302]) then {  4; }else{ if (getText(configfile >> "CfgWeapons" >> _LPoU >> "ItemInfo" >> "containerClass") != "") then { if (getNumber(configfile >> "CfgWeapons" >> _LPoU >> "ItemInfo" >> "type") == 801) then {  5; } else {  6; }; } else { if(getNumber(configfile >> "CfgWeapons" >> _LPoU >> "ItemInfo" >> "type") == 605) then {  8; }else{  10; }; }; }; }; }; } else { if (isClass (configFile >> "CfgVehicles" >> _LPoU)) then {  7; } else { if (isClass (configFile >> "CfgGlasses" >> _LPoU)) then {  9; }else{ if(isClass(configFile >> "CfgMagazines" >> _LPoU)) then {  3; }; }; }; };}else{ -1;};if(_sFSE isEqualTo -1) exitWith {hint format ["%1 konnte nicht hinzugefügt werden", _LPoU]; false;};_tAY = [toLower(_LPoU),(CtjFPq select _sFSE)] call zero_fnc_oKzQhZKu;if(_tAY isEqualTo -1) then { (CtjFPq select _sFSE) pushBack [toLower(_LPoU),_rTP];}else{ _LPoU = (CtjFPq select _sFSE) select _tAY; if(((_LPoU select 1) + _rTP) isEqualTo 0) then { (CtjFPq select _sFSE) deleteAt _tAY; }else{ if(((_LPoU select 1) + _rTP) < 0) exitWith {false;}; (CtjFPq select _sFSE) set[_tAY,[toLower(_LPoU select 0), (_LPoU select 1) + _rTP]]; };};true;