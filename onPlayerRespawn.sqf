// Safety
waitUntil {alive player};

// Avoid annoying low ammo / map position message
[] spawn {
    _voice = speaker player;
	player setSpeaker "NoVoice";
	sleep 2;
	player setSpeaker _voice;
};

// onPlayerRespawn is also triggered by getting incapacited
if (player getVariable "BIS_revive_incapacitated") exitWith {
	if (paramsArray select 17 == 0) then {
		[player] spawn tcb_fnc_sendaihealer;
	};
};

// Support requester
switch (paramsArray select 9) do
{
	case 0: {};
	case 1: {player synchronizeObjectsAdd [AOW_Support_Logistic];};
	case 2: {player synchronizeObjectsAdd [AOW_Support_Offensive];};
	case 3: {player synchronizeObjectsAdd [AOW_Support_All];};
};

// Use saved loadout if it exist
_respawnloadout = profileNamespace getVariable "CD_Equipament_Check";
if (!isNil "_respawnloadout") then {
	[player, [profileNamespace, "CD_Equipament"]] call BIS_fnc_loadInventory;};

sleep 1;
// If game just started then create base, if player jip or another player create base then teleport to base
if (player distance [0,0,0] < 100 && isNil "baseFlagPole") then {
    waitUntil {!isNil "AOW_base_creation_player"};
    if (AOW_can_create_base && player == AOW_base_creation_player) then {
		AOW_can_create_base = false;
		publicVariable "AOW_can_create_base";
	    [] execVM "MissionCreator\BaseCreator\DialogBase.sqf";} else
	{
	hint ( localize "str_AOW_Respawn1" );
	waitUntil {getMarkerColor "VVS1" != ""};
	player setPos [(getMarkerpos "respawn_west" select 0) + random 5 - random 5, (getMarkerpos "respawn_west" select 1) + random 5 - random 5,0]}
};
if (player distance [0,0,0] < 100 && !isNil "baseFlagPole") then {
	waitUntil {getMarkerColor "VVS1" != ""};
	player setPos [(getMarkerpos "respawn_west" select 0) + random 5 - random 5, (getMarkerpos "respawn_west" select 1) + random 5 - random 5,0]
};