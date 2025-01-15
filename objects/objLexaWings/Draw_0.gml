draw_sprite_ext(sprite_index, image_index, x+16, y, 1, 1, image_angle, c_white, image_alpha);
draw_sprite_ext(sprite_index, image_index, x-16, y, -1, 1, -image_angle, c_white, image_alpha);

if(drawWings = true)
{
	draw_sprite_ext(sprite_index, 1, x+16, y, 1, 1, 0, c_white, random_range(0.1, 0.9));
	draw_sprite_ext(sprite_index, 1, x-16, y, -1, 1, 0, c_white, random_range(0.1, 0.9));
}