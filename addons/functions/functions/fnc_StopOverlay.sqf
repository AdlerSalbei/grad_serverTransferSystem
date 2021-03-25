#include "script_component.hpp"

disableserialization;
uiNamespace setVariable [QGVAR(renderOverlay),false];

{
	if(!isNull (_x displayCtrl 22000)) then {
		(_x displayCtrl 22000) ctrlShow false;
		(_x displayCtrl 22001) ctrlShow false;
	};
	
	with uiNamespace do {
		_index = GVAR(uidisplayRegistry) find _x;
		if(_index != -1) then {
			_class = GVAR(uiClass_Registry) select _index;
			[_class,_x,true] call FUNC(handleArmaUI);
		} else {
			diag_log format["STS > Error (%1 not registered)",str(_x)];
		};
	};
} forEach allDisplays;