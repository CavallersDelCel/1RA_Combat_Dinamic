if (isServer) then {
	waitUntil {getMarkerColor "VVS1" != ""};
	sleep 5;
	_AInumber = (paramsArray select 12);
//	_AIskill = (paramsArray select 14)/10;
	nul = [1000,1500,30,60,_AInumber,[0.0,0.1,0.0],player,"default",1,2500,nil,["SAFE","SAD"],true] execVM "LV\ambientCombat.sqf";
};