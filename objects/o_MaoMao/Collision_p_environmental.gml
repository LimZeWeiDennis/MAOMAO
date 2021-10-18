/// @description Insert description here
// You can write your code in this editor
// checks if the player is in attack mode before dealing damage
if (p_environmental.state == ENVIRONMENTSTATE.ACTIVE && state == PLAYERSTATE.FREE) {

	// minus health when touched
	hp --;
	
	state = PLAYERSTATE.HIT_STATE;
	
	hsp = facing * 10;
	vsp = -4;
	
	x -= hsp;
	y += vsp;  
		
	flash = 10;
	
	//for further experimentation on screen shake
	//o_camera.shake = 3;
	

}