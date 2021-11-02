/// @description Insert description here
// You can write your code in this editor

switch(state) {
	case (INTROSTATE.STARTING):
	if(sprite_index != s_openCage){
		sprite_index = s_openCage;
	}
	image_speed = 0.3 //initialise to 0.3
	
	if(image_index >= 122){
		state = INTROSTATE.END;
	}
	
	break;
	
	case(INTROSTATE.END):
	blink = false;
	
	TransitionInto(Final, 3105, 240);
	break;
}