/// @description can be used for all enemy as parent
// You can write your code in this editor
if (state == PLAYERSTATE.FREE) {

	// minus health when touched
	hp --;
	
	state = PLAYERSTATE.HIT_STATE;
	
	hsp = facing * 10;
	vsp = -4;
	
	x -= hsp;
	y += vsp;  
		
	flash = 20;
	
	//for further experimentation on screen shake
	//o_camera.shake = 3;
	

}