//ARMA3Alpha function LV_fnc_fullLandVehicle v1.2 - by SPUn / lostvar
//Spawns random vehicle full of random units and returns driver
private ["_BLUhq","_BLUgrp","_veh","_grp","_OPFhq","_OPFgrp","_INDhq","_INDgrp","_roads","_radius","_pos1","_man1","_man","_i","_pos","_side","_BLUveh","_OPFveh","_INDveh","_men","_veh1","_vehSpots","_roadFound","_vehicle","_vCrew","_allUnitsArray","_crew","_driver"];
_pos = _this select 0;
_side = _this select 1;

_ambiantside = (paramsArray select 11);

switch (_ambiantside) do {
case 1: { // ARMA 3
_BLUveh = ["B_MRAP_01_F","B_MRAP_01_hmg_F","B_MRAP_01_gmg_F","B_Quadbike_01_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_APC_Tracked_01_rcws_F","B_APC_Tracked_01_AA_F","B_APC_Wheeled_01_cannon_F","B_MBT_01_cannon_F","B_MBT_01_arty_F","B_MBT_01_mlrs_F"];
_OPFveh = ["O_MRAP_02_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F","O_Quadbike_01_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MBT_02_arty_F","O_MBT_02_cannon_F","O_APC_Wheeled_02_rcws_F","O_APC_Tracked_02_cannon_F","O_APC_Tracked_02_AA_F"];
_INDveh = ["I_MRAP_03_F","I_MRAP_03_gmg_F","I_MRAP_03_hmg_F","I_Quadbike_01_F","	I_Truck_02_transport_F","I_Truck_02_covered_F","I_APC_Wheeled_03_cannon_F","I_APC_Wheeled_03_cannon_F","I_APC_Wheeled_03_cannon_F"];
};
case 2: { // EAST VS WEST
_BLUveh = ["SUD_M113","SUD_M2A2","SUD_M1A1","SUD_M163","SUD_HMMWV","SUD_HMMWV_M2","SUD_TRUCK5t"];
_OPFveh = ["SUD_BRDM2","SUD_BTR60","SUD_BMP2","SUD_T72B","SUD_ZSU","SUD_UAZ","SUD_URAL"];
_INDveh = ["I_MRAP_03_F","I_MRAP_03_gmg_F","I_MRAP_03_hmg_F","I_Quadbike_01_F","	I_Truck_02_transport_F","I_Truck_02_covered_F","I_APC_Wheeled_03_cannon_F","I_APC_Wheeled_03_cannon_F","I_APC_Wheeled_03_cannon_F"];
};
case 3: { // RHS
_BLUveh = ["rhsusf_m109_usarmy","rhsusf_m113_usarmy","rhsusf_m1a1aimwd_usarmy","rhsusf_m1a2sep1wd_usarmy","RHS_M2A2_wd","RHS_M2A3_wd","RHS_M6_wd","rhsusf_M1083A1P2_B_wd_fmtv_usarmy","rhsusf_rg33_m2_wd","rhsusf_m1025_w_m2","rhsusf_m1025_w_mk19","rhsusf_m998_w_2dr","rhsusf_m998_w_4dr"];
_OPFveh = ["rhs_2s3_tv","rhs_t72ba_tv","rhs_t72bb_tv","rhs_t72bc_tv","rhs_t72bd_tv","rhs_t80","rhs_t80a","rhs_t80b","rhs_t80bk","rhs_t80bv","rhs_t80bvk","rhs_t80u","rhs_t80u45m","rhs_t80ue1","rhs_zsu234_aa","rhs_bmd1","rhs_bmd1k","rhs_bmd1p","rhs_bmd1pk","rhs_bmd1r","rhs_bmd2","rhs_bmd2m","rhs_bmd2k","rhs_bmp1_vdv","rhs_bmp1p_vdv","rhs_bmp1k_vdv","rhs_bmp1d_vdv","rhs_prp3_vdv","rhs_bmp2e_vdv","rhs_bmp2_vdv","rhs_bmp2k_vdv","rhs_bmp2d_vdv","rhs_brm1k_vdv","rhs_sprut_vdv","rhs_bmd4_vdv","rhs_bmd4m_vdv","rhs_bmd4ma_vdv","rhs_btr60_vdv","rhs_btr70_vdv","rhs_btr80_vdv","rhs_btr80a_vdv","rhs_tigr_3camo_vdv","rhs_tigr_ffv_vdv","rhs_tigr_ffv_3camo_vdv","rhs_tigr_m_test","rhs_uaz_open_vdv","RHS_Ural_VDV_01","RHS_Ural_Open_VDV_01","RHS_BM21_VDV_01","rhs_typhoon_vdv","rhs_gaz66o_vdv"];
_INDveh = ["rhs_zsu234_chdkz","rhs_btr70_chdkz","rhs_bmd2_chdkz","rhs_t72bb_chdkz"];
};
case 4: { // IRON FRONT
_BLUveh = ["LIB_PzKpfwVI_B","LIB_PzKpfwVI_B_camo","LIB_PzKpfwIV_H","LIB_PzKpfwV","LIB_StuG_III_G","LIB_StuG_III_G_WS","LIB_PzKpfwVI_E","LIB_opelblitz_open_y_camo","LIB_kfz1","LIB_SdKfz_7","LIB_SdKfz_7_AA","Lib_sdkfz251","LIB_kfz1"];
_OPFveh = ["LIB_JS2_43","LIB_t34_76","LIB_t34_85","LIB_SU85","LIB_M4A2_SOV","lib_us6_bm13","Lib_SdKfz251_captured","LIB_Scout_m3","lib_us6_open","Lib_Willys_MB","lib_zis5v","LIB_SOV_M3_Halftrack"];
_INDveh = ["LIB_M4A3_75","LIB_M4A3_75_tubes","LIB_US_Willys_MB","LIB_US_M3_Halftrack","LIB_US_GMC_Open"];
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

_veh1 = _veh select (floor(random(count _veh)));
_vehSpots = getNumber (configFile >> "CfgVehicles" >> _veh1 >> "transportSoldier");

_radius = 40;
_roads = [];
while{(count _roads) == 0}do{
	_roads = _pos nearRoads _radius;
	_radius = _radius + 10;
};
if(((_roads select 0) distance _pos)<200)then{
	_pos = getPos(_roads select 0);
	_pos1 = [_pos,0,25,5,0,1,0] call BIS_fnc_findSafePos;
}else{
	_pos1 = [_pos,0,200,5,0,1,0] call BIS_fnc_findSafePos;
};
_pos = [_pos1 select 0, _pos1 select 1, 0];

sleep 0.5;

_vehicle = createVehicle [_veh1, _pos, [], 0, "NONE"];
_vehicle setPos _pos;

_vehicle allowDamage false;
sleep 2;
if(((vectorUp _vehicle) select 2) != 0)then{ _vehicle setvectorup [0,0,0]; };
sleep 2;
_vehicle allowDamage true;

_vCrew = [_vehicle, _grp] call BIS_fnc_spawnCrew;
//_allUnitsArray set [(count _allUnitsArray), _vehicle];
_crew = crew _vehicle;

if(_vehSpots > 0)then{
	_i = 1;
	for "_i" from 1 to _vehSpots do {
		_man1 = getText (configFile >> "CfgVehicles" >> _veh1 >> "crew");
		_man = _grp createUnit [_man1, _pos, [], 0, "NONE"];
		_man moveInCargo _vehicle;
		sleep 0.3;
	};
};

_driver = driver _vehicle;
_driver