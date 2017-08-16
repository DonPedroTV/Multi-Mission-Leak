#define true 1
#define false 0

/*
    Master settings for various features and functionality
*/
class Life_Settings {
    /* Persistent Settings */
    save_civ_weapons = true; //Allow civilians to save weapons on them?
    save_virtualItems = true; //Save Virtual items (all sides)?
    save_playerStats = true; //Save food & water (all sides)?
    save_veh_virtualItems = false; //Save Virtual items for vehicles (all sides)?
    save_veh_gear = false; //Save Gear for vehicles (all sides)?

    /* Clothing related settings */
    clothing_box = true; //true = preview inside a black box.  false = preview on map.
    clothing_masks[] = { "H_Shemag_olive", "H_Shemag_khk", "H_Shemag_tan", "H_Shemag_olive_hs", "H_ShemagOpen_khk", "H_ShemagOpen_tan", "G_Balaclava_blk", "G_Balaclava_combat", "G_Balaclava_lowprofile", "G_Balaclava_oli", "G_Bandanna_aviator", "G_Bandanna_beast", "G_Bandanna_blk", "G_Bandanna_khk", "G_Bandanna_oli", "G_Bandanna_shades", "G_Bandanna_sport", "G_Bandanna_tan", "U_O_GhillieSuit", "U_I_GhillieSuit", "U_B_GhillieSuit", "H_RacingHelmet_1_black_F", "H_RacingHelmet_1_red_F", "H_RacingHelmet_1_white_F", "H_RacingHelmet_1_blue_F", "H_RacingHelmet_1_yellow_F", "H_RacingHelmet_1_green_F", "H_RacingHelmet_1_F", "H_RacingHelmet_2_F", "H_RacingHelmet_3_F", "H_RacingHelmet_4_F" };

    /* Cop related settings */
    cops_online_min = 10; //minimum cops online for robbing a bank

    /* Medic related settings*/
    allow_medic_weapons = false; // true allows medics to hold/use weapons - false disallows

    /* Revive system settings */
    revive_cops = false; //true to enable cops the ability to revive everyone or false for only medics/ems.
    revive_fee = 5000; //Revive fee that players have to pay and medics / EMS are rewarded

    /* Gang related settings */
    gang_price = 100000; //Price for creating a gang, remember they are persistent so keep it reasonable to avoid millions of gangs.
    gang_upgradeBase = 10000; //The base cost for upgrading slots in a gang
    gang_upgradeMultiplier = 2.5; //Not sure if in use?

    /* Player-related systems */
    enable_fatigue = false; //Set to false to disable the ARMA 3 false system.
    total_maxWeight = 24; //Static variable for the maximum weight allowed without having a backpack
    paycheck_period = 5; //Scaled in minutes

    /* Impound Variables */
    impound_car = 3500; //Price for impounding cars
    impound_boat = 2500; //Price for impounding boats
    impound_air = 8500; //Price for impounding helicopters / planes

    /* Initial Bank Amount */
    bank_cop = 8000; //Amount of cash on bank for new cops
    bank_civ = 8000; //Amount of cash on bank for new civillians
    bank_med = 8000; //Amount of cash on bank for new medics

    /* Paycheck Amount */
    paycheck_cop = 8000; //Payment for cops
    paycheck_civ = 1750; //Payment for civillians
    paycheck_med = 10000; //Payment for medics

    /* Federal Reserve settings */
    noatm_timer = 10; //Time in minutes that players won't be able to deposit his money after selling stolen gold


    /* ATM settings */
    global_ATM = true; //Allow users to access any ATM on the map.

    /* Pump settings */
    Pump_service = true; //Allow users to use pump service on the map. Default = false

    /* Skins settings */
    civ_skins = true; //Enable or disable civilian skins. Before enabling, you must add all the SEVEN files to textures folder. (It must be named as: civilian_uniform_1.jpg, civilian_uniform_2.jpg...civilian_uniform_6.jpg, civilian_uniform_7.jpg)

    /* Car-shop Settings */
    vehicleShop_rentalOnly[] = { "B_MRAP_01_hmg_F", "B_G_Offroad_01_armed_F", "B_Boat_Armed_01_minigun_F" };

    /* Job-related stuff */
    delivery_points[] = { "dp_1", "dp_2", "dp_3", "dp_4", "dp_5", "dp_6", "dp_7", "dp_8", "dp_9", "dp_10", "dp_11", "dp_12", "dp_13", "dp_14", "dp_15", "dp_15", "dp_16", "dp_17", "dp_18" };

    /* Wanted System related settings */
    /* crimes[] = {String, Bounty, Code} */
    crimes[] = {
        {"STR_Crime_187V","175000","187V"},
        {"STR_Crime_187","200000","187"},
        {"STR_Crime_901","500000","901"},
        {"STR_Crime_215","25000","215"},
        {"STR_Crime_213","350000","213"},
        {"STR_Crime_211","150000","211"},
        {"STR_Crime_212","75000","212"},
        {"STR_Crime_207","125000","207"},
        {"STR_Crime_207A","75000","207A"},
        {"STR_Crime_390","5000","390"},
        {"STR_Crime_487","75000","487"},
        {"STR_Crime_488","75000","488"},
        {"STR_Crime_480","50000","480"},
        {"STR_Crime_481","100000","481"},
        {"STR_Crime_482","75000","482"},
        {"STR_Crime_483","100000","483"},
        {"STR_Crime_459","200000","459"},
        {"STR_Crime_666","500000","666"},
        {"STR_Crime_667","750000","667"},
        {"STR_Crime_668","100000","668"},
        {"STR_Crime_1","20000","1"},
        {"STR_Crime_2","5000","2"},
        {"STR_Crime_3","50000","3"},
        {"STR_Crime_4","100000","4"},
        {"STR_Crime_5","50000","5"},
        {"STR_Crime_6","100000","6"},
        {"STR_Crime_7B","50000","7B"},
        {"STR_Crime_7","50000","7"},
        {"STR_Crime_8","100000","8"},
        {"STR_Crime_9","150000","9"},
        {"STR_Crime_10","150000","10"},
        {"STR_Crime_11","200000","11"},
        {"STR_Crime_12","50000","12"},
        {"STR_Crime_13","25000","13"},
        {"STR_Crime_14","50000","14"},
        {"STR_Crime_15","100000","15"},
        {"STR_Crime_16","25000","16"},
        {"STR_Crime_17","50000","17"},
        {"STR_Crime_18","150000","18"},
        {"STR_Crime_19","50000","19"},
        {"STR_Crime_20","100000","20"},
        {"STR_Crime_21","50000","21"},
        {"STR_Crime_22","25000","22"},
        {"STR_Crime_23","50000","23"},
        {"STR_Crime_24","50000","24"},
        {"STR_Crime_25","100000","25"},
        {"STR_Crime_26","10000","26"},
        {"STR_Crime_27","50000","27"},
        {"STR_Crime_28","100000","28"},
        {"STR_Crime_29","150000","29"},
        {"STR_Crime_30","500000","30"},
        {"STR_Crime_31","100000","31"},
        {"STR_Crime_32","50000","32"},
        {"STR_Crime_33","750000","33"},
        {"STR_Crime_34","50000","34"}
    };
};

#include "Config_Clothing.hpp"
#include "Config_Licenses.hpp"
#include "Config_Vehicles.hpp"
#include "Config_vItems.hpp"
#include "Config_Weapons.hpp"