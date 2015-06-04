if (isServer) then {
	_veh = [_this, 0, ""] call BIS_fnc_param;
	_veh setVariable ["AOW_NoCleanUp", true];
	_veh setVariable ["zbe_cacheDisabled", true, true];
	_MHQrespawn = [missionNamespace, _veh] call BIS_fnc_addRespawnPosition;

	[[_veh, ["<t color='#ff1111'>Teleport to base</t>","AOW_MHQ\TPbase.sqf",[],0,false,true,"", ""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;
	[[_veh, ["<t color='#ff1111'>Virtual Arsenal</t>","scripts\arsenal.sqf",[],0,false,true,"","vehicle _this == _this"]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;
    [[_veh, ["<t color='#ff1111'>SATCOM</t>", {call PXS_startSatellite;}, "", 0, true, true, "", ""]],"AOW_fnc_addAction",true,true] spawn BIS_fnc_MP;

	waitUntil {!alive _veh};
	[_veh,"removeAllActions"] call BIS_fnc_MP;
};