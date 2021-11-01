/// @description Draw UI

//Draw heart
if (room != Main_Menu && room!= StoryLine && room != Quit_Menu && room != Instructions && room != Credits){
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
if (room != Main_Menu && room != StoryLine && room != Instructions && room != Credits)
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
		
		draw_text(1280 * 0.5, 600*0.52 + 18 + (i*12), _print);
		draw_set_alpha(1.0);
	}
}	
	
//Draw pause menu
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


//Draw instructions
if(instructions){
	draw_sprite(s_instructions, 0, 0, 0);
}

//Draw Credits
if (credits){
	draw_sprite(s_credits, 0, 0, 0);
}

//Draw main menu
if (room == Main_Menu){
	//Options
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_set_font(fnt_mm);
	for (var i = 0; i < mm_op_length; i++)
	{
		var _print = "";
		
		if (i == mainOptionSelected)
		{
			_print += "> " + mainOption[mainMenuLevel,i] + " <";
		}
		else
		{
			_print += mainOption[mainMenuLevel,i];
			draw_set_alpha(0.7);
		}
		
		draw_text(1280 * 0.97, 600*0.77 + 18 + (i*31), _print);
		draw_set_alpha(1.0);
	}
}

