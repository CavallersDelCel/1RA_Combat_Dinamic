_dist = 1000;
_todelete ="";
_basearray = server getVariable "EOSmarkers";
{
_range = ((getMarkerPos _x) distance (getMarkerPos "TempDeleteM"));
if (_range < _dist) then {_dist =_range; _todelete = _x};
} foreach _basearray;
hintSilent format["%1 Is being deleted",_todelete];
[[_todelete]] call EOS_deactivate;
deleteMarker "TempDeleteM";
sleep 20;
deletemarker _todelete;
publicVariable "_todelete";