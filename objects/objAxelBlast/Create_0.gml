image_angle = -90;
image_xscale = 3;
sc_Shake(10, 30);

if(instance_exists(objPlayer) && instance_exists(objAxelV1))
{
	if(objAxelV1.image_xscale = -1)
	{
		image_yscale = 100;
	}else
	{
		image_yscale = -100;
	}
}
audio_play_sound(sndUltraBlast, 0, 0);