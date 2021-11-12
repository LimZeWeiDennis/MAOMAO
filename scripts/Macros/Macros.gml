//Black Overlay box for In Game screens
function BlackOverlay(){
	draw_set_colour(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0,0,1280,600,false);
	draw_set_alpha(1.0);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
}

//Playbutton transitions
function PlayButton(){
	        switch (o_MaoMao.last_cleared_stage){
		case(-1):

		TransitionInto(StoryLine, 755, 239);	
		//o_MaoMao.x = 755;
		//o_MaoMao.y = 239;
	
		break;
		
		// after the restart in tutorial is pressed
		case("reset tutorial"):
		
		TransitionInto(Tutorial, 375, 260);
		//o_MaoMao.x = 375;
		//o_MaoMao.y =213;
	
		break;

		case(Tutorial):

		TransitionInto(Level1, 88, 283);
		//o_MaoMao.x = 88;
		//o_MaoMao.y = 283;
		break;
		
		case(Level1):
		TransitionInto(Level2, 80, 129);
	
		//o_MaoMao.x = 80;
		//o_MaoMao.y = 129;
		break;
	
		case(Level2):
		
		global.numFriendSave = 1;
		TransitionInto(Final, 3770, 75);

		break;
		
		//case(Final):
		
		//global.numFriendSave = 2;
		//TransitionInto(Quit_Menu, 500, -100);

		//break;
		
	}
 }