/// @description Insert description here
// You can write your code in this editor

key_go = keyboard_check(vk_up);


switch(state)
{
	case(DOOR_STATE.CLOSE):
	image_index = 0;
	image_speed = 0;
	
	if (o_MaoMao.unlockRoom){
		state = DOOR_STATE.OPEN;
	};
	break;
	
	case(DOOR_STATE.OPEN):
	image_index = 1;
	image_speed = 0;
	
	
}
