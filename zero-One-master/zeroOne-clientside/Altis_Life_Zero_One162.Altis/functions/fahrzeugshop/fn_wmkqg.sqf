private['_qZe','_VTt','_qUNP','_IIj','_Chp','_XgV','_slk','_zppH','_lGIv','_drp','_KxLl','_GGy','_Den'];disableSerialization;switch GvdQnQ do { case 1: {  _qZe = findDisplay 2300; _qUNP = "Fehler. Bitte komm spaeter nochmal vorbei!"; _VTt = lbData[2309,lbCurSel 2309]; switch _VTt do { case "car": { _qUNP = "Autos sind ideal für Personentransport, mit ihnen ist man schnell und mobil!"; }; case "truck": { _qUNP = "LKWs sind die Monster auf der Insel, sie sind groß und stabil, außerdem haben sie eine hohe Lagerkapazität. Aber vorsichtig, sie sind bevorzugte Beute von Rebelen und nicht besonders schnell."; }; case "air": { _qUNP = "Luftfahrzeuge sind wahre Allzweckwaffen, mit ihnen ist mann schnell unterwegs, sie können eine hohe Anzahl an Personen transportieren und mit ihrer mittelgroßen Lagerkapazität kann man außerdem auch gut Farmen."; }; case "ship": { _qUNP = "Schiffe sind die einzigen Fahrzeuge, mit denen man auf dem Wasser schnell mobil ist, ideal um das Naturschutzgebiet zu erforschen."; }; case "kart": { _qUNP = "Ein Kart kann maximal 1 Person transportieren und hat eine sehr geringe Lagerkapazität, mit ihnen kann man lustige Rennen mit Freunden fahren."; }; }; (_qZe displayCtrl 2310) ctrlSetStructuredText parseText _qUNP;  yKUhh = lbCurSel 2309; }; case 2: {  _Chp = nearestObjects[QRVd,["Car","Ship","Submarine"],20]; if(!(_Chp isEqualTo [])) then { { deleteVehicle _x; } forEach _Chp; };  _Den = nearestObjects[QRVd,["Air"],20]; if(!(_Den isEqualTo [])) then { { if(!(isObjectHidden _x)) then { _x hideObject true; }; } forEach _Den; };  _IIj = (lbData[2309,(lbCurSel 2309)]); _vIndex = (lbValue[2309,(lbCurSel 2309)]); _basePrice = (getArray(missionConfigFile >> "zero_VehicleShops" >> (igKUdfvLH select 0) >> "vehicles") select _vIndex) select 1; _vehicleInfo = [_IIj] call zero_fnc_RInS; _XgV = getNumber(missionConfigFile >> "zero_CfgVehicles" >> _IIj >> "trunk"); if(_XgV == -1) then {_XgV = "None";}; pmPUtWIC = _basePrice; XFLaSXvp = round(_basePrice * 1.5); yIUsvW = round(XFLaSXvp*0.7); _qZe = findDisplay 2300; (_qZe displayCtrl 2307) ctrlSetStructuredText parseText "<t align='left'>Mietpreis: </t>"; (_qZe displayCtrl 2308) ctrlSetStructuredText parseText format["<t align='right' color='#8cff9b'>%1€</t>",[pmPUtWIC] call zero_fnc_nAnP]; (_qZe displayCtrl 2314) ctrlSetStructuredText parseText "<t align='left'>Kaufpreis: </t>"; (_qZe displayCtrl 2315) ctrlSetStructuredText parseText format["<t align='right' color='#8cff9b'>%1€</t>",[XFLaSXvp] call zero_fnc_nAnP]; (_qZe displayCtrl 2310) ctrlShow true; ((_qZe displayCtrl 2310)) ctrlSetStructuredText parseText format[ "Fahrzeuginformationen: <br/>" + (localize "STR_Shop_Veh_UI_MaxSpeed") + " %1 km/h<br/>" + (localize "STR_Shop_Veh_UI_HPower") + " %2<br/>" + (localize "STR_Shop_Veh_UI_PSeats") + " %3<br/>" + (localize "STR_Shop_Veh_UI_Trunk") + " %4<br/>" + (localize "STR_Shop_Veh_UI_Fuel") + " %5<br/>" + (localize "STR_Shop_Veh_UI_Armor") + " %6<br/>" + "Moegliche Versicherungskosten: <t color='#8cff9b'>%7€</t>", _vehicleInfo select 8, _vehicleInfo select 11, _vehicleInfo select 10, _XgV, _vehicleInfo select 12, _vehicleInfo select 9, [yIUsvW] call zero_fnc_nAnP ]; if(_IIj in [ "B_Heli_Light_01_F", "O_Heli_Light_02_unarmed_F", "I_Heli_Transport_02_F", "B_Heli_Transport_03_unarmed_F", "I_Plane_Fighter_03_AA_F", "B_Plane_CAS_01_F", "O_Plane_CAS_02_F", "O_Heli_Transport_04_bench_F", "O_Heli_Transport_04_covered_F", "O_Heli_Transport_04_box_F", "O_Heli_Attack_02_F", "O_Heli_Attack_02_black_F", "B_Heli_Transport_03_F", "B_Heli_Transport_01_F", "I_Heli_light_03_F", "B_Heli_Attack_01_F", "B_Heli_Transport_01_camo_F", "C_Heli_Light_01_civil_F", "I_Heli_light_03_unarmed_F", "O_Heli_Transport_04_medevac_F" ]) then {  { if(_x select 0 == _IIj) then { _slk = _x select 1; }; } forEach OkWYO; _slk hideObject false; } else {  _KxLl = [1472.19,28427.9,1232.35]; _KxLl set [2, ((_KxLl select 2) + 0.02)]; _slk = _IIj createVehicleLocal _KxLl; waitUntil {!isNil "_slk" && {!isNull _slk}}; _slk allowDamage false; _slk enableSimulation false; _slk setPosATL _KxLl; };  _drp = getArray(missionConfigFile >> "zero_CfgVehicles" >> _IIj >> "textures"); if(typeName _drp == typeName []) then { for "_i" from 0 to count(_drp)-1 do { if(((_drp select _i) select 1) == (igKUdfvLH select 2)) exitWith { _slk setObjectTexture [0, ((_drp select _i) select 2) select 0]; if((count ((_drp select _i) select 2)) >= 2) then { _slk setObjectTexture [1,((_drp select _i) select 2) select 1]; }; if((count ((_drp select _i) select 2)) >= 3) then { _slk setObjectTexture [2,((_drp select _i) select 2) select 2]; }; if((count ((_drp select _i) select 2)) >= 4) then { _slk setObjectTexture [3,((_drp select _i) select 2) select 3]; }; }; }; };  ttRwn = _IIj; HpRFhclYp = lbCurSel 2309; JEF = _slk;  [] spawn { ((findDisplay 2300) displayCtrl 2309) ctrlEnable false; uiSleep 2; ((findDisplay 2300) displayCtrl 2309) ctrlEnable true; }; }; case 3: { _qZe = findDisplay 2300; (_qZe displayCtrl 2307) ctrlSetStructuredText parseText "<t align='left'>Mietpreis: </t>"; (_qZe displayCtrl 2308) ctrlSetStructuredText parseText format["<t align='right' color='#8cff9b'>%1€</t>",[pmPUtWIC] call zero_fnc_nAnP]; (_qZe displayCtrl 2314) ctrlSetStructuredText parseText "<t align='left'>Kaufpreis: </t>"; (_qZe displayCtrl 2315) ctrlSetStructuredText parseText format["<t align='right' color='#8cff9b'>%1€</t>",[XFLaSXvp] call zero_fnc_nAnP];  if(lbData[2311,(lbCurSel 2311)] != "Default") then { _zppH = call compile format["%1", lbData[2311,(lbCurSel 2311)]]; }; if(isNil "_zppH") then { _zppH = "Default"; } else { JEF setObjectTexture [0,(_zppH select 2) select 0];  if((count (_zppH select 2))>=2) then { JEF setObjectTexture [1,(_zppH select 2) select 1];  }; if((count (_zppH select 2))>=3) then { JEF setObjectTexture [2,(_zppH select 2) select 2];  }; if((count (_zppH select 2))>=4) then { JEF setObjectTexture [3,(_zppH select 2) select 3];  }; };  atyEIeu = lbCurSel 2311; KqkfofFA = _zppH; }; case 4:{ if((lbData[2311,(lbCurSel 2311)]) == "Default" || (lbData[2311,(lbCurSel 2311)]) == "disabled") then { _lGIv = 1; } else { _lGIv = getNumber(missionConfigFile >> "zero_CfgMaterials" >> (lbData[2311,(lbCurSel 2311)]) >> "value"); }; _qZe = findDisplay 2300; (_qZe displayCtrl 2307) ctrlSetStructuredText parseText "<t align='left'>Mietpreis: </t>"; (_qZe displayCtrl 2308) ctrlSetStructuredText parseText format["<t align='right' color='#8cff9b'>%1€</t>",[pmPUtWIC * _lGIv] call zero_fnc_nAnP]; (_qZe displayCtrl 2314) ctrlSetStructuredText parseText "<t align='left'>Kaufpreis: </t>"; (_qZe displayCtrl 2315) ctrlSetStructuredText parseText format["<t align='right' color='#8cff9b'>%1€</t>",[XFLaSXvp * _lGIv] call zero_fnc_nAnP]; if(daytime > 19.75 || daytime < 5.40) then { if(((getNumber(missionConfigFile >> "zero_CfgMaterials" >> (lbData[2311,(lbCurSel 2311)]) >> "daySkin")) == 1) || (lbData[2311,(lbCurSel 2311)]) == "Default") then { if((getDammage QRVd) > 0) then { QRVd setDamage 0; xma setDamage 0; gOICKiigv setDamage 0; RhhQU setDamage 0; }; } else { if((getDammage QRVd) == 0) then { QRVd setDamage 0.95; xma setDamage 0.95; gOICKiigv setDamage 0.95; RhhQU setDamage 0.95; }; }; }; if((lbData[2311,(lbCurSel 2311)]) != "disabled" && (lbData[2311,(lbCurSel 2311)]) != "Default") then { switch (ttRwn) do { case "C_Offroad_02_unarmed_F": { _GGy = [0]; }; case "B_T_LSV_01_armed_F": { _GGy = [0,1,3]; }; case "B_T_LSV_01_unarmed_F": { _GGy = [0,1,3]; }; case "O_T_LSV_02_unarmed_F": { _GGy = [0,1,3]; }; case "C_Plane_Civil_01_F": { _GGy = [0,1]; }; case "C_Offroad_01_F": { _GGy = [0]; }; case "B_G_Offroad_01_F": { _GGy = [0]; }; case "B_MRAP_01_F": { _GGy = [0]; }; case "I_MRAP_03_F": { _GGy = [0]; }; case "I_MRAP_03_F": { _GGy = [0]; }; default { _GGy = []; for "_i" from 0 to (count(getArray(configfile >> "CfgVehicles" >> ttRwn >> "hiddenSelectionsTextures")) -1) do { _GGy pushBack _i; }; }; }; { JEF setObjectMaterial [_x,getText(missionConfigFile >> "zero_CfgMaterials" >> (lbData[2311,(lbCurSel 2311)]) >> "path")]; } forEach _GGy; }; if((lbData[2311,(lbCurSel 2311)]) == "Default" && playerSide in [civilian, east] && !isNil "CZprHUqvI") then { for "_i" from 0 to (count(getArray(configfile >> "CfgVehicles" >> ttRwn >> "hiddenSelectionsTextures")) -1) do { JEF setObjectMaterial [_i,"A3\data_f\default.rvmat"]; }; } else { if((lbData[2311,(lbCurSel 2311)]) == "Default" && playerSide in [civilian, east] && (JEF isKindOf "Air")) then { for "_i" from 0 to (count(getArray(configfile >> "CfgVehicles" >> ttRwn >> "hiddenSelectionsTextures")) -1) do { JEF setObjectMaterial [_i,"A3\data_f\default.rvmat"]; }; }; }; if(getNumber(missionConfigFile >> "zero_CfgMaterials" >> (lbData[2311,(lbCurSel 2311)]) >> "donator") <= (PHIQ)) then { oPw = (lbData[2311,(lbCurSel 2311)]); IcEcQoc = lbCurSel 2311; } else { oPw = "disabled"; IcEcQoc = 0; }; if(lbCurSel 2311 != 0) then { CZprHUqvI = false; }; jeL = (pmPUtWIC * _lGIv); UDI = (XFLaSXvp * _lGIv); }; case 5:{ MASDXOyJ = (lbData[2309,(lbCurSel 2309)]); if((MASDXOyJ) == "buyInsurance") then { ((findDisplay 2300) displayCtrl 2315) ctrlSetStructuredText parseText format["<t align='right' color='#8cff9b'>%1€</t>",[UDI + yIUsvW] call zero_fnc_nAnP]; } else { ((findDisplay 2300) displayCtrl 2315) ctrlSetStructuredText parseText format["<t align='right' color='#8cff9b'>%1€</t>",[UDI] call zero_fnc_nAnP]; }; }; default { PntTYvdvD = false; };};