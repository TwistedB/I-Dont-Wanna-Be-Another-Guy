if(is_active_trigger(showAt))
{
	visible = true;
	mask_index = sprLightningBolt;
}

if(is_active_trigger(destroyAt))
{
	instance_destroy();
}