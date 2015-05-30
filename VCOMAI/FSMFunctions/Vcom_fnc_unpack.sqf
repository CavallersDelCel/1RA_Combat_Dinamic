private["_group","_position","_targetPos","_leader","_units","_gunner","_assistant","_type","_weapon","_wait","_tripodBP","_dirTo"];
_group = 		_this select 0;
_position =		_this select 1;
_Unit = _this select 2;
_weapon = 		objNull;
_leader = 		leader _group;
_units = 		(units _group) - [leader _group];
//_gunner = 		_units select 0;
//_assistant = 	_units select 1;
_Unit setVariable ["HASDEPLOYED",1,false];
_group = group _Unit;
_UnitGroups = units _group;
_gunner = 0;

{
  _CurrentBackPack = backpack _x;
  
  if (!(isNil "_CurrentBackPack")) then 
  {
    _class = [_CurrentBackPack] call VCOM_fnc_classVehicle;
    if (!(isNil "_class")) then 
    {
      _parents = [_class,true] call BIS_fnc_returnParents;
      if (!(isNil "_parents")) then 
      {
        if (("StaticWeapon" in _parents) || ("Weapon_Bag_Base" in _parents)) then {_x setVariable ["USEDSTATICWEAP",_CurrentBackPack,false];_gunner = _x;};
      };
    };
  };
} forEach _UnitGroups;

if (isNil "_gunner") exitWith {};
_rnd = random 1;
_dist = (_rnd + 2);
_dir = random 360;
_positions = [(_position select 0) + (sin _dir) * _dist, (_position select 1) + (cos _dir) * _dist, 0];
{
	_x doMove _positions;
} forEach _UnitGroups;
_myNearestEnemy = _Unit findNearestEnemy (getPosASL _Unit);
//_myNearestEnemy = player;


if (isNull _myNearestEnemy) then 
{
  _myNearestEnemy = [_Unit] call VCOM_fnc_ClosestEnemy;
};
sleep 0.25;
//_assistant action ["PutBag",_assistant];

if (lineintersects [eyepos _gunner,eyepos _myNearestEnemy,_gunner,_myNearestEnemy]) exitWith {};
if (_gunner == _Unit) then 
{
  _dirTo = [position _gunner,position _myNearestEnemy] call BIS_fnc_dirTo;
  _gunner setDir _dirTo;
  sleep 0.5;
  _gunner action ["Assemble",unitbackpack _gunner];
  sleep 2;
  _weapon = nearestObject [_position,"StaticWeapon"];
  _gunner setVariable ["supportWeaponSetup",_weapon,false];
  //Hint format ["_weapon %1",_weapon];
  sleep 1;
  _gunner assignAsGunner _weapon;
 [_gunner] orderGetIn true;
 _gunner moveInGunner _weapon;
};

_dirTo = [position _weapon,position _myNearestEnemy] call BIS_fnc_dirTo;
_weapon setDir _dirTo;
sleep 2;
_gunner assignAsGunner _weapon;
[_gunner] orderGetIn true;
_gunner moveInGunner _weapon;
_dirTo = [position _weapon,position _myNearestEnemy] call BIS_fnc_dirTo;
_weapon setDir _dirTo;
_gunner setDir _dirTo;
sleep 1;
[_Unit,_group,_gunner] spawn {
_Unit = _this select 0;
_group = _this select 1;
_gunner = _this select 2;
sleep (180 + (random 180));
//_Deployed = _Unit getvariable "HASDEPLOYED";
if (!(alive _gunner)) exitWith {};
[_group,_gunner,_Unit] spawn Vcom_fnc_pack;
};