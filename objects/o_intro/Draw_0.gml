/// @description Insert description here
// You can write your code in this editor
draw_self()

if (showtext == 1){
	draw_set_valign(fa_bottom);
	draw_set_halign(fa_center);
	draw_set_font(fnt_default2);
	draw_text(661,547, "<Hold Space to Fast Forward>");
}

if (blink) {
	draw_set_alpha(0);
}
else
{
	draw_set_alpha(1);
}
