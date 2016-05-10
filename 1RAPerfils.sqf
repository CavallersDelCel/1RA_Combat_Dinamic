//=======================================================================================================//
// Arxiu: 1RAPerfils.sqf                                                                                 //
// Autor: CC_Viper, CC_Magnetar, CC_OMSmolina i CC_TBlack                                                //
// Versió: 3.9.1                                                                                         //
// Creació del Document: 25/04/2015                                                                      //
// Descripció: Aquest document serveix per definir els diferents perfils que utlitzen els jugadors del   //
//             grup de Cavallers del Cel (http://www.cavallersdelcel.cat). Es requereixen els següents   //
//             mods per funcionar correctament:                                                          //
//                  - Advanced Combat Environment 3 (ACE3): http://ace3mod.com                           //
//                  - CC_Insignia: Mod propi amb l'escut del grup 1RA                                    //
//                  - RHS United States Armed Forces (USAF): http://www.rhsmods.org/mod/2                //
//                  - Task Force Arrowhead Radio (TFAR):                                                 //
//                    https://github.com/michail-nikolaev/task-force-arma-3-radio                        //
//                                                                                                       //
//             Els següents perfils estan definits en aquest document:                                   //
//                                                                                                       //
//                  ROL                 PERFIL associat                                                  //
//                  Líder d'esquadra     CC - Lider d'esquadra MARPAT WD                                 //
//                  Líder d'equip        CC - Lider d'equip MARPAT WD                                    //
//                  Fuseller             CC - Fuseller MARPAT WD                                         //
//                  Fuseller AT4         CC - Fuseller AT4 MARPAT WD                                     //
//                  Granader             CC - Granader MARPAT WD                                         //
//                  IAR                  CC - FA M27IAR MARPAT WD                                        //
//                  Fuseller automàtic   CC - FA M249 MARPAT WD                                          //
//                  Metrallador          CC - Metrallador M240B MARPAT WD                                //
//                  Antitanc (Javelin)   CC - AT Javelin MARPAT WD                                       //
//                  Antiaèri (Stinger)   CC - AA Stinger MARPAT WD                                       //
//                  Tirador designat     CC - Tirador MARPAT WD                                          //
//                  Metge                CC - Metge MARPAT WD                                            //
//                  Explosius            CC - Explosius MARPAT WD                                        //
//                  Franctirador         CC - Franctirador MARPAT WD                                     //
//                  Observador           CC - Observador MARPAT WD                                       //
//                  Bussejador líder     CC - Bussejador lider                                           //
//                  Bussejador           CC - Bussejador                                                 //
//                  Bussejador metge     CC - Bussejador metge                                           //
//                  Bussejador explosius CC - Bussejador explosius                                       //
//                                                                                                       //
// Canvis: 1.0   (26/12/2013) Document inicial per CC_OMSmolina, CC_TBlack i CC_Viper.                   //
//         ...   (26/12/2013 a 21/04/2015) Canvis varis per CC_Viper (actualitzacions, RHS, AGM,...)     //
//         3.2   (21/04/2015) Afegit el suport per bípodes i 0.3.7 de RHS per CC_Viper.                  //
//         3.3   (26/04/2015) Reestructuració del document, afegit el perfil per Javelin i un diàleg de  //
//                            confirmació a l'hora de desar els perfils per CC_Magnetar.                 //
//         3.4   (26/04/2015) Afegit el perfil anti-aèri per CC_Magnetar, actualitzats els perfils de    //
//                            "CC - Metrallador M240B OCP" i "CC - FA M249 OCP" per CC_Viper i           //
//                            i CC_Magnetar.                                                             //
//         3.4.1 (12/06/2015) Canviada l'arma M249 de "rhs_weap_m249_pip" a "rhs_weap_m249_pip_S" i      //
//                            l'arma M240B de "rhs_weap_m240B" a "rhs_weap_m240B_CAP" degut als canvis a //
//                            la versió 0.3.8 de RHS per CC_Magnetar i CC_Viper.                         //
//         3.5   (20/06/2015) Afegits els perfils "CC - Bussejador lider M4A1", "CC - Bussejador M4A1",  //
//                            "CC - Bussejador metge M4A1" i "CC - Bussejador explosius M4A1" per        //
//                            CC_Magnetar i CC_Viper.                                                    //
//         3.6   (21/06/2015) Modificació completa de CC_Viper per pasar de l'AGM al ACE3, canvis en     //
//                            objectes varis i equip medic. Inclusió de nou perfil Observador.           //
//         3.7   (27/06/2015) Canviat ItemRadio de tots els perfils pel model tf_anprc152 als liders     //
//                            i el model tf_rf7800str a la resta per CC_Viper.                           //
//         3.8   (04/07/2015) Modificada l'equipació dels metges per CC_Viper. El perfil d'observadors   //
//                            inclou una ràdio de llarg abast "tf_rt1523g_big_rhs" i una ràdio curta     //
//                            "tf_anprc152" per CC_Magnetar.                                             //
//         3.8.1 (29/07/2015) Afegit el HuntIR al perfil de líder d'esquadra per CC_Magnetar.            //
//         3.9   (04/03/2016) Canviats els camuflatges per MARPAT WD a l'uniforme, SPC a l'armilla i     //
//                            casc OPS Core Ranger Green. Inclòs perfil FA M27 IAR MARPAT WD. Canviats   //
//                            els noms dels perfils. Retocat equipament vari degut a la diferent         //
//                            capacitat de les armilles SPC.                                             //
//         3.9.1 (23/03/2016) Canviada la ACE_atropine per ACE_adenosine. Corregit falta d'un carregador //
//                            a la M249 i a la M240. Corregit falta de missil al Javelin                 //
//                                                                                                       //
// Notes: Qualsevol canvi a aquest document ha de ser notificat a CC_Viper. No es permeten modificacions //
//        personals d'aquest document durant les partides oficials dels Cavallers del Cel. Qualsevol     //
//        canvi en l'equipació per motius d'una missió específica no ha d'afectar els perfils guardats   //
//        de forma oficial.                                                                              //
//=======================================================================================================//

