/// @description Insert description here
// You can write your code in this editor

switch(state)
{
	case(CAGESTATE.CLOSED):
	image_index = 0;
	image_speed = 0;
	
	break;
	
	case(CAGESTATE.OPEN):
	image_speed = 0.5;
	
	if(image_index >= 7){
		state = CAGESTATE.OPENED;
	}
	
	break;
	
	case(CAGESTATE.OPENED):
	image_index = 7;
	image_speed = 0;
	break;
}