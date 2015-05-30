//AI Waypoint Mock up using select best.
_Unit = _this select 0;
if (isPlayer _Unit) exitWith {};
_NoFlanking = _Unit getVariable "VCOM_NOPATHING";
if (isNil "_NoFlanking") exitWith {};
if (_NoFlanking == 1) exitWith {};
//_myNearestEnemy = (_Unit getVariable "CLOSESTENEMY");
_myNearestEnemy = _Unit findNearestEnemy (Position _Unit);

if (isNull _myNearestEnemy) then
{
  _myNearestEnemy = [_Unit] call VCOM_fnc_ClosestEnemy;
};

  if (isNil "_myNearestEnemy") exitWith {};
  
_UnitGroupThreat = [_Unit] call VCOM_GroupThreat;
_EnemyGroupThreat = [_myNearestEnemy] call VCOM_GroupThreat;
_DivideCalculation = _EnemyGroupThreat/_UnitGroupThreat;

_Groupleader = leader _Unit;
_UnitSide = side _Unit;
_WaypointsSet = _Groupleader getVariable "VCOM_FLANKING";
if (isNil "_WaypointsSet") exitWith {};
if (_WaypointsSet == 1) exitWith {};
_Groupleader setVariable ["VCOM_FLANKING",1,false];
_GroupUnit = group _Unit;
_GrabVariable = _Unit getVariable "VCOM_GARRISONED";
if (_GrabVariable == 1) exitWith {};

//{
//deleteMarker _x;
//}forEach MarkerArrray22;
//Flank behavior
_myEnemyPos = (getposATL _myNearestEnemy);
sleep 0.25;
if (!((_myEnemyPos distance [0,0,0]) > 0)) exitWith {_Groupleader setVariable["VCOM_FLANKING",0,false];[_Unit] spawn AIPath;};
/*
_radius = 600;
_explist = [];
_exp1 = "(1 + forest) * (1 + trees) * (1 + hills) * (1 + houses) * (1 - sea) * (1 - deadBody)";
_exp2 = "(1 + forest + trees + hills) * (1 - sea)";
_exp3 = "(1 + hills) * (1 - sea)";
_explist = _explist + [_exp1] + [_exp2] + [_exp3];
_exprandom = _explist call BIS_fnc_selectRandom;
//if (!((_exprandom distance [0,0,0]) > 0)) exitWith {};
_prec = 25;
_bestplace = selectBestPlaces [_myEnemyPos,_radius,_exprandom,_prec,2];
_Selectrandom = _bestplace call BIS_fnc_selectRandom;
_SelectCords = (_Selectrandom select 0);
*/

while {(count (waypoints _GroupUnit)) > 0} do
{
 deleteWaypoint ((waypoints _GroupUnit) select 0);
 sleep 0.25;
};
_ResetWaypoint = _GroupUnit addwaypoint [getPosATL _Unit,0];

_OverWatch = [_myEnemyPos] call BIS_fnc_findOverwatch;

_rnd = random 100;
_dist = (_rnd + 100);
_dir = random 360;
_positions = [(_myEnemyPos select 0) + (sin _dir) * _dist, (_myEnemyPos select 1) + (cos _dir) * _dist, 0];
_group	= group _Unit;
_index = currentWaypoint _group;

if (_DivideCalculation >= 3) exitWith 
{
  _GetNerves = _Unit getVariable "VCOM_NERVES";
  _RandomNumber = (random 100) + _GetNerves;
  if (_RandomNumber >= 75) exitWith
  {
      {
      _Timer = ((random 60) + 30);
      _Counter = 0;
      While {_Counter < _Timer} do 
      {
        doStop _x;
        _x setUnitPos "DOWN";
        sleep 1;
        _Counter = _Counter + 1;
      };
        _x setUnitPos "AUTO";
      } foreach units _GroupUnit;
 


  
  
  };

};

