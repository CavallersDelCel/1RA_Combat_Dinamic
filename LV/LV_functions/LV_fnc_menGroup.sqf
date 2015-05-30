//ARMA3Alpha function LV_fnc_menGroup v1.3 - by SPUn / lostvar
//Spawn infantry group and returns leader
private ["_BLUmen3","_OPFarrays","_BLUarrays","_INDgrp","_INDhq","_INDmen","_OPFmen2","_BLUmen2","_pos","_side","_size","_BLUmen","_OPFmen","_men","_amount","_BLUhq","_BLUgrp","_OPFhq","_OPFgrp","_grp","_i","_man1","_man","_leader"];
_pos = _this select 0;
_side = _this select 1;
_size = _this select 2;
_grpId = if (count _this > 3) then { _this select 3;} else {nil};

_ambiantside = (paramsArray select 11);


switch (_ambiantside) do {
case 1: { // DEFAULT ARMA 3
_BLUmen = ["B_Soldier_F","B_Soldier_lite_F","B_Soldier_GL_F","B_soldier_AR_F","B_Soldier_SL_F","B_Soldier_TL_F","B_soldier_M_F","B_soldier_LAT_F","B_medic_F","B_soldier_repair_F","B_soldier_exp_F","B_Soldier_A_F","B_soldier_AT_F","B_soldier_AA_F","B_engineer_F","B_officer_F","B_recon_F","B_recon_LAT_F","B_recon_exp_F","B_recon_medic_F","B_recon_TL_F","B_recon_M_F","B_recon_JTAC_F","B_spotter_F","B_sniper_F","B_soldier_AAR_F","B_soldier_AAT_F","B_soldier_AAA_F","B_ghillie_lsh_F","B_ghillie_sard_F","B_ghillie_ard_F","B_Sharpshooter_F","B_Recon_Sharpshooter_F","B_HeavyGunner_F"];
_BLUmen2 = ["B_G_Soldier_A_F","B_G_soldier_AR_F","B_G_medic_F","B_G_engineer_F","B_G_soldier_exp_F","B_G_Soldier_GL_F","B_G_soldier_M_F","B_G_officer_F","B_G_Soldier_F","B_G_soldier_LAT_F","B_G_Soldier_lite_F","B_G_Soldier_SL_F","B_G_Soldier_TL_F"];
_OPFmen = ["O_Soldier_F","O_officer_F","O_Soldier_lite_F","O_Soldier_GL_F","O_Soldier_AR_F","O_Soldier_SL_F","O_Soldier_TL_F","O_soldier_M_F","O_Soldier_LAT_F","O_medic_F","O_soldier_repair_F","O_soldier_exp_F","O_Soldier_A_F","O_Soldier_AT_F","O_engineer_F","O_spotter_F","O_sniper_F","O_recon_F","O_recon_M_F","O_recon_LAT_F","O_recon_medic_F","O_recon_exp_F","O_recon_JTAC_F","O_recon_TL_F","O_Soldier_AAR_F","O_Soldier_AAT_F","O_ghillie_lsh_F","O_ghillie_sard_F","O_ghillie_ard_F","O_Sharpshooter_F","O_Pathfinder_F","O_HeavyGunner_F"];
_BLUarrays = [_BLUmen,_BLUmen2];
_OPFarrays = [_OPFmen];
_INDmen = ["I_soldier_F","I_Soldier_lite_F","I_Soldier_A_F","I_Soldier_GL_F","I_Soldier_AR_F","I_Soldier_SL_F","I_Soldier_TL_F","I_Soldier_M_F","I_Soldier_LAT_F","I_Soldier_AT_F","I_Soldier_AA_F","I_medic_F","I_Soldier_repair_F","I_Soldier_exp_F","I_engineer_F","I_officer_F","I_Spotter_F","I_Sniper_F","I_Soldier_AAR_F","I_Soldier_AAT_F","I_Soldier_AAA_F","I_ghillie_lsh_F","I_ghillie_sard_F","I_ghillie_ard_F"];
};

case 2: {// EAST VS WEST
_WESTmen = ["SUD_NATO_Soldier_TL","SUD_NATO_Soldier_AR","SUD_NATO_Soldier_GL","SUD_NATO_Soldier_AT","SUD_NATO_Soldier","SUD_NATO_Soldier_Medic","SUD_NATO_Soldier_Specop","SUD_NATO_Soldier_AA","SUD_NATO_Soldier_Sapper","SUD_NATO_Soldier_Repair","SUD_NATO_Soldier_HAT"];
_EASTmen = ["SUD_USSR_Soldier_TL","SUD_USSR_Soldier_AR","SUD_USSR_Soldier_GL","SUD_USSR_Soldier_AT","SUD_USSR_Soldier","SUD_USSR_Soldier_Medic","SUD_USSR_Soldier_Specop","SUD_USSR_Soldier_AA","SUD_USSR_Soldier_Sapper","SUD_USSR_Soldier_Repair","SUD_USSR_Soldier_HAT"];
_BLUarrays = [_WESTmen];
_OPFarrays = [_EASTmen];
_INDmen = ["I_Soldier_A_F","I_soldier_AR_F","I_medic_F","I_engineer_F","I_soldier_exp_F","I_Soldier_GL_F","I_soldier_M_F","I_soldier_AA_F","I_soldier_AT_F","I_officer_F","I_soldier_repair_F","I_Soldier_F","I_soldier_LAT_F","I_Soldier_lite_F","I_Soldier_SL_F","I_Soldier_TL_F","I_soldier_AAR_F","I_soldier_AAA_F","I_soldier_AAT_F"];
};
case 3: {// RHS ESCALATION
_ARFRF = ["rhs_vdv_rifleman","rhs_vdv_efreitor","rhs_vdv_grenadier","rhs_vdv_machinegunner","rhs_vdv_machinegunner_assistant","rhs_vdv_at","rhs_vdv_aa","rhs_vdv_strelok_rpg_assist","rhs_vdv_marksman","rhs_vdv_officer_armored","rhs_vdv_officer","rhs_vdv_sergeant","rhs_vdv_junior_sergeant","rhs_vdv_engineer","rhs_vdv_medic","rhs_vdv_LAT","rhs_vdv_RShG2","rhs_vdv_flora_rifleman","rhs_vdv_flora_efreitor","rhs_vdv_flora_grenadier","rhs_vdv_flora_machinegunner","rhs_vdv_flora_machinegunner_assistant","rhs_vdv_flora_at","rhs_vdv_flora_aa","rhs_vdv_flora_strelok_rpg_assist","rhs_vdv_flora_marksman","rhs_vdv_flora_officer_armored","rhs_vdv_flora_officer","rhs_vdv_flora_sergeant","rhs_vdv_flora_junior_sergeant","rhs_vdv_flora_engineer","rhs_vdv_flora_medic","rhs_vdv_flora_LAT","rhs_vdv_flora_RShG2","rhs_vdv_mflora_rifleman","rhs_vdv_mflora_efreitor","rhs_vdv_mflora_grenadier","rhs_vdv_mflora_machinegunner","rhs_vdv_mflora_machinegunner_assistant","rhs_vdv_mflora_at","rhs_vdv_mflora_aa","rhs_vdv_mflora_strelok_rpg_assist","rhs_vdv_mflora_marksman","rhs_vdv_mflora_officer_armored","rhs_vdv_mflora_officer","rhs_vdv_mflora_sergeant","rhs_vdv_mflora_junior_sergeant","rhs_vdv_mflora_engineer","rhs_vdv_mflora_medic","rhs_vdv_mflora_LAT","rhs_vdv_mflora_RShG2"];
_USAF = ["rhsusf_army_ocp_rifleman_82nd","rhsusf_army_ocp_rifleman_101st","rhsusf_army_ocp_rifleman_10th","rhsusf_army_ocp_rifleman","rhsusf_army_ocp_rifleman_m4","rhsusf_army_ocp_rifleman_m16","rhsusf_army_ocp_rifleman_m590","rhsusf_army_ocp_riflemanl","rhsusf_army_ocp_riflemanat","rhsusf_army_ocp_grenadier","rhsusf_army_ocp_autorifleman","rhsusf_army_ocp_autoriflemana","rhsusf_army_ocp_machinegunner","rhsusf_army_ocp_machinegunnera","rhsusf_army_ocp_officer","rhsusf_army_ocp_squadleader","rhsusf_army_ocp_teamleader","rhsusf_army_ocp_javelin","rhsusf_army_ocp_aa","rhsusf_army_ocp_uav","rhsusf_army_ocp_medic","rhsusf_army_ocp_engineer","rhsusf_army_ocp_marksman","rhsusf_army_ocp_sniper","rhsusf_army_ocp_jfo","rhsusf_army_ocp_fso"];
_BLUarrays = [_USAF];
_OPFarrays = [_ARFRF];
_INDmen = ["rhs_g_Soldier_F","rhs_g_Soldier_AR_F","rhs_g_medic_F","rhs_g_engineer_F","rhs_g_Soldier_exp_F","rhs_g_Soldier_GL_F","rhs_g_Soldier_M_F","rhs_g_Soldier_AA_F","rhs_g_Soldier_AT_F","rhs_g_Soldier_LAT_F","rhs_g_Soldier_lite_F","rhs_g_Soldier_SL_F","rhs_g_Soldier_SL_F"];
};
case 4: {// IRON FRONT
_IFRussian = ["LIB_SOV_p_officer","LIB_SOV_scout_p_officer","LIB_SOV_operator","LIB_SOV_LC_rifleman","LIB_SOV_scout_smgunner","LIB_SOV_gun_crew","LIB_SOV_gun_lieutenant","LIB_SOV_gun_sergeant","LIB_SOV_captain","LIB_SOV_lieutenant","LIB_SOV_mgunner","LIB_SOV_scout_mgunner","LIB_SOV_smgunner","LIB_SOV_sergeant","LIB_SOV_first_lieutenant","LIB_SOV_AT_soldier","LIB_SOV_AT_grenadier","LIB_SOV_sapper","LIB_SOV_medic","LIB_SOV_rifleman","LIB_SOV_scout_rifleman","LIB_SOV_scout_sniper","LIB_SOV_assault_smgunner","LIB_SOV_assault_mgunner","LIB_SOV_assault_sergeant"];
_IFGerman = ["LIB_GER_AT_soldier","LIB_GER_AT_grenadier","LIB_GER_hauptmann","LIB_GER_oberst","LIB_GER_smgunner","LIB_GER_smgunner","LIB_GER_smgunner","LIB_GER_gun_unterofficer","LIB_GER_gun_lieutenant","LIB_GER_mgunner","LIB_GER_medic","LIB_GER_radioman","LIB_GER_ober_rifleman","LIB_GER_rifleman","LIB_GER_sapper","LIB_GER_sapper","LIB_GER_lieutenant","LIB_GER_unterofficer","LIB_GER_scout_sniper","LIB_GER_stggunner"];
_Indmen = ["LIB_US_rifleman","LIB_US_FC_rifleman","LIB_US_corporal","LIB_US_smgunner","LIB_US_second_lieutenant","LIB_US_first_lieutenant","LIB_US_captain","LIB_US_sniper","LIB_US_mgunner","LIB_US_AT_soldier","LIB_US_engineer","LIB_US_medic"];
_BLUarrays = [_IFGerman];
_OPFarrays = [_IFRussian];
};
};

_men = [];
if(typeName _size == "ARRAY")then{
	_amount = ((random (_size select 0)) + (_size select 1));
}else{
	_amount = _size;
};

switch(_side)do{
	case 0:{
		_men = (_BLUarrays call BIS_fnc_selectRandom);
		_BLUhq = createCenter west;
		_BLUgrp = createGroup west;
		_grp = _BLUgrp;
	};
	case 1:{
		_men = (_OPFarrays call BIS_fnc_selectRandom);
		_OPFhq = createCenter east;
		_OPFgrp = createGroup east;
		_grp = _OPFgrp;
	};
	case 2:{
		_men = _INDmen;
		_INDhq = createCenter resistance;
		_INDgrp = createGroup resistance;
		_grp = _INDgrp;
	};
};

_i = 0;
for "_i" from 0 to _amount do {
	_man1 = _men select (floor(random(count _men)));
	_man = _grp createUnit [_man1, _pos, [], 0, "NONE"];
};

if(!isNil("_grpId"))then{
	call compile format ["LVgroup%1 = _grp",_grpId];
};

_leader = leader _grp;
_leader