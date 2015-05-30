//Simple tweak of BIS' two functions built for Vehicle purposes by VCOM//

//If framerate is below 30 - exit this script.
_FrameRateCheck = diag_fps;
if (_FrameRateCheck < 30) exitWith {};

private ["_return", "_name"];
_name = _this select 0;

if ((typeName _name) == "STRING") then
{
  _return = (configFile >> "cfgVehicles" >> _name);
}
else
{
  _return = (configFile >> "NonExistingClassDummy0005646526");
};
_return 