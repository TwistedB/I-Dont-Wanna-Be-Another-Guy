if (global.auto_save) {
	save_game(true);
	global.auto_save = false;
}

global.vine_toggle = 0;

var lay_id = layer_get_id("Background");
bgId = layer_background_get_id(lay_id);