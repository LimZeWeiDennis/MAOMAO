/// @description Insert description here
// You can write your code in this editor

switch(state) {
	case (INTROSTATE.STARTING):
	if(sprite_index != s_ending){
		sprite_index = s_ending;
	}
	image_speed = 0.3 //initialise to 0.3
	
	if(image_index >= 239){
		state = INTROSTATE.END;
	}
	
	break;
	
	//case(INTROSTATE.KIDNAP):
	//if(sprite_index != s_lastScene2){
	//	sprite_index = s_lastScene2;
	//}
	
	//if(image_index >= 39){
	//	state = INTROSTATE.ANGRY;
	//}

	//break;
	
	//case(INTROSTATE.ANGRY):
	//if(sprite_index != s_lastScene3){
	//	sprite_index = s_lastScene3;
	//}
	
	//if(image_index >= 22){
	//	state = INTROSTATE.END;
	//}

	//break;
	
	case(INTROSTATE.END):
	blink = false;
	TransitionInto(Quit_Menu, 548, -50);
	break;
}