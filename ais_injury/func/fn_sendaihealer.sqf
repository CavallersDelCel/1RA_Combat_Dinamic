// by BonInf*
// changed by Psycho
#define __includedMates (units group _playerdown - [_playerdown])
private ["_playerdown","_closestsquadmate","_min_distance","_distance"];
_playerdown = _this select 0;
_closestsquadmate = if (count _this > 1) then {_this select 1} else {nil};

_delay = 3;
sleep _delay;

if (count _this > 1) then {
	if (isNull _closestsquadmate || {_closestsquadmate getVariable "tcb_ais_agony"} || {!alive _closestsquadmate}) then {
		_closestsquadmate = Nil;
	};
};
if (isNil "_closestsquadmate") then {
	{if (_x call tcb_fnc_isMedic && {!(_x getVariable "tcb_ais_agony")} && {!isPlayer _x}) exitWith {_closestsquadmate = _x}} forEach __includedMates;

	if (isNil "_closestsquadmate") then {
		_closestsquadmate = _playerdown;
		_min_distance = 100000;
		{
			_distance = _playerdown distance _x;
			if ((_distance < _min_distance) && {!isPlayer _x} && {!(_x getVariable "tcb_ais_agony")}) then {
				_min_distance = _distance;
				_closestsquadmate = _x;
			};
		} foreach __includedMates;
	};
};

if (isPlayer _playerdown) then {
if (isNull _closestsquadmate || {_closestsquadmate == _playerdown}) exitWith {[_playerdown] spawn tcb_fnc_sendaihealer};

While {alive _playerdown && {_playerdown getVariable "BIS_revive_incapacitated"} && {_closestsquadmate distance _playerdown > 4} && {alive _closestsquadmate} && {!(_closestsquadmate getVariable "tcb_ais_agony")}} do {
	_delay = time + 10;
	_closestsquadmate setBehaviour "AWARE";
	if (currentCommand _closestsquadmate != "MOVE") then {_closestsquadmate Stop false; _closestsquadmate doMove (position _playerdown); hintSilent "AI medic on its way"};
	waitUntil {(_closestsquadmate distance _playerdown <= 4) || {time > _delay}};
};

if (!alive _closestsquadmate || {_closestsquadmate getVariable "tcb_ais_agony"} || {isNull _closestsquadmate}) then {
	[_playerdown] spawn tcb_fnc_sendaihealer;
};

if (alive _playerdown && {_playerdown getVariable "BIS_revive_incapacitated"}) then {
	_closestsquadmate playMove "AinvPknlMstpSlayWrflDnon_medicOther";
	sleep 8;
	if (alive _playerdown && alive _closestsquadmate && {_playerdown getVariable "BIS_revive_incapacitated"}) then {
	[_playerdown,"ALIVE"] call BIS_fnc_reviveSetStatus;
	[[_playerdown, "AmovPpneMstpSnonWnonDnon"], "switchMove"] call BIS_fnc_MP;
	};
	hintSilent "";
};



} else {
if (isNull _closestsquadmate || {_closestsquadmate == _playerdown}) exitWith {[_playerdown] spawn tcb_fnc_sendaihealer};

While {alive _playerdown && {_playerdown getVariable "tcb_ais_agony"} && {_closestsquadmate distance _playerdown > 4} && {alive _closestsquadmate} && {!(_closestsquadmate getVariable "tcb_ais_agony")}} do {
	_delay = time + 10;
	_closestsquadmate setBehaviour "AWARE";
	if (currentCommand _closestsquadmate != "MOVE") then {_closestsquadmate Stop false; _closestsquadmate doMove (position _playerdown)};
	waitUntil {(_closestsquadmate distance _playerdown <= 4) || {time > _delay}};
};

if (!alive _closestsquadmate || {_closestsquadmate getVariable "tcb_ais_agony"} || {isNull _closestsquadmate}) then {
	[_playerdown] spawn tcb_fnc_sendaihealer;
};

if (alive _playerdown && {_playerdown getVariable "tcb_ais_agony"}) then {
	[_playerdown, _closestsquadmate] spawn tcb_fnc_firstAid;
};
};