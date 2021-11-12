/// @description Insert description here
// You can write your code in this editor


buttonff = keyboard_check(vk_space);

if(buttonff){
	image_speed = 4;
	showtext  = 0;
} else {
	showtext = 1;
	image_speed = 1 //initialise to 0.3
}

switch(state) {
	case (INTROSTATE.STARTING):
	if(sprite_index != s_ending){
		sprite_index = s_ending;
	}
	image_speed = 1.0 //initialise to 0.3
	
	if(image_index >= 139 && image_index <= 142){
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
		
	if(image_index >= 237){
		state = INTROSTATE.END;
	}
	break;
	
	
	case(INTROSTATE.END):
	blink = false;
	TransitionInto(Quit_Menu, 548, -50);
	break;
}