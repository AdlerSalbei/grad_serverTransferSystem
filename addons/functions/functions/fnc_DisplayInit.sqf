#include "script_component.hpp"

params["_class","_display"];

//register display for quick lookup
with uiNamespace do {
	if(isNil QGVAR(uiClass_Registry)) then {GVAR(uiClass_Registry) = [];};
	if(isNil QGVAR(uidisplayRegistry)) then {GVAR(uidisplayRegistry) = [];};
	
	_index = GVAR(uiClass_Registry) find _class;
	if(_index == -1) then {
		GVAR(uiClass_Registry) pushBack _class;
		GVAR(uidisplayRegistry) pushBack _display;
	} else {
		GVAR(uidisplayRegistry) set[_index,_display];
	};
};

if(uiNamespace getVariable [QGVAR(renderOverlay),false]) then {
	if(!isNull (_display displayCtrl 22000)) then {
		diag_log ("STS > Enabling Overlay for " + _class);
		(_display displayCtrl 22000) ctrlShow true;
		(_display displayCtrl 22001) ctrlShow true;
	};
	
	[_class,_display,false] call FUNC(handleArmaUI);
};

_ServerTransferConfig = configFile >> "CfgSTS" >> _class;
if(isClass _ServerTransferConfig) then {
	diag_log ("STS > Initializing Display " + _class);
	_pathToExec = getText(_ServerTransferConfig >> "onLoad");
	if(_pathToExec != "") then {
		[_display] call compile preprocessFileLineNumbers _pathToExec;
	} else {
		diag_log format["STS > Failed to find onLoad for class %1",_class];
	};
};