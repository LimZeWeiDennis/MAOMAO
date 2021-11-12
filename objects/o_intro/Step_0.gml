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
	if(sprite_index != s_introLetterBox){
		sprite_index = s_introLetterBox;
	}
	
	if(image_index >= 287){
		state = INTROSTATE.END;
	}

	break;
	
	
	case(INTROSTATE.END):
	blink = false;
	
	TransitionInto(Tutorial, 76, 260);
	break;
}