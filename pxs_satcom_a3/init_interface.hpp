// base definition
class RscLine
{
	type = 0;
	idc = -1;
	style = 512;
	ColorBackground[] = {1,1,1,1};
	colorText[] = {0,0,0,0};
	shadow = 1;
	font = "puristaMedium";
	SizeEx = 0.025;
	text = "";
};

class RscInfoBack
{
	type = 0;
	idc = -1;
	style = 512;
	ColorBackground[] = {0,0,1,0.4};
	colorText[] = {0,0,0,0};
	shadow = 1;
	font = "puristaMedium";
	SizeEx = 0.025;
	text = "";
};

class RscText
{
	access = 0;
	type = 0;
	idc = -1;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	text = "";
	fixedWidth = 0;
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0;
	shadow = 2;
	font = "puristaMedium";
	SizeEx = 0.035;
};

// main dialog
class PXS_RscSatellite
{
	idd = 1000;
	movingEnable = 1;
	class Controls
	{
		//time
		class cbt: RscInfoBack
		{
			x = safezoneXAbs + 0.077 * safezoneW;
			y = safezoneY + safezoneH - (0.112 * safezoneW);
			w = 0.075 * safezoneW;
			h = 0.062 * safezoneH;
		};
		class time_data: RscText
		{
			idc = 1001;
			x = safezoneXAbs + 0.08 * safezoneW;
			y = safezoneY + safezoneH - (0.12 * safezoneW);
			w = 0.2;
			h = 0.1;
			text = "16:56:34";
		};
		//info text
		class cbi: RscInfoBack
		{
			ColorBackground[] = {0,1,0,0.4};
			x = safezoneXAbs + 0.077 * safezoneW;
			y = safezoneY + 0.067 * safezoneW;
			w = 0.067 * safezoneW;
			h = 0.062 * safezoneH;
		};
		class navflr: RscText
		{
			x = safezoneXAbs + 0.08 * safezoneW;
			y = safezoneY + 0.088 * safezoneW;
			w = 0.3;
			h = 0.05;
			text = "FLIR ENABLED";
		};
		class cbr: RscInfoBack
		{
			ColorBackground[] = {1,0,0,0.4};
			x = safezoneXAbs + safezoneWAbs - ((0.06 * safezoneW) + 0.21);
			y = safezoneY + safezoneH - (0.09 * safezoneW);
			w = 0.075 * safezoneW;
			h = 0.032 * safezoneH;
		};
		class trckg: RscText
		{
			idc = 1006;
			x = safezoneXAbs + safezoneWAbs - ((0.06 * safezoneW) + 0.2);
			y = safezoneY + safezoneH - (0.09 * safezoneW);
			w = 0.3;
			h = 0.05;
			text = "TRACKING OFF";
		};
		class uhf: RscText
		{
			x = safezoneXAbs + 0.08 * safezoneW;
			y = safezoneY + 0.07 * safezoneW;
			w = 0.2;
			h = 0.05;
			text = "UHF ACTIVE";
		};
		//coordinates
		class cbk: RscInfoBack
		{
			x = safezoneXAbs + safezoneWAbs - ((0.06 * safezoneW) + 0.21);
			y = safezoneY + 0.067 * safezoneW;
			w = 0.07 * safezoneW;
			h = 0.09 * safezoneH;
		};
		class cx: RscText
		{
			idc = 1002;
			x = safezoneXAbs + safezoneWAbs - ((0.06 * safezoneW) + 0.2);
			y = safezoneY + 0.07 * safezoneW;
			w = 0.2;
			h = 0.05;
			text = "LAT";
		};
		class cy: RscText
		{
			idc = 1003;
			x = safezoneXAbs + safezoneWAbs - ((0.06 * safezoneW) + 0.2);
			y = safezoneY + 0.085 * safezoneW;
			w = 0.2;
			h = 0.05;
			text = "LON";
		};
		class cz: RscText
		{
			idc = 1004;
			x = safezoneXAbs + safezoneWAbs - ((0.06 * safezoneW) + 0.2);
			y = safezoneY + 0.11 * safezoneW;
			w = 0.2;
			h = 0.05;
			text = "FOV";
		};
		//view type
		class nv: RscText
		{
			idc = 1005;
			x = safezoneXAbs + 0.08 * safezoneW;
			y = safezoneY + safezoneH - (0.09 * safezoneW);
			w = 0.3;
			h = 0.05;
			text = "CMODE NORMAL";
		};
		//frame
		class frame_left_up_h: RscLine
		{
			x = safezoneXAbs + 0.05 * safezoneW;
			y = safezoneY + 0.05 * safezoneW;
			w = 0.06 * safezoneW;
			h = 0.003;
		};
		class frame_left_up_v: RscLine
		{
			x = safezoneXAbs + 0.05 * safezoneW;
			y = safezoneY + 0.05 * safezoneW;
			w = 0.003;
			h = 0.06 * safezoneW;
		};
		class frame_right_down_h: RscLine
		{
			x = safezoneXAbs + safezoneWAbs - ((0.05 * safezoneW) + (0.06 * safezoneW));
			y = safezoneY + safezoneH - ((0.05 * safezoneW) + 0.003);
			w = 0.06 * safezoneW;
			h = 0.003;
		};
		class frame_right_down_v: RscLine
		{
			x = safezoneXAbs + safezoneWAbs - (0.05 * safezoneW);
			y = safezoneY + safezoneH - ((0.05 * safezoneW) + (0.06 * safezoneW));
			w = 0.003;
			h = 0.06 * safezoneW;
		};
		class frame_left_down_h: RscLine
		{
			x = safezoneXAbs + 0.05 * safezoneW;
			y = safezoneY + safezoneH - ((0.05 * safezoneW) + 0.003);
			w = 0.06 * safezoneW;
			h = 0.003;
		};
		class frame_left_down_v: RscLine
		{
			x = safezoneXAbs + 0.05 * safezoneW;
			y = safezoneY + safezoneH - ((0.05 * safezoneW) + (0.06 * safezoneW));
			w = 0.003;
			h = 0.06 * safezoneW;
		};
		class frame_right_up_h: RscLine
		{
			x = safezoneXAbs + safezoneWAbs - ((0.05 * safezoneW) + (0.06 * safezoneW));
			y = safezoneY + 0.05 * safezoneW;
			w = 0.06 * safezoneW;
			h = 0.003;
		};
		class frame_right_up_v: RscLine
		{
			x = safezoneXAbs + safezoneWAbs - (0.05 * safezoneW);
			y = safezoneY + 0.05 * safezoneW;
			w = 0.003;
			h = 0.06 * safezoneW;
		};
		//net
		class net_h_1: RscLine
		{
			ColorBackground[] = {1,1,1,0.2};
			x = safezoneXAbs;
			y = safezoneY + 0.1 * safezoneH;
			w = safezoneWAbs;
			h = 0.0009;
		};
		class net_h_2: RscLine
		{
			ColorBackground[] = {1,1,1,0.2};
			x = safezoneXAbs;
			y = safezoneY + 2 * (0.1 * safezoneH);
			w = safezoneWAbs;
			h = 0.0009;
		};
		class net_h_3: RscLine
		{
			ColorBackground[] = {1,1,1,0.2};
			x = safezoneXAbs;
			y = safezoneY + 3 * (0.1 * safezoneH);
			w = safezoneWAbs;
			h = 0.0009;
		};
		class net_h_4: RscLine
		{
			ColorBackground[] = {1,1,1,0.2};
			x = safezoneXAbs;
			y = safezoneY + 4 * (0.1 * safezoneH);
			w = safezoneWAbs;
			h = 0.0009;
		};
		class net_h_5: RscLine
		{
			ColorBackground[] = {1,1,1,0.2};
			x = safezoneXAbs;
			y = safezoneY + 5 * (0.1 * safezoneH);
			w = safezoneWAbs;
			h = 0.0009;
		};
		class net_h_6: RscLine
		{
			ColorBackground[] = {1,1,1,0.2};
			x = safezoneXAbs;
			y = safezoneY + 6 * (0.1 * safezoneH);
			w = safezoneWAbs;
			h = 0.0009;
		};
		class net_h_7: RscLine
		{
			ColorBackground[] = {1,1,1,0.2};
			x = safezoneXAbs;
			y = safezoneY + 7 * (0.1 * safezoneH);
			w = safezoneWAbs;
			h = 0.0009;
		};
		class net_h_8: RscLine
		{
			ColorBackground[] = {1,1,1,0.2};
			x = safezoneXAbs;
			y = safezoneY + 8 * (0.1 * safezoneH);
			w = safezoneWAbs;
			h = 0.0009;
		};
		class net_h_9: RscLine
		{
			ColorBackground[] = {1,1,1,0.2};
			x = safezoneXAbs;
			y = safezoneY + 9 * (0.1 * safezoneH);
			w = safezoneWAbs;
			h = 0.0009;
		};
		class net_v_1: RscLine
		{
			ColorBackground[] = {1,1,1,0.2};
			x = safezoneXAbs + 0.1 * safezoneWAbs;
			y = safezoneY;
			w = 0.0009;
			h = safezoneH;
		};
		class net_v_2: RscLine
		{
			ColorBackground[] = {1,1,1,0.2};
			x = safezoneXAbs + 2 * (0.1 * safezoneWAbs);
			y = safezoneY;
			w = 0.0009;
			h = safezoneH;
		};
		class net_v_3: RscLine
		{
			ColorBackground[] = {1,1,1,0.2};
			x = safezoneXAbs + 3 * (0.1 * safezoneWAbs);
			y = safezoneY;
			w = 0.0009;
			h = safezoneH;
		};
		class net_v_4: RscLine
		{
			ColorBackground[] = {1,1,1,0.2};
			x = safezoneXAbs + 4 * (0.1 * safezoneWAbs);
			y = safezoneY;
			w = 0.0009;
			h = safezoneH;
		};
		class net_v_5: RscLine
		{
			ColorBackground[] = {1,1,1,0.2};
			x = safezoneXAbs + 5 * (0.1 * safezoneWAbs);
			y = safezoneY;
			w = 0.0009;
			h = safezoneH;
		};
		class net_v_6: RscLine
		{
			ColorBackground[] = {1,1,1,0.2};
			x = safezoneXAbs + 6 * (0.1 * safezoneWAbs);
			y = safezoneY;
			w = 0.0009;
			h = safezoneH;
		};
		class net_v_7: RscLine
		{
			ColorBackground[] = {1,1,1,0.2};
			x = safezoneXAbs + 7 * (0.1 * safezoneWAbs);
			y = safezoneY;
			w = 0.0009;
			h = safezoneH;
		};
		class net_v_8: RscLine
		{
			ColorBackground[] = {1,1,1,0.2};
			x = safezoneXAbs + 8 * (0.1 * safezoneWAbs);
			y = safezoneY;
			w = 0.0009;
			h = safezoneH;
		};
		class net_v_9: RscLine
		{
			ColorBackground[] = {1,1,1,0.2};
			x = safezoneXAbs + 9 * (0.1 * safezoneWAbs);
			y = safezoneY;
			w = 0.0009;
			h = safezoneH;
		};
	};
};