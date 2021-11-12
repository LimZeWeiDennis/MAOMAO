/// @description Insert description here
// You can write your code in this editor

switch(state) {
	case (INTROSTATE.STARTING):
	if(sprite_index != s_introLetterBox){
		sprite_index = s_introLetterBox;
	}
	image_speed = 0.3 //initialise to 0.3
	
	if(image_index >= 287){
		state = INTROSTATE.END;
	}
	
	break;

	
	case(INTROSTATE.END):
	blink = false;
	
	TransitionInto(Tutorial, 76, 260);
	break;
}