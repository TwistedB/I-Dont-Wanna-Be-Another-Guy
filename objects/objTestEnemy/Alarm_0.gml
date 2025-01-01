alarm[0] = fireRate;
var cherry = instance_create_layer(x, y+10, layer, objCherry);
if(shootDir = 0)
{
	cherry.hspeed = choose(1, -1)
}else
{
	cherry.hspeed = shootDir;
}