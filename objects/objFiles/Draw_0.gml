for (var i = 0; i < global.total_saves; i++) {
	var data = datas[i];
	
    if (select[0] == i) {
        draw_sprite_ext(sprFilesBarBorder, 0, 82.88 + 248 * i, 168.32, 1.08, 2.12, 0, c_white, 1);
    }
    draw_sprite_ext(sprFilesBar, 0, 72 + 248 * i, 120, 1.25, 2.875, 0, c_white, 1);
	
	//Name
    draw_set_alpha(1);
	draw_set_font(fntMenu);
    draw_set_color(c_white);
	draw_set_halign(fa_center);
    draw_text(150 + 248 * i, 120, string("Data{0}", i + 1));
    
	//Difficulty
	draw_set_font(fntMenu2);
	draw_set_halign(fa_center);
    
    var draw_diff = data.difficulty;
    
    if (menu == 1 && select[0] == i) {
        draw_diff = string("< {0} >", global.difficulties[select[menu]]);
    }
    
	if(menu = MENU_FILES.DIFFICULTY && select[0] == i)
	{
		draw_text(150 + 248 * i, 240, draw_diff);
	}
    
	//Deaths and Time
	draw_set_font(fntMenu3);
    draw_set_halign(fa_center);
    draw_text(150 + 248 * i, 180, string("Deaths: {0}", data.deaths));
    draw_text(150 + 248 * i, 210, string("Time: {0}", formatted_time(data.time)));
      
	//Clear
    if (data.clear) {
		draw_set_font(fntMenu4);
        draw_set_halign(fa_center);
        draw_text(150 + 248 * i, 440, "Clear!");
    }
}

draw_set_font(fntPrismedMenu);
draw_set_halign(fa_center);
draw_text(room_width/2, 10, "File Select");

draw_set_font(fntMenu3);
draw_set_halign(fa_center);
draw_text(225, 550, "[Z] Back");
draw_text(380, 550, "[Enter] Options");
draw_text(550, 550, "[Shift] Accept");
draw_set_halign(fa_left);