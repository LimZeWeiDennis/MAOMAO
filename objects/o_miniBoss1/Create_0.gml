/// @description Insert description here
// You can write your code in this editor

hsp = 0;
vsp = 0;
grav = 0.5;
walk_spd = 2.5;
drag = 0.9;
facing = -1;

xMoved = 0;
xToMove = 0;
 
hpMax = 18;
hp = hpMax;

attackCoolDown = 0;
maxAttackCoolDown = 120;

attack_range = 30;

flash = 0;

scale_of_boss = 3;

//setting cooldown for movement
timeBeforeNextMovement = 0;
movementTime = 50;
 
idleSprite = s_crab;
deadObject = o_miniBoss1Dead;
attackSprite = s_crabAttack;
attackHBSprite = s_crabAttackHB;
attack_last_index = 6;
walking_sprite = s_crabWalk;

state = ENEMY_STATE.FREE;
