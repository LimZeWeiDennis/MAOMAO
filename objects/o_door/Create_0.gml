/// @description Insert description here
// You can write your code in this editor

state = DOOR_STATE.CLOSE;
targettedRoom = -1;
targetX = 0;
targetY = 0;
last_room = -1;

enum DOOR_STATE {
	OPEN,
	CLOSE
}  


unlockedDoor = false;