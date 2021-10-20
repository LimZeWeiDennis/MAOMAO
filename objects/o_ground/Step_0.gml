/// @description Insert description here
// You can write your code in this editor

switch(state){
	
	case GROUND_STATE.OKAY :
	
	break;
	
	case GROUND_STATE.DESTROYED:
	
	if(sprite_index!=s_groundFked){
		sprite_index = s_groundFked;
		image_speed = 0.5;
	}
	
	if(image_index >= 6){
		instance_destroy();
	}
}