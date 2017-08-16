[]spawn life_fnc_hudInfoUpdate;[]spawn{private["_fnc_food","_fnc_water","_fnc_battery","_fnc_toilet"];_fnc_food={if(life_hunger<2)then{player setDamage 1;hint localize "STR_NOTF_EatMSG_Death";}else{if(life_zustand in["Migräne","Grippe","Erkältung","Malaria","Typhus"])then{life_hunger=life_hunger-round(random 15)}else{life_hunger=life_hunger-round(random 10)};[]call life_fnc_hudUpdate;if(life_hunger<2)then{player setDamage 1;hint localize "STR_NOTF_EatMSG_Death";};switch(life_hunger)do{case 30:{hint localize "STR_NOTF_EatMSG_1";};case 20:{hint localize "STR_NOTF_EatMSG_2";};case 10:{hint localize "STR_NOTF_EatMSG_3";player setFatigue 1;};};};};_fnc_water={if(life_thirst<2)then{player setDamage 1;hint localize "STR_NOTF_DrinkMSG_Death";}else{if(life_zustand in["Migräne","Grippe","Erkältung","Malaria","Typhus"])then{life_thirst=life_thirst-round(random 20)}else{life_thirst=life_thirst-round(random 15)};[]call life_fnc_hudUpdate;if(life_thirst<2)then{player setDamage 1;hint localize "STR_NOTF_DrinkMSG_Death";};switch(life_thirst)do{case 30:{hint localize "STR_NOTF_DrinkMSG_1";};case 20:{hint localize "STR_NOTF_DrinkMSG_2";player setFatigue 1;};case 10:{hint localize "STR_NOTF_DrinkMSG_3";player setFatigue 1;};};};};_fnc_battery={if(life_battery<2)then{hint "Dein Tablet-Akku ist leer!";}else{life_battery=life_battery-round(random 10);[]call life_fnc_hudUpdate;if(life_battery<2)then{hint "Dein Tablet-Akku ist leer!";};switch(life_battery)do{case 30:{hint "Dein Handy-Akku liegt bei 30%";};case 20:{hint "Dein Handy-Akku liegt bei 20%";};case 10:{hint "Dein Handy-Akku liegt nur noch bei 10%";};};};};_fnc_toilet={if(life_toilet>98)then{life_zustand="Harndrang";hint "Dein Harndrang ist im kritischen Bereich,du kannst nur noch laufen"}else{if(life_zustand in["Grippe","Erkältung","Malaria","Typhus"])then{life_toilet=life_toilet+round(random 10)}else{life_toilet=life_toilet+round(random 15)};[]call life_fnc_hudUpdate;if(life_toilet>98)then{life_zustand="Harndrang";hint "Dein Harndrang ist im kritischen Bereich,du kannst nur noch laufen"};switch(life_toilet)do{case 70:{hint "Du hast lange keine Toilette besucht!"};case 80:{hint "Du musst unbedingt zur Toilette gehen!"};};};};while{true}do{uisleep 300;[]call _fnc_water;uisleep random 50;[]call _fnc_battery;uisleep random 50;[]call _fnc_toilet;uisleep random 600;[]call _fnc_food;};};[]spawn{private["_bp","_load","_cfg"];if(backpack player !="")then{life_maxWeight=life_maxWeightT+round(getNumber(configFile>>"CfgVehicles">>(backpack player)>>"maximumload")/3.2);};_bp="";while{true}do{if(backpack player=="")then{life_maxWeight=life_maxWeightT;_bp=backpack player;}else{if(!(backpack player=="")&&{!(backpack player==_bp)})then{_bp=backpack player;life_maxWeight=life_maxWeightT+round(getNumber(configFile>>"CfgVehicles">>(backpack player)>>"maximumload")/3.2);};};UIsleep 1;};};[]spawn{while{true}do{sleep 2;if(life_carryWeight>life_maxWeight && isSprintAllowed player)then{player allowSprint false;hint localize "STR_NOTF_MaxWeight";}else{if(!isSprintAllowed player)then{player allowSprint true;};};};};[]spawn{while{true}do{waitUntil{sleep 0.1;(life_drink>0)};while{(life_drink>0)}do{if(life_drink>0.08)then{"radialBlur" ppEffectEnable true;"radialBlur" ppEffectAdjust[0.08,0,0.35,0.37];"radialBlur" ppEffectCommit 3;sleep 240;life_drink=life_drink-0.02;}else{"radialBlur" ppEffectEnable true;"radialBlur" ppEffectAdjust[0.05,0,0.36,0.38];"radialBlur" ppEffectCommit 1;sleep 180;life_drink=life_drink-0.02;};};"radialBlur" ppEffectAdjust[0,0,0,0];"radialBlur" ppEffectCommit 5;"radialBlur" ppEffectEnable false;life_drink=0;sleep 1;};};[]spawn{while{true}do{private["_damage"];sleep 1;WaitUntil{sleep 0.1;((player distance(getMarkerPos "plutonium")<250)&&(player getVariable["Revive",TRUE]))};if(uniform player=="U_C_Scientist")then{}else{["Du betrittst eine radioaktive Zone! Ohne Schutzanzug wirst du sterben!"]spawn BIS_fnc_dynamictext;_damage=damage player;_damage=_damage+0.05;player setDamage(_damage);[]call life_fnc_hudUpdate;sleep 5;};};};[]spawn{while{true}do{WaitUntil{sleep 0.1;life_zustand !="Verstrahlt" && life_inv_plutoniumu>0 && uniform player !="U_C_Scientist"};["Verstrahlt"]call life_fnc_zustand;sleep 5;};};[]spawn{while{true}do{_min=[45,70]call life_fnc_randomRound;_rndnr=round(random 5);_random=["Migräne","Übelkeit","Grippe","Erkältung","Vergiftet"];_randomillness=_random select floor random count _random;WaitUntil{sleep 0.1;life_zustand !=_randomillness};sleep(_min*60);if(_rndnr>=4)then{[_randomillness]call life_fnc_zustand;};};};[]spawn{while{true}do{sleep 0.5;if(life_zustand=="Gesund")then{player setAnimSpeedCoef 1;};if(life_zustand=="Grippe" OR life_zustand=="Erkältung")then{_arraysound=["husten1","husten2","husten3","husten4"];_randomsound=_arraysound select floor random count _arraysound;player say3D _randomsound;sleep 60;addCamShake[0.2,10,30];};if(life_zustand=="Typhus" OR life_zustand=="Malaria" OR life_zustand=="Vergiftet")then{_damage=damage player;_damage=_damage+0.1;player setDamage(_damage);[]call life_fnc_hudUpdate;sleep 120;player say3D "husten1";};if(life_zustand=="Migräne")then{"dynamicBlur" ppEffectEnable true;"dynamicBlur" ppEffectAdjust[0.8];"dynamicBlur" ppEffectCommit 10;sleep 120;};if(life_zustand=="Übelkeit")then{if(isNull objectParent player)then{player playMove "AmovPercMstpSnonWnonDnon_Scared";player say3D "kotzen";}else{player say3D "kotzen";hint "Dir geht es nicht gut und hast dich deswegen im Fahrzeug übergeben!"};sleep(5*60);};if(life_zustand=="Verstrahlt")then{_damage=damage player;_damage=_damage+0.01;player setDamage(_damage);[]call life_fnc_hudUpdate;sleep 60;};if(life_zustand=="Harndrang")then{player setAnimSpeedCoef 0.7;sleep 30;};};};[]spawn{private["_noadmlevel"];_noadmlevel=if(call life_adminlevel<2)then{true}else{false};while{true}do{_active=false;_safezones=["safezone_kavala1","safezone_kavala4","safezone_kavala5","safezone_athira2","safezone_athira3","safezone_pyrgos2","safezone_pyrgos3","safezone_sofia2","safezone_sofia3","safezone_kupfer1","safezone_kupfer2","safezone_kupfer3","safezone_airport","safezone_mine","safezone_donator","safezone_agios"];{if(player inArea _x)exitWith{_active=true}}foreach _safezones;if(_active)then{if(_noadmlevel)then{player allowdamage false};in_safezone=true;}else{if(_noadmlevel)then{player allowdamage true};in_safezone=false;};uisleep 2;};};[]spawn{while{true}do{if(in_safezone)then{3 cutRsc["safezone","PLAIN"];WaitUntil{!in_safezone};};if(!in_safezone)then{3 cutFadeout 1};uisleep 2;};};[]spawn{while{true}do{_active=false;_zone="";_zones=["hunting_zone","hunting_zone2","gen_marker1","gen_marker2","gen_marker3","gen_marker4","banane_area"];{if(player inArea _x)exitWith{_active=true;_zone=_x}}foreach _zones;if(_active)then{switch(_zone)do{case "hunting_zone":{hintSilent parseText format["<t size='1' color='#00FF00'>ACHTUNG! Dies ist ein Naturschutzgebiet,welches ausschließlich mit einem Jagdschein betreten werden darf. Andere Fahrzeuge ausser Quads und Offroader sind aus Gründen des Naturschutzes ebenfalls nicht gestattet.</t>",name player]};case "hunting_zone2":{hintSilent parseText format["<t size='1' color='#00FF00'>ACHTUNG! Dies ist ein Naturschutzgebiet,welches ausschließlich mit einem Jagdschein betreten werden darf. Andere Fahrzeuge ausser Quads und Offroader sind aus Gründen des Naturschutzes ebenfalls nicht gestattet.</t>",name player]};case "gen_marker1":{player setdamage 1};case "gen_marker2":{player setdamage 1};case "gen_marker3":{player setdamage 1};case "gen_marker4":{player setdamage 1};case "banane_area":{if(!erfolg_bananarama && isTouchingGround player)then{erfolg_bananarama=true;["erfolg_bananarama"]spawn life_fnc_erfolgerhalten;sleep 5};}};};uisleep 1.5;};};