switch (lbCurSel 4601) do
{
    case 0: {
    if (true) exitWith {
        closedialog 0;
        [] execVM "AOW_MissionCreator\DefenseCreator\DialogDefense.sqf";
    };
};
    case 1: {
    _Stasks = [[["AOW_Make_sabotage"],"AOW_MissionCreator\TasksCreator\MakeMission.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;
};
    case 2: {
    _FDtasks = [[["AOW_Make_fdestroy"],"AOW_MissionCreator\TasksCreator\MakeMission.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;
};
    case 3: {
    _Atasks = [[["AOW_Make_assassinate"],"AOW_MissionCreator\TasksCreator\MakeMission.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;
};
    case 4: {
    _Dtasks = [[["AOW_Make_destroy"],"AOW_MissionCreator\TasksCreator\MakeMission.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;
};
    case 5: {
    _Etasks = [[["AOW_Make_extraction"],"AOW_MissionCreator\TasksCreator\MakeMission.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;
};
    case 6: {
    _Ctasks = [[["AOW_Make_capture"],"AOW_MissionCreator\TasksCreator\MakeMission.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;
};
    case 7: {
    _DIStasks = [[["AOW_Make_disarm"],"AOW_MissionCreator\TasksCreator\MakeMission.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;
};
   case 8: {
   _Astasks = [[["AOW_Make_assault"],"AOW_MissionCreator\TasksCreator\MakeMission.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;
};
};

closedialog 0;