/// @description Insert description here
// You can write your code in this editor
switch(state) {
	case(NOTESTATE.NOT_READ):
	
	if(place_meeting(x,y, o_MaoMao)){
		state = NOTESTATE.READ;
	}
	
	break;
	
	case(NOTESTATE.READ):
	
	show_debug_message("note read");
	
	
	if(!place_meeting(x,y, o_MaoMao)){
		
		state = NOTESTATE.NOT_READ;
	}
	
	break;
}