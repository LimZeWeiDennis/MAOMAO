 
// checks if the player is in attack mode before dealing damage
if (state == PLAYERSTATE.ATTACK_STATE) {


	//sprite_index = s_playerEat;
	
	with(other)
	{
		if(trulyDead)
		{
			instance_destroy();
			o_MaoMao.state = PLAYERSTATE.EAT_STATE;
			o_MaoMao.fullness += fullness_amount;
		}
	}
	
	//checks if the fullness if reached
	// update the stats and resets the fullness to 0
	if (fullness == fullnessMax)
	{
		currentSize ++;
		fullness = 0;
		hp ++;
		hpMax ++;
		currentAttack ++;
		
		//walk_spd = 5 * currentSize;
		//jump_height = -7 * currentSize;
		currentSlashingCD -= 5;
		
		//not working too well
		image_xscale = 1 + ((currentSize - 1) * 0.5);
		image_yscale = 1 + ((currentSize - 1) * 0.5);
		y -= sprite_height/3;
	}
	 
	//fullness ++;
	
	//sprite_index = s_player;

}

