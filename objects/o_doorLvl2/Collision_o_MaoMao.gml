/// @description Insert description here
// You can write your code in this editor

show_debug_message("door leh");

unlockedDoor = true;

show_debug_message(state == DOOR_STATE.OPEN);

if(state == DOOR_STATE.OPEN && key_go){
	
	o_MaoMao.hp = o_MaoMao.hpMax;
	o_MaoMao.last_cleared_stage = Final_v2;
	room_goto(targettedRoom);
	o_MaoMao.x = 1999;
	o_MaoMao.y = 216;
}
 