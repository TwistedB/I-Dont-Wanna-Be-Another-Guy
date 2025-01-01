//step
if (current < array_length(keys)) {
  if keyboard_check_pressed(vk_anykey) {
    if keyboard_check_pressed(keys[current]) {
      current++;
    } else {
      current = 0;
    }
  }
} else {
	if(instance_exists(objPlayer))
	{
		objPlayer.skin ="Harbinger";
	}
}

if(instance_number(objGUYActivator) > 1)
{
	instance_destroy();
}