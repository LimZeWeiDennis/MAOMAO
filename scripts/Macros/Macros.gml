function BlackOverlay(){
	draw_set_colour(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0,0,640,320,false);
	draw_set_alpha(1.0);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
}