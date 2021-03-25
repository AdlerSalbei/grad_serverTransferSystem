#include "script_component.hpp"

params["_errorMsg"];

uiNamespace setVariable [QGVAR(transferTimeout),nil];
uiNamespace setVariable [QGVAR(connectionData),nil];
uiNamespace setVariable [QGVAR(transferDelay),nil];

diag_log _errorMsg;
onEachFrame {};

//stop transfer overlay
call FUNC(StopOverlay);