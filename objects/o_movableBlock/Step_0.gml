/// @description Insert description here
// You can write your code in this editor

//checking for collision into wall
	 hsp =  hsp * drag
	
	if(place_meeting( x +  hsp , y, o_ground))
	{  
		while (!place_meeting(  x + sign( hsp),   y, o_ground))
		{
				 x += sign(  hsp);
		}
	
			 hsp = 0; 
	
	}     

	 x +=  hsp;
	

	 vsp =   vsp +  grav;
	
	// checking for y collision onto ground
	if(place_meeting(  x ,   y +  vsp, o_ground))
	{
		while (!place_meeting( x,   y+ sign( vsp), o_ground))
		{
				 y += sign(  vsp);
			
		}
		
			 vsp = 0;
	}
	
	 y +=   vsp;
