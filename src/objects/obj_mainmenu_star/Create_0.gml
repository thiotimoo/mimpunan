//image_speed = 0;
//image_index = irandom(image_number)
//image_angle = irandom(360)
y = irandom_range(40,120)
hspeed = (y/120) * 0.3
image_xscale = (y/120) * 1
image_yscale = image_xscale
rand_scale = random_range(0,0.1)
image_xscale = image_xscale - rand_scale
image_yscale = image_yscale - rand_scale
image_alpha = (y/190) * 1
//image_blend = getBlockColorFromData("r")
x = -30
if (place_meeting(x,y,obj_mainmenu_star)) instance_destroy();