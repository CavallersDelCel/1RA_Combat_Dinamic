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


["AOW_Ship_mapclick","onMapSingleClick", {
if (getMarkerColor "AOW_ShipDelivery" != "") then {
	deleteMarker "AOW_ShipDelivery";
};
	_MarkerShip = createMarker ["AOW_ShipDelivery", _pos];
	_MarkerShip setMarkerDir AOW_Spawner_Direction;
	_MarkerShip setMarkerText localize "STR_AOW_ShipDeliveryP";
	_MarkerShip setMarkerType "b_naval";
}] call BIS_fnc_addStackedEventHandler;

waitUntil {!(visibleMap)};

["AOW_Ship_mapclick", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
AOW_Spawner_Direction = nil;