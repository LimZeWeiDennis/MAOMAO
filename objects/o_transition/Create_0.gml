/// @description Insert description here
// You can write your code in this editor

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h / 2;

enum TRANS_MODE {
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
state = TRANS_MODE.INTRO;
percent = 1;
targetRoom = room;
targetX = 0;
targetY = 0;