_zombie = 0;
_grp=(_this select 0);
_skillArray=(_this select 1);
if (_this select 2 == 1) then {_zombie = 1} else {_grp allowFleeing 0;};



_skillset = server getvariable _skillArray;

{

    _unit = _x;

    if (side _unit != CIVILIAN) then {

            if (_zombie == 1) then {
                if (paramsArray select 13 == 2) then {_unit setVariable ["NOAI",1,false];};
                _unit setSkill 0;
                removeAllWeapons _unit;
                _infect = _unit spawn INF_fnc_infecthim;
                waitUntil {scriptDone _infect};
                _unit addEventHandler ["HandleDamage",{if (((_this select 1) in ["head"]) && (_this select 2 >= 2)) then {(_this select 0) setDamage 1;}else{(_this select 0) setDamage 0;};}];
                _unit setVariable ["BIS_noCoreConversations", true]

            } else {

        {
        _skillvalue = (_skillset select _forEachIndex);
        _unit setSkill [_x,_skillvalue];
    } forEach ['aimingAccuracy','aimingShake','aimingSpeed','spotDistance','spotTime','courage','reloadSpeed','commanding','general','endurance'];


    if (EOS_DAMAGE_MULTIPLIER != 1) then {
        _unit addeventhandler ["HandleDamage",{
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
};
} else {
    // Disable VCOM AI if used
    if (paramsArray select 13 == 2) then {_unit setVariable ["NOAI",1,false];};
    _unit setSkill 0;
    if (_zombie == 1) then {
    _infect = _unit spawn INF_fnc_infecthim;
    waitUntil {scriptDone _infect};
    _unit addEventHandler ["HandleDamage",{if (((_this select 1) in ["head"]) && (_this select 2 >= 0.8)) then {(_this select 0) setDamage 1;}else{(_this select 0) setDamage 0;};}];
    _unit setVariable ["BIS_noCoreConversations", true]
    };
};
} forEach (units _grp);