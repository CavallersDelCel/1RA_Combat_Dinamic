//=======================================================================================================//
// Arxiu: 1RAPerfils.sqf                                                                                 //
// Autor: CC_Viper, CC_Magnetar, CC_OMSmolina, CC_TBlack                                                 //
// Versió: 3.4                                                                                           //
// Creació del Document: 25/04/2015                                                                      //
// Descripció: Aquest document serveix per definir els diferents perfils que utlitzen els jugadors del   //
//             grup de Cavallers del Cel (http://www.cavallersdelcel.cat). Es requereixen els següents   //
//             mods per funcionar correctament:                                                          //
//                  - RHS United States Armed Forces (RHS USAF).                                         //
//                  - Task Force Arrowhead Radio (TFAR).                                                 //
//                  - Authentic Gameplay Modification (AGM).                                             //
//                                                                                                       //
//             Els següents perfils estan definits en aquest document:                                   //
//                                                                                                       //
//                  ROL                 PERFIL associat                                                  //
//                  Líder d'esquadra    CC - Lider d'esquadra M4A1+M320 OCP                              //
//                  Líder d'equip       CC - Lider d'equip M4A1+M320 OCP                                 //
//                  Fuseller            CC - Fuseller M4A1 OCP                                           //
//                  Fuseller AT4        CC - AT M4A1+AT4 OCP                                             //
//                  Granader            CC - Granader M4A1+M320 OCP                                      //
//                  Fuseller automàtic  CC - FA M249 OCP                                                 //
//                  Metrallador         CC - Metrallador M240B OCP                                       //
//                  Antitanc (Javelin)  CC - AT M4A1+Javelin OCP                                         //
//                  Antiaèri (Stinger)  CC - AT M4A1+Stinger OCP                                         //
//                  Tirador designat    CC - Tirador SR-25EC OCP                                         //
//                  Metge               CC - Metge M4A1 OCP                                              //
//                  Enginyer            CC - Explosius M4A1 OCP                                          //
//                  Franctirador        CC - Franctirador M2010ESR OCP                                   //
//                                                                                                       //
// Canvis: 1.0   (2013-12-26) Document inicial per CC_OMSmolina, CC_TBlack i CC_Viper.                   //
//         ...   (2013-12-26 a 2015-04-21) Canvis varis per CC_Viper (actualitzacions, RHS, AGM,...)     //
//         3.2   (2015-04-21) Afegit el suport per bípodes i 0.3.7 de RHS per CC_Viper.                  //
//         3.3   (2015-04-26) Reestructuració del document, afegit el perfil per Javelin i un diàleg de  //
//                            confirmació a l'hora de desar els perfils per CC_Magnetar.                 //
//         3.4   (2015-04-26) Afegit el perfil anti-aèri per CC_Magnetar, actualitzats els perfils de    //
//                            "CC - Metrallador M240B OCP" i "CC - FA M249 OCP" per CC_Viper i           //
//                            i CC_Magnetar.                                                             //
//         3.4.1 (2015-06-12) Canviada l'arma M249 de "rhs_weap_m249_pip" a "rhs_weap_m249_pip_S" i      //
//                            l'arma M240B de "rhs_weap_m240B" a "rhs_weap_m240B_CAP" degut als canvis a //
//                            la versió 0.3.8 de RHS per CC_Magnetar i CC_Viper.                         //
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

_blackScreen = execVM "fnc\effects\blackScreen.sqf";

// Informa al jugador del que s'està fent.
player sidechat format ["%1", "Carregant i desant tots els perfils. Trigarà 2 minuts, espera si us plau..."];