// Preguntar si es vol desar els perfils
_guardarPerfils = ["Estàs segur de desar els perfils?", "Perfils 1RA", true, true] call BIS_fnc_guiMessage;

if ( !_guardarPerfils ) exitWith{
	// No fer res si la resposta és negativa (Cancel) i sortir del script
};

// Desactivar qualsevol moviment del jugador
disableUserInput true;

// Informa al jugador del que s'està fent.
titleCut ["Carregant i desant tots els perfils. Trigarà 3 minuts, espera si us plau...", "BLACK FADED", 999];


//=======================================================================================================//
// Líder d'esquadra CC - Lider d'esquadra M4A1+M320 MARPAT WD                                            //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_FROG01_wd";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];
(uniformContainer player) addMagazineCargoGlobal ["ACE_HuntIR_M203",1];

// Armilla
player addVest "rhsusf_spc_squadleader";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addItemCargoGlobal ["ACE_microDAGR",1];
(vestContainer player) addItemCargoGlobal ["ACE_HuntIR_monitor",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",9];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",4];

// Motxilla
player addBackpack "tf_rt1523g_big_rhs";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",5];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m714_White",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_purple",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_yellow",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m715_Green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m716_yellow",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m713_Red",1];
(unitBackpack player) addMagazineCargoGlobal ["ACE_HuntIR_M203",1];

// Casc
player addHeadgear "rhsusf_opscore_rg_cover_pelt";

// Armes
player addWeapon "rhs_weap_m4a1_m320";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "ACE_Vector";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Lider d'esquadra MARPAT WD"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Lider d'esquadra MARPAT WD >> desat"];
sleep 3;

//=======================================================================================================//
// Líder d'equip: CC - Lider d'equip M4A1+M320 MARPAT WD                                                 //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_FROG01_wd";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];

// Armilla
player addVest "rhsusf_spc_teamleader";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addItemCargoGlobal ["ACE_microDAGR",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m714_White",1];

// Motxilla
player addBackpack "tf_rt1523g_big_rhs";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",5];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m714_White",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_purple",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_yellow",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m715_Green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m716_yellow",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m713_Red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m14_th3",2];

// Casc
player addHeadgear "rhsusf_opscore_rg_cover_pelt";

// Armes
player addWeapon "rhs_weap_m4a1_m320";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "ACE_Vector";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Lider d'equip MARPAT WD"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Lider d'equip MARPAT WD >> desat"];
sleep 3;

//=======================================================================================================//
// Fuseller: CC - Fuseller M4A1 MARPAT WD                                                                //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_FROG01_wd";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];

// Armilla
player addVest "rhsusf_spc_rifleman";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_coy";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];

// Casc
player addHeadgear "rhsusf_opscore_rg_cover_pelt";

// Armes
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Fuseller MARPAT WD"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Fuseller MARPAT WD >> desat"];
sleep 3;

//=======================================================================================================//
// Granader: CC - Granader M4A1+M320 MARPAT WD                                                           //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_FROG01_wd";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",6];

// Armilla
player addVest "rhsusf_spc_rifleman";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",8];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",7];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_coy";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",7];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",12];

