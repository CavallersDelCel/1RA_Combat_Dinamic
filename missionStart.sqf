// Choose a random player who will locate the base

_allPlayers = [];
if (isMultiplayer) then {
	waitUntil {count playableUnits > 0};
		{
		if (isPlayer _x) then {
			_allPlayers pushBack _x; };
		} forEach playableUnits;
};

if (!isMultiplayer) then {// Playable units return nothing in singleplayer, code used for editor testing
		{
		if (isPlayer _x) then {
			_allPlayers pushBack _x; };
		} forEach allUnits;
};

// Modificació dels Cavallers del Cel per CC_Magnetar. La base la crea sempre el jugador a la posició de Zeus
// cas de que aquesta estigui ocupada (el líder d'esquadra). En cas contrari es fa de forma aleatòria.
if (isPlayer zeus1) then {
	AOW_base_creation_player = zeus1;
} else {
	AOW_base_creation_player = _allPlayers call bis_fnc_selectRandom;
};

publicVariable "AOW_base_creation_player";