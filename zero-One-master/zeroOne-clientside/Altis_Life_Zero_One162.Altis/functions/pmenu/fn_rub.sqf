private['_qZe','_Chp','_nhUh','_qEc','_Hdzn','_QlQ','_rKJB','_nPMZ'];disableSerialization;waitUntil {!isNull (findDisplay 2700)};_qZe = findDisplay 2700;_Chp = _qZe displayCtrl 2701;lbClear _Chp;_nhUh = _qZe displayCtrl 2702;lbClear _nhUh;for "_i" from 0 to (count YPCst)-1 do { _nPMZ = YPCst select _i; if(!isNull _nPMZ && alive _nPMZ) then { _QlQ = getText(configFile >> "CfgVehicles" >> (typeOf _nPMZ) >> "displayName"); _Hdzn = getText(configFile >> "CfgVehicles" >> (typeOf _nPMZ) >> "picture"); _Chp lbAdd format["%1 %3 - [Distance: %2m]",_QlQ,round(player distance _nPMZ),(_nPMZ getVariable["ark_vehicle_color","Unbekannt"])]; if(_Hdzn != "pictureStaticObject") then { _Chp lbSetPicture [(lbSize _Chp)-1,_Hdzn]; }; _Chp lbSetData [(lbSize _Chp)-1,str(_i)]; };};if(((lbSize _Chp)-1) isEqualTo -1) then { _Chp lbAdd localize "STR_Global_No_veh"; _Chp lbSetData [(lbSize _Chp)-1,str(ObjNull)];};