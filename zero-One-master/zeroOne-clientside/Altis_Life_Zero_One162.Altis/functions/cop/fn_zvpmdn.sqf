private['_KCU','_MHvh'];_KCU = param[0,ObjNull,[ObjNull]];if(isNull _KCU) exitWith {};_MHvh = "";{ if((missionNamespace getVariable (_x select 0)) && (_x select 1 == "civ") && ((_x select 0) != "CqwkkuJA")) then { _MHvh = _MHvh + ([_x select 0] call zero_fnc_ZzbGr) + "<br/>"; };} foreach UGNrwly;if(_MHvh isEqualTo "") then {_MHvh = (localize "STR_Cop_NoLicensesFound");}; [profileName,_MHvh] remoteExecCall ["zero_fnc_uHjyMgh",_KCU];