//checks if the left key/right key is being pressed --> press and hold is allowed
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_attack = keyboard_check(ord("C"));
key_restart = keyboard_check_pressed(ord("R"));
key_growth = keyboard_check_pressed(ord("X"));
key_jump = keyboard_check_pressed(vk_space);

jumpCD --;
growthCD --;
slashingCD --;

if(!global.gamePaused){
	switch (state)
 

	{	
		//case where the player is not attacking
		case PLAYERSTATE.FREE: 
	
		//show_debug_message("free state");

	
		if(key_growth && global.hp > 0 && growthCD <= 0){
			state = PLAYERSTATE.GROWING_STATE;
			growthCD = 60;
		}	
		
		if(global.hp < 0){
			state = PLAYERSTATE.DEAD_STATE;
		}
	
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

		checkPlayerMovableBlockCollision(o_MaoMao);
		checkPlayerGroundCollision(o_MaoMao);
		// checking for enemy collision
		checkPlayerHit(o_MaoMao, p_enemy);
		checkPlayerEnvironmental(o_MaoMao);
	
	
		// check for meeting the end
		if(place_meeting(x,y,o_warpEnd)){
			TransitionInto(Ending, 548, -50);
		}
		
		if(place_meeting(x,y, o_startBoss)){
			global.bossActive = true;
		}

	  //Animation ------------

		//if player object is off the ground
		if(!place_meeting(x,y+1,o_ground))
		{
			sprite_index = jump_sprite;
			image_speed = 0.6;
			//if(sign(vsp) > 0 ) image_index = 0; else image_index = 1;
	
		} 
		else
		{
			//sprite_index =  moving_sprite;
			//image_speed = 0.5;
		
	    if (move == 0) {
	      sprite_index = idle_sprite;
	      image_speed = 0.3;
    
  
      
	    } else {
	      sprite_index = moving_sprite;
	    }
	  }


		if(hsp != 0) {
			facing = sign(hsp);
		
		
			// need to scale in the opposite direction as well, hence * currentSize
			image_xscale = sign(hsp) * growthSize[currentSize - 1 ];
		}
	
		if(key_attack && slashingCD <= 0) {
			state = PLAYERSTATE.ATTACK_STATE;
			audio_play_sound(sound_maomaoAttacks, 1000 ,false);
		}
			

		//draw_sprite_ext(noone, 0, x,   y, move*facing, 1, 0, $FFFFF F & $ffffff, 1);
		break;
	
	
		//case where the player is attacking
		case PLAYERSTATE.ATTACK_STATE:	
	
		//show_debug_message("attack state");
	
	
		//reset the cooldown
		slashingCD = currentSlashingCD;
		
		//checking if the player sprite is in the right one
		if (sprite_index != attack_sprite){
			sprite_index = attack_sprite; 
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
	
	
		ds_list_destroy(hitByNow);
	

	
		// check hits on the breakable wall only when maomao is big
		if(o_MaoMao.currentSize == 2){
			var hitByNow = ds_list_create();
			//checks if hits fish sprite
			var hits = instance_place_list(x, y, o_breakableWall, hitByNow, false);
			// script used to check the hits and converts into damage
			script_execute(checkHitWall, hitByNow, hits);
			ds_list_destroy(hitByNow);
		
			var cageHit = instance_place(x ,y ,o_cage);
			if(cageHit != noone && cageHit.state == CAGESTATE.CLOSED){
				cageHit.state = CAGESTATE.OPEN;
				audio_play_sound(sound_cageOpen, 1000, false);
				audio_play_sound(sound_friendSaved, 1000, false);
				global.numFriendSave ++;
			}
		}
	
		// to check if the attack animation has stopped
		if (image_index >= 16){
		
			mask_index = idle_sprite;
			state = PLAYERSTATE.FREE;
			image_speed =  0.3;
		}
	
		break;
	
	
	
		// checks for the eating state
		// eating no longer helps with growth
		/// kiv might just remove it
		case PLAYERSTATE.EAT_STATE:
	
	
			// check if the player sprite is the correct one
		if (sprite_index != eating_sprite){
			sprite_index = eating_sprite;
			image_index = 0;
			image_speed = 1;
		}
	
		// to check if the attack animation has stopped
		if (image_index >= 7 ){
		
			state = PLAYERSTATE.FREE;
			image_speed = 0.3
		}
	
		break;
	
		case PLAYERSTATE.HIT_STATE:
	
		
		hit_stateP(o_MaoMao, PLAYERSTATE.FREE,  PLAYERSTATE.DEAD_STATE);
	
		break;
	
		case PLAYERSTATE.DEAD_STATE:
	
	    if ( sprite_index != dead_sprite)
		{
			sprite_index = dead_sprite;
			image_index = 0;
			image_speed = 0.5;
		
			currentSize = 1;
			image_xscale = growthSize[currentSize - 1];
			image_yscale = growthSize[currentSize - 1];
		}
	
		if (image_index >= 14){
			state = PLAYERSTATE.DEAD_IDLE_STATE
		}
		break;
	
		//room_goto(Dead1);
	
		case PLAYERSTATE.DEAD_IDLE_STATE:
	
	
	
		if (sprite_index != dead_idle_sprite){
		
			sprite_index = dead_idle_sprite;
			image_index = 0;
			image_speed = 0.5;
		}
	
		break;
	
		case PLAYERSTATE.GROWING_STATE:
		//show_debug_message("growing state");
	
	
		if(currentSize == 1){
	
			if(sprite_index != growing_sprite){
					sprite_index = growing_sprite;
					image_speed = 1;
					mask_index = growing_sprite;
					y = y - sprite_height/3;
					
			}
	
			if(image_index >= 7){
				

				if(place_meeting(x, y ,o_ground)){
					
					if(place_meeting(x, y + 1 , o_ground) && place_meeting(x + 1, y, o_ground)
						&& !place_meeting(x - 1, y, o_ground)){
							x = x - 1;
							grow(o_MaoMao);
					}
					
				
						
				}
				else {
					grow(o_MaoMao);
		
				} 
				mask_index = s_MaoMaoIdle;
				state = PLAYERSTATE.FREE;
				image_speed = 0.3;
			}
		
		} else {
	
			if(sprite_index != shrinking_sprite){
					sprite_index = shrinking_sprite;
					image_speed = 0.6;
					

			}
	
			if(image_index >= 8){
					audio_play_sound(sound_grow, 1000, false);

					currentSize = 1;
					image_xscale = growthSize[currentSize - 1];
					image_yscale = growthSize[currentSize - 1];
					image_xscale = facing * growthSize[currentSize - 1];
					y = y + sprite_height/3;
				
			
				state = PLAYERSTATE.FREE;
			}
		}
		
	

		break;
	
	}
}
