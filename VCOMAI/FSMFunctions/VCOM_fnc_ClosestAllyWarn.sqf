//Created on ???
// Modified on : 9/7/14 - Added radio check.   9/10/14 - Added PRIVATE commandArtilleryFire

private ["_Unit","_Killer","_UnitSide","_NoFlanking","_GrabVariable","_CheckStatus","_Array1","_NoFlanking2","_CheckStatus2","_GrabVariable2","_CombatStance","_group","_index","_WaypointIs","_waypoint0"];

_Unit = _this select 0;
_Killer = _this select 1;

if (isPlayer _Unit) exitWith {};

_UnitSide = (_Unit getVariable "VCOMSIDE");
scopeName "Scope1A";


if (_Unit in ArtilleryArray) then {ArtilleryArray = ArtilleryArray - [_Unit];};

_NoFlanking = _Unit getVariable "VCOM_NOPATHING";
if (isNil "_NoFlanking") exitWith {};
if (_NoFlanking == 1) then {breakOut "Scope1A";};
_GrabVariable = _Unit getVariable "VCOM_GARRISONED";
if (_GrabVariable == 1) then {breakOut "Scope1A";};

//Check to see if unit has radio.
_CheckStatus = assignedItems _Unit;
if (!("ItemRadio" in _CheckStatus)) exitWith {};


_Array1 = [];
{
//if ((side _x) == _UnitSide) then {_Array1 = _Array1 + [_x];};
if ((side _x) == _UnitSide) then {_Array1 pushback _x;};
} forEach allUnits;
//player sidechat format ["_Array1 AllyWarn: %1",_Array1];

{
	_NoFlanking2 = _x getVariable "VCOM_NOPATHING";
	if (isNil "_NoFlanking2") then {_NoFlanking2 = 0;};
	if (_NoFlanking2 == 0) then {
		scopeName "Scope1B";
		_CheckStatus2 = assignedItems _x;
		if ("ItemRadio" in _CheckStatus2) then 
			{
				
				_GrabVariable2 = _x getVariable "VCOM_GARRISONED";
				
				
				if (_GrabVariable2 == 0) then 
				{
					
					_CombatStance = behaviour _x;
					
					
					_group	= group _x;
					if ((count (waypoints _group)) < 2) then 
					{
						
						
						_index = currentWaypoint _group;
						_WaypointIs = waypointType [_group,_index];
						if (_WaypointIs != "HOLD") then {
						if (_WaypointIs != "GUARD") then {
						if (_WaypointIs != "UNLOAD") then {
						if (_WaypointIs != "TR UNLOAD") then {
						if (_WaypointIs != "SENTRY") then {
						if (_WaypointIs != "LOAD") then {
						if ((_x distance _Unit) <= (_x getVariable "VCOM_Unit_AIWarnDistance") ) then {
						
						_waypoint0 = (group _x) addwaypoint[(getPosASL _Killer),0];
						_waypoint0 setwaypointtype "MOVE";
						_waypoint0 setWaypointSpeed "NORMAL";
						
						(group _x) setCurrentWaypoint [(group _x),(_waypoint0 select 1)];
						
						if (_x != (vehicle _x)) then {
						(group _x) setBehaviour "COMBAT";
						};
						
						};
						};
						};
						};
						};
						};
						};
					};
				};
			};
		};
} forEach _Array1;