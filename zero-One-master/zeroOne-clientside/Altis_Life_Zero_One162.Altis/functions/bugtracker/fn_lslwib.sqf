private['_qZe','_zff'];disableSerialization;_qZe = findDisplay 4240;waitUntil{!isNull(_qZe)};_zff = _qZe displayCtrl 4241;_zff ctrlSetText (name player);_qZe displayAddEventHandler ["KeyDown", { if((_this select 1) == 28 && !(_this select 2)) then {  hint "Um einen Absatz zu machen druecke\n\n SHIFT + ENTER"; true; };}];