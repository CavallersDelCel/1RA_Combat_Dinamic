// To limit base relocating to certain unit slots replace
//GameMasters by something like this :
// GameMasters = [zeus1,zeus2,yourunitname];

_GameMasters = allUnits;
if !(player in _GameMasters) exitWith {hint ( localize "str_AOW_Game_Base1_1" )};

[] execVM "MissionCreator\BaseCreator\DialogBase.sqf";