alarm[2] = gen_ghost;
ghost = instance_create_depth(x+random_range(-2,2),y+random_range(-2,2),depth + 5,obj_glitch_ghost)
ghost.str = rand_string[irandom(array_length_1d(rand_string)-1)]
ghost.image_blend = image_blend