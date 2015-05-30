//Created on 8/14/14
// Modified on :

//This function is to determine if this unit is the group leader or not. And to define if unit is sub-leader or not.
_Unit = _this select 0;

_GroupLeader = leader (group (vehicle _Unit)); 
if (_GroupLeader == _Unit) then {_Unit setVariable ["VCOM_GroupLeader",1,false];};

_SubLeader = isFormationLeader _Unit;
if (_SubLeader) then {_Unit setVariable ["VCOM_SubLeader",1,false];};


_Leader = _Unit getVariable "VCOM_GroupLeader";
_SubLeader = _Unit getVariable "VCOM_SubLeader";
_CheckArray = [_Leader,_SubLeader];
_CheckArray