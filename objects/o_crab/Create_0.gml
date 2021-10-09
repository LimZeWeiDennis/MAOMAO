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

hpMax = 5;
hp = hpMax;

attackCoolDown = 50;
maxAttackCoolDown = 300;

flash = 0;

//setting cooldown for movement
timeBeforeNextMovement = 0;
 
idleSprite = s_crab;
deadObject = o_crabDead;
attackSprite = s_crabAttack;
attackHBSprite = s_crabAttackHB;

state = ENEMY_STATE.FREE;
