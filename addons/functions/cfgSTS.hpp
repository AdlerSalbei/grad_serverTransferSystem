class CfgSTS
{
	
	class RscDisplayMultiplayerSetup
	{
		onLoad = QPATHTOF(functions\RscDisplayMultiplayerSetup.sqf);
		ctrlOverride[] = {2,109,114,1086,1013,1015,134,133,135,136};
	};
	class RscDisplayMission
	{
		onLoad = QPATHTOF(functions\RscDisplayMission.sqf);
	};
	class RscDisplayLoading
	{
		onLoad = QPATHTOF(functions\RscDisplayLoading.sqf);
	};
	class RscDiary
	{
		onLoad = QPATHTOF(functions\RscDiary.sqf);
	};
	class RscDisplayMultiplayer
	{
		ctrlOverride[] = {102,168,148};
	};
	class RscMPSetupMessage
	{
		ctrlOverride[] = {101};
	};
};

class IGUIBack;
class RscText;
class RscStandardDisplay;
class RscDisplayEmpty;
class RscDisplayMPPlayers;
class RscDisplayGetReady;
class RscDisplayChannel
{
	onLoad = QUOTE(with uiNamespace do {ARR_2('RscDisplayChannel',_this select 0) call FUNC(DisplayInit)});
	class controls
	{
		class IGUIBack_2200: IGUIBack
		{
			idc = 22000;
			x = "0 * safezoneW + safezoneX";
			y = "0 * safezoneH + safezoneY";
			w = "1 * safezoneW";
			h = "1 * safezoneH";
			colorBackground[] = {0,0,0,1};
			show = 0;
		};
		class RscText_1000: RscText
		{
			idc = 22001;
			text = "PLEASE WAIT...";
			x = "0.402031 * safezoneW + safezoneX";
			y = "0.00500001 * safezoneH + safezoneY";
			w = "0.201094 * safezoneW";
			h = "0.077 * safezoneH";
			show = 0;
		};
	};
};
class RscMPSetupMessage
{
	onLoad = QUOTE(with uiNamespace do {ARR_2('RscMPSetupMessage',_this select 0) call FUNC(DisplayInit)});
	class controls
	{
		class IGUIBack_2200: IGUIBack
		{
			idc = 22000;
			x = "0 * safezoneW + safezoneX";
			y = "0 * safezoneH + safezoneY";
			w = "1 * safezoneW";
			h = "1 * safezoneH";
			colorBackground[] = {0,0,0,1};
			show = 0;
		};
		class RscText_1000: RscText
		{
			idc = 22001;
			text = "PLEASE WAIT...";
			x = "0.402031 * safezoneW + safezoneX";
			y = "0.00500001 * safezoneH + safezoneY";
			w = "0.201094 * safezoneW";
			h = "0.077 * safezoneH";
			show = 0;
		};
	};
};
class RscDisplayMainMap
{
	class controls
	{
		class IGUIBack_2200: IGUIBack
		{
			idc = 22000;
			x = "0 * safezoneW + safezoneX";
			y = "0 * safezoneH + safezoneY";
			w = "1 * safezoneW";
			h = "1 * safezoneH";
			colorBackground[] = {0,0,0,1};
			show = 0;
		};
		class RscText_1000: RscText
		{
			idc = 22001;
			text = "PLEASE WAIT...";
			x = "0.402031 * safezoneW + safezoneX";
			y = "0.00500001 * safezoneH + safezoneY";
			w = "0.201094 * safezoneW";
			h = "0.077 * safezoneH";
			show = 0;
		};
	};
};

