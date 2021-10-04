hsp = 0;
vsp = 0;
grav = 0.5;
walk_spd = 0.1;
drag = 0.9;
facing = -1;


//
xToMove = random_range(-10,10);
xMoved = 0;

hp = 6;
flash = 0;

//setting cooldown for movement
timeBeforeNextMovement = 0;

idleSprite = s_fishKnightR
deadObject = o_fishKnightDead

state = ENEMY_STATE.FREE;