/// @description Insert description here
// You can write your code in this editor

show_debug_message("door leh");

unlockedDoor = true;

show_debug_message(state == DOOR_STATE.OPEN);

if(state == DOOR_STATE.OPEN && key_go){
	
	o_MaoMao.hp = o_MaoMao.hpMax;
	o_MaoMao.last_cleared_stage = Level1_new;
	
	if(o_MaoMao.currentSize == 2){
		o_MaoMao.state = PLAYERSTATE.GROWING_STATE;
	}
	
	TransitionStart(targettedRoom, sq_RoomTFadeIn, sq_RoomTFadeOut);
	o_MaoMao.x = 80;
	o_MaoMao.y = 129;
}
 