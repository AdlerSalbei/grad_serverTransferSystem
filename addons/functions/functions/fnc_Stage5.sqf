#include "script_component.hpp"
//stage 5, waiting for the server list to populate with the desired server

_ctrlServerList = (findDisplay 8) displayCtrl 102;
					
_data = _ctrlServerList lbData 0;

//check timeouts
_timeout = uiNamespace getVariable [QGVAR(transferTimeout),-1];

if(_timeout == -1) exitWith {
	["STS > Timeout (no timeout set)"] call FUNC(TransferFailed);
};
if(diag_tickTime > _timeout) exitWith {
	["STS > Timeout (no server found)"] call FUNC(TransferFailed);
};

// get connection data
_connectionData = uiNamespace getVariable [QGVAR(connectionData),[]];
if(count(_connectionData) < 2) exitWith {
	["STS > Failed (no transfer info set)"] call FUNC(TransferFailed);
};
_connectionData = ((_connectionData select 0) + ":" + (_connectionData select 1));

// wait for proper server to be found then select it
if(_data isEqualTo _connectionData) then {
	
	((findDisplay 8) displayCtrl 102) lbSetCurSel 0;
	
	onEachFrame (uiNamespace getVariable QFUNC(Stage6));
};
