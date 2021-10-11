hsp = 0;
vsp = 0;
grav = 0.5;
walk_spd = -0.1;
drag = 0.9; 


//
xToMove = random_range(-20,20);
xMoved = 0;

hpMax = 5;
hp = hpMax;


maxAttackCoolDown = 300;
attackCoolDown = 50;
flash = 0;

//setting cooldown for movement
timeBeforeNextMovement = 0;

 
idleSprite = s_fish_moving;
deadObject = o_fishdead;
attackSprite = s_fish_attack;
attackHBSprite = s_fish_attack;


state = ENEMY_STATE.FREE;

