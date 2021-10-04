 // to check if the image is still moving

if(done == 0)
{
	
	vsp = vsp + grav;

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
		//once the dead fish is only the floor, then animation is done, no more collision detection needed
		if(vsp > 0) {
			done = 1;
			image_index = 1;
		}
		while (!place_meeting(x, y+sign(vsp), o_ground))
		{
			y += sign(vsp);
		}
	
		vsp = 0; 
	
	}

	y += vsp;

	
}

if(done == 1)
{
	trulyDead = true;
}