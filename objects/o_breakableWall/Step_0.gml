/// @description Insert description here
// You can write your code in this editor
shake --;
switch(state)
{
	case BREAKABLEWALL_STATE.UNBROKEN:
	if( hp <= 0) {
		state = BREAKABLEWALL_STATE.BROKEN;
		audio_play_sound(sound_BreakWall, 1000, false);
	}
	
	break;
	
	case BREAKABLEWALL_STATE.BROKEN:
	
	image_speed = 0.5;
	
	if(image_index >= 6){
		
		instance_destroy();
	
	}

	break;
	
}