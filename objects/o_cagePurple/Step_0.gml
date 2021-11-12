/// @description Insert description here
// You can write your code in this editor

switch(state)
{
	case(CAGESTATE.CLOSED):

	image_speed = 0.3;
	
	break;
	
	case(CAGESTATE.OPEN):
	

	if(sprite_index != open_sprite){
		sprite_index = open_sprite;
		image_index = 0;
		image_speed = 0.6;
	}
	
	if(image_index >= last_index){
		state = CAGESTATE.OPENED;
	}
	
	break;
	
	case(CAGESTATE.OPENED):
	image_index = last_index;
	image_speed = 0;
	
	o_MaoMao.last_cleared_stage = Level2;
	break;
}