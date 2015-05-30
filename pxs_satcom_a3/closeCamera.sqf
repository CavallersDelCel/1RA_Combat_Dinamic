disableSerialization;

setViewDistance PXS_ViewDistance;

[1] call PXS_adjustCamera;

(findDisplay 1000) displayRemoveEventHandler ["KeyDown",PXS_keyEventHandler];
(findDisplay 1000) displayRemoveEventHandler ["MouseZChanged",PXS_mouseWheelEventHandler];

PXS_SatelliteCamera cameraEffect ["terminate","back"];
camDestroy PXS_SatelliteCamera;

closeDialog 1000;

deleteVehicle PXS_SatelliteTarget;

onMapSingleClick "";
openMap false;
PXS_SatelliteActive = false;