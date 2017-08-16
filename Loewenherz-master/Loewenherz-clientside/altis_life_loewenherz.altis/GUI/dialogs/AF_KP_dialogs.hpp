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


////////////////
//Base Classes//
////////////////

class KP_RscText
{
    access = 0;
    idc = -1;
    type = CT_STATIC;
    style = 18;
    linespacing = 1;
    colorBackground[] = {0,0,0,0};
    colorText[] = {1,1,1,.5};
    text = "";
    shadow = 2;
    font = "PuristaMedium";
    SizeEx = 0.05000;
    fixedWidth = 0;
    x = 0;
    y = 0;
    h = 0;
    w = 0;

};

class KP_RscPicture
{
    access = 0;
    idc = -1;
    type = CT_STATIC;
    style = ST_PICTURE;
    colorBackground[] = {0,0,0,0};
    colorText[] = {1,1,1,1};
    font = "PuristaMedium";
    sizeEx = 0;
    lineSpacing = 0;
    text = "";
    fixedWidth = 0;
    shadow = 0;
    x = 0;
    y = 0;
    w = 0.2;
    h = 0.15;
};

class KP_RscButton
{

   access = 0;
    type = CT_BUTTON;
    text = "";
    colorText[] = {1,1,1,.9};
    colorDisabled[] = {0.4,0.4,0.4,0};
    colorBackground[] = {0.75,0.75,0.75,0.8};
    colorBackgroundDisabled[] = {0,0.0,0};
    colorBackgroundActive[] = {0.75,0.75,0.75,1};
    colorFocused[] = {0.75,0.75,0.75,.5};
    colorShadow[] = {0.023529,0,0.0313725,1};
    colorBorder[] = {0.023529,0,0.0313725,1};
    soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
    soundPush[] = {"\ca\ui\data\sound\new1",0,0};
    soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
    soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
    style = 2;
    x = 0;
    y = 0;
    w = 0.055589;
    h = 0.039216;
    shadow = 2;
    font = "PuristaMedium";
    sizeEx = 0.03921;
    offsetX = 0.003;
    offsetY = 0.003;
    offsetPressedX = 0.002;
    offsetPressedY = 0.002;
    borderSize = 0;
};

class KP_RscFrame
{
    type = CT_STATIC;
    idc = -1;
    style = ST_FRAME;
    shadow = 2;
    colorBackground[] = {1,1,1,1};
    colorText[] = {1,1,1,0.9};
    font = "PuristaMedium";
    sizeEx = 0.03;
    text = "";
};

class KP_BOX
{
   type = CT_STATIC;
    idc = -1;
    style = ST_CENTER;
    shadow = 2;
    colorText[] = {1,1,1,1};
    font = "PuristaMedium";
    sizeEx = 0.02;
    colorBackground[] = { 0.2,0.2,0.2, 0.9 };
    text = "";

};


////////////////////////////////////////////////////////////////////////////////////////////////////////

class AF_KeyPad
{
	idd=-1;
	movingenable=false;

