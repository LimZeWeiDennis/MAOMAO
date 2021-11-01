/// @description Esc key to pause

if(keyboard_check_pressed(vk_escape) 
	&& room != Main_Menu 
	&& room != StoryLine 
	&& room != Quit_Menu
	&& room != Instructions
	&& o_MaoMao.state != PLAYERSTATE.DEAD_IDLE_STATE
	&& !global.readNote)
{
	global.gamePaused = !global.gamePaused;
	instructions = false;
	showPauseMenu = true;
	pauseMenuLevel = 0; //reset back to primary pause screen
	mainMenuLevel = 0;
	
	if (global.gamePaused){

		with(all){ 
			// show_debug_message("HUH?");
			// stores all the current image_speed of all isntances
			gamePausedImageSpeed = image_speed;
			image_speed = 0;
		}
	}
	else {
		with(all){
			image_speed = gamePausedImageSpeed;
		}
	}
	
}