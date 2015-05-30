_veh = objNull;
_vehCar = nearestObject [vehicle player, "Car"];
_vehTank = nearestObject [vehicle player, "Tank"];
_vehBoat = nearestObject [vehicle player, "Ship"];
_vehPlane = nearestObject [vehicle player, "Plane"];

if ((vehicle player distance _vehCar) > (vehicle player distance _vehTank)) then
{
  _veh = _vehTank;
} else
{
  _veh = _vehCar;
};

if ((vehicle player distance _veh) > (vehicle player distance _vehBoat)) then
{
  _veh = _vehBoat;
};

if ((vehicle player distance _veh) > (vehicle player distance _vehPlane)) then
{
  _veh = _vehPlane;
};

_id = _this select 2;
_vehPos = getPos _veh;
_veh setPos [_vehPos select 0, _vehPos select 1, 1];
_veh attachTo [vehicle player, [0, 0, -5]];
_liftrope = ropeCreate [vehicle player, "slingload0", _veh, [0, 0, 0], 10];
_EHid = vehicle player addMPEventHandler ["MPKilled", {_this call CUP_killedEH;}];

vehicle player setVariable ["CUP_attached", [1, _veh, _EHid, _liftrope], true];