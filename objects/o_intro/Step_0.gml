/// @description Insert description here
// You can write your code in this editor

key_ff = keyboard_check(vk_space);

switch(state) {
	case (INTROSTATE.STARTING):
	if(sprite_index != s_starting){
		sprite_index = s_starting;
	}
	image_speed = 0.3 //initialise to 0.3
	
	if(image_index >= 15){
		state = INTROSTATE.KIDNAP;
	}
	
	break;
	
	case(INTROSTATE.KIDNAP):
	if(sprite_index != s_kidnapped){
		sprite_index = s_kidnapped;
	}
	
	if(key_ff){
		image_speed = 2;
	}
	
	if(image_index >= 131){
		state = INTROSTATE.END;
	}

	break;
	
	case(INTROSTATE.END):
	
	TransitionInto(Tutorial, 76, 213);
	break;
}