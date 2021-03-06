// basic physics set up
hsp = 0;
vsp = 0;
grav = 0.2 ;
walk_spd = [2, 1.5];

jump_height = [4,2];


//how fast the player deccelerates
drag = 0.8;
facing = -1;

jumpCD = 0;

acc = 0.1;
starting_speed = 0; 

//prevents maomao from attacking too fast, will adjust according to size(can change as growth)
currentSlashingCD = 30;

//current size settings (Works as a multiplier to the stats and scaling)
currentSize = 1;

growthSize = [1,3];
growthCD = 0;

is_white = false;
 

//current state of maomao
state = PLAYERSTATE.FREE;

//setting attack list
hitByAttack = ds_list_create();
slashingCD = currentSlashingCD;
currentAttack = 2;

notes = 0;


//to be deleted
unlockRoom = false;

// setting damage
flash = 3;
hitCoolDown = 0;
 
enum PLAYERSTATE {

	FREE,
	ATTACK_STATE,
	EAT_STATE,
	LANDING_STATE,
	DEAD_STATE, 
	HIT_STATE,
	DEAD_IDLE_STATE,
	GROWING_STATE

}


last_cleared_stage = Level2;



//setting up the sprites
jump_sprite = s_MaoMaoJ;
idle_sprite = s_MaoMaoI;
moving_sprite = s_MaoMaoWalk;
attack_sprite = s_MaoMaoAttack;
dead_sprite = s_MaoMaoDead;
dead_idle_sprite = s_MaoMaoDeadIdle;
eating_sprite = s_MaoMaoEating;
growing_sprite = s_MaoMaoGrows;
shrinking_sprite = s_MaoMaoShrinks;