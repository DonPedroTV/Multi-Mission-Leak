private['_blkW','_kNi','_AAB','_fjL','_DDDA','_GGwj'];switch (lbCurSel 4013) do { case 0: {_blkW = (ctrlText 4016);}; case 1: {_blkW = localize "STR_CELL_Units_Way";}; case 2: {_blkW = localize "STR_CELL_Wait";}; case 3: {_blkW = localize "STR_CELL_Terrorists";}; case 4: {_blkW = localize "STR_CELL_Land_Granted";}; case 5: {_blkW = localize "STR_CELL_Land_Denied";}; case 6: {_blkW = localize "STR_CELL_5W";}; case 7: {_blkW = localize "STR_CELL_WWWWW";}; case 8: {_blkW = localize "STR_CELL_Server_Rules";}; case 9: {_blkW = localize "STR_CELL_Longer";}; case 10: {_blkW = localize "STR_CELL_Support";}; case 11: {_blkW = localize "STR_CELL_Case_Med";}; case 12: {_blkW = localize "STR_CELL_Case_Cop";}; case 13: {_blkW = localize "STR_CELL_Case_Time";}; case 14: {_blkW = localize "STR_CELL_Chuck_Norris";}; default {hint "Fehler, bitte versuche es erneut!";};};{ if((getPlayerUID _x) == (QVv select 4)) then { _kNi = floor (serverTime); _AAB = getPlayerUID player; if(_blkW == "") exitWith {hint localize "STR_CELL_Title_Edit";}; _GGwj = false; _fjL = toArray (_blkW); _DDDA = toArray("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz 0123456789ÄäÖöÜüß!#$()[]*+,-./<=>?@"); {if !(_x in _DDDA) exitwith {hint format ["Das Zeichen %1 ist in einer SMS nicht erlaubt",tostring[_x]];_GGwj = true;}}foreach _fjL; if(_GGwj) exitWith {}; [0,_blkW,name player,[],_kNi,_AAB,player] remoteExecCall ["zero_fnc_ziCTNRcyf",_x]; hint format[localize "STR_CELL_Send_Success",(QVv select 1),_blkW]; closeDialog 0; };} foreach (allPlayers - entities "HeadlessClient_F");