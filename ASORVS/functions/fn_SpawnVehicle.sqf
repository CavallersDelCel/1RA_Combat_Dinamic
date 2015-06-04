	{
    if !(_x isKindOf "Man" || _x isKindOf "Building" || _x isKindOf "thingX") then {
		deleteVehicle _x;
    };
	}
	forEach nearestObjects [ASORVS_VehicleSpawnPos, [], 5];

    sleep 0.5;
    hintSilent "";

    _vehicleClass = getText (configFile >> "CfgVehicles" >> ASORVS_CurrentVehicle >> "vehicleClass");
    _isAutonomous = getnumber (configFile >> "CfgVehicles" >> ASORVS_CurrentVehicle >> "isUAV");

    if (AOW_Checkbox_ASORVS) then { // MHQ SPAWN------------------------------------------------------------------------------------------------------------------------------------
        if (_isAutonomous != 0) exitWith {hintSilent localize "STR_AOW_MHQCR4";};

        _vehMHQ = createVehicle [ASORVS_CurrentVehicle, ASORVS_VehicleSpawnPos, [], 0, "CAN_COLLIDE"];
        _vehMHQ setVehicleLock "UNLOCKED";
        _vehMHQ setDir ASORVS_VehicleSpawnDir;

        _MHQtype = "Ground MHQ";
        if (ASORVS_CurrentVehicle isKindOf "Air") then {_MHQtype = "Air MHQ"};
        if (ASORVS_CurrentVehicle isKindOf "Ship") then {_MHQtype = "Naval MHQ"};

        [[[_vehMHQ],"AOW_MHQ\CreateMHQ.sqf"],"BIS_fnc_execVM"] call BIS_fnc_MP;
        [[[_vehMHQ, _MHQtype],"AOW_MHQ\MarkerMHQ.sqf"],"BIS_fnc_execVM"] call BIS_fnc_MP;

        hintSilent localize "STR_AOW_MHQCR2";

    } else { // NON MHQ SPAWN-------------------------------------------------------------------------------------------------------------------------------------------------------
    _veh = createVehicle [ASORVS_CurrentVehicle, ASORVS_VehicleSpawnPos, [], 0, "CAN_COLLIDE"];
    _veh setVehicleLock "UNLOCKED";
    _veh setDir ASORVS_VehicleSpawnDir;


    if (_isAutonomous != 0) then { // DRONE SPAWN
        createVehicleCrew _veh;
        if (side _veh != side player) exitWith { // HOSTILE DRONE
            deleteVehicle _veh;
            hintSilent localize "STR_AOW_ASORVSSpawn1";
        };
        if (ASORVS_CurrentVehicle isKindof "Air") then { // FLYING DRONE
            _veh setPosATL [ASORVS_VehicleSpawnPos select 0, ASORVS_VehicleSpawnPos select 1, 500];
            _dir = direction _veh;
            _veh engineOn true;
            _veh setVelocity [ (sin _dir * 80), (cos _dir * 80),0];
            group _veh addWaypoint [getMarkerPos "respawn_west", 0];
            hintSilent localize "STR_AOW_ASORVSSpawn2";
        };
    };

    if (ASORVS_VehicleSpawnPos distance getMarkerPos "VVS5" < 1) then { // PLANE SPAWN
    _veh setPosATL [ASORVS_VehicleSpawnPos select 0, ASORVS_VehicleSpawnPos select 1, 500];
    _dir = direction _veh;
    _veh engineOn true;
    _veh setVelocity [ (sin _dir * 80), (cos _dir * 80),0];
    player moveindriver _veh;
    };

    if (ASORVS_VehicleSpawnPos distance getMarkerPos "AOW_PlaneDelivery" < 5 || ASORVS_VehicleSpawnPos distance getMarkerPos "AOW_ShipDelivery" < 5) then { // ON DELIVERY POINT SPAWN
        hint localize "STR_AOW_ASORVSSpawn3";
    };
};