/*
while {(count (waypoints _group)) > 1} do {
	deleteWaypoint ((waypoints _group) select 1);
	sleep 0.01;
};

[grp, 2] setWaypointVisible false;
*/
_waypoint0 = _group addwaypoint[_OverWatch,0];
_waypoint0 setwaypointtype "MOVE";
_waypoint0 setWaypointSpeed "NORMAL";
_waypoint0 setWaypointBehaviour "COMBAT";
_group setCurrentWaypoint [_group,(_waypoint0 select 1)];
_waypoint1 = _group addwaypoint[_positions,0];
_waypoint1 setwaypointtype "MOVE";
_waypoint1 setWaypointSpeed "NORMAL";
_waypoint1 setWaypointBehaviour "COMBAT";
//[_group,_myNearestEnemy,_Groupleader] spawn VCOM_fnc_GuessDirection;
//_group setCurrentWaypoint [_group,0];

_index2 = currentWaypoint _group;
_wPos = waypointPosition [_group, _index2];

_GroupleaderPosition = getPosATL _GroupLeader;

_x1 = _wPos select 0;
_y1 = _wPos select 1;
_x2 = _GroupleaderPosition select 0;
_y2 = _GroupleaderPosition select 1;
_Midpoint = [((_x1 + _x2)/2),((_y1 + _y2)/2),1];

_Groupleader setVariable ["VCOM_FlankHalfPoint",_Midpoint,false];
{
  _x commandMove _Midpoint;
	_x moveTo _Midpoint;
}foreach units _GroupUnit;

/*
_group_array = units _group;
_GroupCount = count _group_array;
_CoverCount = (round(_GroupCount * .33));
{
[_x] spawn {
_x = _this select 0;
if ((_x getVariable "SQUADBEHAVIOR") == 0) then {
_x setVariable ["SQUADBEHAVIOR",1,false];
sleep 2;
while {alive _x && ((behaviour _x) == "COMBAT")} do {
_x disableAI "AUTOTARGET";
_x disableAI "TARGET";
sleep (random 30);
_x enableAI "AUTOTARGET";
_x enableAI "TARGET";
};
_x setVariable ["SQUADBEHAVIOR",0,false];
};
};
} forEach _group_array;
*/
//Individual Commands. To get the AI to move around more. While some cover.
/*
_group_array = units _group;
_GroupCount = count _group_array;
_CoverCount = (round(_GroupCount * .33)); //10 -> 3

for "_i" from 1 to _CoverCount do {
[_group_array] spawn {
_group_array = _this select 0;
_RandomUnit = _group_array call BIS_fnc_selectRandom;
_group_array = _group_array - [_RandomUnit];
_UnitWeapon = currentWeapon _RandomUnit;
_RandomUnit suppressFor 5;
};
};

{
_x disableAI "TARGET";
_x disableAI "AUTOTARGET";
_x doMove _SelectCords;
_waypoint1 setWaypointSpeed "FULL";
[_x] spawn {
_MovingUnit = _this select 0;
sleep 10;
_MovingUnit enableAI "TARGET";
_MovingUnit enableAI "AUTOTARGET";
};

MarkerNames = random 10000;
_marker1Names = format["marker_%1",MarkerNames];
_marker1 = createMarker [_marker1Names,(getPos _x)];
_marker1 setmarkershape "ELLIPSE";
if ((side _x) == EAST) then {_marker1 setmarkercolor "ColorGreen";};
if ((side _x) == WEST) then {_marker1 setmarkercolor "ColorGreen";};
_marker1 setmarkersize [1,1];

} forEach _group_array;

MarkerNames = random 10000;
_marker1Names = format["marker_%1",MarkerNames];
_marker1 = createMarker [_marker1Names,_SelectCords];
_marker1 setmarkershape "ELLIPSE";
if ((side _Groupleader) == EAST) then {_marker1 setmarkercolor "ColorBrown";};
if ((side _Groupleader) == WEST) then {_marker1 setmarkercolor "ColorOrange";};
_marker1 setmarkersize [25,25];
*/