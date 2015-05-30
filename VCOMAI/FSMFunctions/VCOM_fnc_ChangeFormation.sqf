_Unit = _this select 0;
_Groupleader = leader _Unit;
_group = group _Groupleader;
if (!(_Unit isEqualTo _Groupleader)) exitWith {};
_nearestCity = nearestLocation [getPos _Groupleader, "nameCity"];
_locationPos = locationPosition _nearestCity;
if ((_locationPos distance _Groupleader) < 500) exitWith {

if ((vehicle _Unit) != _Unit) then
{
_group setFormation "COLUMN"; 
}
else
{
_group setFormation "STAG COLUMN";
};

{
  _x setVariable ["VCOM_CHANGEDFORMATION",1,false];
} foreach units _group;
[_group] spawn 
{
  _group = _this select 0;
  sleep 10;
  {
    _x setVariable ["VCOM_CHANGEDFORMATION",0,false];
  } foreach units _group;
};

};

_nearestVillage = nearestLocation [getPos _Groupleader, "NameVillage"];
_locationPos2 = locationPosition _nearestVillage;
if ((_locationPos2 distance _Groupleader) < 500) exitWith {
if ((vehicle _Unit) != _Unit) then
{
_group setFormation "COLUMN"; 
}
else
{
_group setFormation "STAG COLUMN";
};

{
  _x setVariable ["VCOM_CHANGEDFORMATION",1,false];
} foreach units _group;
[_group] spawn 
{
  _group = _this select 0;
  sleep 10;
  {
    _x setVariable ["VCOM_CHANGEDFORMATION",0,false];
  } foreach units _group;
};
};


_nearestHill = nearestLocation [getPos _Groupleader, "Hill"];
_locationPos4 = locationPosition _nearestHill;
if ((_locationPos4 distance _Groupleader) < 500) exitWith {
if ((vehicle _Unit) != _Unit) then
{
_group setFormation "LINE";
}
else
{
_group setFormation "LINE";
};
{
  _x setVariable ["VCOM_CHANGEDFORMATION",1,false];
} foreach units _group;
[_group] spawn 
{
  _group = _this select 0;
  sleep 10;
  {
    _x setVariable ["VCOM_CHANGEDFORMATION",0,false];
  } foreach units _group;
};
};


_nearestLocal = nearestLocation [getPos _Groupleader, "NameLocal"];
_locationPos3 = locationPosition _nearestLocal;
if ((_locationPos3 distance _Groupleader) < 300) exitWith {
if ((vehicle _Unit) != _Unit) then
{
_group setFormation "COLUMN"; 
}
else
{
_group setFormation "COLUMN"; 
};
{
  _x setVariable ["VCOM_CHANGEDFORMATION",1,false];
} foreach units _group;
[_group] spawn 
{
  _group = _this select 0;
  sleep 10;
  {
    _x setVariable ["VCOM_CHANGEDFORMATION",0,false];
  } foreach units _group;
};
};
_group setFormation "WEDGE"; 
{
  _x setVariable ["VCOM_CHANGEDFORMATION",1,false];
} foreach units _group;
[_group] spawn 
{
  _group = _this select 0;
  sleep 10;
  {
    _x setVariable ["VCOM_CHANGEDFORMATION",0,false];
  } foreach units _group;
};