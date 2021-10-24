/// @description Insert description here
// You can write your code in this editor
key_enter = keyboard_check_pressed(vk_enter);

if(key_enter){
	
	switch (o_MaoMao.last_cleared_stage){
	case(-1):
	
	
	TransitionStart(StoryLine, sq_RoomTFadeIn, sq_RoomTFadeOut);
	//room_goto(StoryLine);
	o_MaoMao.x = 755;
	o_MaoMao.y = 239;
	
	break;
		
	// after the restart in tutorial is pressed
	case("reset tutorial"):
	
	TransitionStart(Tutorial, sq_RoomTFadeIn, sq_RoomTFadeOut);
	o_MaoMao.x = 375;
	o_MaoMao.y =213;
	
	break;
	case(Tutorial):
		
	TransitionStart(Level1_new, sq_RoomTFadeIn, sq_RoomTFadeOut);
	o_MaoMao.x = 88;
	o_MaoMao.y = 283;
	break;
		
	case(Level1_new):
		
		
	TransitionStart(Final_v2, sq_RoomTFadeIn, sq_RoomTFadeOut);
	o_MaoMao.x = 80;
	o_MaoMao.y = 129;
	break;
	
	case(Final_v2):
	
	TransitionStart(Finalboss_big, sq_RoomTFadeIn, sq_RoomTFadeOut);
	o_MaoMao.x = 3034;
	o_MaoMao.y = 240;
	break;
	}
}