if (lbSize 4603 == 0) exitwith {hintSilent localize "STR_AOW_MHQTP1"};

_lbPos = lbCurSel 4603;
_selectedMHQ = lbData [4603, _lbPos];
_MHQ = missionNamespace getVariable [_selectedMHQ, objNull];

if (alive _MHQ) then {
	closeDialog 0;
	[player,_MHQ] call BIS_fnc_moveToRespawnPosition;
	if (leader group player == player) then {
		{
		if (!isPlayer _x && _x distance baseFlagPole < 100) then {
			[_x,_MHQ] call BIS_fnc_moveToRespawnPosition;};
	    } forEach units (group player);
};
} else {
	hintSilent localize "STR_AOW_MHQTP2";
};