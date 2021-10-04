hsp = 0;
vsp = 0;
grav = 0.5;
walk_spd = -0.1;
drag = 0.9; 


//
xToMove = random_range(-20,20);
xMoved = 0;

hp = 20;
flash = 0;

//setting cooldown for movement
timeBeforeNextMovement = 0;

 
idleSprite = s_fish_moving;
deadObject = o_fishdead;


state = ENEMY_STATE.FREE;

