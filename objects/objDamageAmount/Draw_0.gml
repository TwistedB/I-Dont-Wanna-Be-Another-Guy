draw_set_alpha(image_alpha)
draw_set_font(fntPrismedSmall);
draw_set_color(c_black)
draw_text(x+1, y, damageAmount)
draw_text(x-1, y, damageAmount)
draw_text(x, y+1, damageAmount)
draw_text(x, y-1, damageAmount)
draw_set_color(c_white);
draw_text(x, y, damageAmount)
draw_set_alpha(1)