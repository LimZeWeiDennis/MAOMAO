/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_escape) 
	&& room != Main_Menu 
	&& room != StoryLine 
	&& room != Quit_Menu
	&& room != Instructions
	&& (!instance_exists(o_transition))){
	global.game_pause = !global.game_pause;
	
	if(global.game_pause){

		with(all){ 
			
			show_debug_message("HUH?");
			// stores all the current image_speed of all isntances
			game_paused_image_speed = image_speed;
			image_speed = 0;
		}
		
		show_pause_menu = true;
		show_debug_message("game paused");
	}
	else {
		show_pause_menu = false;
		with(all){
			image_speed = game_paused_image_speed;
		}
	}
}