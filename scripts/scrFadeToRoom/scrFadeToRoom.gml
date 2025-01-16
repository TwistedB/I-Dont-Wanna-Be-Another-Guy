/// @arg room
/// @arg color
/// @arg duration

// Args
var _room = argument[0];
var _color = argument[1];
var _dur = argument[2];

function fadeToRoom(_room, _color, _dur) {
	//Create
	var _inst = instance_create_depth(0, 0, 0, objFade);

	//Set properties
	with (_inst)
	{
		targetRoom = _room;
		color = color;
		duration = _dur;
	}
}
