private['_HtHU','_CBb','_Pba','_OMlh','_bcXW','_hjNp','_EjdI','_Sas','_Mos','_wRJ','_GGwj','_dev','_RHRt','_JtsF','_fHP','_Ftqg','_mqXS','_Ycwl'];_HtHU = param[0,"",[""]];if (_HtHU == "") exitWith {};_CBb = [];_Pba = "";_OMlh = "";_bcXW = "";_hjNp = -1;_EjdI = -1;_Sas = -1;_Mos = "";_wRJ = "";_GGwj = false;{ _Sas = _forEachIndex; { _Ftqg = _x select 0; if (_HtHU == _Ftqg) exitWith { _hjNp = _x select 1; _EjdI = _x select 2; _GGwj = true; }; } forEach _x; if(_GGwj) exitWith {};} forEach ZzqdO;_dev = _EjdI + 1;switch (_Sas) do { case 0: {  switch (true) do { case (_EjdI isEqualTo 0): { _wRJ = 20; }; case (1 <= _EjdI && _EjdI < 5): { _wRJ = (20 * _EjdI) * _dev; }; case (5 <= _EjdI && _EjdI < 10): { _wRJ = (25 * _EjdI) * _dev; }; case (10 <= _EjdI && _EjdI < 20): { _wRJ = (30 * _EjdI) * _dev; }; case (20 <= _EjdI && _EjdI < 30): { _wRJ = (35 * _EjdI) * _dev; }; case (30 <= _EjdI && _EjdI < 40): { _wRJ = (40 * _EjdI) * _dev; }; case (40 <= _EjdI && _EjdI < 50): { _wRJ = (45 * _EjdI) * _dev; }; default { _wRJ = (50 * _EjdI) * _dev; }; }; _mqXS = switch (true) do { case (_HtHU == "fruit"): {"ToOTX"}; case (_HtHU == "drugs"): {"gxewyyqzE"}; case (_HtHU in ["grape","sand"]): {"wBJUQbzw"}; case (_HtHU in ["ore","fossil","rock"]): {"uHj"}; case (_HtHU == "post"): {"wBJUQbzw"}; default {""}; }; if(_mqXS isEqualTo "") exitWith {}; _mqXS = call compile (format ["%1", _mqXS]); if(_HtHU == "post") then { _Pba = _Pba + (format ["DP: Geld: %1€ Wahrscheinlichkeit: %2%3<br/>Brief: ", [(wtyI select _EjdI)*1000] call zero_fnc_nAnP, tbeF select _EjdI, "%"]); _bcXW = _bcXW + (format ["DP: Geld: %1€ Wahrscheinlichkeit: %2%3<br/>Brief: ", [(wtyI select 100)*1000] call zero_fnc_nAnP, tbeF select 100, "%"]); if(_EjdI >= 100) exitWith { _OMlh = _OMlh + "DP: Keine Vorteile";}; _OMlh = _OMlh + (format ["DP: Geld: %1€ Wahrscheinlichkeit: %2%3<br/>", [(wtyI select _dev)*1000] call zero_fnc_nAnP, tbeF select _dev, "%"]); }; _RHRt = _mqXS select _EjdI; { if(_x != 0) then {_Pba = _Pba + (format ["Menge: %3 Wahrscheinlichkeit: %1%2<br/>", (_x), "%", _forEachIndex + 1]);}; } forEach _RHRt; _fHP = _mqXS select 100; { if(_x != 0) then {_bcXW = _bcXW + (format ["Menge: %3 Wahrscheinlichkeit: %1%2 ", (_x), "%", _forEachIndex + 1]);}; } forEach _fHP; if(_EjdI >= 100) exitWith {_OMlh = "Keine Vorteile";}; _JtsF = _mqXS select _dev; { if(_x != 0) then {_OMlh = _OMlh + (format ["Menge: %3 Wahrscheinlichkeit: %1%2<br/>", (_x), "%", _forEachIndex + 1]);}; } forEach _JtsF; }; case 1: {  if(_EjdI == 0) then { _wRJ = 15; }else{ _wRJ = (15 * _EjdI) * _dev; }; _Pba = format ["Zeit %1s", (JhZecClV select _EjdI) * 100]; _bcXW = format ["Zeit %1s", (JhZecClV select 100) * 100]; if(_EjdI >= 100) exitWith { _OMlh = "Keine Vorteile";}; _OMlh = format ["Zeit %1s", (JhZecClV select _dev) * 100]; }; case 2: {  if(_EjdI isEqualTo 0) then { _wRJ = 5; }else{ _wRJ = (5 * _EjdI) * _dev; }; switch (_HtHU) do { case "boltcutter": { _Pba = format ["Banktresor: %1s", (sVco select _EjdI) * 100]; _bcXW = format ["Banktresor: %1s", (sVco select 100) * 100]; if(_EjdI >= 100) exitWith { _OMlh = "Keine Vorteile";}; _OMlh = format ["Banktresor: %1s", (sVco select _dev) * 100]; }; case "repair": { _Pba = format ["Zeit: %1s<br/>%2", (sMDcjjLj select _EjdI) * 100,format["Erfolg: %1%2",pRpd select _EjdI,"%"]]; _bcXW = format ["Zeit: %1s<br/>%2", (sMDcjjLj select 100) * 100,format["Erfolg: %1%2",pRpd select 100,"%"]]; if(_EjdI >= 100) exitWith { _OMlh = "Keine Vorteile";}; _OMlh = format ["Zeit: %1s<br/>%2", (sMDcjjLj select _dev) * 100,format["Erfolg: %1%2",pRpd select _dev,"%"]]; }; case "revive": { _Pba = format ["Zeit: %1s<br/>Erfolg: %2%3", (nnKtFPLP select _EjdI) * 100,pRpd select _EjdI,"%"]; _bcXW = format ["Zeit: %1s<br/>Erfolg: %2%3", (nnKtFPLP select 100) * 100,pRpd select 100,"%"]; if(_EjdI >= 100) exitWith { _OMlh = "Keine Vorteile";}; _OMlh = format ["Zeit: %1s<br/>Erfolg: %2%3", (nnKtFPLP select _dev) * 100,pRpd select _dev,"%"]; }; case "impound": { _Pba = format ["Zeit: %1s", (nnKtFPLP select _EjdI) * 100]; _bcXW = format ["Zeit: %1s", (nnKtFPLP select 100) * 100]; if(_EjdI >= 100) exitWith { _OMlh = "Keine Vorteile";}; _OMlh = format ["Zeit: %1s", (nnKtFPLP select _dev) * 100]; }; case "selfhealing": { _Pba = format ["Leben %1%2", 100 - ((ydXQ select _EjdI)*100),"%"]; _bcXW = format ["Leben %1%2", 100 - ((ydXQ select 100)*100),"%"]; if(_EjdI >= 100) exitWith { _OMlh = "Keine Vorteile";}; _OMlh = format ["Leben %1%2", 100 - ((ydXQ select _dev)*100),"%"]; }; case "lockpick": { _Pba = format ["Zeit: %1s<br/>Erfolg: %2%3", (sMDcjjLj select _EjdI) * 100, (tbeF select _EjdI), "%"]; _bcXW = format ["Zeit: %1s Erfolg: %2%3", (sMDcjjLj select 100) * 100, (tbeF select 100), "%"]; if(_EjdI >= 100) exitWith { _OMlh = "Keine Vorteile";}; _OMlh = format ["Zeit: %1s<br/>Erfolg: %2%3", (sMDcjjLj select _dev) * 100, (tbeF select _dev), "%"]; }; case "search": { _Ycwl = 0; _nextValue = 0; if(!isNil {player getVariable "rank"}) then { if(player getVariable["rank",0] <= 4) then { _Ycwl = (player getVariable["rank",0]) * 20; _nextValue = _Ycwl + (_dev * 2.5); _Ycwl = _Ycwl + (_EjdI * 2.5); }else{ _Ycwl = 100; _nextValue = 100; }; }; if(_Ycwl > 100) then { _Ycwl = 100; }; if(_nextValue > 100) then { _nextValue = 100; }; _Pba = format ["Erfolg: %1%2",_Ycwl,"%"]; _bcXW = format ["Erfolg: 100%1","%"]; if(_EjdI >= 100) exitWith { _OMlh = "Keine Vorteile";}; _OMlh = format ["Erfolg: %1%2", _nextValue, "%"]; }; case "stamina": { _Pba = format ["Entfernung: ca. %1m", (FjMZSHQM select _EjdI)*3]; _bcXW = format ["Entfernung: ca. %1m", (FjMZSHQM select 100)*3]; if(_EjdI >= 100) exitWith { _OMlh = "Keine Vorteile";}; _OMlh = format ["Entfernung: ca. %1m", (FjMZSHQM select _dev)*3]; }; default { _Pba = "Keine Vorteile"; _OMlh = "Keine Vorteile"; _bcXW = "Keine Vorteile"; }; }; };};_CBb = [_hjNp,_EjdI,_wRJ,_Pba,_OMlh,_bcXW];_CBb;