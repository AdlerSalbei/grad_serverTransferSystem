#include "script_component.hpp"

disableserialization;

// not running
params["_display"];

private _connectionData = uiNamespace getVariable [QGVAR(connectionData),[]];
if(count(_connectionData) < 4) exitWith {
	["STS > Warning (no autojoin set)"] call FUNC(TransferFailed);
};
_autojoin = _connectionData select 3;
if(_autojoin) then {
	if(!isNull (uiNamespace getVariable [QGVAR(mission),displayNull])) then {
		//wipe mission registry
		uiNamespace setVariable [QGVAR(mission),nil];
		
		//complete transfer, close all existing overlays
		call FUNC(TransferComplete);
		
		diag_log "STS > Transfer Complete";
	};
}; // no else needed, transfer complete is handled in stage 7 if autojoin is false