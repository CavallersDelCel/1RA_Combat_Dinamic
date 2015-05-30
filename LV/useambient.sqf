if (isServer) then {
	waitUntil {getMarkerColor "VVS1" != ""};
	_AIam = (paramsArray select 12);
//	_AIa1 = (paramsArray select 14);
//	_AIa = _AIa1/10;
	nul = [1000,1500,30,60,_AIam,[0.0,0.1,0.0],player,"default",1,2500,nil,["SAFE","SAD"],true] execVM "LV\ambientCombat.sqf";
};