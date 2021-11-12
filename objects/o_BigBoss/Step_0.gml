 /// @description Enemy Movement
// You can write your code in this editor


if(!global.gamePaused && global.bossActive){

	switch (state) 
	{
		case ENEMY_STATE.FREE:
	
		
			if(abs(x - o_MaoMao.x) > 500){
				walk_spd = 5;
			}
			else {
				walk_spd = 2.5;
			}
			attackCoolDown --;

	
			//vsp += grav;
		
	
			// enemy accelerates to the movement 
			if(timeBeforeNextMovement <= 0){
			
				if(movementTime >= 0){
					movementTime --;
					// makes enemies move towards MAOMAO
				
					hsp = walk_spd * -sign(x - o_MaoMao.x);
			
				
				
				}
				else {
				
					timeBeforeNextMovement = 120;
					movementTime = 50;
				
				}
	
			} else {
				hsp = 0;
				timeBeforeNextMovement --;
			}
		

 
			x += hsp;


			//Animation ------------

			//if player object is off the ground
			if(!place_meeting(x,y+1,o_ground))
			{
				sprite_index = idleSprite;
				image_speed = 0.6;
				//if(sign(vsp) > 0 ) image_index = 0; else image_index = 1;
	
			} 
			else
			{
				if (hsp != 0) {
					sprite_index = walking_sprite;
					image_speed = 0.5;
				} else {
					sprite_index = idleSprite;
				}

			}


			if(hsp != 0){
				image_xscale = sign(hsp) ; 
				facing = sign(hsp);
			}
		
			//only attacks if the hp is not max, attack has cooled down and maomao is within attack range1
			if(attackCoolDown <= 0 && abs(o_MaoMao.x - x) <= attack_range){
				state = ENEMY_STATE.ATTACK;
				audio_play_sound(sound_hitCrab, 1000, false);
			}
	
			break;
	
		case(ENEMY_STATE.HIT):
	
			hit_stateE(id, ENEMY_STATE.FREE, ENEMY_STATE.DEAD_STATE);
		
			break;
	
		case(ENEMY_STATE.DEAD_STATE):
	
			instance_create_layer(x,y,layer, deadObject);
	
			instance_destroy();
			break;
	
	
		case(ENEMY_STATE.ATTACK):
		
		
			//face the player first
			image_xscale = sign(o_MaoMao.x - x);
		
			if(sprite_index != attackSprite){
				sprite_index = attackSprite;
				mask_index = attackHBSprite;
				image_speed =  0.5;
			}
		
			if(image_index >= attack_last_index){
				state = ENEMY_STATE.FREE;
				mask_index = idleSprite;
				attackCoolDown = maxAttackCoolDown;
			}
	}
}
 


