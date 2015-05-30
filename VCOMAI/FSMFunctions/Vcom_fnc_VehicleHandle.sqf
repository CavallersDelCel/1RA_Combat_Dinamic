//Created on ???
// Modified on : 8/19/14

_Unit = _this select 0;
_UnitSide = side _Unit;
_SideCheck = [];
if (_UnitSide isEqualTo WEST) then {_SideCheck = VCOM_West};
if (_UnitSide isEqualTo EAST) then {_SideCheck = VCOM_East};
if (_UnitSide isEqualTo RESISTANCE) then {_SideCheck = VCOM_Civilian};
if (_UnitSide isEqualTo CIVILIAN) then {_SideCheck = VCOM_Resistance};

_myNearestEnemy = _this select 1;
_UnitGroup = group _Unit;
_GroupUnits = units _UnitGroup;
_Vehicle = (vehicle _Unit);
_CargoList = assignedCargo _Vehicle;
_CargoGroup = [];
//Hint format ["_CargoList %1",_CargoList];
if ((count _CargoList) <= 0) exitWith {};
_CargoListSelection = _CargoList call BIS_fnc_selectRandom;
_CargoGroup = group _CargoListSelection;
{

if ((_myNearestEnemy distance _x) < 400) then {
if ((getPos _Vehicle select 2) < 3) then 
{
  unassignVehicle _x;
  commandGetOut _x;
  doGetOut _x;
  _x action ["eject", _Vehicle];
  _ClosestUnit = [_SideCheck,_Unit] call BIS_fnc_nearestPosition;
  _Unit doMove (getPosATL _ClosestUnit);
}
else
{
//(driver (vehicle _Unit)) setBehaviour "Careless"; // He stays relaxed, even if enemies are around
//(driver (vehicle _Unit)) setCombatMode "Blue"; // He won't attack anything, anymore 
//(driver (vehicle _Unit)) setCaptive true;
(driver (vehicle _Unit)) land "LAND";
_Vehicle land "LAND";
waitUntil {(getPos _Vehicle select 2) < 15;};
_Vehicle engineOn false;
waitUntil {(getPos _Vehicle select 2) < 1.5;};
_myNearestEnemy = [_Unit] call VCOM_fnc_ClosestEnemy;
  if (isNil "_myNearestEnemy") exitWith {};
{
unassignVehicle _x;
commandGetOut _x;
doGetOut _x;
_x orderGetIn [false];
_x action ["eject", _Vehicle];

_waypoint0 = _CargoGroup addwaypoint[(getPosASL _myNearestEnemy),0];
_waypoint0 setwaypointtype "MOVE";
_waypoint0 setWaypointSpeed "NORMAL";
_waypoint0 setWaypointBehaviour "COMBAT";
_CargoGroup setCurrentWaypoint [_CargoGroup,(_waypoint0 select 1)];

sleep 0.5;
} forEach (units _CargoGroup);
_ClosestUnit = [_SideCheck,_Unit] call BIS_fnc_nearestPosition;

//Delete Vehicles current waypoints
while {(count (waypoints _UnitGroup)) > 0} do
{
 deleteWaypoint ((waypoints _UnitGroup) select 0);
 sleep 0.25;
};
//Get vehicle to stop moving
_ResetWaypoint = _UnitGroup addwaypoint [getPosATL _Unit,0];

_Unit doMove (getPosATL _ClosestUnit);
_Vehicle doMove (getPosATL _ClosestUnit);
_Vehicle engineOn true;

};
};


} foreach _CargoList;
