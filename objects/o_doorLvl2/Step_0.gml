/// @description Insert description here
// You can write your code in this editor

key_go = keyboard_check(vk_up);


switch(state)
{
	case(DOOR_STATE.CLOSE):
	image_index = 0;
	image_speed = 0;
	
	if (o_cagePurple.state == CAGESTATE.OPENED){
		state = DOOR_STATE.OPEN;
		audio_play_sound(sound_doorOpen, 1000 ,false);
	};
	
	break;
	
	case(DOOR_STATE.OPEN):
	
	image_speed = 0.3;
	
	if(image_index >= 7){
		image_speed = 0; 
	} 
	
	
}