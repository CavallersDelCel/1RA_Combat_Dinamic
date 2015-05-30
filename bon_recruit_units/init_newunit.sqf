_unit = _this select 0;

/*****************************************************************
	following section to run only on server.
	Note: duplicate respective code in the pve in the init.sqf
******************************************************************/
if(isServer) then{
	[_unit] execFSM (BON_RECRUIT_PATH+"unit_lifecycle.fsm");
} else {
	bon_recruit_newunit = _unit;
	publicVariable "bon_recruit_newunit";
};




/*****************************************************************
	Client Stuff
******************************************************************/
_AI1 = (paramsArray select 14);
_AI = _AI1/10;
_unit setSkill ["aimingaccuracy", _AI];
_unit setSkill ["aimingshake", _AI];
_unit setSkill ["aimingSpeed", 1];
_unit setSkill ["spotdistance", 1];
_unit setSkill ["spottime", 1];
_unit setSkill ["courage", 1];
_unit setSkill ["reloadSpeed", 1];
_unit setSkill ["commanding", 1];
_unit setSkill ["general", _AI];
_unit setSkill ["endurance", 1];
if (paramsArray select 17 == 0) then {
	TCB_AIS_PATH = "ais_injury\";
	[_unit] call compile preprocessFile "ais_injury\init_ais.sqf";
};
if (paramsArray select 7 == 0) then {
	_unit enableFatigue false;
};