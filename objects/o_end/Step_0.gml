/// @description Insert description here
// You can write your code in this editor

switch(state) {
	case (INTROSTATE.STARTING):
	if(sprite_index != s_ending){
		sprite_index = s_ending;
	}
	image_speed = 0.3 //initialise to 0.3
	
	if(image_index >= 139 && image_index <= 140){
		state = INTROSTATE.HAPPY;
		audio_sound_gain(sound_BossBGM, 0, 2000);
		audio_stop_sound(sound_BossBGM);


		audio_sound_gain(sound_ending, 0, 2000);
		audio_stop_sound(sound_ending);



		audio_play_sound(sound_ending, 100, true);

		audio_sound_gain(sound_ending, 0, 0);

		audio_sound_gain(sound_ending, 1, 2000);


	}
	
	break;
	
	case(INTROSTATE.HAPPY):
		
	if(image_index >= 239){
		state = INTROSTATE.END;
	}
	break;
	
	
	case(INTROSTATE.END):
	blink = false;
	TransitionInto(Quit_Menu, 548, -50);
	break;
}