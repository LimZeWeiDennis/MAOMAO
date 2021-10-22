/// @description Insert description here
// You can write your code in this editor

//if want to show sprite
draw_self();
image_xscale = -1;
image_speed = 0.3


if (showtext == 1)
{
	draw_set_halign(fa_center);
	draw_set_font(fnt_default);
	draw_text(x+25,y-25,"Press X to grow Big");
}