//This script is only ran IF the userconfig folder is not installed properly.
//This script is for defining basic settings for the AI
//1 - is on. 0 - is off.
VCOM_USESMOKE_DEFINE = 1; //Should the AI use smoke grenades in battle?
VCOM_Artillery_DEFINE = 1; //Should AI be able to call for artillery? Artillery must already be present on map
VCOM_AIDEBUG_DEFINE = 0; //Would you like to run the debug code?
VCOM_ADVANCEDDRIVING_DEFINE = 1; //Would you like to enable advanced driving for AI? It makes them avoid obstacles.......because they don't do it by themselves all the time.....logic....ITS A GOOD GAME
VCOM_GARRISONEMPTYSTATICS_DEFINE = 1; //Should the AI garrison empty statics nearby?
NOAI_FOR_PLAYERLEADERS_DEFINE = 1; //Player group leaders will get more control over their AI

//The default distance AI will respond to others in need
VCOM_AIWarnDistance_DEFINE = 700; //What is the range that AI should respond to others in need?


//AI ACCURACY SETTINGS - You can change these numbers below
//Colonel Level AI
_AI1 = (paramsArray select 14);
AIskill = _AI1/10;
AccuracyFunctionRank6 = {
_Unit = _this select 0;

_Unit setSkill ["aimingAccuracy",AIskill];
_Unit setSkill ["aimingShake",AIskill];
_Unit setSkill ["spotDistance",1];
_Unit setSkill ["spotTime",1];
_Unit setSkill ["courage",1];
_Unit setSkill ["commanding",1];
_Unit setSkill ["aimingSpeed",1];
_Unit setSkill ["general",AIskill];
_Unit setSkill ["endurance",1];
_Unit setSkill ["reloadSpeed",1];
};
//Major Level AI
AccuracyFunctionRank5 = {
_Unit = _this select 0;

_Unit setSkill ["aimingAccuracy",AIskill];
_Unit setSkill ["aimingShake",AIskill];
_Unit setSkill ["spotDistance",1];
_Unit setSkill ["spotTime",1];
_Unit setSkill ["courage",1];
_Unit setSkill ["commanding",1];
_Unit setSkill ["aimingSpeed",1];
_Unit setSkill ["general",AIskill];
_Unit setSkill ["endurance",1];
_Unit setSkill ["reloadSpeed",1];
};
//Captain Level AI
AccuracyFunctionRank4 = {
_Unit = _this select 0;

_Unit setSkill ["aimingAccuracy",AIskill];
_Unit setSkill ["aimingShake",AIskill];
_Unit setSkill ["spotDistance",1];
_Unit setSkill ["spotTime",1];
_Unit setSkill ["courage",1];
_Unit setSkill ["commanding",1];
_Unit setSkill ["aimingSpeed",1];
_Unit setSkill ["general",AIskill];
_Unit setSkill ["endurance",1];
_Unit setSkill ["reloadSpeed",1];
};
//Lieutenant Level AI
AccuracyFunctionRank3 = {
_Unit = _this select 0;

_Unit setSkill ["aimingAccuracy",AIskill];
_Unit setSkill ["aimingShake",AIskill];
_Unit setSkill ["spotDistance",1];
_Unit setSkill ["spotTime",1];
_Unit setSkill ["courage",1];
_Unit setSkill ["commanding",1];
_Unit setSkill ["aimingSpeed",1];
_Unit setSkill ["general",AIskill];
_Unit setSkill ["endurance",1];
_Unit setSkill ["reloadSpeed",1];
};
//Sergeant Level AI
AccuracyFunctionRank2 = {
_Unit = _this select 0;

_Unit setSkill ["aimingAccuracy",AIskill];
_Unit setSkill ["aimingShake",AIskill];
_Unit setSkill ["spotDistance",1];
_Unit setSkill ["spotTime",1];
_Unit setSkill ["courage",1];
_Unit setSkill ["commanding",1];
_Unit setSkill ["aimingSpeed",1];
_Unit setSkill ["general",AIskill];
_Unit setSkill ["endurance",1];
_Unit setSkill ["reloadSpeed",1];
};
//Corporal Level AI
AccuracyFunctionRank1 = {
_Unit = _this select 0;

_Unit setSkill ["aimingAccuracy",AIskill];
_Unit setSkill ["aimingShake",AIskill];
_Unit setSkill ["spotDistance",1];
_Unit setSkill ["spotTime",1];
_Unit setSkill ["courage",1];
_Unit setSkill ["commanding",1];
_Unit setSkill ["aimingSpeed",1];
_Unit setSkill ["general",AIskill];
_Unit setSkill ["endurance",1];
_Unit setSkill ["reloadSpeed",1];
};
//Private Level AI
AccuracyFunctionRank0 = {
_Unit = _this select 0;

_Unit setSkill ["aimingAccuracy",AIskill];
_Unit setSkill ["aimingShake",AIskill];
_Unit setSkill ["spotDistance",1];
_Unit setSkill ["spotTime",1];
_Unit setSkill ["courage",1];
_Unit setSkill ["commanding",1];
_Unit setSkill ["aimingSpeed",1];
_Unit setSkill ["general",AIskill];
_Unit setSkill ["endurance",1];
_Unit setSkill ["reloadSpeed",1];
};