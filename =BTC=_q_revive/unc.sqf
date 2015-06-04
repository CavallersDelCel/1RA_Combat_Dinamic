private ["_ui", "_isPlayer", "_unit", "_timer", "_call", "_group", "_time_unc", "_fa", "_mk"];

_unit = _this;

if (_unit getVariable ["btc_qr_unc",false]) exitWith {};

if (surfaceIsWater position _unit) exitWith {_unit setDamage 1};

_unit setVariable ["btc_qr_unc",true];

if (vehicle _unit != _unit) then
{
	_unit action ["getOut", vehicle _unit];
};

_unit setDamage 0.99;
_unit setCaptive true;

waitUntil {vehicle _unit == _unit};

_time_unc = _unit getVariable ["btc_qr_set_unc_time",180];

_unit setVariable ["btc_qr_unc_time",time];

_unit setVariable ["btc_qr_helper",objNull];

_unit setVariable ["btc_qr_resp",false];

_unit setVariable ["btc_qr_is_leader",false];

_group = group _unit;

if (!isNil {_unit getVariable "btc_qr_on_unc"}) then {_unit spawn (_unit getVariable "btc_qr_on_unc");};

{_unit disableAI _x} foreach ["TARGET","AUTOTARGET","MOVE","ANIM"];

_timer = true;
_call = 16;

_unit switchMove "AinjPpneMstpSnonWrflDnon";

while {_timer && {Alive _unit} && {damage _unit > 0.25}} do
{
	if (_time_unc > 0) then {if ((time - (_unit getVariable ["btc_qr_unc_time",time])) > _time_unc) then {_timer = false;};};

		if (isNull (_unit getVariable ["btc_qr_helper",objNull])) then {[_unit] call btc_qr_fnc_call_for_help};

	if (!isPlayer _unit && _call > 15) then {_call = 0;} else {_call = _call + 1;};
	sleep 1;
};

if (!_timer) exitWith {_unit setDamage 1};

_unit setVariable ["btc_qr_unc",false];

sleep 0.5;

if (_unit getVariable ["btc_qr_resp",false]) exitWith {_unit setVariable ["btc_qr_resp",false];};

if (Alive _unit) then
{
		{_unit enableAI _x} foreach ["TARGET","AUTOTARGET","MOVE","ANIM"];
		_unit setDamage 0;
		_unit setCaptive false;
		_unit setFatigue 0;
		_unit playMoveNow "amovppnemstpsraswrfldnon";
};