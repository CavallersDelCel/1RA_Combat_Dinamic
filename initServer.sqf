// The server pick a player who will locate the base
[] execVM "missionStart.sqf";

// BIS dynamic groups server side init
["Initialize"] call BIS_fnc_dynamicGroups;

// Add every spawned unit to zeus editable objects
[] execVM "scripts\zeus.sqf";

//[AiCacheDistance(players),TargetFPS(-1 for Auto),Debug,CarCacheDistance,AirCacheDistance,BoatCacheDistance]execvm "zbe_cache\main.sqf";
// Caching script
if (paramsArray select 15 != 0) then {
	_cachedis = paramsArray select 15;
	[_cachedis,-1,false,_cachedis,_cachedis,_cachedis]execvm "zbe_cache\main.sqf";
};

// Clean Up
if (paramsArray select 18 == 0) then {
	[] execVM "scripts\cleanAbandonded.sqf";
};

// Time acceleration
if (paramsArray select 2 != 0) then {
		setTimeMultiplier (paramsArray select 2);
};