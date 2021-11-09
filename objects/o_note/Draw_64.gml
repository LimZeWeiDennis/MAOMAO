/// @description Insert description here
// You can write your code in this editor

if(state == NOTESTATE.READ){
	BlackOverlay();
	draw_sprite(note_sprite, 0, 1280 * 0.5, 600 * 0.5);
	//draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_set_font(fnt_default2);
	draw_text(1280*0.5, 600*0.90, "Press 'Enter' to exit Note!");
	draw_set_color(c_white);
}                  