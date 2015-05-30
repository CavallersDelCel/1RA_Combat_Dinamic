while {true} do
{
	if (!(PXS_SatelliteActive)) exitWith {};

	ctrlSetText [1001,format ["%1 %2",call PXS_timeFunction,PXS_TimeZone]];

	sleep 0.1;
};