var lSpike = null;
var rSpike = null;
if(spikeSpeedY = 0)
{
	lSpike = instance_create_layer(x, y, layer, objMovinSpike);
	rSpike = instance_create_layer(x+32, y, layer, objMovinSpike);
	rSpike.sprite_index = sprSpikeRight;
}else
{
	lSpike = instance_create_layer(x, y, layer, objMovinSpike);
	rSpike = instance_create_layer(x, y+32, layer, objMovinSpike);
	lSpike.sprite_index = sprSpikeUp;
	rSpike.sprite_index = sprSpikeDown;
}

lSpike.hspeed = spikeSpeed;
rSpike.hspeed = spikeSpeed;

lSpike.vspeed = spikeSpeedY;
rSpike.vspeed = spikeSpeedY;


alarm[0] = fireRate