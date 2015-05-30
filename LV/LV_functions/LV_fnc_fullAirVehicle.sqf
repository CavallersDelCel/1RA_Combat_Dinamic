//ARMA3Alpha function LV_fnc_fullAirVehicle v1.0 - by SPUn / lostvar
//Spawns random vehicle full of random units and returns driver
private ["_BLUhq","_BLUgrp","_veh","_grp","_OPFhq","_OPFgrp","_INDhq","_INDgrp","_man1","_man","_i","_pos","_side","_BLUveh","_OPFveh","_INDveh","_men","_pos1","_veh1","_vehSpots","_vehicle","_vCrew","_allUnitsArray","_crew","_driver"];
_pos = _this select 0;
_side = _this select 1;

_ambiantside = (paramsArray select 11);
switch (_ambiantside) do {
case 1: {// DEFAULT ARMA 3
_BLUveh = ["B_Heli_Light_01_armed_F","B_Heli_Attack_01_F","B_Heli_Transport_01_F","B_Heli_Transport_03_F"];
_OPFveh = ["O_Heli_Light_02_F"];
_INDveh = ["I_Heli_Transport_02_F","I_Plane_Fighter_03_AA_F","I_Plane_Fighter_03_CAS_F"];
};
case 2: {// EAST VS WEST
_BLUveh = ["SUD_A10","SUD_A10","SUD_UH60","SUD_AH1W"];
_OPFveh = ["SUD_SU25","SUD_SU25","SUD_MI8","SUD_MI24V"];
_INDveh = ["I_Heli_Transport_02_F","I_Plane_Fighter_03_AA_F","I_Plane_Fighter_03_CAS_F"];
};
case 3: {// RHS ESCALATION
_BLUveh = ["RHS_AH64D_wd","RHS_AH64D_wd_GS","RHS_AH64D_wd_CS","RHS_CH_47F","RHS_UH60M","RHS_A10","RHS_AH1Z","RHS_UH1Y_d"];
_OPFveh = ["RHS_Su25SM_vvsc","RHS_Su25SM_KH29_vvsc","RHS_Mi24P_vvsc","RHS_Ka52_UPK23_vvsc","RHS_Mi24P_AT_vvsc","RHS_Mi24P_CAS_vvsc","RHS_Mi24P_vvsc","RHS_Mi24V_AT_vvsc","RHS_Mi24V_vvsc","RHS_Mi24V_UPK23_vvsc","RHS_Mi24V_FAB_vvsc","RHS_Mi8AMTSh_vvsc","RHS_Mi8AMTSh_FAB_vvsc","RHS_Mi8AMTSh_UPK23_vvsc","RHS_Mi8MTV3_FAB_vvsc","RHS_Mi8MTV3_UPK23_vvsc"];
_INDveh = ["RHS_Mi8amt_chdkz"];
};
case 4: {// IRON FRONT
_Bluveh = ["LIB_FW190F8","LIB_Ju87"];
_OPFveh = ["LIB_P39","LIB_Pe2"];
_INDveh = ["LIB_P47"];
};
};
_men = [];
_veh = [];


switch(_side)do{
	case 0:{
		_BLUhq = createCenter west;
		_BLUgrp = createGroup west;
		_veh = _BLUveh;
		_grp = _BLUgrp;
	};
	case 1:{
		_OPFhq = createCenter east;
		_OPFgrp = createGroup east;
		_veh = _OPFveh;
		_grp = _OPFgrp;
	};
	case 2:{
		_INDhq = createCenter resistance;
		_INDgrp = createGroup resistance;
		_veh = _INDveh;
		_grp = _INDgrp;
	};
};

_pos1 = _pos;
_veh1 = _veh select (floor(random(count _veh)));
_vehSpots = getNumber (configFile >> "CfgVehicles" >> _veh1 >> "transportSoldier");

_vehicle = createVehicle [_veh1, _pos1, [], 0, "FLY"];

_vCrew = [_vehicle, _grp] call BIS_fnc_spawnCrew;
//_allUnitsArray set [(count _allUnitsArray), _vehicle];
_crew = crew _vehicle;

if(_vehSpots > 0)then{
_i = 1;
	for "_i" from 1 to _vehSpots do {
		_man1 = getText (configFile >> "CfgVehicles" >> _veh1 >> "crew");
		_man = _grp createUnit [_man1, _pos1, [], 0, "NONE"];
		_man moveInCargo _vehicle;
		sleep 0.3 ;
	};
};

_driver = driver _vehicle;
_driver