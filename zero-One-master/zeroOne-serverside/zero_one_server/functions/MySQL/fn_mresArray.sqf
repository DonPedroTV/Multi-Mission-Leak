/* 
 File: fn_mresArray.sqf 
*/ 
private["_array","_sel"]; 
_array = param[0,[],[[]]]; 
_array = str(str(_array)); 
_array = toArray(_array); 
 
for "_i" from 0 to (count _array)-1 do { 
 _sel = _array select _i; 
 if((_i != 0 && _i != ((count _array)-1))) then { 
  if(_sel == 34) then { 
   _array set[_i,96]; 
  }; 
 }; 
}; 
_array set [0,39]; 
_array set [((count _array)-1),39]; 
toString(_array); 
