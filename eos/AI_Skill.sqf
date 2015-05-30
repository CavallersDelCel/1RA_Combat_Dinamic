_AI1 = (paramsArray select 14);
_AI = _AI1/10;
// INFANTRY SKILL
_InfskillSet = [
_AI,        // aimingAccuracy
_AI,        // aimingShake
1,        // aimingSpeed
1,         // spotDistance
1,        // spotTime
1,        // courage
1,        // reloadSpeed
1,        // commanding
_AI,        // general
1         // endurance
];


// ARMOUR SKILL
_ArmSkillSet = [
_AI,        // aimingAccuracy
_AI,        // aimingShake
1,        // aimingSpeed
1,         // spotDistance
1,        // spotTime
1,        // courage
1,        // reloadSpeed
1,        // commanding
_AI,        // general
1         // endurance
];


// LIGHT VEHICLE skill
_LigSkillSet = [
_AI,        // aimingAccuracy
_AI,        // aimingShake
1,        // aimingSpeed
1,         // spotDistance
1,        // spotTime
1,        // courage
1,        // reloadSpeed
1,        // commanding
_AI,        // general
1         // endurance
];


// HELICOPTER SKILL
_AIRskillSet = [
0.1,        // aimingAccuracy
0.1,        // aimingShake
0.1,        // aimingSpeed
1,         // spotDistance
1,        // spotTime
1,        // courage
1,        // reloadSpeed
1,        // commanding
_AI,        // general
1         // endurance
];


// STATIC SKILL
_STAskillSet = [
0.5,        // aimingAccuracy
0.5,        // aimingShake
0.5,        // aimingSpeed
1,         // spotDistance
0.5,        // spotTime
1,        // courage
1,        // reloadSpeed
1,        // commanding
_AI,        // general
1         // endurance
];

server setvariable ["INFskill",_InfskillSet];
server setvariable ["ARMskill",_ArmSkillSet];
server setvariable ["LIGskill",_LigSkillSet];
server setvariable ["AIRskill",_AIRskillSet];
server setvariable ["STAskill",_STAskillSet];