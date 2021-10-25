/// @description Insert description here
// You can write your code in this editor

enum INTROSTATE {
	STARTING,
	KIDNAP,
	ANGRY,
	END
}

state = INTROSTATE.STARTING;

showtext = 1;

//For blinking text
blink = true;
blink_steps = room_speed/4; //adjust here to change speed if blink
alarm[0] = blink_steps;