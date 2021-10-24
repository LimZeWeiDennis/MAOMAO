/// @description Insert description here
// You can write your code in this editor

if(state == NOTESTATE.READ){
	draw_sprite(note_sprite, 0, o_MaoMao.note_start_x, o_MaoMao.note_start_y);
	//draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_set_font(fnt_default);
	draw_text(320, 290, "Press 'C' to exit Note!");
	draw_set_color(c_white);
}                  