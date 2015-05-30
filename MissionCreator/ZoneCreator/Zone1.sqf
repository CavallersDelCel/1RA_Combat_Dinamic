// To limit zone creation to certain unit slots replace
//GameMasters by something like this :
// GameMasters = [zeus1,zeus2,yourunitname];

_GameMasters = allUnits;
if !(player in _GameMasters) exitWith {hintSilent ( localize "str_AOW_Game_Base1_2" )};

hintSilent ( localize "str_AOW_Game_Base_Zone" );
openMap true;

["BASE_mapclick","onMapSingleClick", {
if (_alt) then {
_tempMarkerDelete = createMarker ["TempDeleteM", _pos];
[] execVM "MissionCreator\ZoneCreator\DeleteZone.sqf";
} else {
_tempMarkerZ = createMarker ["TempZone", _pos];
[] execVM "MissionCreator\ZoneCreator\DialogZone.sqf";
};
}] call BIS_fnc_addStackedEventHandler;

waitUntil {!(visibleMap)};

["BASE_mapclick", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;

if (true) exitWith {};