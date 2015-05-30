
/*
	File: fn_threat.sqf
	Author: Karel Moricky
  Edit by: Genesis92x - made this calculate the entire group

	Description:
	Calculates threat values of given unit

	Parameter(s):
		_this: Given unit

	Returns:
	Number: Threat level in range from 0 to 3
*/
private ["_unit","_threat","_threatUnit","_threatVeh"];

_unit = _this select 0;
_unitgroup = (group _unit);
_threat = 0;
{
  _threatUnit = getarray(configfile >> "cfgvehicles" >> typeof _x >> "threat");
  {_threat = _threat + _x;} foreach _threatUnit;
  
  if (vehicle _x != _x && effectivecommander vehicle _x isEqualTo _x) then {
    _x = vehicle _x;
    _threatVeh = getarray(configfile >> "cfgvehicles" >> typeof _x >> "threat");
    {_threat = _threat + _x;} foreach _threatVeh;

  };
} foreach units _unitgroup;

_threat