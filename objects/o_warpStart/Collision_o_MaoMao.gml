/// @description Insert description here
// You can write your code in this editor

switch (o_MaoMao.last_cleared_stage){
	case(-1):
	
	room_goto(Tutorial);
	o_MaoMao.x = 76;
	o_MaoMao.y = 213;
	break;
		
	case(Tutorial):
		
	room_goto(Level1_new);
	o_MaoMao.x = 88;
	o_MaoMao.y = 193;
	break;
		
	case(Level1_new):
		
		
	room_goto(Final_v2);
	o_MaoMao.x = 2016;
	o_MaoMao.y = 37;
	break;
	
	case(Final_v2):
	
	room_goto(Finalboss_big);
	o_MaoMao.x = 1900;
	o_MaoMao.y = 216;
	break;
}
