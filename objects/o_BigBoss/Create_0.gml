/// @description Insert description here
// You can write your code in this editor

hsp = 0;
walk_spd = 2.5;
drag = 0.9;
facing = -1;

xMoved = 0;
xToMove = 0;

attackCoolDown = 0;
maxAttackCoolDown = 120;

attack_range = 30;

flash = 0;


//setting cooldown for movement
timeBeforeNextMovement = 30;
movementTime = 10;
 
idleSprite = s_bigBoss;
attackSprite = s_BigBossAttack;
attackHBSprite = s_BigBossAttackHB;
attack_last_index = 6;
walking_sprite = s_BigBossWalk;

state = ENEMY_STATE.FREE;

