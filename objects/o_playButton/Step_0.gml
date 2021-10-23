/// @description Insert description here
// You can write your code in this editor
key_enter = keyboard_check_pressed(vk_enter);

if(key_enter){
	
	switch (o_MaoMao.last_cleared_stage){
	case(-1):
	
	
	TransitionStart(StoryLine, sq_RoomTFadeIn, sq_RoomTFadeOut);
	//room_goto(StoryLine);
	o_MaoMao.x = 1219;
	o_MaoMao.y = 41;
	
	break;
		
	// after the restart in tutorial is pressed
	case("reset tutorial"):
	
	room_goto(Tutorial);
	o_MaoMao.x = 375;
	o_MaoMao.y =213;
	
	break;
	case(Tutorial):
		
	room_goto(Level1_new);
	o_MaoMao.x = 88;
	o_MaoMao.y = 283;
	break;
		
	case(Level1_new):
		
		
	room_goto(Final_v2);
	o_MaoMao.x = 80;
	o_MaoMao.y = 129;
	break;
	
	case(Final_v2):
	
	room_goto(Finalboss_big);
	o_MaoMao.x = 3034;
	o_MaoMao.y = 240;
	break;
	}
}