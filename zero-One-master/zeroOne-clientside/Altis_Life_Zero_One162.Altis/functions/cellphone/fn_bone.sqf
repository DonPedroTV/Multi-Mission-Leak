private['_blkW','_zJco','_KxLl','_kNi','_QiG','_fjL','_tcX','_GGwj'];_blkW = ctrlText 3003;_zJco = localize "STR_CELL_TextPolice_hint";if(({(side _x) isEqualTo west} count playableUnits) == 0) exitWith {hint localize "STR_CELL_No_cops";};if(cbChecked ((findDisplay 3000) displayCtrl 3004)) then {_KxLl = position player;} else {_KxLl = [];};_kNi = floor (serverTime);_QiG = getPlayerUID player;if(_blkW == "") exitWith {hint localize "STR_CELL_Title_Edit";};_GGwj = false;_fjL = toArray (_blkW);_tcX = toArray('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz 0123456789ÄäÖöÜüß!#$()*+,-./<=>?@');{if !(_x in _tcX) exitwith {hint format ["Das Zeichen %1 ist in einer SMS nicht erlaubt",tostring[_x]];_GGwj = true;}}foreach _fjL;if(_GGwj) exitWith {};[1,_blkW,name player,_KxLl,_kNi,_QiG,player] remoteExecCall ["zero_fnc_ziCTNRcyf",west];[_blkW,name player,_KxLl,_kNi,_QiG,"police"] remoteExecCall ["zero_fnc_adKSxF",2];[] call zero_fnc_rrEYhtDV;hint format[localize "STR_CELL_Send_Success",_zJco,_blkW];closeDialog 0;