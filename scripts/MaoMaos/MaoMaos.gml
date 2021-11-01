// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.hpMax = 5;
global.hp = global.hpMax;

function checkPlayerHit(o_player, o_enemy){
	var check = instance_place(x,y,o_enemy);
	if(check != noone){
		if (o_player.state == PLAYERSTATE.FREE
		&& o_player.hitCoolDown <= 0 
		&& check.state == ENEMY_STATE.ATTACK) {
	
			show_debug_message("attacked by enemy");
	
			// minus health when touched
				global.hp --;
				audio_play_sound(sound_crabHitMao, 1000, false);
				o_player.state = PLAYERSTATE.HIT_STATE;
	
				o_player.hsp = o_player.facing * 5;
				o_player.vsp = -2;
	
				o_player.x -= o_player.hsp;
				o_player.y += o_player.vsp; 
		
				//for further experimentation on screen shake
				//o_camera.shake = 3;
	
			if (global.hp > 0){
		
				o_player.flash = 50;
	
			}

		}
	}
}

function checkPlayerGroundCollision(o_player) {
	// checking for x collision
	if(place_meeting(o_player.x + o_player.hsp , o_player.y, o_ground))
	{  
		while (!place_meeting( o_player.x + sign( o_player.hsp),  o_player.y, o_ground))
		{
				o_player.x += sign( o_player.hsp);
		}
	
			o_player.hsp = 0; 
	
	}


	o_player.x +=  o_player.hsp;
	
	
	//checking if the MaoMao object is already on the ground and the jump key is being pressed
	if((place_meeting( o_player.x ,  o_player.y + 1, o_ground) || o_player.jumpCD <= 0)
	&& key_jump)
	{ 
			o_player.jumpCD = 40;
			o_player.vsp -=  o_player.jump_height[ o_player.currentSize - 1];	
	}

		o_player.vsp =  o_player.vsp +  o_player.grav;
	


	// checking for y collision
	if(place_meeting( o_player.x ,  o_player.y + vsp, o_ground))
	{
		while (!place_meeting( o_player.x,  o_player.y+sign(vsp), o_ground))
		{
				o_player.y += sign( o_player.vsp);
			
			
		}
		
		//if(vsp > 0 && !grounded && currentSize == 2) {
		if( o_player.currentSize == 2) {
		
			o_player.vsp = 0;
	      	var ground_id = instance_place( o_player.x,  o_player.y + 1, o_breakableGround);
		
			with(ground_id){
					hp --;
			}
			
		}
		
			o_player.vsp = 0;

	}
	
	
	 o_player.y +=  o_player.vsp;
}

function checkPlayerEnvironmental(o_player){
	var check = instance_place(o_player.x , o_player.y , p_environmental);
	if(check != noone){
		if (check.state == ENVIRONMENTSTATE.ACTIVE
		&& o_player.state == PLAYERSTATE.FREE 
		&& o_player.hitCoolDown <= 0) 
		{

			// minus health when touched
			global.hp --;
	
			o_player.state = PLAYERSTATE.HIT_STATE;
	
			o_player.hsp =  o_player.facing * 3;
			o_player.vsp = -2;
	
			o_player.x -=  o_player.hsp;
			o_player.y +=  o_player.vsp;  
		
			o_player.flash = 90;
	
			//for further experimentation on screen shake
			//o_camera.shake = 3;
	

		}
	}
}

function checkPlayerMovableBlockCollision(o_player){
	var check = instance_place(o_player.x + sign(o_player.hsp), o_player.y,  o_movableBlock);
	if(check != noone){
		if(o_player.currentSize == 2){
			
			check.hsp = o_player.hsp * 3;
		}
		
    }
	
	
}