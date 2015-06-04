private ["_unit", "_helper"];

_unit = _this select 0;
_helper = _this select 1;

if (_helper getVariable ["btc_qr_helping",false]) exitWith {};

// Custom player reviving AI
if (isPlayer _helper) exitWith {
	_helper playMoveNow "AinvPknlMstpSlayWrflDnon_medicOther";
	sleep 8;
	if !(_helper getVariable ["BIS_revive_incapacitated",false]) then {
		_unit setDamage 0;
	};
};

// Custom AI reviving player
if (isPlayer _unit) then {
	while {Alive _unit && {Alive _helper} && {_unit getVariable "BIS_revive_incapacitated"} && {damage _helper < 0.99}} do
{
	if (stopped _helper) then {_helper stop false;};
	[[_helper,(position _unit)],"doMove",nil,false] call BIS_fnc_MP;

	hintSilent localize "STR_AOW_AIMEDIC";
	if (_unit distance _helper < 2.5) then {
		_helper playMoveNow "AinvPknlMstpSlayWrflDnon_medicOther";
		sleep 8;
		if (damage _helper < 0.99) then {
			[_unit,"ALIVE"] call BIS_fnc_reviveSetStatus;
			[[_unit, "AmovPpneMstpSnonWnonDnon"], "switchMove"] call BIS_fnc_MP;
			hintSilent "";
		};
	};
	sleep 2;
};
} else {
// Regular AI reviving AI
_unit setVariable ["btc_qr_helper",_helper];
_helper setVariable ["btc_qr_helping",true];

while {Alive _unit && {Alive _helper} && {damage _unit > 0.8} && {damage _helper < 0.99}} do
{
	if (stopped _helper) then {_helper stop false;};
	[[_helper,(position _unit)],"doMove",nil,false] call BIS_fnc_MP;

	if (_unit distance _helper < 2.5) then {
		_helper playMoveNow "AinvPknlMstpSlayWrflDnon_medicOther";
		sleep 8;
		if (damage _helper < 0.99) then {_unit setDamage 0;};
	};
	sleep 2;
};


_unit setVariable ["btc_qr_helper",objNull];
_helper setVariable ["btc_qr_helping",false];
};