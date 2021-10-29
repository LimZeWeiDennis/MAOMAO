/// @description Insert description here
// You can write your code in this editor

//Draw hearts
if (room != Main_Menu && room!= StoryLine && room != Quit_Menu && room != Instructions){
	for (var i = 0; i < hp; i ++) 
	{
		draw_sprite(s_healthPoint, 0, hp_start_X, hp_start_Y);
		hp_start_X += 20;
	
	}


	if(hp >=0) {
	
		for (var i = 0; i < (hpMax - hp); i ++) 
		{
			draw_sprite(s_healthPoint, 1, hp_start_X, hp_start_Y);
			hp_start_X += 20;
	
		}	

	}

	else {
		for (var i = 0; i < hpMax; i ++) 
		{
			draw_sprite(s_healthPoint, 1, hp_start_X, hp_start_Y);
			hp_start_X += 20;
	
		}	
	
	}
	hp_start_X = 10;
}

//Draw Pause menu
if (global.game_pause){
	draw_set_colour(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0,0,RES_X,RES_Y,false);
	draw_set_alpha(1.0);
	draw_set_color(c_white);
	draw_set_font(fnt_default);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(RES_X * 0.5, RES_Y * 0.5, "Game Paused");
	for (var i = 0; i <  array_length(pauseOption); i++)
	{
		var _print = "";
		if (i == pauseOptionSelected)
		{
			_print += "> " + pauseOption[i] + " <";
		}
		else
		{
			_print += pauseOption[i];
			draw_set_alpha(0.7);
		}
		draw_text(RES_X * 0.5, RES_Y*0.5 + 18 + (i*12), _print);
		draw_set_alpha(1.0);
	}
}