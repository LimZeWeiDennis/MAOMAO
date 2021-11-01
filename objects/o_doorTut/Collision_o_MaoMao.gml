/// @description Insert description here
// You can write your code in this editor

if(state == DOOR_STATE.OPEN && key_go){
	
	o_MaoMao.last_cleared_stage = Tutorial;
	
	if(o_MaoMao.currentSize == 2){
		o_MaoMao.state = PLAYERSTATE.GROWING_STATE;
	}
	
	TransitionStart(targettedRoom, sq_RoomTFadeIn, sq_RoomTFadeOut);
	o_MaoMao.x = 88;
	o_MaoMao.y = 193;
}
