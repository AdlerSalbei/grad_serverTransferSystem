#include "script_component.hpp"
//stage 3, opening the DIRECT CONNECT display on the multiple server list

ctrlActivate (findDisplay 8 displayCtrl 166);

//Closes the MP Server Screen
//findDisplay 8 closeDisplay 2;

onEachFrame (uiNamespace getVariable QFUNC(Stage4));

diag_log "Stage3";