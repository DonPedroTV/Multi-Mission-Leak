 private["_yigjmqqfkeaxtagzuyjkipuxygcrrrgnvrimrppioaphvrhmjbygcwouvptakqsaphtdmd"];  _yigjmqqfkeaxtagzuyjkipuxygcrrrgnvrimrppioaphvrhmjbygcwouvptakqsaphtdmd = [_this,0,0,[0]] call BIS_fnc_param; sleep 3;  switch (_yigjmqqfkeaxtagzuyjkipuxygcrrrgnvrimrppioaphvrhmjbygcwouvptakqsaphtdmd) do { 	 	case 0: { 		 		"chromAberration" ppEffectEnable true; 		"radialBlur" ppEffectEnable true; 		enableCamShake true;  		 		for "_i" from 0 to 44 do 		{ 			"chromAberration" ppEffectAdjust [random 0.25,random 0.25,true]; 			"chromAberration" ppEffectCommit 1;    			"radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.15]; 			"radialBlur" ppEffectCommit 1; 			addcamShake[random 3, 1, random 3]; 			sleep 1; 		};  		 		"chromAberration" ppEffectAdjust [0,0,true]; 		"chromAberration" ppEffectCommit 5; 		"radialBlur" ppEffectAdjust  [0,0,0,0]; 		"radialBlur" ppEffectCommit 5; 		sleep 6;  		 		"chromAberration" ppEffectEnable false; 		"radialBlur" ppEffectEnable false; 		resetCamShake; 	}; 	 	 	case 1: { 		"dynamicBlur" ppEffectEnable true; 		"dynamicBlur" ppEffectAdjust [5]; 		"dynamicBlur" ppEffectCommit 1; 		"colorCorrections" ppEffectCommit 1; 		sleep 30; 		"dynamicBlur" ppEffectAdjust [4]; 		sleep 15; 		"dynamicBlur" ppEffectAdjust [3]; 		sleep 15; 		"dynamicBlur" ppEffectAdjust [2]; 		sleep 15; 		"dynamicBlur" ppEffectAdjust [1]; 		sleep 15; 		"dynamicBlur" ppEffectEnable false; 	}; 	 	 	case 2: { 		"dynamicBlur" ppEffectEnable true; 		"dynamicBlur" ppEffectAdjust [3]; 		"dynamicBlur" ppEffectCommit 1; 		"colorCorrections" ppEffectCommit 1; 		sleep 30; 		"dynamicBlur" ppEffectAdjust [2]; 		sleep 10; 		"dynamicBlur" ppEffectAdjust [1]; 		sleep 10; 		"dynamicBlur" ppEffectEnable false; 	}; }; 