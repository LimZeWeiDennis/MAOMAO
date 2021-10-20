///@desc initiate damaged animation
draw_self();

if(flash > 0 && !is_white){

	
	flash --;
	shader_set(shRed);
	draw_self();
	shader_reset();
	
	is_white = true;

} else if(flash > 0 && is_white){
	
	is_white = false;
	
}

