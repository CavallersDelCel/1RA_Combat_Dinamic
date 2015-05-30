_Bdirection = 0;
switch (lbCurSel 4602) do
	{
	case 0: {_Bdirection = random 360};
	case 1: {_Bdirection = 180};
	case 2: {_Bdirection = 270};
	case 3: {_Bdirection = 0};
	case 4: {_Bdirection = 90};
};
closeDialog 0;
_creatingtype = [_this, 0, ""] call BIS_fnc_param;
_oldbasepos = getMarkerPos "respawn_west";
if (getMarkerColor "VVS1" == "") then {_oldbasepos = getPos player};
if (getMarkerColor "VVS1" != "") then {
	{
	if ((_x isKindOf "Building" && (_x distance baseFlagPole) < 85) || (_x isKindOf "thingX" && _x distance baseFlagPole < 80)) then {
		deleteVehicle _x;
	};
} foreach allMissionObjects "All";
sleep 0.5;
{
	if ((_x isKindOf "Building" && (_x distance _oldbasepos) < 85) || (_x isKindOf "thingX" && _x distance _oldbasepos < 80)) then {
		deleteVehicle _x;
	};
} foreach allMissionObjects "All";
};

// Make sure the old base was deleted, for some reason 1 clean up isn't enough, and 2 sometimes doesn't delete the last signs, 3 is good

//
// RANDOM
//
if (_creatingtype == "random") then {
	openMap false;
	if (isNil "center_of_map") then {
	_getmapinfo = [] execVM "scripts\mapsize.sqf";
    waitUntil {scriptDone _getmapinfo};
    };
	hintSilent (localize "str_AOW_Game_Base3");
	_found = false;
	_foundSafePos = 0;
	while {!_found} do {
		_foundSafePos = [center_of_map,0,half_of_map,40,0,0.1,0,[],[[0,0],[0,0]]] call BIS_fnc_findSafePos;
			if (_foundSafePos select 0 != 0 && _foundSafePos select 1 != 0 && _foundSafePos distance _oldbasepos > 100) then {_found=true;};
			};
	hint ( localize "str_AOW_Game_Base2" );
	_newbase = [_foundSafePos, random 360, call (compile (preprocessFileLineNumbers "MissionCreator\TasksCompositions\base.sqf"))] call BIS_fnc_ObjectsMapper;
	[] execVM "MissionCreator\BaseCreator\ReBuild.sqf";
};
//
// MANUAL
//
if (_creatingtype == "manual") then {
	openMap true;
	hint ( localize "str_AOW_Game_Base4" );
	["Relocate_mapclick","onMapSingleClick", {
	_tempMarkerBase = createMarker ["TempBase", _pos];
	_tempMarkerBase setMarkerType "hd_objective";
    _tempMarkerBase setMarkerColor "ColorBlue";
	openMap false;
	hint ( localize "str_AOW_Game_Base2" );
}] call BIS_fnc_addStackedEventHandler;

waitUntil {!(visibleMap)};

["Relocate_mapclick", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;

_newbase = [getMarkerPos "TempBase", _Bdirection, call (compile (preprocessFileLineNumbers "MissionCreator\TasksCompositions\base.sqf"))] call BIS_fnc_ObjectsMapper;
    [] execVM "MissionCreator\BaseCreator\ReBuild.sqf";
};

// Move the player who created the base at game starting
sleep 1;
waitUntil {getMarkerColor "VVS1" != ""};
if (player distance [0,0,0] < 100 ) then {player setPos [(getMarkerpos "respawn_west" select 0) + random 5 - random 5, (getMarkerpos "respawn_west" select 1) + random 5 - random 5,0]};

// Move player near the old base being deleted
{if (_x distance _oldbasepos < 100 && isPlayer _x) then {
	_x setPos [(getMarkerpos "respawn_west" select 0) + random 5 - random 5, (getMarkerpos "respawn_west" select 1) + random 5 - random 5,0]};
} forEach allUnits;

hint ( localize "str_AOW_Game_Base5" );
deleteMarker "TempBase";