 /// @description Enemy Movement
// You can write your code in this editor

if(!global.game_pause){
	
	//applying gravity
	vsp = vsp + grav;



	switch (state) 
	{
		case ENEMY_STATE.FREE:

		
			//if(hp < hpMax){
			
			attackCoolDown --;
			//}
	
			//vsp += grav;
		
	
			// enemy accelerates to the movement 
			if(timeBeforeNextMovement <= 0){
			
				if(movementTime >= 0){
					movementTime --;
					// makes enemies move towards MAOMAO
					if(abs(y - o_MaoMao.y) < 10 && hp < hpMax){
						hsp = walk_spd * -sign(x - o_MaoMao.x);
					} else {
					
						hsp = walk_spd * facing;

					}
				
				
				}
				else {
				
					timeBeforeNextMovement = 100;
					movementTime = 50;
				
				}
	
			} else {
				hsp = 0;
				timeBeforeNextMovement --;
			}
		

			// checking for x collision
			if(place_meeting(x+hsp , y, o_ground))
			{ 
				while (!place_meeting(x+sign(hsp), y, o_ground))
				{
					x += sign(hsp);
				}
	
				hsp *= -1; 
			}
		
		
			//created new object to collide with enemies to prevent them from falling over
			if(place_meeting(x+hsp , y, o_enemyCollider))
			{ 
				while (!place_meeting(x+sign(hsp), y, o_enemyCollider))
				{
					x += sign(hsp);
				}
	
				hsp *= -1; 
			}
		
		

 
			x += hsp;

			// checking for y collision in the next step
			if(place_meeting(x , y+vsp, o_ground))
			{ 
				while (!place_meeting(x, y+sign(vsp), o_ground))
				{
					y += sign(vsp);
				}
			
				// prevents the player from falling into the ground
				vsp = 0; 
			
				//if (!position_meeting(x + (sprite_width/2) * sign(hsp), y + (sprite_height/2) + 2, o_ground))
				//{
				
				//	show_debug_message("fallling");
				//	hsp *= -1;
				//}
			
				//if(sign(hsp) < 0 && !position_meeting(x + (sprite_width/2) * sign(hsp), y + (sprite_height/2) + 2.5, o_ground))
				//{
				//	hsp *= -1;
				//}
			} 
		
			//accounts for the gravity when not in contact with the ground;
			if(!place_meeting(x , y , o_ground))
			{
				y += vsp;
			}
 

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
				image_xscale = sign(hsp); 
				facing = sign(hsp);
			}
		
			//only attacks if the hp is not max, attack has cooled down and maomao is within attack range1
			if(attackCoolDown <= 0 && abs(o_MaoMao.x - x) <= attack_range){
				state = ENEMY_STATE.ATTACK;
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
				image_speed = 0.5;
			}
		
			if(image_index >= attack_last_index){
				state = ENEMY_STATE.FREE;
				mask_index = idleSprite;
				attackCoolDown = maxAttackCoolDown;
			}
	}
	
}
 


