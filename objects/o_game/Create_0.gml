/// @description create UI

global.numReset = 0;
global.numDeath = 0;
global.numFriendSave = 0;
global.readNote = false;


//Health
hp_start_X = 0;
hp_start_Y = 12;

//Instructions
instructions = false;

//Credits
credits = false;

//Main Menu
mainOption[0,0] = "Play";
mainOption[0,1] = "Instructions";
mainOption[0,2] = "Credits";
mainOption[0,3] = "Exit Game";

//Exit MM
mainOption[1,0] = "Yes";
mainOption[1,1] = "No";

//MM Instructions
mainOption[2,0] = "Back";

//MM Var
mainOptionSelected = 0;
mainMenuLevel = 0;
mm_op_length = 0;

//Death Menu
deathOption[0,0] = "Restart";
deathOption[0,1] = "Return to Main Menu";
deathOption[0,2] = "Exit Game";

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

//with(all){
//	// stores all the current image_speed of all instances
//	gamePausedImageSpeed = image_speed;	
//}

//Pause Menu - Options [[0,1],[0,2]]
pauseOption[0,0] = "Continue";
pauseOption[0,1] = "Restart";
pauseOption[0,2] = "Instructions";
pauseOption[0,3] = "Return to Main Menu";
pauseOption[0,4] = "Exit Game";

//Pause Menu Exit 
pauseOption[1,0] = "Yes";
pauseOption[1,1] = "No";

//Pause Menu Instructions 
pauseOption[2,0] = "Back";

//Pause Var
p_op_length = 0;
pauseMenuLevel = 0;
pauseOptionSelected = 0;


//End Game Menu 
endGameOption[0] = "Try Again";
endGameOption[1] = "Return to Main Menu";
endGameOption[2] = "Exit Game";


//Pause Var
end_game_op_length = 0;
endGameMenuLevel = 0;
endGameOptionSelected = 0;