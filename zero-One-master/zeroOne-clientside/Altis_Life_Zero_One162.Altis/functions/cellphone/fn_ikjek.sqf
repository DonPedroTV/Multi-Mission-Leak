private['_blkW','_zJco','_KxLl','_kNi','_RDl','_fjL','_ltp','_GGwj'];if((call MEGb) < 1) exitWith {hint localize "STR_CELL_Not_Admin";};_blkW = ctrlText 3003;_zJco = call compile format["%1",(lbData[3002,(lbCurSel 3002)])];_KxLl = [];_kNi = floor (serverTime);_RDl = getPlayerUID player;if(isNil "_zJco") exitWith {hint localize "STR_ATM_NoneSelected"};if(isNull _zJco) exitWith {hint localize "STR_ATM_NoneSelected"};if(!([(getPlayerUID _zJco)] call zero_fnc_wVfC)) exitWith {hint localize "STR_CELL_Not_Online";};if(_blkW == "") exitWith {hint localize "STR_CELL_Title_Edit"; };_GGwj = false;_fjL = toArray (_blkW);_ltp = toArray("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz 0123456789ÄäÖöÜüß!#$()[]*+,-./<=>?@");{if !(_x in _ltp) exitwith {hint format ["Das Zeichen %1 ist in einer SMS nicht erlaubt",tostring[_x]];_GGwj = true;}}foreach _fjL;if(_GGwj) exitWith {};[6,_blkW,name player,_KxLl,_kNi,_RDl,player] remoteExecCall ["zero_fnc_ziCTNRcyf",_zJco];[] call zero_fnc_rrEYhtDV;hint format[localize "STR_CELL_Send_Success",name _zJco,_blkW];closeDialog 0;