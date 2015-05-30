//create UI event keyspressed
disableSerialization;

sleep 0.1;

PXS_keyEventHandler = (findDisplay 1000) displayAddEventHandler ["KeyDown","_this call PXS_keyEventFunction"];
PXS_mouseWheelEventHandler = (findDisplay 1000) displayAddEventHandler ["MouseZChanged","_this call PXS_mouseZChanged"];