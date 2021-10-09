 /// @description Enemy Movement
// You can write your code in this editor


//applying gravity
vsp = vsp + grav;
timeBeforeNextMovement --;

switch (state) 
{
	case ENEMY_STATE.FREE:
	
	
		vsp += grav;
	
		
		// enemy accelerates to the movement 
		if(timeBeforeNextMovement <= 0){
	
			if( abs(xMoved) < abs(xToMove))
			{
				hsp = sign(xToMove) * walk_spd;
				xMoved += sign(xToMove) * walk_spd;
			} 
			else { 
				hsp = 0;
				xMoved = 0;
				xToMove = random_range(-10,10);
	
				timeBeforeNextMovement = 50;
			}
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

		// checking for y collision in the next step
		if(place_meeting(x , y+vsp, o_ground))
		{ 
			while (!place_meeting(x, y+sign(vsp), o_ground))
			{
				y += sign(vsp);
			}
			
			// prevents the player from falling into the ground
			vsp = 0; 
	
		} 
		
		//accounts for the gravity when not in contact with the ground;
		if(!place_meeting(x , y , o_ground))
		{
			y += vsp;
		}


		//Animation ------------

		//if player object is off the ground
		if(place_meeting(x,y+1,o_ground))
		{

		
			image_speed = 0.1;
			sprite_index = idleSprite;
	
		}  


		if(hsp != 0) image_xscale = sign(hsp); facing = sign(hsp);
	
		break;
	
	case(ENEMY_STATE.HIT):
	
		hit_stateE(id, ENEMY_STATE.FREE, ENEMY_STATE.DEAD_STATE);
		
		break;
	
	case(ENEMY_STATE.DEAD_STATE):
	
		instance_create_layer(x,y,layer, deadObject);
	
		instance_destroy();
		break;
	
}
 


