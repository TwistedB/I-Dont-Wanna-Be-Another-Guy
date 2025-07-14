draw_sprite(sprClearCredits, 0, 160*2, 180*2 + y*2);


var guiW = display_get_gui_width();
var guiH = display_get_gui_height();

draw_set_alpha(image_alpha)
draw_set_color(c_white);

draw_rectangle(0, 0, guiW, guiH, 0);

draw_set_alpha(1);
draw_set_color(c_white);