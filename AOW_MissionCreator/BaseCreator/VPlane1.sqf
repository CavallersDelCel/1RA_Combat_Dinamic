AOW_Spawner_Direction = 0;
switch (lbCurSel 4602) do
	{
	case 0: {AOW_Spawner_Direction = 0};
	case 1: {AOW_Spawner_Direction = 90};
	case 2: {AOW_Spawner_Direction = 180};
	case 3: {AOW_Spawner_Direction = 270};
};
closeDialog 0;
openMap true;
hintSilent ( localize "STR_AOW_WhereDeliveryP" );


["AOW_Plane_mapclick","onMapSingleClick", {
if (getMarkerColor "AOW_PlaneDelivery" != "") then {
	deleteMarker "AOW_PlaneDelivery";
};
	_MarkerPlane = createMarker ["AOW_PlaneDelivery", _pos];
	_MarkerPlane setMarkerDir AOW_Spawner_Direction;
	_MarkerPlane setMarkerText localize "STR_AOW_PlaneDeliveryP";
	_MarkerPlane setMarkerType "b_plane";
}] call BIS_fnc_addStackedEventHandler;

waitUntil {!(visibleMap)};

["AOW_Plane_mapclick", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
AOW_Spawner_Direction = nil;