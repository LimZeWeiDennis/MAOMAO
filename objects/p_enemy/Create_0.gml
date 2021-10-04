/// @description Insert description here
// You can write your code in this editor

hsp = 0;
vsp = 0;
grav = 0.5;
walk_spd = 5;
drag = 0.9;
facing = -1;

xMoved = 0;
xToMove = 0;

hp = 5;
flash = 0;

//setting cooldown for movement
timeBeforeNextMovement = 0;
 
idleSprite = -1;
deadObject = -1;

state = ENEMY_STATE.FREE;

enum ENEMY_STATE {
	FREE,
	ATTACK,
	HIT, 
	DEAD_STATE
} 