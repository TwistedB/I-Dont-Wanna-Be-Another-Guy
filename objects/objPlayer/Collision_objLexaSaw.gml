if(invTime < 0 && focusMode < 0)
{
	kill_player();
}else if(invTime > 0 && focusMode < maxFoxus)
{
	audio_play_sound(sndCounter, 0, 0);
	alarm[2] = 5
	invTime = 0;
	focusMode = 20;
}