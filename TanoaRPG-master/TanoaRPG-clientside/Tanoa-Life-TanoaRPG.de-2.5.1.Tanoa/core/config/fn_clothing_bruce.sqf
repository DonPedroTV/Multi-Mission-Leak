/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"TanoaRPG Kleidermarkt"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_C_Poloshirt_blue","Poloshirt Blue",250],
			["U_C_Poloshirt_burgundy","Poloshirt Burgundy",275],
			["U_C_Poloshirt_redwhite","Poloshirt Red/White",150],
			["U_C_Poloshirt_salmon","Poloshirt Salmon",175],
			["U_C_Poloshirt_stripped","Poloshirt stripped",125],
			["U_C_Poloshirt_tricolour","Poloshirt Tricolor",350],
			["U_C_Poor_2","Rag tagged clothes",250],
			["U_IG_Guerilla2_2","Green stripped shirt & Pants",650],
			["U_IG_Guerilla3_1","Brown Jacket & Pants",735],
			["U_IG_Guerilla2_3","The Outback Rangler",1200],
			["U_C_HunterBody_grn","The Hunters Look",1500],
			["U_C_WorkerCoveralls","Mechanic Coveralls",2500],
			["U_OrestesBody","Surfing On Land",1100],
			["U_NikosAgedBody","Bürokaufmann",1500],
			["U_NikosBody","Niko's Clothes",1100],
			["U_Marshal","Marshal Clothes",1100],
			["U_C_Journalist","Journalist Clothes",2500],
			["U_C_Poor_2","Anzug",3500],
			["U_C_Man_casual_2_F","Zivi Marinblau",600],
            ["U_C_Man_casual_3_F","Zivi Grün",600],
            ["U_C_Man_casual_1_F","Zivi Blau",600],
            ["U_C_Man_casual_6_F","Zivi Rot",600],
            ["U_C_Man_casual_4_F","Zivi Gelb",600],
            ["U_C_Man_casual_5_F","Zivi Himmelblau",600],
            ["U_C_man_sport_1_F","Sport Blau",600],
            ["U_C_man_sport_2_F","Sport Orange",600],
			["U_I_C_Soldier_Bandit_2_F","Banditen Totenkopf",1000],
            ["U_I_C_Soldier_Bandit_3_F","Banditen T-Shirt",1000],
            ["U_I_C_Soldier_Bandit_4_F","Banditen Kariert",1000],
            ["U_I_C_Soldier_Bandit_1_F","Banditen Polohemd",1000],
            ["U_I_C_Soldier_Bandit_5_F","Banditen Muskelshirt",1000],
            ["U_C_man_sport_3_F","Sport Strand",600]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",120],
			["H_Bandanna_surfer","Surfer Bandanna",130],
			["H_Bandanna_gry","Grey Bandanna",150],
			["H_Bandanna_cbr",nil,165],
			["H_Bandanna_surfer",nil,135],
			["H_Bandanna_khk","Khaki Bandanna",145],
			["H_Bandanna_sgg","Sage Bandanna",160],
			["H_StrawHat","Straw Fedora",225],
			["H_BandMask_blk","Hat & Bandanna",300],
			["H_Booniehat_tan",nil,425],
			["H_Hat_blue",nil,310],
			["H_Hat_brown",nil,276],
			["H_Hat_checker",nil,340],
			["H_Hat_grey",nil,280],
			["H_Hat_tan",nil,265],
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_red",nil,150],
			["H_Helmet_Skate",nil,500],
			["H_Cap_tan",nil,150]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_Press_F",nil,6000],
			["V_Rangemaster_belt",nil,8000],
			["V_BandollierB_khk",nil,8000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000],
			["B_ViperHarness_ghex_F",nil,20000],
			["B_Bergen_dgtl_F",nil,30000],
			["B_Bergen_mcamo_F",nil,30000],
			["B_Bergen_tna_F",nil,30000]
		];
	};
};