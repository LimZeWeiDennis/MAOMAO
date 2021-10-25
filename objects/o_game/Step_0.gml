/// @description Insert description here
// You can write your code in this editor

if(show_pause_menu && keyboard_check_pressed(vk_enter)){
	TransitionInto(Main_Menu, 672, 96);
	show_pause_menu = false;
	global.game_pause = false;
}