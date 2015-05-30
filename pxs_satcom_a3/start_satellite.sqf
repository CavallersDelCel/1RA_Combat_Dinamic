onMapSingleClick
{
	PXS_SatelliteTarget = "Logic" createVehicleLocal _pos;//PXS_SATCOM_Logic
	PXS_SatelliteTarget setDir 0;
	call PXS_viewSatellite;
};
hintSilent localize "STR_AOW_StartSatellite";
openMap true;