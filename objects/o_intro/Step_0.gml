/// @description Insert description here
// You can write your code in this editor

switch(state) {
	case (INTROSTATE.STARTING):
	if(sprite_index != s_starting){
		sprite_index = s_starting;
	}
	
	if(image_index >= 15){
		state = INTROSTATE.KIDNAP;
	}
	
	break;
	
	case(INTROSTATE.KIDNAP):
	if(sprite_index != s_kidnapped){
		sprite_index = s_kidnapped;
	}
	
	if(image_index >= 131){
		state = INTROSTATE.END;
	}
	
	break;
	
	case(INTROSTATE.END):
	
	room_goto(Tutorial);
	o_MaoMao.x = 76;
	o_MaoMao.y = 213;
	break;
}