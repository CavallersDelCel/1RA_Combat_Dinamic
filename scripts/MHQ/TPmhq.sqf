if (isNil "AOW_MHQ") exitwith {hintSilent localize "STR_AOW_MHQTP1"};
if ((speed (vehicle AOW_MHQ))  < 5 && alive AOW_MHQ) then {
	player moveInCargo AOW_MHQ;
	{
    if (!isPlayer _x && _x distance baseFlagPole < 100) then {
    	_x moveInCargo AOW_MHQ;
    };
} forEach units (group player);
} else {
hintSilent localize "STR_AOW_MHQTP2"};