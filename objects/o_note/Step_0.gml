/// @description Insert description here
// You can write your code in this editor

check_c = keyboard_check_pressed(vk_enter);

switch(state) {
	case(NOTESTATE.NOT_READ):
	
	if(place_meeting(x,y, o_MaoMao)){
		state = NOTESTATE.READ;
		global.readNote = true;
		audio_play_sound(sound_note, 1000, false);
	}
	
	break;
	 
	case(NOTESTATE.READ):
	
	show_debug_message("note read");
	global.gamePaused = true;

	if(check_c) {
		state = NOTESTATE.DESTROYED;
		global.gamePaused = false;
		global.readNote = false;
	}
	
	
	//if(!place_meeting(x,y, o_MaoMao)){
		
	//	state = NOTESTATE.READ;
	//}
	
	break;
	
	case(NOTESTATE.DESTROYED):
	o_MaoMao.notes ++;
	instance_destroy(); 
}