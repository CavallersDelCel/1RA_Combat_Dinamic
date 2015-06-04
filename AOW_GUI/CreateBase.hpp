class AOW_Dialog_Base
{
	idd=9961;
	movingenable=false;
	class controls
	{
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Cruoriss, v1.063, #Sufika)
////////////////////////////////////////////////////////
////////////////////////////////////////////////////////
// TASKSCREATOR
////////////////////////////////////////////////////////
class AOW_Frame: Cruoriss_RscText
{
	idc = -3;
	text = "All Out Warfare Base Creator"; //--- ToDo: Localize;
	x = 0.29864 * safezoneW + safezoneX;
	y = 0.236 * safezoneH + safezoneY;
	w = 0.402719 * safezoneW;
	h = 0.528 * safezoneH;
};
class AOW_BOX: Cruoriss_BOX
{
	idc = -3;
	x = 0.29864 * safezoneW + safezoneX;
	y = 0.236 * safezoneH + safezoneY;
	w = 0.402719 * safezoneW;
	h = 0.528 * safezoneH;
};

class AOW_Text: Cruoriss_Title
{
	idc = -3;
	text = $STR_AOW_Author1; //--- ToDo: Localize;
	x = 0.28 * safezoneW + safezoneX;
	y = 0.280 * safezoneH + safezoneY;
	w = 0.45 * safezoneW;
	h = 0.055 * safezoneH;
	sizeEx = "0.035 / (getResolution select 5)";
};
class AOW_Base_Button_1: Cruoriss_RscButton
{
	idc = -3;
	text = $STR_AOW_Random; //--- ToDo: Localize;
	x = 0.45 * safezoneW + safezoneX;
	y = 0.40 * safezoneH + safezoneY;
	w = 0.1 * safezoneW;
	h = 0.077 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
     action = "['random'] execVM 'AOW_MissionCreator\BaseCreator\Base2.sqf'";
};
class AOW_Base_Button_2: Cruoriss_RscButton
{
	idc = -3;
	text = $STR_AOW_On_map_click; //--- ToDo: Localize;
	x = 0.45 * safezoneW + safezoneX;
	y = 0.55 * safezoneH + safezoneY;
	w = 0.1 * safezoneW;
	h = 0.077 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
     action = "['manual'] execVM 'AOW_MissionCreator\BaseCreator\Base2.sqf'";
};
class AOW_Base_Combo: Cruoriss_RscCombo
{
	idc = 4602;
	x = 0.6 * safezoneW + safezoneX;
	y = 0.65 * safezoneH + safezoneY;
	w = 0.065 * safezoneW;
	h = 0.04 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
	tooltip = $STR_AOW_On_map_click2;
};
class AOW_Base_Button_3: Cruoriss_RscButton
{
	idc = 1601;
	text = $STR_AOW_Cancel; //--- ToDo: Localize;
	x = 0.31413 * safezoneW + safezoneX;
	y = 0.709 * safezoneH + safezoneY;
	w = 0.0464676 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
     action = "if (isNil 'baseFlagPole') then {hintSilent localize 'STR_AOW_On_map_click3'} else {closeDialog 0; deleteMarker 'TempBase'};";
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
};
};