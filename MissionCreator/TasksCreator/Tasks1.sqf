// To limit tasks creation to certain unit slots replace
//GameMasters by something like this :
// GameMasters = [zeus1,zeus2,yourunitname];

_GameMasters = allUnits;
if !(player in _GameMasters) exitWith {hint ( localize "str_AOW_Game_Base1" )};

hint ( localize "str_AOW_Place_Tasks" );
openMap true;

["BASE_mapclick","onMapSingleClick", {
_tempMarkerT = createMarker ["TempTask", _pos];
[] execVM "MissionCreator\TasksCreator\DialogTasks.sqf";
}] call BIS_fnc_addStackedEventHandler;

waitUntil {!(visibleMap)};

["BASE_mapclick", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;

if (true) exitWith {};