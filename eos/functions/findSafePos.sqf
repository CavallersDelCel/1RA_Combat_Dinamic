_mrk=(_this select 0);
_radveh	=(_this select 1);

		_pos = [_mkr,true] call SHK_pos;

if (_this select 2 == 1) then {
	for "_counter" from 0 to 20 do {
				_newpos = [_pos,0,_radveh,5,0,2,0] call BIS_fnc_findSafePos;
					if ((_pos distance _newpos) < (_radveh + 5))
						exitWith {
							_pos = _newpos;
								};
				};
} else {


			for "_counter" from 0 to 20 do {
				_newpos = [_pos,0,_radveh,5,1,20,0] call BIS_fnc_findSafePos;
					if ((_pos distance _newpos) < (_radveh + 5))
						exitWith {
							_pos = _newpos;
								};
				};
};
_pos