//checks if the left key/right key is being pressed --> press and hold is allowed
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_attack = keyboard_check_pressed(ord("C"));
key_eat = keyboard_check_pressed(ord("Z"));
key_restart = keyboard_check_pressed(ord("R"));

//to test the growth
key_growth = keyboard_check_pressed(ord("A"));
if(key_growth){
	if(currentSize < 4){
		
		currentSize++;
	} else {
		currentSize = 1;
	}
	image_xscale = growthSize[currentSize - 1];
	image_yscale = growthSize[currentSize - 1];
	y -= sprite_height/3;
}



if(key_restart) {
	game_restart();
}
//this check if the key is pressed, doesnt allow holding
//key_jump = keyboard_check_pressed(vk_space);	
key_jump = keyboard_check(vk_space);

slashingCD --;

switch (state)
{	
	//case where the player is not attacking
	case PLAYERSTATE.FREE: 
	
	hitCoolDown --;
	//to ensure that the player object does not move when both keys are pressed
	var move = key_right - key_left;
	
	
	// if player releases the move buttons deccelerate 
	if(move == 0) {
		hsp = hsp * drag;
		
	// when the player is moving MAOMAO
	// cases: moving , change direction
	} else {
		
		// checking if not moving initially or changing direction
		if (hsp == 0 || sign(hsp) != sign(move))
		{
			hsp = starting_speed + move;
		}
		else
		{
			if(abs(hsp) <= walk_spd[currentSize - 1])
			{
				//hsp gradually increases using acc until the absolute value of the speed is the max speed
				hsp += move * acc;
			}
		}
		
	}

	vsp = vsp + grav;
	//checking if the MaoMao object is already on the ground and the jump key is being pressed
	if(place_meeting(x,y+1,o_ground) && key_jump)
	{
		vsp -= jump_height[currentSize - 1];	
	}


	// checking for x collision
	if(place_meeting(x+hsp , y, o_ground))
	{  
		while (!place_meeting(x+sign(hsp), y, o_ground))
		{
			x += sign(hsp);
		}
	
		hsp = 0; 
	
	}

	x += hsp;

	// checking for y collision
	if(place_meeting(x , y+vsp, o_ground))
	{
		while (!place_meeting(x, y+sign(vsp), o_ground))
		{
			y += sign(vsp);
		}
	
		vsp = 0; 
	
	}

	y += vsp;


	//Animation ------------

	//if player object is off the ground
	if(!place_meeting(x,y+1,o_ground))
	{
		sprite_index = jump_sprite;
		image_speed = 0.5;
		//if(sign(vsp) > 0 ) image_index = 0; else image_index = 1;
	
	} 
	else
	{
		image_speed = 0.1;
		sprite_index = idle_sprite;
	}

	if(hsp != 0) {
		facing = sign(hsp);
		
		// need to scale in the opposite direction as well, hence * currentSize
		image_xscale = sign(hsp) * growthSize[currentSize - 1 ];
	}
	
	if(key_attack && slashingCD <= 0) { state = PLAYERSTATE.ATTACK_STATE;}

	//draw_sprite_ext(noone, 0, x,   y, move*facing, 1, 0, $FFFFF F & $ffffff, 1);
	break;
	
	
	//case where the player is attacking
	case PLAYERSTATE.ATTACK_STATE:	
	
	//reset the cooldown
	slashingCD = currentSlashingCD;
	
	//checking if the player sprite is in the right one
	if (sprite_index != s_playerAttack){
		sprite_index = s_playerAttack; 
		image_index = 0;
		image_speed = 1;
		mask_index = s_playerAttackHB;
		ds_list_clear(hitByAttack);
	} 
	
	
	var hitByNow = ds_list_create();
	
	//checks if hits fish sprite
	var hits = instance_place_list(x, y, p_enemy, hitByNow, false);
	
	// script used to check the hits and converts into damage
	script_execute(checkHitBy, hitByNow, hits);
	
	
	
	
	//checks if hits fishknight sprite
	//var hits = instance_place_list(x, y, o_fishKnight, hitByNow, false);
	
	// script used to check the hits and converts into damage
	//script_execute(checkHitBy, hitByNow, hits);
	
	ds_list_destroy(hitByNow);
		
	
	
	// to check if the attack animation has stopped
	if (image_index = 5 ){
		
		mask_index = idle_sprite;
		state = PLAYERSTATE.FREE;
	}
	
	break;
	
	
	
	// checks for the eating state
	case PLAYERSTATE.EAT_STATE:
	
		// check if the player sprite is the correct one
	if (sprite_index != s_playerEat){
		sprite_index = s_playerEat;
		image_index = 0;
		image_speed = 0.5;
	}
	
	// to check if the attack animation has stopped
	if (image_index = 5 ){
		
		state = PLAYERSTATE.FREE;
	}
	
	break;
	
	case PLAYERSTATE.HIT_STATE:
	
	hit_stateP(o_MaoMao, PLAYERSTATE.FREE,  PLAYERSTATE.DEAD_STATE);
	break;
	
	case PLAYERSTATE.DEAD_STATE:
	
    if ( sprite_index != s_playerDead)
	{
		sprite_index = s_playerDead;
		image_index = 1;
		image_speed = 0;
	}
	
	room_goto(Dead1);
	
	 
	
}


                