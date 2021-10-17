/// @description Insert description here
// You can write your code in this editor

switch(state)
{
	case BREAKABLEWALL_STATE.UNBROKEN:
	if( hp > 0) {
		
		image_index = 3 - hp;
	} else {
		state = BREAKABLEWALL_STATE.BROKEN;
	}
	
	break;
	
	case BREAKABLEWALL_STATE.BROKEN:
	
	instance_destroy();
	
	break;
	
}