#include "script_component.hpp"

params["_class"];

_ServerTransferConfig = configFile >> "CfgSTS" >> _class;
if(isClass _ServerTransferConfig) then {
	diag_log ("STS > Finishing Display " + _class);
	_pathToExec = getText(_ServerTransferConfig >> "onUnload");
	if(_pathToExec != "") then {
		call compile preprocessFileLineNumbers _pathToExec;
	} else {
		diag_log format["STS > Failed to find onUnload for class %1",_class];
	};
};