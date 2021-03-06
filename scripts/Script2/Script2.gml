// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkHitBy(hitByNow, hits) 
{
	if (hits > 0)
	{
		//runs through the list of hits
		for(var i = 0; i < hits; i++)
		{
			//finding the current ID of fish hit in the hitByNow list
			var hitID = ds_list_find_value(hitByNow, i );

			
			if(ds_list_find_index(hitByAttack, hitID) == -1)
			{
				ds_list_add(hitByAttack, hitID);
				with(hitID)
				{
					if(state != ENEMY_STATE.ATTACK){
						audio_play_sound(sound_hitCrab, 1000, false);
						hp -= o_MaoMao.currentAttack;
						flash = 20;
						hsp += sign(o_MaoMao.hsp) * 1 ;
						state = ENEMY_STATE.HIT;
					}
				}
			}
		}
	}
}   

function checkHitWall(hitByNow, hits)
{
	if (hits > 0)
	{
		//runs through the list of hits
		for(var i = 0; i < hits; i++)
		{
			//finding the current ID of fish hit in the hitByNow list
			var hitID = ds_list_find_value(hitByNow, i );

			
			if(ds_list_find_index(hitByAttack, hitID) == -1)
			{
				ds_list_add(hitByAttack, hitID);
				with(hitID)
				{
					show_debug_message(hp);
					hp --;
					shake = 10;
				}
			}
		}
	}
}