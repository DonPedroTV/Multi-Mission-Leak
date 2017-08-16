﻿/*
	File: fn_itemIcon.sqf
	Author: EdgeKiller

	Description:
	Return the icon for each altis life item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {("")};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {("icons\items\oil_unprocessed.paa")};
	case "life_inv_oilp": {("icons\items\oil_processed.paa")};
	case "life_inv_heroinu": {("icons\items\heroin_unprocessed.paa")};
	case "life_inv_heroinp": {("icons\items\heroin_processed.paa")};
	case "life_inv_cannabis": {("icons\items\cannabis.paa")};
	case "life_inv_marijuana": {("icons\items\marijuana.paa")};
	case "life_inv_apple": {("icons\items\orange.paa")};
	case "life_inv_rabbit": {("icons\items\meat.paa")};
	case "life_inv_salema": {("icons\items\fish.paa")};
	case "life_inv_ornate": {("icons\items\fish.paa")};
	case "life_inv_mackerel": {("icons\items\fish.paa")};
	case "life_inv_tuna": {("icons\items\fish.paa")};
	case "life_inv_mullet": {("icons\items\fish.paa")};
	case "life_inv_catshark": {("icons\items\fish.paa")};
	case "life_inv_turtle": {("icons\items\turtle.paa")};
	case "life_inv_fishingpoles": {("icons\items\fishingpoles.paa")};
	case "life_inv_water": {("icons\items\water.paa")};
	case "life_inv_coffee": {("icons\items\coffee.paa")};
	case "life_inv_turtlesoup": {("icons\items\turtle_soup.paa")};
	case "life_inv_donuts": {("icons\items\donut.paa")};
	case "life_inv_fuelE": {("icons\items\fuel_can.paa")};
	case "life_inv_fuelF": {("icons\items\fuel_can.paa")};
	case "life_inv_pickaxe": {("icons\items\pickaxe.paa")};
	case "life_inv_copperore": {("icons\items\copper_ore.paa")};
	case "life_inv_ironore": {("icons\items\iron_ore.paa")};
	case "life_inv_ironr": {("icons\items\iron.paa")};
	case "life_inv_copperr": {("icons\items\copper.paa")};
	case "life_inv_sand": {("icons\items\sand.paa")};
	case "life_inv_salt": {("icons\items\salt_unprocessed.paa")};
	case "life_inv_saltr": {("icons\items\salt.paa")};
	case "life_inv_glass": {("icons\items\glass.paa")};
	case "life_inv_diamond": {("icons\items\diamond_unprocessed.paa")};
	case "life_inv_diamondr": {("icons\items\diamond.paa")};
	case "life_inv_tbacon": {("icons\items\meat.paa")};
	case "life_inv_redgull": {("icons\items\redgull.paa")};
	case "life_inv_lockpick": {("icons\items\lockpick.paa")};
	case "life_inv_peach": {("icons\items\olive.paa")};
	case "life_inv_coke": {("icons\items\cocain_unprocessed.paa")};
	case "life_inv_cokep": {("icons\items\cocain_processed.paa")};
	case "life_inv_spikeStrip": {("icons\items\spikestrip.paa")};
	case "life_inv_rock": {("icons\items\rock.paa")};
	case "life_inv_cement": {("icons\items\cement.paa")};
	case "life_inv_goldbar": {("icons\items\goldbar.paa")};
	case "life_inv_blastingcharge": {("icons\items\blastingcharge.paa")};
	case "life_inv_boltcutter": {("icons\items\boltcutter.paa")};
	case "life_inv_defusekit": {("icons\items\defusekit.paa")};
	case "life_inv_storagesmall": {("icons\items\storagesmall.paa")};
	case "life_inv_storagebig": {("icons\items\storagebig.paa")};
	case "life_inv_holzb": {("icons\items\construction.paa")};
	case "life_inv_sperre": {("icons\items\construction.paa")};
	case "life_inv_hut": {("icons\items\construction.paa")};
	case "life_inv_band": {("icons\items\construction.paa")}; 
	case "life_inv_battery": {("icons\items\batterie.paa")};
	case "life_inv_kidney": {("icons\items\niere.paa")};
	case "life_inv_scalpel": {("icons\items\skalpell.paa")}; 
	case "life_inv_eis": {("icons\items\eis.paa")};
	case "life_inv_party": {("icons\items\party.paa")}; 
	case "life_inv_bobby": {("icons\items\bobby.paa")};
	case "life_inv_cornmeal": {("icons\items\maismehl.paa")};
	case "life_inv_beerp": {("icons\items\bier.paa")};
	case "life_inv_whiskey": {("icons\items\whiskey.paa")};
	case "life_inv_rye": {("icons\items\roggen.paa")};
	case "life_inv_hops": {("icons\items\hopfen.paa")};
	case "life_inv_yeast": {("icons\items\hefe.paa")}; 
	case "life_inv_bottles": {("icons\items\flasche.paa")};
	case "life_inv_bottledshine": {("icons\items\whiskey.paa")};
	case "life_inv_bottledbeer": {("icons\items\bier.paa")};
	case "life_inv_bottledwhiskey": {("icons\items\whiskey.paa")};
	case "life_inv_moonshine": {("icons\items\whiskey.paa")};
	case "life_inv_mash": {("icons\items\maische.paa")};
	case "life_inv_gpsTracker": {("icons\items\gpstracker.paa")};
	case "life_inv_joghurt": {("icons\items\joghurt.paa")};
	case "life_inv_pumpe": {("icons\items\pumpe.paa")};	
	case "life_inv_tablette": {("icons\items\tablette.paa")};
	case "life_inv_tablette2": {("icons\items\tablette.paa")};
	case "life_inv_tablette3": {("icons\items\warmflasche.paa")};
	case "life_inv_gegengift": {("icons\items\gegengift.paa")};
	case "life_inv_verband": {("icons\items\verband.paa")};
	case "life_inv_krankmeldung": {("icons\items\krankmeldung.paa")};
	case "life_inv_protestschild": {("icons\items\protestschild.paa")};
	case "life_inv_laterne": {("icons\items\laterne.paa")};	
	case "life_inv_henraw": {("icons\items\rawmeat.paa")};
	case "life_inv_roosterraw": {("icons\items\rawmeat.paa")};
	case "life_inv_goatraw": {("icons\items\rawmeat.paa")};
	case "life_inv_sheepraw": {("icons\items\rawmeat.paa")};
	case "life_inv_rabbitraw": {("icons\items\rawmeat.paa")};
	case "life_inv_henmeat": {("icons\items\meat.paa")};
	case "life_inv_roostermeat": {("icons\items\meat.paa")};
	case "life_inv_goatmeat": {("icons\items\meat.paa")};
	case "life_inv_sheepmeat": {("icons\items\meat.paa")};
	case "life_inv_seide": {("icons\items\seide.paa")};
	case "life_inv_bratwurst": {("icons\items\bratwurst.paa")};
	case "life_inv_netz": {("icons\items\netz.paa")};
	case "life_inv_jagdmesser": {("icons\items\jagdmesser.paa")};
	case "life_inv_jagdhorn": {("icons\items\jagdhorn.paa")};
	case "life_inv_jagdmeister": {("icons\items\jagdmeister.paa")};
	case "life_inv_timemachine": {("icons\items\timemachine.paa")};
	case "life_inv_plutoniumu": {("icons\items\plutoniumu.paa")};
	case "life_inv_plutonium": {("icons\items\plutonium.paa")};
	case "life_inv_ahwcart": {("icons\items\ahwcart.paa")};
	case "life_inv_feuer": {("icons\items\feuer.paa")};
	case "life_inv_klappstuhl": {("icons\items\klappstuhl.paa")};
	case "life_inv_holz": {("icons\items\holz.paa")};
	case "life_inv_bauholz": {("icons\items\holzv.paa")};
	case "life_inv_laminat": {("icons\items\holzv.paa")};
	case "life_inv_mahagoni": {("icons\items\holzv.paa")};
	case "life_inv_axt": {("icons\items\axt.paa")};
	case "life_inv_kabelbinder": {("icons\items\kabelbinder.paa")};
	case "life_inv_kabelbinderkey": {("icons\items\kabelbinderkey.paa")};
	case "life_inv_baumwolle": {("icons\items\baumwolle.paa")};
	case "life_inv_indigo": {("icons\items\indigo.paa")};
	case "life_inv_nadel": {("icons\items\nadel.paa")};
	case "life_inv_pizza": {("icons\items\pizza.paa")};
	case "life_inv_guthaben": {("icons\items\guthaben.paa")};
	case "life_inv_guthabenplus": {("icons\items\guthaben.paa")};
	case "life_inv_guthabenpremium": {("icons\items\guthaben.paa")};
	case "life_inv_detektor": {("icons\items\detektor.paa")};
	case "life_inv_dublonen": {("icons\items\dublonen.paa")};
	case "life_inv_reichtum": {("icons\items\reichtum.paa")};
	case "life_inv_perlen": {("icons\items\perlen.paa")};
	case "life_inv_perlenp": {("icons\items\perlen.paa")};
	case "life_inv_plastik": {("icons\items\plastik.paa")};
	case "life_inv_schmuck": {("icons\items\schmuck.paa")};
	case "life_inv_pressluft": {("icons\items\pressluft.paa")};
	case "life_inv_darkorb": {("icons\items\darkorb.paa")};
	case "life_inv_darkuni": {("icons\items\darkuni.paa")};
	case "life_inv_quest1": {("icons\items\quest.paa")};	
	case "life_inv_quest2": {("icons\items\quest.paa")};	
	case "life_inv_quest3": {("icons\items\quest.paa")};
	case "life_inv_skelett": {("icons\items\skelett.paa")};
	case "life_inv_ticket": {("icons\items\ticket.paa")};
	case "life_inv_parkschein": {("icons\items\ticket.paa")};
	case "life_inv_feuerwerkr": {("icons\items\feuerwerk.paa")};
	case "life_inv_feuerwerkg": {("icons\items\feuerwerk.paa")};
	case "life_inv_feuerwerkb": {("icons\items\feuerwerk.paa")};
	case "life_inv_feuerwerkw": {("icons\items\feuerwerk.paa")};
	case "life_inv_feuerwerk": {("icons\items\feuerwerksbatterie.paa")};
	case "life_inv_gmandeln": {("icons\items\gmandeln.paa")};
	case "life_inv_gwein": {("icons\items\gwein.paa")};
	case "life_inv_kakao": {("icons\items\coffee.paa")};
	case "life_inv_geschenk": {("icons\items\geschenk.paa")};
	case "life_inv_wschokolade": {("icons\items\praline.paa")};
	case "life_inv_toiletpaper": {("icons\items\toiletpaper.paa")};
	case "life_inv_schokolade": {("icons\items\schokolade.paa")};
	case "life_inv_praline": {("icons\items\praline.paa")};
	case "life_inv_kakaobohne": {("icons\items\kakaobohne.paa")};
	case "life_inv_salat": {("icons\items\salat.paa")};
	case "life_inv_tomate": {("icons\items\tomate.paa")};
	case "life_inv_gsalat": {("icons\items\gsalat.paa")};
	case "life_inv_rollator": {("icons\items\rollator.paa")};
	case "life_inv_defibrillator": {("icons\items\defibrillator.paa")};
	case "life_inv_schrott": {("icons\items\schrott.paa")};
	case "life_inv_medizin": {("icons\items\medizin.paa")};
	case "life_inv_schrott_p": {("icons\items\schrott.paa")};
	case "life_inv_medizin_p": {("icons\items\medizin.paa")};
	case "life_inv_longbox": {("icons\items\longbox.paa")};
	case "life_inv_plastikmuell": {("icons\items\plastik.paa")};
	case "life_inv_football": {("icons\items\football.paa")};
	case "life_inv_airhorn": {("icons\items\airhorn.paa")};
	case "life_inv_alterschuh": {"icons\items\alterschuh.paa"};
	case "life_inv_bananenschale": {"icons\items\bananenschale.paa"};
	case "life_inv_buegeleisen": {"icons\items\buegeleisen.paa"};
	case "life_inv_dose": {"icons\items\dose.paa"};
	case "life_inv_altesocke": {"icons\items\altesocke.paa"};
	case "life_inv_fischdose": {"icons\items\fischdose.paa"};
	case "life_inv_joint": {"icons\items\joint.paa"};
	case "life_inv_papier": {"icons\items\papier.paa"};
	case "life_inv_aluminium": {"icons\items\aluminium.paa"};
	case "life_inv_cable": {"icons\items\cable.paa"};
	case "life_inv_reifen": {"icons\items\reifen.paa"};
	case "life_inv_pizzaschachtel": {"icons\items\pizzaschachtel.paa"};
	case "life_inv_zschachtel_leer": {"icons\items\zschachtel_leer.paa"};
	case "life_inv_zschachtel_voll": {"icons\items\zschachtel_voll.paa"};
	case "life_inv_schrauben": {"icons\items\schrauben.paa"};
	case "life_inv_spielzeugpuppe": {"icons\items\spielzeugpuppe.paa"};
	case "life_inv_stahl": {"icons\items\stahl.paa"};
	case "life_inv_tabakblatt": {"icons\items\tabakblatt.paa"};
	case "life_inv_trinkpack": {"icons\items\trinkpack.paa"};
	case "life_inv_zigarette": {"icons\items\zigarette.paa"};
	case "life_inv_zigarre": {"icons\items\zigarre.paa"};
	case "life_inv_blueprintsport": {"icons\items\blueprint.paa"};
	case "life_inv_blueprintifrit": {"icons\items\blueprint.paa"};
	case "life_inv_blueprintqilin": {"icons\items\blueprint.paa"};
	case "life_inv_blueprintprowler": {"icons\items\blueprint.paa"};
	case "life_inv_blueprintcaesar": {"icons\items\blueprint.paa"};
	case "life_inv_blueprintscooter": {"icons\items\blueprint.paa"};
	case "life_inv_blueprintorca": {"icons\items\blueprint.paa"};
	case "life_inv_schaufel": {"icons\items\schaufel.paa"};	
	case "life_inv_banane": {"icons\items\bananen.paa"};
	case "life_inv_goetzikopf": {"icons\items\skelett.paa"};
	case "life_inv_goetzitorso": {"icons\items\skelett.paa"};
	case "life_inv_goetziglied": {"icons\items\skelett.paa"};
	case "life_inv_bertramkopf": {"icons\items\skelett.paa"};
	case "life_inv_bertramtorso": {"icons\items\skelett.paa"};
	case "life_inv_bertramglied": {"icons\items\skelett.paa"};
	case "life_inv_momphredkopf": {"icons\items\skelett.paa"};
	case "life_inv_momphredtorso": {"icons\items\skelett.paa"};
	case "life_inv_momphredglied": {"icons\items\skelett.paa"};
	case "life_inv_ronkopf": {"icons\items\skelett.paa"};
	case "life_inv_rontorso": {"icons\items\skelett.paa"};
	case "life_inv_ronglied": {"icons\items\skelett.paa"};
	case "life_inv_johnkopf": {"icons\items\skelett.paa"};
	case "life_inv_johntorso": {"icons\items\skelett.paa"};
	case "life_inv_johnglied": {"icons\items\skelett.paa"};
	case "life_inv_goetzi": {"icons\items\mumie.paa"};
	case "life_inv_bertram": {"icons\items\mumie.paa"};
	case "life_inv_momphred": {"icons\achievements\pirate.paa"};
	case "life_inv_ron": {"icons\items\mumie.paa"};
	case "life_inv_john": {"icons\items\mumie.paa"};
	case "life_inv_lupe": {"icons\items\lupe.paa"};
	case "life_inv_volleyball": {"icons\items\volleyball.paa"};

	//Erfolge
	case "erfolg_level5": {("icons\achievements\lvl5.paa")};
	case "erfolg_level10": {("icons\achievements\lvl10.paa")};
	case "erfolg_donator": {("icons\achievements\donator.paa")};
	case "erfolg_10mio": {("icons\achievements\10mio.paa")};
	case "erfolg_25mio": {("icons\achievements\25mio.paa")};
	case "erfolg_50mio": {("icons\achievements\50mio.paa")};
	case "erfolg_100mio": {("icons\achievements\100mio.paa")};
	case "erfolg_halloween": {("icons\achievements\halloween.paa")};
	case "erfolg_gang": {("icons\achievements\gang.paa")};
	case "erfolg_rarzeug1": {("icons\achievements\rarzeug.paa")};
	case "erfolg_rarzeug2": {("icons\achievements\rarzeug.paa")};
	case "erfolg_rarzeug3": {("icons\achievements\rarzeug.paa")};
	case "erfolg_rarzeug4": {("icons\achievements\rarzeug.paa")};
	case "erfolg_rarzeug": {("icons\achievements\rarzeug2.paa")};
	case "erfolg_herstellung": {("icons\achievements\herstellung.paa")};
	case "erfolg_schatzsuche": {("icons\achievements\schatz.paa")};
	case "erfolg_muell": {("icons\achievements\muell.paa")};
	case "erfolg_laterne": {("icons\achievements\laterne.paa")};
	case "erfolg_timemachine": {("icons\achievements\timemachine.paa")};
	case "erfolg_house3": {("icons\achievements\house3.paa")};
	case "erfolg_house7": {("icons\achievements\house7.paa")};
	case "erfolg_pyromane": {("icons\achievements\pyromane.paa")};
	case "erfolg_lizenzen": {("icons\achievements\lizenzen.paa")};
	case "erfolg_berufepol": {("icons\achievements\berufepol.paa")};
	case "erfolg_berufemed": {("icons\achievements\berufeahw.paa")};
	case "erfolg_christmas": {("icons\achievements\christmas.paa")};
	case "erfolg_wschokolade": {("icons\achievements\wschokolade.paa")};
	case "erfolg_toilet": {("icons\achievements\toilet.paa")};
	case "erfolg_flieger": {("icons\achievements\flieger.paa")};
	case "erfolg_post": {("icons\achievements\post.paa")};
	case "erfolg_brummi": {("icons\achievements\brummi.paa")};	
	case "erfolg_bankraub": {("icons\achievements\bankraub.paa")};	
	case "erfolg_kunstraub": {("icons\achievements\kunstraub.paa")};	
	case "erfolg_andreas": {("icons\achievements\andreas.paa")};
	case "erfolg_euro2016": {("icons\achievements\euro2016.paa")};
	case "erfolg_ingenieur": {("icons\achievements\ingenieur.paa")};
	case "erfolg_schneider": {("icons\achievements\schneider.paa")};
	case "erfolg_muellsammlung": {("icons\achievements\muellsammlung.paa")};
	case "erfolg_bananarama": {("icons\achievements\bananarama.paa")};
	case "erfolg_pirat": {("icons\achievements\pirate.paa")};
	
	//Apps
	case "app_auktion": {("images\tablet\apps\insurance.paa")};
    case "app_lizenzen": {("images\tablet\apps\lizenzen.paa")};
    case "app_dp": {("images\tablet\apps\dp.paa")};
    case "app_konto": {("images\tablet\apps\bank.paa")};
    case "app_hilfe": {("images\tablet\apps\guide.paa")};
    case "app_karte": {("images\tablet\apps\map.paa")};
	case "app_crafting": {("images\tablet\apps\crafting.paa")};
	case "app_selfie": {("images\tablet\apps\selfie.paa")};
	case "app_notizen": {("images\tablet\apps\notizen.paa")};
};