private["_classname","_side","_array"];
_classname = [_this,0,"",[""]] call BIS_Fnc_param;
_side = _this select 1;
if(_classname == "") exitWith {-2};
//if(_side == sideUnknown && _side != "points") exitWith {-2};

// Classname, Mietpreise CIV, WEST, INDEPENDENT

_array = switch (_classname) do
{
	//Fahrzeuge				   CIV,POL,AHW,SP
	case "C_Kart_01_Blu_F": {[15000,15000,15000]};
	case "C_Kart_01_Fuel_F": {[15000,15000,15000]};
	case "C_Kart_01_Red_F": {[15000,15000,15000]};
	case "C_Kart_01_Vrana_F": {[15000,15000,15000]};

	case "C_Quadbike_01_F": {[7500,10000,7500]};
	case "C_Quadbike_01_black_F": {[30000,30000,30000]};

	case "C_Offroad_01_F": {[15000,12500,12500]};
	case "I_G_Offroad_01_F": {[15000,15000,12500]};
	case "B_G_Offroad_01_F": {[25000,60000,25000]};
	case "C_Offroad_02_unarmed_F": {[50000,20000,20000]};
	case "C_SUV_01_F": {[30000,20000,20000]};
	case "C_Hatchback_01_F": {[22500,18000,22500]};
	case "C_Hatchback_01_sport_F": {[75000,50000,75000]};

	case "C_Van_01_box_F": {[85000,85000,25000]};
	case "C_Van_01_transport_F": {[60000,70000,60000]};
	case "C_Van_01_fuel_F": {[450000,450000,450000]};

	case "I_Truck_02_covered_F": {[1300000,100000,100000]};
	case "I_Truck_02_box_F": {[150000,150000,50000]};
	case "I_Truck_02_transport_F": {[900000,900000,900000]};
	case "O_Truck_02_fuel_F": {[1400000,1400000,1400000]};
	case "B_Truck_01_mover_F": {[150000,150000,50000]};
	case "B_Truck_01_transport_F": {[2000000,2000000,2000000]};
	case "B_Truck_01_fuel_F": {[2800000,2800000,2800000]};
	case "B_Truck_01_covered_F": {[3300000,3300000,3300000]};
	case "B_Truck_01_ammo_F": {[10500000,10500000,10500000]};
	case "B_Truck_01_box_F": {[15000000,15000000,15000000]};
	case "O_Truck_03_fuel_F": {[4000000,4000000,4000000]};
	case "O_Truck_03_transport_F": {[5000000,5000000,5000000]};
	case "O_Truck_03_ammo_F": {[12500000,12500000,12500000]};
	case "O_Truck_03_covered_F": {[5500000,5500000,5500000]};
	case "O_Truck_03_device_F": {[15000000,15000000,15000000]};

	case "O_MRAP_02_F": {[4000000,4000000,4000000]};
	case "B_MRAP_01_F": {[110000,110000,110000]};
	case "I_MRAP_03_F": {[250000,250000,250000]};
	case "B_T_LSV_01_unarmed_F": {[700000,700000,700000]};
	case "O_T_LSV_02_unarmed_F": {[700000,700000,700000]};

	case "B_Heli_Light_01_F": {[500000,75000,75000]};
	case "C_Heli_Light_01_civil_F": {[300000,75000,75000]};
	case "O_Heli_Light_02_unarmed_F": {[2000000,100000,100000]};
	case "I_Heli_Transport_02_F": {[5000000,100000,100000]};
	case "O_Heli_Transport_04_covered_F": {[5000000,5000000,5000000]};
	case "O_Heli_Transport_04_bench_F": {[2500000,2500000,2500000]};
	case "B_Heli_Transport_03_unarmed_F": {[8000000,200000,200000]};
	case "O_Heli_Transport_04_box_F": {[15000000,15000000,15000000]};
	case "I_Heli_light_03_unarmed_F": {[1000000,150000,100000]};
	case "B_Heli_Transport_01_F": {[1500000,150000,150000]};
	case "B_Plane_CAS_01_F": {[16000000,16000000,16000000]};
	case "C_Plane_Civil_01_F": {[500000,100000,2]};
	case "C_Plane_Civil_01_racing_F": {[750000,2,2]};
	case "B_T_VTOL_01_infantry_F": {[20000000,200000,2]};
	case "B_T_VTOL_01_vehicle_F": {[2,2,100000]};

	case "C_Rubberboat": {[5000,5000,5000]};
	case "C_Boat_Civil_01_F": {[60000,60000,60000]};
	case "C_Boat_Civil_01_rescue_F": {[500000,30000,30000]};
	case "B_SDV_01_F": {[200000,80000,80000]};
	case "B_Boat_Transport_01_F": {[15000,5000,5000]};
	case "C_Boat_Civil_01_police_F": {[125000,25000,25000]};
	case "B_Boat_Armed_01_minigun_F": {[1120000,120000,1120000]};
	case "C_Scooter_Transport_01_F": {[250000,2,30000]};
	case "I_C_Boat_Transport_02_F": {[66000,15000,2]};


	//Aufsätze				CIV,POL,AHW,SP
	case "acc_flashlight": {[2000,70,2]};
	case "acc_pointer_IR": {[2000,150,2]};

	case "optic_Aco_smg": {[5000,250,2]};
	case "optic_ACO_grn_smg": {[5000,250,2]};
	case "optic_Holosight": {[5000,300,2]};
	case "optic_Hamr": {[5000,350,2]};
	case "optic_NVS": {[700,700,2]};
	case "optic_MRCO": {[5000,500,2]};
	case "optic_DMS": {[550,550,2]};
	case "optic_SOS": {[5000,950,2]};
	case "optic_LRPS": {[1000,1000,2]};
	case "optic_Aco": {[5000,2,2]};
	case "optic_ACO_grn": {[5000,2,2]};
	case "optic_Yorris": {[5000,2,2]};
	case "optic_Holosight_smg": {[5000,2,2]};
	case "optic_Arco": {[5000,520,2]};
	case "optic_KHS_hex": {[10000,2,2]};
	case "optic_KHS_old": {[10500,2,2]};
	case "optic_KHS_tan": {[11000,2,2]};
	case "optic_KHS_blk": {[9500,1100,2]};
	case "optic_ERCO_blk_F": {[6000,510,2]};
	case "optic_Arco_blk_F": {[2,520,2]};

	case "bipod_01_F_blk": {[20000,7000,2]};
	case "bipod_01_F_snd": {[20000,2,2]};
	case "bipod_01_F_mtp": {[20000,2,2]};
	case "bipod_02_F_blk": {[20000,2,2]};
	case "bipod_02_F_tan": {[20000,2,2]};
	case "bipod_02_F_hex": {[20000,2,2]};
	case "bipod_03_F_blk": {[20000,2,2]};
	case "bipod_03_F_oli": {[20000,2,2]};

	case "muzzle_snds_L": {[900,200,2]};
	case "muzzle_snds_H": {[900,200,2]};
	case "muzzle_snds_M": {[900,200,2]};
	case "muzzle_snds_acp": {[900,2,2]};
	case "muzzle_snds_B": {[900,200,2]};
	case "muzzle_snds_58_wdm_F": {[900,2,2]};
	case "muzzle_snds_H_MG_blk_F": {[900,200,2]};
	case "muzzle_snds_H_MG": {[900,200,2]};
	
	
	//Waffen				        CIV,POL,AHW,SP
	case "launch_B_Titan_short_F": {[15000,2,2]};
	case "arifle_MX_GL_Black_F": {[2,40000,2]};
	case "srifle_EBR_F": {[540000,80000,2]};
	case "hgun_P07_snds_F": {[2,5000,2]};
	case "hgun_Pistol_heavy_02_F": {[40000,2,2]};
	case "hgun_Rook40_F": {[30000,2,2]};
	case "hgun_ACPC2_F": {[35000,2,2]};
	case "SMG_01_F": {[80000,2,2]};
	case "SMG_02_F": {[90000,2,2]};
	case "hgun_PDW2000_F": {[60000,2,2]};
	case "arifle_SDAR_F": {[160000,10000,2]};
	case "arifle_TRG20_F": {[195000,30000,2]};
	case "arifle_TRG21_F": {[230000,20000,2]};	
	case "arifle_Mk20C_plain_F": {[210000,35000,2]};
	case "arifle_Mk20C_F": {[210000,2,2]};
	case "arifle_Mk20_F": {[215000,2,2]};
	case "arifle_Mk20_plain_F": {[215000,2,2]};	
	case "arifle_MXC_Black_F": {[2,40000,2]};
	case "arifle_MX_Black_F": {[2,45000,2]};
	case "arifle_MXM_Black_F": {[2,50000,2]};
	case "arifle_MX_SW_Black_F": {[2,60000,2]};
	case "arifle_MX_SW_F": {[900000,2,2]};
	case "arifle_Katiba_C_F": {[250000,2,2]};
	case "arifle_Katiba_F": {[255000,2,2]};
	case "srifle_DMR_01_F": {[420000,2,2]};
	case "srifle_DMR_03_F": {[600000,70000,2]};
	case "srifle_DMR_06_camo_F": {[650000,2,2]};
	case "srifle_DMR_01_SOS_F": {[500000,2,2]};
	case "srifle_DMR_06_camo_khs_F": {[800000,2,2]};
	case "SMG_05_F": {[2,20000,2]};
	case "arifle_SPAR_01_blk_F": {[2,35000,2]};
	case "arifle_SPAR_02_blk_F": {[2,80000,2]};
	case "arifle_SPAR_03_blk_F": {[2,100000,2]};
	case "hgun_Pistol_01_F": {[32500,2,2]};
	case "arifle_AKS_F": {[300000,2,2]};
	case "arifle_CTAR_blk_F": {[310000,2,2]};
	case "arifle_ARX_blk_F": {[370000,2,2]};
	case "arifle_AKM_F": {[1100000,2,2]};
	case "srifle_DMR_07_blk_F": {[950000,2,2]};
	case "LMG_03_F": {[1400000,2,2]};
	
	
	//Magazine             CIV,POL,AHW,SP
	case "16Rnd_9x21_Mag": {[1500,80,2]};
	case "20Rnd_556x45_UW_mag": {[2400,100,2]};
	case "30Rnd_556x45_Stanag": {[3500,140,2]};
	case "30Rnd_65x39_caseless_mag": {[4000,180,2]};
	case "20Rnd_762x51_Mag": {[8000,500,2]};
	case "100Rnd_65x39_caseless_mag": {[5500,200,2]};
	case "6Rnd_45ACP_Cylinder": {[1200,2,2]};
	case "30Rnd_9x21_Mag": {[1800,2,2]};
	case "30Rnd_45ACP_Mag_SMG_01": {[2000,2,2]};
	case "30Rnd_65x39_caseless_green": {[4000,2,2]};
	case "10Rnd_762x54_Mag": {[6000,2,2]};
	case "9Rnd_45ACP_Mag": {[1200,2,2]};
	case "30Rnd_9x21_Mag_SMG_02": {[2,110,2]};
	case "150Rnd_556x45_Drum_Mag_F": {[2,220,2]};
	case "30Rnd_545x39_Mag_F": {[4000,2,2]};
	case "30Rnd_580x42_Mag_F": {[4200,2,2]};
	case "30Rnd_762x39_Mag_F": {[5700,2,2]};
	case "20Rnd_650x39_Cased_Mag_F": {[4700,2,2]};
	case "200Rnd_556x45_Box_F": {[6500,2,2]};


	//Zubehör         CIV,POL,AHW,SP
	case "ItemGPS": {[400,140,140]};
	case "ItemMap": {[100,10,10]};
	case "ItemCompass": {[20,20,20]};
	case "Rangefinder": {[13000,1500,1000]};
	case "ToolKit": {[4500,1000,1500]};
	case "Medikit": {[2,2,500]};
	case "FirstAidKit": {[1000,250,25]};
	case "NVGoggles_OPFOR": {[11500,250,250]};
	case "B_UAVTerminal": {[2,80000,2]};
	case "ItemWatch": {[50,2,2]};
	case "Binocular": {[200,2,2]};
	
	
	//Sonstiges                      CIV,POL,AHW,SP
	case "3Rnd_Smoke_Grenade_shell": {[2,3500,2]};
	case "1Rnd_Smoke_Grenade_shell": {[2,2500,2]};
	case "3Rnd_UGL_FlareWhite_F": {[2,3500,2]};
	case "UGL_FlareWhite_F": {[2,2500,2]};
	case "SmokeShellYellow": {[2,200,2]};
	case "SmokeShellGreen": {[2,4000,2]};
	case "HandGrenade_Stone": {[2,4000,2]};
	case "SatchelCharge_Remote_Mag": {[2,10000,2]};
	case "Chemlight_red": {[20000,2,2]};
	case "Chemlight_yellow": {[20000,2,2]};
	case "Chemlight_green": {[20000,2,2]};
	case "Chemlight_blue": {[20000,2,2]};
	

	//Z-INV       CIV,POL,AHW,SP
	case "apple": {[100,100,100]};
	case "rabbit": {[85,85,85]};
	case "salema": {[800,800,800]};
	case "ornate": {[700,700,700]};
	case "mackerel": {[1300,1300,1300]};
	case "tuna": {[2000,2000,2000]};
	case "mullet": {[990,990,990]};
	case "catshark": {[1600,1600,1600]};
	case "water": {[20,20,20]};
	case "turtle": {[22500,22500,22500]};
	case "turtlesoup": {[5500,5500,5500]};
	case "donuts": {[80,80,80]};
	case "coffee": {[30,30,30]};
	case "tbacon": {[65,65,65]};
	case "lockpick": {[15000,15000,15000]};
	case "pickaxe": {[2200,2200,2200]};
	case "fishing": {[2500,2500,2500]};
	case "redgull": {[1500,1500,1500]};
	case "fuelF": {[1950,1950,1950]};
	case "peach": {[80,80,80]};
	case "spikeStrip": {[2500,2500,2500]};
	case "blastingcharge": {[135000,135000,135000]};
	case "longbox": {[20000,20000,20000]};
	case "boltcutter": {[50000,50000,50000]};
	case "defusekit": {[60000,60000,60000]};
	case "storagesmall": {[250000,250000,250000,5]};
	case "storagebig": {[500000,500000,500000,7]};
	case "holzb": {[500,500,500]};
	case "sperre": {[250,250,250]};
	case "hut": {[100,100,100]};
	case "band": {[400,400,400]};
	case "battery": {[150,150,150]};
	case "kidney": {[50000,50000,5000]};
	case "scalpel": {[5000,5000,100]};
	case "eis": {[200,200,200]};
	case "party": {[50,50,50]};
	case "bobby": {[200,200,200]};
	case "bottledshine": {[18500,18500,18500]};
	case "bottledwhiskey": {[15000,15000,15000]};
	case "bottledbeer": {[12000,12000,12000]};
	case "moonshine": {[7500,7500,7500]};
	case "whiskey": {[5500,5500,5500]};
	case "beerp": {[5000,5000,5000]};
	case "cornmeal": {[500,500,500]};
	case "mash": {[2500,2500,2500]};
	case "gpsTracker": {[100000,100000,100000,3]};
	case "joghurt": {[75,75,75]};
	case "pumpe": {[5000,5000,5000]};
	case "tablette": {[150,150,150]};
	case "tablette2": {[500,500,250]};
	case "tablette3": {[1000,1000,200]};
	case "gegengift": {[5500,5500,500]};
	case "verband": {[7000,7000,300]};
	case "krankmeldung": {[50,50,50]};
	case "protestschild": {[20000,20000,20000]};
	case "laterne": {[50000,50000,50000]};
	case "henraw": {[1000,1000,1000]};
    case "roosterraw": {[1000,1000,1000]};
    case "sheepraw": {[1000,1000,1000]};
    case "goatraw": {[1000,1000,1000]};
    case "rabbitraw": {[1000,1000,1000]};
	case "henmeat": {[10000,10000,10000]};
    case "roostermeat": {[11000,11000,11000]};
    case "sheepmeat": {[13000,13000,13000]};
    case "goatmeat": {[15000,15000,15000]};
	case "seide": {[1000,1000,1000]};
	case "bratwurst": {[200,200,200]};
	case "netz": {[150000,150000,150000]};
	case "jagdmesser": {[300,300,300]};
	case "jagdhorn": {[700,700,700]};
	case "jagdmeister": {[1200,1200,1200]};
	case "timemachine": {[1200000,1200000,1200000,150]};
	case "plutonium": {[40000,40000,40000]};
	case "ahwcart": {[20000,20000,20000]};
	case "feuer": {[20000,20000,20000]};
	case "klappstuhl": {[25000,25000,25000]};
	case "axt": {[4000,4000,4000]};
	case "kabelbinder": {[10000,10000,10000]};
	case "kabelbinderkey": {[2,2,2]};
	case "heroinp": {[10000,10000,10000]};
	case "cocainep": {[11000,11000,11000]};
	case "marijuana": {[9500,9500,9500]};
	case "baumwolle": {[800,800,800]};
	case "indigo": {[3000,3000,3000]};
	case "nadel": {[150,150,150]};
	case "pizza": {[50,50,50]};
	case "guthaben": {[5000,5000,5000]};
	case "guthabenplus": {[100000,100000,100000]};
	case "guthabenpremium": {[1000000,1000000,1000000,30]};
	case "detektor": {[50000,50000,50000]};
	case "darkorb": {[1200000,1200000,1200000,125]};
	case "feuerwerkr": {[100000,100000,100000,5]};
	case "feuerwerkg": {[100000,100000,100000,5]};
	case "feuerwerkb": {[100000,100000,100000,5]};
	case "feuerwerkw": {[100000,100000,100000,5]};
	case "feuerwerk": {[750000,100000,100000,10]};
	case "gmandeln": {[200,200,200]};
	case "gwein": {[850,850,850]};
	case "kakao": {[2000,2000,2000]};
	case "toiletpaper": {[300,300,300]};
	case "schokolade": {[2500,2500,2500]};
	case "praline": {[5500,5500,5500]};
	case "salat": {[100,100,100]};
	case "tomate": {[100,100,100]};
	case "gsalat": {[600,600,600]};
	case "rollator": {[15000,15000,15000]};
	case "defibrillator": {[100000,100000,100000,15]};
	case "medizin_p": {[2,2,4000]};
	case "schrott_p": {[2,2,4000]};
	case "oilp": {[6000,2,2]};
	case "glass": {[2300,2,2]};
	case "bottles": {[200,2,2]};
	case "iron_r": {[4000,2,2]};
	case "copper_r": {[7000,2,2]};
	case "diamond": {[5000,2,2]};
	case "diamondc": {[9400,2,2]};
	case "perlen": {[10000,2,2]};
	case "schmuck": {[32000,2,2]};
	case "reichtum": {[300000,2,2]};
	case "dublonen": {[160000,2,2]};
	case "salt_r": {[6000,2,2]};
	case "cement": {[6600,2,2]};
	case "plastik": {[13400,2,2]};
	case "goldbar": {[500000,2,500000]};
	case "plutoniumu": {[17000,2,2]};
	case "bauholz": {[3400,2,2]};
	case "laminat": {[3800,2,2]};
	case "mahagoni": {[4400,2,2]};
	case "alterschuh": {[100,100,100]};
	case "bananenschale": {[2,2,2]};
	case "buegeleisen": {[150,150,150]};
	case "dose": {[10,10,10]};
	case "altesocke": {[4,4,4]};
	case "fischdose": {[8,8,8]};
	case "joint": {[18000,2,2]};
	case "papier": {[560,2,2]};
	case "cable": {[200,200,200]};
	case "reifen": {[250,250,250]};
	case "aluminium": {[600,2,2]};
	case "pizzaschachtel": {[20,20,20]};
	case "zschachtel_leer": {[500,20,20]};
	case "zschachtel_voll": {[14000,2,2]};
	case "schrauben": {[200,200,200]};
	case "spielzeugpuppe": {[30,30,30]};
	case "stahl": {[6000,2,2]};
	case "tabakblatt": {[150,2,2]};
	case "trinkpack": {[2,2,2]};
	case "zigarette": {[0,2,2]};
	case "zigarre": {[16000,2,2]};
	case "blueprintsport": {[0,0,0]};
	case "blueprintprowler": {[0,0,0]};
	case "blueprintqilin": {[0,0,0]};
	case "blueprintscooter": {[0,0,0,100]};
	case "blueprintorca": {[0,0,0]};
	case "blueprintcaesar": {[0,0,0]};
	case "banane": {[3000,0,0]};
	case "schaufel": {[5000,5000,5000]};
	case "lupe": {[0,0,0]};
	case "goetzikopf": {[0,0,0]};
	case "goetzitorso": {[0,0,0]};
	case "goetziglied": {[0,0,0]};
	case "bertramkopf": {[0,0,0]};
	case "bertramtorso": {[0,0,0]};
	case "bertramglied": {[0,0,0]};
	case "momphredkopf": {[0,0,0]};
	case "momphredtorso": {[0,0,0]};
	case "momphredglied": {[0,0,0]};
	case "ronkopf": {[0,0,0]};
	case "rontorso": {[0,0,0]};
	case "ronglied": {[0,0,0]};
	case "johnkopf": {[0,0,0]};
	case "johntorso": {[0,0,0]};
	case "johnglied": {[0,0,0]};
	case "goetzi": {[560000,0,0]};
	case "bertram": {[300000,0,0]};
	case "momphred": {[1000000,0,0]};
	case "ron": {[840000,0,0]};
	case "john": {[100000,0,0]};
	case "volleyball": {[1500,1500,1500]};
	default {[0,0,0]};
};

switch(_side) do {
	case civilian: {_array select 0};
	case west: {_array select 1};
	case independent: {_array select 2};
	case "points": {_array select 3};
};