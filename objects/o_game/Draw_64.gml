/// @description Draw UI

//Draw heart
if (room != Main_Menu && room!= StoryLine && room != Quit_Menu && room != Instructions && room != Credits){
	for (var i = 0; i < global.hp; i ++) 
	{
		draw_sprite(s_healthPoint, 0, hp_start_X, hp_start_Y);
		hp_start_X += 36;
	
	}

	if(global.hp >=0) {
		for (var i = 0; i < (global.hpMax - global.hp); i ++) 
		{
			draw_sprite(s_healthPoint, 1, hp_start_X, hp_start_Y);
			hp_start_X += 36;
		}	
	}
	else {
		for (var i = 0; i < global.hpMax; i ++) 
		{
			draw_sprite(s_healthPoint, 1, hp_start_X, hp_start_Y);
			hp_start_X += 36;
		}	
	}
	hp_start_X = 10;
}

//Draw persistent text
if (room != Main_Menu && room != StoryLine && room != Instructions && room != Credits)
{
	draw_set_color(c_white);
	draw_set_font(fnt_default2);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(10, 48, "'Esc': Pause Menu ");
}

//Draw death screen
if (o_MaoMao.state == PLAYERSTATE.DEAD_IDLE_STATE){
	BlackOverlay();
	
	//Header
	draw_set_font(fnt_menuheader);
	if (deathMenuLevel == 0)
	{	//dead maomao
		draw_sprite_ext(s_MaoMaoDeadIdle, -1, 1280 * 0.5, 600*0.38, 6, 6,0, c_white, 1);
		image_speed = 0.3;
		draw_set_color(c_red); draw_text(1280 * 0.5, 600 * 0.48, "You Died");
	} else{	
		draw_set_color(c_white); 
		draw_text(1280 * 0.5, 600 * 0.43, "Are you sure you want to quit?");
	}
	
	//Options
	draw_set_color(c_white);
	draw_set_font(fnt_menuoptions);
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
		if(deathMenuLevel == 1){ //Quit
			draw_text(1280 * 0.5, 600*0.48 + 19 + (i*31), _print);
			draw_set_alpha(1.0);
		} else { //main
			draw_text(1280 * 0.5, 600*0.52 + 18 + (i*28), _print);
			draw_set_alpha(1.0);
		}
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

//Draw pause menu
if (global.gamePaused && showPauseMenu && o_MaoMao.state != PLAYERSTATE.DEAD_IDLE_STATE){

	//Header
	if (pauseMenuLevel == 0){ 
		BlackOverlay();
		draw_set_color(c_white);
		draw_set_font(fnt_menuheader);
		draw_text(1280 * 0.5, 600 * 0.34, "Game Paused");
	} else if (pauseMenuLevel == 1){ 
		BlackOverlay();
		draw_set_color(c_white);
		draw_set_font(fnt_menuheader);
		draw_text(1280 * 0.5, 600 * 0.43, "Are you sure you want to quit?");
	}
	
	//Options
	draw_set_font(fnt_menuoptions);
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
		
		if(pauseMenuLevel == 1){ //Quit
			draw_text(1280 * 0.5, 600*0.48 + 19 + (i*31), _print);
			draw_set_alpha(1.0);
		} else if (pauseMenuLevel == 2){ //Instructions 'Back'
			draw_text(1280 * 0.90, 600*0.92, _print);
			draw_set_alpha(1.0);
		} else{ //main
			draw_text(1280 * 0.5, 600*0.40 + 18 + (i*31), _print);
			draw_set_alpha(1.0);
		}
	}
}

//Draw main menu
if (room == Main_Menu){
	//Options
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	
	if (mainMenuLevel == 1){
		draw_set_font(fnt_mmoptions);
		draw_text(1280 *0.97, 600 * 0.75, "Quit?");
	}
		
	draw_set_font(fnt_menuoptions);
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
		
		if(mm_op_length == 1){ //instructions and credit 'Back'
			draw_text(1280 * 0.97, 600*0.92, _print);
			draw_set_alpha(1.0);
		} else if (mm_op_length == 2){ //Quit
			draw_text(1280 * 0.97, 600*0.79 + 19 + (i*31), _print);
			draw_set_alpha(1.0);
		} else{ //main
			draw_set_font(fnt_mmoptions);
			draw_text(1280 * 0.97, 600*0.74 + (i*38), _print);
			draw_set_alpha(1.0);
		}
	}
}

//Draw end game
if (room == Quit_Menu){

	//Header
	BlackOverlay();
	draw_set_color(c_white);
	draw_set_font(fnt_menuheader);
	if (global.numFriendSave < 5){ 
		draw_text(1280 * 0.5, 600 * 0.4,
		"You saved " + string(global.numFriendSave) + "/5 cats! \n Don't worry! Purple got the rest out for you!");
	} else if (global.numFriendSave == 5){ 
		draw_text(1280 * 0.5, 600 * 0.40, "WOW! You're a hero! \n You saved everyone!");
	}
	
	//Options
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);

	draw_set_font(fnt_menuoptions);

		
	for (var i = 0; i < end_game_op_length; i++)
	{
			
		var _print = "";
		
		if (i == endGameOptionSelected)
			
		{
			show_debug_message(endGameOption[endGameLevel,i]);
			_print += "> " + endGameOption[endGameLevel,i] + " <";

				
		}
		else
		{
			_print += endGameOption[endGameLevel,i];
			draw_set_alpha(0.7);
		}
		
		draw_text(1280 * 0.5, 600*0.48 + 19 + (i*31), _print);
		draw_set_alpha(1.0);
			
	}
	
	
}
