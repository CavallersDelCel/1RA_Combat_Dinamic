// Control types
#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_SHORTCUTBUTTON   16
#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define CT_LISTNBOX         102

// Static styles
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0C
#define ST_GROUP_BOX       96
#define ST_GROUP_BOX2      112
#define ST_ROUNDED_CORNER  ST_GROUP_BOX + ST_CENTER
#define ST_ROUNDED_CORNER2 ST_GROUP_BOX2 + ST_CENTER

#define ST_TYPE           0xF0
#define ST_SINGLE         0x00
#define ST_MULTI          0x10
#define ST_TITLE_BAR      0x20
#define ST_PICTURE        0x30
#define ST_FRAME          0x40
#define ST_BACKGROUND     0x50
#define ST_GROUP_BOX      0x60
#define ST_GROUP_BOX2     0x70
#define ST_HUD_BACKGROUND 0x80
#define ST_TILE_PICTURE   0x90
#define ST_WITH_RECT      0xA0
#define ST_LINE           0xB0

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800

#define ST_TITLE          ST_TITLE_BAR + ST_CENTER

// Slider styles
#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400

#define SL_TEXTURES       0x10

// progress bar
#define ST_VERTICAL       0x01
#define ST_HORIZONTAL     0

// Listbox styles
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

// Tree styles
#define TR_SHOWROOT       1
#define TR_AUTOCOLLAPSE   2

// MessageBox styles
#define MB_BUTTON_OK      1
#define MB_BUTTON_CANCEL  2
#define MB_BUTTON_USER    4


//
//CRUORISS DIALOG
//

class Cruoriss_RscFrame
{
    type = CT_STATIC;
    idc = 1;
    style = ST_FRAME;
    shadow = 2;
    colorBackground[] = {0.388,0.482,0.294,1};
    colorText[] = {0,0,0,1};
    font = "PuristaLight";
    sizeEx = 0.03;
    text = "";
};
class Cruoriss_BOX
{
    type = CT_STATIC;
    idc = 1;
    style = ST_CENTER;
    shadow = 2;
    colorBackground[] = {0.388,0.482,0.294,1};
    colorText[] = {0,0,0,1};
    font = "PuristaLight";
    sizeEx = 0.03;
    text = "";
};
class Cruoriss_RscButton
{

   access = 0;
    type = CT_BUTTON;
    text = "";
    colorText[] = {0,0,0,1};
    colorDisabled[] = {0.4,0.4,0.4,0};
    colorBackground[] = {0.75,0.75,0.75,0.8};
    colorBackgroundDisabled[] = {0,0.0,0};
    colorBackgroundActive[] = {0.75,0.75,0.75,1};
    colorFocused[] = {0.75,0.75,0.75,.5};
    colorShadow[] = {0.023529,0,0.0313725,1};
    colorBorder[] = {0.023529,0,0.0313725,1};
    soundEnter[] = {"",0.09,1};
    soundPush[] = {"",0,0};
    soundClick[] = {"",0.07,1};
    soundEscape[] = {"",0.09,1};
    style = 2;
    x = 0;
    y = 0;
    w = 0.055589;
    h = 0.039216;
    shadow = 0;
    font = "PuristaMedium";
    sizeEx = 0.03921;
    offsetX = 0.003;
    offsetY = 0.003;
    offsetPressedX = 0.002;
    offsetPressedY = 0.002;
    borderSize = 0;
};
class Cruoriss_RscText
{
    access = 0;
    idc = 1;
    type = CT_STATIC;
    style = 2;
    linespacing = 1;
    colorBackground[] = {0,0,0,0};
    colorText[] = {0,0,0,1};
    text = "";
    shadow = 0;
    font = "PuristaMedium";
    SizeEx = 0.03921;
    fixedWidth = 0;
    x = 0;
    y = 0;
    h = 0;
    w = 0;

};
class Cruoriss_Title
{
    access = 0;
    idc = 1;
    type = CT_STATIC;
    style = 2;
    linespacing = 1;
    colorBackground[] = {0,0,0,0};
    colorText[] = {0,0,0,1};
    text = "";
    shadow = 0;
    font = "PuristaMedium";
    SizeEx = 0.06;
    fixedWidth = 0;
    x = 0;
    y = 0;
    h = 0;
    w = 0;

};
class Cruoriss_RscCombo
{
	access = 0;
	type = 4;
	style = 0;
	colorSelect[] = {0.023529,0,0.0313725,1};
	colorText[] = {0.023529,0,0.0313725,1};
	colorBackground[] = {0.95,0.95,0.95,1};
	colorScrollbar[] = {0.023529,0,0.0313725,1};
	soundSelect[] = {"",0.1,1};
	soundExpand[] = {"",0.1,1};
	soundCollapse[] = {"",0.1,1};
	maxHistoryDelay = 1;
	class ComboScrollBar
	{
		color[] = {1,1,1,0.6};
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		shadow = 0;
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
	};
	x = 0;
	y = 0;
	w = 0.12;
	h = 0.035;
	shadow = 0;
	colorSelectBackground[] = {0.8784,0.8471,0.651,1};
	arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa";
	arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa";
	wholeHeight = 0.45;
	color[] = {0,0,0,0.6};
	colorActive[] = {0,0,0,1};
	colorDisabled[] = {0,0,0,0.3};
	font = "Puristamedium";
	sizeEx = 0.03921;
};
class Cruoriss_RscCheckbox
{
    type=77;
    style=0;
    checked=0;
    x="0.375 * safezoneW + safezoneX";
    y="0.36 * safezoneH + safezoneY";
    w="0.025 * safezoneW";
    h="0.04 * safezoneH";
    color[]={1,1,1,0.69999999};
    colorFocused[]={1,1,1,1};
    colorHover[]={1,1,1,1};
    colorPressed[]={1,1,1,1};
    colorDisabled[]={1,1,1,0.2};
    colorBackground[]={0,0,0,0};
    colorBackgroundFocused[]={0,0,0,0};
    colorBackgroundHover[]={0,0,0,0};
    colorBackgroundPressed[]={0,0,0,0};
    colorBackgroundDisabled[]={0,0,0,0};
    textureChecked="\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
    textureUnchecked="\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
    textureFocusedChecked="\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
    textureFocusedUnchecked="\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
    textureHoverChecked="\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
    textureHoverUnchecked="\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
    texturePressedChecked="\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
    texturePressedUnchecked="\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
    textureDisabledChecked="\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
    textureDisabledUnchecked="\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
    tooltipColorText[]={1,1,1,1};
    tooltipColorBox[]={1,1,1,1};
    tooltipColorShade[]={0,0,0,0.64999998};
    soundEnter[]={"",0.1,1};
    soundPush[]={"",0.1,1};
    soundClick[]={"",0.1,1};
    soundEscape[]={"",0.1,1};
};