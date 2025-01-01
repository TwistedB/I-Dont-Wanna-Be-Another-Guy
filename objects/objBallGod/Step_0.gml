y = sine_wave(current_time / 1000, 4, 8, 0) + myY;

explScale += 0.01;
explAlpha -= 0.02;

if(explAlpha < 0)
{
	explScale = 1;
	explAlpha = 1;
}