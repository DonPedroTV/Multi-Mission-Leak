 private ["_kniczbgczgyjlbrhxpgjaeketmuejmzpruzpxydxbnqqukzdwoaxssdaefqwal"];  	 Weather_fog = [0,0,0]; Weather_waves = 1; Weather_preview = 0.5; Weather_wind = [1, 1, true]; Weather_rain = 0; Weather_rainCounter = 1;  	 _kniczbgczgyjlbrhxpgjaeketmuejmzpruzpxydxbnqqukzdwoaxssdaefqwal = { 	if (isDedicated) then 	{ 		Weather_odds = round(random 100); 		if(Weather_odds <= 5) then 		{ 		Weather_fog = [0,0,0]; Weather_waves = 1; Weather_preview = 0.2; Weather_wind = [2, 2, true]; Weather_rain = 0; Weather_rainCounter = 0; 			Weather_selection = round(random 9); 			if(Weather_selection == 0)	then {Weather_fog = [1, 0.1,10];	Weather_rain = 0.1;	Weather_preview = 0.4;};  			if(Weather_selection == 1)	then {Weather_fog = [1, 0.2,10];	Weather_rain = 0.2;	Weather_preview = 0.3;}; 			if(Weather_selection == 2)	then {Weather_fog = [1, 0.3,10];	Weather_rain = 0.2;	Weather_preview = 0.2;};  			if(Weather_selection == 3)	then {Weather_fog = [0.9, 0.1,15];	Weather_rainCounter = 0;};  			if(Weather_selection == 4)	then {Weather_fog = [0.8, 0.1,15];	Weather_rain = 0.2;	Weather_preview = 0.4;}; 			if(Weather_selection == 5)	then {Weather_fog = [0.7, 0.1,15];	Weather_rainCounter = 0;};  			if(Weather_selection == 6)	then {Weather_fog = [0.6, 0.1,30];	Weather_rainCounter = 0;}; 			if(Weather_selection == 7)	then {Weather_fog = [0.5, 0.1,30];	Weather_rain = 0.2;	Weather_preview = 0.5;}; 			if(Weather_selection == 8)	then {Weather_fog = [0.4, 0.1,30];	Weather_rainCounter = 0;};  			if(Weather_selection == 9)	then {Weather_fog = [0.1, 0.1,50];	Weather_rain = 0.4;	Weather_waves = 1;	Weather_preview = 0.5;};  		}; 		 		if(Weather_odds >=6 && Weather_odds <= 35 && Weather_rainCounter == 0) then 		{ 			Weather_fog = [0,0,0]; Weather_waves = 1; Weather_preview = 1; Weather_rain = 0; Weather_rainCounter = 0; 			Weather_selection = round(random 9); 			if(Weather_selection == 0)	then {Weather_fog = 0.1;	Weather_waves = 1;		Weather_preview = 1; 	Weather_wind = [4, 4, true];	Weather_rain = 0.6;}; 			if(Weather_selection == 1)	then {Weather_fog = 0.3;	Weather_waves = 1;		Weather_preview = 1; 	Weather_wind = [4, 4, true];	Weather_rain = 0.6;}; 			if(Weather_selection == 2)	then {Weather_fog = 0.1;	Weather_waves = 1;		Weather_preview = 0.9; Weather_wind = [4, 4, true];	Weather_rain = 0.5;}; 			if(Weather_selection == 3)	then {Weather_fog = 0.2;	Weather_waves = 1;		Weather_preview = 0.8; Weather_wind = [0, 5, true];	Weather_rain = 0.5;}; 			if(Weather_selection == 4)	then {Weather_fog = 0.1;	Weather_waves = 1;		Weather_preview = 0.7; Weather_wind = [6, 0, true];	Weather_rain = 0.3;}; 			if(Weather_selection == 5)	then {Weather_fog = 0.1;	Weather_waves = 1;		Weather_preview = 0.7; Weather_wind = [0, 6, true];	Weather_rain = 0.3;}; 			if(Weather_selection == 6)	then {Weather_fog = 0.1;	Weather_waves = 1;		Weather_preview = 0.6; Weather_wind = [5, 0, true];	Weather_rain = 0.2;}; 			if(Weather_selection == 7)	then {Weather_fog = 0.1;	Weather_waves = 1;		Weather_preview = 0.5; Weather_wind = [2, 4, true];	Weather_rain = 0.2;}; 			if(Weather_selection == 8)	then {Weather_fog = 0.1;	Weather_waves = 1;		Weather_preview = 0.4; Weather_wind = [3, 2, true];	Weather_rain = 0.2;}; 			if(Weather_selection == 9)	then {Weather_fog = 0.1;	Weather_waves = 1;		Weather_preview = 0.4; Weather_wind = [2, 1, true];	Weather_rain = 0.1;}; 		};  		if(Weather_odds >=6 && Weather_odds <= 35 && Weather_rainCounter == 1) then {Weather_odds = 36};  		if(Weather_odds >=36 && Weather_odds <= 90) then 		{ 			Weather_fog = [0,0,0]; Weather_waves = 1; Weather_preview = 0.2; Weather_wind = [5, 5, true]; Weather_rain = 0; Weather_rainCounter = 0; 			Weather_selection = round(random 9); 			if(Weather_selection == 0)	then {Weather_preview = 0.9;	Weather_wind = [3, 0, true];}; 			if(Weather_selection == 1)	then {Weather_preview = 0.9;	Weather_wind = [0, 3, true];}; 			if(Weather_selection == 2)	then {Weather_preview = 0.7;	Weather_wind = [2, 3, true];}; 			if(Weather_selection == 3)	then {Weather_preview = 0.7;	Weather_wind = [3, 2, true];}; 			if(Weather_selection == 4)	then {Weather_preview = 0.6;	Weather_wind = [0, 3, true];}; 			if(Weather_selection == 5)	then {Weather_preview = 0.6;	Weather_wind = [2, 0, true];}; 			if(Weather_selection == 6)	then {Weather_preview = 0.5;	Weather_wind = [2, 2, true];}; 			if(Weather_selection == 7)	then {Weather_preview = 0.5;	Weather_wind = [2, 0, true];}; 			if(Weather_selection == 8)	then {Weather_preview = 0.4;	Weather_wind = [0, 2, true];}; 			if(Weather_selection == 9)	then {Weather_preview = 0.4;	Weather_wind = [1, 1, true];};			 		};  		if(Weather_odds >=91 && Weather_odds <= 100) then 		{ 			Weather_fog = [0,0,0]; Weather_waves = 1; Weather_preview = 0.2; Weather_wind = [1, 1, true]; Weather_rain = 0; Weather_rainCounter = 1; 			Weather_selection = round(random 2); 			if(Weather_selection == 0)	then {Weather_preview = 0.2;	Weather_wind = [3, 0, true];}; 			if(Weather_selection == 1)	then {Weather_preview = 0.2;	Weather_wind = [0, 3, true];}; 			if(Weather_selection == 2)	then {Weather_preview = 0.1;	Weather_wind = [0, 0, true];};				 		}; 		Diag_log format ["::::::::: WEATHER SYSTEM ::::::::: Weather_odds = %1 ::: Weather_selection = %2",Weather_odds, Weather_selection]; 		publicVariable "Weather_fog"; 		publicVariable "Weather_waves"; 		publicVariable "Weather_preview"; 		publicVariable "Weather_wind"; 		publicVariable "Weather_rain"; 	}; };  Diag_log format["isDedicated: %1",str isDedicated];  if(isDedicated)then { 	while{true}do 	{ 		[] call _kniczbgczgyjlbrhxpgjaeketmuejmzpruzpxydxbnqqukzdwoaxssdaefqwal; 		sleep 1; 		1 setfog (Weather_fog); 		1 setRain (Weather_rain); 		0 setOvercast (Weather_preview); 		setWind (Weather_wind); 		1 setWaves (Weather_waves); 		sleep 20; 	}; };   if (!isDedicated) then { 	while{true}do 	{ 		60 setfog (Weather_fog); 		60 setRain (Weather_rain); 		0 setOvercast (Weather_preview); 		setWind (Weather_wind); 		60 setWaves (Weather_waves); 		hint format ["::::::::: WETTER SYSTEM ::::::::: Weather_odds = %1 ::: Weather_selection = %2",Weather_odds, Weather_selection]; 		uiSleep 120; 	}; }; 