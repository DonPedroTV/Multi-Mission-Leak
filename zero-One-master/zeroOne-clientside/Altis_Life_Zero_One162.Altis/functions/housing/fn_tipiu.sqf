private['_yZIM','_htk','_aUF','_GGwj'];_yZIM = param[0,ObjNull,[ObjNull]];_htk = param[1,false,[true]];if(isNull _yZIM || !(_yZIM isKindOf "House_F")) exitWith {};_GGwj = false;if(_htk) then { _aUF = "#lightpoint" createVehicleLocal [0,0,0]; switch(true) do { case ((typeOf _yZIM) in ["Land_i_House_Big_01_V1_F","Land_i_House_Big_01_V2_F","Land_i_House_Big_01_V3_F"]): {_aUF lightAttachObject [_yZIM,[0,-2,3.8]];}; case ((typeOf _yZIM) in ["Land_i_House_Big_02_V1_F","Land_i_House_Big_02_V2_F","Land_i_House_Big_02_V3_F"]): {_aUF lightAttachObject [_yZIM,[2,0,3.5]];}; case ((typeOf _yZIM) in ["Land_i_House_Small_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_01_V3_F"]): {_aUF lightAttachObject [_yZIM,[-1.5,0,2]]}; case ((typeOf _yZIM) in ["Land_i_House_Small_02_V1_F","Land_i_House_Small_02_V2_F","Land_i_House_Small_02_V3_F"]): {_aUF lightAttachObject [_yZIM,[2,0,2.4]]}; case ((typeOf _yZIM) in ["Land_i_House_Small_03_V1_F","Land_i_House_Small_03_V3_F","Land_i_House_Small_03_V3_F"]): {_aUF lightAttachObject [_yZIM,[-3.3,1,2.5]];}; default {_GGwj = true;}; }; if(_GGwj) exitWith {deleteVehicle _aUF;}; _aUF setLightColor [250,150,50]; _aUF setLightAmbient [1,1,0.2]; _aUF setLightAttenuation [1,0,0,0]; _aUF setLightIntensity 10; _aUF setLightUseFlare true; _aUF setLightFlareSize 0.2; _aUF setLightFlareMaxDistance 50; _yZIM setVariable["lightSource",_aUF];} else { if(isNull (_yZIM getVariable["lightSource",ObjNull])) exitWith {}; deleteVehicle (_yZIM getVariable["lightSource",ObjNull]);};