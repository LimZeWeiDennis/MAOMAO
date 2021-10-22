/// @description Insert description here
// You can write your code in this editor

facing = o_MaoMao.facing;

if(facing > 0){
	
	x = o_MaoMao.x-30;
} else {
	x = o_MaoMao.x + 30;
}
y = o_MaoMao.y;




switch(state){
	case(TUTORSTATE.IDLE):
	
	if(sprite_index != s_tutoridle){
		sprite_index = s_tutoridle;
	}
	
	if (o_MaoMao.vsp != 0){
		state = TUTORSTATE.JUMPING;
	}
	
	if( o_MaoMao.hsp != 0){
		state = TUTORSTATE.WALKING;
	}
	
	image_xscale = facing;
	
	break;
	
	case(TUTORSTATE.WALKING):
	
	if(sprite_index != s_tutorwalk){
		sprite_index = s_tutorwalk;
	}
	
	if(o_MaoMao.hsp == 0){
		state = TUTORSTATE.IDLE;
	}
	
	break;
	
	case(TUTORSTATE.JUMPING):
	
	if(sprite_index != s_tutorjump){
		sprite_index = s_tutorjump;
	}
	
	if(o_MaoMao.vsp == 0){
		state = TUTORSTATE.IDLE;
	}
	
	break;
}