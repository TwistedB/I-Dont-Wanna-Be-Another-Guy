draw_sprite_ext(sprDio, 0, 0, 0, 2, 2, 0, c_white, fadeIn/2);

if(portraitList[currentMessage] != null)
{
	
	draw_sprite_ext(portraitList[currentMessage], 1, xSlide, 200, 2, 2, 0, c_white, portraitFadein);
}

draw_sprite_ext(sprDio, 1, 0, 0, 2, 2, 0, c_white, fadeIn*2);

if(currentMessage > 0)
{
	draw_sprite_ext(sprDio, 2, 0, 0, 2, 2, 0, merge_color(sideColor[currentMessage], sideColor[currentMessage-1], dioFade), fadeIn*2);
}else
{
	draw_sprite_ext(sprDio, 2, 0, 0, 2, 2, 0, sideColor[currentMessage], fadeIn*2);
}

draw_set_color(c_white);
draw_set_halign(fa_left)
draw_set_font(fntPrismed);
draw_text_ext(30, 264, messageDraw, -1, 600);

draw_set_font(fntOptions);
draw_set_halign(fa_left)
