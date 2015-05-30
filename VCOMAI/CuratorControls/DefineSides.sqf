//This script compiles a list of all the units, per side.
VCOM_West = [];
VCOM_East = [];
VCOM_Civilian = [];
VCOM_Resistance = [];

while {true} do 
{
sleep 5;
  {
    if ((side _x) isEqualTo WEST) then {VCOM_West pushBack _x;};
    if ((side _x) isEqualTo EAST) then {VCOM_East pushBack _x;};
    if ((side _x) isEqualTo RESISTANCE) then {VCOM_Civilian pushBack _x;};
    if ((side _x) isEqualTo CIVILIAN) then {VCOM_Resistance pushBack _x;};
  } foreach allUnits;
};