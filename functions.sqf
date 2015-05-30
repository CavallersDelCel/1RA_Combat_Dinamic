MHQ_fnc_addAction =
{
    private["_object","_args"];
    _object = _this select 0;
    _args = _this select 1;

    _object addaction _args;

};
AOW_fnc_getFreeMarkerName =
{
	_allMarkerNames = missionNamespace getVariable ["allMarkerNames", []];
	_newMarkerName = format ["AOW_BASE_%1", count _allMarkerNames];
	_allMarkerNames pushBack _newMarkerName;
	missionNamespace setVariable ["allMarkerNames", _allMarkerNames];
	publicVariable "allMarkerNames";
	_newMarkerName
};
AOW_fnc_base_allowdamage =
{
    private["_object","_args"];
    _object = _this select 0;
    _args = _this select 1;

    _object allowdamage _args;

};