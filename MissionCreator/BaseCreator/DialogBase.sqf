disableSerialization;
null = createDialog "AOW_dialog_Base";
waitUntil {dialog};
hint ( localize "str_AOW_Choose_Base" );

_index_base_r = lbAdd [4602, localize "STR_AOW_Random"];
_index_base_n = lbAdd [4602, localize "STR_AOW_North"];
_index_base_e = lbAdd [4602, localize "STR_AOW_East"];
_index_base_s = lbAdd [4602, localize "STR_AOW_South"];
_index_base_w = lbAdd [4602, localize "STR_AOW_West"];
lbSetCurSel [4602, _index_base_r];

_noesc = (findDisplay 9961) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 1) then { true }"];
waitUntil {!dialog};
(findDisplay 9961) displayRemoveEventHandler ["KeyDown", _noesc];