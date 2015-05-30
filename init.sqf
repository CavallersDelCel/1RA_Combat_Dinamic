//
// ---------------------------------------- AOW V 2.7 ----------------------------------------------------
//

// Modificació dels Cavallers del Cel per CC_Magnetar. Configuració del Task Force Arrowhead Radio.
if (isServer or isDedicated) then {
    tf_no_auto_long_range_radio = true;
    tf_same_sw_frequencies_for_side = true;
    tf_same_lr_frequencies_for_side = true;

	// El canal alternatiu no es configura automàticament. Els líders d'esquadra i d'equip ho hauran
	// de fer manualment. D'aquesta manera les radios de rifleman només podran escoltar pel canal d'equip.
	tf_freq_west =    [0 ,7, ["201","202","203","204","41","51","61","512"],0, "b", -1];
	tf_freq_west_lr = [0 ,7, ["41","51","61","42","52","62","43","53","63"],0, "b", -1];
}; 


// Disable save/load that breaks scripts
enableSaving [false, false];

// Be sure that jip players won't have the initial base creation dialog
if (isNil "AOW_can_create_base") then {AOW_can_create_base = true;};

// Custom functions
call compile preprocessFile "functions.sqf";

if (isServer) then {
// The server pick a player who will locate the base
	[] execVM "missionStart.sqf";
// BIS dynamic groups server side init
	["Initialize"] call BIS_fnc_dynamicGroups;
// Add every spawned unit to zeus editable objects
	[] execVM "scripts\zeus.sqf";
//[AiCacheDistance(players),TargetFPS(-1 for Auto),Debug,CarCacheDistance,AirCacheDistance,BoatCacheDistance]execvm "zbe_cache\main.sqf";
// Caching script
    if (paramsArray select 15 != 0) then {
    	_cachedis = paramsArray select 15;
    	[_cachedis,-1,false,_cachedis,_cachedis,_cachedis]execvm "zbe_cache\main.sqf";
    };
};

// SHKpos and IEDs
call compile preprocessfile "SHK_pos\shk_pos_init.sqf";
[] spawn {call compile preprocessFileLineNumbers "EPD\Ied_Init.sqf";};

// Various Scripts
[] execVM "module_cleanup\init.sqf";
[] execVM "eos\OpenMe.sqf";
[] execVM "briefing.sqf";
[] execVM "scripts\MHQ\MHQMarker.sqf";
[] execVM "bon_recruit_units\init.sqf";
[] execVM "pxs_satcom_a3\init_satellite.sqf";
[] execVM "scripts\lift_init.sqf";

// SHK Taskmaster
[[["DefaultTask",localize "str_AOW_Flag1",localize "str_AOW_Flag2",true]],[]] execvm "scripts\shk_taskmaster.sqf";

// Dynamic Weather
if (paramsArray select 3 != 5) then {[] execVM "scripts\randomWeather2.sqf"};

// QuickSilver fatigue
if (paramsArray select 7 == 2) then {[] execVM "scripts\QS_Fatigue.sqf"};

// Time acceleration
if (paramsArray select 2 != 0) then {
	if (isServer) then {
		setTimeMultiplier (paramsArray select 2);
	};
};

// Ambiant Combat
if (paramsArray select 11 != 0) then {[] execVM "LV\useambient.sqf";};

// Init variable
AOW_Checkbox = false;
AOW_Selected_Spawner = 0;

// AI Enhancements
if (paramsArray select 13 == 1) then {call compile preprocessFileLineNumbers "scripts\Init_UPSMON.sqf";};
if (paramsArray select 13 == 2) then {[] execVM "VCOMAI\init.sqf";};