class AOW_Menu_Dialog
{
	idd=-2;
	movingenable=false;
	class controls
	{
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Cruoriss, v1.063, #Fehabi)
////////////////////////////////////////////////////////
////////////////////////////////////////////////////////
// AOW MENU
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
class MTHI_TEXT_1: Cruoriss_Title
{
	idc = -2;
	text = $STR_AOW_Author1; //--- ToDo: Localize;
	x = 0.303803 * safezoneW + safezoneX;
	y = 0.269 * safezoneH + safezoneY;
	w = 0.392393 * safezoneW;
	h = 0.066 * safezoneH;
	sizeEx = "0.035 / (getResolution select 5)";
};
class MTHI_GUI_4: Cruoriss_RscButton
{
	idc = -2;
	text = $STR_AOW_Close; //--- ToDo: Localize;
	x = 0.469022 * safezoneW + safezoneX;
	y = 0.467 * safezoneH + safezoneY;
	w = 0.0413045 * safezoneW;
	h = 0.055 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
     action = "closeDialog 0";
};
class MTHI_TEXT_3: Cruoriss_RscText
{
	idc = -2;
	text = $STR_AOW_MHQ_Functions; //--- ToDo: Localize;
	x = 0.32 * safezoneW + safezoneX;
	y = 0.61 * safezoneH + safezoneY;
	w = 0.089 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
};
class MTHI_TEXT_4: Cruoriss_RscText
{
	idc = -2;
	text = $STR_AOW_Misc_Functions; //--- ToDo: Localize;
	x = 0.58 * safezoneW + safezoneX;
	y = 0.357 * safezoneH + safezoneY;
	w = 0.089 * safezoneW;
	h = 0.044 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
};
class AOW_Base_Combo: Cruoriss_RscCombo
{
	idc = 4603;
	x = 0.305 * safezoneW + safezoneX;
	y = 0.682 * safezoneH + safezoneY;
	w = 0.065 * safezoneW;
	h = 0.04 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
	tooltip = $STR_AOW_MHQCR3;
};
class MTHI_GUI_6: Cruoriss_RscButton
{
	idc = -2;
	text = $STR_AOW_Teleport; //--- ToDo: Localize;
	x = 0.381249 * safezoneW + safezoneX;
	y = 0.687 * safezoneH + safezoneY;
	w = 0.0722829 * safezoneW;
	h = 0.033 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
     action = "_nil=[]ExecVM ""AOW_MHQ\TPmhq.sqf""";
};
class MTHI_GUI_7: Cruoriss_RscButton
{
	idc = -2;
	text = $STR_AOW_HALO; //--- ToDo: Localize;
	x = 0.587772 * safezoneW + safezoneX;
	y = 0.412 * safezoneH + safezoneY;
	w = 0.0619568 * safezoneW;
	h = 0.055 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
     action = "closeDialog 0;_nil=[]ExecVM ""ATM_airdrop\atm_airdrop.sqf""";
};
class MTHI_GUI_8: Cruoriss_RscButton
{
	idc = -2;
	text = $STR_AOW_Recruit; //--- ToDo: Localize;
	x = 0.587772 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.0619568 * safezoneW;
	h = 0.055 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
     action = "closeDialog 0;_nil=[]ExecVM ""bon_recruit_units\open_dialog.sqf""";
};
class MTHI_GUI_10: Cruoriss_RscButton
{
	idc = -2;
	text = $STR_AOW_SATCOM; //--- ToDo: Localize;
	x = 0.587772 * safezoneW + safezoneX;
	y = 0.6 * safezoneH + safezoneY;
	w = 0.0619568 * safezoneW;
	h = 0.055 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
     action = "closeDialog 0; call PXS_startSatellite;";
};
class MTHI_GUI_9: Cruoriss_RscButton
{
	idc = -2;
	text = $STR_AOW_Settings; //--- ToDo: Localize;
	x = 0.587772 * safezoneW + safezoneX;
	y = 0.687 * safezoneH + safezoneY;
	w = 0.0619568 * safezoneW;
	h = 0.055 * safezoneH;
	sizeEx = "0.029 / (getResolution select 5)";
     action = "closeDialog 0;_nil=[]call CHVD_fnc_openDialog;";

};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
};
};