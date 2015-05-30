//ARMA3Alpha function LV_fnc_ACskills v0.8 - by SPUn / lostvar
//adjusts AI skills
private ["_group","_skills","_skillArray"];
_group = _this select 0;
_group allowFleeing 0;
_skills = _this select 1;

if(typeName _skills == "SCALAR")then{
	_skillArray = [_skills,_skills,_skills,_skills,_skills,_skills,_skills,_skills,_skills,_skills];
}else{
	_skillArray = [(_skills select 0),(_skills select 1),(_skills select 2),(_skills select 3),(_skills select 4),(_skills select 5),(_skills select 6),(_skills select 7),(_skills select 8),(_skills select 9)];
};

{
	_x setSkill ["aimingAccuracy",(_skillArray select 0)];
	_x setSkill ["aimingShake",(_skillArray select 1)];
    _x setSkill ["aimingSpeed",(_skillArray select 2)];
    _x setSkill ["spotDistance",(_skillArray select 3)];
    _x setSkill ["spotTime",(_skillArray select 4)];
    _x setSkill ["courage",(_skillArray select 5)];
    _x setSkill ["commanding",(_skillArray select 6)];
    _x setSkill ["general",(_skillArray select 7)];
	_x setSkill ["endurance",(_skillArray select 8)];
	_x setSkill ["reloadspeed",(_skillArray select 9)];

	if (EOS_DAMAGE_MULTIPLIER != 1) then {
        _x addeventhandler ["HandleDamage",{
        _target = _this select 0;
        _selection = _this select 1;
        _passedDamage = _this select 2;
        _source = _this select 3;
        _projectile = _this select 4;
        _oldDamage = 0;
        switch(_selection)do{
        case("head"):{_oldDamage = _target getHitPointDamage "HitHead";};
        case("body"):{_oldDamage = _target getHitPointDamage "HitBody";};
        case("hands"):{_oldDamage = _target getHitPointDamage "HitHands";};
        case("legs"):{_oldDamage = _target getHitPointDamage "HitLegs";};
        case(""):{_oldDamage = damage _target;};
        default{};};
        _return = _oldDamage + ((_passedDamage - _oldDamage) * EOS_DAMAGE_MULTIPLIER);
        _return
    }];
};
}forEach units group _group;