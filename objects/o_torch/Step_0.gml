/// @description Insert description here
// You can write your code in this editor

switch(state){
	case(TORCHSTATE.INACTIVE):
	
	show_debug_message("current state is inactive");
	
	if(sprite_index != inactive_sprite){
		sprite_index = inactive_sprite
		image_index = 7;
		image_speed = 0;
	}
	
	image_speed = 0;
	
	rest_time --;
	
	if(rest_time <= 0){
		state = TORCHSTATE.ACTIVE;
		rest_time = 1000;
	}
	
	break;
	
	case(TORCHSTATE.TRANSITION):
	 
	show_debug_message("current state is transition");
	
	if(sprite_index != inactive_sprite){
		sprite_index = inactive_sprite;
		image_speed = 0.5;
	}
	
	if (image_index = 7){
		state = TORCHSTATE.INACTIVE;
	}
	
	break;
	
	case(TORCHSTATE.ACTIVE):
	
	show_debug_message("current state is active");
	
	if(sprite_index != active_sprite){
		sprite_index = active_sprite
		mask_index = active_sprite
		image_speed = 0.5;
	}
	
	active_time --;
	
	if(active_time <= 0) {
		state = TORCHSTATE.TRANSITION;
		mask_index = inactive_sprite;
		active_time = 1000;
	}
	
	break;
	
}