// Casc
player addHeadgear "rhsusf_opscore_rg_cover_pelt";

// Armes
player addWeapon "rhs_weap_m4a1_m320";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Granader MARPAT WD"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Granader MARPAT WD >> desat"];
sleep 3;

//=======================================================================================================//
// IAR: CC - FA M27 IAR MARPAT WD                                                                        //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_FROG01_wd";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];

// Armilla 
player addVest "rhsusf_spc_iar";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_coy";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];

// Casc
player addHeadgear "rhsusf_opscore_rg_cover_pelt";

// Armes
player addWeapon "rhs_weap_m27iar";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 5;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - FA M27IAR MARPAT WD"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << FA M27IAR MARPAT WD >> desat"];
sleep 5;

//=======================================================================================================//
// Fuseller Automàtic: CC - FA M249 MARPAT WD                                                            //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_FROG01_wd";
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_mk84",1];

// Armilla
player addVest "rhsusf_spc_mg";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_soft_pouch",1];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",2];


// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_coy";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
(unitBackpack player) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",3];

// Casc
player addHeadgear "rhsusf_opscore_rg_cover_pelt";

// Armes
player addWeapon "rhs_weap_m249_pip_S";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
player addPrimaryWeaponItem "rhsusf_acc_ELCAN";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - FA M249 MARPAT WD"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << FA M249 MARPAT WD >> desat"];
sleep 3;

//=======================================================================================================//
// Metrallador: CC - Metrallador M240B MARPAT WD                                                         //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_FROG01_wd";
(uniformContainer player) addItemCargoGlobal ["AGM_Bandage",6];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];

// Armilla
player addVest "rhsusf_spc_mg";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",3];


// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_coy";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
(unitBackpack player) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",2];

// Casc
player addHeadgear "rhsusf_opscore_rg_cover_pelt";

// Armes
player addWeapon "rhs_weap_m240B_CAP";
player addPrimaryWeaponItem "rhsusf_acc_ELCAN";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Metrallador M240B MARPAT WD"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Metrallador M240B MARPAT WD >> desat"];
sleep 3;

//=======================================================================================================//
// Fuseller AT4: CC - AT M4A1+AT4 MARPAT WD                                                              //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_FROG01_wd";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];

// Armilla
player addVest "rhsusf_spc_rifleman";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_coy";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addItemCargoGlobal ["rhs_m136_hedp_mag",1];

// Casc
player addHeadgear "rhsusf_opscore_rg_cover_pelt";

// Armes
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "rhs_weap_M136_hedp";
player addWeapon "lerca_1200_tan";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Fuseller AT4 MARPAT WD"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Fuseller AT4 MARPAT WD >> desat"];
sleep 3;

//=======================================================================================================//
// Antitanc: CC - AT M4A1+Javelin MARPAT WD                                                              //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_FROG01_wd";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",2];

// Armilla
player addVest "rhsusf_spc_rifleman";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_coy";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",1];

// Casc
player addHeadgear "rhsusf_opscore_rg_cover_pelt";

// Armes
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhs_weap_fgm148";
player addWeapon "lerca_1200_tan";
player addWeapon "rhsusf_weap_m1911a1";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - AT Javelin MARPAT WD"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << AT Javelin MARPAT WD >> desat"];
sleep 3;

//=======================================================================================================//
// Antitanc: CC - AA M4A1+Stinger MARPAT WD                                                              //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_FROG01_wd";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",2];

// Armilla
player addVest "rhsusf_spc_rifleman";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_coy";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_fim92_mag",1];

// Casc
player addHeadgear "rhsusf_opscore_rg_cover_pelt";

// Armes
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhs_weap_fim92";
player addWeapon "lerca_1200_tan";
player addWeapon "rhsusf_weap_m1911a1";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - AA Stinger MARPAT WD"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << AA Stinger MARPAT WD >> desat"];
sleep 3;