class RscMessageProgress
{
	onLoad = QUOTE(with uiNamespace do {ARR_2('RscMessageProgress',_this select 0) call FUNC(DisplayInit)});
	class controls
	{
		class IGUIBack_2200: IGUIBack
		{
			idc = 22000;
			x = "0 * safezoneW + safezoneX";
			y = "0 * safezoneH + safezoneY";
			w = "1 * safezoneW";
			h = "1 * safezoneH";
			colorBackground[] = {0,0,0,1};
			show = 0;
		};
		class RscText_1000: RscText
		{
			idc = 22001;
			text = "PLEASE WAIT...";
			x = "0.402031 * safezoneW + safezoneX";
			y = "0.00500001 * safezoneH + safezoneY";
			w = "0.201094 * safezoneW";
			h = "0.077 * safezoneH";
			show = 0;
		};
	};
};
class RscDisplayClient: RscStandardDisplay
{
	class controls
	{
		class IGUIBack_2200: IGUIBack
		{
			idc = 22000;
			x = "0 * safezoneW + safezoneX";
			y = "0 * safezoneH + safezoneY";
			w = "1 * safezoneW";
			h = "1 * safezoneH";
			colorBackground[] = {0,0,0,1};
			show = 0;
		};
		class RscText_1000: RscText
		{
			idc = 22001;
			text = "PLEASE WAIT...";
			x = "0.402031 * safezoneW + safezoneX";
			y = "0.00500001 * safezoneH + safezoneY";
			w = "0.201094 * safezoneW";
			h = "0.077 * safezoneH";
			show = 0;
		};
	};
};
class RscDisplayLoadMission: RscStandardDisplay
{
	class controls
	{
		class IGUIBack_2200: IGUIBack
		{
			idc = 22000;
			x = "0 * safezoneW + safezoneX";
			y = "0 * safezoneH + safezoneY";
			w = "1 * safezoneW";
			h = "1 * safezoneH";
			colorBackground[] = {0,0,0,1};
			show = 0;
		};
		class RscText_1000: RscText
		{
			idc = 22001;
			text = "PLEASE WAIT...";
			x = "0.402031 * safezoneW + safezoneX";
			y = "0.00500001 * safezoneH + safezoneY";
			w = "0.201094 * safezoneW";
			h = "0.077 * safezoneH";
			show = 0;
		};
	};
};
class RscDisplayClientGetReady: RscDisplayGetReady
{
	class controls
	{
		class IGUIBack_2200: IGUIBack
		{
			idc = 22000;
			x = "0 * safezoneW + safezoneX";
			y = "0 * safezoneH + safezoneY";
			w = "1 * safezoneW";
			h = "1 * safezoneH";
			colorBackground[] = {0,0,0,1};
			show = 0;
		};
		class RscText_1000: RscText
		{
			idc = 22001;
			text = "PLEASE WAIT...";
			x = "0.402031 * safezoneW + safezoneX";
			y = "0.00500001 * safezoneH + safezoneY";
			w = "0.201094 * safezoneW";
			h = "0.077 * safezoneH";
			show = 0;
		};
	};
};
class RscDisplayMission: RscDisplayEmpty
{
	class controls
	{
		class IGUIBack_2200: IGUIBack
		{
			idc = 22000;
			x = "0 * safezoneW + safezoneX";
			y = "0 * safezoneH + safezoneY";
			w = "1 * safezoneW";
			h = "1 * safezoneH";
			colorBackground[] = {0,0,0,1};
			show = 0;
		};
		class RscText_1000: RscText
		{
			idc = 22001;
			text = "PLEASE WAIT...";
			x = "0.402031 * safezoneW + safezoneX";
			y = "0.00500001 * safezoneH + safezoneY";
			w = "0.201094 * safezoneW";
			h = "0.077 * safezoneH";
			show = 0;
		};
	};
};
class RscDisplayIPAddress: RscStandardDisplay
{
	class controls
	{
		class IGUIBack_2200: IGUIBack
		{
			idc = 22000;
			x = "0 * safezoneW + safezoneX";
			y = "0 * safezoneH + safezoneY";
			w = "1 * safezoneW";
			h = "1 * safezoneH";
			colorBackground[] = {0,0,0,1};
			show = 1;
		};
		class RscText_1000: RscText
		{
			idc = 22001;
			text = "PLEASE WAIT...";
			x = "0.402031 * safezoneW + safezoneX";
			y = "0.00500001 * safezoneH + safezoneY";
			w = "0.201094 * safezoneW";
			h = "0.077 * safezoneH";
			show = 1;
		};
	};
};
class RscDisplayPassword: RscStandardDisplay
{
	class controls
	{
		class IGUIBack_2200: IGUIBack
		{
			idc = 22000;
			x = "0 * safezoneW + safezoneX";
			y = "0 * safezoneH + safezoneY";
			w = "1 * safezoneW";
			h = "1 * safezoneH";
			colorBackground[] = {0,0,0,1};
			show = 0;
		};
		class RscText_1000: RscText
		{
			idc = 22001;
			text = "PLEASE WAIT...";
			x = "0.402031 * safezoneW + safezoneX";
			y = "0.00500001 * safezoneH + safezoneY";
			w = "0.201094 * safezoneW";
			h = "0.077 * safezoneH";
			show = 0;
		};
	};
};
class RscDisplayDebriefing: RscStandardDisplay
{
	class controls
	{
		class IGUIBack_2200: IGUIBack
		{
			idc = 22000;
			x = "0 * safezoneW + safezoneX";
			y = "0 * safezoneH + safezoneY";
			w = "1 * safezoneW";
			h = "1 * safezoneH";
			colorBackground[] = {0,0,0,1};
			show = 0;
		};
		class RscText_1000: RscText
		{
			idc = 22001;
			text = "PLEASE WAIT...";
			x = "0.402031 * safezoneW + safezoneX";
			y = "0.00500001 * safezoneH + safezoneY";
			w = "0.201094 * safezoneW";
			h = "0.077 * safezoneH";
			show = 0;
		};
	};
};
class RscDisplayMultiplayer: RscStandardDisplay
{
	class controls
	{
		class IGUIBack_2200: IGUIBack
		{
			idc = 22000;
			x = "0 * safezoneW + safezoneX";
			y = "0 * safezoneH + safezoneY";
			w = "1 * safezoneW";
			h = "1 * safezoneH";
			colorBackground[] = {0,0,0,1};
			show = 0;
		};
		class RscText_1000: RscText
		{
			idc = 22001;
			text = "PLEASE WAIT...";
			x = "0.402031 * safezoneW + safezoneX";
			y = "0.00500001 * safezoneH + safezoneY";
			w = "0.201094 * safezoneW";
			h = "0.077 * safezoneH";
			show = 0;
		};
	};
};
class RscDisplayMultiplayerSetup: RscStandardDisplay
{
	class controls
	{
		class IGUIBack_2200: IGUIBack
		{
			idc = 22000;
			x = "0 * safezoneW + safezoneX";
			y = "0 * safezoneH + safezoneY";
			w = "1 * safezoneW";
			h = "1 * safezoneH";
			colorBackground[] = {0,0,0,1};
			show = 0;
		};
		class RscText_1000: RscText
		{
			idc = 22001;
			text = "PLEASE WAIT...";
			x = "0.402031 * safezoneW + safezoneX";
			y = "0.00500001 * safezoneH + safezoneY";
			w = "0.201094 * safezoneW";
			h = "0.077 * safezoneH";
			show = 0;
		};
	};
};
