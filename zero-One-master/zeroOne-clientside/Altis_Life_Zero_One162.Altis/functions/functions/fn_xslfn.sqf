private['_OnU','_zpUP','_zaSo','_Klo','_obgb','_rIqb','_aaY','_tVWd','_NHBC','_FvQ','_NfH','_Mqq','_Mqq','_pndr','_Flzp','_nPMZ','_PuHt','_gyn','_nDg','_RfV','_giRV','_pKlU','_WaWb','_IQl','_pxIY'];_OnU = _this select 0;_zpUP = _this select 1;_zaSo = _this select 2;_Klo = _this select 3;_obgb = _this select 4;_rIqb = false;if (_obgb && _zpUP isEqualTo 62 && isNil "alt_f4") then { titleText["Alt + F4 wird dir da auch nicht helfen ;)","PLAIN"]; [format ["ALT F4: %1 (%2) drueckt Alt+F4", player getVariable["aOsyc",name player], playerSide],"zo_log",false,false] spawn zero_fnc_fdEkiHoij; [] spawn zero_fnc_nbxA; alt_f4 = true;[] spawn {uiSleep 5; alt_f4 = nil;}; _rIqb = true;};if(_Klo && visibleMap) exitWith {true};_aaY = if((actionKeys "User10") isEqualTo []) then {[219]} else {(actionKeys "User10")};_tVWd = if((actionKeys "User11") isEqualTo []) then {[221]} else {(actionKeys "User11")};_NHBC = if((actionKeys "User12") isEqualTo []) then {[42]} else {(actionKeys "User12")};_giRV = if((actionKeys "User20") isEqualTo []) then {[60]} else {(actionKeys "User20")};_FvQ = if((actionKeys "GetOver") isEqualTo []) then {[47]} else {(actionKeys "GetOver")};_NfH = if((actionKeys "Crouch") isEqualTo []) then {[44]} else {(actionKeys "Crouch")};_Mqq = if((actionKeys "Turbo") isEqualTo []) then {[42]} else {(actionKeys "Turbo")};_speakKey = if((actionKeys "PushToTalk") isEqualTo []) then {[58]} else {(actionKeys "PushToTalk")};_nDg = if((actionKeys "User13") isEqualTo []) then {[18]} else {(actionKeys "User13")};_RfV = if((actionKeys "User14") isEqualTo []) then {[16]} else {(actionKeys "User14")};_IQl = if((actionKeys "User15") isEqualTo []) then {[29]} else {(actionKeys "User15")};_pndr = actionKeys "ShowMap";_Flzp = [17,30,31,32]; if((_zpUP in (actionKeys "GetOver") || _zpUP in (actionKeys "salute")) && {(player getVariable ["GHdlZHW",false])}) exitWith { true;};if(_zpUP in _pndr) then { switch (playerSide) do { case west: {if(!visibleMap) then {[] spawn zero_fnc_zQT;};}; case independent: {if(!visibleMap) then {[] spawn zero_fnc_GpSlKcIla;[] spawn zero_fnc_txzp;};}; default {if(!visibleMap) then {[] spawn zero_fnc_whcxrn;};}; }; if(!isNil "dNLUxsImq") then { dNLUxsImq = nil; [] spawn { waitUntil{visibleMap}; mapAnimAdd [0, 1,getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition")]; mapAnimCommit; }; };};if(RuqfuBIBK) exitWith { if(!iqEbELlj && _zpUP in _Flzp) then {iqEbELlj = true;}; _rIqb;};switch (true) do {  case (_zpUP in _speakKey): { if (!(currentChannel in [3,4,5])) then { setCurrentChannel 5; hint "Zum Reden wechsel bitte immer in die direkte Kommunikation."; _rIqb = true; }; if(!KXldlwpsX) then { KXldlwpsX = true; if (ctrlText ((findDisplay 55) displayCtrl 101) == "\A3\ui_f\data\igui\rscingameui\rscdisplayvoicechat\microphone_ca.paa") then { if ((ctrlText ((findDisplay 63) displayCtrl 101) == localize "str_channel_direct")) then { player setVariable["speaking", true, true]; [] spawn { waitUntil {(isNull findDisplay 63) && (isNull findDisplay 55)}; player setVariable["speaking", false, true]; KXldlwpsX = false; }; } else { player setVariable["speaking", false, true]; KXldlwpsX = false; }; } else { player setVariable["speaking", false, true]; KXldlwpsX = false; }; }; };  case (_zpUP isEqualTo 41): { if(!IJFFlP) then { [] spawn { rxHUFMrH = ["lzMW","onEachFrame","zero_fnc_sSS"] call BIS_fnc_addStackedEventHandler; IJFFlP = true; uiSleep 60; [rxHUFMrH,"onEachFrame"] call BIS_fnc_removeStackedEventHandler; 500 cutRsc["kYdkbSo","PLAIN"]; IJFFlP = false; }; }; _rIqb = true; };  case (_zpUP isEqualTo 57): { if(isNil "OTtkPaaEs") then {OTtkPaaEs = 0;}; if(_zaSo && {animationState player != "AovrPercMrunSrasWrflDf"} && {isTouchingGround player} && {stance player == "STAND"} && {speed player > 2} && {!GNXNu} && {(velocity player) select 2 < 2.5} && {time - OTtkPaaEs > 5}) then { OTtkPaaEs = time; _all = []; {if (_x distance player < 350) then {_all pushBack _x};}forEach (allPlayers - entities "HeadlessClient_F"); [player,true] spawn zero_fnc_YaWry;  [player,false] remoteExecCall ["zero_fnc_YaWry",_all];  _rIqb = true; }; };  case (_zpUP isEqualTo 35): { if(_zaSo && {!_Klo} && {currentWeapon player != ""}) then { BVSMk = currentWeapon player; player action ["SwitchWeapon", player, player, 100]; player switchcamera cameraView; }; if(!_zaSo && {_Klo} && {!isNil "BVSMk"} && {(BVSMk != "")}) then { if(BVSMk in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then { player selectWeapon BVSMk; }; }; };  case (_zpUP in _aaY): { if(!(player getVariable["GHdlZHW",false])) then { if(!RuqfuBIBK) then { [] spawn { _pKlU = [] spawn zero_fnc_veEEUOH; waitUntil {scriptDone _pKlU}; }; }; }else{ hint localize "STR_General_Zipties_Error"; }; }; case (_zpUP in _giRV && {!isNil "zero_fnc_adminmenu"}): { if(!isNull (findDisplay 8000)) then { closeDialog 0; } else { createDialog "wEpyVwW"; }; _rIqb = true; };  case (_zpUP in _tVWd): { if(!RuqfuBIBK) then { if(([false,"redgull",1] call zero_fnc_VJhZQOJ)) then { DXcvaPJ = 100; [] spawn { qXBXOiei = time; CXx = true; titleText["Du kannst nun 3 Minuten sprinten","PLAIN"]; player enableFatigue false; player enableStamina false; player setFatigue 0; waitUntil {!alive player || ((time - qXBXOiei) > (3 * 60))}; titleText["Die RedGull Zeit ist abgelaufen","PLAIN"];  CXx = nil; TOfE = nil; }; }; }; }; case (_zpUP isEqualTo 19 && !_zaSo): { if(player getVariable["GHdlZHW",false]) then { _rIqb = true; }; };  case (_zpUP isEqualTo 19 && _zaSo): { _WaWb = cursorObject; if(isNull _WaWb || {!(_WaWb isKindOf "Man")}) then { _WaWb = (player nearEntities["Man", 1]) select 1; }; if(isNull _WaWb) exitWith {_rIqb = false;}; if(playerSide in [west,independent] && {(isPlayer _WaWb)} && {(side _WaWb in [civilian,east])} && {alive _WaWb} && {_WaWb distance player < 2} && {speed _WaWb < 1.5} && {!(_WaWb getVariable["rZf",false])} && {!(_WaWb getVariable["GHdlZHW",false])}) then { [_WaWb] spawn zero_fnc_LbCQK; }; _rIqb = true; };  case (_zpUP isEqualTo 24): { if(playerSide in [west,independent] && ((([20889,19224,0]) distance (position player)) > 500)) then { { if (_x animationPhase "Door_1_rot" == 1) then { _x animate ["Door_1_rot", 0]; } else { _x animate ["Door_1_rot", 1]; }; } forEach (nearestObjects [player, ["Land_BarGate_F"], 20]); _rIqb = true; } else { if(_zaSo) then { _WaWb = cursorObject; if(isNull _WaWb || {!(_WaWb isKindOf "Man")}) then { _WaWb = (player nearEntities["Man", 1]) select 1; }; if(isNull _WaWb) exitWith {_rIqb = false;}; if((isPlayer _WaWb) && ((([5502.12,15020.4,0]) distance (position player)) > 100) && {side _WaWb != independent} && {alive _WaWb} && {_WaWb distance player < 2} && {speed _WaWb < 1.5} && {!(_WaWb getVariable["rZf",false])} && {!(_WaWb getVariable["GHdlZHW",false])} && {!GNXNu}) then { if([false,"zipties",1] call zero_fnc_VJhZQOJ) then { [_WaWb] spawn zero_fnc_LbCQK; } else { hint localize "STR_NOTF_ZiptiesLack"; }; }; _rIqb = true; }; }; };  case (_zpUP in _nDg): { if(!dialog && !fOb && {(vehicle player == player)} && {(playerSide isEqualTo civilian || playerSide isEqualTo east)} && {!(player getVariable["GHdlZHW",false])}) then { [] spawn zero_fnc_lbNQDbJI; }; };  case (_zpUP isEqualTo 34): { if(_zaSo) then {_rIqb = true;}; if(_zaSo && playerSide != independent && {!isNull cursorObject} && {cursorObject isKindOf "Man"} && {isPlayer cursorObject} && {alive cursorObject} && {cursorObject distance player < 4} && {speed cursorObject < 1}) then { if((animationState cursorObject) != "Incapacitated" && (currentWeapon player == primaryWeapon player || currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !FWUTH && !(player getVariable["GHdlZHW",false]) && !LpefeFfmA) then { [cursorObject] spawn zero_fnc_sPLD; }; }; };  case (_zpUP isEqualTo 20): { if(!_obgb && !_Klo ) then { if (!isNil "trunk_in_use" && {(cursorObject in YPCst)} && {(cursorObject isKindOf "Car" || cursorObject isKindOf "Air" || cursorObject isKindOf "Ship")}) exitWith { titleRsc ["RGB","PLAIN"]; _display = (((uiNamespace getVariable "aWaQ") displayCtrl 5501) ctrlSetText "Bitte versuch es in ein paar Sekunden erneut."); }; [] spawn {  trunk_in_use = true; uiSleep 3; waitUntil {isNull (findDisplay 3100) || !alive Player}; uiSleep 3; trunk_in_use = nil; }; if(vehicle player != player && alive vehicle player) then { if((vehicle player) in YPCst) then { [vehicle player] spawn zero_fnc_KZxbGVbU; }; } else { if((cursorObject isKindOf "Car" || cursorObject isKindOf "Air" || cursorObject isKindOf "Ship") && player distance cursorObject < 7 && vehicle player == player && alive cursorObject) then { if(cursorObject in YPCst || {!(cursorObject getVariable ["locked",true])}) then { [cursorObject] spawn zero_fnc_KZxbGVbU; }; }; }; }; };  case (_zpUP isEqualTo 38): { if((_zaSo) && {vehicle player != player} && {((driver (vehicle player)) == player)} &&{ playerSide in [west,independent]}) exitWith { if(!isNil {vehicle player getVariable "lights"} && !mOOH && (typeOf vehicle player) in [ "I_MRAP_03_hmg_F", "I_MRAP_03_F", "B_MRAP_01_hmg_F", "C_Hatchback_01_sport_F", "B_Heli_Light_01_F", "C_Heli_Light_01_civil_F", "B_Heli_Transport_01_F", "B_Heli_Transport_01_camo_F", "I_Heli_light_03_F", "I_Heli_light_03_unarmed_F", "C_Hatchback_01_F", "C_SUV_01_F", "C_Offroad_01_repair_F", "C_Van_01_box_F", "C_Offroad_01_F", "B_MRAP_01_F", "I_Truck_02_medical_F", "O_Heli_Transport_04_medevac_F", "O_Heli_Light_02_unarmed_F", "I_Heli_Transport_02_F", "I_G_Offroad_01_armed_F", "B_APC_Wheeled_01_cannon_F", "O_Truck_03_ammo_F", "B_Heli_Transport_03_F", "B_Heli_Attack_01_F", "B_Boat_Transport_01_F", "C_Boat_Civil_01_police_F", "B_Boat_Armed_01_minigun_F", "I_Truck_02_box_F", "B_Truck_01_mover_F", "B_Truck_01_Repair_F", "O_Truck_03_repair_F", "B_Heli_Transport_03_unarmed_F", "O_Heli_Transport_04_F", "C_Boat_Civil_01_rescue_F", "O_MRAP_02_F", "O_Truck_02_box_F", "B_Truck_01_medical_F", "B_Truck_01_covered_F", "I_Truck_02_covered_F", "B_Quadbike_01_F" ]) then { [] spawn { mOOH = true; uiSleep 5; mOOH = false; }; [] call zero_fnc_IBS; }; _rIqb = true; }; if(!_obgb && !_Klo) then { [] spawn zero_fnc_scACSn; }; };  case (_zpUP isEqualTo 21): { if(!_obgb && !_Klo && !dialog && GmRPE) then { [] call zero_fnc_IFXrAr; }; };  case (_zpUP in _RfV): { if(!fOb && {(vehicle player == player)} && {(playerSide isEqualTo civilian || playerSide isEqualTo east)} && {!(player getVariable["GHdlZHW",false])}) then { _val = ["pickaxe",VfT] call zero_fnc_oKzQhZKu; if(_val != -1) then { [] spawn zero_fnc_HtjJlO;}; }; };  case (_zpUP isEqualTo 33): { _nPMZ = vehicle player; if(playerSide isEqualTo west && {!CAUkAjL} && {((_zaSo && (42 in _NHBC) && !(42 in _IQl)) || (_Klo && (29 in _NHBC) && !(29 in _IQl)) || (_obgb && (56 in _NHBC) && !(56 in _IQl))) } && {vehicle player != player }&& {((driver vehicle player) == player)}) exitWith { _all = []; {if (_x distance player < 2000) then {_all pushBack _x};}forEach (allPlayers - entities "HeadlessClient_F"); [_nPMZ,"Yawalla",11.5] remoteExec ["zero_fnc_XZlmVeo",_all]; _rIqb = true; }; if(playerSide isEqualTo west && {!CAUkAjL} && {((_zaSo && (42 in _IQl) && !(42 in _NHBC)) || (_Klo && (29 in _IQl) && !(29 in _NHBC)) || (_obgb && (56 in _IQl) && !(56 in _NHBC)))} && {vehicle player != player} && {((driver vehicle player) == player)}) exitWith { _all = []; {if (_x distance player < 2000) then {_all pushBack _x};}forEach (allPlayers - entities "HeadlessClient_F"); [_nPMZ,"CopYelp",2.5] remoteExec ["zero_fnc_XZlmVeo",_all]; _rIqb = true; }; if(playerSide isEqualTo independent && {!CAUkAjL} && {_zaSo} && {vehicle player != player} && {((driver vehicle player) == player)}) exitWith { _all = []; {if (_x distance player < 2000) then {_all pushBack _x};}forEach (allPlayers - entities "HeadlessClient_F"); [_nPMZ] remoteExec ["zero_fnc_ZvVx",_all]; _rIqb = true; }; if(!lhy && {(playerSide isEqualTo west || playerSide isEqualTo independent)} && {vehicle player != player} && {((driver vehicle player) == player)}) then { if(OyrzWrq) then { OyrzWrq = false; _nPMZ setVariable["AWHWgCAxM",false,true]; titleText [localize "STR_MISC_SirensOFF","PLAIN"]; } else { _sound = if(playerSide isEqualTo independent) then {"MedicSiren"}else{"SirenLong"}; _sleep = if(_sound == "SirenLong") then {4.2} else {4.4}; _sleep spawn { lhy = true; uiSleep _this; lhy = false; }; titleText [localize "STR_MISC_SirensON","PLAIN"]; _nPMZ setVariable["AWHWgCAxM",true,true]; _all = []; {if (_x distance player < 2000) then {_all pushBack _x};}forEach allplayers; [_nPMZ,_sound,player] remoteExec ["zero_fnc_PwfNh",_all]; }; _rIqb = true; }; };  case (_zpUP isEqualTo 22): { if(!_obgb && !_Klo && !_zaSo) then { if(vehicle player == player) then { _nPMZ = cursorObject; } else { _nPMZ = vehicle player; }; if(!VuMxvV) exitWith {}; VuMxvV = false; [] spawn { uiSleep 3; VuMxvV = true; }; if(_nPMZ isKindOf "House_F" && (playerSide isEqualTo civilian || playerSide isEqualTo east)) then { if(_nPMZ in YPCst && player distance _nPMZ < 8) then { _door = [_nPMZ] call zero_fnc_WVuwTsh; if(_door == 0) exitWith {hint localize "STR_House_Door_NotNear"}; _PuHt = _nPMZ getVariable [format["bis_disabled_Door_%1",_door],0]; if(_PuHt == 0) then { _nPMZ setVariable[format["bis_disabled_Door_%1",_door],1,true]; _nPMZ animate [format["door_%1_rot",_door],0]; systemChat localize "STR_House_Door_Lock"; } else { _nPMZ setVariable[format["bis_disabled_Door_%1",_door],0,true]; _nPMZ animate [format["door_%1_rot",_door],1]; systemChat localize "STR_House_Door_Unlock"; }; }; } else { _PuHt = locked _nPMZ; _gyn = _nPMZ getVariable["side",""]; _pxIY = if(((typeOf _nPMZ) find "B_T_VTOL_01_") isEqualTo -1) then {7}else{11}; if(player distance2D _nPMZ < _pxIY) then { if((_nPMZ in YPCst) || (_gyn == "cop" && playerSide isEqualTo west) || (_gyn == "med" && playerSide isEqualTo independent)) then { if(_PuHt == 2) then { if(local _nPMZ) then { _nPMZ lock 0; } else {  [_nPMZ,0] remoteExecCall ["zero_fnc_iIOeczsR",_nPMZ]; }; systemChat localize "STR_MISC_VehUnlock"; _nPMZ say3D "UnlockSound"; } else { if(local _nPMZ) then { _nPMZ lock 2; } else {  [_nPMZ,2] remoteExecCall ["zero_fnc_iIOeczsR",_nPMZ]; }; systemChat localize "STR_MISC_VehLock"; _nPMZ say3D "LockSound"; }; }; }; }; }else{ if(_zaSo && cjaz) then { cjaz = false; switch (player getVariable["gqGjWkH",0]) do { case 0: {titleText ["Ohrstöpsel 95% Abschwächung", "PLAIN DOWN"]; 1 fadeSound 0.05; player setVariable ["gqGjWkH", 95];}; case 95: {titleText ["Ohrstöpsel 75% Abschwächung", "PLAIN DOWN"]; 1 fadeSound 0.25; player setVariable ["gqGjWkH", 75];}; case 75: {titleText ["Ohrstöpsel 35% Abschwächung", "PLAIN DOWN"]; 1 fadeSound 0.65; player setVariable ["gqGjWkH", 35];}; case 35: {titleText ["Ohrstöpsel entfernt", "PLAIN DOWN"]; 1 fadeSound 1; player setVariable ["gqGjWkH", 0];}; }; playSound "earplug"; [] spawn { uiSleep 0.5; cjaz = true; }; }; }; };  case (_zpUP isEqualTo 79): { if(_zaSo) then {_rIqb = true;}; if ((_zaSo) && (vehicle player == player) && LYEP) then { LYEP = false; cutText [format["Pushup!!!!!!"], "PLAIN DOWN"]; player playMove "AmovPercMstpSnonWnonDnon_exercisePushup"; [] spawn { uiSleep 2; LYEP = true; }; }; };  case (_zpUP isEqualTo 80): { if(_zaSo) then {_rIqb = true;}; if ((_zaSo) && (vehicle player == player) && LYEP) then { LYEP = false; cutText [format["KneeBend Slow baby~"], "PLAIN DOWN"]; player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA"; [] spawn { uiSleep 2; LYEP = true; }; }; };  case (_zpUP isEqualTo 81): { if(_zaSo) then {_rIqb = true;}; if ((_zaSo) && (vehicle player == player) && LYEP) then { LYEP = false; cutText [format["KneeBend more Hard!!!Move!!Move!!"], "PLAIN DOWN"]; player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendB"; [] spawn { uiSleep 2; LYEP = true; }; }; };  case (_zpUP isEqualTo 75): { if(_zaSo) then {_rIqb = true;}; if ((_zaSo) && (vehicle player == player) && LYEP) then { LYEP = false; player playActionNow "gestureHi"; _rIqb = true; [] spawn { uiSleep 2; LYEP = true; }; }; };  case (_zpUP isEqualTo 76): { if(_zaSo) then {_rIqb = true;}; if ((_zaSo) && (vehicle player == player) && LYEP) then { LYEP = false; player playActionNow "gestureHiB"; _rIqb = true; [] spawn { uiSleep 2; LYEP = true; }; }; };  case (_zpUP isEqualTo 77): { if(_zaSo) then {_rIqb = true;}; if ((_zaSo) && (vehicle player == player) && LYEP) then { LYEP = false; player playActionNow "gestureHiC"; _rIqb = true; [] spawn { uiSleep 2; LYEP = true; }; }; };  case (_zpUP isEqualTo 36): { if(!_zaSo) then {_rIqb = true;}; if (_zaSo) then { if (vehicle player == player && !(player getVariable ["GHdlZHW", false]) && (animationState player) != "Incapacitated" && !LpefeFfmA && VuMxvV) then { if (player getVariable ["surrender", false]) then { player setVariable ["surrender", false, true]; _rIqb = true; } else { VuMxvV = false; [] spawn zero_fnc_QFXypmPT; [] spawn { uiSleep 4; VuMxvV = true; }; _rIqb = true; }; } else { _rIqb = true; }; }; }; case (_zpUP in _FvQ): { if (GNXNu) then{ _rIqb = true; }; }; case (_zpUP in _NfH): { if (GNXNu) then{ _rIqb = true; }; }; case (_zpUP in _Mqq): { if (GNXNu) then{ _rIqb = true; }; };};_rIqb;