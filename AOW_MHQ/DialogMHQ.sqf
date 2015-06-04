disableSerialization;
null = createDialog "AOW_Menu_Dialog";
waitUntil {dialog};
_MHQfound = false;

{
	if (_x getVariable ["zbe_cacheDisabled",false] && alive _x) then {
		_displayName = getText(configfile >> "CfgVehicles" >> typeOf _x >> "displayName");
		_index_mhq = lbAdd [4603, _displayName];

		_varName = _x call BIS_fnc_objectVar;
		lbSetData [4603, _index_mhq, _varName];

		_MHQfound = true;
	};
} forEach vehicles;

if (_MHQfound) then {lbSetCurSel [4603,0];};