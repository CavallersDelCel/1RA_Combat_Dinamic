if (getPosATL vehicle player select 2 < 8 ) then {
	hint "Too close from the ground to drop";
} else {
_veh = vehicle player getVariable "CUP_attached" select 1;
_EHid = vehicle player getVariable "CUP_attached" select 2;
_liftrope = vehicle player getVariable "CUP_attached" select 3;

ropeDestroy _liftrope;
detach _veh;
if (local _veh) then
{
  _veh setVelocity velocity vehicle player;
} else
{
  _velocity = velocity vehicle player;
  [[_veh,_velocity],"CUP_setVelocity", _veh] spawn BIS_fnc_MP;
};

vehicle player removeMPEventHandler ["MPKilled", _EHid];

vehicle player setVariable ["CUP_attached", [0, objNull, nil], true];
};