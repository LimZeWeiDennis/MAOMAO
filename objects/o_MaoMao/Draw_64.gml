///@desc HP and fullness bar
//drawing fullness bar
//draw_sprite(s_fullnessBGSmall, 0 ,fullnessBar_X, fullnessBar_Y);

//draw_sprite_stretched(s_fullnessBGSmall, 0, fullnessBar_X, fullnessBar_Y, fullnessBar_width, fullnessBar_height);

//draw_sprite_stretched(s_unitFullness, 0 ,fullnessBar_X, fullnessBar_Y, (fullness/fullnessMax) * fullnessBar_width, fullnessBar_height); 
////draw_sprite(s_fullnessBar, 0 ,fullnessBar_X, fullnessBar_Y);

//draw_sprite_stretched(s_fullnessBar, 0, fullnessBar_X, fullnessBar_Y, fullnessBar_width, fullnessBar_height);


//drawing hearts
for (var i = 0; i < hp; i ++) 
{
	draw_sprite(s_healthPoint, 0, hp_start_X, hp_start_Y);
	hp_start_X += 20;
	
}	

if(hp >=0) {
	
	for (var i = 0; i < (hpMax - hp); i ++) 
	{
		draw_sprite(s_healthPoint, 1, hp_start_X, hp_start_Y);
		hp_start_X += 20;
	
	}	

}

else {
	for (var i = 0; i < hpMax; i ++) 
	{
		draw_sprite(s_healthPoint, 1, hp_start_X, hp_start_Y);
		hp_start_X += 20;
	
	}	
	
}
hp_start_X = 10;