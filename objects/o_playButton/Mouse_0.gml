/// @description Insert description here
// You can write your code in this editor

if collision_point(mouse_x, mouse_y, id, true, false) { //Arguments are (x, y, obj, prec, notme)
        switch (o_MaoMao.last_cleared_stage){
		case(-1):

		TransitionInto(StoryLine, 755, 239);	
		//o_MaoMao.x = 755;
		//o_MaoMao.y = 239;
	
		break;
		
		// after the restart in tutorial is pressed
		case("reset tutorial"):
		
		TransitionInto(Tutorial, 375, 213);
		//o_MaoMao.x = 375;
		//o_MaoMao.y =213;
	
		break;

		case(Tutorial):

		TransitionInto(Level1_new, 88, 283);
		//o_MaoMao.x = 88;
		//o_MaoMao.y = 283;
		break;
		
		case(Level1_new):
		TransitionInto(Final_v2, 80, 129);
	
		//o_MaoMao.x = 80;
		//o_MaoMao.y = 129;
		break;
	
		case(Final_v2):
		TransitionInto(Finalboss_big, 3034, 240);
	
		o_BigBoss.x = 3315;
		o_BigBoss.y = 211;

		break;
	}
 }