//=======================================================================================================//
// Líder d'Esquadra CC - Lider d'esquadra M4A1+M320 OCP                                                  //
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
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["AGM_EarBuds",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(uniformContainer player) addItemCargoGlobal ["AGM_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];

// Armilla
player addVest "rhsusf_iotv_ocp_squadleader";
(vestContainer player) addItemCargoGlobal ["AGM_Bandage",2];
(vestContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(vestContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(vestContainer player) addItemCargoGlobal ["AGM_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m714_White",1];

// Motxilla
player addBackpack "tf_rt1523g_big_rhs";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["AGM_Bandage",4];
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

// Casc
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

// Armes
player addWeapon "rhs_weap_m4a1_m320";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "AGM_Vector";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "ItemRadio";
player linkItem "B_UavTerminal";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 5;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Lider d'esquadra M4A1+M320 OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Lider d'esquadra M4A1+M320 OCP >> desat"];
sleep 5;

//=======================================================================================================//
// Líder d'Equip: CC - Lider d'equip M4A1+M320 OCP                                                       //
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
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["AGM_EarBuds",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(uniformContainer player) addItemCargoGlobal ["AGM_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];

// Armilla
player addVest "rhsusf_iotv_ocp_teamleader";
(vestContainer player) addItemCargoGlobal ["AGM_Bandage",2];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(vestContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(vestContainer player) addItemCargoGlobal ["AGM_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m714_White",1];

// Motxilla
player addBackpack "tf_rt1523g_big_rhs";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["AGM_Bandage",4];
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
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

// Armes
player addWeapon "rhs_weap_m4a1_m320";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "AGM_Vector";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "ItemRadio";
player linkItem "B_UavTerminal";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 5;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Lider d'equip M4A1+M320 OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Lider d'equip M4A1+M320 OCP >> desat"];
sleep 5;

//=======================================================================================================//
// Fuseller: CC - Fuseller M4A1 OCP                                                                      //
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
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["AGM_EarBuds",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(uniformContainer player) addItemCargoGlobal ["AGM_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];

// Armilla 
player addVest "rhsusf_iotv_ocp_rifleman";
(vestContainer player) addItemCargoGlobal ["AGM_Bandage",2];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(vestContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(vestContainer player) addItemCargoGlobal ["AGM_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["AGM_Bandage",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];

// Casc
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

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
player linkItem "ItemRadio";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 5;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Fuseller M4A1 OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Fuseller M4A1 OCP >> desat"];
sleep 5;

//=======================================================================================================//
// Granader: CC - Granader M4A1+M320 OCP                                                                 //
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
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["AGM_EarBuds",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(uniformContainer player) addItemCargoGlobal ["AGM_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",6];

// Armilla
player addVest "rhsusf_iotv_ocp_grenadier";
(vestContainer player) addItemCargoGlobal ["AGM_Bandage",2];
(vestContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(vestContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(vestContainer player) addItemCargoGlobal ["AGM_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",8];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",7];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["AGM_Bandage",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",7];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",12];

// Casc
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

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
player linkItem "ItemRadio";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 5;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Granader M4A1+M320 OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Granader M4A1+M320 OCP >> desat"];
sleep 5;

//=======================================================================================================//
// Fuseller Automàtic: CC - FA M249 OCP                                                                  //
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
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["AGM_Bandage",2];
(uniformContainer player) addItemCargoGlobal ["AGM_Morphine",2];
(uniformContainer player) addItemCargoGlobal ["AGM_Epipen",6];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",1];

// Armilla
player addVest "rhsusf_iotv_ocp_SAW";
(vestContainer player) addItemCargoGlobal ["AGM_CableTie",1];
(vestContainer player) addItemCargoGlobal ["AGM_MapTools",1];
(vestContainer player) addItemCargoGlobal ["AGM_EarBuds",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_soft_pouch",1];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_mk84",1];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
(unitBackpack player) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",3];

// Casc
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

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
player linkItem "ItemRadio";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 5;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - FA M249 OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << FA M249 OCP >> desat"];
sleep 5;

//=======================================================================================================//
// Metrallador: CC - Metrallador M240B OCP                                                               //
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
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["AGM_Bandage",6];
(uniformContainer player) addItemCargoGlobal ["AGM_Epipen",2];
(uniformContainer player) addItemCargoGlobal ["AGM_Morphine",2];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",1];

// Uniforme, casc, armilla i motxila
player addVest "rhsusf_iotv_ocp_SAW";
(vestContainer player) addItemCargoGlobal ["AGM_CableTie",1];
(vestContainer player) addItemCargoGlobal ["AGM_MapTools",1];
(vestContainer player) addItemCargoGlobal ["AGM_EarBuds",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",2];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];

// Motxilla		
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
(unitBackpack player) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",2];

// Casc
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

// Armes
player addWeapon "rhs_weap_m240B_CAP";
player addPrimaryWeaponItem "rhsusf_acc_ELCAN";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "ItemRadio";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 5;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Metrallador M240B OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Metrallador M240B OCP >> desat"];
sleep 5;

//=======================================================================================================//
// Fuseller AT4: CC - AT M4A1+AT4 OCP                                                                    //
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
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["AGM_EarBuds",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(uniformContainer player) addItemCargoGlobal ["AGM_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];

// Armilla
player addVest "rhsusf_iotv_ocp_rifleman";
(vestContainer player) addItemCargoGlobal ["AGM_Bandage",2];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(vestContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(vestContainer player) addItemCargoGlobal ["AGM_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["AGM_Bandage",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addItemCargoGlobal ["rhs_m136_hedp_mag",1];

// Casc
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

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
player linkItem "ItemRadio";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 5;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - AT M4A1+AT4 OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << AT M4A1+AT4 OCP >> desat"];
sleep 5;

//=======================================================================================================//
// Antitanc: CC - AT M4A1+Javelin OCP                                                                    //
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
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["AGM_EarBuds",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(uniformContainer player) addItemCargoGlobal ["AGM_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",2];

// Armilla
player addVest "rhsusf_iotv_ocp_rifleman";
(vestContainer player) addItemCargoGlobal ["AGM_Bandage",2];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(vestContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(vestContainer player) addItemCargoGlobal ["AGM_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["AGM_Bandage",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",1];
	
// Casc
player addHeadgear "rhsusf_ach_helmet_headset_ocp";
	
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
player linkItem "ItemRadio";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 5;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - AT M4A1+Javelin OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << AT M4A1+Javelin OCP >> desat"];
sleep 5;

//=======================================================================================================//
// Antitanc: CC - AA M4A1+Stinger OCP                                                                    //
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
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["AGM_EarBuds",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(uniformContainer player) addItemCargoGlobal ["AGM_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",2];

// Armilla
player addVest "rhsusf_iotv_ocp_rifleman";
(vestContainer player) addItemCargoGlobal ["AGM_Bandage",2];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(vestContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(vestContainer player) addItemCargoGlobal ["AGM_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["AGM_Bandage",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_fim92_mag",1];
	
// Casc
player addHeadgear "rhsusf_ach_helmet_headset_ocp";
	
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
player linkItem "ItemRadio";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 5;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - AA M4A1+Stinger OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << AA M4A1+Stinger OCP >> desat"];
sleep 5;

//=======================================================================================================//
// Tirador designat: CC - Tirador SR-25EC OCP                                                            //
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
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["AGM_EarBuds",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(uniformContainer player) addItemCargoGlobal ["AGM_CableTie",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",1];

// Armilla
player addVest "rhsusf_iotv_ocp_rifleman";
(vestContainer player) addItemCargoGlobal ["AGM_Bandage",2];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(vestContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(vestContainer player) addItemCargoGlobal ["AGM_MapTools",1];
(vestContainer player) addItemCargoGlobal ["AGM_ItemKestrel",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",6];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["AGM_Bandage",4];
(unitBackpack player) addItemCargoGlobal ["rhsusf_acc_SR25S",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",8];

// Casc
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

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
player linkItem "ItemRadio";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 5;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Tirador SR-25EC OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Tirador SR-25EC OCP >> desat"];
sleep 5;

//=======================================================================================================//
// Metge: CC - Metge M4A1 OCP                                                                            //
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
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["AGM_EarBuds",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(uniformContainer player) addItemCargoGlobal ["AGM_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];

// Armilla
player addVest "rhsusf_iotv_ocp_Medic";
(vestContainer player) addItemCargoGlobal ["AGM_Bandage",2];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(vestContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(vestContainer player) addItemCargoGlobal ["AGM_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["AGM_Bandage",26];
(unitBackpack player) addItemCargoGlobal ["AGM_Morphine",10];
(unitBackpack player) addItemCargoGlobal ["AGM_Epipen",10];
(unitBackpack player) addItemCargoGlobal ["AGM_Bloodbag",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];

// Casc
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

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
player linkItem "ItemRadio";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 5;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Metge M4A1 OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Metge M4A1 OCP >> desat"];
sleep 5;

//=======================================================================================================//
// Enginyer: CC - Explosius M4A1 OCP                                                                    //
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
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["AGM_EarBuds",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(uniformContainer player) addItemCargoGlobal ["AGM_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Bandage",4];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];

// Armilla
player addVest "rhsusf_iotv_ocp_squadleader";
(vestContainer player) addItemCargoGlobal ["AGM_Bandage",2];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(vestContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(vestContainer player) addItemCargoGlobal ["AGM_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["AGM_Clacker",1];
(unitBackpack player) addItemCargoGlobal ["AGM_DefusalKit",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(unitBackpack player) addMagazineCargoGlobal ["DemoCharge_Remote_Mag",3];
(unitBackpack player) addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag",1];

// Casc
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

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
player linkItem "ItemRadio";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 5;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Explosius M4A1 OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Explosius M4A1 OCP >> desat"];
sleep 5;

//=======================================================================================================//
// Franctirador: CC - Franctirador M2010ESR OCP                                                          //
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
(uniformContainer player) addItemCargoGlobal ["AGM_EarBuds",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(uniformContainer player) addItemCargoGlobal ["AGM_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_M2010S",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",2];

// Armilla
player addVest "rhsusf_iotv_ocp_rifleman";
(vestContainer player) addItemCargoGlobal ["AGM_Bandage",2];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["AGM_Morphine",1];
(vestContainer player) addItemCargoGlobal ["AGM_Epipen",1];
(vestContainer player) addItemCargoGlobal ["AGM_MapTools",1];
(vestContainer player) addItemCargoGlobal ["AGM_ItemKestrel",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",6];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];

// Motxilla
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["AGM_Bandage",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",8];

// Casc
player addHeadgear "rhs_Booniehat_ocp";

// Armes
player addWeapon "rhs_weap_XM2010_sa";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
player addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "AGM_Vector";

// Objectes
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "ItemRadio";

// Insígnia
[player,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

sleep 5;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"CC - Franctirador M2010ESR OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Franctirador M2010ESR OCP >> desat"];

//=======================================================================================================//
// Tots els perfils estan guardats                                                                       //
//=======================================================================================================//
terminate _blackScreen;
sleep 5;
cutText ["","BLACK IN",10];
disableUserInput false;
sleep 5;
player sidechat format ["%1", "Tots els perfils desats."];

//============================================ FI DEL FITXER ============================================//