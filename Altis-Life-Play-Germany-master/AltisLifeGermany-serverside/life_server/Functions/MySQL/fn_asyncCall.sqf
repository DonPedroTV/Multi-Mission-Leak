/* 
 File: asyncCall.sqf 
 Author: Bryan "Tonic" Boardwine 
 
 Description: 
 Commits an asynchronous call to extDB 
 Gets result via extDB  4:x + uses 5:x if message is Multi-Part 
 
 Parameters: 
  0: STRING (Query to be ran). 
  1: INTEGER (1 = ASYNC + not return for update/insert, 2 = ASYNC + return for query's). 
  2: BOOL (False to return a single array, True to return multiple entries mainly for garage). 
*/ 
 
waitUntil {!DB_Async_Active}; 
 
private["_queryStmt","_queryResult","_key","_mode","_return","_loop"]; 
 
_tickTime = diag_tickTime; 
 
_queryStmt = [_this,0,"",[""]] call BIS_fnc_param; 
_mode = [_this,1,1,[0]] call BIS_fnc_param; 
_multiarr = [_this,2,false,[false]] call BIS_fnc_param; 
 
_key = "extDB2" callExtension format["%1:%2:%3",_mode, (call life_sql_id), _queryStmt]; 
 
if(_mode isEqualTo 1) exitWith {DB_Async_Active = false; true}; 
 
_key = call compile format["%1",_key]; 
_key = _key select 1; 
 
DB_Async_Active = true; 
 
uisleep (random .03); 
 
// Get Result via 4:x (single message return)  v19 and later 
_queryResult = ""; 
_loop = true; 
 
waitUntil{uisleep (random .03); !DB_Async_ExtraLock}; 
DB_Async_ExtraLock = true; 
 
while{_loop} do 
{ 
 _queryResult = "extDB2" callExtension format["4:%1", _key]; 
 if (_queryResult isEqualTo "[5]") then { 
  // extDB2 returned that result is Multi-Part Message 
  _queryResult = ""; 
  while{true} do { 
   _pipe = "extDB2" callExtension format["5:%1", _key]; 
   if(_pipe isEqualTo "") exitWith {_loop = false}; 
   _queryResult = _queryResult + _pipe; 
  }; 
 } 
 else 
 { 
  if (_queryResult isEqualTo "[3]") then 
  { 
   diag_log format ["extDB2: uisleep [4]: %1", diag_tickTime]; 
   uisleep 0.1; 
  } else { 
   _loop = false; 
  }; 
 }; 
}; 
 
DB_Async_ExtraLock = false; 
DB_Async_Active = false; 
 
_queryResult = call compile _queryResult; 
 
// Not needed, its SQF Code incase extDB ever returns error message i.e Database Died 
if ((_queryResult select 0) isEqualTo 0) exitWith {diag_log format ["extDB2: Protocol Error: %1", _queryResult]; []}; 
_return = (_queryResult select 1); 
 
if(!_multiarr) then { 
 _return = _return select 0; 
}; 
 
_return; 
