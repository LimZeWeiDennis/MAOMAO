/// @description drawing the pause menu
// You can write your code in this editor

if(show_pause_menu){

	if(global.game_pause){
		
		
		draw_sprite(s_pauseBG,0,0,0);
		draw_set_valign(fa_bottom);
		draw_set_halign(fa_center);
		draw_set_font(fnt_default2);
		draw_text(320, 155, "Press Enter to go back to main menu");
		draw_text(320, 170, "Press Esc to resume game");
		
	}
}

        