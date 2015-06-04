//
// ---------------------------------------- AOW V 2.8 ----------------------------------------------------
//

// Disable save/load that breaks scripts
enableSaving [false, false];

// Be sure that jip players won't have the initial base creation dialog
if (isNil "AOW_can_create_base") then {AOW_can_create_base = true;};

// Custom functions
call compile preprocessFile "functions.sqf";

// SHKpos and IEDs
call compile preprocessfile "SHK_pos\shk_pos_init.sqf";
[] spawn {call compile preprocessFileLineNumbers "EPD\Ied_Init.sqf";};

// BTC Quick Revive for recruited AI
if (paramsArray select 17 == 0) then {
	call compile preprocessFile "=BTC=_q_revive\config.sqf";
};

// Various Scripts
[] execVM "eos\OpenMe.sqf";
[] execVM "briefing.sqf";
[] execVM "bon_recruit_units\init.sqf";
[] execVM "pxs_satcom_a3\init_satellite.sqf";

// SHK Taskmaster
[[["DefaultTask",localize "str_AOW_Flag1",localize "str_AOW_Flag2",true]],[]] execvm "scripts\shk_taskmaster.sqf";

// Dynamic Weather
if (paramsArray select 3 != 5) then {[] execVM "scripts\randomWeather2.sqf"};

// QuickSilver fatigue
if (paramsArray select 7 == 2) then {[] execVM "scripts\QS_Fatigue.sqf"};

// Ambiant Combat
if (paramsArray select 11 != 0) then {[] execVM "LV\useambient.sqf";};

// Init variables
AOW_Checkbox = false;
AOW_Checkbox_ASORVS = false;
AOW_Selected_Spawner = 0;

// AI Enhancements
if (paramsArray select 13 == 1) then {call compile preprocessFileLineNumbers "scripts\Init_UPSMON.sqf";};
if (paramsArray select 13 == 2) then {[] execVM "VCOMAI\init.sqf";};