/// @description Insert description here
// You can write your code in this editor

if(collision_point(mouse_x, mouse_y, id, true, false)){
	window_set_cursor(cr_handpoint);
	image_index = 1;
} else {
	window_set_cursor (cr_default);
	image_index = 0;
}