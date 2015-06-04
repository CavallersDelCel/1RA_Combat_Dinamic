EOS_Spawn = compile preprocessfilelinenumbers "eos\core\eos_launch.sqf";
Bastion_Spawn=compile preprocessfilelinenumbers "eos\core\b_launch.sqf";
null=[] execVM "eos\core\spawn_fnc.sqf";
onplayerConnected {[] execVM "eos\Functions\EOS_Markers.sqf";};

VictoryColor="colorBlue";	// Colour of marker after completion
hostileColor="colorRed";	// Default colour when enemies active
bastionColor="colorOrange";	// Colour for bastion marker
EOS_KILLCOUNTER=false;		// Counts killed units

_damageM = (paramsArray select 8);
if (_damageM == 10) then {_damageM = 0.5};
EOS_DAMAGE_MULTIPLIER=_damageM;