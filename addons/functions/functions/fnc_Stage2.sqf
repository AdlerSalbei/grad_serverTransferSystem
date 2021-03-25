#include "script_component.hpp"
//stage 2, closing out of this debreifing and MP load displays

diag_log str(allDisplays);

(findDisplay 50) closeDisplay 2;
(findDisplay 70) closeDisplay 2;


//onEachFrame (uiNamespace getVariable 'FUNC(Overlay2');
onEachFrame (uiNamespace getVariable QFUNC(Stage3));

diag_log "Stage2";