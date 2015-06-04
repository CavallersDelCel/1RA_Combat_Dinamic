///////////////////////////////////////////////////////////
//                =ATM= Airdrop       	 				    //
//         		 =ATM=Pokertour        		       		    //
//				version : 6.0							        //
//				date : 12/02/2014						   //
//                   visit us : atmarma.fr                 //
/////////////////////////////////////////////////////////

private ["_position","_cut","_dialog","_s_alt","_s_alt_text","_sound","_sound2","_soundPath"];
	waitUntil { !isNull player };
	[] execVM "ATM_airdrop\functions.sqf";

	_position = GetPos player;
	_z = _position select 2;
	Altitude = 500;

	hintSilent localize "STR_AOW_HALOJumpHint";
	openMap true;

	createDialog "ATM_AD_ALTITUDE_SELECT";
	disableSerialization;
	_dialog = findDisplay 2900;
	_s_alt = _dialog displayCtrl 2901;
	_s_alt_text = _dialog displayCtrl 2902;
	_s_alt_text ctrlSetText format["%1", Altitude];
	_s_alt sliderSetRange [500,20000];
	_s_alt slidersetSpeed [100,100,100];
	_s_alt sliderSetPosition Altitude;


	ATM_Jump_mapclick = false;
	onMapSingleClick "ATM_Jump_clickpos = _pos; ATM_Jump_mapclick = true; onMapSingleClick ''; true;";
	waitUntil {ATM_Jump_mapclick or !(visiblemap)};
	if (!visibleMap) exitwith {
		breakOut "main";
	};
	_pos = ATM_Jump_clickpos;
	ATM_Jump_mapclick = if(true) then{
	call compile format ['
	mkr_halo = createmarker ["mkr_halo", ATM_Jump_Clickpos];
	"mkr_halo" setMarkerTypeLocal "hd_dot";
	"mkr_halo" setMarkerColorLocal "ColorGreen";
	"mkr_halo" setMarkerTextLocal "Jump";'];
	};

	_target = player;
	_loadout=[_target] call ATM_Getloadout;

	_posJump = getMarkerPos "mkr_halo";
	_a = _posJump select 0;
	_y = _posJump select 1;
    _z = _posJump select 2;
    _target setPos [_a,_y,_z+Altitude];
	openMap false;
	deleteMarker "mkr_halo";

	0=[_target] call ATM_Frontpack;

if (leader group player == player) then {
	{
	if (!isPlayer _x && _x distance baseFlagPole < 100) then {
		[_x,_a,_y,_z] execVM "ATM_airdrop\AIairdrop.sqf";};
	} forEach units (group player);
};

	removeBackpack _target;
	_target addBackpack "B_Parachute";
	removeHeadgear _target;
	_target addHeadgear "H_CrewHelmetHeli_B";
	hintSilent "";

while {(getPos _target select 2) > 2} do {
	if(isTouchingGround _target and player == vehicle player) then{
	}
	else{
	sleep 5;

	};
	if(!alive _target) then {
	_target setPos [getPos _target select 0, getPos _target select 1, 0];
	0=[_target,_loadout] call ATM_Setloadout;
	};
};

	hintSilent localize "STR_AOW_HALOJumpHint_1";
		deletevehicle (_target getvariable "frontpack"); _target setvariable ["frontpack",nil,true];
		deletevehicle (_target getvariable "lgtarray"); _target setvariable ["lgtarray",nil,true];
sleep 2;

	0=[_target,_loadout] call ATM_Setloadout;

hintsilent "";