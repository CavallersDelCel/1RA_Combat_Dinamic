//This script forces the AI to move where the CURATOR wants them to
_CuratorObject = _this select 0;
_Group = _this select 1;
_GroupLeader = leader _Group;

_index = currentWaypoint _Group;
_wPos = waypointPosition [_Group, _index];

if ((behaviour _GroupLeader) isEqualTo "COMBAT") then 
{
  _Group setBehaviour "AWARE";
	{
    doStop _x;
    sleep 0.001;
		_x doMove _wPos;
	} foreach units _Group;

};