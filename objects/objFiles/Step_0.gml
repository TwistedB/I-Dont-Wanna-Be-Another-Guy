if (!is_pressed(vk_anykey)) {
	exit;
}

var length = array_length(global.difficulties);

switch (menu) {
	case MENU_FILES.DATA:
	    if (is_pressed(global.controls.left)) {
	        select[menu]--;
	        audio_play_sound(sndDoubleJump, 0, false);
	    }
        
	    if (is_pressed(global.controls.right)) {
	        select[menu]++;
	        audio_play_sound(sndDoubleJump, 0, false);
	    }

	    select[menu] += global.total_saves;
	    select[menu] %= global.total_saves;
    
	    if (is_pressed(global.controls.jump)) {
	        select[1] = (file_exists(string("Data{0}", select[menu] + 1))) ? length - 1 : 0;
	        menu = 1;
	        audio_play_sound(sndJump, 0, false);
	    }
    
	    if (is_pressed(global.controls.shoot)) {
	        room_goto(rTitle);
	    }
		break;
	
	case MENU_FILES.DIFFICULTY:
	    if (is_pressed(global.controls.left)) {
	        select[menu]--;
	        audio_play_sound(sndDoubleJump, 0, false);
	    }
    
	    if (is_pressed(global.controls.right)) {
	        select[menu]++;
	        audio_play_sound(sndDoubleJump, 0, false);
	    }
		
	    if (!file_exists(string("Data{0}", select[0] + 1))) {
	        length--;
	    }
        
	    select[menu] += length;
	    select[menu] %= length;
    
	    if (is_pressed(global.controls.jump)) {
	        global.save_num = select[0];
	        start_game(select[menu]);
	    }
    
	    if (is_pressed(global.controls.shoot)) {
	        menu = 0;
	    }
		break;
}

if (is_pressed(global.controls_menu.options)) {
    room_goto(rOptions);
}