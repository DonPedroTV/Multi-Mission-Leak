if(([3, 0] call zero_fnc_JNHrfnI) < 100) exitWith {hint format[localize "STR_NOTF_HS_NoCash",100];};titleText[localize "STR_NOTF_HS_Healing","PLAIN"];uisleep 8;if(player distance (_this select 0) > 5) exitWith {titleText[localize "STR_NOTF_HS_ToFar","PLAIN"]};titleText[localize "STR_NOTF_HS_Healed","PLAIN"];player setdamage 0;[1, ([3, 0] call zero_fnc_JNHrfnI) - 100] call zero_fnc_JNHrfnI;