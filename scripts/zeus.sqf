while {true} do {
    sleep 5;

    if (!isnil "zeus1") then {
        AOW_Curator_1 addCuratorEditableObjects [allUnits,true];
        AOW_Curator_1 addCuratorEditableObjects [vehicles,true];
    };
    if (!isnil "zeus2") then {
        AOW_Curator_2 addCuratorEditableObjects [allUnits,true];
        AOW_Curator_2 addCuratorEditableObjects [vehicles,true];
    };
	
	if (serverCommandAvailable "#kick") then {
		AOW_Curator_3 addCuratorEditableObjects [allUnits,true];
		AOW_Curator_3 addCuratorEditableObjects [vehicles,true];
	};
};