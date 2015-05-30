private ["_AlreadyDown","_Unit"];

_Unit = _this select 0;
if (!((vehicle _Unit) == _Unit)) exitWith {};
if (isPlayer _Unit) exitWith {};

if (alive _Unit) then {
_AlreadyDown = _x getVariable "VCOM_DOWNED";
if (isNil "_AlreadyDown") then {_AlreadyDown = 0};
if (_AlreadyDown == 0) then {

_Unit setFatigue 1;
_Unit setVariable ["VCOM_Suppressed",1,true];

[_Unit] call VCOM_fnc_EvasiveAI;

[_Unit] spawn {
_Unit = _this select 0;
sleep 15;
_Unit setVariable ["VCOM_DOWNED",1,false];
};

};
};
