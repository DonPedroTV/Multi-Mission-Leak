private['_Wuh','_kMp','_kNi'];_kMp = param[0,ObjNull,[ObjNull]];if(isNull _kMp || _kMp != player || GNXNu) exitWith {};_Wuh = param[1,false,[false]];_kNi = param[2,15,[0]];[1] call zero_fnc_VeDiANxeM;player setVariable["GHdlZHW",false,true];player setVariable["rZf",false,true];player setVariable["uEkcJLUYu",false,true];titleText[localize "STR_Jail_Warn","PLAIN"];hint localize "STR_Jail_LicenseNOTF";player setPos (getMarkerPos "jail_marker");if(_Wuh) then { waitUntil {alive player}; uiSleep 1;};if(player distance (getMarkerPos "jail_marker") > 40) then {player setPos (getMarkerPos "jail_marker");};{ _index = [_x,VfT] call zero_fnc_oKzQhZKu; if(_index != -1) then { [false,_x,(VfT select _index) select 1] call zero_fnc_VJhZQOJ; };}forEach ["heroinu","heroinp","cocaine","cocainep","turtle","cannabis","marijuana","dunklematerie","lockpick","blastingcharge","boltcutter","zipties","moonshine","tuna"];GNXNu = true;removeAllWeapons player;{player removeMagazine _x} foreach (magazines player);[player,_Wuh,_kNi] remoteExec ["zero_fnc_jailSys",2];[] call zero_fnc_nbxA;