
/*
  SHK_patrol

  Based on BIN_taskPatrol by Binesi

  Version 0.22
  Author: Shuko (shuko@quakenet, miika@miikajarvinen.fi)
  http://forums.bistudio.com/showthread.php?163496-SHK_Patrol
	Modified for EOS by Bangabob

Requires SHK_POS.sqf
  Required Parameters:
    0 Object or Group     The patrolling unit
	1 Marker Name
*/
if !isserver exitwith {};

// Handle parameters
private ["_grp","_dst","_marker"];
_dst = 250;
switch (typename _this) do {
  case (typename grpNull): { _grp = _this };
  case (typename objNull): { _grp = group _this };
  case (typename []): {
    _grp = _this select 0;
    if (typename _grp == typename objNull) then {_grp = group _grp};
	if (count _this > 1) then {_marker = _this select 1};
  };
};

_grp setBehaviour "SAFE";
_grp setSpeedMode "LIMITED";
_grp setCombatMode "YELLOW";
_grp setFormation (["STAG COLUMN", "WEDGE", "ECH LEFT", "ECH RIGHT", "VEE", "DIAMOND"] call BIS_fnc_selectRandom);

private ["_cnt","_wps","_slack"];
_cnt = 4 + (floor random 3) + (floor (_dst / 100)); // number of waypoints
_wps = [];
_slack = _dst / 5.5;
if (_slack < 20) then {_slack = 20};

// Find positions for waypoints
private ["_a","_p"];
while {count _wps < _cnt} do {
if (surfaceiswater (getpos(leader _grp)) ) then {
	_p = [_marker,2] call SHK_pos;}else{_p = [_marker,0] call SHK_pos;
	};
    _wps set [count _wps, _p];
};

// Create waypoints
private ["_cur","_wp"];
for "_i" from 1 to (_cnt - 1) do {
    _cur = (_wps select _i);

    _wp = _grp addWaypoint [_cur, 0];
    _wp setWaypointType "MOVE";
    _wp setWaypointCompletionRadius (5 + _slack);
    [_grp,_i] setWaypointTimeout [0,2,16];

};

// Cycle in case we reach the end
private "_wp1";
_wp1 = _grp addWaypoint [(_wps select 1), 0];
_wp1 setWaypointType "CYCLE";
_wp1 setWaypointCompletionRadius 50;