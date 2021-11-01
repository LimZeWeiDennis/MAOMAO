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
		audio_play_sound(sound_groundBoss, 1000, false);
		audio_sound_gain(sound_groundBoss, 0.1, 0);
		instance_destroy();
	}
}