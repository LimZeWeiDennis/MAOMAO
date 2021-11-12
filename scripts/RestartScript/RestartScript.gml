// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RestartScript(){
	if (room != Main_Menu && room!= StoryLine && room != Quit_Menu ){
	o_MaoMao.hsp = 0;
	o_MaoMao.vsp = 0;
	global.hp = global.hpMax;
	o_MaoMao.state = PLAYERSTATE.FREE;

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
		
		case("cage open"):
		TransitionInto(Level2, 1928, 182);
	
		//o_MaoMao.x = 80;
		//o_MaoMao.y = 129;
		break;
	
		case(Level2):
		o_BigBoss.x = 3453;
		o_BigBoss.y = 211;
		global.numFriendSave = 1;
		TransitionInto(Final, 3770, 75);

		break;
	}
	o_MaoMao.currentSize = 1;
	o_MaoMao.image_xscale = o_MaoMao.growthSize[o_MaoMao.currentSize - 1];
	o_MaoMao.image_yscale = o_MaoMao.growthSize[o_MaoMao.currentSize - 1];
	
	}
}