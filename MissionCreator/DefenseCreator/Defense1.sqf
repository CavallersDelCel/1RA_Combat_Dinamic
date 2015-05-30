// Prepare arrays
_markerx = 0;
_markery = 0;
_delay = 0;
_waves = 0;
_wavesN = lbCurSel 4701;
_delayN = lbCurSel 4702;
_AIp = lbCurSel 4703;
_AIps = lbCurSel 4704;
_AIm = lbCurSel 4705;
_AIa = lbCurSel 4706;
_AIs = lbCurSel 4707;
_AIh = lbCurSel 4708;
_enemy = lbCurSel 4709;
_presetused = false;

switch (lbCurSel 4711) do
{// Zone X Size
case 0 : {_markerx = 50};
case 1 : {_markerx = 100};
case 2 : {_markerx = 150};
case 3 : {_markerx = 200};
case 4 : {_markerx = 150};
case 5 : {_markerx = 300};
case 6 : {_markerx = 350};
case 7 : {_markerx = 400};
};

switch (lbCurSel 4710) do
{// Zone Y Size
case 0 : {_markery = 50};
case 1 : {_markery = 100};
case 2 : {_markery = 150};
case 3 : {_markery = 200};
case 4 : {_markery = 150};
case 5 : {_markery = 300};
case 6 : {_markery = 350};
case 7 : {_markery = 400};
};

// Save values for easier zone creation next time
_usedvalues = [lbCurSel 4711,lbCurSel 4710,_wavesN,_delayN,_AIp,_AIps,_AIm,_AIa,_AIs,_AIh,_enemy];
profileNamespace setVariable ["AOW_DefaultDefenseValue",_usedvalues];

// Wave delay
switch (_delayN) do
{
    case 0: {_delay = 20};
    case 1: {_delay = 40};
    case 2: {_delay = 60};
    case 3: {_delay = 80};
    case 4: {_delay = 100};
    case 5: {_delay = 120};
    case 6: {_delay = 180};
    case 7: {_delay = 240};
    case 8: {_delay = 300};
};

// Create the marker where the zone will be located
_markerName = [] call AOW_fnc_getFreeMarkerName;
_tempPos = getMarkerPos "TempTask";
_marker = createMarker [_markerName, _tempPos];
_marker setMarkerShape "RECTANGLE";
_marker setMarkerBrush "Solid";
_marker setMarkerColor "ColorGreen";
_marker setMarkerAlpha 0;
_marker setMarkerSize [_markerx,_markery];

// Make the units friendly to the right side
_side = EAST;
if (_enemy == 1 || _enemy == 4 || _enemy == 9 || _enemy == 11 || _enemy == 14 || _enemy == 19 || _enemy == 20 || _enemy == 21) then {_side = WEST};
if (_enemy == 2 || _enemy == 12 || _enemy == 15 || _enemy == 22 || _enemy == 23 || _enemy == 24 || _enemy == 25 || _enemy == 26) then {_side = INDEPENDENT};
if (_enemy == 3 || _enemy == 6) then {_side = CIVILIAN};

