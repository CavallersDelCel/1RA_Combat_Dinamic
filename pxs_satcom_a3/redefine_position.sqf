//redefine default satellite position while SATCOM is on

waitUntil {call PXS_closeCamera};
call PXS_startSatellite;