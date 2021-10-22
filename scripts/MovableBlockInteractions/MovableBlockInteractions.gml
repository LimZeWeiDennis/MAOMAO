// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function blockCollisions(o_block){
	
	o_block.hsp = o_block.hsp * drag
	
	if(place_meeting(o_block.x + o_block.hsp ,o_block.y, o_ground)
	&& !place_meeting(o_block.x + o_block.hsp ,o_block.y, o_movableBlock)
	)
	{  
		while (!place_meeting( o_block.x + sign(o_block.hsp),  o_block.y, o_ground))
		{
				o_block.x += sign( o_block.hsp);
		}
	
			o_block.hsp = 0; 
	
	}

	o_block.x += o_block.hsp;
	

	o_block.vsp =  o_block.vsp + o_block.grav;
	
	// checking for y collision onto ground
	if(place_meeting( o_block.x ,  o_block.y + o_block.vsp, o_ground)
	&& !place_meeting(o_block.x, o_block.y  + o_block.vsp, o_movableBlock))
	{
		while (!place_meeting(o_block.x,  o_block.y+ sign(o_block.vsp), o_ground))
		{
				o_block.y += sign( o_block.vsp);
			
			
		}
		
		
			o_block.vsp = 0;

	}
	
	o_block.y +=  o_block.vsp;

}