// Use preset pools if player choose
//----------------------------------------------------------------------------------------------------------
if (lbCurSel 4731 != 0) then {
    _presetused = true;
switch (lbCurSel 4731) do {
    case index_zone_preset_1: { // VERY EASY---------------------------------------------
_AIb = [2,4,6] call bis_fnc_selectRandom;_AIbs = 0;_AIp = 6;_AIps = 1;_AIm = [0,1] call bis_fnc_selectRandom;_AIa = 0;_AIs = [3,4,5] call bis_fnc_selectRandom;_AIh = 0;
};
    case index_zone_preset_2: { // EASY--------------------------------------------------
_AIb = [4,6,8] call bis_fnc_selectRandom;_AIbs = 0;_AIp = 10;_AIps = 1;_AIm = [2,3] call bis_fnc_selectRandom;_AIa = [0,1] call bis_fnc_selectRandom;_AIs = [5,6,7] call bis_fnc_selectRandom;_AIh = [0,1] call bis_fnc_selectRandom;
};
    case index_zone_preset_3: { // MEDIUM -----------------------------------------------
_AIb = [6,8,10] call bis_fnc_selectRandom;_AIbs = 0;_AIp = 10;_AIps = 2;_AIm = [4,5] call bis_fnc_selectRandom;_AIa = [1,2] call bis_fnc_selectRandom;_AIs = [7,8,9] call bis_fnc_selectRandom;_AIh = [1,2] call bis_fnc_selectRandom;
};
    case index_zone_preset_4: { // HARD -------------------------------------------------
_AIb = [10,12,14] call bis_fnc_selectRandom;_AIbs = 0;_AIp = 14;_AIps = 2;_AIm = [6,7] call bis_fnc_selectRandom;_AIa = [2,3] call bis_fnc_selectRandom;_AIs = [9,10] call bis_fnc_selectRandom;_AIh = [2,3] call bis_fnc_selectRandom;
};
    case index_zone_preset_5: { // VERY HARD --------------------------------------------
_AIb = [16,18,20] call bis_fnc_selectRandom;_AIbs = 0;_AIp = 16;_AIps = 2;_AIm = [8,9] call bis_fnc_selectRandom;_AIa = [3,4] call bis_fnc_selectRandom;_AIs = 10;_AIh = [3,4] call bis_fnc_selectRandom;
};
    case index_zone_preset_6: { // INSANE -----------------------------------------------
_AIb = 20;_AIbs = 0;_AIp = 20;_AIps = 2;_AIm = [9,10] call bis_fnc_selectRandom;_AIa = [5,6] call bis_fnc_selectRandom;_AIs = 10;_AIh = [5,6]call bis_fnc_selectRandom;
};
};

// Create the predefined zone
closeDialog 0;
[[[_markerName],[_AIp,_AIps],[_AIm,2],[_AIa],[_AIh,1],[_enemy,0,_side],[_delay,1,9999,FALSE,true]], "Bastion_Spawn",false,false] call BIS_fnc_MP;
deleteMarker "TempTask";

// Multiple waves selected ?
if (_wavesN != 0) then {
    switch (_wavesN) do
    {
    case 1: {_waves = 1};
    case 2: {_waves = 2};
    case 3: {_waves = 3};
    case 4: {_waves = 4};
    case 5: {_waves = 5};
    case 6: {_waves = 6};
    case 7: {_waves = 7};
    case 8: {_waves = 8};
    case 9: {_waves = 9};
    };
    while {_waves > 0} do {
    sleep 1;
    waitUntil {getMarkerColor _markerName != "ColorOrange" };
    [[[_markerName],[_AIp,_AIps],[_AIm,2],[_AIa],[_AIh,1],[_enemy,0,_side],[_delay,1,9999,FALSE,true]], "Bastion_Spawn",false,false] call BIS_fnc_MP;
    sleep 5;
    _waves = _waves - 1;
};
};
};

if !(_presetused) then {
// Manual Zone Creation
//----------------------------------------------------------------------------------------------------------

// Create the player customized zone
closeDialog 0;
[[[_markerName],[_AIp,_AIps],[_AIm,2],[_AIa],[_AIh,1],[_enemy,0,_side],[_delay,1,9999,FALSE,true]], "Bastion_Spawn",false,false] call BIS_fnc_MP;
deleteMarker "TempTask";

// Multiple waves selected ?
if (_wavesN != 0) then {
    switch (_wavesN) do
    {
    case 1: {_waves = 1};
    case 2: {_waves = 2};
    case 3: {_waves = 3};
    case 4: {_waves = 4};
    case 5: {_waves = 5};
    case 6: {_waves = 6};
    case 7: {_waves = 7};
    case 8: {_waves = 8};
    case 9: {_waves = 9};
    };
    while {_waves > 0} do {
    sleep 1;
    waitUntil {getMarkerColor _markerName != "ColorOrange" };
    [[[_markerName],[_AIp,_AIps],[_AIm,2],[_AIa],[_AIh,1],[_enemy,0,_side],[_delay,1,9999,FALSE,true]], "Bastion_Spawn",false,false] call BIS_fnc_MP;
    sleep 5;
    _waves = _waves - 1;
};
};
};