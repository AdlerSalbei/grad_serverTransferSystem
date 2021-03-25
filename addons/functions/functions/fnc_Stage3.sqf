#include "script_component.hpp"
//stage 3, opening the DIRECT CONNECT display on the multiple server list

//ctrlActivate (findDisplay 8 displayCtrl 166);

//onEachFrame (uiNamespace getVariable QFUNCStage4));


private _connectionData = uiNamespace getVariable [QGVAR(connectionData),[]];
if(count(_connectionData) < 2) exitWith {
	["STS > Failed (no transfer info set)"] call FUNC(TransferFailed);
};

_connectionData params ["_ip", "_port", "_pw"];

connectToServer [_ip, _port, _pw];
diag_log "Stage3";

[] call FUNC(TransferComplete);