#include "script_component.hpp"
//stage 4, entering the server connection info to the DIRECT CONNECT display and clicking "join"

_connectionData = uiNamespace getVariable [QGVAR(connectionData),[]];
if(count(_connectionData) < 2) exitWith {
	["STS > Failed (no transfer info set)"] call FUNC(TransferFailed);
};

_ctrlServerAddress = (findDisplay 19) displayCtrl 2300; 
_ctrlServerAddress controlsGroupCtrl 101 ctrlSetText (_connectionData select 0);
_ctrlServerAddress controlsGroupCtrl 102 ctrlSetText (_connectionData select 1);

ctrlActivate (_ctrlServerAddress controlsGroupCtrl 1);

onEachFrame (uiNamespace getVariable QFUNC(Stage5));

diag_log "Stage4";
