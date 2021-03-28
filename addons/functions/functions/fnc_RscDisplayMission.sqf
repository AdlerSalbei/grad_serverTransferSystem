#include "script_component.hpp"

disableserialization;

params["_display"];

private _connectionData = uiNamespace getVariable [QGVAR(connectionData),[]];
if(count(_connectionData) < 4) exitWith {
	["STS > Warning (no autojoin set)"] call FUNC(TransferFailed);
};
_autojoin = _connectionData select 3;
if(_autojoin) then {
	diag_log "STS > Transfer Complete";
	//manually close overlay because RscDisplayMission is not listed in allDisplays when this scope runs
	(_display displayCtrl 22000) ctrlShow false;
	(_display displayCtrl 22001) ctrlShow false;
	
	uiNamespace setVariable [QGVAR(mission),_display]; //register mission
	
	onEachFrame {hintSilent 'This remains in mission scope';};
	
}; // no else needed, transfer complete is handled in stage 7 if autojoin is false