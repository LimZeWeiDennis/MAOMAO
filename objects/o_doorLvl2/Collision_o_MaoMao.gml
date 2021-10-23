/// @description Insert description here
// You can write your code in this editor

show_debug_message("door leh");

unlockedDoor = true;

show_debug_message(state == DOOR_STATE.OPEN);

if(state == DOOR_STATE.OPEN && key_go){
	
	o_MaoMao.hp = o_MaoMao.hpMax;
	o_MaoMao.last_cleared_stage = Final_v2;
	
	if(o_MaoMao.currentSize == 2){
		o_MaoMao.state = PLAYERSTATE.GROWING_STATE;
	}
	
	
	
	room_goto(targettedRoom);
	o_MaoMao.x = 3034;
	o_MaoMao.y = 240;
}
 