_AIskill = (paramsArray select 14)/10;

// INFANTRY SKILL
_InfskillSet = [
_AISkill,        // aimingAccuracy
_AISkill,        // aimingShake
_AISkill,        // aimingSpeed
_AISkill,         // spotDistance
_AISkill,        // spotTime
1,        // courage
_AISkill,        // reloadSpeed
_AISkill,        // commanding
_AISkill        // general
];


// ARMOUR SKILL
_ArmSkillSet = [
_AISkill,        // aimingAccuracy
_AISkill,        // aimingShake
_AISkill,        // aimingSpeed
_AISkill,         // spotDistance
_AISkill,        // spotTime
1,        // courage
_AISkill,        // reloadSpeed
_AISkill,        // commanding
_AISkill       // general
];


// LIGHT VEHICLE skill
_LigSkillSet = [
_AISkill,        // aimingAccuracy
_AISkill,        // aimingShake
_AISkill,        // aimingSpeed
_AISkill,         // spotDistance
_AISkill,        // spotTime
1,        // courage
_AISkill,        // reloadSpeed
_AISkill,        // commanding
_AISkill        // general
];


// HELICOPTER SKILL
_AIRskillSet = [
_AISkill,        // aimingAccuracy
_AISkill,        // aimingShake
_AISkill,        // aimingSpeed
_AISkill,         // spotDistance
_AISkill,        // spotTime
1,        // courage
_AISkill,        // reloadSpeed
_AISkill,        // commanding
_AISkill        // general
];


// STATIC SKILL
_STAskillSet = [
_AISkill,        // aimingAccuracy
_AISkill,        // aimingShake
_AISkill,        // aimingSpeed
_AISkill,         // spotDistance
_AISkill,        // spotTime
1,        // courage
_AISkill,        // reloadSpeed
_AISkill,        // commanding
_AISkill        // general
];

server setvariable ["INFskill",_InfskillSet];
server setvariable ["ARMskill",_ArmSkillSet];
server setvariable ["LIGskill",_LigSkillSet];
server setvariable ["AIRskill",_AIRskillSet];
server setvariable ["STAskill",_STAskillSet];