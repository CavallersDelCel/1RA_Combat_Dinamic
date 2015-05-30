// by Bon_Inf*
//Modified by Moser -- 07/18/2014

#include "dialog\definitions.sqf"
disableSerialization;


_scripthandler =[] execVM "bon_recruit_units\recruitable_units.sqf"; 	//executes dynamic arrray builder to find units of player's subfaction
waitUntil{ ScriptDone _scripthandler  };								//MUST wait for script to finish

_display = findDisplay BON_RECRUITING_DIALOG;
_unitlist = _display displayCtrl BON_RECRUITING_UNITLIST;


_weaponstring = "";
{
	_displname = getText (configFile >> "CfgVehicles" >> _x >> "faction") + " " + getText (configFile >> "CfgVehicles" >> _x >> "displayName") ;
	_picture = getText (configFile >> "CfgVehicles" >> _x >> "portrait");
	_weaponstring = format["%1",_displname,_picture];
	_unitlist lbAdd _weaponstring;
} foreach bon_recruit_recruitableunits;