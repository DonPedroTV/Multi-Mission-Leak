private['_slk'];_slk = vehicle player;if(_slk getVariable["lights",false]) then { titleText [localize "STR_NOTF_SirenLights_off","PLAIN"]; _slk setVariable["lights",false,true];} else { titleText [localize "STR_NOTF_SirenLights_on","PLAIN"]; _slk setVariable["lights",true,true]; [_slk,0.22,[0, 0, 230]] remoteExec ["zero_fnc_LivOWhbYP",(allPlayers - entities "HeadlessClient_F")];};