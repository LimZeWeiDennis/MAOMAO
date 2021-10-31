/// @description UI Menu
// You can write your code in this editor
//Check Input
keyUp = keyboard_check_pressed(vk_up);
keyDown = keyboard_check_pressed(vk_down);
keyActivate = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);

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
					//Exit game
					case 1: deathMenuLevel = 1; break;
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
if (global.gamePaused && global.show_pause_menu && o_MaoMao.state != PLAYERSTATE.DEAD_IDLE_STATE) 
{
	p_op_length = array_length(pauseOption[global.menuLevel]);
	pauseOptionSelected += (keyDown - keyUp); 
	if (pauseOptionSelected >= p_op_length){ pauseOptionSelected = 0};
	if (pauseOptionSelected < 0){ pauseOptionSelected = p_op_length -1}; //wrap around options
	
	if (keyActivate)
	{
		//keep track of menu level
		var _snl = global.menuLevel;
		
		switch(global.menuLevel){
			//pause menu
			case 0:
				switch (pauseOptionSelected)
				{
					case 0: //Continue
					global.gamePaused = false; 
					break;
		
 					case 1: //Restart
					RestartScript();
					global.gamePaused = false;
					break;
		
					case 2: //Instructions\
					global.instruction = !global.instruction;
					//if (!global.instruction){ global.instruction = true};
					//if (global.instruction && (keyActivate || keyboard_check_pressed(vk_escape))){global.instruction = false};
					break;
			
					case 3: //Exit game
					global.menuLevel = 1;
					break;
				} break;
				
			//exit
			case 1:
				switch(pauseOptionSelected)
				{
					case 0: //Yes
					game_end();
					break;
		
					case 1: //No
					global.menuLevel = 0;
					break;
				} break;
			}
			
		//set option selected back to the first
		if _snl != global.menuLevel {pauseOptionSelected = 0}; 
		//correct option length 
		p_op_length = array_length(pauseOption[global.menuLevel]);
	}
}