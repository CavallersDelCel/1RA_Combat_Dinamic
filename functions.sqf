AOW_fnc_addAction =
{
    private["_object","_args"];
    _object = _this select 0;
    _args = _this select 1;

    _object addaction _args;

};
AOW_fnc_getFreeNames =
{
	_allNames = missionNamespace getVariable ["AOW_allRandomNames", []];
	_newName = format ["AOW_RANDOM_NAME_%1", count _allNames];
	_allNames pushBack _newName;
	missionNamespace setVariable ["AOW_allRandomNames", _allNames];
	publicVariable "AOW_allRandomNames";
	_newName
};
AOW_fnc_base_allowdamage =
{
    private["_object","_args"];
    _object = _this select 0;
    _args = _this select 1;

    _object allowdamage _args;

};