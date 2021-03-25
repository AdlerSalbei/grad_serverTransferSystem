#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = QUOTE(ADDON);
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = { QMAINPATCH };
        authors[] = { "Salbei" };
        VERSION_CONFIG;
    };
};

#include <CfgEventHandlers.hpp>
#include "cfgSTS.hpp"

class CfgFunctions
{
	class A3
	{
		class GUI
		{
			class initDisplay
			{
				file = QPATHTOF(functions\initDisplay.sqf);
			};
		};
	};
};