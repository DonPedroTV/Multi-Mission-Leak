/*
Beschreibung : Fuegt einen 'ausweis' hinzu, den man ueber scrollen Zivilisten zeigen kann
*/

private["_target", "_message"];

_target = cursorTarget;

if(playerSide != civilian) exitWith
{
	hint "Du bist kein Zivilist!";
};

_message = format["<img size='10' color='#FFFFFF' image='textures\Zivilist.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.8'>%2</t><br/><t size='1'>Bürger Altis</t>", name player];
[_message, { hintSilent parseText (_this); }] remoteExec ["BIS_FNC_CALL", _target, false];
