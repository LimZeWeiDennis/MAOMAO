/// @description Insert description here
// You can write your code in this editor


unlockedDoor = true;

if(state == DOOR_STATE.OPEN && key_go){
	
	o_MaoMao.hp = o_MaoMao.hpMax;
	o_MaoMao.last_cleared_stage = last_room;
	
	if(o_MaoMao.currentSize == 2){
		o_MaoMao.state = PLAYERSTATE.GROWING_STATE;
	}
	
	TransitionInto(targettedRoom, targetX, targetY);

}