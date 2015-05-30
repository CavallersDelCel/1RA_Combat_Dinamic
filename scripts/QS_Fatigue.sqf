/*
File: QS_Fatigue.sqf
Script: Quiksilvers Modified Fatigue
Author:

	Quiksilver

Last Modified:

	28/02/2015 ArmA 3 1.38 by Quiksilver

Description:

	Custom Fatigue
	With default settings, provides approximately 2* or up to 3* stamina compared to default.

Instructions:

	Copy this file to your scenario main directory (contains other files such as description.ext, mission.sqm)

	Create a file called 'initPlayerLocal.sqf' in the same directory, if you do not have it already.

	In 'initPlayerLocal.sqf', paste the following line:

	[] execVM 'QS_Fatigue.sqf';

Credit:

	Credit to zooloo75 for the 'stumble' mechanics.

______________________________________________________*/
if !(hasInterface) exitWith {};

private ['_useVariableStamina','_useStumble'];

QS_fnc_fatigue = compileFinal "

	private ['_10mX','_20mX','_30mX','_40mX','_50mX','_60mX','_passOut','_t','_lowStamina','_highStamina','_exit'];

	_exit = FALSE;
	player setVariable ['QS_fatigue',1,FALSE];
	player setVariable ['QS_playerFatigued',FALSE,FALSE];

	_10mX = 0.985;
	_20mX = 0.9875;
	_30mX = 0.9925;
	_40mX = 0.995;
	_50mX = 0.9975;
	_60mX = 1;

	[] spawn {
		hintSilent 'You are now using Quiksilvers Modified Fatigue.';
		uiSleep 5;
		hintSilent '';
	};

	if (_exit) exitWith {};
	while {TRUE} do {
		if (!isNull player) then {
			if (alive player) then {
				if ((getFatigue player) >= 0.1) then {
					if ((getFatigue player) >= 0.2) then {
						if ((getFatigue player) >= 0.3) then {
							if ((getFatigue player) >= 0.4) then {
								if ((getFatigue player) >= 0.5) then {
									if ((getFatigue player) >= 0.61 && ((getFatigue player) <= 0.9)) then {
										if (!(player getVariable 'QS_playerFatigued')) then {
											if ((random 1) > 0.75) then {
												player setVariable ['QS_playerFatigued',TRUE,FALSE];
											} else {
												player setVariable ['QS_playerFatigued',TRUE,FALSE];
												[] spawn {uiSleep 30;player setVariable ['QS_playerFatigued',FALSE,FALSE];};
											};
										};
										player setFatigue ((getFatigue player) * _60mX);
									} else {
										player setFatigue ((getFatigue player) * _50mX);
									};
								} else {
									player setFatigue ((getFatigue player) * _40mX);
								};
							} else {
								player setFatigue ((getFatigue player) * _30mX);
							};
						} else {
							player setFatigue ((getFatigue player) * _20mX);
						};
					} else {
						player setFatigue ((getFatigue player) * _10mX);
					};
				};
			};
		};
		uiSleep 0.25;
	};
";

//==================================================== INIT

QS_EH_client_Fatigue = player addEventHandler ['Respawn',{player setVariable ['QS_playerFatigued',FALSE,FALSE];}];
[] spawn QS_fnc_fatigue;