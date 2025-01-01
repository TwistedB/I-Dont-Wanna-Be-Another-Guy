activate_trigger("BossDefeat");

var dth = instance_create_depth(x, y, -1, objNeamhDeath);
if(hVel != null){
	dth.hVel = hVel;
}