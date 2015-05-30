PXS_SatelliteCamera camPrepareTarget
[
	((getPos PXS_SatelliteTarget) select 0) - 1,
	((getPos PXS_SatelliteTarget) select 1) + 1,
	(getPos PXS_SatelliteTarget) select 2
];
PXS_SatelliteCamera camSetPos
[
	(getPos PXS_SatelliteTarget) select 0,
	(getPos PXS_SatelliteTarget) select 1,
	((getPos PXS_SatelliteTarget) select 2) + PXS_SatelliteInitialHeight
];
PXS_SatelliteCamera camPrepareFov PXS_SatelliteFOV;
PXS_SatelliteCamera camCommitPrepared 0;