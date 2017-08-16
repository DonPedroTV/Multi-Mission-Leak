/*

	VOID marketShortView [ [SHORTNAMES] ];
	
	shows list of current market values

*/

private["_items", "_shortname", "_price", "_globalchange", "_lastchange", "_row", "_text", "_resname", "_didanything"];

_items = _this select 0;

if(count _items == 0) exitWith {};

_text = format["<t size='1.5' color='#00FF00'>%1 Markt</t><br/>",worldName];

_didanything = false;

{
	if(_x in lhm_market_shortnames) then {
	_didanything = true;


	_row = [_x] call lhm_fnc_marketGetPriceRow;
	
	_price = _row select 1;
	_globalchange = _row select 2;
	_lastchange = _row select 3;
	
	_resname = [_x, 0] call lhm_fnc_varHandle;
	_resname = [_resname] call lhm_fnc_varToStr;
	
	_text = format["%1<br/><t size='1.2'>%2</t><br/><t size='1.3' color='#FFFF00'>$%3</t><br/>", _text,_resname, [_price] call lhm_fnc_numberText];
	
	if(_globalchange >= 0) then
	{
		_text = format["%1<img size='2' image='core\economic\icons\trendup.paa'/> $%2 <br/>", _text, _globalchange];
	}
	else
	{
		_text = format["%1<img size='2' image='core\economic\icons\trenddown.paa'/> $%2 <br/>", _text, _globalchange];
	};
	
	if(_lastchange >= 0) then
	{
		_text = format["%1<img size='2' image='core\economic\icons\trendup.paa'/> $%2 <br/>", _text, _lastchange];
	}
	else
	{
		_text = format["%1<img size='2' image='core\economic\icons\trenddown.paa'/> $%2 <br/>", _text, _lastchange];
	};
	
	};
}
foreach _items;

//Show everyting
if(_didanything) then {hintSilent parseText _text;};