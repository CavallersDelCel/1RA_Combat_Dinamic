//This script constantly checks to see if the player is in a curator position or not
PlayerOwnedCurator = [];
[] spawn {

while {true} do 
{
	sleep 10;
	
	{
		_curatorUnit = getAssignedCuratorUnit _x;
		if (_curatorUnit == player) then 
		{
			_CheckVariable = _x getVariable "VCOM_ACTIVECURATOR";
			if (isNil "_CheckVariable") then {_CheckVariable = 0;};
			if (_CheckVariable isEqualTo 0) then 
			{
				PlayerOwnedCurator = _curatorUnit;
				_x setVariable ["VCOM_ACTIVECURATOR",1,false];
				_x addEventHandler ["CuratorWaypointPlaced",{_this spawn VCOM_fnc_CuratorWaypointFORCE;}];
			};
			
			
			
			
		};
	} foreach allCurators;
	
};

};
