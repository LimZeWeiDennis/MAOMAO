/// @description Insert description here
// You can write your code in this editor

if(state == NOTESTATE.READ){
	draw_sprite(s_note, 0, o_MaoMao.note_start_x, o_MaoMao.note_start_y);
} else {
	draw_sprite(s_enemyCollider, 0, o_MaoMao.note_start_x, o_MaoMao.note_start_y);
}