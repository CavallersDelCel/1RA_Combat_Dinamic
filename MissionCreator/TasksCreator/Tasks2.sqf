switch (lbCurSel 4601) do
{
    case 0: {
    if (true) exitWith {
        closedialog 0;
        [] execVM "MissionCreator\DefenseCreator\DialogDefense.sqf";
    };
};
    case 1: {
    _Stasks = [[["AOW_Make_sabotage"],"MissionCreator\TasksCreator\makemission.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;
};
    case 2: {
    _FDtasks = [[["AOW_Make_fdestroy"],"MissionCreator\TasksCreator\makemission.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;
};
    case 3: {
    _Atasks = [[["AOW_Make_assassinate"],"MissionCreator\TasksCreator\makemission.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;
};
    case 4: {
    _Dtasks = [[["AOW_Make_destroy"],"MissionCreator\TasksCreator\makemission.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;
};
    case 5: {
    _Etasks = [[["AOW_Make_extraction"],"MissionCreator\TasksCreator\makemission.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;
};
    case 6: {
    _Ctasks = [[["AOW_Make_capture"],"MissionCreator\TasksCreator\makemission.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;
};
    case 7: {
    _DIStasks = [[["AOW_Make_disarm"],"MissionCreator\TasksCreator\makemission.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;
};
   case 8: {
   _Astasks = [[["AOW_Make_assault"],"MissionCreator\TasksCreator\makemission.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;
};
};

closedialog 0;