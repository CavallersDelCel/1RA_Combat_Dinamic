_Unit = _this select 0;

_CurrentBackPack = backpack _Unit;

if (isNil "_CurrentBackPack") exitWith {};
_class = [_CurrentBackPack] call VCOM_fnc_classVehicle;

if (isNil "_class") exitWith {};
_parents = [_class,true] call BIS_fnc_returnParents;
if ("Static" in _parents) then {_Unit setVariable ["VCOM_HASSTATIC",1,false];} else {_Unit setVariable ["VCOM_HASSTATIC",0,false];};
if (("StaticWeapon" in _parents) || ("Weapon_Bag_Base" in _parents)) then {_Unit setVariable ["VCOM_HASSTATIC",1,false];} else {_Unit setVariable ["VCOM_HASSTATIC",0,false];};

