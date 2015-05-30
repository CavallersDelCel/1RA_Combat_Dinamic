//=======================================================================================================//
// Arxiu: cc_ace3_config.sqf                                                                             //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 28/05/2015                                                                      //
// Descripció: Aquest document serveix per configurar una missió amb ACE 3 sense haver de posar          //
//             manualment els mòduls a l'editor. http://ace3mod.com/wiki/index.html                      //
//             http://ace3mod.com/wiki/missionmaker/modules.html                                         //
//=======================================================================================================//

private["_metges", "_vehiclesMedics", "_edificisMedics", "_unitatsRendeixen","_unitat"];


_metges = [];
_vehiclesMedics = [];
_edificisMedics = [];
_unitatsRendeixen = [];

// Comprovar si ACE 3 està carregat.
if (isClass (configFile >> "CfgPatches" >> "ace_common")) then {
	// Definir les variables manualment utilitzant la funció de ACE 3 ACE_common_fnc_setSetting:
	//  ["setting_name"], Value, forceSetting(bool), broadcastSetting(bool)] ACE_common_fnc_setSetting
    
	//====================================================================================================//
	// Advanced ballistics: http://ace3mod.com/wiki/missionmaker/modules.html#1.1-advanced-ballistics     //
	//====================================================================================================//
    ["ace_advanced_ballistics_enabled", true, true, true] call ACE_common_fnc_setSetting;
	["ace_advanced_ballistics_simulateForSnipers", true, true, true] call ACE_common_fnc_setSetting;
	["ace_advanced_ballistics_simulateForGroupMembers", false, true, true] call ACE_common_fnc_setSetting;
	["ace_advanced_ballistics_simulateForEveryone", false, true, true] call ACE_common_fnc_setSetting;
	["ace_advanced_ballistics_disabledInFullAutoMode", true, true, true] call ACE_common_fnc_setSetting;
	["ace_advanced_ballistics_ammoTemperatureEnabled", true, true, true] call ACE_common_fnc_setSetting;
	["ace_advanced_ballistics_barrelLengthInfluenceEnabled", true, true, true] call ACE_common_fnc_setSetting;
	["ace_advanced_ballistics_bulletTraceEnabled", true, true, true] call ACE_common_fnc_setSetting;
	["ace_advanced_ballistics_simulationInterval", 0.0, true, true] call ACE_common_fnc_setSetting;
	["ace_advanced_ballistics_simulationRadius", 3000, true, true] call ACE_common_fnc_setSetting;

	//====================================================================================================//
	// BlueForce Tracking: http://ace3mod.com/wiki/missionmaker/modules.html#1.3-blueforcetracking        //
	//====================================================================================================//	
	
	["ace_map_BFT_Interval", 1.0, true, true] call ACE_common_fnc_setSetting;
	["ace_map_BFT_Enabled", false, true, true] call ACE_common_fnc_setSetting;
	["ace_map_BFT_HideAiGroups", false, true, true] call ACE_common_fnc_setSetting;
	
	//====================================================================================================//
	// Check PBOs: http://ace3mod.com/wiki/missionmaker/modules.html#1.4-check-pbos                       //
	//====================================================================================================//
	
	//====================================================================================================//
	// Explosive System: http://ace3mod.com/wiki/missionmaker/modules.html#1.5-explosive-system           //
	//====================================================================================================//	
	
	["ace_explosives_RequireSpecialist", false, true, true] call ACE_common_fnc_setSetting;
	["ace_explosives_PunishNonSpecialists", true, true, true] call ACE_common_fnc_setSetting;
	
	//====================================================================================================//
	// Friendly Fire Messages:                                                                            //
	//          http://ace3mod.com/wiki/missionmaker/modules.html#1.6-friendly-fire-messages              //
	//====================================================================================================//
	
	["ace_respawn_showFriendlyFireMessage", false, true, true] call ACE_common_fnc_setSetting;
	
	//====================================================================================================//
	// Hearing: http://ace3mod.com/wiki/missionmaker/modules.html#1.7-hearing                             //
	//====================================================================================================//
	
	["ace_hearing_enableCombatDeafness", true, true, true] call ACE_common_fnc_setSetting;
	
	//====================================================================================================//
	// Interaction System: http://ace3mod.com/wiki/missionmaker/modules.html#1.8-interaction-system       //
	//====================================================================================================//

	["ace_interaction_EnableTeamManagement", true, true, true] call ACE_common_fnc_setSetting;
	
	//====================================================================================================//
	// Make Unit Surrender: http://ace3mod.com/wiki/missionmaker/modules.html#1.9-make-unit-surrender     //
	//====================================================================================================//
	
	//{
    //    _x setVariable ["XXXXX", true, true];
    //} foreach _unitatsRendeixen;
	
	//====================================================================================================//
	// Map: http://ace3mod.com/wiki/missionmaker/modules.html#1.10-map                                    //
	//====================================================================================================//
	
	["ace_map_mapIllumination", true, true, true] call ACE_common_fnc_setSetting;
	["ace_map_mapShake", true, true, true] call ACE_common_fnc_setSetting;
	["ace_map_mapLimitZoom", false, true, true] call ACE_common_fnc_setSetting;
	["ace_map_mapShowCursorCoordinates", false, true, true] call ACE_common_fnc_setSetting;
	
	//====================================================================================================//
	// MicroDAGR Map Fill: http://ace3mod.com/wiki/missionmaker/modules.html#1.11-microdagr-map-fill      //
	//                     - 2: Full Satellite + Buildings                                                //
	//====================================================================================================//

	["ace_microdagr_MapDataAvailable", 2, true, true] call ACE_common_fnc_setSetting;
	
	//====================================================================================================//
	// MK6 Settings: http://ace3mod.com/wiki/missionmaker/modules.html#1.12-mk6-settings                  //
	//====================================================================================================//
	
	["ace_mk6mortar_airResistanceEnabled", false, true, true] call ACE_common_fnc_setSetting;
	["ace_mk6mortar_allowComputerRangefinder", true, true, true] call ACE_common_fnc_setSetting;
	["ace_mk6mortar_allowCompass", true, true, true] call ACE_common_fnc_setSetting;
	
	//====================================================================================================//
	// Name Tags: http://ace3mod.com/wiki/missionmaker/modules.html#1.13-name-tags                        //
	//====================================================================================================//
	
	["ace_nametags_defaultNametagColor", [0.77, 0.51, 0.08, 1], true, true] call ACE_common_fnc_setSetting;
	["ace_nametags_showPlayerNames", true, true, true] call ACE_common_fnc_setSetting;
	["ace_nametags_showPlayerRanks", true, true, true] call ACE_common_fnc_setSetting;
	["ace_nametags_showVehicleCrewInfo", true, true, true] call ACE_common_fnc_setSetting;
	["ace_nametags_showNamesForAI", false, true, true] call ACE_common_fnc_setSetting;
	["ace_nametags_showCursorTagForVehicles", false, true, true] call ACE_common_fnc_setSetting;
	["ace_nametags_showSoundWaves", true, true, true] call ACE_common_fnc_setSetting;
	["ace_nametags_PlayerNamesViewDistance", 5, true, true] call ACE_common_fnc_setSetting;
	["ace_nametags_PlayerNamesMaxAlpha", 0.8, true, true] call ACE_common_fnc_setSetting;
	["ace_nametags_tagSize", 2, true, true] call ACE_common_fnc_setSetting;
	
	//====================================================================================================//
	// Rally Point System: http://ace3mod.com/wiki/missionmaker/modules.html#1.14-rallypoint-system       //
	//====================================================================================================//
	
	//====================================================================================================//
	// Respawn System: http://ace3mod.com/wiki/missionmaker/modules.html#1.15-respawn-system              //
	//====================================================================================================//
	
	["ace_respawn_SavePreDeathGear", false, true, true] call ACE_common_fnc_setSetting;
	
	//====================================================================================================//
	// SwitchUnits System: http://ace3mod.com/wiki/missionmaker/modules.html#1.16-switchunits-system      //
	//====================================================================================================//
	
	//====================================================================================================//
	// Vehicle Lock: http://ace3mod.com/wiki/missionmaker/modules.html#1.17-vehicle-lock                  //
	//====================================================================================================//
	
	//====================================================================================================//
	// View Distance Limiter: http://ace3mod.com/wiki/missionmaker/modules.html#1.18-view-distance-limiter//
	//====================================================================================================//
	
	["ace_viewdistance_enabled", true, true, true] call ACE_common_fnc_setSetting;
	["ace_viewdistance_limitViewDistance", 10000, true, true] call ACE_common_fnc_setSetting;
	
	//====================================================================================================//
	// Weather: http://ace3mod.com/wiki/missionmaker/modules.html#1.19-weather                            //
	//====================================================================================================//
	
	["ace_weather_enableServerController", true, true, true] call ACE_common_fnc_setSetting;
	["ace_weather_useACEWeather", true, true, true] call ACE_common_fnc_setSetting;
	["ace_weather_syncRain", true, true, true] call ACE_common_fnc_setSetting;
	["ace_weather_syncWind", true, true, true] call ACE_common_fnc_setSetting;
	["ace_weather_syncMisc", true, true, true] call ACE_common_fnc_setSetting;
	["ace_weather_serverUpdateInterval", 60, true, true] call ACE_common_fnc_setSetting;
	
    //====================================================================================================//
	// Wind Deflection: http://ace3mod.com/wiki/missionmaker/modules.html#1.20-wind-deflection            //
	//====================================================================================================//
	["ace_winddeflection_enable", true, true, true] call ACE_common_fnc_setSetting;
	["ace_winddeflection_vehicleEnabled", true, true, true] call ACE_common_fnc_setSetting;
	["ace_winddeflection_simulationInterval", 0.05, true, true] call ACE_common_fnc_setSetting;
	["ace_winddeflection_simulationRadius", 3000, true, true] call ACE_common_fnc_setSetting;
	
    //====================================================================================================//
	// ACE3 Medical: http://ace3mod.com/wiki/missionmaker/modules.html#2.-ace3-medical                    //
	//====================================================================================================//
	["ace_medical_level", 2, true, true] call ACE_common_fnc_setSetting; // - 0 Deshabilitat; 1 Bàsic; 2 Avançat
	["ace_medical_medicSetting", 2, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_enableFor", 1, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_enableOverdosing", true, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_bleedingCoefficient", 1, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_painCoefficient", 1, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_enableAirway", true, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_enableFractures", true, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_enableAdvancedWounds", true, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_enableVehicleCrashes", true, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_enableScreams", true, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_playerDamageThreshold", 1, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_AIDamageThreshold", 1, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_enableUnconsciousnessAI", true, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_preventInstaDeath", false, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_enableRevive", false, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_maxReviveTime", 120, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_amountOfReviveLives", -1, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_allowDeadBodyMovement", false, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_allowLitterCreation", true, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_litterSimulationDetail", 3, true, true] call ACE_common_fnc_setSetting;//?
	["ace_medical_litterCleanUpDelay", 1800, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_medicSetting_PAK", 1, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_medicSetting_SurgicalKit", "Medics only", true, true] call ACE_common_fnc_setSetting;
	["ace_medical_consumeItem_PAK", 0, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_consumeItem_SurgicalKit", 0, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_useLocation_PAK", "vehicle & facility", true, true] call ACE_common_fnc_setSetting;
	["ace_medical_useLocation_SurgicalKit", "Medical facility", true, true] call ACE_common_fnc_setSetting;
	["ace_medical_keepLocalSettingsSynced", true, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_healHitPointAfterAdvBandage", true, true, true] call ACE_common_fnc_setSetting;
	//["ace_medical_painEffectType", 2, true, true] call ACE_common_fnc_setSetting; 
	["ace_medical_allowUnconsciousAnimationOnTreatment", false, true, true] call ACE_common_fnc_setSetting;
	["ace_medical_moveUnitsFromGroupOnUnconscious", false, true, true] call ACE_common_fnc_setSetting;
	//["ace_medical_menuTypeStyle", 2, true, true] call ACE_common_fnc_setSetting; // Medical facility
	
    // Assignar rols de metge, vehicle mèdic i edificis mèdics
    {
        _x setVariable ["ace_medical_medicClass", 1, true];
    } foreach _metges;

    {
        _x setVariable ["ace_medical_medicClass", 1, true];
    } foreach _vehiclesMedics;

    {
        _x setVariable ["ace_medical_isMedicalFacility", true, true];
    } foreach _edificisMedics;
} else {
	player sideChat format ["DEBUG (cc_ace3_config.sqf): ACE3 no es pot configurar ja que no està carregat."];
};