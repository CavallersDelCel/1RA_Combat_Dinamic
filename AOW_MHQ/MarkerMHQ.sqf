if (isServer) then {
	_veh = [_this, 0, ""] call BIS_fnc_param;
	_type = [_this, 1, ""] call BIS_fnc_param;

	_MarkerName = [] call AOW_fnc_getFreeNames;

	_MHQmarker = createMarker [_MarkerName, getPos _veh];
	_MHQmarker setMarkerType "b_hq";
	_MHQmarker setMarkerText _type;
	while {alive _veh} do {
		sleep 0.5;
		_MHQmarker setmarkerpos getpos _veh;
	};
	deleteMarker _MHQmarker;
};