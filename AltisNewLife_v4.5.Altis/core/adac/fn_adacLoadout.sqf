private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};
player addUniform "U_Rangemaster";
player addVest "V_TacVest_blk_POLICE";
player addBackpack "B_Kitbag_cbr";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemRadio";
player assignItem "ItemRadio";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "NVGoggles_OPFOR";
player assignItem "NVGoggles_OPFOR";
[] call life_fnc_saveGear;