#include "script_component.hpp"

disableserialization;
params["_class", "_display", ["_show",false]];


_cfg = configFile >> "CfgSTS" >> _class;
if(isClass _cfg) then {
	_idcList = getArray(_cfg >> "ctrlOverride");
	{
		(_display displayCtrl _x) ctrlShow _show;
		true
	} count _idcList;
};
/* 
//Legacy Code
if(_class == "RscDisplayMultiplayer") then {
	(_display displayCtrl 102) ctrlShow _show;
	(_display displayCtrl 168) ctrlShow _show;
};
if(_class == "RscDisplayMultiplayerSetup") then {
	(_display displayCtrl 2) ctrlShow _show;
	(_display displayCtrl 109) ctrlShow _show;
	(_display displayCtrl 114) ctrlShow _show;
	(_display displayCtrl 1086) ctrlShow _show;
};
if(_class == "RscMPSetupMessage") then {
	(_display displayCtrl 101) ctrlShow _show;
};
*/
