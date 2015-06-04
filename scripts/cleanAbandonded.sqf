// CUT/CUSTOM VERSION OF PVPFW CLEAN UP

_checkAbandonded = {
	private["_vehicle","_nearEntities","_cleanThis"];
	_vehicle = _this;
	_cleanThis = false;

	if ({alive _x}count crew _vehicle==0) then {

		_cleanThis = true;

		if (_vehicle getVariable["AOW_NoCleanUp",false]) exitWith {
			_cleanThis = false
		};
	{
		if (_vehicle distance _x < 3000) then {
			_cleanThis = false;
		};
	} forEach playableUnits;
	};
	_cleanThis
};

while{true}do{
	{

		if (alive _x && {_x isKindOf "LandVehicle" || _x isKindOf "Air" ||_x isKindOf "Ship"})then{
			_isAbandonded = (_x call _checkAbandonded);
			if (_isAbandonded) then{
				_abandondedSince = _x getVariable ["pvpfw_respawn_abandondedSince",0];
				if (_abandondedSince == 0) then{
					_x setVariable ["pvpfw_respawn_abandondedSince",diag_tickTime,false];
				}else{
					if (diag_tickTime > (_abandondedSince + 20)) then{
						deleteVehicle _x;
					};
				};
			}else{
				_x setVariable ["pvpfw_respawn_abandondedSince",0,false];
			};
		};
		sleep 0.1;
	}forEach vehicles;
	sleep 20;
};