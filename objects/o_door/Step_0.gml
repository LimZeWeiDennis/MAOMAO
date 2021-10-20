/// @description Insert description here
// You can write your code in this editor

key_go = keyboard_check(vk_up);


switch(state)
{
	case(DOOR_STATE.CLOSE):
	image_index = 0;
	image_speed = 0;
	
	if (unlockedDoor){
		state = DOOR_STATE.OPEN;
	};
	break;
	
	case(DOOR_STATE.OPEN):
	
	image_speed = 0.3;
	
	if(image_index >= 7){
		image_speed = 0;
	}
	
	
}
