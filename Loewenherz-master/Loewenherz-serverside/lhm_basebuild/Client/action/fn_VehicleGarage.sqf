 
if (vehicle player != player) exitWith {Hint "Du kannst dies nicht im Fahrzeug tun!"}; 
 
[[getPlayerUID player,playerSide,"Car",player],"TON_fnc_getVehicles",false,false] call lhm_fnc_mp;  
 
lhm_garage_type = "Car"; 
 
createDialog "lhm_impound_menu"; 
 
disableSerialization;    
ctrlSetText[2802,"Fetching Vehicles...."]; 
 
lhm_garage_sp = format ["ga_vehicle_spawn_%1", (lhm_gangData select 0)];  