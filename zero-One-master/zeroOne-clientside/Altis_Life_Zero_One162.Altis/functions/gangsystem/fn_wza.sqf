private['_GlE'];_GlE = param[0,grpNull,[grpNull]];if(isNull _GlE) exitWith {}; hint "Deine Gang wurde vom Owner aufgelöst!";uiSleep (random (1));[player] joinSilent grpNull;hc_updateGang = [clientOwner,8,[0, getPlayerUID player, playerSide]];HC1_owner publicVariableClient "hc_updateGang";hc_updateGang = nil;