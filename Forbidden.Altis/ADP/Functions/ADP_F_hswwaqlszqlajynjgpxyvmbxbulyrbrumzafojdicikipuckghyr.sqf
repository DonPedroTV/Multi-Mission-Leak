
#include <macro.h>
  private ["_vwdjxelnufztvkwfhdrbzyibkefrpdiejukldajmuwqjpyxravecingcmhsgfkh", "_vedvwkqjynrlqegxfzuueigqqoaqgrithqtqvoxzbnutscbkgkdbxibugzkppz","_isnlmqgddvfjmluobcppqwelgompiyjnfldacrjonuuhcrsflrenrmorlggaez","_qvdatqmmceggzdgqldslfhqiwasrxpidckpdihfdnrzdmcdevoeyaueecpuwtva","_takitjhitnhodxaeprkwyxneufrehdfpubbbegrrxgayyvacxravypxlvgmy","_rkcnzkqnkblgwdqngxgdpjfirwjqbvpsgrqfqapamvdzfbczkztfxnlpshcgivzcqcc"]; _qvdatqmmceggzdgqldslfhqiwasrxpidckpdihfdnrzdmcdevoeyaueecpuwtva = ctrlText 1400; if(parseNumber _qvdatqmmceggzdgqldslfhqiwasrxpidckpdihfdnrzdmcdevoeyaueecpuwtva == 0 && _qvdatqmmceggzdgqldslfhqiwasrxpidckpdihfdnrzdmcdevoeyaueecpuwtva != "0" && _qvdatqmmceggzdgqldslfhqiwasrxpidckpdihfdnrzdmcdevoeyaueecpuwtva != "wipe") exitWith {hint "Fel inputformat!";}; disableSerialization; _playerlist = 1500; 	 if((lbCurSel _playerlist) == -1) then { 	_vedvwkqjynrlqegxfzuueigqqoaqgrithqtqvoxzbnutscbkgkdbxibugzkppz = player; 	_vwdjxelnufztvkwfhdrbzyibkefrpdiejukldajmuwqjpyxravecingcmhsgfkh = true; } else { 	_TargetIdx = lbValue[_playerlist, (lbCurSel _playerlist)]; 	for "_idx" from 0 to (lbSize _playerlist) do { 		if(lbValue[_playerlist, (lbCurSel _playerlist)] == _TargetIdx) then { 			_vedvwkqjynrlqegxfzuueigqqoaqgrithqtqvoxzbnutscbkgkdbxibugzkppz = ADP_nameCache select _Targetidx; 			_vwdjxelnufztvkwfhdrbzyibkefrpdiejukldajmuwqjpyxravecingcmhsgfkh = true; 		}; 	}; };  if(_vwdjxelnufztvkwfhdrbzyibkefrpdiejukldajmuwqjpyxravecingcmhsgfkh) then { 	if(_qvdatqmmceggzdgqldslfhqiwasrxpidckpdihfdnrzdmcdevoeyaueecpuwtva == "wipe") exitWith { 		[2] remoteExec ["life_fnc_upibaduthlelhbvayfahnxwiqfgbmmqbfgbrkjooteqziqixwj",_vedvwkqjynrlqegxfzuueigqqoaqgrithqtqvoxzbnutscbkgkdbxibugzkppz]; 		hint format[localize "STR_m_ResettedPerks",name _vedvwkqjynrlqegxfzuueigqqoaqgrithqtqvoxzbnutscbkgkdbxibugzkppz]; 		[4,(getPlayerUID player),getPlayerUID _vedvwkqjynrlqegxfzuueigqqoaqgrithqtqvoxzbnutscbkgkdbxibugzkppz,"Perks reset","",profileName,name _vedvwkqjynrlqegxfzuueigqqoaqgrithqtqvoxzbnutscbkgkdbxibugzkppz,str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 	};  	_qvdatqmmceggzdgqldslfhqiwasrxpidckpdihfdnrzdmcdevoeyaueecpuwtva = parseNumber (ctrlText 1400); 	if(_qvdatqmmceggzdgqldslfhqiwasrxpidckpdihfdnrzdmcdevoeyaueecpuwtva == 0) exitWith {hint "You must specify a value in the box below first!";};  	if(_qvdatqmmceggzdgqldslfhqiwasrxpidckpdihfdnrzdmcdevoeyaueecpuwtva > 0) then { 		hint format[localize "STR_m_GrantedXP",name _vedvwkqjynrlqegxfzuueigqqoaqgrithqtqvoxzbnutscbkgkdbxibugzkppz,([_qvdatqmmceggzdgqldslfhqiwasrxpidckpdihfdnrzdmcdevoeyaueecpuwtva] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq)]; 		[4,(getPlayerUID player),getPlayerUID _vedvwkqjynrlqegxfzuueigqqoaqgrithqtqvoxzbnutscbkgkdbxibugzkppz,"Grant xp",([_qvdatqmmceggzdgqldslfhqiwasrxpidckpdihfdnrzdmcdevoeyaueecpuwtva] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq),profileName,name _vedvwkqjynrlqegxfzuueigqqoaqgrithqtqvoxzbnutscbkgkdbxibugzkppz,str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 	} else { 		_rkcnzkqnkblgwdqngxgdpjfirwjqbvpsgrqfqapamvdzfbczkztfxnlpshcgivzcqcc = -_qvdatqmmceggzdgqldslfhqiwasrxpidckpdihfdnrzdmcdevoeyaueecpuwtva; 		hint format[localize "STR_m_RemovedXP",name _vedvwkqjynrlqegxfzuueigqqoaqgrithqtqvoxzbnutscbkgkdbxibugzkppz,[_rkcnzkqnkblgwdqngxgdpjfirwjqbvpsgrqfqapamvdzfbczkztfxnlpshcgivzcqcc] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq]; 		[4,(getPlayerUID player),getPlayerUID _vedvwkqjynrlqegxfzuueigqqoaqgrithqtqvoxzbnutscbkgkdbxibugzkppz,"Removed xp",([_rkcnzkqnkblgwdqngxgdpjfirwjqbvpsgrqfqapamvdzfbczkztfxnlpshcgivzcqcc] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq),profileName,name _vedvwkqjynrlqegxfzuueigqqoaqgrithqtqvoxzbnutscbkgkdbxibugzkppz,str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 	}; 	[_qvdatqmmceggzdgqldslfhqiwasrxpidckpdihfdnrzdmcdevoeyaueecpuwtva,7,true] remoteExec ["life_fnc_earnXP",_vedvwkqjynrlqegxfzuueigqqoaqgrithqtqvoxzbnutscbkgkdbxibugzkppz]; };  