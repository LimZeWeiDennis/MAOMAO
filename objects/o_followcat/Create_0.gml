/// @description Insert description here
// You can write your code in this editor
hsp = 0;
vsp = 0;
facing = 1;

image_speed = 0.3;

enum TUTORSTATE {
	IDLE,
	WALKING,
	JUMPING
}

state = TUTORSTATE.IDLE;

