// by Kikbot
private ["_grid_size"];
disableserialization;

openMap [true, false];
WaitUntil {visibleMap};

_x_mapsize = 0;
_y_mapsize = 0;

_Map_display = findDisplay 12;
_map_cntrl = _Map_display displayCtrl 51;
// Temporarily zoom out as much as possible and measure the screen.
_map_cntrl ctrlMapAnimAdd [0, 1000, [9999999999, 9999999999]];
ctrlMapAnimCommit _map_cntrl;
waitUntil {ctrlMapAnimDone _map_cntrl};
_zoom_max = ctrlMapScale _map_cntrl;
_limit = _map_cntrl ctrlMapScreenToWorld [0.5, 0.5];
_x_mapsize = _limit select 0;
_y_mapsize = _limit select 1;


_Map_display = findDisplay 12;
_map_cntrl = _Map_display displayCtrl 51;
_map_cntrl ctrlmapAnimAdd [0, 1000, [_x_mapsize/2, _y_mapsize/2]];
ctrlMapAnimCommit _map_cntrl;
waitUntil {ctrlMapAnimDone _map_cntrl};

openMap [false, false];

// by Kempco

// get center of map:
_x_center = _x_mapsize/2;
_y_center = _y_mapsize/2;
center_of_map = [_x_center,_y_center];
if (_x_center > _y_center) then {
half_of_map = _x_center/1.1
}
else
{
half_of_map = _y_center/1.1
};