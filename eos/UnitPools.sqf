private ["_tempArray","_InfPool","_MotPool","_ACHPool","_CHPool","_uavPool","_stPool","_shipPool","_diverPool","_crewPool","_heliCrew","_ArmPool"];
_faction=(_this select 0);
_type=(_this select 1);
_tempArray=[];

switch (_faction) do {
// ----------------------------------------VANILLA----------------------------------------
// ---------------------------------------------------------------------------------------------------------
	case 0: {// OPFOR CSAT
	_InfPool=	["O_Soldier_F","O_officer_F","O_Soldier_lite_F","O_Soldier_GL_F","O_Soldier_AR_F","O_Soldier_SL_F","O_Soldier_TL_F","O_soldier_M_F","O_Soldier_LAT_F","O_medic_F","O_soldier_repair_F","O_soldier_exp_F","O_Soldier_A_F","O_Soldier_AT_F","O_Soldier_AA_F","O_engineer_F","O_spotter_F","O_sniper_F","O_recon_F","O_recon_M_F","O_recon_LAT_F","O_recon_medic_F","O_recon_exp_F","O_recon_JTAC_F","O_recon_TL_F","O_Soldier_AAR_F","O_Soldier_AAT_F","O_Soldier_AAA_F","O_ghillie_lsh_F","O_ghillie_ard_F","O_Sharpshooter_F","O_Pathfinder_F","O_HeavyGunner_F"];
	_ArmPool=	["O_APC_Tracked_02_AA_F","O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_F","O_MBT_02_arty_F","O_MBT_02_cannon_F"];
	_MotPool=	["O_Truck_02_transport_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F"];
	_ACHPool=	["O_Heli_Attack_02_black_F","O_Heli_Attack_02_F","O_Plane_CAS_02_F","O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F","O_Heli_Transport_04_bench_F"];
	_CHPool=	["O_Heli_Attack_02_black_F","O_Heli_Attack_02_F","O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F","O_Heli_Transport_04_bench_F"];
	_stPool=	["O_Mortar_01_F","O_static_AT_F","O_static_AA_F"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["O_crew_F"];
	_heliCrew=	["O_helicrew_F","O_helipilot_F","O_Pilot_F"];
};
	case 1: {// BLUFOR NATO
	_InfPool=	["B_Soldier_F","B_Soldier_lite_F","B_Soldier_GL_F","B_soldier_AR_F","B_Soldier_SL_F","B_Soldier_TL_F","B_soldier_M_F","B_soldier_LAT_F","B_medic_F","B_soldier_repair_F","B_soldier_exp_F","B_Soldier_A_F","B_soldier_AT_F","B_soldier_AA_F","B_engineer_F","B_officer_F","B_recon_F","B_recon_LAT_F","B_recon_exp_F","B_recon_medic_F","B_recon_TL_F","B_recon_M_F","B_recon_JTAC_F","B_spotter_F","B_sniper_F","B_soldier_AAR_F","B_soldier_AAT_F","B_soldier_AAA_F","B_ghillie_lsh_F","B_ghillie_ard_F","B_Sharpshooter_F","B_Recon_Sharpshooter_F","B_HeavyGunner_F"];
	_ArmPool=	["B_MBT_01_arty_F","B_MBT_01_cannon_F","B_MBT_01_mlrs_F","B_APC_Tracked_01_AA_F","B_APC_Tracked_01_CRV_F","B_APC_Tracked_01_rcws_F","B_APC_Wheeled_01_cannon_F","B_MBT_02_cannon_F"];
	_MotPool=	["B_Truck_01_covered_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F"];
	_ACHPool=	["B_Heli_Attack_01_F","B_Heli_Light_01_armed_F","B_Heli_Light_01_F","B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F","B_Plane_CAS_01_F","B_Heli_Transport_03_F"];
	_CHPool=	["B_Heli_Attack_01_F","B_Heli_Light_01_armed_F","B_Heli_Light_01_F","B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F","B_Heli_Transport_03_F"];
	_stPool=	["B_Mortar_01_F","B_static_AT_F","B_static_AA_F"];
	_shipPool=	["B_Boat_Armed_01_minigun_F","B_Boat_Transport_01_F"];
	_diverPool=	["B_diver_exp_F","B_diver_F","B_diver_TL_F"];
	_crewPool=	["B_crew_F"];
	_heliCrew=	["B_helicrew_F","B_helipilot_F","B_Pilot_F"];
};

	case 2: {// INDEP AAF
	_InfPool=	["I_soldier_F","I_Soldier_lite_F","I_Soldier_A_F","I_Soldier_GL_F","I_Soldier_AR_F","I_Soldier_SL_F","I_Soldier_TL_F","I_Soldier_M_F","I_Soldier_LAT_F","I_Soldier_AT_F","I_Soldier_AA_F","I_medic_F","I_Soldier_repair_F","I_Soldier_exp_F","I_engineer_F","I_officer_F","I_Spotter_F","I_Sniper_F","I_Soldier_AAR_F","I_Soldier_AAT_F","I_Soldier_AAA_F","I_ghillie_lsh_F","I_ghillie_ard_F"];
	_ArmPool=	["I_APC_Wheeled_03_cannon_F","I_MBT_03_cannon_F"];
	_MotPool=	["I_MRAP_03_gmg_F","I_MRAP_03_hmg_F","I_Truck_02_transport_F"];
	_ACHPool=	["I_Heli_light_03_F","I_Heli_light_03_F","I_Heli_Transport_02_F","I_Heli_Transport_02_F","I_Plane_Fighter_03_CAS_F","I_Plane_Fighter_03_AA_F"];
	_CHPool=	["I_Heli_light_03_F","I_Heli_light_03_F","I_Heli_Transport_02_F","I_Heli_Transport_02_F"];
	_stPool=	["I_Mortar_01_F"];
	_shipPool=	["I_Boat_Transport_01_F","I_G_Boat_Transport_01_F","I_Boat_Armed_01_minigun_F"];
	_diverPool=	["I_diver_exp_F","I_diver_F","I_diver_TL_F"];
	_crewPool=	["I_crew_F"];
	_heliCrew=	["I_helicrew_F","I_helipilot_F","I_pilot_F"];
};

	case 3: {// ZOMBIES
	_InfPool=	["C_man_1","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_hunter_1_F","C_man_p_beggar_F","C_man_p_beggar_F_afro","C_man_p_fugitive_F","C_man_p_shorts_1_F","C_man_pilot_F","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_shorts_1_F","C_man_shorts_2_F","C_man_shorts_3_F","C_man_shorts_4_F","C_man_w_worker_F","B_Soldier_GL_F","I_Soldier_GL_F"];
	_ArmPool= 0;
	_MotPool= 0;
	_ACHPool= 0;
	_CHPool= 0;
	_stPool= 0;
	_shipPool= 0;
	_diverPool=	_InfPool;
	_crewPool= 0;
	_heliCrew= 0;
};
	case 4: {// BLUFOR FIA
	_InfPool=	["B_G_Soldier_F","B_G_Soldier_lite_F","B_G_Soldier_SL_F","B_G_Soldier_TL_F","B_G_Soldier_AR_F","B_G_medic_F","B_G_engineer_F","B_G_Soldier_exp_F","B_G_Soldier_GL_F","B_G_Soldier_M_F","B_G_Soldier_LAT_F","B_G_Soldier_A_F","B_G_officer_F","B_G_Sharpshooter_F"];
	_ArmPool= 0;
	_MotPool=	["B_G_Offroad_01_armed_F","B_G_Van_01_transport_F"];
	_ACHPool= 0;
	_CHPool= 0;
	_stPool=	["B_G_Mortar_01_F"];
	_shipPool=	["B_G_Boat_Transport_01_F"];
	_diverPool=	["B_diver_exp_F","B_diver_F","B_diver_TL_F"];
	_crewPool=	["B_G_Soldier_GL_F","B_G_Soldier_LAT_F"];
	_heliCrew= 0;
};
    case 5: {// OPFOR FIA
	_InfPool=	["O_G_Soldier_F","O_G_Soldier_lite_F","O_G_Soldier_SL_F","O_G_Soldier_TL_F","O_G_Soldier_AR_F","O_G_medic_F","O_G_engineer_F","O_G_Soldier_exp_F","O_G_Soldier_GL_F","O_G_Soldier_M_F","O_G_Soldier_LAT_F","O_G_Soldier_A_F","O_G_officer_F","O_G_Sharpshooter_F"];
	_ArmPool= 0;
	_MotPool=	["O_G_Offroad_01_armed_F","O_G_Van_01_transport_F"];
	_ACHPool= 0;
	_CHPool= 0;
	_stPool=	["O_G_Mortar_01_F"];
	_shipPool=	["O_G_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["O_G_Soldier_GL_F","O_G_Soldier_LAT_F"];
	_heliCrew= 0;
};
    case 6: {//CIVILIAN
    _MotPool= ["C_Offroad_01_repair_F","C_Van_01_fuel_F","C_Hatchback_01_F","C_Hatchback_01_sport_F","C_Offroad_01_F","C_Quadbike_01_F","C_SUV_01_F","C_Van_01_transport_F","C_Van_01_box_F"];
    if (paramsArray select 6 == 0) then {// Altis civ
    	_InfPool = ["C_man_1","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_polo_1_F","C_man_polo_1_F_afro","C_man_polo_1_F_euro","C_man_polo_1_F_asia","C_man_polo_2_F","C_man_polo_2_F_afro","C_man_polo_2_F_euro","C_man_polo_2_F_asia","C_man_polo_3_F","C_man_polo_3_F_afro","C_man_polo_3_F_euro","C_man_polo_3_F_asia","C_man_polo_4_F","C_man_polo_4_F_afro","C_man_polo_4_F_euro","C_man_polo_4_F_asia","C_man_polo_5_F","C_man_polo_5_F_afro","C_man_polo_5_F_euro","C_man_polo_5_F_asia","C_man_polo_6_F","C_man_polo_6_F_afro","C_man_polo_6_F_euro","C_man_polo_6_F_asia","C_man_p_fugitive_F","C_man_p_fugitive_F_afro","C_man_p_fugitive_F_euro","C_man_p_fugitive_F_asia","C_man_p_beggar_F","C_man_p_beggar_F_afro","C_man_p_beggar_F_euro","C_man_p_beggar_F_asia","C_man_w_worker_F","C_man_hunter_1_F","C_man_p_shorts_1_F","C_man_p_shorts_1_F_afro","C_man_p_shorts_1_F_euro","C_man_p_shorts_1_F_asia","C_man_shorts_1_F","C_man_shorts_1_F_afro","C_man_shorts_1_F_euro","C_man_shorts_1_F_asia","C_man_shorts_2_F","C_man_shorts_2_F_afro","C_man_shorts_2_F_euro","C_man_shorts_2_F_asia","C_man_shorts_3_F","C_man_shorts_3_F_afro","C_man_shorts_3_F_euro","C_man_shorts_3_F_asia","C_man_shorts_4_F","C_man_shorts_4_F_afro","C_man_shorts_4_F_euro","C_man_shorts_4_F_asia","C_journalist_F","C_Orestes","C_Nikos","C_Nikos_aged"];
};
    if (paramsArray select 6 == 1) then {//CAF Middle East
    	_InfPool= ["CAF_AG_ME_CIV_02","CAF_AG_ME_CIV","CAF_AG_ME_CIV_04","CAF_AG_ME_CIV_03"];

};
    if (paramsArray select 6 == 2) then {//CAF African
    	_InfPool= ["CAF_AG_AFR_CIV_02","CAF_AG_AFR_CIV_03","CAF_AG_AFR_CIV_04","CAF_AG_AFR_CIV"];
};
    if (paramsArray select 6 == 3) then {//LEIGHTS African
    	_InfPool= ["LOP_AFR_Civ_Man_01","LOP_AFR_Civ_Man_02","LOP_AFR_Civ_Man_03","LOP_AFR_Civ_Man_04","LOP_AFR_Civ_Man_05","LOP_AFR_Civ_Man_06"];
    	_MotPool = ["LOP_AFR_Civ_Offroad","LOP_AFR_Civ_Hatchback","LOP_AFR_Civ_Ural","LOP_AFR_Civ_Ural_open","LOP_AFR_Civ_UAZ","LOP_AFR_Civ_Landrover","LOP_AFR_Civ_UAZ_Open"];
};
    if (paramsArray select 6 == 4) then {//LEIGHTS Middle East
    	_InfPool= ["LOP_Tak_Civ_Man_01","LOP_Tak_Civ_Man_02","LOP_Tak_Civ_Man_04"];
    	_MotPool = ["LOP_TAK_Civ_Offroad","LOP_TAK_Civ_Hatchback","LOP_TAK_Civ_Landrover","LOP_TAK_Civ_Ural","LOP_TAK_Civ_Ural_open","LOP_TAK_Civ_UAZ","LOP_TAK_Civ_UAZ_Open"];
};
    _ArmPool= 0;
    _ACHPool= ["C_Heli_Light_01_civil_F"];
    _CHPool= 0;
    _stPool= 0;
    _shipPool= ["C_Rubberboat","C_Boat_Civil_01_rescue_F","C_Boat_Civil_01_police_F","C_Boat_Civil_01_F"];
    _diverPool= _InfPool;
    _crewPool= _InfPool;
    _heliCrew = ["C_man_pilot_F"];
};
// ----------------------------------------CAF AGRESSORS----------------------------------------
// ---------------------------------------------------------------------------------------------------------
	case 7: {// OPFOR MIDDLE EAST
	_InfPool=	["CAF_AG_ME_T_AK47","CAF_AG_ME_T_AK74","CAF_AG_ME_T_GL","CAF_AG_ME_T_PKM","CAF_AG_ME_T_RPG","CAF_AG_ME_T_RPK74","CAF_AG_ME_T_SVD"];
	_ArmPool=	0;
	_MotPool=	["CAF_AG_ME_T_van_01","CAF_AG_ME_T_Offroad_armed_01"];
	_ACHPool=	0;
	_CHPool=	0;
	_stPool=	["B_G_Mortar_01_F"];
	_shipPool=	["O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["CAF_AG_ME_T_PKM","CAF_AG_ME_T_RPG"];
	_heliCrew=	0;
};
// ---------------------------------------EAST vs WEST----------------------------------------
// ---------------------------------------------------------------------------------------------------------
	case 8: {// OPFOR EAST
	_InfPool=	["SUD_USSR_Soldier_TL","SUD_USSR_Soldier_AR","SUD_USSR_Soldier_GL","SUD_USSR_Soldier_AT","SUD_USSR_Soldier","SUD_USSR_Soldier_Medic","SUD_USSR_Soldier_Specop","SUD_USSR_Soldier_AA","SUD_USSR_Soldier_Sapper","SUD_USSR_Soldier_Repair","SUD_USSR_Soldier_HAT"];
	_ArmPool=	["SUD_BRDM2","SUD_BTR60","SUD_BMP2","SUD_T72B","SUD_ZSU"];
	_MotPool=	["SUD_UAZ","SUD_URAL"];
	_ACHPool=	["SUD_SU25","SUD_SU25","SUD_MI8","SUD_MI24V"];
	_CHPool=	["SUD_MI8"];
	_stPool=	["B_G_Mortar_01_F"];
	_shipPool=	["O_Boat_Armed_01_hmg_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["SUD_USSR_Soldier_Crew"];
	_heliCrew=	["SUD_USSR_Soldier_Pilot"];
};
	case 9: {// BLUFOR WEST
	_InfPool=	["SUD_NATO_Soldier_TL","SUD_NATO_Soldier_AR","SUD_NATO_Soldier_GL","SUD_NATO_Soldier_AT","SUD_NATO_Soldier","SUD_NATO_Soldier_Medic","SUD_NATO_Soldier_Specop","SUD_NATO_Soldier_AA","SUD_NATO_Soldier_Sapper","SUD_NATO_Soldier_Repair","SUD_NATO_Soldier_HAT"];
	_ArmPool=	["SUD_M113","SUD_M2A2","SUD_M1A1","SUD_M163"];
	_MotPool=	["SUD_HMMWV","SUD_HMMWV_M2","SUD_TRUCK5t"];
	_ACHPool=	["SUD_A10","SUD_UH60","SUD_AH1W"];
	_CHPool=	["SUD_UH60","SUD_AH1W"];
	_stPool=	["B_G_Mortar_01_F"];
	_shipPool=	["B_G_Boat_Transport_01_F"];
	_diverPool=	["B_diver_exp_F","B_diver_F","B_diver_TL_F"];
	_crewPool=	["SUD_NATO_Soldier_Crew"];
	_heliCrew=	["SUD_NATO_Soldier_Pilot"];
};
// ----------------------------------------RHS ESCALATION----------------------------------------
// ---------------------------------------------------------------------------------------------------------
    case 10: {// OPFOR RUSSIAN
	_InfPool = ["rhs_vdv_rifleman","rhs_vdv_efreitor","rhs_vdv_grenadier","rhs_vdv_machinegunner","rhs_vdv_machinegunner_assistant","rhs_vdv_at","rhs_vdv_aa","rhs_vdv_strelok_rpg_assist","rhs_vdv_marksman","rhs_vdv_officer_armored","rhs_vdv_officer","rhs_vdv_sergeant","rhs_vdv_junior_sergeant","rhs_vdv_engineer","rhs_vdv_medic","rhs_vdv_LAT","rhs_vdv_RShG2","rhs_vdv_flora_rifleman","rhs_vdv_flora_efreitor","rhs_vdv_flora_grenadier","rhs_vdv_flora_machinegunner","rhs_vdv_flora_machinegunner_assistant","rhs_vdv_flora_at","rhs_vdv_flora_aa","rhs_vdv_flora_strelok_rpg_assist","rhs_vdv_flora_marksman","rhs_vdv_flora_officer_armored","rhs_vdv_flora_officer","rhs_vdv_flora_sergeant","rhs_vdv_flora_junior_sergeant","rhs_vdv_flora_engineer","rhs_vdv_flora_medic","rhs_vdv_flora_LAT","rhs_vdv_flora_RShG2","rhs_vdv_mflora_rifleman","rhs_vdv_mflora_efreitor","rhs_vdv_mflora_grenadier","rhs_vdv_mflora_machinegunner","rhs_vdv_mflora_machinegunner_assistant","rhs_vdv_mflora_at","rhs_vdv_mflora_aa","rhs_vdv_mflora_strelok_rpg_assist","rhs_vdv_mflora_marksman","rhs_vdv_mflora_officer_armored","rhs_vdv_mflora_officer","rhs_vdv_mflora_sergeant","rhs_vdv_mflora_junior_sergeant","rhs_vdv_mflora_engineer","rhs_vdv_mflora_medic","rhs_vdv_mflora_LAT","rhs_vdv_mflora_RShG2"];
	_ArmPool = ["rhs_2s3_tv","rhs_t72ba_tv","rhs_t72bb_tv","rhs_t72bc_tv","rhs_t72bd_tv","rhs_t80","rhs_t80a","rhs_t80b","rhs_t80bk","rhs_t80bv","rhs_t80bvk","rhs_t80u","rhs_t80u45m","rhs_t80ue1","rhs_zsu234_aa","rhs_bmd1","rhs_bmd1k","rhs_bmd1p","rhs_bmd1pk","rhs_bmd1r","rhs_bmd2","rhs_bmd2m","rhs_bmd2k","rhs_bmp1_vdv","rhs_bmp1p_vdv","rhs_bmp1k_vdv","rhs_bmp1d_vdv","rhs_prp3_vdv","rhs_bmp2e_vdv","rhs_bmp2_vdv","rhs_bmp2k_vdv","rhs_bmp2d_vdv","rhs_brm1k_vdv","rhs_sprut_vdv","rhs_bmd4_vdv","rhs_bmd4m_vdv","rhs_bmd4ma_vdv","rhs_btr60_vdv","rhs_btr70_vdv","rhs_btr80_vdv","rhs_btr80a_vdv"];
	_MotPool= ["rhs_tigr_3camo_vdv","rhs_tigr_ffv_vdv","rhs_tigr_ffv_3camo_vdv","rhs_tigr_m_test","rhs_uaz_open_vdv","RHS_Ural_VDV_01","RHS_Ural_Open_VDV_01","RHS_BM21_VDV_01","rhs_typhoon_vdv","rhs_gaz66o_vdv"];
	_ACHPool= ["RHS_Su25SM_vvsc","RHS_Su25SM_KH29_vvsc","RHS_Mi24P_vvsc","RHS_Ka52_UPK23_vvsc","RHS_Mi24P_AT_vvsc","RHS_Mi24P_CAS_vvsc","RHS_Mi24P_vvsc","RHS_Mi24V_AT_vvsc","RHS_Mi24V_vvsc","RHS_Mi24V_UPK23_vvsc","RHS_Mi24V_FAB_vvsc","RHS_Mi8AMTSh_vvsc","RHS_Mi8AMTSh_FAB_vvsc","RHS_Mi8AMTSh_UPK23_vvsc","RHS_Mi8MTV3_FAB_vvsc","RHS_Mi8MTV3_UPK23_vvsc"];
	_CHPool= ["RHS_Mi8mt_vvsc","RHS_Mi8mt_Cargo_vvsc","RHS_Mi8AMTSh_vvsc","RHS_Mi8AMTSh_FAB_vvsc","RHS_Mi8AMTSh_UPK23_vvsc","RHS_Mi8MTV3_FAB_vvsc","RHS_Mi8MTV3_UPK23_vvsc"];
	_stPool=	["B_G_Mortar_01_F","RHS_NSV_TriPod_VDV"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool= ["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
    _crewPool= ["rhs_vdv_driver_armored","rhs_vdv_driver","rhs_vdv_crew","rhs_vdv_crew_commander","rhs_vdv_armoredcrew","rhs_vdv_combatcrew","rhs_vdv_flora_driver_armored","rhs_vdv_flora_driver","rhs_vdv_flora_crew","rhs_vdv_flora_crew_commander","rhs_vdv_flora_armoredcrew","rhs_vdv_flora_combatcrew","rhs_vdv_mflora_driver_armored","rhs_vdv_mflora_driver","rhs_vdv_mflora_crew","rhs_vdv_mflora_crew_commander","rhs_vdv_mflora_armoredcrew","rhs_vdv_mflora_combatcrew"];
    _heliCrew= ["rhs_pilot_transport_heli","rhs_pilot","rhs_pilot_combat_heli"];
};
    case 11: {// BLUFOR AMERICAN
    _InfPool = ["rhsusf_army_ocp_rifleman_82nd","rhsusf_army_ocp_rifleman_101st","rhsusf_army_ocp_rifleman_10th","rhsusf_army_ocp_rifleman","rhsusf_army_ocp_rifleman_m4","rhsusf_army_ocp_rifleman_m16","rhsusf_army_ocp_rifleman_m590","rhsusf_army_ocp_riflemanl","rhsusf_army_ocp_riflemanat","rhsusf_army_ocp_grenadier","rhsusf_army_ocp_autorifleman","rhsusf_army_ocp_autoriflemana","rhsusf_army_ocp_machinegunner","rhsusf_army_ocp_machinegunnera","rhsusf_army_ocp_officer","rhsusf_army_ocp_squadleader","rhsusf_army_ocp_teamleader","rhsusf_army_ocp_javelin","rhsusf_army_ocp_aa","rhsusf_army_ocp_uav","rhsusf_army_ocp_medic","rhsusf_army_ocp_engineer","rhsusf_army_ocp_marksman","rhsusf_army_ocp_sniper","rhsusf_army_ocp_jfo","rhsusf_army_ocp_fso"];
    _ArmPool = ["rhsusf_m109_usarmy","rhsusf_m113_usarmy","rhsusf_m1a1aimwd_usarmy","rhsusf_m1a2sep1wd_usarmy","RHS_M2A2_wd","RHS_M2A3_wd","RHS_M6_wd"];
    _MotPool= ["rhsusf_M1083A1P2_B_wd_fmtv_usarmy","rhsusf_rg33_m2_wd","rhsusf_m1025_w_m2","rhsusf_m1025_w_mk19","rhsusf_m998_w_2dr","rhsusf_m998_w_4dr"];
    _ACHPool= ["RHS_AH64D_wd","RHS_AH64D_wd_GS","RHS_AH64D_wd_CS","RHS_CH_47F","RHS_UH60M","RHS_A10","RHS_AH1Z","RHS_UH1Y_d"];
    _CHPool= ["RHS_AH64D_wd","RHS_AH64D_wd_GS","RHS_AH64D_wd_CS","RHS_CH_47F","RHS_UH60M","RHS_AH1Z","RHS_UH1Y_d"];
    _stPool=    ["B_G_Mortar_01_F","RHS_M2StaticMG_WD","RHS_M2StaticMG_MiniTripod_WD","RHS_MK19_TriPod_WD"];
    _shipPool=  ["B_Boat_Armed_01_minigun_F","B_Boat_Transport_01_F"];
    _diverPool= ["B_diver_exp_F","B_diver_F","B_diver_TL_F"];
    _crewPool= ["rhsusf_army_ocp_crewman","rhsusf_army_ocp_combatcrewman","rhsusf_army_ocp_driver"];
    _heliCrew= ["rhsusf_army_ocp_helipilot","rhsusf_army_ocp_helicrew"];
};
    case 12: {// INDEP INSURGENTS
    _InfPool = ["rhs_g_Soldier_F","rhs_g_Soldier_AR_F","rhs_g_medic_F","rhs_g_engineer_F","rhs_g_Soldier_exp_F","rhs_g_Soldier_GL_F","rhs_g_Soldier_M_F","rhs_g_Soldier_AA_F","rhs_g_Soldier_AT_F","rhs_g_Soldier_LAT_F","rhs_g_Soldier_lite_F","rhs_g_Soldier_SL_F","rhs_g_Soldier_SL_F"];
    _ArmPool = ["rhs_zsu234_chdkz","rhs_btr70_chdkz","rhs_bmd2_chdkz","rhs_t72bb_chdkz"];
    _MotPool= ["rhs_uaz_open_chdkz","RHS_BM21_chdkz","rhs_ural_work_open_chdkz"];
    _ACHPool= ["RHS_Mi8amt_chdkz"];
    _CHPool= ["RHS_Mi8amt_chdkz"];
    _stPool=    ["B_G_Mortar_01_F"];
	_shipPool=	["I_Boat_Transport_01_F","I_G_Boat_Transport_01_F","I_Boat_Armed_01_minigun_F"];
	_diverPool=	["I_diver_exp_F","I_diver_F","I_diver_TL_F"];
    _crewPool= ["rhs_g_Soldier_GL_F","rhs_g_Soldier_F"];
    _heliCrew= ["rhs_g_Soldier_GL_F","rhs_g_Soldier_F"];
};
// ----------------------------------------IRON FRONT----------------------------------------
// ---------------------------------------------------------------------------------------------------------
	case 13: {// OPFOR USSR
	_InfPool=["LIB_SOV_p_officer","LIB_SOV_scout_p_officer","LIB_SOV_operator","LIB_SOV_LC_rifleman","LIB_SOV_scout_smgunner","LIB_SOV_gun_crew","LIB_SOV_gun_lieutenant","LIB_SOV_gun_sergeant","LIB_SOV_captain","LIB_SOV_lieutenant","LIB_SOV_mgunner","LIB_SOV_scout_mgunner","LIB_SOV_smgunner","LIB_SOV_sergeant","LIB_SOV_first_lieutenant","LIB_SOV_AT_soldier","LIB_SOV_AT_grenadier","LIB_SOV_sapper","LIB_SOV_medic","LIB_SOV_rifleman","LIB_SOV_scout_rifleman","LIB_SOV_scout_sniper","LIB_SOV_assault_smgunner","LIB_SOV_assault_mgunner","LIB_SOV_assault_sergeant"];
	_ArmPool=	["LIB_JS2_43","LIB_t34_76","LIB_t34_85","LIB_SU85","LIB_M4A2_SOV"];
	_MotPool=	["lib_us6_bm13","Lib_SdKfz251_captured","LIB_Scout_m3","lib_us6_open","Lib_Willys_MB","lib_zis5v","LIB_SOV_M3_Halftrack"];
	_ACHPool=	["LIB_P39","LIB_Pe2"];
	_CHPool=	["LIB_P39","LIB_Pe2"];
	_stPool=	["LIB_61k","LIB_Zis3","LIB_BM37","lib_maxim_m30_base"];
	_shipPool=	["LIB_LCVP"];
	_diverPool= _InfPool;
	_crewPool= ["LIB_SOV_tank_sergeant","LIB_SOV_tank_overall_crew","LIB_SOV_tank_overall_lieutenant","LIB_SOV_tank_overall_sergeant","LIB_SOV_tank_captain","LIB_SOV_tank_lieutenant","LIB_SOV_tank_overall_captain","LIB_sov_tank_crew"];
	_heliCrew=	["LIB_SOV_pilot"];
};
	case 14: {// BLUFOR GERMAN
	_InfPool=	["LIB_GER_AT_soldier","LIB_GER_AT_grenadier","LIB_GER_hauptmann","LIB_GER_oberst","LIB_GER_smgunner","LIB_GER_smgunner","LIB_GER_smgunner","LIB_GER_gun_unterofficer","LIB_GER_gun_lieutenant","LIB_GER_mgunner","LIB_GER_medic","LIB_GER_radioman","LIB_GER_ober_rifleman","LIB_GER_rifleman","LIB_GER_sapper","LIB_GER_sapper","LIB_GER_lieutenant","LIB_GER_unterofficer","LIB_GER_scout_sniper","LIB_GER_stggunner"];
	_ArmPool=	["LIB_PzKpfwVI_B","LIB_PzKpfwVI_B_camo","LIB_PzKpfwIV_H","LIB_PzKpfwV","LIB_StuG_III_G","LIB_StuG_III_G_WS","LIB_PzKpfwVI_E"];
	_MotPool=	["LIB_opelblitz_open_y_camo","LIB_kfz1","LIB_SdKfz_7","LIB_SdKfz_7_AA","Lib_sdkfz251","LIB_kfz1"];
	_ACHPool=	["LIB_FW190F8","LIB_Ju87"];
	_CHPool=	["LIB_FW190F8","LIB_Ju87"];
	_stPool=	["LIB_FlaK_38","LIB_Flakvierling_38","LIB_GrWr34","LIB_Pak40_g","LIB_MG42_Lafette","LIB_MG42_Lafette_low"];
	_shipPool=	["LIB_LCVP"];
	_diverPool= _InfPool;
	_crewPool=	["LIB_GER_tank_crew","LIB_GER_tank_lieutenant","LIB_GER_tank_unterofficer","LIB_GER_spg_crew","LIB_GER_spg_lieutenant","LIB_GER_spg_unterofficer"];
	_heliCrew=	["LIB_GER_pilot"];
};
	case 15: {// INDEP AMERICAN
	_InfPool=	["LIB_US_rifleman","LIB_US_FC_rifleman","LIB_US_corporal","LIB_US_smgunner","LIB_US_second_lieutenant","LIB_US_first_lieutenant","LIB_US_captain","LIB_US_sniper","LIB_US_mgunner","LIB_US_AT_soldier","LIB_US_engineer","LIB_US_medic"];
	_ArmPool=	["LIB_M4A3_75","LIB_M4A3_75_tubes"];
	_MotPool=	["LIB_US_Willys_MB","LIB_US_M3_Halftrack","LIB_US_GMC_Open"];
	_ACHPool=	["LIB_P47"];
	_CHPool=	["LIB_P47"];
	_stPool=	["LIB_GrWr34"];
	_shipPool=	["LIB_LCVP"];
	_diverPool= _InfPool;
	_crewPool= ["LIB_US_tank_crew","LIB_US_tank_sergeant","LIB_US_tank_second_lieutenant"];
	_heliCrew=	["LIB_US_pilot"];
};
// ----------------------------------------LEIGHTS OPFOR----------------------------------------
// ---------------------------------------------------------------------------------------------------------
	case 16: {// OPFOR NOVORUSSIAN
	_InfPool=	["LOP_US_Infantry_Rifleman","LOP_US_Infantry_Pilot","LOP_US_Infantry_TL","LOP_US_Infantry_SL","LOP_US_Infantry_Corpsman","LOP_US_Infantry_Officer","LOP_US_Infantry_Marksman","LOP_US_Infantry_AA","LOP_US_Infantry_AT","LOP_US_Infantry_AT_Asst","LOP_US_Infantry_GL","LOP_US_Infantry_MG","LOP_US_Infantry_MG_Asst","LOP_US_Infantry_Engineer"];
	_ArmPool=	["LOP_US_T72BB","LOP_US_T72BA","LOP_US_BMP2D","LOP_US_BMP2","LOP_US_BMP1","LOP_US_BMP1D","LOP_US_ZSU234","LOP_US_BTR60","LOP_US_BTR70"];
	_MotPool=	["LOP_US_BM21","LOP_US_Ural","LOP_US_Ural_open","LOP_US_UAZ","LOP_US_UAZ_Open"];
	_ACHPool=	0;
	_CHPool=	0;
	_stPool=	["LOP_US_NSV_TriPod"];
	_shipPool=	["O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["LOP_US_Infantry_Crewman"];
	_heliCrew=	0;
};
	case 17: {// OPFOR CHDKZ
	_InfPool= ["LOP_ChDKZ_Infantry_Bardak","LOP_ChDKZ_Infantry_Commander","LOP_ChDKZ_Infantry_TL","LOP_ChDKZ_Infantry_Corpsman","LOP_ChDKZ_Infantry_SL","LOP_ChDKZ_Infantry_Rifleman","LOP_ChDKZ_Infantry_GL","LOP_ChDKZ_Infantry_AT","LOP_ChDKZ_Infantry_MG","LOP_ChDKZ_Infantry_Marksman","LOP_ChDKZ_Infantry_Engineer"];
	_ArmPool=	["LOP_ChDKZ_T72BB","LOP_ChDKZ_T72BA","LOP_ChDKZ_BMP2D","LOP_ChDKZ_BMP2","LOP_ChDKZ_BMP1","LOP_ChDKZ_BMP1D","LOP_ChDKZ_ZSU234","LOP_ChDKZ_BTR60","LOP_ChDKZ_BTR70"];
	_MotPool=	["LOP_ChDKZ_BM21","LOP_ChDKZ_Ural","LOP_ChDKZ_Ural_open","LOP_ChDKZ_UAZ","LOP_ChDKZ_UAZ_Open"];
	_ACHPool=	["LOP_ChDKZ_Mi8MT_Cargo","LOP_ChDKZ_Mi8MTV3_FAB","LOP_ChDKZ_Mi8MTV3_UPK23"];
	_CHPool=	["LOP_ChDKZ_Mi8MT_Cargo","LOP_ChDKZ_Mi8MTV3_FAB","LOP_ChDKZ_Mi8MTV3_UPK23"];
	_stPool=	["LOP_ChDKZ_NSV_TriPod"];
	_shipPool=	["O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["LOP_ChDKZ_Infantry_Crewman"];
	_heliCrew=	["LOP_ChDKZ_Infantry_Pilot"];
};
	case 18: {// OPFOR SLA
	_InfPool= ["LOP_SLA_Infantry_Rifleman","LOP_SLA_Infantry_TL","LOP_SLA_Infantry_SL","LOP_SLA_Infantry_Corpsman","LOP_SLA_Infantry_Officer","LOP_SLA_Infantry_Marksman","LOP_SLA_Infantry_AA","LOP_SLA_Infantry_AT","LOP_SLA_Infantry_AT_Asst","LOP_SLA_Infantry_GL","LOP_SLA_Infantry_MG","LOP_SLA_Infantry_MG_Asst","LOP_SLA_Infantry_Engineer"];
	_ArmPool=	["LOP_SLA_T72BB","LOP_SLA_T72BA","LOP_SLA_BMP2D","LOP_SLA_BMP2","LOP_SLA_BMP1","LOP_SLA_BMP1D","LOP_SLA_ZSU234","LOP_SLA_BTR60","LOP_SLA_BTR70"];
	_MotPool=	["LOP_SLA_BM21","LOP_SLA_Ural","LOP_SLA_Ural_open","LOP_SLA_UAZ","LOP_SLA_UAZ_Open"];
	_ACHPool=	["LOP_SLA_Mi8MT_Cargo","LOP_SLA_Mi8MTV3_FAB","LOP_SLA_Mi8MTV3_UPK23"];
	_CHPool=	["LOP_SLA_Mi8MT_Cargo","LOP_SLA_Mi8MTV3_FAB","LOP_SLA_Mi8MTV3_UPK23"];
	_stPool=	["LOP_SLA_NSV_TriPod"];
	_shipPool=	["O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["LOP_SLA_Infantry_Crewman"];
	_heliCrew=	["LOP_SLA_Infantry_Pilot"];
};
	case 19: {// BLUFOR AFGHAN ARMY
	_InfPool=	["LOP_AA_Infantry_TL","LOP_AA_Infantry_SL","LOP_AA_Infantry_Corpsman","LOP_AA_Infantry_Rifleman","LOP_AA_Infantry_AT","LOP_AA_Infantry_AT_Asst","LOP_AA_Infantry_MG_Asst","LOP_AA_Infantry_MG","LOP_AA_Infantry_Engineer","LOP_AA_Infantry_Marksman","LOP_AA_Infantry_GL"];
	_ArmPool=	["LOP_AA_M113_W","LOP_AA_BMP2","LOP_AA_BMP1","LOP_AA_ZSU234"];
	_MotPool=	["LOP_AA_Truck","LOP_AA_Offroad","LOP_AA_Offroad_Police","LOP_AA_Offroad_M2","LOP_AA_Offroad_M2_Police","LOP_AA_M998_D_4DR","LOP_AA_M1025_W_M2","LOP_AA_M1025_W_Mk19","LOP_AA_M1025_D"];
	_ACHPool=	0;
	_CHPool=	0;
	_stPool=	["LOP_AA_Static_M2","LOP_AA_Static_M2_MiniTripod","LOP_AA_Static_Mk19_TriPod"];
	_shipPool=	["B_Boat_Armed_01_minigun_F","B_Boat_Transport_01_F"];
	_diverPool= ["B_diver_exp_F","B_diver_F","B_diver_TL_F"];
	_crewPool= ["LOP_AA_Infantry_Crewman"];
	_heliCrew=	0;
};
	case 20: {// BLUFOR CDF
	_InfPool=	["LOP_CDF_Infantry_Rifleman","LOP_CDF_Infantry_TL","LOP_CDF_Infantry_SL","LOP_CDF_Infantry_Corpsman","LOP_CDF_Infantry_Officer","LOP_CDF_Infantry_Marksman","LOP_CDF_Infantry_AA","LOP_CDF_Infantry_AT","LOP_CDF_Infantry_AT_Asst","LOP_CDF_Infantry_GL","LOP_CDF_Infantry_MG","LOP_CDF_Infantry_MG_Asst","LOP_CDF_Infantry_Engineer"];
	_ArmPool=	["LOP_CDF_T72BB","LOP_CDF_T72BA","LOP_CDF_BMD1","LOP_CDF_BMP2D","LOP_CDF_BMP2","LOP_CDF_BMP1","LOP_CDF_BMP1D","LOP_CDF_ZSU234","LOP_CDF_BTR60","LOP_CDF_BTR70"];
	_MotPool=	["LOP_CDF_KAMAZ_Covered","LOP_CDF_KAMAZ_Transport","LOP_CDF_KAMAZ_Repair","LOP_CDF_KAMAZ_Fuel","LOP_CDF_KAMAZ_Ammo","LOP_CDF_KAMAZ_Medical","LOP_CDF_BM21","LOP_CDF_Ural","LOP_CDF_Ural_open","LOP_CDF_UAZ","LOP_CDF_UAZ_Open"];
	_ACHPool=	["LOP_CDF_Mi24V_UPK23","LOP_CDF_Mi24V_FAB","LOP_CDF_Mi24V_AT","LOP_CDF_Mi8MT_Cargo","LOP_CDF_Mi8MTV3_FAB","LOP_CDF_Mi8MTV3_UPK23"];
	_CHPool=	["LOP_CDF_Mi24V_UPK23","LOP_CDF_Mi24V_FAB","LOP_CDF_Mi24V_AT","LOP_CDF_Mi8MT_Cargo","LOP_CDF_Mi8MTV3_FAB","LOP_CDF_Mi8MTV3_UPK23"];
	_stPool=	["LOP_CDF_NSV_TriPod","LOP_CDF_Static_M2","LOP_CDF_Static_M2_MiniTripod","LOP_CDF_Static_Mk19_TriPod"];
	_shipPool=	["B_Boat_Armed_01_minigun_F","B_Boat_Transport_01_F"];
	_diverPool= ["B_diver_exp_F","B_diver_F","B_diver_TL_F"];
	_crewPool= ["LOP_CDF_Infantry_Crewman"];
	_heliCrew= ["LOP_CDF_Infantry_Pilot"];
};
	case 21: {// BLUFOR IRAQI ARMY
	_InfPool=	["LOP_IA_Infantry_TL","LOP_IA_Infantry_SL","LOP_IA_Infantry_Corpsman","LOP_IA_Infantry_Rifleman","LOP_IA_Infantry_AT","LOP_IA_Infantry_AT_Asst","LOP_IA_Infantry_MG_Asst","LOP_IA_Infantry_MG","LOP_IA_Infantry_Engineer","LOP_IA_Infantry_Marksman","LOP_IA_Infantry_GL"];
	_ArmPool=	["LOP_IA_M113_W","LOP_IA_BMP2","LOP_IA_BMP1","LOP_IA_ZSU234"];
	_MotPool=	["LOP_IA_Truck","LOP_IA_Offroad","LOP_IA_Offroad_M2","LOP_IA_M998_D_4DR","LOP_IA_M1025_W_M2","LOP_IA_M1025_W_Mk19","LOP_IA_M1025_D"];
	_ACHPool=	0;
	_CHPool=	0;
	_stPool=	["LOP_IA_Static_M2","LOP_IA_Static_M2_MiniTripod","LOP_IA_Static_Mk19_TriPod"];
	_shipPool=	["B_Boat_Armed_01_minigun_F","B_Boat_Transport_01_F"];
	_diverPool= ["B_diver_exp_F","B_diver_F","B_diver_TL_F"];
	_crewPool= ["LOP_IA_Infantry_Crewman"];
	_heliCrew=	0;
};
	case 22: {// INDEP AFRICAN MILITA
	_InfPool=	["LOP_AFR_Infantry_TL","LOP_AFR_Infantry_SL","LOP_AFR_Infantry_Corpsman","LOP_AFR_Infantry_AR","LOP_AFR_Infantry_AT","LOP_AFR_Infantry_Marksman","LOP_AFR_Infantry_IED","LOP_AFR_Infantry","LOP_AFR_Infantry_GL"];
	_ArmPool=	["LOP_AFR_BTR60","LOP_AFR_T72BA","LOP_AFR_M113_W"];
	_MotPool=	["LOP_AFR_Landrover","LOP_AFR_Landrover_M2","LOP_AFR_Offroad_M2","LOP_AFR_Offroad","LOP_AFR_Truck"];
	_ACHPool=	0;
	_CHPool=	0;
	_stPool=	["LOP_AFR_Static_M2","LOP_AFR_Static_M2_MiniTripod","LOP_AFR_Static_Mk19_TriPod"];
	_shipPool=	["I_Boat_Transport_01_F","I_G_Boat_Transport_01_F","I_Boat_Armed_01_minigun_F"];
	_diverPool=	["I_diver_exp_F","I_diver_F","I_diver_TL_F"];
	_crewPool= ["LOP_AFR_Driver"];
	_heliCrew=	0;
};
	case 23: {// INDEP ISTS
	_InfPool=	["LOP_ISTS_Infantry_TL","LOP_ISTS_Infantry_SL","LOP_ISTS_Infantry_Medic","LOP_ISTS_Infantry_AR","LOP_ISTS_Infantry_AT","LOP_ISTS_Infantry_Marksman","LOP_ISTS_Infantry_Engineer","LOP_ISTS_Soldier","LOP_ISTS_Infantry_GL"];
	_ArmPool=	["LOP_ISTS_M113_W","LOP_ISTS_BTR60","LOP_ISTS_T72BA"];
	_MotPool=	["LOP_ISTS_Landrover","LOP_ISTS_Landrover_M2","LOP_ISTS_Offroad","LOP_ISTS_Offroad_M2","LOP_ISTS_Truck"];
	_ACHPool=	0;
	_CHPool=	0;
	_stPool=	["LOP_ISTS_Static_M2","LOP_ISTS_Static_M2_MiniTripod","LOP_ISTS_Static_Mk19_TriPod"];
	_shipPool=	["I_Boat_Transport_01_F","I_G_Boat_Transport_01_F","I_Boat_Armed_01_minigun_F"];
	_diverPool=	["I_diver_exp_F","I_diver_F","I_diver_TL_F"];
	_crewPool= ["LOP_ISTS_Soldier"];
	_heliCrew=	0;
};
	case 24: {// INDEP RACS
	_InfPool=	["LOP_RACS_Infantry_TL","LOP_RACS_Infantry_SL","LOP_RACS_Infantry_Corpsman","LOP_RACS_Infantry_Rifleman","LOP_RACS_Infantry_AT","LOP_RACS_Infantry_AT_Asst","LOP_RACS_Infantry_MG_Asst","LOP_RACS_Infantry_MG","LOP_RACS_Infantry_Engineer","LOP_RACS_Infantry_Marksman","LOP_RACS_Infantry_GL"];
	_ArmPool=	["LOP_RACS_M113_W","LOP_RACS_T72BA"];
	_MotPool=	["LOP_RACS_Truck","LOP_RACS_Offroad","LOP_RACS_Offroad_M2","LOP_RACS_Landrover","LOP_RACS_Landrover_M2"];
	_ACHPool=	["LOP_RACS_MH9","LOP_RACS_MH9_armed","LOP_RACS_UH60M"];
	_CHPool=	["LOP_RACS_MH9","LOP_RACS_MH9_armed","LOP_RACS_UH60M"];
	_stPool=	["LOP_RACS_Static_M2","LOP_RACS_Static_M2_MiniTripod","LOP_RACS_Static_Mk19_TriPod"];
	_shipPool=	["I_Boat_Transport_01_F","I_G_Boat_Transport_01_F","I_Boat_Armed_01_minigun_F"];
	_diverPool=	["I_diver_exp_F","I_diver_F","I_diver_TL_F"];
	_crewPool= ["LOP_RACS_Infantry_Crewman"];
	_heliCrew=	["LOP_RACS_Infantry_Pilot"];
};
	case 25: {// INDEP AFGHAN MILITIA
	_InfPool=	["LOP_AM_Infantry_TL","LOP_AM_Infantry_SL","LOP_AM_Infantry_Medic","LOP_AM_Infantry_AR","LOP_AM_Infantry_AT","LOP_AM_Infantry_Marksman","LOP_AM_Infantry_Engineer","LOP_AM_Soldier","LOP_AM_Infantry_GL"];
	_ArmPool=	["LOP_AM_M113_W","LOP_AM_BTR60","LOP_AM_T72BA"];
	_MotPool=	["LOP_AM_Landrover","LOP_AM_Landrover_M2","LOP_AM_Offroad","LOP_AM_Offroad_M2","LOP_AM_Truck"];
	_ACHPool=	0;
	_CHPool=	0;
	_stPool=	["LOP_AM_Static_M2","LOP_AM_Static_M2_MiniTripod","LOP_AM_Static_Mk19_TriPod"];
	_shipPool=	["I_Boat_Transport_01_F","I_G_Boat_Transport_01_F","I_Boat_Armed_01_minigun_F"];
	_diverPool=	["I_diver_exp_F","I_diver_F","I_diver_TL_F"];
	_crewPool= ["LOP_AM_Soldier"];
	_heliCrew=	0;
};
};
////////////////////////////////////////////////////////////////////////////////////////
if (_type==0) then {
		for "_i" from 0 to 5 do{
		_unit=_InfPool select (floor(random(count _InfPool)));
		_tempArray set [count _tempArray,_unit];};
						};

if (_type==1) then {_tempArray=_diverPool};


// CREATE ARMOUR & CREW
if (_type==2) then {
	if (typeName _ArmPool == "SCALAR") then {_temparray = 0} else {
				_tempUnit=_ArmPool select (floor(random(count _ArmPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_crewPool select (floor(random(count _crewPool)));
				_temparray set [count _temparray,_crew];
			};
		};

// CREATE ATTACK CHOPPER & CREW
if (_type==3) then {
	if (typeName _ACHPool == "SCALAR") then {_temparray = 0} else {
				_tempUnit=_ACHPool select (floor(random(count _ACHPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_heliCrew select (floor(random(count _heliCrew)));
				_temparray set [count _temparray,_crew];
			};
		};

// CREATE TRANSPORT CHOPPER & CREW
if (_type==4) then {
	if (typeName _CHPool == "SCALAR") then {_temparray = 0} else {
				_tempUnit=_CHPool select (floor(random(count _CHPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_heliCrew select (floor(random(count _heliCrew)));
				_temparray set [count _temparray,_crew];
			};
		};

// CREATE STATIC & CREW
if (_type==5) then {
	if (typeName _stPool == "SCALAR") then {_temparray = 0} else {
				_tempUnit=_stPool select (floor(random(count _stPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_crewPool select (floor(random(count _crewPool)));
				_temparray set [count _temparray,_crew];
			};
		};

// CREATE TRANSPORT & CREW
if (_type==7) then {
	if (typeName _MotPool == "SCALAR") then {_temparray = 0} else {
				_tempUnit=_MotPool select (floor(random(count _MotPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_crewPool select (floor(random(count _crewPool)));
				_temparray set [count _temparray,_crew];
			};
		};

// CREATE BOAT & DIVER CREW
if (_type==8) then {
	if (typeName _shipPool == "SCALAR") then {_temparray = 0} else {
				_tempUnit=_shipPool select (floor(random(count _shipPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_diverPool select (floor(random(count _diverPool)));
				_temparray set [count _temparray,_crew];
				};
			};

// CREATE CARGO
if (_type==9) then {
		for "_i" from 0 to 4 do{
			_unit=_InfPool select (floor(random(count _InfPool)));
			_temparray set [count _temparray,_unit];
							};
};

// CREATE DIVER CARGO
if (_type==10) then {
		for "_i" from 0 to 4 do{
			_unit=_diverPool select (floor(random(count _diverPool)));
			_temparray set [count _temparray,_unit];
							};
};

//systemChat format ["%1",_tempArray];
_tempArray