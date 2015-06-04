_unit = _this select 0;
_part = _this select 1;
_dam = _this select 2;
_injurer = _this select 3;
_ammo = _this select 4;

if (_unit getVariable ["btc_qr_unc",false]) then
{
	_dam = 0.99;
}
else
{// Custom event handler much more reliable
	_dead = false;
	if ((_part == "head" || _part == "body") && _dam >= 1) then {_dead = true;
	_dam = 0;
	_unit spawn btc_qr_fnc_unc;
};
	if (_part == "" && !_dead) then
	{
		if (damage _unit + _dam >= 1) then
		{
			_dam = 0;
			_unit spawn btc_qr_fnc_unc;
		};
	} else {
	if (!_dead) then {_dam = _this select 2};
	};
};

_dam