/// @description Insert description here
// You can write your code in this editor

active_time = 50;
rest_time = 50;

inactive_sprite = s_torchInactive;
active_sprite = s_torchActive;

enum TORCHSTATE {
	ACTIVE,
	TRANSITION,
	INACTIVE
}

state = TORCHSTATE.INACTIVE;