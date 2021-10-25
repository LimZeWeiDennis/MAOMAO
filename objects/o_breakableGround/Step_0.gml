/// @description Insert description here
// You can write your code in this editor

switch(state)
{
	case BREAKABLEWALL_STATE.UNBROKEN:
	if(hp < 0)
	{
		state = BREAKABLEWALL_STATE.BROKEN;
	}
	
	break;
	
	case BREAKABLEWALL_STATE.BROKEN:
	
	image_speed = 0.3;
	
	if(image_index >= 3) {
		audio_play_sound(sound_breakableGround, 1000, false);
		instance_destroy();
	}
	
	break;
	
}