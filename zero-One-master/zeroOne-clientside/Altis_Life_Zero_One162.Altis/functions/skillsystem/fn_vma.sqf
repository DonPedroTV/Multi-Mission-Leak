private['_rKMv','_kMT','_Uzvu','_IFXu','_kMT','_smxw','_JZP'];if(playerSide isEqualTo west || playerSide isEqualTo independent) exitWith {};{ _rKMv = _x select 1; _kMT = _x select 2; if(_rKMv != 0) then { if(_kMT == 0) exitWith {_x set[1, round(0.95 * _rKMv)]}; _IFXu = _kMT - 1; _smxw = 1; switch (true) do { case (_kMT == 1): { _JZP = 20; _smxw = 0.95; }; case (2 <= _kMT && _kMT < 5): { _JZP = (20 * _kMT) * _IFXu; _smxw = 0.95; }; case (5 <= _kMT && _kMT < 10): { _JZP = (25 * _kMT) * _IFXu; _smxw = 0.95; }; case (10 <= _kMT && _kMT < 20): { _JZP = (30 * _kMT) * _IFXu; _smxw = 0.95; }; case (20 <= _kMT && _kMT < 30): { _JZP = (35 * _kMT) * _IFXu; _smxw = 0.96; }; case (30 <= _kMT && _kMT < 40): { _JZP = (40 * _kMT) * _IFXu; _smxw = 0.97; }; case (40 <= _kMT && _kMT < 50): { _JZP = (45 * _kMT) * _IFXu; _smxw = 0.98; }; default { _JZP = (50 * _kMT) * _IFXu; _smxw = 0.99; }; }; _rKMv = round(_smxw * _rKMv); _x set[1, _rKMv]; if(_JZP > _rKMv) exitWith { _x set[2, _IFXu]; }; };} forEach (ZzqdO select 0);{ _rKMv = _x select 1; _kMT = _x select 2; if (_rKMv != 0) then { if(_kMT isEqualTo 0) exitWith {_x set[1, round(0.95 * _rKMv)]}; _JZP = 15; if(_kMT > 1) then { _JZP = (15 * _kMT) * (_kMT - 1); }; _smxw = 1; switch (true) do { case (1 <= _kMT && _kMT < 20): { _smxw = 0.95; }; case (20 <= _kMT && _kMT < 30): { _smxw = 0.96; }; case (30 <= _kMT && _kMT < 40): { _smxw = 0.97; }; case (40 <= _kMT && _kMT < 50): { _smxw = 0.98; }; default { _smxw = 0.99; }; }; _rKMv = round(_smxw * _rKMv); _x set[1,_rKMv]; if(_JZP > _rKMv) exitWith { _x set[2, (_kMT - 1)]; }; };} forEach (ZzqdO select 1);