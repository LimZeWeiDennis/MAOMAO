/// @description Insert description here
// You can write your code in this editor


buttonff = keyboard_check(vk_space);

if(buttonff){
	image_speed = 4;
	showtext  = 0;
} else {
	showtext = 1;
	image_speed = 1 //initialise to 0.3
}

switch(state) {
	case (INTROSTATE.STARTING):
	if(sprite_index != s_cageNani){
		sprite_index = s_cageNani;
	}
	image_speed = 1.0 //initialise to 0.3
	
	if(image_index >= 179){
		state = INTROSTATE.END;
	}
	
	break;
	
	case(INTROSTATE.END):
	blink = false;
	instance_destroy();
	TransitionInto(Final, 3770, 75);
	break;
}