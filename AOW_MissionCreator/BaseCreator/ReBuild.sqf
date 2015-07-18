// [getPos player, 200, true] call BIS_fnc_objectsGrabber;   (function used to create compositions)
// Make the new base useable

if (getMarkerColor "VVS1" != "") then {// Delete old Base markers if base re located
	deleteMarker "VVS1";
	deleteMarker "VVS2";
	deleteMarker "VVS3";
	deleteMarker "VVS4";
	deleteMarker "VVS5";
	deleteMarker "VVS6";
	deleteMarker "VVS7";
	deleteMarker "HMVVS5";
	deleteMarker "respawn_west";
	deleteMarker "respawn_east";
	deleteMarker "Spawn_MHQ";
	deleteMarker "Repair_marker";
};

// Make sure no player can't destroy important base part
if (getMarkerColor "VVS1" == "") then {
	[[NBCar, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	[[NBArmored, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	[[NBHelicopter, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	[[NBSupport, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	[[NBPlane, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	[[NBDrone, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	[[NBShip, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	[[NBAmmo, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	[[NBAmmo2, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	/************** Canvis dels Cavallers del Cel per CC_Viper ***************************/
	[[NBAmmobox, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	[[cartell01, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	[[cartell02, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	[[cartell03, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	[[cartell04, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	[[baseFlagPole, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	[[baseFlagPole2, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	[[baseFlagPole3, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	[[tablet, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	[[taulapet, false],"AOW_fnc_base_allowdamage",true,true] spawn BIS_fnc_MP;
	/************** Fi dels canvis dels Cavallers del Cel per CC_Viper *******************/
	
};

// Flag Pole
[[baseFlagPole, [localize "str_AOW_Menu1","AOW_MHQ\DialogMHQ.sqf",[],6,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;
[[baseFlagPole, [localize "str_AOW_Menu2","AOW_MissionCreator\ZoneCreator\Zone1.sqf",[],5.9,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;
[[baseFlagPole, [localize "str_AOW_Menu3","AOW_MissionCreator\TasksCreator\Tasks1.sqf",[],5.8,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;
[[baseFlagPole, [localize "str_AOW_Menu4","AOW_MissionCreator\BaseCreator\Base1.sqf",[],5.7,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;
publicVariable "baseFlagPole";

// Respawn + MHQ markers
createMarker ["respawn_west",getPos Hrespawn_west];
createMarker ["respawn_east",getPos Hrespawn_east];
_spawn_mhq = createMarker ["Spawn_MHQ", getPos HSpawn_MHQ];
_spawn_mhq setMarkerDir getDir Hspawn_MHQ;

// CAR SPAWNER
_mVVS1 = createMarker ["VVS1", getPos HVVS1];
_mVVS1 setMarkerType "b_motor_inf";
_mVVS1 setMarkerText localize "str_AOW_Marker_Car";
_mVVS1 setMarkerDir (getDir NBCar);
NBCar setObjectTextureGlobal [0, "images\cart_cotxes.paa"];
[[NBCar, [localize "str_AOW_Menu_Car",{[["cars"], [], "VVS1"] execVM "ASORVS\open.sqf"},[],6,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;

// ARMORED SPAWNER
_mVVS2 = createMarker ["VVS2", getPos HVVS2];
_mVVS2 setMarkerType "b_armor";
_mVVS2 setMarkerText localize "str_AOW_Marker_Tank";
_mVVS2 setMarkerDir (getDir NBArmored);
NBArmored setObjectTextureGlobal [0, "images\cart_blindats.paa"];
[[NBArmored, [localize "str_AOW_Menu_Tank",{[["tanks"], [], "VVS2"] execVM "ASORVS\open.sqf"},[],6,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;

// HELICOPTER SPAWNER
_mVVS3 = createMarker ["VVS3", getPos HVVS3];
_mVVS3 setMarkerType "b_air";
_mVVS3 setMarkerText localize "str_AOW_Marker_Heli";
_mVVS3 setMarkerDir (getDir HVVS3);
NBHelicopter setObjectTextureGlobal [0, "images\cart_helicopters.paa"];
[[NBHelicopter, [localize "str_AOW_Menu_Heli",{[["helicopters"], [], "VVS3"] execVM "ASORVS\open.sqf"},[],6,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;

// SUPPORT SPAWNER
_mVVS4 = createMarker ["VVS4", getPos HVVS4];
_mVVS4 setMarkerType "b_support";
_mVVS4 setMarkerText localize "str_AOW_Marker_Support";
_mVVS4 setMarkerDir (getDir NBSupport);
NBSupport setObjectTextureGlobal [0, "images\cart_suport.paa"];
[[NBSupport, [localize "str_AOW_Menu_Support",{[["support"], [], "VVS4"] execVM "ASORVS\open.sqf"},[],6,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;

// PLANE SPAWNER
_mVVS5 = createMarker ["VVS5", getPos HSupport1];
_HMmVVS5 = createMarker ["HMVVS5", getPos NBPlane];
_HMmVVS5 setMarkerType "b_plane";
_HMmVVS5 setMarkerText localize "str_AOW_Marker_Plane";
_HMmVVS5 setMarkerDir (getDir NBPlane);
_mVVS5 setMarkerDir (getDir HVVS5);
NBPlane setObjectTextureGlobal [0, "images\cart_avions.paa"];
[[NBPlane, [localize "str_AOW_Menu_SpawnP_1",{[["planes"], [], "AOW_PlaneDelivery"] execVM "ASORVS\open.sqf"},[],6,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;
[[NBPlane, [localize "str_AOW_Menu_SpawnP_2","[] execVM 'AOW_MissionCreator\BaseCreator\DialogSpawner.sqf'; AOW_Selected_Spawner = 2",[],5.9,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;
[[NBPlane, [localize "str_AOW_Menu_SpawnP_3","AOW_MissionCreator\BaseCreator\TPPlane.sqf",[],5.8,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;
[[NBPlane, [localize "str_AOW_Menu_SpawnP_4",{[["planes"], [], "VVS5"] execVM "ASORVS\open.sqf"},[],5.7,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;

// DRONE SPAWNER
_mVVS6 = createMarker ["VVS6", getPos HVVS6];
_mVVS6 setMarkerType "b_uav";
_mVVS6 setMarkerText localize "str_AOW_Marker_Drone";
_mVVS6 setMarkerDir (getDir NBDrone);
NBDrone setObjectTextureGlobal [0, "images\cart_drones.paa"];
[[NBDrone, [localize "str_AOW_Menu_Drone",{[["autonomous"], [], "VVS6"] execVM "ASORVS\open.sqf"},[],6,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;

// SHIP SPAWNER
_mVVS7 = createMarker ["VVS7", getPos NBShip];
_mVVS7 setMarkerType "b_naval";
_mVVS7 setMarkerText localize "str_AOW_Marker_Ship";
_mVVS7 setMarkerDir (getDir NBDrone);
NBShip setObjectTextureGlobal [0, "images\cart_vaixells.paa"];
[[NBShip, [localize "str_AOW_Menu_SpawnS_1",{[["ships"], [], "AOW_ShipDelivery"] execVM "ASORVS\open.sqf"},[],6,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;
[[NBShip, [localize "str_AOW_Menu_SpawnS_2","[] execVM 'AOW_MissionCreator\BaseCreator\DialogSpawner.sqf'; AOW_Selected_Spawner = 1",[],5.9,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;
[[NBShip, [localize "str_AOW_Menu_SpawnS_3","AOW_MissionCreator\BaseCreator\TPShip.sqf",[],5.8,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;

// AMMO DEPOT (Cartell)
// [[NBAmmo, [localize "str_AOW_Menu_Ammo1","scripts\arsenal.sqf",[],6,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;
// [[NBAmmo, [localize "str_AOW_Menu_Ammo2","[player, [profileNamespace, 'AOW_Respawn_Loadout']] call BIS_fnc_saveInventory; profileNamespace setVariable ['AOW_Respawn_Loadout_Check',1]; hint'Equipament desat';",[],5.9,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;
// [[NBAmmo, [localize "str_AOW_Menu_Ammo3","userconfig\LEA\loadout.sqf",[],5.8,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;
NBAmmo setObjectTextureGlobal [0, "images\cart_arsenal1.paa"];
NBAmmo2 setObjectTextureGlobal [0, "images\cart_arsenal2.paa"];
publicVariable "NBAmmo2";
NBAmmo3 setObjectTextureGlobal [0, "images\cart_arsenal2.paa"];
NBAmmo4 setObjectTextureGlobal [0, "images\cart_arsenal2.paa"];
NBAmmo5 setObjectTextureGlobal [0, "images\cart_arsenal2.paa"];

// 1RA: CC_Viper: Canvis per afegir el virtual arsenal, noves imatges, banderes i cartells //
//AMMOBOX DEPOT
[[NBAmmobox, [localize "str_AOW_Menu_Ammo1","scripts\arsenal.sqf",[],6,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;
[[NBAmmobox, [localize "str_AOW_Menu_Ammo2","[player, [profileNamespace, 'CD_Equipament']] call BIS_fnc_saveInventory; profileNamespace setVariable ['CD_Equipament_Check',1]; hint'Equipament desat';",[],5.9,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;
[[NBAmmobox, [localize "str_AOW_Menu_Ammo3","userconfig\LEA\loadout.sqf",[],5.8,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;

// Tablet perfils
[[tablet, ["<t color='#027CE7'>Desar perfils 1RA</t>","1RAPerfils.sqf",[],6,false,true,"",""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;
tablet attachTo [taulapet, [0,0.5,0.57]];

// Sign images
Sign1 setObjectTextureGlobal [0, "images\cart_campcavallers.paa"];
Sign2 setObjectTextureGlobal [0, "images\cart_relax.paa"];
Sign2b setObjectTextureGlobal [0, "images\cart_relax.paa"];
Sign3 setObjectTextureGlobal [0, "images\cart_stop1.paa"];
Sign4 setObjectTextureGlobal [0, "images\cart_stop2.paa"];
cart_repair setObjectTextureGlobal [0, "images\cart_reparacio.paa"];

// Textures de banderes
baseFlagPole setFlagTexture "images\senyera.paa";
baseFlagPole2 setFlagTexture "images\flag_1ra.paa";
baseFlagPole3 setFlagTexture "images\flag_cc.paa";

// Imatges de cartells
cartell01 setObjectTextureGlobal [0, "images\Cartell_01_ServerCC_A3.paa"];
cartell02 setObjectTextureGlobal [0, "images\Cartell_02_ServerCC_A3.paa"];
cartell03 setObjectTextureGlobal [0, "images\Cartell_03_ServerCC_A3.paa"];
cartell04 setObjectTextureGlobal [0, "images\Cartell_04_ServerCC_A3.paa"];
// 1RA: CC_Viper: Fi dels canvis per afegir el virtual arsenal, noves imatges, banderes i cartells //

// Vehicle repair
_mRepair = createMarker ["Repair_marker", getPos HRepair];
_mrepair setMarkerType "b_maint";
_mRepair setMarkerText localize "str_AOW_Marker_V_Service";
_mRepair setMarkerDir (getDir HRepair);
Repair_trigger setPos getPos HRepair;
Repair_trigger setDir getDir HRepair;

// 1RA: CC_Viper:  //
// allCurators removeCuratorEditableObjects [[tallagespa], false];

// Move support requester to base location
switch (paramsArray select 9) do
{
	case 0: {};
	case 1: {
	AOW_Support_Logistic_1 setPos getPos baseFlagPole;
	AOW_Support_Logistic_2 setPos getPos baseFlagPole;};
	case 2: {
	AOW_Support_Offensive_1 setPos getPos baseFlagPole;
	AOW_Support_Offensive_2 setPos getPos baseFlagPole;
	AOW_Support_Offensive_3 setpos getPos HVVS5;};
	case 3: {
	AOW_Support_All_1 setpos getPos HVVS5;
	AOW_Support_All_2 setPos getPos baseFlagPole;
	AOW_Support_All_3 setPos getPos baseFlagPole;
	AOW_Support_All_4 setPos getPos baseFlagPole;
	AOW_Support_All_5 setPos getPos baseFlagPole;};
};

// Delete helpers used to place markers
deleteVehicle hVVS1;
deleteVehicle hVVS2;
deleteVehicle hVVS3;
deleteVehicle hVVS4;
deleteVehicle hVVS5;
deleteVehicle hVVS6;
deleteVehicle Hrespawn_west;
deleteVehicle Hrespawn_east;
deleteVehicle HSpawn_MHQ;
deleteVehicle HSupport1;
deleteVehicle HRepair;