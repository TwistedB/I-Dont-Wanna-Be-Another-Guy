var cherry = instance_create_depth(x, y, depth, objCherry);
cherry.direction = random_range(0, 360);
cherry.speed = random_range(2, 3);
var cherryScale = random_range(0.3, 0.5);
cherry.image_xscale = cherryScale;
cherry.image_yscale = cherryScale;
myScale = random_range(0.6, 0.7);
alarm[1] = 5;