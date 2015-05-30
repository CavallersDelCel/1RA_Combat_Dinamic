if (isServer || isDedicated) then {

  //#include "\userconfig\VCOM_AI\user_config.hpp"
  _InitialCode = false;
 _InitialCode = [] execVM "userconfig\VCOM_AI\AISettings.sqf";
  if (isNil "_InitialCode") then
  {
    _InitialCode = [] execVM "VCOMAI\DefaultSetting.sqf";
  };
  waitUntil {!(isNil "AccuracyFunctionRank0")};
  publicVariable "VCOM_USESMOKE_DEFINE";
  publicVariable "VCOM_Artillery_DEFINE";
  publicVariable "VCOM_AIDEBUG_DEFINE";
  publicVariable "VCOM_AIWarnDistance_DEFINE";
  publicVariable "VCOM_ADVANCEDDRIVING_DEFINE";
  publicVariable "VCOM_GARRISONEMPTYSTATICS_DEFINE";
  publicVariable "NOAI_FOR_PLAYERLEADERS_DEFINE";
  publicVariable "AccuracyFunctionRank6";
  publicVariable "AccuracyFunctionRank5";
  publicVariable "AccuracyFunctionRank4";
  publicVariable "AccuracyFunctionRank3";
  publicVariable "AccuracyFunctionRank2";
  publicVariable "AccuracyFunctionRank1";
  publicVariable "AccuracyFunctionRank0";

 };



//Define certain variables here
//Counting the # of bullets fired
FiredBulletCount = 0;
//Set Debug information below
VCOM_AIDEBUG = VCOM_AIDEBUG_DEFINE; //1 is on, 0 is off. Not recommended to have on for large # of AI. Will destroy any computer. (Spawn's infinite amount of markers to track AI).
MarkerName = 0; //Do not touch! Used to define a name for later use. DEBUG TOOL
MarkerArray = []; //Do not touch! Used to define an array for later use. DEBUG TOOL

//Compile important functions below.
call compile preProcessFile "VCOMAI\FSMFunctions\configFunctions.sqf";
FiredAtTarget = compile preprocessFile "VCOMAI\FSMFunctions\HitNear.sqf";
AIPath = compile preprocessFile "VCOMAI\FSMFunctions\Aiwaypoint.sqf";
VCOM_fnc_ClosestEnemy = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_ClosestEnemy.sqf";
VCOM_fnc_Garrison = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_Garrison.sqf";
VCOM_fnc_LightGarrison = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_LightGarrison.sqf";
Vcom_fnc_VehicleHandle = compile preprocessFile "VCOMAI\FSMFunctions\Vcom_fnc_VehicleHandle.sqf";
VCOM_fnc_ClosestAllyWarn = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_ClosestAllyWarn.sqf";
//VCOM_fnc_KnockDown = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_KnockDown.sqf";
VCOM_fnc_BlowBuilding = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_BlowBuilding.sqf";
VCOM_fnc_HasMine = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_HasMine.sqf";
VCOM_fnc_ReactToFireGrenade = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_ReactToFireGrenade.sqf";
//VCOM_fnc_ReactToFireSuppressed = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_ReactToFireSuppressed.sqf";
VCOM_fnc_classVehicle = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_classVehicle.sqf";
VCOM_fnc_MagClass = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_MagClass.sqf";
VCOM_fnc_ChangeFormation = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_ChangeFormation.sqf";
VCOM_fnc_CheckBag = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_CheckBag.sqf";
VCOM_fnc_GuessDirection = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_GuessDirection.sqf";
VCOM_fnc_ReactToFire = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_ReactToFire.sqf";
VCOM_fnc_ReactToFireLite = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_ReactToFireLite.sqf";
playMoveEverywhere = compileFinal "_this select 0 playMoveNow (_this select 1);";
switchMoveEverywhere = compileFinal "_this select 0 switchMove (_this select 1);";
Vcom_fnc_pack = compile preprocessFile "VCOMAI\FSMFunctions\Vcom_fnc_pack.sqf";
Vcom_fnc_unpack = compile preprocessFile "VCOMAI\FSMFunctions\Vcom_fnc_unpack.sqf";
//VCOM_fnc_HandledHeal = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_HandledHeal.sqf";
VCOM_EraseMarkers = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_Erasemarker.sqf";
//VCOM_DownedAI = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_DownedAI.sqf";
VCOM_fnc_Artillery = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_Artillery.sqf";
VCOM_fnc_ArtilleryCalled = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_ArtilleryCalled.sqf";

