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

hp = 3;
flash = 0;

//setting cooldown for movement
timeBeforeNextMovement = 0;
 
idleSprite = s_crab;
deadObject = -1;

state = ENEMY_STATE.FREE;
