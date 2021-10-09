/// @description Insert description here
// You can write your code in this editor

// checking for y collision in the next step
if(place_meeting(x , y + grav, o_ground))
{ 
	while (!place_meeting(x, y + grav, o_ground))
	{
		y += grav;
	}
	
	grav = 0;

} 

//accounts for the gravity when not in contact with the ground;
if(!place_meeting(x , y , o_ground))
{
	y += grav;
}
 
switch(state){
	case(TORCHSTATE.INACTIVE):
	
	if(sprite_index != inactive_sprite){
		sprite_index = inactive_sprite
		image_index = 7;
		image_speed = 0;
	}
	
	image_speed = 0;
	
	rest_time --;
	
	if(rest_time <= 0){
		state = TORCHSTATE.ACTIVATING;
		rest_time = 200;
	}
	
	break;
	
	case(TORCHSTATE.TRANSITION):
	
	
	if(sprite_index != inactive_sprite){
		sprite_index = inactive_sprite;
		image_speed = 0.5;
	}
	
	if (image_index = 7){
		state = TORCHSTATE.INACTIVE;
	}
	
	break;
	
	case(TORCHSTATE.ACTIVE):

	
	if(sprite_index != active_sprite){
		sprite_index = active_sprite
		mask_index = active_sprite
		image_speed = 0.5;
	}
	
	active_time --;
	
	if(active_time <= 0) {
		state = TORCHSTATE.TRANSITION;
		mask_index = inactive_sprite;
		active_time = 1000;
	}
	
	break;
	
	case (TORCHSTATE.ACTIVATING):
	
	if(sprite_index != activating_sprite){
		sprite_index = activating_sprite;
		image_index = 0;
		image_speed = 0.5;
	} 
	
	if (image_index = 7){
		state = TORCHSTATE.ACTIVE;
	}
	
	break;
		
	
}