//New Functions
VCOM_fnc_DetermineRank = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_DetermineRank.sqf";
VCOM_fnc_DetermineLeader = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_DetermineLeader.sqf";
VCOM_fnc_EvasiveAI = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_EvasiveAI.sqf";
VCOM_fnc_IsDriver = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_IsDriver.sqf";
VCOM_fnc_HitAI = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_HitAI.sqf";
VCOM_fnc_RagDoll = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_RagDoll.sqf";
VCOM_fnc_CuratorCheck = compile preprocessFile "VCOMAI\CuratorControls\CuratorCheck.sqf";
VCOM_fnc_CuratorWaypointFORCE = compile preprocessFile "VCOMAI\CuratorControls\VCOM_fnc_CuratorWaypointFORCE.sqf";
VCOM_fnc_DefineSides = compile preprocessFile "VCOMAI\CuratorControls\DefineSides.sqf";
VCOM_fnc_VehicleDetection = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_VehicleDetection.sqf";
VCOM_GroupThreat = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_GroupThreat.sqf";
VCOM_fnc_ArmStatic = compile preprocessFile "VCOMAI\FSMFunctions\VCOM_fnc_ArmStatic.sqf";


//The distance AI squads will communicate to each other. This can be changed per unit and is not retroactive.
VCOM_AIWarnDistance = VCOM_AIWarnDistance_DEFINE;

//AI using smoke. 1 is on.
VCOM_USESMOKE = VCOM_USESMOKE_DEFINE;

//Turn on advanced AI driving. 1 is on.
VCOM_ADVANCEDDRIVING = VCOM_ADVANCEDDRIVING_DEFINE;

//AI will use artillery freely
VCOM_Artillery = VCOM_Artillery_DEFINE;

//Will AI garrison empty statics during combat? 1 is on.
VCOM_STATICGARRISON = VCOM_GARRISONEMPTYSTATICS_DEFINE;

//Player group leaders will get more control over their own AI
NOAI_FOR_PLAYERLEADERS = NOAI_FOR_PLAYERLEADERS_DEFINE;

//Artillery unit array. This will automatically fill and empty in the game. Put units in here only if it is SUPER time sensitive.
ArtilleryArray = [];

//Below is loop to check for new AI spawning in to be added to the list

[] spawn
{
if (!(isDedicated)) then {
waitUntil {!isNil "BIS_fnc_init"};
waitUntil {!(isnull (findDisplay 46))};
};

[] execVM "VCOMAI\CuratorControls\init.sqf";

while {true} do {

sleep 0.25;
{
if (local _x) then {
_CheckVariable = _x getVariable "FSMRunning";
if (isNil ("_CheckVariable")) then {_CheckVariable = 0;};
if (!(isplayer _x) && (_CheckVariable == 0)) then {null = [_x] execFSM "VCOMAI\AIBEHAVIORNEW.fsm";};
if ((isPlayer _x)  && (_CheckVariable == 0)) then {
player setVariable ["VCOM_FiredTime", 0];
player setVariable ["PLAYERCOMMANDER", 1];
player addEventHandler ["Fired",{null = [_this] call FiredAtTarget;}];
player setVariable ["FSMRunning",1,false];
};
};
} forEach allUnits;
sleep 5;

sleep 1;
};
};