class AOW_Dialog_Spawner
{
	idd=9975;
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
class AOW_Base_Button_2: Cruoriss_RscButton
{
	idc = -3;
	text = $STR_AOW_Confirm; //--- ToDo: Localize;
	x = 0.45 * safezoneW + safezoneX;
	y = 0.55 * safezoneH + safezoneY;
	w = 0.1 * safezoneW;
	h = 0.077 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
     action = "if (AOW_Selected_Spawner == 2) then {[] execVM 'AOW_MissionCreator\BaseCreator\VPlane1.sqf'} else {[] execVM 'AOW_MissionCreator\BaseCreator\VShip1.sqf'};";
};
class AOW_Base_Combo: Cruoriss_RscCombo
{
	idc = 4602;
	x = 0.47 * safezoneW + safezoneX;
	y = 0.39 * safezoneH + safezoneY;
	w = 0.065 * safezoneW;
	h = 0.04 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
	tooltip = $STR_AOW_Spawn_Dir;
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
     action = "closeDialog 0";
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
};
};