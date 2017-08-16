// Written by Kupferkarpfen
// License: CC BY-NC-SA 4.0

if( !(alive player) || dialog ) exitWith {};
if( !(createDialog "XY_dialog_player") ) exitWith {};

disableSerialization;

switch(playerSide) do {
    case west: {
        ctrlShow[2011, false];
	    ctrlShow[9900, false]; // Market
		};
    case civilian: {
        ctrlShow[2012, false];
        ctrlShow[9800, false]; // Wantend+ knopf
    };
    case independent: {
        ctrlShow[2011, false]; // gang knopf
	    ctrlShow[9900, false]; // Market
        ctrlShow[2012, false]; // Fahndungsliste
        ctrlShow[9800, false]; // Wantend+ knopf
    };
    case east: {
        ctrlShow[2011, false]; // gang knopf
	    ctrlShow[9900, false]; // Market
        ctrlShow[2012, false]; // Fahndungsliste
        ctrlShow[9800, false]; // Wantend+ knopf
    };
};
[] call XY_fnc_p_updateMenu;