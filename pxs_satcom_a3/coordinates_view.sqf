private ["_lon","_lat"];

#define SATFOV 2282 //default satellite FOV to Earth

while {true} do
{
	if (!(PXS_SatelliteActive)) exitWith {};
	
	_lon = getPos PXS_SatelliteTarget select 1;
	_lat = getPos PXS_SatelliteTarget select 0;

	ctrlSetText [1002,format ["%1 N",[_lon] call PXS_coordinatesFunction]];
	ctrlSetText [1003,format ["%1 W",[_lat] call PXS_coordinatesFunction]];
	ctrlSetText [1004,format ["%1km FOV",(round (100 * (SATFOV - PXS_SatelliteFOV)))/100]];

	sleep 0.1;
};