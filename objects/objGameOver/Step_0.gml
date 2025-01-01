if(leftX < 320)
{
	leftX += lSpd;
	lSpd += 0.5;
}else
{
	leftX = 320;
}

if(rightX > 320)
{
	rightX -= rSpd;
	rSpd += 0.5;
}else
{
	rightX = 320;
}
image_alpha += 0.1;

var time = current_time / 1000;
retryScale = sine_between(time, 1.9, 2, 2);
retryAngle = sine_wave(time, 2, 10, 0);