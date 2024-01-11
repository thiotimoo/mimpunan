//if (level == -1) exit;
//if (!surface_exists(level.surf)) exit;
//surface_set_target(level.surf);
draw_set_alpha(0.4)
draw_set_color(image_blend)
draw_ellipse(x,y,x+image_xscale*sprite_get_width(sprite_index),y+image_yscale*sprite_get_height(sprite_index), false);


//surface_reset_target();
draw_set_alpha(1)


