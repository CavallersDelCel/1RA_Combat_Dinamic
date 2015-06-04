private ["_caller", "_pos", "_units", "_helper", "_dist"];

_caller = _this select 0;

_pos = position _caller;

_units = units group _caller;

_units = _units - [_caller];

_helper = objNull;

_dist = 200;

{
	if (!isPlayer _x && {damage _x < 0.99} && {_x distance _caller < _dist}) then {_helper = _x;_dist = _x distance _caller;};
} foreach _units;

[_caller,_helper] spawn btc_qr_fnc_help;

_helper