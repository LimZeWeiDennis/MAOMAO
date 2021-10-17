/// @description Insert description here
// You can write your code in this editor
active_time = 50;
rest_time = 50;

grav = 0.4;

inactive_sprite = -1;
active_sprite = -1;
activating_sprite = -1;

enum ENVIRONMENTSTATE {
	ACTIVE,
	TRANSITION,
	INACTIVE,
	ACTIVATING
}

state = ENVIRONMENTSTATE.INACTIVE;