//Created on 8/15/14
// Modified on : 9/1/14 - Made animations global

_Unit = _this select 0;
if (isPlayer _Unit) exitWith {};
_CurrentWeapon = currentWeapon _Unit;


//If the unit has no weapon... just exit.
if (_CurrentWeapon == "") exitWith {};

_UnitNerves = _Unit getvariable "VCOM_NERVES";	
_RandomChance = random 100;
_RandomChance = _RandomChance + _UnitNerves;

//Idea to have units accidently discharge their weapons due to fear? Might be simply annoying. It depends on their nerves
if(_RandomChance > 90) then
{
  _Unit forceWeaponFire [_CurrentWeapon, "Single"];
};

_GetDamage = getDammage _Unit;
if (_GetDamage <= 0.3) then {
	_Random0 = Random 100;
	if (_Random0 >= 50) then 
	{
		[_Unit] call Vcom_fnc_RagDoll;
	};

};

_RandomChance2 = random 100;
if (_RandomChance2 > 20) then {

_RandomAnimation = ["AmovPknlMevaSrasWrflDr","AmovPercMevaSrasWrflDfr_AmovPknlMstpSrasWrflDnon","AmovPercMstpSrasWrflDnon_AadjPpneMstpSrasWrflDleft","AmovPercMevaSrasWrflDf_AmovPknlMstpSrasWrflDnon","AmovPercMstpSrasWrflDnon_AadjPpneMstpSrasWrflDright","AmovPercMevaSrasWrflDfl_AmovPknlMstpSrasWrflDnon","AmovPercMevaSrasWrflDl","AmovPercMevaSrasWrflDr","AmovPknlMevaSrasWrflDf","AovrPercMrunSrasWrflDf","AmovPknlMevaSrasWrflDr","AmovPknlMevaSrasWrflDl"] call BIS_fnc_selectRandom;
//_runto = [(getPosASL _Unit select 0) + (random 10) - (random 10),(getPosASL _Unit select 1) + (random 10 - random 10),0];
//player sidechat format ["_RandomAnimation: %1",_RandomAnimation];
//_Unit switchMove _RandomAnimation;
UnitAnimation11 = _Unit;
[[UnitAnimation11,_RandomAnimation],"switchMoveEverywhere"] call BIS_fnc_MP;		
		
if (_RandomAnimation == "AmovPercMstpSrasWrflDnon_AadjPpneMstpSrasWrflDright") then {
[_Unit] spawn {
_Unit = _this select 0;
sleep (2 + (random 4));
//_Unit switchMove "AmovPpneMevaSlowWrflDf";
UnitAnimation11 = _Unit;
[[UnitAnimation11,"AmovPpneMevaSlowWrflDf"],"switchMoveEverywhere"] call BIS_fnc_MP;
};
};


if (_RandomAnimation == "AmovPercMstpSrasWrflDnon_AadjPpneMstpSrasWrflDleft") then {
[_Unit] spawn {
_Unit = _this select 0;
sleep (2 + (random 4));
//_Unit switchMove "AmovPpneMevaSlowWrflDf";
UnitAnimation11 = _Unit;
[[UnitAnimation11,"AmovPpneMevaSlowWrflDf"],"switchMoveEverywhere"] call BIS_fnc_MP;
};
};


//_Unit doMove _runto;
[_Unit] call VCOM_fnc_ReactToFire;




};

_GrenadeChance = random 100;
if (_GrenadeChance > 50) then {
[_Unit] spawn VCOM_fnc_ReactToFireGrenade;

};
