_Unit = _this select 0;
_magazinesAmmo = magazinesAmmo _Unit;

{
_Magazine = _x select 0;
//Hint format ["_Magazine %1",_Magazine];
_value = (configfile >> "CfgMagazines" >> _Magazine >> "nameSound") call BIS_fnc_getCfgData;
if (_value == "satchelcharge") exitWith {
//_SatchelString = format ['"%1"',_Magazine];
_Unit setVariable ["VCOM_SATCHELBOMB",_Magazine,false];
_Unit setVariable ["VCOM_HASSATCHEL",1,false];
//Hint format ["%1",(_Unit getVariable "SATCHELBOMB")];

};
} forEach _magazinesAmmo;

