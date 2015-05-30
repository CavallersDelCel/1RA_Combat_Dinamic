// by Bon_Inf*

if(not local player) exitWith{};
if((count (units group player) + count bon_recruit_queue) >= bon_max_units_allowed) exitWith {hint "You've reached the max. allowed group size."};


#include "dialog\definitions.sqf"
disableSerialization;

_display = findDisplay BON_RECRUITING_DIALOG;
_listbox = _display displayCtrl BON_RECRUITING_UNITLIST;
_sel = lbCurSel _listbox; if(_sel < 0) exitWith{};

_unittype = bon_recruit_recruitableunits select _sel;
_typename = lbtext [BON_RECRUITING_UNITLIST,_sel];

_queuepos = 0;
_queuecount = count bon_recruit_queue;
if(_queuecount > 0) then {
	_queuepos = (bon_recruit_queue select (_queuecount - 1)) + 1;
};
bon_recruit_queue = bon_recruit_queue + [_queuepos];


WaitUntil{_queuepos == bon_recruit_queue select 0};
sleep (0.1 * (_queuepos min 1));

sleep 0.1;




/********************* UNIT CREATION ********************/
_unit = group player createUnit [_unittype, NBAmmo2, [], 0, "FORM"];
_unit setRank "PRIVATE";
[_unit] execVM (BON_RECRUIT_PATH+"init_newunit.sqf");
/*******************************************************/

bon_recruit_queue = bon_recruit_queue - [_queuepos];