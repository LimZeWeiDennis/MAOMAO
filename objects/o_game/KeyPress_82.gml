/// @description Insert description here
// You can write your code in this editor

o_MaoMao.hsp = 0;
o_MaoMao.vsp = 0;
o_MaoMao.hp = o_MaoMao.hpMax;
o_MaoMao.state = PLAYERSTATE.FREE;

switch (o_MaoMao.last_cleared_stage){
case(-1):

TransitionStart(StoryLine, sq_RoomTFadeIn, sq_RoomTFadeOut);	
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

if(TransitionStart(Finalboss_big, sq_RoomTFadeInBig, sq_RoomTFadeOutBig)){
	
	o_BigBoss.x = 3315;
	o_BigBoss.y = 211;

	o_MaoMao.x = 3034;
	o_MaoMao.y = 240;
}

break;
}
