_AIunit = [_this, 0, ""] call BIS_fnc_param;
_a = [_this, 1, ""] call BIS_fnc_param;
_y = [_this, 2, ""] call BIS_fnc_param;
_z = [_this, 3, ""] call BIS_fnc_param;

_AIunit setPos [_a + random 50, _y + random 50, _z + Altitude];

waitUntil {getPos _AIunit select 2 < 150 || !alive _AIunit};
if !(alive _AIunit) exitWith {};

_parachute = createvehicle ["Steerable_Parachute_F",getPos _AIunit,[],0,"none"];
_parachute setpos getPos _AIunit;
_parachute setdir direction _AIunit;
_AIunit action ["GetInDriver", _parachute];