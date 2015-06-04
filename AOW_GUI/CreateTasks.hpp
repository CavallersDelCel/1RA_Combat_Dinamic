class AOW_Dialog
{
	idd=9964;
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
	text = "All Out Warfare Mission Creator"; //--- ToDo: Localize;
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
class AOW_Tasks_Combo: Cruoriss_RscCombo
{
	idc = 4601;
	x = 0.443206 * safezoneW + safezoneX;
	y = 0.412 * safezoneH + safezoneY;
	w = 0.113587 * safezoneW;
	h = 0.066 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
};
class AOW_Tasks_Button: Cruoriss_RscButton
{
	idc = -3;
	text = $STR_AOW_Create; //--- ToDo: Localize;
	x = 0.463859 * safezoneW + safezoneX;
	y = 0.544 * safezoneH + safezoneY;
	w = 0.0671199 * safezoneW;
	h = 0.077 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
    action = "_nul = execVM ""AOW_MissionCreator\TasksCreator\Tasks2.sqf""";
};
class AOW_Tasks_Button1: Cruoriss_RscButton
{
	idc = 1601;
	text = $STR_AOW_Cancel; //--- ToDo: Localize;
	x = 0.31413 * safezoneW + safezoneX;
	y = 0.709 * safezoneH + safezoneY;
	w = 0.0464676 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
    action = "closeDialog 0; deleteMarker ""TempTask"";";
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
};
};