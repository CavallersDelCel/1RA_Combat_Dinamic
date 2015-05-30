private ["_zombie","_return","_a","_b","_targetAngle","_eyeDir","_eyeAngle","_fogc"];
 _zombie = _this select 0;
 _target = _this select 1;
_return = false;

if ((_zombie distance _target) < 200) then {
	//Zombie smells player
	//hintSilent formatText ["Smelled: %1, Distance: %2", name _target, _zombie distance _target];
	_return = true;
};
_return
//};