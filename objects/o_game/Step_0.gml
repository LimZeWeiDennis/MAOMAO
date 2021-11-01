/// @description UI Menu

//Check Input
keyUp = keyboard_check_pressed(vk_up);
keyDown = keyboard_check_pressed(vk_down);
keyActivate = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);

//Main Menu
if (room == Main_Menu){
	mm_op_length = array_length(mainOption[mainMenuLevel]);
	mainOptionSelected += (keyDown - keyUp); 
	if (mainOptionSelected >= mm_op_length){mainOptionSelected = 0};
	if (mainOptionSelected < 0){mainOptionSelected = mm_op_length -1}; //wrap around options
	
	if (keyActivate)
	{	
		var _snl = mainMenuLevel;
		switch(mainMenuLevel){
			case 0:
				switch(mainOptionSelected){
					//Play
					case 0: RestartScript(); break;
					//Instructions
					case 1: instructions = !instructions; break;
					//Credits
					case 2:  break;
					//Exit game
					case 3: mainMenuLevel = 1; break;
				}break;
				
			case 1:
				switch(mainOptionSelected)
				{
					//Yes
					case 0: game_end(); break;
					//No
					case 1: mainMenuLevel = 0; break;
				} break;
		}
		
		//set option selected back to the first
		if _snl != mainMenuLevel {mainOptionSelected = 0}; 
		//correct option length 
		mm_op_length = array_length(mainOption[mainMenuLevel]);
	}
}



//Death Screen
if (o_MaoMao.state == PLAYERSTATE.DEAD_IDLE_STATE){
	d_op_length = array_length(deathOption[deathMenuLevel]);
	deathOptionSelected += (keyDown - keyUp); 
	if (deathOptionSelected >= d_op_length){deathOptionSelected = 0};
	if (deathOptionSelected < 0){deathOptionSelected = d_op_length -1}; //wrap around options
	
	if (keyActivate)
	{	
		var _snl = deathMenuLevel;
		switch(deathMenuLevel){
			case 0:
				switch(deathOptionSelected){
					//Restart
					case 0: RestartScript(); break;
					//Return to MM
					case 1: TransitionInto(Main_Menu,576,145); break;
					//Exit game
					case 2: deathMenuLevel = 1; break;
				}break;
				
			case 1:
				switch(deathOptionSelected)
				{
					//Yes
					case 0: game_end(); break;
					//No
					case 1: deathMenuLevel = 0; break;
				} break;
		}
		
		//set option selected back to the first
		if _snl != deathMenuLevel {deathOptionSelected = 0}; 
		//correct option length 
		d_op_length = array_length(deathOption[deathMenuLevel]);
	}
}

//Pause Menu
if (global.gamePaused && o_MaoMao.state != PLAYERSTATE.DEAD_IDLE_STATE) 
{
	p_op_length = array_length(pauseOption[pauseMenuLevel]);
	pauseOptionSelected += (keyDown - keyUp); 
	if (pauseOptionSelected >= p_op_length){pauseOptionSelected = 0};
	if (pauseOptionSelected < 0){pauseOptionSelected = p_op_length -1}; //wrap around options
	
	if (keyActivate)
	{
		//keep track of menu level
		var _snl = pauseMenuLevel;
		
		switch(pauseMenuLevel){
			//pause menu
			case 0:
				switch (pauseOptionSelected)
				{
					//Continue
					case 0: global.gamePaused = false; break;
					//Restart
 					case 1: RestartScript(); global.gamePaused = false; break;
					//Instructions
					case 2: instructions = !instructions; break;
					//Return to MM
					case 3: TransitionInto(Main_Menu,576,145); break;
					//Exit game
					case 4: pauseMenuLevel = 1; break;
				} break;
				
			//exit
			case 1:
				switch(pauseOptionSelected)
				{
					//Yes
					case 0: game_end(); break;
					//No
					case 1: pauseMenuLevel = 0; break;
				} break;
			}
			
		//set option selected back to the first
		if _snl != pauseMenuLevel {pauseOptionSelected = 0}; 
		//correct option length 
		p_op_length = array_length(pauseOption[pauseMenuLevel]);
	}
}