
if (!local _this) exitWith {[_this, "btc_qr_fnc_unit_init", _this] call BIS_fnc_MP;};

if (isNil "btc_qr_ready") then {call compile preprocessFile "=BTC=_q_revive\config.sqf";};

if (_this getVariable ["btc_qr_initialized",false]) exitWith {};

_this addEventHandler ["HandleDamage", btc_qr_fnc_hd];

_this setVariable ["btc_qr_initialized",true];