 private ["_jmmyurlkxcdmygsbfotybsqajssrjpunvtaxsaurkitukrdsfxfuptmwtkudjzj","_absbszmdifevhmusdlmqawtgvdrnczzhexsuzqejvgmjdewaebudgbvirxhv","_bteinvfpyovezhuzlcyvnzskbmzqvhspoaydyopofsylimwyklqgqewstxgolqrg","_yjcavccmuqukowgdffwukfvifxtsfmeseeynmjwhnsosxgvibegokukbrvpa","_plontmgabwxboauhtmwvxhpcbrfqogjyuxdujwmoflrcvgtnjnbhqjgfgyeadpfadlzj","_nknjselgsxcorduulaibbumslqshvsicgkhsjyuvxvqcszlcymwnerchxwwvmmxnex","_wfvkupvkrmtygdyirybdufuymfyxskzytokxhfkalkybjnohwxqazmarmdsnmegamqjnz","_rfyyifffsfarbyotebdlmphkmvvkquxkmvfkyqsrpatodorrlbeunwcneoipy","_xdaodyqfvouxbwcfpobngwyrpwgibpiewdideyxddawwplabewdbgukmacowtu","_axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosol","_dauhbcnixqrfgobiepzukoaxapytvusexjpphgeohegxwuvglmyldfroahva","_moywwewatxfbbgcxhirzgbazyjcscvqairqtvermyvcciqitkwkcoiqyfrgrinsprszp","_axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosolTime","_nrzfydrdrdqzuvlecuenztlzvhrafhhkmvukamamqasaymnqoancprikhwkb","_ppltlkpwbyishgppelbtrnjlsglitvepmkzejoktdcrcmsaaujdnbmumnphzkxw","_absbszmdifevhmusdlmqawtgvdrnczzhexsuzqejvgmjdewaebudgbvirxhvSize"];  _jmmyurlkxcdmygsbfotybsqajssrjpunvtaxsaurkitukrdsfxfuptmwtkudjzj = [_this,0,0,[0]] call BIS_fnc_param; _absbszmdifevhmusdlmqawtgvdrnczzhexsuzqejvgmjdewaebudgbvirxhv = ctrlText 1400; _plontmgabwxboauhtmwvxhpcbrfqogjyuxdujwmoflrcvgtnjnbhqjgfgyeadpfadlzj = ctrlText 1450;  if(isNil "event_startAbort") then {event_startAbort = false};   if(_absbszmdifevhmusdlmqawtgvdrnczzhexsuzqejvgmjdewaebudgbvirxhv in ["custom","koth"] && (_plontmgabwxboauhtmwvxhpcbrfqogjyuxdujwmoflrcvgtnjnbhqjgfgyeadpfadlzj == "" OR (parseNumber _plontmgabwxboauhtmwvxhpcbrfqogjyuxdujwmoflrcvgtnjnbhqjgfgyeadpfadlzj) == 0)) exitWith {hint localize "STR_m_EventMustMaxDist";}; _wfvkupvkrmtygdyirybdufuymfyxskzytokxhfkalkybjnohwxqazmarmdsnmegamqjnz = if(surfaceIsWater (getPos player)) then {getPosASL player} else {getPosATL player};  _bteinvfpyovezhuzlcyvnzskbmzqvhspoaydyopofsylimwyklqgqewstxgolqrg = switch (_absbszmdifevhmusdlmqawtgvdrnczzhexsuzqejvgmjdewaebudgbvirxhv) do { 	case "hopp_1": {[15726.4,5647.02,6.00743]}; 	case "knockout": {[23401.2,18791,0]}; 	case "custom": {_wfvkupvkrmtygdyirybdufuymfyxskzytokxhfkalkybjnohwxqazmarmdsnmegamqjnz}; 	case "koth": {_wfvkupvkrmtygdyirybdufuymfyxskzytokxhfkalkybjnohwxqazmarmdsnmegamqjnz}; 	default {[]}; }; if(count _bteinvfpyovezhuzlcyvnzskbmzqvhspoaydyopofsylimwyklqgqewstxgolqrg == 0) then {_bteinvfpyovezhuzlcyvnzskbmzqvhspoaydyopofsylimwyklqgqewstxgolqrg = var_base getVariable ["EventStartPos",[]]};   switch (_jmmyurlkxcdmygsbfotybsqajssrjpunvtaxsaurkitukrdsfxfuptmwtkudjzj) do { 	case 0: {  		if(count _bteinvfpyovezhuzlcyvnzskbmzqvhspoaydyopofsylimwyklqgqewstxgolqrg == 0) exitWith {hint (localize "STR_m_NoArenaSelected")}; 		if(count (var_base getVariable ["EventStartPos",[]]) > 0) exitWith {hint localize "STR_m_EventAlreadyActive";}; 		 		hint format["Du har skapat eventet %1",_absbszmdifevhmusdlmqawtgvdrnczzhexsuzqejvgmjdewaebudgbvirxhv]; 		 		[_jmmyurlkxcdmygsbfotybsqajssrjpunvtaxsaurkitukrdsfxfuptmwtkudjzj,_absbszmdifevhmusdlmqawtgvdrnczzhexsuzqejvgmjdewaebudgbvirxhv,_bteinvfpyovezhuzlcyvnzskbmzqvhspoaydyopofsylimwyklqgqewstxgolqrg,_plontmgabwxboauhtmwvxhpcbrfqogjyuxdujwmoflrcvgtnjnbhqjgfgyeadpfadlzj] remoteExec ["TON_fnc_wflwyyqdjzlibhloiigzcmijpqfreefdwckfmzkgcxbrbmiflbzskrgfcp",2]; 		 		[4,(getPlayerUID player),"-","Event create",_absbszmdifevhmusdlmqawtgvdrnczzhexsuzqejvgmjdewaebudgbvirxhv,profileName,"-",str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 	}; 	 	case 1: {  		if(var_base getVariable ["event_is_starting",false]) exitWith {}; 		if(count (var_base getVariable ["EventStartPos",[]]) == 0) exitWith {hint localize "STR_m_NoEventActive";}; 		if((var_base getVariable ["event_started",false]) && (var_base getVariable ["active_event",""]) != "custom") exitWith {hint localize "STR_m_EventAlreadyStarted"}; 		if(((var_base getVariable ["active_event",""]) == "koth") && count (var_base getVariable ["event_koth_area",[]]) == 0) exitWith {hint "Definera alltid en King of the Hill-cirkel innan du startar!";}; 		_absbszmdifevhmusdlmqawtgvdrnczzhexsuzqejvgmjdewaebudgbvirxhv = (var_base getVariable ["active_event",""]); 		 		 		_ppltlkpwbyishgppelbtrnjlsglitvepmkzejoktdcrcmsaaujdnbmumnphzkxw = ctrlText 1400; 		if(_ppltlkpwbyishgppelbtrnjlsglitvepmkzejoktdcrcmsaaujdnbmumnphzkxw == "") then {_ppltlkpwbyishgppelbtrnjlsglitvepmkzejoktdcrcmsaaujdnbmumnphzkxw = 10} else {_ppltlkpwbyishgppelbtrnjlsglitvepmkzejoktdcrcmsaaujdnbmumnphzkxw = (parseNumber _ppltlkpwbyishgppelbtrnjlsglitvepmkzejoktdcrcmsaaujdnbmumnphzkxw) * 60}; 		if (_ppltlkpwbyishgppelbtrnjlsglitvepmkzejoktdcrcmsaaujdnbmumnphzkxw > 600) exitWith {hint "Max 10 minuter i starttid!";}; 		if(_ppltlkpwbyishgppelbtrnjlsglitvepmkzejoktdcrcmsaaujdnbmumnphzkxw < 0) then {_ppltlkpwbyishgppelbtrnjlsglitvepmkzejoktdcrcmsaaujdnbmumnphzkxw = -1;}; 		 		[_absbszmdifevhmusdlmqawtgvdrnczzhexsuzqejvgmjdewaebudgbvirxhv,_ppltlkpwbyishgppelbtrnjlsglitvepmkzejoktdcrcmsaaujdnbmumnphzkxw] remoteExec ["TON_fnc_ionnshoqngunpratpdeetcwcveudupboohkkskyrvzlvsncgabeasqd",2]; 		 		[4,(getPlayerUID player),"-","Event start",_absbszmdifevhmusdlmqawtgvdrnczzhexsuzqejvgmjdewaebudgbvirxhv,profileName,"-",str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 	}; 	 	case 2: {  		if(!(var_base getVariable ["event_started",false]) && !((var_base getVariable ["active_event",""]) == "knockout")) exitWith {hint "Inget event startat!";}; 		[4,(getPlayerUID player),"-","Pausa event",(var_base getVariable ["active_event",""]),profileName,"-",str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 		[2,ctrlText 1400,parseNumber (ctrlText 1450)] remoteExec ["TON_fnc_wflwyyqdjzlibhloiigzcmijpqfreefdwckfmzkgcxbrbmiflbzskrgfcp",2]; 	};  	case 3: {  		if(var_base getVariable ["autoEventRunning",false]) exitWith {hint "Ett auto-event körs, avsluta det istället!";}; 		[3] remoteExec ["TON_fnc_wflwyyqdjzlibhloiigzcmijpqfreefdwckfmzkgcxbrbmiflbzskrgfcp",2]; 		hint "Du har avslutat eventet"; 		[4,(getPlayerUID player),"-","Avsluta event",_absbszmdifevhmusdlmqawtgvdrnczzhexsuzqejvgmjdewaebudgbvirxhv,profileName,"-",str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 	}; 	 	case 4: {  		_absbszmdifevhmusdlmqawtgvdrnczzhexsuzqejvgmjdewaebudgbvirxhv = (var_base getVariable ["active_event",""]); 		if(_absbszmdifevhmusdlmqawtgvdrnczzhexsuzqejvgmjdewaebudgbvirxhv == "") exitWith {hint localize "STR_m_NoEventActive";}; 		 		 		private ["_ujtzruvkzmnwqiipctunyraaqcubqlwrrutyqvwmdpgoojujgwfofpdwxcfr", "_lrvufycmoejihalknnsvjdmibiousckuffvqefouyrbzpphciefesimaxkdvnloaqbd"]; 		disableSerialization; 		_playerlist = 1500; 		 		if((lbCurSel _playerlist) == -1) then { 			_lrvufycmoejihalknnsvjdmibiousckuffvqefouyrbzpphciefesimaxkdvnloaqbd = player; 			_ujtzruvkzmnwqiipctunyraaqcubqlwrrutyqvwmdpgoojujgwfofpdwxcfr = true; 		} else { 			_TargetIdx = lbValue[_playerlist, (lbCurSel _playerlist)]; 			for "_idx" from 0 to (lbSize _playerlist) do { 				if(lbValue[_playerlist, (lbCurSel _playerlist)] == _TargetIdx) then { 					_lrvufycmoejihalknnsvjdmibiousckuffvqefouyrbzpphciefesimaxkdvnloaqbd = ADP_nameCache select _Targetidx; 					_ujtzruvkzmnwqiipctunyraaqcubqlwrrutyqvwmdpgoojujgwfofpdwxcfr = true; 				}; 			}; 		};  		if (_ujtzruvkzmnwqiipctunyraaqcubqlwrrutyqvwmdpgoojujgwfofpdwxcfr) then 		{ 			[5] remoteExec ["life_fnc_vxzmfzvlijcmojhjimlsmqcbanjbfypcqvaeuzaccmwmrlxsuvj",_lrvufycmoejihalknnsvjdmibiousckuffvqefouyrbzpphciefesimaxkdvnloaqbd]; 			[4,(getPlayerUID player),(getPlayerUID _lrvufycmoejihalknnsvjdmibiousckuffvqefouyrbzpphciefesimaxkdvnloaqbd),"Event kick/invite",_absbszmdifevhmusdlmqawtgvdrnczzhexsuzqejvgmjdewaebudgbvirxhv,profileName,(name _lrvufycmoejihalknnsvjdmibiousckuffvqefouyrbzpphciefesimaxkdvnloaqbd),str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 		}; 	}; 	 	case 5: {  		if(var_base getVariable ["EventJoiningDisabled",false]) then { 			hint "Du har låst upp eventet"; 			[0,localize "STR_m_EventUnlocked",false,"inEventGame"] remoteExec ["life_fnc_broadcast",-2]; 			var_base setVariable ["EventJoiningDisabled",false,true]; 		} else { 			hint "Du har låst eventet"; 			[0,localize "STR_m_EventLocked",false,"inEventGame"] remoteExec ["life_fnc_broadcast",-2]; 			var_base setVariable ["EventJoiningDisabled",true,true]; 		}; 	}; 	 	case 6: {  		if((var_base getVariable ["active_event",""]) == "") exitWith {hint "Inget event är skapat!";}; 		if!((var_base getVariable ["active_event",_absbszmdifevhmusdlmqawtgvdrnczzhexsuzqejvgmjdewaebudgbvirxhv]) in ["custom","koth"]) exitWith {hint "Byta radie går endast i custom events och King of the hill";}; 		_axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosolTime = ctrlText 1400; 		_axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosol = ctrlText 1450; 		 		if(_axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosol == "") exitWith {hint "Du måste ange en radie i högra fältet";}; 		if(_axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosolTime == "") exitWith {hint "Du måste ange en tid för när nya radien ska gälla, i vänstra fältet";}; 		if(parseNumber _axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosolTime > 20) exitWith {hint "Tiden får inte vara längre än 20 minuter";}; 		if(parseNumber _axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosol == 0) exitWith {hint "Radien får inte vara 0!";}; 		 		[(parseNumber _axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosolTime) * 60,parseNumber _axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosol] remoteExec ["TON_fnc_eventRadius",2]; 		[4,(getPlayerUID player),"","Event set radius",_axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosol,profileName,"",str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 	}; 	 	case 7: {  		if(var_base getVariable ["event_allMuted",false]) then { 			var_base setVariable ["event_allMuted",false,true]; 			hint "Spelare kan nu prata"; 			[0,localize "STR_m_EventUnmuted",false,"inEventGame"] remoteExec ["life_fnc_broadcast",-2]; 			[4,(getPlayerUID player),"","Event unmute","",profileName,"",str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 		} else { 			var_base setVariable ["event_allMuted",true,true]; 			hint "Spelarna är mutade"; 			[0,localize "STR_m_EventMuted",false,"inEventGame"] remoteExec ["life_fnc_broadcast",-2]; 			[4,(getPlayerUID player),"","Event mute",_axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosol,profileName,"",str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 		}; 		 	}; 	 	case 8: {  		if((var_base getVariable ["active_event",""]) == "") exitWith {hint "Inget event är skapat!";}; 		if!((var_base getVariable ["active_event",_absbszmdifevhmusdlmqawtgvdrnczzhexsuzqejvgmjdewaebudgbvirxhv]) in ["custom","koth"]) exitWith {hint "Byta radie går endast i custom events och King of the hill";}; 		 		_axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosolTime = ctrlText 1400; 		_axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosol = ctrlText 1450; 		 		if(_axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosol == "") exitWith {hint "Du måste ange en radie i högra fältet";}; 		if(_axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosolTime == "") exitWith {hint "Du måste ange en tid för när nya radien ska gälla, i vänstra fältet";}; 		if(parseNumber _axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosolTime > 60) exitWith {hint "Tiden får inte vara längre än 60 minuter";}; 		if(parseNumber _axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosol == 0) exitWith {hint "Radien får inte vara 0!";}; 		 		[(parseNumber _axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosolTime) * 60,parseNumber _axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosol,1,player] remoteExec ["TON_fnc_eventRadius",2]; 		[4,(getPlayerUID player),"","Event radius over time",format["Radius: %1, time: %2",_axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosol,_axncmgekxuhqdodddmgmbyixhmdfkbkxdtknmkipdayzptjmyfjnrfgxdjgcomosolTime],profileName,"",str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 	}; }; 