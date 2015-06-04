disableSerialization;
null = createDialog "AOW_dialog";
waitUntil {dialog};

_index_task_defense = lbAdd [4601, localize "str_AOW_Defense1"];
_index_task_sabotage = lbAdd [4601, localize "str_AOW_Sabotage1"];
_index_task_fdestroy = lbAdd [4601, localize "str_AOW_Find1"];
_index_task_assassinate = lbAdd [4601, localize "str_AOW_Assassinate1"];
_index_task_destroy = lbAdd [4601, localize "str_AOW_Destroy1"];
_index_task_extraction = lbAdd [4601, localize "str_AOW_Extraction1"];
_index_task_capture = lbAdd [4601, localize "str_AOW_Capture1"];
_index_task_disarm = lbAdd [4601, localize "str_AOW_Disarm1"];
_index_task_assault = lbAdd [4601, localize "str_AOW_Assault1"];

_noesc = (findDisplay 9964) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 1) then { true }"];
waitUntil {!dialog};
(findDisplay 9964) displayRemoveEventHandler ["KeyDown", _noesc];