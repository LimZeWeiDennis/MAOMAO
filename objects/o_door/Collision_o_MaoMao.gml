/// @description Insert description here
// You can write your code in this editor

if(state == DOOR_STATE.CLOSE){
	unlockedDoor = true;	
}

if(state == DOOR_STATE.OPEN && key_go){
	
	room_goto(targettedRoom);
	o_MaoMao.x = 764;
	o_MaoMao.y = 92;
}