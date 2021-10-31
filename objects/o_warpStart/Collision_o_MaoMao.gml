/// @description Insert description here
// You can write your code in this editor

switch (o_MaoMao.last_cleared_stage){
	case(-1):
	
	room_goto(Tutorial);
	o_MaoMao.x = 70;
	o_MaoMao.y = 260;
	
	break;
		
	case(Tutorial):
		
	room_goto(Level1);
	o_MaoMao.x = 80;
	o_MaoMao.y = 288;
	break;
		
	case(Level1):
		
		
	room_goto(Level2);
	o_MaoMao.x = 80;
	o_MaoMao.y = 129;
	break;
	
	case(Level2):
	
	room_goto(Final);
	o_MaoMao.x = 3118;
	o_MaoMao.y = 240;
	break;
}
