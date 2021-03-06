// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hit_stateP(obj, freeState, deadState) 
{
	// push back when damaged
	obj.hsp = obj.hsp * obj.drag;
	obj.vsp = obj.vsp + obj.grav;
	
	obj.hitCoolDown = 90;
	
	//checking for x collision
	if(place_meeting(obj.x + obj.hsp , obj.y, o_ground)) 
	{

	
		obj.hsp = 0; 
		
	}
	
	// checking for y collision
	if(place_meeting(obj.x , obj.y + obj.vsp, o_ground)) 
	{
		while (!place_meeting(obj.x, obj.y + sign(obj.vsp), o_ground))
		{
			obj.y += sign(obj.vsp);
			
		}
		
		if( global.hp >= 1) {
			show_debug_message("still alive");
			//changes the state back to free once the player hits the ground
			obj.state = freeState;
		}
		else 
		{
			// changes the state to dead state once the hp <= 0
			obj.state = deadState ;
			global.numDeath ++;
			
		}
	
		obj.vsp = 0; 
		
	}
	
	


	// applying to x and y
	obj.x -= obj.hsp;
	obj.y += obj.vsp;
}

function hit_stateE(obj, freeState, deadState) 
{
	// push back when damaged
	//obj.hsp = obj.hsp * obj.drag;
	//obj.vsp = obj.vsp + obj.grav;
	
	
	// checking for y collision
	if(place_meeting(obj.x , obj.y + obj.vsp, o_ground)) 
	{
		while (!place_meeting(obj.x, obj.y + sign(obj.vsp), o_ground))
		{
			obj.y += sign(obj.vsp);
			
		}
	
		obj.vsp = 0; 
		show_debug_message(obj.hp);
		
		if( obj.hp > 0) {
			show_debug_message("still alive");
		//changes the state back to free once the player hits the ground
			obj.state = freeState;
		}
		else 
		{
			show_debug_message("got dead");
		// changes the state to dead state once the hp <= 0
			obj.state = deadState ;
		}
	
	}

	//// applying to x and y
	//obj.x -= obj.hsp;
	//obj.y += obj.vsp;
}
