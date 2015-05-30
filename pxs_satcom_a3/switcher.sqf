//the function to switch on/off of SATCOM system
//[unitName, activeStatus] call PXS_switcher
//unitName - the unit for SATCOM action
//activeStatus - true or false
//v1.0 A3

private ["_unit","_status"];
_unit = [_x, 0, player] call BIS_fnc_param;
_status = [_x, 1, true] call BIS_fnc_param;

if (_status) then {
	_unit removeAction PXS_action;
	PXS_action = _unit addAction ["Switch on satellite view","pxs_satcom_a3\start_satellite.sqf"];
	hint "SATCOM system is connected.";
} else {
	_unit removeAction PXS_action;
	call PXS_closeCamera;
	hint localize "SATCOM system is disconnected.";
};