
#include <macro.h>
 "colorCorrections" ppEffectEnable true;  "colorCorrections" ppEffectAdjust [1, 1, 0, [0,0,0,0], [0,0,0,0], [1,1,1,1]];  "colorCorrections" ppEffectCommit 1;    sleep 3; player addBackpack "B_Parachute";  player setPos [getPos player select 0, getPos player select 1, 1000];  sleep 2; "colorCorrections" ppEffectEnable false;   waitUntil {(vehicle player != player)};	 	private ["_tbpikmcvcamodzaeahsmcfqymuczccrldzmhyszryswkomohtprxlvridbkuwihgrdk","_feijbygjlyoetghnuaxzfmibyqfecrrjnzjjnqzgythfqeqovilyrdulfzwhpzwv"];  	_tbpikmcvcamodzaeahsmcfqymuczccrldzmhyszryswkomohtprxlvridbkuwihgrdk = floor(random 7);  	_feijbygjlyoetghnuaxzfmibyqfecrrjnzjjnqzgythfqeqovilyrdulfzwhpzwv = switch (_tbpikmcvcamodzaeahsmcfqymuczccrldzmhyszryswkomohtprxlvridbkuwihgrdk) do { 		case 0: {"SmokeShell";}; 		case 1: {"SmokeShellGreen";}; 		case 2: {"SmokeShellRed";}; 		case 3: {"SmokeShellBlue";}; 		case 4: {"SmokeShellOrange";}; 		case 5: {"SmokeShellYellow";}; 		case 6: {"SmokeShellPurple";}; 	};  _smoke = _feijbygjlyoetghnuaxzfmibyqfecrrjnzjjnqzgythfqeqovilyrdulfzwhpzwv createVehicle position player; _smoke attachTo [vehicle player, [0,-0.1,1.5]];    if(false) then { 	{ 		player addBackpack "B_Parachute";  		player setPos [3740.4,12998,2000]; 	} foreach nearestObjects [player,["man"],10]; 	 	if((player distance civ_4) < 10) then { 		[] spawn { 			sleep 1; 			player addBackpack "B_Parachute";  			player setPos [3740.4,12998,1000]; 		}; 	}; }; 