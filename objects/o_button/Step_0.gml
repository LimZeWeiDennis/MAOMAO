/// @description Insert description here
// You can write your code in this editor

if(collision_point(mouse_x, mouse_y, id, true, false)){
	window_set_cursor(cr_handpoint);
} else {
	window_set_cursor (cr_default);
}