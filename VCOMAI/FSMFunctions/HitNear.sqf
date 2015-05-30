_unit = (_this select 0) select 0;

//Hint format ["_unit %1",_unit];
_bullet = (_this select 0) select 6;
_TimeShot = _unit getVariable "VCOM_FiredTime";
_SideUnit = side _unit;
if(_TimeShot == 0) then {

//If framerate is below 30 - exit this script.
_FrameRateCheck = diag_fps;
if (_FrameRateCheck <= 20) exitWith {};

if (VCOM_AIDEBUG == 1) then {
_arrow = "Sign_Sphere25cm_F" createVehicle (position _unit);
_arrow setPosASL (eyePos _unit);
_arrow setDir (getDir _unit);
MarkerArray = MarkerArray + [_arrow];
};

_unit setVariable ["VCOM_FiredTime",1,true];
[_unit] spawn {
_unit = _this select 0;
sleep 10;
_unit setVariable ["VCOM_FiredTime",0,true];
};

_pos = cursorTarget;
if (isNull _pos) then {
if (isPlayer _Unit) then {
//Remember, screenToWorld is using UI coordinates! 
_pos = screenToWorld [0.5,0.5];
}
else
{
_pos = assignedTarget _Unit;
if (isNull _pos) then {_pos = getPosATL _Unit};
};
}
else
{
_pos = getPosATL _pos;
};
//player sidechat format ["_pos: %1",_pos];

_Array2 = allUnits;
_Array2 = _Array2 - [_unit];
{
if ((side _x) == _SideUnit) then {_Array2 = _Array2 - [_x]};
} forEach _Array2;       
//player sidechat format ["_pos: %1",_pos];
//player sidechat format ["_Array2: %1",_Array2];   



//player sidechat format ["_Array2: %1",_Array2];
_Point = [];

_Point = [_Array2,_pos] call BIS_fnc_nearestPosition;
//player sidechat format ["_Point: %1",_Point];
if (isNil ("_Point")) exitWith {};
_ArrayCheck = typeName _Point;
if (_ArrayCheck == "ARRAY") exitWith {};
_UnitGroup = group _Point;
//player sidechat format ["_UnitGroup: %1",_UnitGroup];   


{
_CheckVariable1 = _x getVariable "VCOM_Suppressed";
//player sidechat format ["_CheckVariable1: %1",_CheckVariable1];
if (_CheckVariable1 == 0) then {
_CheckDistance = (_pos distance _x);
//player sidechat format ["_CheckDistance: %1",_CheckDistance];
if (_CheckDistance < 30) then {
_x setVariable ["VCOM_Suppressed",1,true];
};

if ((_CheckDistance >= 30) && (_CheckDistance <= 50)) then {
_x setVariable["VCOM_MOVINGTOCOVER",1,true];
};

};

} forEach units _UnitGroup;

//Hint format ["_CheckDistance %1 _Point %2",_CheckDistance,_Point];

//if ((_CheckDistance >= 31) && (_CheckDistance <= 500)) then {_Unit setVariable["MOVINGTOCOVER",0,true];};

};








