_Unit = _this select 0;
if (isPlayer _Unit) exitWith {};
_myNearestEnemy = _Unit findNearestEnemy (Position _Unit);

_CheckIfThrow = _Unit getVariable "VCOM_GRENADETHROWN";

if (_CheckIfThrow == 1) then 
{
_Unit setVariable["VCOM_GRENADETHROWN",0,false];


[_Unit] spawn {_Unit = _this select 0;sleep 25;_Unit setVariable["VCOM_GRENADETHROWN",1,false];_Unit setVariable["VCOM_Unit_USESMOKE",1,false];};

_CheckDistance = (_Unit distance _myNearestEnemy);

if (!(lineintersects [eyepos _Unit,eyepos _myNearestEnemy,_Unit,_myNearestEnemy])) then {



if (_CheckDistance < 60) then {

if (_CheckDistance > 10) then {

[_Unit,_CheckDistance,_myNearestEnemy] spawn {

_Unit = _this select 0;
_CheckDistance = _this select 1;
_myNearestEnemy = _this select 2;

_DirectionSet = [_Unit,_myNearestEnemy] call BIS_fnc_dirTo;
_Unit setDir _Directionset;


_Unit setVariable["VCOM_Unit_USESMOKE",0,false];
_Unit forceWeaponFire ["HandGrenadeMuzzle","HandGrenadeMuzzle"];

};
};
};
};


if (_CheckDistance < 1000) then {

[_Unit] spawn {

_Unit = _this select 0;

_myNearestEnemy = _Unit findNearestEnemy (Position _Unit);


_DirectionSet = [_Unit, _myNearestEnemy] call BIS_fnc_dirTo;

_Unit setDir _Directionset;

if ((_Unit getVariable "VCOM_Unit_USESMOKE") == 1) then 
{
	_Unit setVariable["VCOM_Unit_USESMOKE",0,false];
	_Unit forceWeaponFire ["SmokeShellMuzzle","SmokeShellMuzzle"];
};


};
};

};
