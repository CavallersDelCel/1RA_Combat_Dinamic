disableSerialization;
_handle = createDialog "AOW_dialog1";
waitUntil {dialog};

// Iniatiate array first time the mission is played
_oldvalues = profileNamespace getVariable "AOW_DefaultZoneValue";
if (isNil "_oldvalues") then {
	_default = [3,3,3,0,5,1,3,1,6,0,0];
	// [X,Y,AIB,AIBs,AIP,AIPs,AIM,AIA,AIS,AIH,Faction]
	profileNamespace setVariable ["AOW_DefaultZoneValue",_default];
};

// Previously used values
_oldvalues = profileNamespace getVariable "AOW_DefaultZoneValue";
_oldX = _oldvalues select 0; // Marker size X
_oldY = _oldvalues select 1; // Marker size X
_oldAIB = _oldvalues select 2; // AI Building
_oldAIBs = _oldvalues select 3; // AI Building Size
_oldAIP = _oldvalues select 4; // AI Patrol
_oldAIPs = _oldvalues select 5; // AI Patrol Size
_oldAIM = _oldvalues select 6; // AI Motorized
_oldAIA = _oldvalues select 7; // AI Armored
_oldAIS = _oldvalues select 8; // AI Static
_oldAIH = _oldvalues select 9; // AI Helicopter
_oldAIFaction = _oldvalues select 10; // Faction

// Pre set option
_index_zone_preset_0 = lbAdd [4731, "Manual"];
_index_zone_preset_1 = lbAdd [4731, "Very Easy"];
_index_zone_preset_2 = lbAdd [4731, "Easy"];
_index_zone_preset_3 = lbAdd [4731, "Medium"];
_index_zone_preset_4 = lbAdd [4731, "Hard"];
_index_zone_preset_5= lbAdd [4731, "Very Hard"];
_index_zone_preset_6 = lbAdd [4731, "Insane"];
lbSetCurSel [4731, _index_zone_preset_0];

// Marker size X
_index_zone_sizex_0 = lbAdd [4711, "50"];
_index_zone_sizex_1 = lbAdd [4711, "100"];
_index_zone_sizex_2 = lbAdd [4711, "150"];
_index_zone_sizex_3 = lbAdd [4711, "200"];
_index_zone_sizex_4 = lbAdd [4711, "250"];
_index_zone_sizex_5 = lbAdd [4711, "300"];
_index_zone_sizex_6 = lbAdd [4711, "350"];
_index_zone_sizex_7 = lbAdd [4711, "400"];
lbSetCurSel [4711, _oldX];

// Marker size Y
_index_zone_sizey_0 = lbAdd [4710, "50"];
_index_zone_sizey_1 = lbAdd [4710, "100"];
_index_zone_sizey_2 = lbAdd [4710, "150"];
_index_zone_sizey_3 = lbAdd [4710, "200"];
_index_zone_sizey_4 = lbAdd [4710, "250"];
_index_zone_sizey_5 = lbAdd [4710, "300"];
_index_zone_sizey_6 = lbAdd [4710, "350"];
_index_zone_sizey_7 = lbAdd [4710, "400"];
lbSetCurSel [4710, _oldY];

// AI Building
_index_zone_building_0 = lbAdd [4701, "0"];
_index_zone_building_1 = lbAdd [4701, "1"];
_index_zone_building_2 = lbAdd [4701, "2"];
_index_zone_building_3 = lbAdd [4701, "3"];
_index_zone_building_4 = lbAdd [4701, "4"];
_index_zone_building_5 = lbAdd [4701, "5"];
_index_zone_building_6 = lbAdd [4701, "6"];
_index_zone_building_7 = lbAdd [4701, "7"];
_index_zone_building_8 = lbAdd [4701, "8"];
_index_zone_building_9 = lbAdd [4701, "9"];
_index_zone_building_10 = lbAdd [4701, "10"];
_index_zone_building_11 = lbAdd [4701, "11"];
_index_zone_building_12 = lbAdd [4701, "12"];
_index_zone_building_13 = lbAdd [4701, "13"];
_index_zone_building_14 = lbAdd [4701, "14"];
_index_zone_building_15 = lbAdd [4701, "15"];
_index_zone_building_16 = lbAdd [4701, "16"];
_index_zone_building_17 = lbAdd [4701, "17"];
_index_zone_building_18 = lbAdd [4701, "18"];
_index_zone_building_19 = lbAdd [4701, "19"];
_index_zone_building_20 = lbAdd [4701, "20"];
lbSetCurSel [4701, _oldAIB];

