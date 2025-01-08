attack = choose(0, 1);
canInstaKill = true;
if(attack = 0)
{
	var cherry = instance_create_depth(x, y-sprite_height, depth - 1, objCherry);
	cherry.image_blend = #00d5ff;
	cherry.sprite_index = sprWhiteCherry;
	cherry.image_xscale = 0.5;
	cherry.image_yscale = 0.5;
	cherry.speed = 2;
	cherry.direction = random(360);
}

if(attack = 1)
{
	var cherry = instance_create_depth(x, y-sprite_height, depth - 1, objCurvingCherry);
	cherry.image_blend = #00d5ff;
	cherry.sprite_index = sprWhiteCherry;
	cherry.speed = 2;
	cherry.image_xscale = 0.5;
	cherry.image_yscale = 0.5;
	cherry.curveSpeed = choose(-2, 2, -1, 1);
	cherry.direction = random(360);
}

alarm[0] = 5;