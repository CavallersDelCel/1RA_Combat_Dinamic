_dist = 1000;
_todelete ="";
_found = false;
_basearray = server getVariable "EOSmarkers";

{
	_range = ((getMarkerPos _x) distance (getMarkerPos "TempDeleteM"));
	if (_range < _dist) then {
		_dist =_range; _todelete = _x; _found = true;
	};
} foreach _basearray;

if (_found) then {
	hintSilent "A zone is being deleted";
	[[_todelete]] call EOS_deactivate;
	deleteMarker "TempDeleteM";
	sleep 20;
	deletemarker _todelete;
	publicVariable "_todelete";
} else {
    hintSilent "No zone found nearby";
    deleteMarker "TempDeleteM";
};