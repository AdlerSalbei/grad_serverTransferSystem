#include "script_component.hpp"

disableserialization;

private _connectionData = uiNamespace getVariable [QGVAR(connectionData),[]];
if(count(_connectionData) < 4) exitWith {
	["STS > Warning (no autojoin set)"] call FUNC(transferFailed);
};
_autojoin = _connectionData select 3;
if(_autojoin) then {
	with uiNamespace do {
		TransferDelay = diag_tickTime + 1;
	};
	onEachFrame {
		with uiNamespace do {
			
			if(diag_tickTime > TransferDelay) then {
				diag_log "STS > Trying to autojoin";
				//TODO: check that a slot is selected (if not just run TransferFailed)
				_display = findDisplay 70;
				if(!isNull _display) then {
					_okbutton = _display displayCtrl 1;
					if(ctrlEnabled _okbutton) then {
						diag_log "STS > Loading in";
						ctrlActivate _okbutton;
						onEachFrame {};
					};
				} else {
					TransferDelay = nil;
					["STS > Failed (Display not found)"] call FUNC(transferFailed);
				};
			};
		};
	};
}; // no else needed, transfer complete is handled in stage 7 if autojoin is false