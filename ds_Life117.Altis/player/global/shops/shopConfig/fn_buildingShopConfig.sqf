/*
Darkside Life

Author: Shawn "Huntah" Macgillivray

Description:
	Fulls the array and sets up variables for shop items
*/

private ["_shop","_returnList"];

_shop = _this select 0;

switch(_shop)do
	{
	case 115://Cop Items
		{
			[["Sand Bag","Land_BagFence_Long_F",50],
			["BarGate","Land_BarGate_F",200],
			["Crash Barrier","Land_Crash_barrier_F",200],
			["Spot Lights","Land_PortableLight_double_F",200],
			["Striped Barrier","RoadBarrier_F",150],
			["Roadcone","RoadCone_L_F",30],
			["Striped Tape","TapeSign_F",75],
			["Camo Net","CamoNet_BLUFOR_F",200],
			["Blue Ground Light","Land_runway_edgelight_blue_F",100],
			["White Ground Light","Land_runway_edgelight",100],
			["Red Ground Light","Land_Flush_Light_red_F",100],
			["Chainlinked Gate","Land_Net_Fence_Gate_F",300],
			["Chainlinked Fence","Land_New_WiredFence_10m_F",250],
			["Ladder","Land_PierLadder_F",450],
			["Rescue Boat","C_Rubberboat",1500]]
		};
	};	
