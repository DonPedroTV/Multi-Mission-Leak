private['_kMp','_iATT','_kNi'];_kMp = param[0,ObjNull,[ObjNull]];_kNi = param[1,15,[1]];if(isNil "_kMp" || isNull _kMp || !(_kMp isKindOf "Man") || !isPlayer _kMp) exitWith {};if(!(_kMp getVariable ["GHdlZHW",false])) exitWith {};if(side _kMp isEqualTo west || side _kMp isEqualTo independent) exitWith {};if(_kNi < 1) exitWith {};[_kMp,player,false] remoteExecCall ["zero_fnc_wantedBounty",2];detach _kMp;[_kMp,false,_kNi] remoteExec ["zero_fnc_SKFGFNt",_kMp];[0,format[localize "STR_NOTF_Arrested_1", _kMp getVariable["aOsyc",name _kMp], player getVariable["aOsyc",name player]]] remoteExecCall ["zero_fnc_cpbpJzzAd",(allPlayers - entities "HeadlessClient_F")];