if ((getMarkerPos "AOW_PlaneDelivery" select 0 == 0) && (getMarkerPos "AOW_PlaneDelivery" select 1 == 0)) then {
	hintSilent ( localize "str_AOW_Place_Plane" );
} else {
    player setPos [(getMarkerPos "AOW_PlaneDelivery" select 0) + random 5, (getMarkerPos "AOW_PlaneDelivery" select 1) + random 5,0];
{
    if (!isPlayer _x && _x distance baseFlagPole < 100) then {
    	_x setPos [(getMarkerPos "AOW_PlaneDelivery" select 0) + random 5, (getMarkerPos "AOW_PlaneDelivery" select 1) + random 5,0];
    };
} forEach units (group player);
};