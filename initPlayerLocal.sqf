_usewhitelist = false;
_admins = ["_SP_PLAYER_","76561198010042843","76561198010042843"];
// Change to true if you want to block non whitelisted players from using zeus slots, whitelist bellow :
// Replace "76561198010042843" by the steamID64 (google it) of the players you want to whitelist
// (keep "_SP_PLAYER_" for editor testing)

if (_usewhitelist) then {
	if (player == zeus1 || player == zeus2) then {
		if !(getPlayerUID player in _admins) then {
			failMission "END1";
		};
	};
};

// Safety
waitUntil {alive player};

// Disable revive if no revive choosed in parameters
if (paramsArray select 17 == 1) then {
	player setVariable ["BIS_revive_disableRevive", true, true]
};

// Disable player movement
player enableSimulation false;

// Player fatigue
if (paramsArray select 7 == 0) then {
	player enableFatigue false;
	player addEventhandler ["Respawn", {player enableFatigue false}];
};

// BIS dynamic groups player side init
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

// Support requester
switch (paramsArray select 9) do
{
	case 0: {};
	case 1: {player synchronizeObjectsAdd [AOW_Support_Logistic];};
	case 2: {player synchronizeObjectsAdd [AOW_Support_Offensive];};
	case 3: {player synchronizeObjectsAdd [AOW_Support_All];};
};

// 1RA: CC_Viper: Use saved loadout if it exist
// _respawnloadout = profileNamespace getVariable "CD_Equipament_Check";
// if (!isNil "_respawnloadout") then {
//	[player, [profileNamespace, "CD_Equipament"]] call BIS_fnc_loadInventory;};
player linkItem "ItemMap";

// Enable player movement
[] spawn {
	waitUntil {getMarkerColor "VVS1" != ""};
	sleep 1;
	player enableSimulation true;
	player switchMove "";
};

sleep 1;
// If game just started then create base, if player jip or another player create base then teleport to base
if (player distance [0,0,0] < 100 && isNil "baseFlagPole") then {
    waitUntil {!isNil "AOW_base_creation_player"};
    if (AOW_can_create_base && player == AOW_base_creation_player) then {
		AOW_can_create_base = false;
		publicVariable "AOW_can_create_base";
	    [] execVM "MissionCreator\BaseCreator\DialogBase.sqf";} else
	{
	hint localize "str_AOW_Respawn1";
	waitUntil {getMarkerColor "VVS1" != ""};
	player setPos [(getMarkerpos "respawn_west" select 0) + random 5 - random 5, (getMarkerpos "respawn_west" select 1) + random 5 - random 5,0]}
};
if (player distance [0,0,0] < 100 && !isNil "baseFlagPole") then {
	waitUntil {getMarkerColor "VVS1" != ""};
	player setPos [(getMarkerpos "respawn_west" select 0) + random 5 - random 5, (getMarkerpos "respawn_west" select 1) + random 5 - random 5,0]
};