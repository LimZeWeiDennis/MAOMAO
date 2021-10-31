/// @description Esc key to pause
// You can write your code in this editor

if(keyboard_check_pressed(vk_escape) 
	&& room != Main_Menu 
	&& room != StoryLine 
	&& room != Quit_Menu
	&& room != Instructions
	)
{
	global.gamePaused = !global.gamePaused;
	global.instruction = false;
	global.show_pause_menu = true;
	global.menuLevel = 0;
	
	if (global.gamePaused){

		with(all){ 
			
			show_debug_message("HUH?");
			// stores all the current image_speed of all isntances
			gamePausedImageSpeed = image_speed;
			image_speed = 0;
		}
		
	}
	else {
		//show_pause_menu = false;
		with(all){
			image_speed = gamePausedImageSpeed;
		}
	}
}