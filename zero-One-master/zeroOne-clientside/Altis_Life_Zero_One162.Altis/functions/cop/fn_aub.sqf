private['_qZe','_vZPv','_GnO'];KmSS = parseNumber(ctrlText 2655);if (KmSS > 5) then {KmSS = 5;};_qZe = findDisplay 2650;_vZPv = _qZe displayCtrl 2652;_GnO = _qZe displayCtrl 2653;_vZPv sliderSetPosition KmSS;_GnO ctrlSetStructuredText parseText format[localize "STR_Cop_Ticket_Curr",(KmSS),"%",[round(DXi*(KmSS/100))] call zero_fnc_nAnP];