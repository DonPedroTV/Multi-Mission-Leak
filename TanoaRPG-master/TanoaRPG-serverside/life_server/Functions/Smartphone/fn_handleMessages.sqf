/* 
 
 file: fn_handleMessages.sqf 
 Author: Silex 
 
*/ 
if(!isNull life_hc_inUse) exitWith {_this remoteExec ["TEX_fnc_handleMessages", life_hc_inUse]}; 
  
private["_msg","_to","_target","_player","_type"]; 
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; 
_msg = [_this,1,"",[""]] call BIS_fnc_param; 
_player = [_this,2,ObjNull,[ObjNull]] call BIS_fnc_param; 
_type = [_this,3,-1] call BIS_fnc_param; 
 
switch(_type) do 
{ 
 //normal message 
 case 0: 
 { 
  if(isNULL _target)  exitWith {}; 
  _to = call compile format["%1", _target]; 
  [_msg,name _player,0] remoteExec ["TEX_fnc_clientMessage",_to,false]; 
   
  private["_query","_pid","_toID"]; 
  _pid = getPlayerUID _player; 
  _toID = getPlayerUID _target; 
  _msg = [_msg] call DB_fnc_mresString; 
  _fromName = name _player; 
  _toName = name _target; 
  _query = format["INSERT INTO messages (fromID, toID, message, fromName, toName) VALUES('%1', '%2', '""%3""', '%4', '%5')",_pid,_toID,_msg,_fromName,_toName]; 
  diag_log format["Query: %1",_query]; 
  //waitUntil{!DB_Async_Active}; 
  [_query,1] call DB_fnc_asyncCall; 
 }; 
 //message to cops 
 case 1: 
 {  
  [_msg, name _player, 1, _player] remoteExec ["TEX_fnc_clientMessage",west,false]; 
 }; 
 //to admins 
 case 2: 
 {  
  [_msg,name _player,2] remoteExec ["TEX_fnc_clientMessage", -2,false]; 
 }; 
 //ems request 
 case 3: 
 {  
  [_msg, name _player, 5, _player] remoteExec ["TEX_fnc_clientMessage",independent,false]; 
 }; 
 //adminToPerson 
 case 4: 
 { 
  _to = call compile format["%1", _target]; 
  if(isNull _to) exitWith {}; 
  
  [_msg,name _player,3] remoteExec ["TEX_fnc_clientMessage",_to,false]; 
 }; 
 //adminMsgAll 
 case 5: 
 { 
  [_msg,name _player,4] remoteExec ["TEX_fnc_clientMessage", -2,false]; 
 }; 
 //(adac)/imperium request 
 case 6: 
 {  
  [_msg,name _player,6, _player] remoteExec ["TEX_fnc_clientMessage",east,false]; 
 }; 
 //CopMsgAll 
    case 7: 
    { 
        [_msg,name _player,7] remoteExec ["TEX_fnc_clientMessage", -2,false]; 
    }; 
 //ImpMsgAll 
    case 8: 
    { 
        [_msg,name _player,8] remoteExec ["TEX_fnc_clientMessage", -2,false]; 
    }; 
};