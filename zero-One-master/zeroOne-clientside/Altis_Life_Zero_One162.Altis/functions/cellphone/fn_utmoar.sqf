private['_blkW','_zJco','_KxLl','_kNi','_FOe','_fjL','_UuTJ','_GGwj'];_blkW = ctrlText 3003;_zJco = Ynphw;_KxLl = [];_kNi = floor (serverTime);_FOe = getPlayerUID player;if(isNil "_zJco") exitWith {hint localize "STR_ATM_NoneSelected"};if(isNull _zJco) exitWith {hint localize "STR_ATM_NoneSelected"};if(!([(getPlayerUID _zJco)] call zero_fnc_wVfC)) exitWith {hint localize "STR_CELL_Not_Online";};if(_blkW == "") exitWith {hint localize "STR_CELL_Title_Edit"; };_GGwj = false;_fjL = toArray (_blkW);_UuTJ = toArray('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz 0123456789ÄäÖöÜüß!#$()*+,-./<=>?@');{if !(_x in _UuTJ) exitwith {hint format ["Das Zeichen %1 ist in einer SMS nicht erlaubt",tostring[_x]];_GGwj = true;}}foreach _fjL;if(_GGwj) exitWith {};[0,_blkW,name player,_KxLl,_kNi,_FOe,player] remoteExecCall ["zero_fnc_ziCTNRcyf",_zJco];[] call zero_fnc_rrEYhtDV;hint format[localize "STR_CELL_Send_Success",name _zJco,_blkW];closeDialog 0;