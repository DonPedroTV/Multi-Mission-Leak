private['_lpoJ','_Mos','_NGTD','_lkJT','_UHUI','_Zqkn','_gbb','_bokW','_TpA','_hjnI'];_lpoJ = param[0,"",[""]];if (_lpoJ isEqualTo "") exitWith {};_Mos = "";_NGTD = 0;switch (true) do { case (_lpoJ in ["apple","peach","bananen"]): { _Mos = "ToOTX"; _NGTD = (["fruit"] call zero_fnc_XHmDLKS) select 1; }; case (_lpoJ in ["heroinu","cocaine","cannabis"]): { _Mos = "gxewyyqzE"; _NGTD = (["drugs"] call zero_fnc_XHmDLKS) select 1; }; case (_lpoJ in ["grapes","baumwolle"]): { _Mos = "wBJUQbzw"; _NGTD = (["grape"] call zero_fnc_XHmDLKS) select 1; }; case (_lpoJ in ["dp","brief"]): { if(_lpoJ == "dp") then { _Mos = "wtyI"; }else{ _Mos = "wBJUQbzw"; }; _NGTD = (["post"] call zero_fnc_XHmDLKS) select 1; }; case (_lpoJ in ["salt","sand"]): { _Mos = "wBJUQbzw"; _NGTD = (["sand"] call zero_fnc_XHmDLKS) select 1; }; case (_lpoJ in ["copperore","ironore"]): { _Mos = "uHj"; _NGTD = (["ore"] call zero_fnc_XHmDLKS) select 1; }; case (_lpoJ in ["oilu","gas"]): { _Mos = "uHj"; _NGTD = (["fossil"] call zero_fnc_XHmDLKS) select 1; }; case (_lpoJ in ["diamond","rock"]): { _Mos = "uHj"; _NGTD = (["rock"] call zero_fnc_XHmDLKS) select 1; }; default {_Mos = "";};};if(_Mos isEqualTo "") exitWith {1};_lkJT = call compile (format["%1",_Mos]);_UHUI = _lkJT select _NGTD;if(_Mos == "wtyI") exitWith { _Zqkn = [_UHUI, tbeF select _NGTD]; _Zqkn;};if(_NGTD isEqualTo 100) exitWith { _Zqkn = count _UHUI; _Zqkn;};_Zqkn = 0;_gbb = 0;_bokW = 0;_TpA = 0;_hjnI = round(random(100));{ if(_x != 0) then { if(_forEachIndex > 0) then { _gbb = _gbb + (_UHUI select (_forEachIndex - 1)); if(_gbb < _hjnI && _hjnI < (_x + _gbb)) exitWith {_Zqkn = _forEachIndex + 1;}; }else{ if(_hjnI <= _x) exitWith {_Zqkn = _forEachIndex + 1;}; }; _TpA = _TpA + _x; }; if(_TpA >= 100) exitWith {};} forEach _UHUI;_Zqkn;