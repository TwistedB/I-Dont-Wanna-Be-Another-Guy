image_alpha = 0;

function shieldBreak()
{
	image_alpha = 1;
	audio_play_sound(sndShieldHit, 0, 0);
}