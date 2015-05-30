if !(isNil "AOW_MHQ") then {
	if ({alive _x} count (crew AOW_MHQ) != 0) exitWith {hintSilent localize "STR_AOW_MHQCR1"};
		deletevehicle AOW_MHQ;
	};
_direction = markerDir "Spawn_MHQ";

if (side player == west ) then {
	sleep 0.3;
	AOW_MHQ = "B_Truck_01_covered_F" createvehicle (getmarkerpos "Spawn_MHQ");
	AOW_MHQ setDir _direction;
};

if (side player == east ) then {
	sleep 0.3;
	AOW_MHQ = "O_Truck_02_covered_F" createvehicle (getmarkerpos "Spawn_MHQ");
	AOW_MHQ setDir _direction;
};

publicvariable "AOW_MHQ";
[[AOW_MHQ, ["<t color='#ff1111'>Teleport to base</t>","scripts\MHQ\TPbase.sqf",[],1,false,true,"",""]],"MHQ_fnc_addAction",true,true] spawn BIS_fnc_MP;
[[AOW_MHQ, ["<t color='#ff1111'>Virtual Arsenal</t>","scripts\arsenal.sqf",[],1,false,true,"",""]],"MHQ_fnc_addAction",true,true] spawn BIS_fnc_MP;
[[AOW_MHQ, ["<t color='#ff1111'>SATCOM</t>", {call PXS_startSatellite;}, "", 0, true, true, "", ""]],"MHQ_fnc_addAction",true,true] spawn BIS_fnc_MP;
hintSilent localize "STR_AOW_MHQCR2";