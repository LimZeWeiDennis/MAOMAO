/// @description Insert description here
// You can write your code in this editor
// checks if the player is in attack mode before dealing damage
if (p_environmental.state == ENVIRONMENTSTATE.ACTIVE 
&& (state == PLAYERSTATE.FREE || state = PLAYERSTATE.LANDING_STATE) 
&& hitCoolDown <= 0) 
{

	// minus health when touched
	hp --;
	
	state = PLAYERSTATE.HIT_STATE;
	
	hsp = facing * 3;
	vsp = -2;
	
	x -= hsp;
	y += vsp;  
		
	flash = 90;
	
	//for further experimentation on screen shake
	//o_camera.shake = 3;
	

}