// AI Building Size
_index_zone_buildingS_0 = lbAdd [4702, "1"];
_index_zone_buildingS_1 = lbAdd [4702, "2-4"];
_index_zone_buildingS_2 = lbAdd [4702, "4-8"];
_index_zone_buildingS_3 = lbAdd [4702, "8-12"];
_index_zone_buildingS_4 = lbAdd [4702, "12-16"];
_index_zone_buildingS_5 = lbAdd [4702, "16-20"];
lbSetCurSel [4702, _oldAIBs];

// AI Infantry
_index_zone_infantry_0 = lbAdd [4703, "0"];
_index_zone_infantry_1 = lbAdd [4703, "1"];
_index_zone_infantry_2 = lbAdd [4703, "2"];
_index_zone_infantry_3 = lbAdd [4703, "3"];
_index_zone_infantry_4 = lbAdd [4703, "4"];
_index_zone_infantry_5 = lbAdd [4703, "5"];
_index_zone_infantry_6 = lbAdd [4703, "6"];
_index_zone_infantry_7 = lbAdd [4703, "7"];
_index_zone_infantry_8 = lbAdd [4703, "8"];
_index_zone_infantry_9 = lbAdd [4703, "9"];
_index_zone_infantry_10 = lbAdd [4703, "10"];
_index_zone_infantry_11 = lbAdd [4703, "11"];
_index_zone_infantry_12 = lbAdd [4703, "12"];
_index_zone_infantry_13 = lbAdd [4703, "13"];
_index_zone_infantry_14 = lbAdd [4703, "14"];
_index_zone_infantry_15 = lbAdd [4703, "15"];
_index_zone_infantry_16 = lbAdd [4703, "16"];
_index_zone_infantry_17 = lbAdd [4703, "17"];
_index_zone_infantry_18 = lbAdd [4703, "18"];
_index_zone_infantry_19 = lbAdd [4703, "19"];
_index_zone_infantry_20 = lbAdd [4703, "20"];
lbSetCurSel [4703, _oldAIP];

// AI Infantry Size
_index_zone_infantryS_0 = lbAdd [4704, "1"];
_index_zone_infantryS_1 = lbAdd [4704, "2-4"];
_index_zone_infantryS_2 = lbAdd [4704, "4-8"];
_index_zone_infantryS_3 = lbAdd [4704, "8-12"];
_index_zone_infantryS_4 = lbAdd [4704, "12-16"];
_index_zone_infantryS_5 = lbAdd [4704, "16-20"];
lbSetCurSel [4704, _oldAIPs];

// AI Motorized
_index_zone_motorized_0 = lbAdd [4705, "0"];
_index_zone_motorized_1 = lbAdd [4705, "1"];
_index_zone_motorized_2 = lbAdd [4705, "2"];
_index_zone_motorized_3 = lbAdd [4705, "3"];
_index_zone_motorized_4 = lbAdd [4705, "4"];
_index_zone_motorized_5 = lbAdd [4705, "5"];
_index_zone_motorized_6 = lbAdd [4705, "6"];
_index_zone_motorized_7 = lbAdd [4705, "7"];
_index_zone_motorized_8 = lbAdd [4705, "8"];
_index_zone_motorized_9 = lbAdd [4705, "9"];
_index_zone_motorized_10 = lbAdd [4705, "10"];
lbSetCurSel [4705, _oldAIM];

// AI Armored
_index_zone_armored_0 = lbAdd [4706, "0"];
_index_zone_armored_1 = lbAdd [4706, "1"];
_index_zone_armored_2 = lbAdd [4706, "2"];
_index_zone_armored_3 = lbAdd [4706, "3"];
_index_zone_armored_4 = lbAdd [4706, "4"];
_index_zone_armored_5 = lbAdd [4706, "5"];
_index_zone_armored_6 = lbAdd [4706, "6"];
_index_zone_armored_7 = lbAdd [4706, "7"];
_index_zone_armored_8 = lbAdd [4706, "8"];
_index_zone_armored_9 = lbAdd [4706, "9"];
_index_zone_armored_10 = lbAdd [4706, "10"];
lbSetCurSel [4706, _oldAIA];

// AI Static
_index_zone_static_0 = lbAdd [4707, "0"];
_index_zone_static_1 = lbAdd [4707, "1"];
_index_zone_static_2 = lbAdd [4707, "2"];
_index_zone_static_3 = lbAdd [4707, "3"];
_index_zone_static_4 = lbAdd [4707, "4"];
_index_zone_static_5 = lbAdd [4707, "5"];
_index_zone_static_6 = lbAdd [4707, "6"];
_index_zone_static_7 = lbAdd [4707, "7"];
_index_zone_static_8 = lbAdd [4707, "8"];
_index_zone_static_9 = lbAdd [4707, "9"];
_index_zone_static_10 = lbAdd [4707, "10"];
lbSetCurSel [4707, _oldAIS];