	class controls
	{
		class AF_KeyPad_Frame: KP_RscFrame
		{
			idc = 1800;
			x = 0.438745 * safezoneW + safezoneX;
			y = 0.177928 * safezoneH + safezoneY;
			w = 0.262522 * safezoneW;
			h = 0.476106 * safezoneH;
		};
		class AF_KeyPad_Box: KP_BOX
		{
			idc = -1;
			x = 0.438745 * safezoneW + safezoneX;
			y = 0.177928 * safezoneH + safezoneY;
			w = 0.262522 * safezoneW;
			h = 0.476106 * safezoneH;
		};
		class AF_KeyPad_Display: KP_RscText
		{
			idc = 1000;
			text = "Enter Keycode"; //--- ToDo: Localize;
			x = 0.456246 * safezoneW + safezoneX;
			y = 0.191931 * safezoneH + safezoneY;
			w = 0.227519 * safezoneW;
			h = 0.0840187 * safezoneH;
		};
		class AF_Key1: KP_RscButton
		{
			idc = 1600;
			text = "1"; //--- ToDo: Localize;
			x = 0.456246 * safezoneW + safezoneX;
			y = 0.303956 * safezoneH + safezoneY;
			w = 0.0700059 * safezoneW;
			h = 0.0700156 * safezoneH;
			Action = "[""number"", 1] call lhm_fnc_bankKeyPadFnc;";

		};
		class AF_Key2: KP_RscButton
		{
			idc = 1601;
			text = "2"; //--- ToDo: Localize;
			x = 0.535003 * safezoneW + safezoneX;
			y = 0.303956 * safezoneH + safezoneY;
			w = 0.0700059 * safezoneW;
			h = 0.0700156 * safezoneH;
			Action = "[""number"", 2] call lhm_fnc_bankKeyPadFnc;";
		};
		class AF_Key3: KP_RscButton
		{
			idc = 1602;
			text = "3"; //--- ToDo: Localize;
			x = 0.61376 * safezoneW + safezoneX;
			y = 0.303956 * safezoneH + safezoneY;
			w = 0.0700059 * safezoneW;
			h = 0.0700156 * safezoneH;
			Action = "[""number"", 3] call lhm_fnc_bankKeyPadFnc;";
		};
		class AF_Key4: KP_RscButton
		{
			idc = 1603;
			text = "4"; //--- ToDo: Localize;
			x = 0.456246 * safezoneW + safezoneX;
			y = 0.387975 * safezoneH + safezoneY;
			w = 0.0700059 * safezoneW;
			h = 0.0700156 * safezoneH;
			Action = "[""number"", 4] call lhm_fnc_bankKeyPadFnc;";
		};
		class AF_Key5: KP_RscButton
		{
			idc = 1604;
			text = "5"; //--- ToDo: Localize;
			x = 0.535003 * safezoneW + safezoneX;
			y = 0.387975 * safezoneH + safezoneY;
			w = 0.0700059 * safezoneW;
			h = 0.0700156 * safezoneH;
			Action = "[""number"", 5] call lhm_fnc_bankKeyPadFnc;";
		};
		class AF_Key6: KP_RscButton
		{
			idc = 1605;
			text = "6"; //--- ToDo: Localize;
			x = 0.61376 * safezoneW + safezoneX;
			y = 0.387975 * safezoneH + safezoneY;
			w = 0.0700059 * safezoneW;
			h = 0.0700156 * safezoneH;
			Action = "[""number"", 6] call lhm_fnc_bankKeyPadFnc;";
		};
		class AF_Key7: KP_RscButton
		{
			idc = 1606;
			text = "7"; //--- ToDo: Localize;
			x = 0.456246 * safezoneW + safezoneX;
			y = 0.471994 * safezoneH + safezoneY;
			w = 0.0700059 * safezoneW;
			h = 0.0700156 * safezoneH;
			Action = "[""number"", 7] call lhm_fnc_bankKeyPadFnc;";
		};
		class AF_Key8: KP_RscButton
		{
			idc = 1607;
			text = "8"; //--- ToDo: Localize;
			x = 0.535003 * safezoneW + safezoneX;
			y = 0.471994 * safezoneH + safezoneY;
			w = 0.0700059 * safezoneW;
			h = 0.0700156 * safezoneH;
			Action = "[""number"", 8] call lhm_fnc_bankKeyPadFnc;";
		};
		class AF_Key9: KP_RscButton
		{
			idc = 1608;
			text = "9"; //--- ToDo: Localize;
			x = 0.61376 * safezoneW + safezoneX;
			y = 0.471994 * safezoneH + safezoneY;
			w = 0.0700059 * safezoneW;
			h = 0.0700156 * safezoneH;
			Action = "[""number"", 9] call lhm_fnc_bankKeyPadFnc;";
		};
		class AF_Key_Clear: KP_RscButton
		{
			idc = 1609;
			text = "Clear"; //--- ToDo: Localize;
			x = 0.456246 * safezoneW + safezoneX;
			y = 0.556012 * safezoneH + safezoneY;
			w = 0.0700059 * safezoneW;
			h = 0.0700156 * safezoneH;
			Action = "[""clear"", 0] call lhm_fnc_bankKeyPadFnc;";
		};
		class AF_Key0: KP_RscButton
		{
			idc = 1610;
			text = "0"; //--- ToDo: Localize;
			x = 0.535003 * safezoneW + safezoneX;
			y = 0.556012 * safezoneH + safezoneY;
			w = 0.0700059 * safezoneW;
			h = 0.0700156 * safezoneH;
			Action = "[""number"", 0] call lhm_fnc_bankKeyPadFnc;";
		};
		class AF_Key_Enter: KP_RscButton
		{
			idc = 1611;
			text = "Enter"; //--- ToDo: Localize;
			x = 0.61376 * safezoneW + safezoneX;
			y = 0.556012 * safezoneH + safezoneY;
			w = 0.0700059 * safezoneW;
			h = 0.0700156 * safezoneH;
			Action = "[""enter"", 0] call lhm_fnc_bankKeyPadFnc;";
		};
	};
};