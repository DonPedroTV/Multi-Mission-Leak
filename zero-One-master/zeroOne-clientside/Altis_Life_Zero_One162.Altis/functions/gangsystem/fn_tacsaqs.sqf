private['_qZe','_zru','_qUNP','_xOG','_Efl','_nALz','_Tqiz','_fjL','_trt'];disableserialization;createdialog "MDdjNKKV";_qZe = findDisplay 3200;if (isNull _qZe) exitwith {};_zru = _qZe displayCtrl 3202;_qUNP = _qZe displayCtrl 3201;_xOG = _qZe displayCtrl 3204;_Efl = _qZe displayCtrl 3203;_Efl ctrlsettext "Überprüfen";_Efl buttonSetAction "jDAY = true;";_zru ctrlSetStructuredText parseText format["<t align='center' size='1'>Bitte gib den gewünschten Gangnamen ein.</t>"];_xOG ctrlSetStructuredText parseText format["<t align='center' size='1'>Es sind nur <br/> Buchstaben, Zahlen, Leerzeichen und beschränkte Sonderzeichen erlaubt!</t>"];while {true} do { _nALz = nil; _qUNP ctrlSetText ""; _Tqiz = ""; jDAY = false; waituntil {jDAY or isNull (findDisplay 3200)}; jDAY = nil; if (isNull (findDisplay 3200)) exitwith {}; _Tqiz = ctrlText _qUNP; if (_Tqiz isequalto "") then { _nALz = true; _xOG ctrlSetStructuredText parseText format["<t align='center' size='1' color='#DC143C'>Das Eingabefeld ist leer.</t>"]; }else { if ((count _Tqiz) > 24) then { _nALz = true; _xOG ctrlSetStructuredText parseText format["<t align='center' size='1' color='#DC143C'>Der Gangname ist länger als 24 Zeichen</t>"]; }else{ _fjL = toArray (_Tqiz); _trt = toArray("!#$%&()*+,-./0123456789<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]_abcdefghijklmnopqrstuvwxyz{|} "); { if !(_x in _trt) exitwith { _nALz = true; _xOG ctrlSetStructuredText parseText format["<t align='center' size='1' color='#DC143C'>Das Zeichen %1 ist im Gangnamen nicht erlaubt!</t>",tostring [_x]]; } }foreach _fjL; }; }; if (isnil "_nALz") then { _xOG ctrlSetStructuredText parseText format["<t align='center' size='1' color='#EDF5F5'>Der Gangname %1 wird überprüft!</t>",_Tqiz]; hc_checkGangname = [clientOwner,0,_Tqiz]; HC1_owner publicVariableClient "hc_checkGangname"; hc_checkGangname = nil; waituntil {!isnil "IGC"}; if (IGC isEqualTo []) then { _xOG ctrlSetStructuredText parseText format["<t align='center' size='1' color='#0BDA51'>Der Gangname %1 ist noch frei!</t>",_Tqiz]; } else { _xOG ctrlSetStructuredText parseText format["<t align='center' size='1' color='#DC143C'>Der Gangname %1 ist bereits belegt!</t>",_Tqiz]; }; IGC = nil; };};