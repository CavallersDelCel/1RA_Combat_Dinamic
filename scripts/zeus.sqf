while {true} do {
    sleep 5;

    if (!isnil "zeus1") then {
        zCurator addCuratorEditableObjects [allUnits,true];
        zCurator addCuratorEditableObjects [vehicles,true];
    };
    if (!isnil "zeus2") then {
        zCurator_1 addCuratorEditableObjects [allUnits,true];
        zCurator_1 addCuratorEditableObjects [vehicles,true];
    };
};