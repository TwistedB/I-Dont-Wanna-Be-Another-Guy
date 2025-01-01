if(hspeed = 0)
{
	hspeed = 2;
}

yVel = random_range(-3, -5);
mySound = audio_play_sound(sndBallHit, 0, 0, 1, 0, random_range(0.8, 1.2));