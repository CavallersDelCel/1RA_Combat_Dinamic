//Created on ???
// Modified on : 9/7/14  - Added a check building distance stat.
_Group = _this select 0;
_UnitsGroup = units _Group;
_SpecificUnit = _UnitsGroup select 0;
{

_nBuilding = nearestBuilding _x;

_IsEnterable = [_nBuilding] call BIS_fnc_isBuildingEnterable;
if (!(_IsEnterable)) exitWith {};
_CheckDist = _SpecificUnit distance _nBuilding;
if (_CheckDist > 200) exitWith {};
_bposleft = [];
_pcnt = 0;
while {format ["%1", _nBuilding buildingPos (_pcnt)] != "[0,0,0]" } do {
_bposleft set [count _bposleft, (_pcnt)];
_pcnt = _pcnt + 1;
};
_LocationArray = [];
{
_LocationArray = _LocationArray + [(_nBuilding buildingPos _x)];
} forEach _bposleft;

if (isNil "_LocationArray") exitWith {};
if ((count _LocationArray) <= 0) exitWith {};
if ((count _LocationArray) < (count _UnitsGroup)) exitWith {};

_AttackPoint = _LocationArray select floor(random(count _LocationArray));
if (isNil "_AttackPoint") exitWith {};
_LocationArray = _LocationArray - [_AttackPoint];
//_Unit setPos _AttackPoint;
doStop _x;
_x doMove _AttackPoint;
_x commandMove _AttackPoint;

} foreach _UnitsGroup;