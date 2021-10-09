/// @description can be used for all enemy as parent
// You can write your code in this editor
if (state == PLAYERSTATE.FREE && hitCoolDown <= 0) {
	
	// minus health when touched
		hp --;
	
		state = PLAYERSTATE.HIT_STATE;
	
		hsp = facing * 5;
		vsp = -4;
	
		x -= hsp;
		y += vsp; 
		
		//for further experimentation on screen shake
		//o_camera.shake = 3;
	
	if (hp > 1){
		
		flash = 50;
	
	}

}