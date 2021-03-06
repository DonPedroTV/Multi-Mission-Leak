/*
	File: fn_handleInv.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Do I really need one?
*/

private ["_math","_item","_num","_var","_diff","_weight","_value","_return","_rnd"];
_math = param [0,false,[false]]; //true = add; false = subtract;
_item = param [1,"",[""]]; //The item we are using to add or remove.
_num = param [2,0,[0]]; //Number of items to add or remove.
if(_item == "" OR _num == 0) exitWith {false};

_var = [_item,0] call lhm_fnc_varHandle;
if(_math) then
{
	_diff = [_item,_num,lhm_carryWeight,lhm_maxWeight] call lhm_fnc_calWeightDiff;
	_num = _diff;
	if(_num <= 0) exitWith {false};
};
_weight = ([_item] call lhm_fnc_itemWeight) * _num;
_value = missionNamespace getVariable _var;

if(_math) then
{
	//Lets add!
	if((lhm_carryWeight + _weight) <= lhm_maxWeight) then
	{
		missionNamespace setVariable[_var,(_value + _num)];

		if((missionNamespace getVariable _var) > _value) then
		{
			lhm_carryWeight = lhm_carryWeight + _weight;
			_return = true;
		}
			else
		{
			_return = false;
		};
	}
		else
	{
		_return = false;
	};
}
	else
{
	//Lets subtract!
	if((_value - _num) < 0) then
	{
		_return = false;
	}
		else
	{
		missionNamespace setVariable[_var,(_value - _num)];

		if((missionNamespace getVariable _var) < _value) then
		{
			lhm_carryWeight = lhm_carryWeight - _weight;
			_return = true;
		}
			else
		{
			_return = false;
		};
	};
};



//if(_item in ["uranwaste","cocainep","procMeth"] && playerside != independent) then {
//	_rnd = random(100);
//	if(_rnd <= 0.1) then {
//		 [] spawn LHM_fsm_fnc_disease;
//	};
//
//};


_return;