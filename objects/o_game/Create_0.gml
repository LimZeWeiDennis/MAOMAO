/// @description create UI

//Health
hp_start_X = 0;
hp_start_Y = 10;


//Instructions
instructions = false;


//Death Menu
deathOption[0,0] = "Restart";
deathOption[0,1] = "Exit Game";

//Death is an Exit 
deathOption[1,0] = "Yes";
deathOption[1,1] = "No";

//Death Var
deathOptionSelected = 0;
deathMenuLevel = 0;
d_op_length = 0;


//Pause Menu
global.gamePaused = false;
showPauseMenu = false;

with(all){
	// stores all the current image_speed of all instances
	gamePausedImageSpeed = image_speed;	
}

//Pause Menu - Options
pauseOption[0,0] = "Continue";
pauseOption[0,1] = "Restart";
pauseOption[0,2] = "Instructions";
pauseOption[0,3] = "Exit Game";

//Pause Menu Exit 
pauseOption[1,0] = "Yes";
pauseOption[1,1] = "No";

//Pause Var
p_op_length = 0;
pauseMenuLevel = 0;
pauseOptionSelected = 0;