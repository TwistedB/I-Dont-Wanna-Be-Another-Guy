var window_width = window_get_width();
var window_height = window_get_height();

gpu_set_blendenable(false);

if(window_width mod 320 != 0 || window_height mod 180 != 0) {
    var aspect_ratio = window_width / window_height;
    var aspect_ratio_ratio = aspect_ratio / (320/180);
    
    gpu_set_texfilter(true);
    if(aspect_ratio_ratio < 1) {
        var canvas_height = window_width*180/320;
        var vert_out_pixels = (window_height - canvas_height) / 2;
        shader_set_uniform_f(u_texelsPerPixel, 320./window_width, 180./canvas_height);
        draw_surface_stretched(application_surface, 0, vert_out_pixels, window_width, canvas_height);
    } else {
        var canvas_width = window_height*320/180;
        var hor_out_pixels = (window_width - canvas_width) / 2;
        shader_set_uniform_f(u_texelsPerPixel, 320./canvas_width, 180./window_height);
        draw_surface_stretched(application_surface, hor_out_pixels, 0, canvas_width, window_height);
    }
    
    shader_reset();
    gpu_set_texfilter(false);
} else {
    draw_surface(application_surface,0,0);
}

gpu_set_blendenable(true);