
#include <macro.h>
private["_aelcaymfnoeldszdqxtvrnwfafjcxvhvfnhuwwprnrbdysdhljczfaniqlfkiqivxym"]; _aelcaymfnoeldszdqxtvrnwfafjcxvhvfnhuwwprnrbdysdhljczfaniqlfkiqivxym = [_this,0,0,[0]] call BIS_fnc_param;  switch (_aelcaymfnoeldszdqxtvrnwfafjcxvhvfnhuwwprnrbdysdhljczfaniqlfkiqivxym) do { 	 	case 0: { 		createDialog 'life_arena'; 		ctrlSetText[5105,"Ansluter..."]; 		[[player],"life_fnc_bnlcpjpvrdcnluqnjiyxnnbyfxywofznqwkyhnzkdrmhwtwkpym",false,false] spawn life_fnc_MP; 		 		if(arena_isHost) then {ctrlShow[5101,false];}; 		ctrlShow[5201,false]; 		ctrlShow[5202,false]; 		ctrlShow[5203,false]; 		ctrlShow[5204,false]; 		ctrlShow[5205,false]; 		 		ctrlShow[5301,false]; 		ctrlShow[5305,false]; 		ctrlShow[5302,false]; 		ctrlShow[5306,false]; 		ctrlShow[5303,false]; 		ctrlShow[5308,false]; 		ctrlShow[5309,false]; 		ctrlShow[5310,false]; 		ctrlShow[5311,false]; 	}; 	 	 	case 1: { 		private["_lfrynyzdnuzxoqaktrgyccntlaekdryqegtmtastgqntzmwmczjahodugnbas"]; 		_lfrynyzdnuzxoqaktrgyccntlaekdryqegtmtastgqntzmwmczjahodugnbas = []; 		_lfrynyzdnuzxoqaktrgyccntlaekdryqegtmtastgqntzmwmczjahodugnbas = lbData[5001,(lbCurSel 5001)]; 		_lfrynyzdnuzxoqaktrgyccntlaekdryqegtmtastgqntzmwmczjahodugnbas = call compile format["%1", _lfrynyzdnuzxoqaktrgyccntlaekdryqegtmtastgqntzmwmczjahodugnbas]; 		 		hint format["%1",_lfrynyzdnuzxoqaktrgyccntlaekdryqegtmtastgqntzmwmczjahodugnbas];  		if(arena_refreshed && (!(arena_isHost))) exitWith {hint "Spamma inte!";}; 		ctrlSetText[5105,"Ansluter..."]; 		[[player],"life_fnc_bnlcpjpvrdcnluqnjiyxnnbyfxywofznqwkyhnzkdrmhwtwkpym",false,false] spawn life_fnc_MP; 		arena_refreshed = true; 		[] spawn { 			sleep 5; 			arena_refreshed = false; 		}; 	}; 	 	 	case 2: { 		ctrlShow[5201,true]; 		ctrlShow[5202,true]; 		ctrlShow[5203,true]; 		ctrlShow[5204,true]; 		ctrlShow[5205,true]; 		 		ctrlShow[5301,false]; 		ctrlShow[5305,false]; 		ctrlShow[5302,false]; 		ctrlShow[5306,false]; 		ctrlShow[5303,false]; 		ctrlShow[5308,false]; 		ctrlShow[5309,false]; 		ctrlShow[5310,false]; 		ctrlShow[5311,false]; 	}; 	 	 	 }; 