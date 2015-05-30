if (isServer) then {
	while {true} do {
		sleep 0.5;
		waitUntil {!isNil "MHQ"};
		"Marker_MHQ" setmarkerpos getpos MHQ;
	};
};