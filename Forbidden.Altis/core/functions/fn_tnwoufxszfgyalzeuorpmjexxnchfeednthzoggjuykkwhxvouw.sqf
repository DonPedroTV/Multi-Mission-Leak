
#include<macro.h>
private ["_rtheqseuloyzngbfsctcpgwrtsedsakvkkdytweeoynaatpyjhyucksnaeiajiwz","_ui","_nzntcvzwfgtyziwrvbkrfxfexgvghdzfhwjxbrzfmecgqadwnhifbnbrixetprergawz","_bcnddxmtxjfzafupbqgvieccontpaoekgmbsryawroyskbqynmhktnyoirsgnxtebel","_qifxpmgqamfgwbergthtfxyczyayxhuurmerbitphptxcofhfylegsmueufqdqr","_rfeskjygofgfwgucxxxxtjhansxerrbxsnwzdgipgywpbvpnzwonsaxoafhyu","_utkpaywdyjoadkdobwqsfixsyhlmzljbzclanhmermlkieusfecwtnzmxriltacole"];  if(perk_16 < 1 && !safekeeping_active) exitWith {hint format[localize "STR_m_NeedPerkForItem",localize ([16] call life_fnc_qokbfvuujyauzhpwhhtwfwakspbzosfzvnzazblmmcrbpdqwwbfdbdztgoic)];};  _rtheqseuloyzngbfsctcpgwrtsedsakvkkdytweeoynaatpyjhyucksnaeiajiwz = if(perk_16 >= 3 OR safekeeping_active) then {0} else {0.15}; _rfeskjygofgfwgucxxxxtjhansxerrbxsnwzdgipgywpbvpnzwonsaxoafhyu = "Bandagerar";  if(damage player == 1) exitWith {hint "Du har redan fullt HP!";};  life_action_inUse = true;   disableSerialization; 5 cutRsc ["life_progress","PLAIN"]; _ui = GVAR_UINS ["life_progress",displayNull]; _progressBar = _ui displayCtrl 38201; _bcnddxmtxjfzafupbqgvieccontpaoekgmbsryawroyskbqynmhktnyoirsgnxtebel = _ui displayCtrl 38202; _bcnddxmtxjfzafupbqgvieccontpaoekgmbsryawroyskbqynmhktnyoirsgnxtebel ctrlSetText format["%2 (1%1)...","%",_rfeskjygofgfwgucxxxxtjhansxerrbxsnwzdgipgywpbvpnzwonsaxoafhyu]; _progressBar progressSetPosition 0.01; _qifxpmgqamfgwbergthtfxyczyayxhuurmerbitphptxcofhfylegsmueufqdqr = 0.01; _utkpaywdyjoadkdobwqsfixsyhlmzljbzclanhmermlkieusfecwtnzmxriltacole = true;   while {true} do { 	if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then { 		 		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1"; 	}; 	 	sleep .15; 	_qifxpmgqamfgwbergthtfxyczyayxhuurmerbitphptxcofhfylegsmueufqdqr = _qifxpmgqamfgwbergthtfxyczyayxhuurmerbitphptxcofhfylegsmueufqdqr + .01; 	_progressBar progressSetPosition _qifxpmgqamfgwbergthtfxyczyayxhuurmerbitphptxcofhfylegsmueufqdqr; 	_bcnddxmtxjfzafupbqgvieccontpaoekgmbsryawroyskbqynmhktnyoirsgnxtebel ctrlSetText format["%3 (%1%2)...",round(_qifxpmgqamfgwbergthtfxyczyayxhuurmerbitphptxcofhfylegsmueufqdqr * 100),"%",_rfeskjygofgfwgucxxxxtjhansxerrbxsnwzdgipgywpbvpnzwonsaxoafhyu]; 	if(_qifxpmgqamfgwbergthtfxyczyayxhuurmerbitphptxcofhfylegsmueufqdqr >= 1) exitWith {_utkpaywdyjoadkdobwqsfixsyhlmzljbzclanhmermlkieusfecwtnzmxriltacole = false;}; 	if!(alive player) exitWith {}; 	if(life_istazed) exitWith {};  	if(life_interrupted) exitWith {}; 	if(player GVAR ["restrained",false]) exitWith {}; 	if(player GVAR ["adminRestrained",false]) exitWith {}; };   5 cutText ["","PLAIN"]; player playActionNow "stop"; if(life_interrupted) then {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"];}; if(_utkpaywdyjoadkdobwqsfixsyhlmzljbzclanhmermlkieusfecwtnzmxriltacole) exitWith {life_action_inUse = false;}; life_action_inUse = false;  if(_rtheqseuloyzngbfsctcpgwrtsedsakvkkdytweeoynaatpyjhyucksnaeiajiwz < damage player && ([false,"bandage",1] call life_fnc_obfjrnynfhghcglhujcjbgakxemxpjvrqczgxoeickhzvgovmtdbvr)) then { 	player setDamage _rtheqseuloyzngbfsctcpgwrtsedsakvkkdytweeoynaatpyjhyucksnaeiajiwz; }; 