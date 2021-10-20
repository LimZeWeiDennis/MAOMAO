/// @description Insert description here
// You can write your code in this editor
if (state == ENEMY_STATE.ATTACK){
	if (state == PLAYERSTATE.FREE && hitCoolDown <= 0 && p_enemy.state == ENEMY_STATE.ATTACK) {
	
		show_debug_message("attacked by enemy");
	
		// minus health when touched
			hp --;
	
			state = PLAYERSTATE.HIT_STATE;
	
			hsp = facing * 5;
			vsp = -2;
	
			x -= hsp;
			y += vsp; 
		
			//for further experimentation on screen shake
			//o_camera.shake = 3;
	
		if (hp > 0){
		
			flash = 50;
	
		}

	}
}