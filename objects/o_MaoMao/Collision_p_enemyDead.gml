/// @description for all eating
// You can write your code in this editor

 
// checks if the player is in attack mode before dealing damage
//if (key_eat) {


//sprite_index = s_playerEat;
if(hp < hpMax){
	with(other)
	{
		if(trulyDead)
		{
		
			instance_destroy();
			o_MaoMao.state = PLAYERSTATE.EAT_STATE;
			o_MaoMao.hp ++;
		}
	}
}



	


//}


