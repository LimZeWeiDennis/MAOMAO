/// @description Insert description here
// You can write your code in this editor

switch(state) {
	case (INTROSTATE.STARTING):
	if(sprite_index != s_cageNani){
		sprite_index = s_cageNani;
	}
	image_speed = 0.3 //initialise to 0.3
	
	if(image_index >= 179){
		state = INTROSTATE.END;
	}
	
	break;
	
	case(INTROSTATE.END):
	blink = false;
	instance_destroy();
	TransitionInto(Final, 3105, 240);
	break;
}