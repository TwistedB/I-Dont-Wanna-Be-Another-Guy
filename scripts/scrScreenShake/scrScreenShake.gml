/// @function sc_Shake(time,intensity);
/// @param {real} time How long to shake
/// @param {real} intensity How much to shake
function sc_Shake(_time,_intensity){
if instance_number(objShake) = 0 then instance_create_depth(0,0,0,objShake)
    with (objShake) {
    shakelen = _time
    shakeint = _intensity }
}