// AI Heli
_index_zone_heli_0 = lbAdd [4708, "0"];
_index_zone_heli_1 = lbAdd [4708, "1"];
_index_zone_heli_2 = lbAdd [4708, "2"];
_index_zone_heli_3 = lbAdd [4708, "3"];
_index_zone_heli_4 = lbAdd [4708, "4"];
_index_zone_heli_5 = lbAdd [4708, "5"];
_index_zone_heli_6 = lbAdd [4708, "6"];
_index_zone_heli_7 = lbAdd [4708, "7"];
_index_zone_heli_8 = lbAdd [4708, "8"];
_index_zone_heli_9 = lbAdd [4708, "9"];
_index_zone_heli_10 = lbAdd [4708, "10"];
lbSetCurSel [4708, _oldAIH];

// AI Faction
_index_zone_faction_0 = lbAdd [4709, "CSAT"];
_index_zone_faction_1 = lbAdd [4709, "NATO"];
_index_zone_faction_2 = lbAdd [4709, "AAF"];
_index_zone_faction_3 = lbAdd [4709, "ZOMBIES"];
_index_zone_faction_4 = lbAdd [4709, "FIA"];
_index_zone_faction_5 = lbAdd [4709, "FIA"];
_index_zone_faction_6 = lbAdd [4709, "CIVILIAN ZONE"];
_index_zone_faction_7 = lbAdd [4709, "CAF_AG : MIDDLE EAST"];
_index_zone_faction_8 = lbAdd [4709, "EASTvsWEST : EAST"];
_index_zone_faction_9 = lbAdd [4709, "EASTvsWEST : WEST"];
_index_zone_faction_10 = lbAdd [4709, "RHS : RUSSIAN"];
_index_zone_faction_11 = lbAdd [4709, "RHS : AMERICAN"];
_index_zone_faction_12 = lbAdd [4709, "RHS : INSURGENTS"];
_index_zone_faction_13 = lbAdd [4709, "IRONFRONT : RUSSIAN"];
_index_zone_faction_14 = lbAdd [4709, "IRONFRONT : GERMAN"];
_index_zone_faction_15 = lbAdd [4709, "IRONFRONT : AMERICAN"];
_index_zone_faction_16 = lbAdd [4709, "LEIGHTS : NOVORUSSIAN AMRY"];
_index_zone_faction_17 = lbAdd [4709, "LEIGHTS : CHDKZ"];
_index_zone_faction_18 = lbAdd [4709, "LEIGHTS : SLA"];
_index_zone_faction_19 = lbAdd [4709, "LEIGHTS : AFGHAN ARMY"];
_index_zone_faction_20 = lbAdd [4709, "LEIGHTS : CDF"];
_index_zone_faction_21 = lbAdd [4709, "LEIGHTS : IRAQI ARMY"];
_index_zone_faction_22 = lbAdd [4709, "LEIGHTS : AFRICAN MILITIA"];
_index_zone_faction_23 = lbAdd [4709, "LEIGHTS : ISTS"];
_index_zone_faction_24 = lbAdd [4709, "LEIGHTS : RACS"];
_index_zone_faction_25 = lbAdd [4709, "LEIGHTS : AFGHAN MILITIA"];
lbSetCurSel [4709, _oldAIFaction];

// Faction colors
lbSetColor [4709,0,[1,0,0,1]];
lbSetColor [4709,1,[0,0,1,1]];
lbSetColor [4709,2,[0,1,0,1]];
lbSetColor [4709,4,[0,0,1,1]];
lbSetColor [4709,5,[1,0,0,1]];
lbSetColor [4709,7,[1,0,0,1]];
lbSetColor [4709,8,[1,0,0,1]];
lbSetColor [4709,9,[0,0,1,1]];
lbSetColor [4709,10,[1,0,0,1]];
lbSetColor [4709,11,[0,0,1,1]];
lbSetColor [4709,12,[0,1,0,1]];
lbSetColor [4709,13,[1,0,0,1]];
lbSetColor [4709,14,[0,0,1,1]];
lbSetColor [4709,15,[0,1,0,1]];
lbSetColor [4709,16,[1,0,0,1]];
lbSetColor [4709,17,[1,0,0,1]];
lbSetColor [4709,18,[1,0,0,1]];
lbSetColor [4709,19,[0,0,1,1]];
lbSetColor [4709,20,[0,0,1,1]];
lbSetColor [4709,21,[0,0,1,1]];
lbSetColor [4709,22,[0,1,0,1]];
lbSetColor [4709,23,[0,1,0,1]];
lbSetColor [4709,24,[0,1,0,1]];
lbSetColor [4709,25,[0,1,0,1]];

// Disable escape key
_noesc = (findDisplay 9963) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 1) then { true }"];
waitUntil {!dialog};
(findDisplay 9963) displayRemoveEventHandler ["KeyDown", _noesc];