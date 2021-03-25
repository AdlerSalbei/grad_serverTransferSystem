#include "script_component.hpp"
//stage 7, handle any password screen

_timeout = uiNamespace getVariable [QGVAR(transferTimeout),-1];

if(diag_tickTime > _timeout) exitWith {
	["STS > Timeout (no server found 2)"] call FUNC(TransferFailed);
};

_connectionData = uiNamespace getVariable [QGVAR(connectionData),[]];
if(count(_connectionData) < 4) exitWith {
	["STS > Failed (no server password set)"] call FUNC(TransferFailed);
};

if (!isNull findDisplay 64) then
{
	private _ctrlPassword = findDisplay 64 displayCtrl 101;
	_ctrlPassword ctrlSetTextColor [0,0,0,0];
	_ctrlPassword ctrlSetText (_connectionData select 2);
	ctrlActivate (findDisplay 64 displayCtrl 1);
};

if (getClientStateNumber >= 3) then
{
	diag_log "STS > Joined Server";
	
	//if we are not autojoining a server, wipe the variables
	if !(_connectionData select 3) then {
		call FUNC(TransferComplete);
	} else {
		// CfgSTS takes over from here
		onEachFrame {};
	};
};

