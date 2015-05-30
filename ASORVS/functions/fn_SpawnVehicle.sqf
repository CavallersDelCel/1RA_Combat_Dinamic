objNull spawn {
	{
		deleteVehicle _x;
	}
	forEach (ASORVS_VehicleSpawnPos nearEntities ASORVS_VehicleSpawnRadius);

    sleep 1;

	_veh = createVehicle [ASORVS_CurrentVehicle, ASORVS_VehicleSpawnPos, [], 0, "CAN_COLLIDE"];
	_veh setVehicleLock "UNLOCKED";
	_veh setDir ASORVS_VehicleSpawnDir;

    _vehicleClass = getText(configFile >> "CfgVehicles" >> ASORVS_CurrentVehicle >> "vehicleClass");
    if (_vehicleClass == "Autonomous") then {
        createVehicleCrew _veh;
        if (side _veh != side player) exitWith {
            deleteVehicle _veh;
            hintSilent localize "STR_AOW_ASORVSSpawn1";
        };
    	if (ASORVS_CurrentVehicle isKindof "Air") then {
    		_veh setPosATL [ASORVS_VehicleSpawnPos select 0, ASORVS_VehicleSpawnPos select 1, 500];
    		_dir = direction _veh;
    		_veh engineOn true;
    		_veh setVelocity [ (sin _dir * 80), (cos _dir * 80),0];
    		group _veh addWaypoint [getMarkerPos "respawn_west", 0];
    		hintSilent localize "STR_AOW_ASORVSSpawn2";
        };
    };

    if (ASORVS_VehicleSpawnPos distance getMarkerPos "VVS5" < 1) then {
    _veh setPosATL [ASORVS_VehicleSpawnPos select 0, ASORVS_VehicleSpawnPos select 1, 500];
    _dir = direction _veh;
    _veh engineOn true;
    _veh setVelocity [ (sin _dir * 80), (cos _dir * 80),0];
    player moveindriver _veh;
    };


    if (ASORVS_VehicleSpawnPos distance getMarkerPos "AOW_PlaneDelivery" < 1 || ASORVS_VehicleSpawnPos distance getMarkerPos "AOW_ShipDelivery" < 1) then {
        hint localize "STR_AOW_ASORVSSpawn3";
    };
};