//Created on ???
// Modified on : 8/19/14

_Unit = _this select 0;
_UnitSide = (side _Unit);
_Array1 = [];
{
if ((side _x) != (_UnitSide)) then {_Array1 = _Array1 + [_x]; };
} forEach allUnits;

_ReturnedEnemy = [_Array1,_Unit] call BIS_fnc_nearestPosition;

//_Unit setVariable ["VCOM_CLOSESTENEMY",_ReturnedEnemy,false];
_ReturnedEnemy