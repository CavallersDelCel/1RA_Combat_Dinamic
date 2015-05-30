//This will ragdoll a unit;
_Unit = _this select 0;

_SpawnObject = "Land_Can_V3_F" createVehicleLocal [0,0,0];
_SpawnObject setMass 1e10;
_SpawnObject attachTo [_Unit, [0,0,0], "Spine3"];

_SpawnObject setVelocity [0,0,10];
detach _SpawnObject;
_Unit setVelocity [0,0,0];
_Unit allowdamage false;


null = [_SpawnObject,_Unit] spawn 
{
	sleep 0.01;
	deleteVehicle (_this select 0);
	sleep 0.5;
	(_this select 1) allowDamage true;
};