//=======================================================================================================//
// Tirador designat: CC - Tirador SR-25EC MARPAT WD                                                      //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_FROG01_wd";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",1];
(uniformContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(uniformContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(uniformContainer player) addItemCargoGlobal ["ACE_Kestrel4500",1];
(uniformContainer player) addItemCargoGlobal ["ACE_ATragMX",1];
(uniformContainer player) addItemCargoGlobal ["ACE_RangeCard",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];

// Armilla
player addVest "rhsusf_spc_marksman";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",6];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_coy";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["rhsusf_acc_SR25S",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",8];

// Casc
player addHeadgear "rhsusf_opscore_rg_cover_pelt";

// Armes
player addWeapon "rhs_weap_sr25_ec";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
player addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Tirador MARPAT WD"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Tirador MARPAT WD >> desat"];
sleep 3;

//=======================================================================================================//
// Metge: CC - Metge M4A1 MARPAT WD                                                                      //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_FROG01_wd";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",8];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",8];
(uniformContainer player) addItemCargoGlobal ["ACE_adenosine",12];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["ACE_tourniquet",3];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];

// Armilla
player addVest "rhsusf_spc_corpsman";
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
(vestContainer player) addItemCargoGlobal ["ACE_personalAidKit",1];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_coy";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["ACE_fieldDressing",15];
(unitBackpack player) addItemCargoGlobal ["ACE_packingBandage",8];
(unitBackpack player) addItemCargoGlobal ["ACE_elasticBandage",20];
(unitBackpack player) addItemCargoGlobal ["ACE_quikclot",15];
(unitBackpack player) addItemCargoGlobal ["ACE_tourniquet",3];
(unitBackpack player) addItemCargoGlobal ["ACE_salineIV_500",5];
(unitBackpack player) addItemCargoGlobal ["ACE_surgicalKit",1];
(unitBackpack player) addItemCargoGlobal ["ACE_personalAidKit",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];

// Casc
player addHeadgear "rhsusf_opscore_rg_cover_pelt";

// Armes
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Metge MARPAT WD"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Metge MARPAT WD >> desat"];
sleep 3;

//=======================================================================================================//
// Explosius: CC - Explosius M4A1 MARPAT WD                                                              //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_FROG01_wd";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Bandage",4];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];

// Armilla
player addVest "rhsusf_spc_squadleader";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_coy";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["ACE_Clacker",1];
(unitBackpack player) addItemCargoGlobal ["ACE_DefusalKit",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(unitBackpack player) addMagazineCargoGlobal ["DemoCharge_Remote_Mag",3];
(unitBackpack player) addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag",1];

// Casc
player addHeadgear "rhsusf_opscore_rg_cover_pelt";

// Armes
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Explosius MARPAT WD"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Explosius MARPAT WD >> desat"];
sleep 3;

//=======================================================================================================//
// Franctirador: CC - Franctirador M2010ESR MARPAT WD                                                    //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "U_B_GhillieSuit";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_M2010S",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",2];

// Armilla
player addVest "rhsusf_spc_marksman";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addItemCargoGlobal ["ACE_microDAGR",1];
(vestContainer player) addItemCargoGlobal ["ACE_Kestrel4500",1];
(vestContainer player) addItemCargoGlobal ["ACE_ATragMX",1];
(vestContainer player) addItemCargoGlobal ["ACE_RangeCard",1];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",4];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_coy";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",8];

// Casc
player addHeadgear "rhs_Booniehat_marpatwd";

// Armes
player addWeapon "rhs_weap_XM2010_sa";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
player addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "ACE_Vector";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Franctirador MARPAT WD"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Franctirador MARPAT WD >> desat"];
sleep 3;

//=======================================================================================================//
// Observador: CC - Observador M4A1 MARPAT WD                                                            //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "U_B_GhillieSuit";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(uniformContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(uniformContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",2];

// Armilla
player addVest "rhsusf_spc_marksman";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_microDAGR",1];
(vestContainer player) addItemCargoGlobal ["ACE_Kestrel4500",1];
(vestContainer player) addItemCargoGlobal ["ACE_ATragMX",1];
(vestContainer player) addItemCargoGlobal ["ACE_RangeCard",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",2];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];

// Motxilla
player addBackpack "tf_rt1523g_big_rhs";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["ACE_SpottingScope",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",8];

// Casc
player addHeadgear "rhs_Booniehat_marpatwd";

// Armes
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "ACE_Vector";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Observador MARPAT WD"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Observador MARPAT WD >> desat"];
sleep 3;

//=======================================================================================================//
// Bussejador líder: CC - Bussejador lider M4A1                                                          //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "U_B_Wetsuit";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["ACE_microDAGR",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_m18_purple",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_m18_yellow",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];

// Armilla
player addVest "V_RebreatherB";
// No es permeten objectes en aquesta armilla

// Motxilla
player addBackpack "tf_rt1523g_big_rhs";
(unitBackpack player) addItemCargoGlobal ["ACE_fieldDressing",4];
(unitBackpack player) addItemCargoGlobal ["ACE_packingBandage",3];
(unitBackpack player) addItemCargoGlobal ["ACE_elasticBandage",3];
(unitBackpack player) addItemCargoGlobal ["ACE_quikclot",3];
(unitBackpack player) addItemCargoGlobal ["ACE_tourniquet",1];
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",7];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",2];
(unitBackpack player) addItemCargoGlobal ["rhs_uniform_FROG01_wd",1];

