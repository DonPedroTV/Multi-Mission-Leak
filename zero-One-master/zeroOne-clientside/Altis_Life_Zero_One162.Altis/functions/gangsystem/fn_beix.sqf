waitUntil {!isNil "HC1_owner"};private['_DMqV','_GGwj','_Pgg','_iATT','_Abmm','_ddP','_wwfj','_PdK','_CMwD','_bhk','_QflC','_YYze','_yZIM','_Ddl','_GlE','_pKlU'];_DMqV = param[0,"",["",[]]];_convert = param[1,false,[false]];if(_DMqV isEqualTo "") exitWith {hint format ["Es ist ein Fehler aufgetreten. %1",_DMqV];};_GGwj = false;if(_convert) then { hc_getGangname = [clientOwner,_DMqV]; HC1_owner publicVariableClient "hc_getGangname"; hc_getGangname = nil; waitUntil {!isNil "IGC"}; if(IGC isEqualTo []) exitWith {_GGwj = true;}; if(count _DMqV > 1) then { _action = [ parseText format["In welcher Gang möchtest du als %1 spielen?",if(playerSide isEqualTo civilian)then{"Zivilist"}else{"Rebell"}], "Gangauswahl", format["%1",IGC select 0], format["%1",IGC select 1] ] call BIS_fnc_guiMessage; _DMqV = if(_action) then {(_DMqV select 0) select 0}else{(_DMqV select 1) select 0}; }else{ _DMqV = (_DMqV select 0) select 0; }; IGC = nil; hc_updateGang = [clientOwner,8,[_DMqV, getPlayerUID player, playerSide]]; HC1_owner publicVariableClient "hc_updateGang"; hc_updateGang = nil;};if(_GGwj) exitWith {};{ _Pgg = _x getVariable["HNCqyH",[]]; if (!(_Pgg isEqualTo [])) then { _iATT = _Pgg select 0; if(_DMqV == _iATT) then { _GlE = _x; _GGwj = true; }; }; if(_GGwj) exitWith {};} forEach allGroups;if (_GGwj) exitWith { _GGwj = false; _Pgg = _GlE getVariable["HNCqyH",[]]; if(_Pgg isEqualTo []) exitWith {}; _Abmm = _Pgg select 2; if(_Abmm == (getPlayerUID player)) then { _pKlU = _GlE spawn {[player] joinSilent _this}; waitUntil {scriptDone _pKlU}; player setRank "COLONEL"; _GlE selectLeader player; _ddP = _Pgg select 3; _wwfj = [getPlayerUID player, _ddP] call zero_fnc_oKzQhZKu; if (_wwfj != -1) then { _PdK = _ddP select _wwfj; if(count _PdK != 3) then { _PdK pushBack (player getVariable["aOsyc",name player]); _ddP set[_wwfj,_PdK]; hc_updateGang = [clientOwner,0,[_Pgg select 0,_ddP]]; HC1_owner publicVariableClient "hc_updateGang"; hc_updateGang = nil; (group player) setVariable["HNCqyH",[_Pgg select 0,_Pgg select 1,_Pgg select 2,_ddP,_Pgg select 4,_Pgg select 5,_Pgg select 6,""],true]; }else{ if((_PdK select 2) != (player getVariable["aOsyc",name player])) then { _PdK set[2,(player getVariable["aOsyc",name player])]; _ddP set[_wwfj,_PdK]; hc_updateGang = [clientOwner,0,[_Pgg select 0,_ddP]]; HC1_owner publicVariableClient "hc_updateGang"; hc_updateGang = nil; (group player) setVariable["HNCqyH",[_Pgg select 0,_Pgg select 1,_Pgg select 2,_ddP,_Pgg select 4,_Pgg select 5,_Pgg select 6,""],true]; }; }; }; }else{ _ddP = _Pgg select 3; _wwfj = [getPlayerUID player, _ddP] call zero_fnc_oKzQhZKu; if (_wwfj isEqualTo -1) then { _GGwj = true; }else{ _pKlU = _GlE spawn {[player] joinSilent _this}; waitUntil {scriptDone _pKlU}; _PdK = _ddP select _wwfj; _CMwD = _PdK select 1; switch (_CMwD) do { case 1: {player setRank "CORPORAL";}; case 2: {player setRank "SERGEANT";}; case 3: {player setRank "LIEUTENANT";}; case 4: {player setRank "CAPTAIN";}; case 5: {player setRank "MAJOR";}; case 6: {player setRank "COLONEL";}; default {player setRank "PRIVATE";}; }; if(count _PdK != 3) then { _PdK pushBack (player getVariable["aOsyc",name player]); _ddP set[_wwfj,_PdK]; hc_updateGang = [clientOwner,0,[_Pgg select 0,_ddP]]; HC1_owner publicVariableClient "hc_updateGang"; hc_updateGang = nil; (group player) setVariable["HNCqyH",[_Pgg select 0,_Pgg select 1,_Pgg select 2,_ddP,_Pgg select 4,_Pgg select 5,_Pgg select 6,""],true]; }else{ if((_PdK select 2) != (player getVariable["aOsyc",name player])) then { _PdK set[2,(player getVariable["aOsyc",name player])]; _ddP set[_wwfj,_PdK]; hc_updateGang = [clientOwner,0,[_Pgg select 0,_ddP]]; HC1_owner publicVariableClient "hc_updateGang"; hc_updateGang = nil; (group player) setVariable["HNCqyH",[_Pgg select 0,_Pgg select 1,_Pgg select 2,_ddP,_Pgg select 4,_Pgg select 5,_Pgg select 6,""],true]; }; }; }; }; if(_GGwj) then { [player] joinSilent grpNull; QSo = true; }else{ [_GlE] call zero_fnc_cPMFz; if(_GlE getVariable["gangAnnounce",false] && !(zero_gang_flag getVariable["gangFightEnded",false])) then { if(zero_gang_flag getVariable["gangFight",-1] > 0) then {  [((30*60)-(serverTime - (zero_gang_flag getVariable "gangFight")))/60] spawn zero_fnc_ndls; }else{  [((10*60)-(serverTime - ((zero_gang_flag getVariable "gangAnnounce") select 0)))/60,true] spawn zero_fnc_ndls; }; }; };};hc_initGang = [clientOwner,_DMqV,getPlayerUID player];HC1_owner publicVariableClient "hc_initGang";hc_initGang = nil;waitUntil {!isNil "IGC"};if(IGC isEqualTo [] || count IGC != 7) exitWith { IGC = nil; QSo = true;};_pKlU = [] spawn {[player] joinSilent grpNull;};_bhk = IGC select 0;_Abmm = IGC select 1;_ddP = IGC select 2;_QflC = IGC select 3;_YYze = IGC select 4;_YYze = parseNumber(_YYze);_yZIM = IGC select 5;IGC = nil;waitUntil {scriptDone _pKlU};_wwfj = [getPlayerUID player, _ddP] call zero_fnc_oKzQhZKu;if (_wwfj != -1) then { _PdK = _ddP select _wwfj; if(count _PdK != 3) then { _PdK pushBack (player getVariable["aOsyc",name player]); _ddP set[_wwfj,_PdK]; hc_updateGang = [clientOwner,0,[_DMqV,_ddP]]; HC1_owner publicVariableClient "hc_updateGang"; hc_updateGang = nil; }else{ if((_PdK select 2) != (player getVariable["aOsyc",name player])) then { _PdK set[2,(player getVariable["aOsyc",name player])]; _ddP set[_wwfj,_PdK]; hc_updateGang = [clientOwner,0,[_DMqV,_ddP]]; HC1_owner publicVariableClient "hc_updateGang"; hc_updateGang = nil; }; };};(group player) setVariable["HNCqyH",[_DMqV,_bhk,_Abmm,_ddP,_QflC,_YYze,_yZIM,""],true];[(group player)] call zero_fnc_cPMFz;if(zero_gang_flag getVariable["gangControl","-1"] isEqualTo _DMqV) then { zero_gang_flag setVariable["gangControlGroup",(group player), true]; "Gang_Eroberung_1" setMarkerText format ["Gang Eroberung - %1",_bhk];};if((group player) getVariable["gangAnnounce",false] && !(zero_gang_flag getVariable["gangFightEnded",false])) then { if(zero_gang_flag getVariable["gangFight",-1] > 0) then {  [((30*60)-(serverTime - (zero_gang_flag getVariable "gangFight")))/60] spawn zero_fnc_ndls; }else{  [((10*60)-(serverTime - ((zero_gang_flag getVariable "gangAnnounce") select 0)))/60,true] spawn zero_fnc_ndls; };};