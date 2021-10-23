/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_escape)){
	global.game_pause = !global.game_pause;
	
	if(global.game_pause){
		show_debug_message("game paused");
		with(all){
			
			// stores all the current image_speed of all isntances
			game_paused_image_speed = image_speed;
			image_speed = 0;
		}
	}
	else {
		with(all){
			image_speed = game_paused_image_speed;
		}
	}
}