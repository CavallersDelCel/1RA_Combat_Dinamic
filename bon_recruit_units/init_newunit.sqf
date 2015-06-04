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
_AIskill = (paramsArray select 14)/10;

_unit setSkill ["aimingaccuracy", _AIskill];
_unit setSkill ["aimingshake", _AIskill];
_unit setSkill ["aimingSpeed", _AIskill];
_unit setSkill ["spotdistance", _AIskill];
_unit setSkill ["spottime", _AIskill];
_unit setSkill ["courage", 1];
_unit setSkill ["reloadSpeed", _AIskill];
_unit setSkill ["commanding", _AIskill];
_unit setSkill ["general", _AIskill];
_unit enableFatigue false;

if (paramsArray select 17 == 0) then {
	_unit call btc_qr_fnc_unit_init;
	[[_unit, ["<t color='#F00000'>Revive</t>","[_this select 0,_this select 1] spawn btc_qr_fnc_help",[],100,false,true,"","damage _target == 0.99 && _target distance _this < 2.5"]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;
};
