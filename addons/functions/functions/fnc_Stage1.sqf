#include "script_component.hpp"
//Stage 1, closing all pre-existing displays in proper order (so the game doesn't crash)

_displays = allDisplays;
_indexMission = _displays find (findDisplay 46);
_displays = _displays select [_indexMission,count(_displays)];
reverse _displays;
{_x closeDisplay 2} forEach _displays; 

onEachFrame (uiNamespace getVariable QFUNC(Stage2));

diag_log str(allDisplays);

diag_log "Stage1";