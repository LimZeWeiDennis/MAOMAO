/// @description Insert description here
// You can write your code in this editor

hsp = 0;
vsp = 0;
grav = 0.5;
walk_spd = 3;
drag = 0.9;
facing = -1;

xMoved = 0;
xToMove = 0;

hpMax = 5;
hp = hpMax;


maxAttackCoolDown = 50;
attackCoolDown = maxAttackCoolDown;

attack_range = 0;

flash = 0;

//setting cooldown for movement
timeBeforeNextMovement = 0;
//move only for 50 frames
movementTime = 50;

scale_of_boss = 3;
 
idleSprite = -1;
attackSprite = -1;
attackHBSprite = -1;
deadObject = -1;
attack_last_index = -1;
walking_sprite = -1;

state = ENEMY_STATE.FREE;

