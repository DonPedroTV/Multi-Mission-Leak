/* 
 Author: Bryan "Tonic" Boardwine 
  
 Description: 
 Blah 
*/ 
if(!isNull life_hc_inUse) exitWith {_this remoteExec ["TEX_fnc_removeGang", life_hc_inUse]}; 
 
private["_group","_groupID"]; 
_group = [_this,0,grpNull,[grpNull]] call BIS_fnc_param; 
if(isNull _group) exitWith {}; 
 
_groupID = _group getVariable["gang_id",-1]; 
if(_groupID == -1) exitWith {}; 
 
//waitUntil{!DB_Async_Active}; 
[format["UPDATE gangs SET active='0' WHERE id='%1'",_groupID],1] call DB_fnc_asyncCall; 
 
//waitUntil{!DB_Async_Active}; 
_result = [format["SELECT id FROM gangs WHERE active='1' AND id='%1'",_groupID],2] call DB_fnc_asyncCall; 
if(count _result == 0) then { 
 [_group] remoteExec ["tanoarpg_fnc_gangDisbanded",(units _group),false]; 
 sleep 5; 
 deleteGroup _group; 
};