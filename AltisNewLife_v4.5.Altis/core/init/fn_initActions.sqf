switch (playerSide) do
{
	case west :
	{
		life_actions = [player addAction["<t color='#1EACFE'>Prendre</t>",life_fnc_prendreobjet,life_cursorTarget,0,false,false,"",' !isNull life_cursorTarget && !isNull (life_cursorTarget getVariable["owner", objNull]) && (player distance life_cursorTarget) < 3.5 ']];
		life_actions = life_actions + [player addAction["<t color='#1EACFE'>Placer l'objet</t>",life_fnc_placerobjet,player,0,false,false,"",'!isNull life_pose']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Saisir les objets</t>",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'(count(nearestObjects [player,["WeaponHolder"],3])>0)']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Baillonner</t>",life_fnc_gagAction,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (cursorTarget getVariable["restrained",FALSE]) && !(cursorTarget getVariable ["gagged",FALSE]) && life_inv_gagkit > 0']];
		life_actions = life_actions + [player addAction["<t color='#FFCC00'>Enlever son baillon</t>",life_fnc_removeGagAction,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (cursorTarget getVariable["restrained",FALSE]) && (cursorTarget getVariable ["gagged",FALSE])']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Mettre un sac sur sa tete</t>",life_fnc_sac,cursorTarget,-1,false,false,"",' cursorTarget getVariable ["restrained",false] && !(cursorTarget getVariable ["sacpatate",false]) && life_inv_sacpatate > 0 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && speed cursorTarget < 1 ']];
		life_actions = life_actions + [player addAction["<t color='#FFCC00'>Enlever le sac sur sa tete</t>",life_fnc_enlevesac,cursorTarget,-1,false,false,"",' cursorTarget getVariable ["sacpatate",false] && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && speed cursorTarget < 1 ']];
		life_actions = life_actions + [player addAction["<t color='#1EACFE'>Montrer ses papiers</t>",life_fnc_anlid,"",-1,false,false,"",' !isNull cursorTarget && cursorTarget isKindOf "Man" && player distance cursorTarget < 2.5 && isPlayer cursorTarget && speed cursorTarget < 1']];
		life_actions = life_actions + [player addAction["Chercher des indices",life_fnc_checkBody,"",0,false,false,"",'!isNull cursorTarget && !alive cursorTarget']];
		life_actions = life_actions + [player addAction["Donner les indices",life_fnc_giveProofs,"",0,false,false,"",'!isNull cursorTarget && ((side cursorTarget) == west) && !(actualProofs isEqualTo [])']];
	};
	case civilian :
	{
		life_actions = [player addAction["Lancer le filet de peche",life_fnc_dropFishingNet,"",0,false,false,"",' (surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
	    life_actions = life_actions + [player addAction["<t color='#FF0000'>Activer sa veste explosive</t>",life_fnc_suicideBomb,"",0,false,false,"",' vest player == "V_HarnessOGL_brn" && alive player && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Voler</t>",life_fnc_robAction,"",0,false,false,"",'!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		life_actions = life_actions + [player addAction["<t color='#7FFE1E'>Depecer l'animal</t>",life_fnc_skinAnimal,life_cursorTarget,-1,false,false,"",'!isNull life_cursorTarget && (player distance life_cursorTarget) < 4 && life_inv_couteau > 0 && (typeOf life_cursorTarget) in ["Cock_random_F","Goat_random_F","Hen_random_F","Sheep_random_F","Rabbit_F"] && !alive life_cursorTarget ']];
		life_actions = life_actions + [player addAction["<t color='#7FFE1E'>Cacher le corps</t>",{deleteVehicle life_cursorTarget},life_cursorTarget,-1,false,false,"",'!isNull life_cursorTarget && (player distance life_cursorTarget) < 4 &&(typeOf life_cursorTarget) in ["Cock_random_F","Goat_random_F","Hen_random_F","Sheep_random_F","Rabbit_F"] && !alive life_cursorTarget ']];
		life_actions = life_actions + [player addAction["<t color='#7FFE1E'>Cuire sa viande</t>",life_fnc_cookMeat,life_cursorTarget,-1,false,false,"",'!isNull life_cursorTarget && (player distance life_cursorTarget) < 4 && (typeOf life_cursorTarget) == "Campfire_burning_F" && (life_inv_roosterraw > 0 || life_inv_henraw > 0 || life_inv_sheepraw > 0 || life_inv_goatraw > 0 || life_inv_rabbitraw > 0 || life_inv_salema > 0 || life_inv_ornate > 0 || life_inv_mackerel > 0 || life_inv_tuna > 0 || life_inv_mullet > 0 || life_inv_catshark > 0) ']];
		life_actions = life_actions + [player addAction["<t color='#7FFE1E'>Nettoyer le camp</t>",{deleteVehicle life_cursorTarget},life_cursorTarget,-1,false,false,"",'!isNull life_cursorTarget && (player distance life_cursorTarget) < 4 && (typeOf life_cursorTarget) == "Campfire_burning_F" ']];
		life_actions = life_actions + [player addAction["<t color='#7FFE1E'>Stocker dans la tente</t>",life_fnc_openInventory,life_cursorTarget,0,false,false,"",' !isNull life_cursorTarget && (player distance life_cursorTarget) < 6 && ((typeOf life_cursorTarget) in ["Land_TentA_F","Land_TentDome_F"]) ']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Mettre un sac sur sa tete</t>",life_fnc_sac,cursorTarget,-1,false,false,"",' cursorTarget getVariable ["restrained",false] && !(cursorTarget getVariable ["sacpatate",false]) && life_inv_sacpatate > 0 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && speed cursorTarget < 1 ']];
		life_actions = life_actions + [player addAction["<t color='#7FFE1E'>Fouiller le batiment</t>",life_fnc_lootHouse,"",0,false,false,"",'vehicle player == player && (typeOf cursorTarget in["Land_u_House_Small_01_V1_F","Land_i_Stone_HouseBig_V2_F","Land_i_Stone_HouseBig_V1_F","Land_d_House_Small_01_V1_F","Land_Unfinished_Building_01_F","Land_u_House_Big_02_V1_F"]) && (vehicle player) distance cursorTarget < 5 && !(cursorTarget getVariable ["looted",FALSE])']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Baillonner</t>",life_fnc_gagAction,"",0,false,false,"",'!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (cursorTarget getVariable["restrained",FALSE]) && !(cursorTarget getVariable ["gagged",FALSE]) && life_inv_gagkit > 0']];
		life_actions = life_actions + [player addAction["<t color='#FFCC00'>Enlever le baillon</t>",life_fnc_removeGagAction,"",0,false,false,"",'!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (cursorTarget getVariable["restrained",FALSE]) && (cursorTarget getVariable ["gagged",FALSE])']];
		life_actions = life_actions + [player addAction["<t color='#FFCC00'>Enlever le sac</t>",life_fnc_enlevesac,cursorTarget,-1,false,false,"",' cursorTarget getVariable ["sacpatate",false] && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && speed cursorTarget < 1 ']];
		life_actions = life_actions + [player addAction["<t color='#1EACFE'>Se rendre</t>",life_fnc_serendre,"",0,false,false,"",'vehicle player != player && speed (vehicle player) < 10 && isTouchingGround vehicle player && (vehicle player isKindOf "LandVehicle") && !(typeOf vehicle player == "B_Quadbike_01_F")']];
		life_actions = life_actions + [player addAction["<t color='#1EACFE'>Montrer ses licences</t>",life_fnc_anllic,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && player distance cursorTarget < 2.5 && isPlayer cursorTarget && speed cursorTarget < 1']];
		life_actions = life_actions + [player addAction["<t color='#1EACFE'>Montrer ses papiers</t>",life_fnc_anlid,"",-1,false,false,"",' !isNull cursorTarget && cursorTarget isKindOf "Man" && player distance cursorTarget < 2.5 && isPlayer cursorTarget && speed cursorTarget < 1']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Voler l'argent du Brinks</t>",life_fnc_holdupVehicle,"",0,false,false,"",' !isNull cursorTarget && ((typeOf cursorTarget) == "I_MRAP_03_F") && alive cursorTarget && !life_action_inUse && (cursorTarget getVariable["brinksvehic",false])']];
	};
	case independent:
	{
		life_actions = [player addAction["<t color='#7FFE1E'>Transplantation d'organe</t>",cursorTarget setvariable["missingOrgan",false,true],"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && cursorTarget getVariable "missingOrgan" && !(player getVariable "restrained") && (life_inv_organkit > 0) ']];
		life_actions = life_actions + [player addAction["<t color='#7FFE1E'>Utiliser le défibrillateur</t>",life_fnc_revivePlayer,cursorTarget,-1,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && !(alive cursorTarget) && !(cursorTarget getVariable ["Revive",false]) && life_inv_defib > 0']];
		life_actions = life_actions + [player addAction["<t color='#7FFE1E'>Rapatriement d'urgence</t>",life_fnc_rapatriement,cursorTarget,-1,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && !(alive cursorTarget) && !(cursorTarget getVariable ["Revive",false]) && life_inv_brancard > 0']];
		life_actions = life_actions + [player addAction["<t color='#7FFE1E'>Donner un anti-douleur</t>",life_fnc_painkillers,cursorTarget,-1,false,false,"",'!isNull cursorTarget && (isPlayer cursorTarget) && (alive cursorTarget) && ((cursorTarget getVariable ["pain",0]) > 0) && (life_inv_painkillers > 0)']];
		life_actions = life_actions + [player addAction["<t color='#7FFE1E'>Donner une transfusion</t>",life_fnc_bloodbag,cursorTarget,-1,false,false,"",'!isNull cursorTarget && isPlayer cursorTarget && alive cursorTarget && (damage cursorTarget > 0) && (life_inv_bloodbag > 0)']];
		life_actions = life_actions + [player addAction["<t color='#1EACFE'>Prendre</t>",life_fnc_prendreobjet,life_cursorTarget,0,false,false,"",' !isNull life_cursorTarget && !isNull (life_cursorTarget getVariable["owner", objNull]) && (player distance life_cursorTarget) < 3.5 ']];
		life_actions = life_actions + [player addAction["<t color='#1EACFE'>Placer l'objet</t>",life_fnc_placerobjet,player,0,false,false,"",'!isNull life_pose']];
   };
};
//life_actions = life_actions + [player addAction["<t color='#FFCC00'>Frein à main</t>",life_fnc_frein,"",0,false,false,"",'vehicle player != player && vehicle player isKindOf "LandVehicle" && speed (vehicle player) > 10 && isTouchingGround vehicle player && driver vehicle player == player']];
life_actions = life_actions + [player addAction["<t color='#FFCC00'>Enlever le sac</t>",life_fnc_enlevesac,player,-1,false,false,"",' player getVariable ["sacpatate",false] && !(player getVariable ["restrained",false]) && alive player ']];
life_actions = life_actions + [player addAction["<t color='#7FFE1E'>Se soigner</t>",life_fnc_heal,"",99,false,false,"",' vehicle player == player && (damage player) > 0.25 && ("FirstAidKit" in (items player)) && (currentWeapon player == "")']];
life_actions = life_actions + [player addAction["<t color='#7FFE1E'>Reparer le vehicule (500€)</t>",life_fnc_pumpRepair,"",999,false,false,"",' vehicle player != player && (typeOf cursorTarget == "Land_fs_feed_F") && (vehicle player) distance cursorTarget < 6 ']];
life_actions = life_actions + [player addAction["Chemlight (ROUGE) en main",life_fnc_chemlightUse,"red",-1,false,false,"",' isNil "life_chemlight" && "Chemlight_red" in (magazines player) && vehicle player == player ']];
life_actions = life_actions + [player addAction["Chemlight (JAUNE) en main",life_fnc_chemlightUse,"yellow",-1,false,false,"",' isNil "life_chemlight" && "Chemlight_yellow" in (magazines player) && vehicle player == player ']];
life_actions = life_actions + [player addAction["Chemlight (VERTE) en main",life_fnc_chemlightUse,"green",-1,false,false,"",' isNil "life_chemlight" && "Chemlight_green" in (magazines player) && vehicle player == player ']];
life_actions = life_actions + [player addAction["Chemlight (BLEU) en main",life_fnc_chemlightUse,"blue",-1,false,false,"",' isNil "life_chemlight" && "Chemlight_blue" in (magazines player) && vehicle player == player ']];
life_actions = life_actions + [player addAction["Jeter la Chemlight",{if(isNil "life_chemlight") exitWith {};if(isNull life_chemlight) exitWith {};detach life_chemlight; life_chemlight = nil;},"",-1,false,false,"",'!isNil "life_chemlight" && !isNull life_chemlight && vehicle player == player ']];