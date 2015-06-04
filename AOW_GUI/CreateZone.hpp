class AOW_Dialog1
{
	idd=9963;
	movingenable=false;
	class controls
	{
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Cruoriss, v1.063, #Nozuso)
////////////////////////////////////////////////////////
////////////////////////////////////////////////////////
// ZONE CREATOR
////////////////////////////////////////////////////////
class MTHI_Frame: Cruoriss_RscFrame
{
	idc = -2;
	x = 0.29864 * safezoneW + safezoneX;
	y = 0.236 * safezoneH + safezoneY;
	w = 0.402719 * safezoneW;
	h = 0.528 * safezoneH;
};
class MTHI_BOX: Cruoriss_BOX
{
	idc = -2;
	x = 0.29864 * safezoneW + safezoneX;
	y = 0.236 * safezoneH + safezoneY;
	w = 0.402719 * safezoneW;
	h = 0.528 * safezoneH;
};
class AOW_Zone_Combo_1: Cruoriss_RscCombo
{
	idc = 4701;
	x = 0.31413 * safezoneW + safezoneX;
	y = 0.401 * safezoneH + safezoneY;
	w = 0.0671199 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
	tooltip = $STR_AOW_Def_Pos1;
};
class AOW_Zone_Combo_2: Cruoriss_RscCombo
{
	idc = 4702;
	x = 0.31413 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.0671199 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
	tooltip = $STR_AOW_Def_Pos2;
};
class AOW_Zone_Combo_3: Cruoriss_RscCombo
{
	idc = 4703;
	x = 0.470185 * safezoneW + safezoneX;
	y = 0.401 * safezoneH + safezoneY;
	w = 0.0671199 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
	tooltip = $STR_AOW_Infantry3;
};
class AOW_Zone_Combo_4: Cruoriss_RscCombo
{
	idc = 4704;
	x = 0.470185 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.0671199 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
	tooltip = $STR_AOW_Size_Infantry4;
};
class AOW_Zone_Combo_5: Cruoriss_RscCombo
{
	idc = 4705;
	x = 0.598098 * safezoneW + safezoneX;
	y = 0.401 * safezoneH + safezoneY;
	w = 0.0671199 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
	tooltip = $STR_AOW_Moto3;
};
class AOW_Zone_Combo_6: Cruoriss_RscCombo
{
	idc = 4706;
	x = 0.598098 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.0671199 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
	tooltip = $STR_AOW_Armored3;
};
class AOW_Zone_Combo_7: Cruoriss_RscCombo
{
	idc = 4707;
	x = 0.31413 * safezoneW + safezoneX;
	y = 0.621 * safezoneH + safezoneY;
	w = 0.0671199 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
	tooltip = $STR_AOW_Static_W;
};
class AOW_Zone_Combo_8: Cruoriss_RscCombo
{
	idc = 4708;
	x = 0.470185 * safezoneW + safezoneX;
	y = 0.621 * safezoneH + safezoneY;
	w = 0.0671199 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
	tooltip = $STR_AOW_Air3;
};
class AOW_Zone_Text_1: Cruoriss_Title
{
	idc = 1000;
	text = $STR_AOW_Author1; //--- ToDo: Localize;
	x = 0.345 * safezoneW + safezoneX;
	y = 0.24 * safezoneH + safezoneY;
	w = 0.31 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.035 / (getResolution select 5)";
};
class AOW_Zone_Text_2: Cruoriss_RscText
{
	idc = 1001;
	text = $STR_AOW_Infantry_D; //--- ToDo: Localize;
	x = 0.293477 * safezoneW + safezoneX;
	y = 0.346 * safezoneH + safezoneY;
	w = 0.113587 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
};
class AOW_Zone_Text_3: Cruoriss_RscText
{
	idc = 1002;
	text = $STR_AOW_Size_Infantry_D; //--- ToDo: Localize;
	x = 0.29 * safezoneW + safezoneX;
	y = 0.456 * safezoneH + safezoneY;
	w = 0.13424 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
};
class AOW_Zone_Text_4: Cruoriss_RscText
{
	idc = 1003;
	text = $STR_AOW_Infantry_P; //--- ToDo: Localize;
	x = 0.46158 * safezoneW + safezoneX;
	y = 0.346 * safezoneH + safezoneY;
	w = 0.0826091 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
};
class AOW_Zone_Text_5: Cruoriss_RscText
{
	idc = 1004;
	text = $STR_AOW_Size_Infantry_P; //--- ToDo: Localize;
	x = 0.449532 * safezoneW + safezoneX;
	y = 0.456 * safezoneH + safezoneY;
	w = 0.113587 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
};
class AOW_Zone_Text_6: Cruoriss_RscText
{
	idc = 1005;
	text = $STR_AOW_Motorized; //--- ToDo: Localize;
	x = 0.587772 * safezoneW + safezoneX;
	y = 0.346 * safezoneH + safezoneY;
	w = 0.0929352 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
};
class AOW_Zone_Text_7: Cruoriss_RscText
{
	idc = 1006;
	text = $STR_AOW_Armored; //--- ToDo: Localize;
	x = 0.587772 * safezoneW + safezoneX;
	y = 0.456 * safezoneH + safezoneY;
	w = 0.0877721 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
};
class AOW_Zone_Text_8: Cruoriss_RscText
{
	idc = 1007;
	text = $STR_AOW_Static; //--- ToDo: Localize;
	x = 0.308967 * safezoneW + safezoneX;
	y = 0.566 * safezoneH + safezoneY;
	w = 0.0826091 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
};
class AOW_Zone_Text_9: Cruoriss_RscText
{
	idc = 1008;
	text = $STR_AOW_Air; //--- ToDo: Localize;
	x = 0.465022 * safezoneW + safezoneX;
	y = 0.566 * safezoneH + safezoneY;
	w = 0.077446 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
};
class AOW_Zone_Button_2: Cruoriss_RscButton
{
	idc = 1600;
	text = $STR_AOW_Create; //--- ToDo: Localize;
	x = 0.629077 * safezoneW + safezoneX;
	y = 0.704 * safezoneH + safezoneY;
	w = 0.0413045 * safezoneW;
	h = 0.055 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
    action = "_nul = execVM ""AOW_MissionCreator\ZoneCreator\Zone2.sqf""";
};
class AOW_Zone_Button_1: Cruoriss_RscButton
{
	idc = 1601;
	text = $STR_AOW_Cancel; //--- ToDo: Localize;
	x = 0.329619 * safezoneW + safezoneX;
	y = 0.704 * safezoneH + safezoneY;
	w = 0.0413045 * safezoneW;
	h = 0.055 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
     action = "closeDialog 0; deleteMarker 'TempZone';";
};
class AOW_Zone_Text_10: Cruoriss_RscText
{
	idc = 1009;
	text = $STR_AOW_Faction; //--- ToDo: Localize;
	x = 0.592935 * safezoneW + safezoneX;
	y = 0.566 * safezoneH + safezoneY;
	w = 0.077446 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
};
class AOW_Zone_Combo_9: Cruoriss_RscCombo
{
	idc = 4709;
	x = 0.598098 * safezoneW + safezoneX;
	y = 0.621 * safezoneH + safezoneY;
	w = 0.0671199 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
	tooltip = $STR_AOW_Faction2;
};
class AOW_Zone_Combo_11: Cruoriss_RscCombo
{
	idc = 4710;
	x = 0.505163 * safezoneW + safezoneX;
	y = 0.725 * safezoneH + safezoneY;
	w = 0.0464676 * safezoneW;
	h = 0.033 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
};
class AOW_Zone_Combo_10: Cruoriss_RscCombo
{
	idc = 4711;
	x = 0.438043 * safezoneW + safezoneX;
	y = 0.725 * safezoneH + safezoneY;
	w = 0.0464676 * safezoneW;
	h = 0.033 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
};
class AOW_Zone_Text_11: Cruoriss_RscText
{
	idc = 1000;
	text = $STR_AOW_Zone_size; //--- ToDo: Localize;
	x = 0.391576 * safezoneW + safezoneX;
	y = 0.695 * safezoneH + safezoneY;
	w = 0.060 * safezoneW;
	h = 0.033 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
};
class AOW_Zone_Text_12: Cruoriss_RscText
{
	idc = 1001;
	text = "X"; //--- ToDo: Localize;
	x = 0.453532 * safezoneW + safezoneX;
	y = 0.700 * safezoneH + safezoneY;
	w = 0.0154892 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
};
class AOW_Zone_Text_13: Cruoriss_RscText
{
	idc = 1002;
	text = "Y"; //--- ToDo: Localize;
	x = 0.520652 * safezoneW + safezoneX;
	y = 0.700 * safezoneH + safezoneY;
	w = 0.0103261 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
};
class AOW_Zone_ListBox_1: Cruoriss_RscCombo
{
	idc = 4731;
	x = 0.45 * safezoneW + safezoneX;
	y = 0.30 * safezoneH + safezoneY;
	w = 0.10	 * safezoneW;
	h = 0.03 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
	tooltip = $STR_AOW_Manual1;
};
class AOW_Zone_Checkbox_1: Cruoriss_RscCheckbox
{
	idc = 4732;
	onCheckedChanged = "if(AOW_Checkbox) then {AOW_Checkbox = false;} else {AOW_Checkbox = true;};";
	x = 0.57 * safezoneW + safezoneX;
	y = 0.725 * safezoneH + safezoneY;
	w = 0.03	 * safezoneW;
	h = 0.03 * safezoneH;
	tooltip = $STR_AOW_Check_Box;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
};
};