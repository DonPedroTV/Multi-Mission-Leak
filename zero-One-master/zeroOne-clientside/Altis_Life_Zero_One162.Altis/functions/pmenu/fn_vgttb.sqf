private['_fuXR','_kkZq','_xqk','_qEc'];disableSerialization;_fuXR = findDisplay 2700;_xqk = _fuXR displayCtrl 2702;lbClear _xqk;_qEc = [];{ if(player distance _x < 10) then { _qEc pushBackUnique _x; };} forEach playableUnits;{ if(!isNull _x && alive _x && player distance _x < 10 && _x != player) then { _xqk lbAdd format["%1 - %2",_x getVariable["aOsyc",name _x], side _x]; _xqk lbSetData [(lbSize _xqk)-1,str(_x)]; };} forEach _qEc;