// basic physics set up
hsp = 0;
vsp = 0;
grav = 0.5 ;
walk_spd = [3,3,3,3];
jump_height = [9,9,9,9];

//how fast the player deccelerates
drag = 0.8;
facing = -1;

acc = 0.1;
starting_speed = 0; 

//prevents maomao from attacking too fast, will adjust according to size(can change as growth)
currentSlashingCD = 30;

//current size settings (Works as a multiplier to the stats and scaling)
currentSize = 1;
growthSize = [1,1.2,1.5,2,2.5, 3];
 

//current state of maomao
state = PLAYERSTATE.FREE;

//setting attack list
hitByAttack = ds_list_create();
slashingCD = currentSlashingCD;
currentAttack = 2;

//setting up for the GUI for health and fullness
fullness = 0; 
fullnessMax = 10;
fullnessBar_width = 630;
fullnessBar_height = 26 ;
//sets the original position of the fullness bar
fullnessBar_X = 5;
fullnessBar_Y = 5;

hpMax = 5;
hp = hpMax;
//sets the original position of the hearts
hp_start_X = 0;
hp_start_Y = fullnessBar_height + 10;



//to be deleted
unlockRoom = false;

// setting damage
flash = 3;
hitCoolDown = 0;
 
enum PLAYERSTATE {
	FREE,
	ATTACK_STATE,
	EAT_STATE,
	DEAD_STATE, 
	HIT_STATE
}


//setting up the sprites
jump_sprite = s_MaoMaoJ;
idle_sprite = s_MaoMaoIdle;
moving_sprite = s_player;
attack_sprite = s_playerAttack;