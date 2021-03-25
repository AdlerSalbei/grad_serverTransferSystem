#include "script_component.hpp"

uiNamespace setVariable [QGVAR(transferTimeout),nil];
uiNamespace setVariable [QGVAR(connectionData),nil];
uiNamespace setVariable [QGVAR(transferDelay),nil];

onEachFrame {};

// stop transfer overlay
call FUNC(StopOverlay);