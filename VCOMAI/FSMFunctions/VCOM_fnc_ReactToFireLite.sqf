//Created on 8/15/14
// Modified on : 8/29/14 - 12/21/14 - Fixed bugs and made AI consider better cover.

private ["_myNearestEnemy","_cover","_class","_return","_parents","_Unit","_item","_box","_vDir","_IPos","_coverPosition","_coverPosition2","_Check","_Check2","_Unit","_arrow","_Converted"];

//If framerate is below 30 - exit this script.
_FrameRateCheck = diag_fps;
if (_FrameRateCheck <= 20) exitWith {};
_Unit = _this select 0;
if (isPlayer _Unit) exitWith {};
_MovedRecently = _Unit getVariable "VCOM_CoverLite";
if (_MovedRecently isEqualto 1) exitWith {};
_Unit setVariable ["VCOM_CoverLite",1,false];
null = _Unit spawn
{
	sleep 10;
	_this setVariable ["VCOM_CoverLite",0,false];
};

//player sidechat format ["_Unit REACT: %1",_Unit];
_Unit setUnitPos "MIDDLE";
_myNearestEnemy = _Unit findNearestEnemy (getPosASL _Unit);
//_myNearestEnemy = player;


if (isNull _myNearestEnemy) then 
{
  _myNearestEnemy = [_Unit] call VCOM_fnc_ClosestEnemy;
};
if (isNil "_myNearestEnemy") exitWith
{
};

//_cover = nearestobjects [position _Unit,["House","LandVehicle","Bag_Base","Object","ALL"],25];
//_cover = nearestobjects [position _Unit,["All"],15];
_cover = nearestobjects [position _Unit,[],15];

if ((count _cover) < 1) exitWith {};

{
_class = typeof _x;
if (!(isNil ("_class"))) then {
_return = (configFile >> "cfgVehicles" >> _class);
if (!(isNil ("_return"))) then {
_parents = [_return,true] call BIS_fnc_returnParents;
if ("Man" in _parents) then {_cover = _cover - [_x];};
if ("Logic" in _parents) then {_cover = _cover - [_x];};
if ("Helper_Base_F" in _parents) then {_cover = _cover - [_x];};
};
};

_BoundingArray = boundingBoxReal _x;
_p1 = _BoundingArray select 0;
_p2 = _BoundingArray select 1;
_maxWidth = abs ((_p2 select 0) - (_p1 select 0));
_maxLength = abs ((_p2 select 1) - (_p1 select 1));

if ((_maxWidth < 2) && ((_maxLength) < 2)) then {_cover = _cover - [_x];};
if (isOnRoad _x) then {_cover = _cover - [_x];};

} foreach _cover;

if ((count _cover) < 1) exitWith 
{
	_GroupLeader = leader (group _unit);
	_GetLeaderPoint = _GroupLeader getVariable "VCOM_FlankHalfPoint";
	if (!(isNil "_GetLeaderPoint")) then 
	{
		_Unit doMove _GetLeaderPoint;
	};

};

//player sidechat format ["_cover REACT: %1",(count _cover)];
	for "_i" from 0 to (count _cover - 1) do 
		{
		scopeName "countloop";
		_item = _cover select _i;
		
		//_height = abs(((_box select 1) select 2) - ((_box select 0) select 2));
		//_width = abs(((_box select 1) select 0) - ((_box select 0) select 0));

		_IPos = (getPosATL _item);
		_vDir = (vectorDir _myNearestEnemy);
					
		_coverPosition = [((_IPos select 0) + (2.0 * (_vDir select 0))), ((_IPos select 1) + (2.0 * (_vDir select 1))), (_IPos select 2)];
		_coverPosition2 = [((_IPos select 0) + (2.0 * (_vDir select 0))), ((_IPos select 1) + (2.0 * (_vDir select 1))), (_IPos select 2) + 1];
		//player setpos _coverPosition;
		//player sidechat format ["_coverPosition %1",_coverPosition];

	
		if (!(surfaceIsWater _coverPosition)) then {
			//player sidechat "Form 1a";
		_Check = lineintersects [_coverPosition,ASLToATL (eyepos _myNearestEnemy)];
		_Check2 = terrainIntersect [_coverPosition2,ASLToATL (eyepos _myNearestEnemy)];
		//player sidechat format ["%1 && %2",_Check,_Check2];
		if (_Check || _Check2) then 
			{
			//_Unit doWatch objNull;
			//_Unit disableAI "TARGET";
			//_Unit disableAI "AUTOTARGET";
			[_Unit,_coverPosition,_myNearestEnemy] spawn {
			_Unit = _this select 0;
			_coverPosition = _this select 1;
			_myNearestEnemy = _this select 2;
			//player sidechat format ["_Unit REACTFULL: %1",_Unit];
			_Unit doMove _coverPosition;		
			if (VCOM_AIDEBUG == 1) then {
			_arrow = "PointerLarge_ACR" createVehicle _coverPosition;
			//_arrow = "Sign_Arrow_Direction_F " createVehicle (getposATL player); _arrow setpos (getpos player);
			_arrow setPosATL (_coverPosition);
			MarkerArray = MarkerArray + [_arrow];
			};
			
			sleep (random 5 + (5));
			//_Unit doWatch _myNearestEnemy;
			(group _Unit) setBehaviour "COMBAT";
			_Unit setUnitPos "AUTO";
			//_Unit enableAI "TARGET";
			//_Unit enableAI "AUTOTARGET";
			};
			breakOut "countloop";
			};
			};
		};