// Casc
player addHeadgear "rhs_Booniehat_marpatwd";

// Ulleres
player addGoggles "G_Diving";

// Armes
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "ACE_Vector";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Bussejador lider"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Bussejador lider >> desat"];
sleep 3;

//=======================================================================================================//
// Bussejador: CC - Bussejador M4A1                                                                      //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "U_B_Wetsuit";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",4];

// Armilla
player addVest "V_RebreatherB";
// No es permeten objectes en aquesta armilla

// Motxilla
player addBackpack "B_AssaultPack_blk";
(unitBackpack player) addItemCargoGlobal ["ACE_fieldDressing",4];
(unitBackpack player) addItemCargoGlobal ["ACE_packingBandage",3];
(unitBackpack player) addItemCargoGlobal ["ACE_elasticBandage",3];
(unitBackpack player) addItemCargoGlobal ["ACE_quikclot",3];
(unitBackpack player) addItemCargoGlobal ["ACE_tourniquet",1];
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",8];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
(unitBackpack player) addItemCargoGlobal ["rhs_uniform_FROG01_wd",1];

// Casc
player addHeadgear "rhs_Booniehat_marpatwd";

// Ulleres
player addGoggles "G_Diving";

// Armes
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Bussejador"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Bussejador >> desat"];
sleep 3;

//=======================================================================================================//
// Bussejador metge: CC - Bussejador metge M4A1                                                          //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "U_B_Wetsuit";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",8];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",8];
(uniformContainer player) addItemCargoGlobal ["ACE_adenosine",12];
(uniformContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["ACE_salineIV_500",1];
(uniformContainer player) addItemCargoGlobal ["ACE_tourniquet",5];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",5];

// Armilla
player addVest "V_RebreatherB";
// No es permeten objectes en aquesta armilla

// Motxilla
player addBackpack "B_AssaultPack_blk";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["ACE_fieldDressing",10];
(unitBackpack player) addItemCargoGlobal ["ACE_packingBandage",5];
(unitBackpack player) addItemCargoGlobal ["ACE_elasticBandage",10];
(unitBackpack player) addItemCargoGlobal ["ACE_quikclot",10];
(unitBackpack player) addItemCargoGlobal ["ACE_salineIV_500",2];
(unitBackpack player) addItemCargoGlobal ["ACE_surgicalKit",1];
(unitBackpack player) addItemCargoGlobal ["ACE_personalAidKit",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",5];
(unitBackpack player) addItemCargoGlobal ["rhs_uniform_FROG01_wd",1];

// Casc
player addHeadgear "rhs_Booniehat_marpatwd";

// Ulleres
player addGoggles "G_Diving";

// Armes
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Bussejador metge"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Bussejador metge >> desat"];
sleep 3;

//=======================================================================================================//
// Bussejador explosius: CC - Bussejador explosius M4A1                                                  //
//=======================================================================================================//

// Treure tots els objectes
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "U_B_Wetsuit";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(uniformContainer player) addItemCargoGlobal ["ACE_Clacker",1];
(uniformContainer player) addItemCargoGlobal ["ACE_DefusalKit",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_m67",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",5];

// Armilla
player addVest "V_RebreatherB";
// No es permeten objectes en aquesta armilla

// Motxilla
player addBackpack "B_AssaultPack_blk";
(unitBackpack player) addItemCargoGlobal ["ACE_fieldDressing",4];
(unitBackpack player) addItemCargoGlobal ["ACE_packingBandage",3];
(unitBackpack player) addItemCargoGlobal ["ACE_elasticBandage",3];
(unitBackpack player) addItemCargoGlobal ["ACE_quikclot",3];
(unitBackpack player) addItemCargoGlobal ["ACE_tourniquet",1];
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",5];
(unitBackpack player) addMagazineCargoGlobal ["DemoCharge_Remote_Mag",2];
(unitBackpack player) addItemCargoGlobal ["rhs_uniform_FROG01_wd",1];

// Casc
player addHeadgear "rhs_Booniehat_marpatwd";

// Ulleres
player addGoggles "G_Diving";

// Armes
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Bussejador explosius"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Bussejador explosius >> desat"];

//=======================================================================================================//
// Tots els perfils estan guardats                                                                       //
//=======================================================================================================//
titleCut ["Tots els perfils desats.", "BLACK IN", 5];
disableUserInput false;
sleep 5;
player sidechat format ["%1", "Tots els perfils desats."];

//============================================ FI DEL FITXER ============================================//
