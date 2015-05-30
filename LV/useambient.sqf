if (isServer) then {
	waitUntil {getMarkerColor "VVS1" != ""};
	_AIam = (paramsArray select 12);
	_AIa1 = (paramsArray select 14);
	_AIa = _AIa1/10;
	nul = [1000,1500,1,30,_AIam,[0.3,0.3,0.3],player,[_AIa,_AIa,1,1,1,1,1,_AIa,1,1],0,2500,nil,["SAFE","SAD"],true] execVM "LV\ambientCombat.sqf";
};