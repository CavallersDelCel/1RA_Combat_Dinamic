/*
*	The module_cleanUp configuration file.
*	You can change the variables below to whatever suits your mission best.
*
*	The radius is specified meters.
*	Timers are specified in seconds.
*/

///////////////////////////////
// Clean abandonded vehicles //
///////////////////////////////
pvpfw_cleanup_cleanAbandonded = true; // true or false, depending on wether you want abandoned vehicles to be deleted
pvpfw_cleanup_abandonedFromFaction = ["BLU_F","OPF_F","IND_F","CIV_F"]; // Vehicles from these factions will be cleaned up
pvpfw_cleanUp_abandonRadius = 200; // If no unit is closer than the specified distance, the removal countdown will start
pvpfw_cleanup_abandondTimer = 30; // The vehicle will be removed after the specified time
pvpfw_cleanUp_dontCleanUpAround = ["Marker_MHQ","AOW_Capture1","AOW_Sabotage1","AOW_Fdestroy1","AOW_Destroy1","AOW_Extraction1","AOW_Assassinate1","AOW_Disarm1","VVS1","AOW_Assault1","AOW_ShipDelivery","AOW_PlaneDelivery"]; //do not clean abandoned vehicles around these markers
pvpfw_cleanUp_dontCleanUpAroundDistance = 80; // Dont clean if the vehicle is in this range of one of the above markers.

//////////////////////////////
// Clean destroyed vehicles //
//////////////////////////////
pvpfw_cleanUp_vehicleRadius = 50; // Destroyed vehicles cleanup timer will start if no unit is closer than this
pvpfw_cleanUp_vehicleTimer = 30;

//////////////////
// Clean bodies //
//////////////////
pvpfw_cleanUp_bodyTimer = 60; // Bodies will be removed after the specified amount of seconds

/////////////////////////////////
//     Clean weaponholders     //
// weapons/magazines on ground //
/////////////////////////////////
#define __pvpfw_cleanUp_cleanWeaponHolders //comment out this line if you dont want weaponHolders to be cleaned up
pvpfw_cleanUp_weaponHolderRadius = 20; // The weaponholders cleanup countdown will start if no unit is closer than this
pvpfw_cleanUp_weaponHolderTimer = 10; // Weaponholders will be deleted after this time

///////////////////////////////
// Clean destroyed buildings //
///////////////////////////////
//#define __pvpfw_cleanUp_cleanRuins //comment out this line if you dont want destroyed buildings to be cleaned up
pvpfw_cleanUp_ruinRadius = 1500; // Destroyed Buildings will be deleted if no entity is in the specified range around them

// Advanced
//#define __pvpfw_cleanUp_cleanExtra //comment out this line if you dont need the objects below to be checked
pvpfw_cleanUp_chemLightTimer = 300; //effectively overrides the max "timeToLive" for the chemlight ammo object which is 900 seconds by default
pvpfw_cleanUp_pipeBombTimer = 1800; //effectively sets a "timeToLive" limit on all explosives, that can be triggered remotely