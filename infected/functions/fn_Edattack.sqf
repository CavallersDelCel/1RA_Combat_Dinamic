private ["_me","_myzone","_mypos","_imHere","_onAttack","_isInVehicle","_targetPos","_distance","_asleep"];
if (isServer)then
{
	_me=_this select 0;
	_myTarget= _this select 1;
	_initialPos=_this select 2;
	_imHere=false;
	_me joinAsSilent [infectedattacker, 1];
	missionNamespace setVariable [format ["%1_nextTarget",_me], _myTarget];
	while{(alive _me)and(count _myTarget != 0)}do
	{
		_nextTarget = missionNamespace getVariable [format ["%1_nextTarget",_me], []];
		if ((str _nextTarget) != (str _myTarget)) then
		{
			_myTarget= _nextTarget;
		};
		_target= _myTarget select 0;
		_range = 3.5;
		_damage = 1;
		if(!(vehicle _target isKindOf "man"))then
		{
		    _range = 6.5;
		    _damage = (getDammage _target) + 0.1;
		};
		_targetPos = getposATL _target;
		if(surfaceIsWater _targetPos) then
		{
			_targetPos = getposASL _target;
		};
		_distance=(_targetPos distance _me);
		(_me)doMove(_targetPos);
		_me setSpeedMode "FULL";
		if((_distance<=20)and(!_imHere))then
		{
			_imHere=true;
			//[_me, "idle"] spawn INF_fnc_NextSound;
			[[_me,"idle"], "INF_fnc_NextSound"] call BIS_fnc_MP;
		};
		if(_distance<=_range)then
		{
			if ((alive _me) and (alive _target))then
			{
				_me switchMove "AwopPercMstpSgthWnonDnon_throw";
				sleep 0.2;
				_target setDamage _damage;
				//[_me, "punch"] spawn INF_fnc_NextSound;
				[[_me,"punch"], "INF_fnc_NextSound"] call BIS_fnc_MP;
				sleep 2;
			};
		};
		if(!alive _target)then
		{
			sleep 2;
			_myTarget= _me call INF_fnc_EdnearestTarget;
		};
		if(_distance>100)then
		{
			_myTarget=_me call INF_fnc_EdnearestTarget;
		};

		sleep 1;
	};
	if(!alive _me)then
	{
		_me removeAllEventHandlers "hit";
		_me removeAllEventHandlers "HandleDammage";
	}else{
		[_me,_initialPos] spawn INF_fnc_Edroam;
	};
};