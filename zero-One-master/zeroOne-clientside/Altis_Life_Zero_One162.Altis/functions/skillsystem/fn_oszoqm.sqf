private['_Euiy','_GGwj'];_GGwj = false;if(RuqfuBIBK) exitWith {};if(playerSide != independent) then { if(!([false,"medipack",1] call zero_fnc_VJhZQOJ)) exitWith {_GGwj = true; hint "Du brauchst ein Erste-Hilfe Kasten";};};if(_GGwj) exitWith {};RuqfuBIBK = true;player playMove "ainvpknlmstpslaywpstdnon_medic";waitUntil {animationState player == "ainvpknlmstpslaywpstdnon_medic" || !alive player || (vehicle player) != player};uiSleep 6;if(vehicle player != player || !alive player) exitWith {RuqfuBIBK = false;};_Euiy = ["selfhealing"] call zero_fnc_KTrFY;if(playerSide isEqualTo independent) then { player setDamage 0;} else { if((damage player) > _Euiy) then { player setDamage _Euiy; } else { player setDamage 0; };};["selfhealing"] call zero_fnc_aCCCro;uiSleep 1.5;player switchMove "amovpknlmstpsnonwnondnon";RuqfuBIBK = false;