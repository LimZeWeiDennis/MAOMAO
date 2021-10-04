// checks if the player is in attack mode before dealing damage
if (state == PLAYERSTATE.FREE) {

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
