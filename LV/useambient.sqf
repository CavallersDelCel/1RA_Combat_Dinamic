if (isServer) then {
	waitUntil {getMarkerColor "VVS1" != ""};
	sleep 5;
	_AInumber = (paramsArray select 12);
	_AIskill = (paramsArray select 14)/10;
	nul = [1000,1500,1,30,_AInumber,[0.3,0.3,0.3],player,[_AIskill,_AIskill,_AIskill,_AIskill,_AIskill,1,_AIskill,_AIskill,_AIskill],0,2500,nil,["SAFE","SAD"],true] execVM "LV\ambientCombat.sqf";
};