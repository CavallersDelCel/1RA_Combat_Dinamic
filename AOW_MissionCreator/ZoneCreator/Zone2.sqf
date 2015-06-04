hintSilent localize "str_AOW_Game_Zone";
// Prepare arrays
_markerx = 0;
_markery = 0;
_AIb = lbCurSel 4701;
_AIbs = lbCurSel 4702;
_AIp = lbCurSel 4703;
_AIps = lbCurSel 4704;
_AIm = lbCurSel 4705;
_AIa = lbCurSel 4706;
_AIs = lbCurSel 4707;
_AIh = lbCurSel 4708;
_enemy = lbCurSel 4709;
_visibility = 0;

if (AOW_Checkbox) then {// Invisible marker
    _visibility = 1;
};

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
_usedvalues = [lbCurSel 4711,lbCurSel 4710,_AIb,_AIbs,_AIp,_AIps,_AIm,_AIa,_AIs,_AIh,_enemy];
profileNamespace setVariable ["AOW_DefaultZoneValue",_usedvalues];

// Create the marker where the zone will be located
_markerName = [] call AOW_fnc_getFreeNames;
_tempPos = getMarkerPos "TempZone";
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


// With preset zone creation -------------------------------------------------------------------------------------------------------------
if (lbCurSel 4731 != 0) exitWith {
switch (lbCurSel 4731) do {
    case 1: { // VERY EASY---------------------------------------------
_AIb = [2,4,6] call bis_fnc_selectRandom;_AIbs = 0;_AIp = 6;_AIps = 1;_AIm = [0,1] call bis_fnc_selectRandom;_AIa = 0;_AIs = [3,4,5] call bis_fnc_selectRandom;_AIh = 0;
};
    case 2: { // EASY--------------------------------------------------
_AIb = [4,6,8] call bis_fnc_selectRandom;_AIbs = 0;_AIp = 10;_AIps = 1;_AIm = [2,3] call bis_fnc_selectRandom;_AIa = [0,1] call bis_fnc_selectRandom;_AIs = [5,6,7] call bis_fnc_selectRandom;_AIh = [0,1] call bis_fnc_selectRandom;
};
    case 3: { // MEDIUM -----------------------------------------------
_AIb = [6,8,10] call bis_fnc_selectRandom;_AIbs = 0;_AIp = 10;_AIps = 2;_AIm = [4,5] call bis_fnc_selectRandom;_AIa = [1,2] call bis_fnc_selectRandom;_AIs = [7,8,9] call bis_fnc_selectRandom;_AIh = [1,2] call bis_fnc_selectRandom;
};
    case 4: { // HARD -------------------------------------------------
_AIb = [10,12,14] call bis_fnc_selectRandom;_AIbs = 0;_AIp = 14;_AIps = 2;_AIm = [6,7] call bis_fnc_selectRandom;_AIa = [2,3] call bis_fnc_selectRandom;_AIs = [9,10] call bis_fnc_selectRandom;_AIh = [2,3] call bis_fnc_selectRandom;
};
    case 5: { // VERY HARD --------------------------------------------
_AIb = [16,18,20] call bis_fnc_selectRandom;_AIbs = 0;_AIp = 16;_AIps = 2;_AIm = [8,9] call bis_fnc_selectRandom;_AIa = [3,4] call bis_fnc_selectRandom;_AIs = 10;_AIh = [3,4] call bis_fnc_selectRandom;
};
    case 6: { // INSANE -----------------------------------------------
_AIb = 20;_AIbs = 0;_AIp = 20;_AIps = 2;_AIm = [9,10] call bis_fnc_selectRandom;_AIa = [5,6] call bis_fnc_selectRandom;_AIs = 10;_AIh = [5,6]call bis_fnc_selectRandom;
};
};

// Create the predefined zone
closeDialog 0;
[[[_markerName],[_AIb,_AIbs],[_AIp,_AIps],[_AIm,2],[_AIa],[_AIs],[_AIh,0],[_enemy,_visibility,0,_side,FALSE,FALSE]], "EOS_Spawn",false,false] call BIS_fnc_MP;
deleteMarker "TempZone";
AOW_Checkbox = false;
};

// Manual zone creation -------------------------------------------------------------------------------------------------------------

// Create the player customized zone
closeDialog 0;
[[[_markerName],[_AIb,_AIbs],[_AIp,_AIps],[_AIm,2],[_AIa],[_AIs],[_AIh,0],[_enemy,_visibility,0,_side,FALSE,FALSE]], "EOS_Spawn",false,false] call BIS_fnc_MP;
deleteMarker "TempZone";
AOW_Checkbox = false;