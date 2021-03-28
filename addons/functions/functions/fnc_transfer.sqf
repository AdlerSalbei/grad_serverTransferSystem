#include "script_component.hpp"

params["_ip", ["_port", "2302"], ["_timeout", 30], ["_password", ""]];


if (isServer || !(isRemoteExecuted && remoteExecutedOwner isEqualTo 2)) exitWith {diag_log "Must be remote executed from dedicated server";};

// set transfer information
uiNamespace setVariable [QGVAR(timeout), diag_tickTime + _timeout];
uiNamespace setVariable [QGVAR(connectionData), [_ip,_port,_password]];

diag_log "Transfer Start";

//call FUNC(startOverlay);

// start staging payloads
onEachFrame (uiNamespace getVariable QFUNC(Stage1));