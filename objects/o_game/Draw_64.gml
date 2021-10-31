/// @description Draw UI

//Draw heart
if (room != Main_Menu && room!= StoryLine && room != Quit_Menu && room != Instructions){
	for (var i = 0; i < global.hp; i ++) 
	{
		draw_sprite(s_healthPoint, 0, hp_start_X, hp_start_Y);
		hp_start_X += 20;
	
	}

	if(global.hp >=0) {
		for (var i = 0; i < (global.hpMax - global.hp); i ++) 
		{
			draw_sprite(s_healthPoint, 1, hp_start_X, hp_start_Y);
			hp_start_X += 20;
		}	
	}
	else {
		for (var i = 0; i < global.hpMax; i ++) 
		{
			draw_sprite(s_healthPoint, 1, hp_start_X, hp_start_Y);
			hp_start_X += 20;
		}	
	}
	hp_start_X = 10;
}

//Draw persistent text
if (room != Main_Menu && room != StoryLine && room != Instructions)
{
	draw_set_color(c_white);
	draw_set_font(fnt_default);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(10, 30, "'Esc': Pause Menu ");
}

//Draw death screen
if (o_MaoMao.state == PLAYERSTATE.DEAD_IDLE_STATE){
	BlackOverlay();
	
	//dead maomao
	draw_sprite_ext(s_MaoMaoDeadIdle, -1, 640 * 0.5, 320*0.42, 4, 4,0, c_white, 1);
	image_speed = 0.3;
	
	//Header
	if (deathMenuLevel == 0)
	{draw_set_font(fnt_default2); draw_set_color(c_red); draw_text(640 * 0.5, 320 * 0.52, "You Died");}
	else
	{draw_set_font(fnt_menutext); draw_set_color(c_white); draw_text(640 * 0.5, 320 * 0.52, "Are you sure you want to quit?");}
	
	//Options
	draw_set_color(c_white);
	draw_set_font(fnt_default);
	for (var i =0; i < d_op_length; i++){
		var _print = "";
		
		if (i == deathOptionSelected)
		{
			_print += "> " + deathOption[deathMenuLevel, i] + " <";
		}
		else
		{
			_print += deathOption[deathMenuLevel, i];
			draw_set_alpha(0.7);
		}
		
		draw_text(640 * 0.5, 320*0.52 + 18 + (i*12), _print);
		draw_set_alpha(1.0);
	}
}	
	
//Draw Pause menu
if (global.gamePaused && showPauseMenu && o_MaoMao.state != PLAYERSTATE.DEAD_IDLE_STATE){
	BlackOverlay();
	
	//Header
	draw_set_color(c_white);
	draw_set_font(fnt_menutext);
	if (pauseMenuLevel == 0)
	{ draw_text(640 * 0.5, 320 * 0.45, "Game Paused");
	}
	else
	{ 
		draw_text(640 * 0.5, 320 * 0.45, "Are you sure you want to quit?");
	}
	
	//Options
	draw_set_font(fnt_default);
	for (var i = 0; i < p_op_length; i++)
	{
		var _print = "";
		
		if (i == pauseOptionSelected)
		{
			_print += "> " + pauseOption[pauseMenuLevel,i] + " <";
		}
		else
		{
			_print += pauseOption[pauseMenuLevel,i];
			draw_set_alpha(0.7);
		}
		
		draw_text(640 * 0.5, 320*0.45 + 18 + (i*12), _print);
		draw_set_alpha(1.0);
	}
}
	
//Draw instructions for in game menu
if(instructions){
	draw_sprite(s_instructionsIG, 0, 0, 0);
	draw_set_font(fnt_default);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_right);
	draw_text(40,307, "> Back <") 
}